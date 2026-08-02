	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v25, 6, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v8, 1, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v13, 62, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v8, 48, v8
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 63
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
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s31, v2
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
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
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s34, v13
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s4, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s30, v13
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s34, s30
	v_lshl_add_u32 v14, v1, 4, v3
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 24
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s26, s18, v14
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 63
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s34, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x1
	buffer_load_b128 v[34:37], v5, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v4, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s27, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s33, s31
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s27, 7, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s34, v4
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s27, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[42:45], v4, s[36:39], 0 offen
	buffer_load_b128 v[46:49], v5, s[36:39], 0 offen
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v4, 4, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s34, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v15, 48, v4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s30, v15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v16, v2, v15, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s30, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s30, 64
	v_or_b32_e32 v5, s35, v13
	v_or_b32_e32 v20, s35, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[66:69], v2, s[8:11], 0 offen
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v23, s35, v16
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s34, v3
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x1
	buffer_load_b128 v[50:53], v3, s[36:39], 0 offen
	buffer_load_b128 v[54:57], v5, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v3, 0x80000000, v6, s4
	v_cndmask_b32_e64 v5, 0x80000000, v7, s4
	s_clause 0x1
	buffer_load_b128 v[58:61], v3, s[36:39], 0 offen
	buffer_load_b128 v[62:65], v5, s[36:39], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v26, 0x80000000, v23, vcc_lo
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v7, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 4, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[70:73], v26, s[8:11], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 15, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v5, v5, 1, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v104, v3, 16, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v3, 48, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 2, v5
	v_or_b32_e32 v8, 4, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v118, 32, v104
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v17, v4, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v6, v6, v13
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 6, v5
	v_or_b32_e32 v10, 8, v5
	v_or_b32_e32 v11, 10, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v80, 0, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v18, v25, 10, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 12, v5
	v_or_b32_e32 v28, 14, v5
	v_or_b32_e32 v29, 64, v5
	v_or_b32_e32 v30, 0x42, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v19, 0x90, v18
	v_xor_b32_e32 v20, 0x120, v18
	v_add_nc_u32_e32 v81, 0, v18
	v_xor_b32_e32 v21, 0x1b0, v18
	v_xor_b32_e32 v22, 0x210, v18
	v_add_nc_u32_e32 v82, 0, v19
	v_xor_b32_e32 v23, 0x330, v18
	v_add_nc_u32_e32 v83, 0, v20
	v_xor_b32_e32 v24, 0x3a0, v18
	v_add_nc_u32_e32 v84, 0, v21
	v_add_nc_u32_e32 v85, 0, v22
	v_add_nc_u32_e32 v86, 0, v23
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v31, 0x44, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v87, 0, v24
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v32, 0x46, v5
	v_or_b32_e32 v33, 0x48, v5
	v_or_b32_e32 v3, 0x4a, v5
	v_or_b32_e32 v4, 0x4c, v5
	v_or_b32_e32 v6, 0x4e, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v27, v38, v34, 0x5010400
	v_perm_b32 v34, v38, v34, 0x7030602
	v_perm_b32 v38, v39, v35, 0x5010400
	v_perm_b32 v39, v39, v35, 0x7030602
	v_perm_b32 v74, v40, v36, 0x5010400
	v_perm_b32 v40, v40, v36, 0x7030602
	v_perm_b32 v75, v41, v37, 0x5010400
	v_perm_b32 v41, v41, v37, 0x7030602
	v_and_b16 v26.l, 0xff, v27.l
	v_lshrrev_b32_e32 v76, 8, v27
	v_lshrrev_b32_e32 v77, 24, v27
	v_and_b16 v26.h, 0xff, v27.h
	v_and_b16 v27.l, 0xff, v34.l
	v_lshrrev_b32_e32 v78, 8, v34
	v_lshrrev_b32_e32 v79, 24, v34
	v_and_b16 v27.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v38.l
	v_lshrrev_b32_e32 v88, 8, v38
	v_lshrrev_b32_e32 v89, 24, v38
	v_and_b16 v34.h, 0xff, v38.h
	v_lshrrev_b32_e32 v90, 8, v39
	v_and_b16 v36.l, 0xff, v74.l
	v_lshrrev_b32_e32 v92, 8, v74
	v_lshrrev_b32_e32 v93, 24, v74
	v_and_b16 v36.h, 0xff, v74.h
	v_lshrrev_b32_e32 v74, 8, v40
	v_lshrrev_b32_e32 v94, 24, v40
	v_and_b16 v38.l, 0xff, v75.l
	v_lshrrev_b32_e32 v95, 8, v75
	v_lshrrev_b32_e32 v96, 24, v75
	v_and_b16 v38.h, 0xff, v75.h
	v_lshrrev_b32_e32 v75, 8, v41
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v100, v47, v43, 0x5010400
	v_perm_b32 v101, v47, v43, 0x7030602
	v_perm_b32 v105, v49, v45, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v91, 24, v39
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v98, v46, v42, 0x5010400
	v_perm_b32 v102, v48, v44, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v97, 24, v41
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v99, v46, v42, 0x7030602
	v_perm_b32 v103, v48, v44, 0x7030602
	v_perm_b32 v106, v49, v45, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v35.l, 0xff, v39.l
	v_and_b16 v37.l, 0xff, v40.l
	v_and_b16 v39.l, 0xff, v41.l
	v_lshlrev_b16 v40.l, 8, v76.l
	v_lshlrev_b16 v41.l, 8, v78.l
	v_lshlrev_b16 v43.l, 8, v90.l
	v_lshlrev_b16 v44.l, 8, v92.l
	v_lshlrev_b16 v44.h, 8, v93.l
	v_lshlrev_b16 v45.l, 8, v74.l
	v_lshlrev_b16 v45.h, 8, v94.l
	v_lshlrev_b16 v46.l, 8, v95.l
	v_lshlrev_b16 v47.l, 8, v75.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v74.l, 0xff, v100.l
	v_lshrrev_b32_e32 v92, 8, v100
	v_lshrrev_b32_e32 v93, 24, v100
	v_and_b16 v74.h, 0xff, v100.h
	v_and_b16 v75.l, 0xff, v101.l
	v_lshrrev_b32_e32 v94, 8, v101
	v_lshrrev_b32_e32 v95, 24, v101
	v_and_b16 v75.h, 0xff, v101.h
	v_and_b16 v78.l, 0xff, v105.l
	v_lshrrev_b32_e32 v100, 8, v105
	v_lshrrev_b32_e32 v101, 24, v105
	v_and_b16 v78.h, 0xff, v105.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	v_perm_b32 v105, v54, v50, 0x5010400
	v_and_b16 v35.h, 0xff, v39.h
	v_and_b16 v37.h, 0xff, v40.h
	v_lshlrev_b16 v40.h, 8, v77.l
	v_lshlrev_b16 v42.l, 8, v88.l
	v_lshlrev_b16 v43.h, 8, v91.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v88, 8, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v42.h, 8, v89.l
	v_lshlrev_b16 v46.h, 8, v96.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v89, 24, v98
	v_lshrrev_b32_e32 v96, 8, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v54, v54, v50, 0x7030602
	v_and_b16 v39.h, 0xff, v41.h
	v_lshlrev_b16 v41.h, 8, v79.l
	v_lshlrev_b16 v47.h, 8, v97.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v90, 8, v99
	v_lshrrev_b32_e32 v97, 24, v102
	v_and_b16 v48.l, 0xff, v98.l
	v_and_b16 v48.h, 0xff, v98.h
	v_and_b16 v49.l, 0xff, v99.l
	v_lshrrev_b32_e32 v91, 24, v99
	v_and_b16 v49.h, 0xff, v99.h
	v_and_b16 v76.l, 0xff, v102.l
	v_and_b16 v76.h, 0xff, v102.h
	v_and_b16 v77.l, 0xff, v103.l
	v_lshrrev_b32_e32 v98, 8, v103
	v_lshrrev_b32_e32 v99, 24, v103
	v_and_b16 v77.h, 0xff, v103.h
	v_and_b16 v79.l, 0xff, v106.l
	v_lshrrev_b32_e32 v102, 8, v106
	v_lshrrev_b32_e32 v103, 24, v106
	v_and_b16 v79.h, 0xff, v106.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v106, v55, v51, 0x5010400
	v_perm_b32 v55, v55, v51, 0x7030602
	v_perm_b32 v107, v56, v52, 0x5010400
	v_perm_b32 v56, v56, v52, 0x7030602
	v_perm_b32 v108, v57, v53, 0x5010400
	v_perm_b32 v109, v57, v53, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v110, v62, v58, 0x5010400
	v_perm_b32 v62, v62, v58, 0x7030602
	v_perm_b32 v111, v63, v59, 0x5010400
	v_perm_b32 v63, v63, v59, 0x7030602
	v_perm_b32 v112, v64, v60, 0x5010400
	v_perm_b32 v113, v65, v61, 0x5010400
	v_perm_b32 v114, v65, v61, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v26.l, v26.l, v40.l
	v_or_b16 v35.l, v35.l, v43.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v43.l, 8, v94.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v65, 8, v105
	v_or_b16 v26.h, v26.h, v40.h
	v_or_b16 v35.h, v35.h, v43.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v40.l, 8, v88.l
	v_lshlrev_b16 v43.h, 8, v95.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v88, 24, v105
	v_or_b16 v27.l, v27.l, v41.l
	v_or_b16 v36.l, v36.l, v44.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v40.h, 8, v89.l
	v_lshlrev_b16 v44.l, 8, v96.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v89, 8, v54
	v_or_b16 v27.h, v27.h, v41.h
	v_or_b16 v36.h, v36.h, v44.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v41.l, 8, v90.l
	v_lshlrev_b16 v44.h, 8, v97.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v90, 24, v54
	v_or_b16 v34.l, v34.l, v42.l
	v_or_b16 v34.h, v34.h, v42.h
	v_or_b16 v37.l, v37.l, v45.l
	v_or_b16 v37.h, v37.h, v45.h
	v_or_b16 v38.l, v38.l, v46.l
	v_or_b16 v38.h, v38.h, v46.h
	v_or_b16 v39.l, v39.l, v47.l
	v_or_b16 v39.h, v39.h, v47.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v41.h, 8, v91.l
	v_lshlrev_b16 v42.l, 8, v92.l
	v_lshlrev_b16 v42.h, 8, v93.l
	v_lshlrev_b16 v45.l, 8, v98.l
	v_lshlrev_b16 v45.h, 8, v99.l
	v_lshlrev_b16 v46.l, 8, v100.l
	v_lshlrev_b16 v46.h, 8, v101.l
	v_lshlrev_b16 v47.l, 8, v102.l
	v_lshlrev_b16 v47.h, 8, v103.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v91, 8, v106
	v_lshrrev_b32_e32 v92, 24, v106
	v_lshrrev_b32_e32 v93, 8, v55
	v_lshrrev_b32_e32 v94, 24, v55
	v_lshrrev_b32_e32 v95, 8, v107
	v_lshrrev_b32_e32 v96, 24, v107
	v_lshrrev_b32_e32 v97, 8, v56
	v_lshrrev_b32_e32 v98, 24, v56
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v64, v64, v60, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v50.l, 0xff, v105.l
	v_and_b16 v50.h, 0xff, v105.h
	v_and_b16 v51.l, 0xff, v54.l
	v_and_b16 v51.h, 0xff, v54.h
	v_and_b16 v52.l, 0xff, v106.l
	v_and_b16 v52.h, 0xff, v106.h
	v_and_b16 v53.l, 0xff, v55.l
	v_and_b16 v53.h, 0xff, v55.h
	v_and_b16 v54.l, 0xff, v107.l
	v_and_b16 v54.h, 0xff, v107.h
	v_and_b16 v55.l, 0xff, v56.l
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.l, 0xff, v108.l
	v_lshrrev_b32_e32 v99, 8, v108
	v_lshrrev_b32_e32 v100, 24, v108
	v_and_b16 v56.h, 0xff, v108.h
	v_and_b16 v57.l, 0xff, v109.l
	v_lshrrev_b32_e32 v101, 8, v109
	v_lshrrev_b32_e32 v102, 24, v109
	v_and_b16 v57.h, 0xff, v109.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v58.l, 0xff, v110.l
	v_lshrrev_b32_e32 v103, 8, v110
	v_lshrrev_b32_e32 v105, 24, v110
	v_and_b16 v58.h, 0xff, v110.h
	v_lshrrev_b32_e32 v106, 8, v62
	v_lshrrev_b32_e32 v107, 24, v62
	v_and_b16 v60.l, 0xff, v111.l
	v_lshrrev_b32_e32 v108, 8, v111
	v_lshrrev_b32_e32 v109, 24, v111
	v_and_b16 v60.h, 0xff, v111.h
	v_lshrrev_b32_e32 v110, 8, v63
	v_lshrrev_b32_e32 v111, 24, v63
	v_lshrrev_b32_e32 v115, 8, v112
	v_lshrrev_b32_e32 v116, 24, v112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v81, v26
	ds_store_b16_d16_hi v81, v26 offset:64
	ds_store_b16 v82, v27
	ds_store_b16_d16_hi v82, v27 offset:64
	ds_store_b16 v83, v34
	ds_store_b16_d16_hi v83, v34 offset:64
	ds_store_b16 v84, v35
	ds_store_b16_d16_hi v84, v35 offset:64
	ds_store_b16 v85, v36
	ds_store_b16_d16_hi v85, v36 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v34.h, v75.l, v43.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v43.l, 8, v65.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v40.l, v48.l, v40.l
	v_or_b16 v35.l, v75.h, v43.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v43.h, 8, v88.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v35.h, v76.l, v44.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v44.l, 8, v89.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v36.l, v76.h, v44.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v44.h, 8, v90.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.l, v48.h, v40.h
	v_or_b16 v26.h, v49.l, v41.l
	v_or_b16 v27.l, v49.h, v41.h
	v_or_b16 v27.h, v74.l, v42.l
	v_or_b16 v34.l, v74.h, v42.h
	v_or_b16 v36.h, v77.l, v45.l
	v_or_b16 v40.h, v77.h, v45.h
	v_or_b16 v41.l, v78.l, v46.l
	v_or_b16 v41.h, v78.h, v46.h
	v_or_b16 v42.l, v79.l, v47.l
	v_or_b16 v42.h, v79.h, v47.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v45.l, 8, v91.l
	v_lshlrev_b16 v45.h, 8, v92.l
	v_lshlrev_b16 v46.l, 8, v93.l
	v_lshlrev_b16 v46.h, 8, v94.l
	v_lshlrev_b16 v47.l, 8, v95.l
	v_lshlrev_b16 v47.h, 8, v96.l
	v_lshlrev_b16 v48.l, 8, v97.l
	v_lshlrev_b16 v48.h, 8, v98.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v59.l, 0xff, v62.l
	v_and_b16 v59.h, 0xff, v62.h
	v_and_b16 v61.l, 0xff, v63.l
	v_and_b16 v61.h, 0xff, v63.h
	v_and_b16 v62.l, 0xff, v112.l
	v_and_b16 v62.h, 0xff, v112.h
	v_lshrrev_b32_e32 v112, 8, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v49.l, 8, v99.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v65.l, 8, v103.l
	v_lshlrev_b16 v65.h, 8, v105.l
	v_lshlrev_b16 v74.l, 8, v106.l
	v_lshlrev_b16 v74.h, 8, v107.l
	v_lshlrev_b16 v75.l, 8, v108.l
	v_lshlrev_b16 v75.h, 8, v109.l
	v_lshlrev_b16 v76.l, 8, v110.l
	v_lshlrev_b16 v76.h, 8, v111.l
	v_lshlrev_b16 v77.l, 8, v115.l
	v_lshlrev_b16 v77.h, 8, v116.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v80, v[66:69] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v81, v40 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v81, v37 offset:640
	ds_store_b16_d16_hi v81, v37 offset:704
	ds_store_b16 v86, v38
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v81, v26 offset:16448
	ds_store_b16_d16_hi v82, v26 offset:16384
	ds_store_b16 v82, v27 offset:16448
	ds_store_b16_d16_hi v83, v27 offset:16384
	ds_store_b16 v83, v34 offset:16448
	ds_store_b16_d16_hi v84, v34 offset:16384
	ds_store_b16 v84, v35 offset:16448
	ds_store_b16_d16_hi v85, v35 offset:16384
	ds_store_b16 v85, v36 offset:16448
	ds_store_b16_d16_hi v81, v36 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v86, v38 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v81, v40 offset:17088
	ds_store_b16 v86, v41 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v87, v39
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v86, v41 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v87, v39 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v87, v42 offset:16384
	ds_store_b16_d16_hi v87, v42 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v26.l, v50.l, v43.l
	v_or_b16 v26.h, v50.h, v43.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v117, 24, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.l, v51.l, v44.l
	v_or_b16 v27.h, v51.h, v44.h
	v_or_b16 v34.l, v52.l, v45.l
	v_or_b16 v34.h, v52.h, v45.h
	v_or_b16 v35.l, v53.l, v46.l
	v_or_b16 v35.h, v53.h, v46.h
	v_or_b16 v36.l, v54.l, v47.l
	v_or_b16 v36.h, v54.h, v47.h
	v_or_b16 v37.l, v55.l, v48.l
	v_or_b16 v37.h, v55.h, v48.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v63.l, 0xff, v64.l
	v_lshlrev_b16 v78.l, 8, v112.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v38.l, v56.l, v49.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v40.l, v58.l, v65.l
	v_or_b16 v40.h, v58.h, v65.h
	v_or_b16 v41.l, v59.l, v74.l
	v_or_b16 v41.h, v59.h, v74.h
	v_or_b16 v42.l, v60.l, v75.l
	v_or_b16 v42.h, v60.h, v75.h
	v_or_b16 v43.l, v61.l, v76.l
	v_or_b16 v43.h, v61.h, v76.h
	v_or_b16 v44.l, v62.l, v77.l
	v_or_b16 v44.h, v62.h, v77.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v81, v26 offset:8192
	ds_store_b16_d16_hi v81, v26 offset:8256
	ds_store_b16 v82, v27 offset:8192
	ds_store_b16_d16_hi v82, v27 offset:8256
	ds_store_b16 v83, v34 offset:8192
	ds_store_b16_d16_hi v83, v34 offset:8256
	ds_store_b16 v84, v35 offset:8192
	ds_store_b16_d16_hi v84, v35 offset:8256
	ds_store_b16 v85, v36 offset:8192
	ds_store_b16_d16_hi v85, v36 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v80, v[70:73] offset:36864
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v81, v40 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v81, v37 offset:8832
	ds_store_b16_d16_hi v81, v37 offset:8896
	ds_store_b16 v86, v38 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v81, v40 offset:24640
	ds_store_b16 v82, v41 offset:24576
	ds_store_b16_d16_hi v82, v41 offset:24640
	ds_store_b16 v83, v42 offset:24576
	ds_store_b16_d16_hi v83, v42 offset:24640
	ds_store_b16 v84, v43 offset:24576
	ds_store_b16_d16_hi v84, v43 offset:24640
	ds_store_b16 v85, v44 offset:24576
	ds_store_b16_d16_hi v85, v44 offset:24640
	v_lshrrev_b32_e32 v34, 8, v113
	v_lshrrev_b32_e32 v35, 24, v113
	v_lshrrev_b32_e32 v36, 8, v114
	v_lshrrev_b32_e32 v37, 24, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v49.h, 8, v100.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v63.h, 0xff, v64.h
	v_lshlrev_b16 v78.h, 8, v117.l
	v_or_b16 v26.l, v63.l, v78.l
	v_and_b16 v27.l, 0xff, v113.l
	v_lshlrev_b16 v27.h, 8, v34.l
	v_lshlrev_b16 v34.l, 8, v35.l
	v_and_b16 v34.h, 0xff, v113.h
	v_and_b16 v35.l, 0xff, v114.l
	v_lshlrev_b16 v35.h, 8, v36.l
	v_lshlrev_b16 v36.l, 8, v37.l
	v_and_b16 v36.h, 0xff, v114.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v64.l, 8, v101.l
	v_or_b16 v38.h, v56.h, v49.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.h, v63.h, v78.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v64.h, 8, v102.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v81, v26 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v86, v38 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v81, v26 offset:25280
	v_or_b16 v37.l, v27.l, v27.h
	v_or_b16 v37.h, v34.h, v34.l
	v_or_b16 v38.l, v35.l, v35.h
	v_or_b16 v38.h, v36.h, v36.l
	v_lshlrev_b32_e32 v35, 3, v0
	v_lshlrev_b32_e32 v34, 3, v25
	v_and_b32_e32 v26, 8, v0
	v_and_b32_e32 v27, 32, v0
	v_lshlrev_b32_e32 v36, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v39.l, v57.l, v64.l
	v_or_b16 v39.h, v57.h, v64.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v86, v37 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v87, v39 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v86, v37 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v87, v39 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v87, v38 offset:24576
	ds_store_b16_d16_hi v87, v38 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v25, 0x430, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v66, 8, v0
	v_and_b32_e32 v69, 32, v0
	v_and_b32_e32 v65, 0x800, v36
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v95, v2, 6, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v25, v1, 6, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v96, 16, v95
	v_xor_b32_e32 v97, 32, v95
	v_xor_b32_e32 v98, 48, v95
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr25
.LBB0_3:                                ; %Flow610
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v37, s33, v104
	v_or_b32_e32 v38, s33, v118
	s_ashr_i32 s1, s6, 8
	scratch_store_b32 off, v118, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v155, s26, v5
	v_mul_lo_u32 v162, v37, s1
	v_mul_lo_u32 v161, v38, s1
	v_or_b32_e32 v151, s26, v7
	v_or_b32_e32 v152, s26, v8
	v_or_b32_e32 v153, s26, v9
	v_or_b32_e32 v139, s26, v10
	v_or_b32_e32 v140, s26, v11
	v_or_b32_e32 v141, s26, v12
	v_or_b32_e32 v142, s26, v28
	v_or_b32_e32 v108, s26, v29
	v_or_b32_e32 v109, s26, v30
	v_or_b32_e32 v110, s26, v31
	v_or_b32_e32 v111, s26, v32
	v_or_b32_e32 v112, s26, v33
	v_or_b32_e32 v113, s26, v3
	v_or_b32_e32 v114, s26, v4
	v_or_b32_e32 v115, s26, v6
	v_add_nc_u32_e32 v150, s27, v5
	v_add_nc_u32_e32 v146, s27, v7
	v_add_nc_u32_e32 v147, s27, v8
	v_add_nc_u32_e32 v148, s27, v9
	v_add_nc_u32_e32 v143, s27, v10
	v_add_nc_u32_e32 v149, s27, v11
	v_add_nc_u32_e32 v144, s27, v12
	v_add_nc_u32_e32 v145, s27, v28
	v_add_nc_u32_e32 v117, s27, v29
	v_add_nc_u32_e32 v118, s27, v30
	v_add_nc_u32_e32 v119, s27, v31
	v_add_nc_u32_e32 v120, s27, v32
	v_add_nc_u32_e32 v121, s27, v33
	v_add_nc_u32_e32 v122, s27, v3
	v_add_nc_u32_e32 v123, s27, v4
	v_add_nc_u32_e32 v124, s27, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 5, 1
	s_mov_b32 s16, 0
	v_bfe_i32 v4, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v3, 0x420, v3
	v_lshl_or_b32 v25, v1, 6, v34
	v_and_b32_e32 v5, 0x430, v35
	v_and_b32_e32 v65, 0x800, v36
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v28, s34, v14
	v_and_or_b32 v1, 0x210, v4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v95, v2, 6, v5
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v166, 0
	v_xor_b32_e32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v96, 16, v95
	v_xor_b32_e32 v97, 32, v95
	v_xor_b32_e32 v98, 48, v95
	v_mov_b32_e32 v178, 0
	v_or_b32_e32 v29, v1, v65
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v30, 16, v29
	v_xor_b32_e32 v31, 32, v29
	v_xor_b32_e32 v32, 48, v29
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v94, 0
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v35, 0
.Ltmp21:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s14, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s0, s35, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s51, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s50, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s14, s14, -3
	s_mov_b32 s15, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_mov_b32 s48, s16
	s_mov_b32 s47, s16
.Ltmp22:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s52, s47, 6
	s_mov_b32 s49, s30
	s_mov_b32 s30, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s0, s52
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v66, s51, v95
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s35, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v69, s48, v29
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v70, s50, v29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v132, s23 :: v_dual_mov_b32 v131, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v130, s21 :: v_dual_add_nc_u32 v9, s35, v16
	v_dual_mov_b32 v129, s20 :: v_dual_mov_b32 v128, s19
	v_mov_b32_e32 v127, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v126, s17 :: v_dual_mov_b32 v125, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v66
	ds_load_b128 v[133:136], v66 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[156:159], v69 offset:4096
	ds_load_b128 v[187:190], v69
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[222:225], v70
	ds_load_b128 v[246:249], v70 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v66, s51, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v69, s48, v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[156:159], v[81:84], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[156:159], v[133:136], v[125:132] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[222:225], v[81:84], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[222:225], v[133:136], v[125:132] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[222:229], v[187:190], v[133:136], v[125:132] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[246:249], v[133:136], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[246:249], v[81:84], v[125:132] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[125:132], v[187:190], v[81:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[81:84], v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[156:159], v66 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v66, s50, v30
	ds_load_b128 v[187:190], v66 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[81:84], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[133:136], v[156:159], v[222:229] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v69 offset:4096
	v_add_nc_u32_e32 v69, s48, v31
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[187:190], v[81:84], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[187:190], v[156:159], v[230:237] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[133:136], v[81:84], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[133:136], v[156:159], v[198:205] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[133:136], v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v66, s51, v97
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[133:136], v[81:84], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[133:136], v[156:159], v[214:221] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[81:84], v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[156:159], v66 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v66, s50, v31
	ds_load_b128 v[187:190], v66 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[81:84], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[133:136], v[156:159], v[222:229] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v69 offset:4096
	v_add_nc_u32_e32 v69, s48, v32
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s48, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s48, s48, s26
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[187:190], v[81:84], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[187:190], v[156:159], v[230:237] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[133:136], v[81:84], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[133:136], v[156:159], v[198:205] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[133:136], v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v66, s51, v98
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[133:136], v[81:84], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[133:136], v[156:159], v[214:221] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[81:84], v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[156:159], v66 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v66, s50, v32
	ds_load_b128 v[187:190], v66 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[81:84], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[133:136], v[156:159], v[222:229] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v69 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v160, v129
	v_cvt_f32_i32_e32 v154, v126
	v_cvt_f32_i32_e32 v174, v132
	v_cvt_f32_i32_e32 v176, v131
	v_cvt_f32_i32_e32 v116, v222
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[187:190], v[156:159], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[187:190], v[81:84], v[238:245] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v105, v223
	v_cvt_f32_i32_e32 v137, v229
	v_cvt_f32_i32_e32 v138, v228
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v107, v237
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[133:136], v[81:84], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[133:136], v[156:159], v[198:205] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[133:136], v66
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v66, s35, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v181, v181
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v66
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v66, s48, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v184, v184
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[214:221], v[133:136], v[156:159], v[214:221] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v157, v128
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v69, s48, v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v156, v125
	v_cvt_f32_i32_e32 v158, v127
	v_cvt_f32_i32_e32 v159, v130
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s48, s48, s27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[125:128], v66, s[36:39], 0 offen
	buffer_load_b128 v[129:132], v69, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v69, s48, v14
	v_add_nc_u32_e32 v75, s48, v28
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[206:213], v[133:136], v[81:84], v[206:213] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v88, v221
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s48, s49, 31
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s48, s48, 24
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v133, v225
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s49, s49, s48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v134, v224
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s48, s49, 8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v135, v227
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s48, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s49, s48, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s51, s49, s26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v136, v226
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v102, v215
	v_cvt_f32_i32_e32 v106, v214
	v_cvt_f32_i32_e32 v99, v217
	v_cvt_f32_i32_e32 v103, v216
	v_cvt_f32_i32_e32 v90, v219
	v_cvt_f32_i32_e32 v100, v218
	v_cvt_f32_i32_e32 v92, v220
	v_cvt_f32_i32_e32 v177, v207
	v_cvt_f32_i32_e32 v187, v206
	v_cvt_f32_i32_e32 v188, v209
	v_cvt_f32_i32_e32 v189, v208
	v_cvt_f32_i32_e32 v190, v211
	v_cvt_f32_i32_e32 v191, v210
	v_cvt_f32_i32_e32 v192, v213
	v_cvt_f32_i32_e32 v193, v212
	v_cvt_f32_i32_e32 v206, v231
	v_cvt_f32_i32_e32 v207, v230
	v_cvt_f32_i32_e32 v208, v233
	v_cvt_f32_i32_e32 v209, v232
	v_cvt_f32_i32_e32 v210, v235
	v_cvt_f32_i32_e32 v211, v234
	v_cvt_f32_i32_e32 v212, v236
	v_cvt_f32_i32_e32 v213, v239
	v_cvt_f32_i32_e32 v214, v238
	v_cvt_f32_i32_e32 v215, v241
	v_cvt_f32_i32_e32 v216, v240
	v_cvt_f32_i32_e32 v217, v243
	v_cvt_f32_i32_e32 v218, v242
	v_cvt_f32_i32_e32 v219, v245
	v_cvt_f32_i32_e32 v220, v244
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v224, v140, s49, 1
	v_add_lshl_u32 v225, v141, s49, 1
	v_add_lshl_u32 v226, v142, s49, 1
	v_add_lshl_u32 v227, v108, s49, 1
	v_add_lshl_u32 v228, v109, s49, 1
	v_add_lshl_u32 v229, v110, s49, 1
	v_add_lshl_u32 v230, v111, s49, 1
	v_add_lshl_u32 v231, v112, s49, 1
	v_add_lshl_u32 v232, v113, s49, 1
	v_add_lshl_u32 v233, v114, s49, 1
	v_add_lshl_u32 v234, v115, s49, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v235, v150, s51, 1
	v_add_lshl_u32 v236, v146, s51, 1
	v_add_lshl_u32 v237, v147, s51, 1
	v_add_lshl_u32 v238, v148, s51, 1
	v_add_lshl_u32 v239, v143, s51, 1
	v_add_lshl_u32 v240, v149, s51, 1
	v_add_lshl_u32 v241, v144, s51, 1
	v_add_lshl_u32 v242, v145, s51, 1
	v_add_lshl_u32 v243, v117, s51, 1
	v_add_lshl_u32 v244, v118, s51, 1
	v_add_lshl_u32 v245, v119, s51, 1
	v_add_lshl_u32 v246, v120, s51, 1
	v_add_lshl_u32 v247, v121, s51, 1
	v_add_lshl_u32 v248, v122, s51, 1
	v_add_lshl_u32 v249, v123, s51, 1
	v_add_lshl_u32 v250, v124, s51, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v225, 0x80000000, v225 :: v_dual_cndmask_b32 v228, 0x80000000, v228
	v_dual_cndmask_b32 v227, 0x80000000, v227 :: v_dual_cndmask_b32 v230, 0x80000000, v230
	v_dual_cndmask_b32 v229, 0x80000000, v229 :: v_dual_cndmask_b32 v232, 0x80000000, v232
	v_dual_cndmask_b32 v231, 0x80000000, v231 :: v_dual_cndmask_b32 v234, 0x80000000, v234
	v_dual_cndmask_b32 v233, 0x80000000, v233 :: v_dual_cndmask_b32 v236, 0x80000000, v236
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v235, 0x80000000, v235 :: v_dual_cndmask_b32 v238, 0x80000000, v238
	v_dual_cndmask_b32 v237, 0x80000000, v237 :: v_dual_cndmask_b32 v240, 0x80000000, v240
	v_dual_cndmask_b32 v239, 0x80000000, v239 :: v_dual_cndmask_b32 v242, 0x80000000, v242
	v_dual_cndmask_b32 v241, 0x80000000, v241 :: v_dual_cndmask_b32 v244, 0x80000000, v244
	v_dual_cndmask_b32 v243, 0x80000000, v243 :: v_dual_cndmask_b32 v246, 0x80000000, v246
	v_dual_cndmask_b32 v245, 0x80000000, v245 :: v_dual_cndmask_b32 v248, 0x80000000, v248
	v_dual_cndmask_b32 v247, 0x80000000, v247 :: v_dual_cndmask_b32 v250, 0x80000000, v250
	v_cndmask_b32_e32 v249, 0x80000000, v249, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v205, v205
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v186, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s15, s15, 0
	s_add_i32 s52, s47, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s50, s15, 12
	s_mov_b32 s51, s46
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v224, 0x80000000, v224, vcc_lo
	v_cndmask_b32_e32 v226, 0x80000000, v226, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v221, v129, v125, 0x5010400
	v_perm_b32 v222, v129, v125, 0x7030602
	v_perm_b32 v84, v130, v126, 0x5010400
	v_perm_b32 v82, v130, v126, 0x7030602
	v_perm_b32 v79, v131, v127, 0x5010400
	v_perm_b32 v76, v131, v127, 0x7030602
	v_perm_b32 v70, v132, v128, 0x5010400
	v_perm_b32 v66, v132, v128, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[125:128], v69, s[36:39], 0 offen
	buffer_load_b128 v[129:132], v75, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v87, v130, v126, 0x5010400
	v_perm_b32 v83, v130, v126, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v126, v162, s48, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v81, v131, v127, 0x5010400
	v_perm_b32 v78, v131, v127, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v127, v161, s48, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v75, v132, v128, 0x5010400
	v_perm_b32 v69, v132, v128, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v126, 0x80000000, v126, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v132, v139, s49, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v127, 0x80000000, v127, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v128, v155, s49, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v223, v129, v125, 0x5010400
	v_perm_b32 v125, v129, v125, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v126, v126, s[4:7], 0 offen
	buffer_load_u16 v127, v127, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v129, v151, s49, 1
	v_add_lshl_u32 v130, v152, s49, 1
	v_add_lshl_u32 v131, v153, s49, 1
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s49, s50, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v129, 0x80000000, v129 :: v_dual_cndmask_b32 v130, 0x80000000, v130
	v_cndmask_b32_e32 v131, 0x80000000, v131, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v128, v128, s[40:43], 0 offen
	buffer_load_u16 v129, v129, s[40:43], 0 offen
	buffer_load_u16 v130, v130, s[40:43], 0 offen
	buffer_load_u16 v131, v131, s[40:43], 0 offen
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	buffer_load_u16 v224, v224, s[40:43], 0 offen
	buffer_load_u16 v225, v225, s[40:43], 0 offen
	buffer_load_u16 v226, v226, s[40:43], 0 offen
	buffer_load_u16 v227, v227, s[40:43], 0 offen
	buffer_load_u16 v228, v228, s[40:43], 0 offen
	buffer_load_u16 v229, v229, s[40:43], 0 offen
	buffer_load_u16 v230, v230, s[40:43], 0 offen
	buffer_load_u16 v231, v231, s[40:43], 0 offen
	buffer_load_u16 v232, v232, s[40:43], 0 offen
	buffer_load_u16 v233, v233, s[40:43], 0 offen
	buffer_load_u16 v234, v234, s[40:43], 0 offen
	buffer_load_u16 v235, v235, s[40:43], 0 offen
	buffer_load_u16 v236, v236, s[40:43], 0 offen
	buffer_load_u16 v237, v237, s[40:43], 0 offen
	buffer_load_u16 v238, v238, s[40:43], 0 offen
	buffer_load_u16 v239, v239, s[40:43], 0 offen
	buffer_load_u16 v240, v240, s[40:43], 0 offen
	buffer_load_u16 v241, v241, s[40:43], 0 offen
	buffer_load_u16 v242, v242, s[40:43], 0 offen
	buffer_load_u16 v243, v243, s[40:43], 0 offen
	buffer_load_u16 v244, v244, s[40:43], 0 offen
	buffer_load_u16 v245, v245, s[40:43], 0 offen
	buffer_load_u16 v246, v246, s[40:43], 0 offen
	buffer_load_u16 v247, v247, s[40:43], 0 offen
	buffer_load_u16 v248, v248, s[40:43], 0 offen
	buffer_load_u16 v249, v249, s[40:43], 0 offen
	buffer_load_u16 v250, v250, s[40:43], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v251, s49, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s48, s45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s49, s50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v251, v[9:12] offset:32768
	s_mov_b32 s50, s44
	s_add_i32 s46, s49, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s47, s14
	s_mov_b32 s47, s52
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v10, 16, v128
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v9, 16, v126
	v_lshlrev_b32_e32 v127, 16, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v9, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v173, v11, v156
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v11, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v9, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v175, v12, v154
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v12, 16, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v126, v9, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v165, v126, v158 :: v_dual_lshlrev_b32 v126, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v128, v9, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v166, v128, v157
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v128, 16, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v9, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v85, v129, v160
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v129, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v130, v9, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v86, v130, v159
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v130, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v131, v9, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v67, v131, v176
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v131, 16, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v132, v9, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v68, v132, v174
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v132, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v9, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v57, v154, v179 :: v_dual_lshlrev_b32 v154, 16, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v9, v154
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v58, v156, v180
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v194, v10, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v195, v10, v105 :: v_dual_mul_f32 v10, v127, v12
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v169, v10, v134 :: v_dual_lshlrev_b32 v156, 16, v229
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v157, v9, v156 :: v_dual_mul_f32 v10, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v49, v157, v181
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v170, v10, v133 :: v_dual_lshlrev_b32 v157, 16, v230
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v158, v9, v157 :: v_dual_fmac_f32 v89, v10, v136
	v_mul_f32_e32 v10, v127, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v50, v158, v182
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v158, 16, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v91, v10, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v159, v9, v158
	v_mul_f32_e32 v10, v127, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v41, v159, v183
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v159, 16, v232
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v71, v10, v138 :: v_dual_mul_f32 v10, v127, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v160, v9, v159
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v72, v10, v137
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v160, v184
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v59, v10, v198 :: v_dual_lshlrev_b32 v160, 16, v233
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v174, v9, v160
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v60, v10, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v10, v127, v156 :: v_dual_fmac_f32 v33, v174, v185
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v51, v10, v200 :: v_dual_lshlrev_b32 v174, 16, v234
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v52, v10, v201
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v158
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v43, v10, v202 :: v_dual_mul_f32 v10, v127, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v10, v203
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v127, v160
	v_dual_mul_f32 v176, v9, v174 :: v_dual_fmac_f32 v35, v10, v204
	v_mul_f32_e32 v10, v127, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v34, v176, v186
	v_fmac_f32_e32 v36, v10, v205
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v10, 16, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v9, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v163, v11, v187
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v11, 16, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v9, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v178, v12, v177
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v12, 16, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v105, v9, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v167, v105, v189
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v105, 16, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v116, v9, v105
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v168, v116, v188
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v116, 16, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v126, v9, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v93, v126, v191 :: v_dual_lshlrev_b32 v126, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v128, v9, v126
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v94, v128, v190
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v128, 16, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v129, v9, v128
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v73, v129, v193
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v129, 16, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v130, v9, v129
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v74, v130, v192
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v130, 16, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v131, v9, v130
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v61, v131, v214
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v131, 16, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v132, v9, v131
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v62, v132, v213
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v132, 16, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v133, v9, v132
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v53, v133, v216
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v133, 16, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v134, v9, v133
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v54, v134, v215
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v134, 16, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v135, v9, v134
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v45, v135, v218
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v135, 16, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v136, v9, v135
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v46, v136, v217
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v136, 16, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v137, v9, v136
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v37, v137, v220
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v137, 16, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v9, v137
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v38, v9, v219 :: v_dual_mul_f32 v9, v127, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v10, 24, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v196, v9, v106 :: v_dual_mul_f32 v9, v127, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshrrev_b32_e32 v11, 24, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v197, v9, v102
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v12, 24, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v171, v9, v103
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v105
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v172, v9, v99 :: v_dual_mul_f32 v9, v127, v116
	v_fmac_f32_e32 v101, v9, v100
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v164, v9, v90 :: v_dual_mul_f32 v9, v127, v128
	v_fmac_f32_e32 v77, v9, v92
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v80, v9, v88 :: v_dual_mul_f32 v9, v127, v130
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v88, 24, v125
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v63, v9, v207
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v88.l, 8, v88.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v64, v9, v206 :: v_dual_mul_f32 v9, v127, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v9, v209
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v133
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v56, v9, v208 :: v_dual_mul_f32 v9, v127, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v9, v211
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v135
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v48, v9, v210 :: v_dual_mul_f32 v9, v127, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v9, v212
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v127, v137
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v40, v9, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v221
	v_and_b16 v9.h, 0xff, v221.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v221.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v222
	v_and_b16 v10.h, 0xff, v222.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v222.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 8, v223
	v_and_b16 v11.h, 0xff, v223.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v223.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v125
	v_and_b16 v12.h, 0xff, v125.l
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v125.h
	v_or_b16 v12.h, v12.h, v88.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v88, s45, v18
	ds_store_b16 v88, v9
	ds_store_b16_d16_hi v88, v9 offset:64
	v_add_nc_u32_e32 v9, s45, v19
	ds_store_b16 v9, v10
	ds_store_b16_d16_hi v9, v10 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v88, v11 offset:16384
	ds_store_b16_d16_hi v88, v11 offset:16448
	ds_store_b16 v9, v12 offset:16384
	ds_store_b16_d16_hi v9, v12 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v84
	v_and_b16 v9.h, 0xff, v84.l
	v_lshrrev_b32_e32 v10, 24, v84
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v84.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v10, 8, v87
	v_and_b16 v10.h, 0xff, v87.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v87.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s45, v20
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v11, v10 offset:16384
	ds_store_b16_d16_hi v11, v10 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v82
	v_and_b16 v9.h, 0xff, v82.l
	v_lshrrev_b32_e32 v10, 24, v82
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v82.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v10, 8, v83
	v_and_b16 v10.h, 0xff, v83.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v83.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s45, v21
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v11, v10 offset:16384
	ds_store_b16_d16_hi v11, v10 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v79
	v_and_b16 v9.h, 0xff, v79.l
	v_lshrrev_b32_e32 v10, 24, v79
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v79.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v10, 8, v81
	v_and_b16 v10.h, 0xff, v81.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v81.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s45, v22
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v11, v10 offset:16384
	ds_store_b16_d16_hi v11, v10 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v76
	v_and_b16 v9.h, 0xff, v76.l
	v_lshrrev_b32_e32 v10, 24, v76
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v10, 8, v78
	v_and_b16 v10.h, 0xff, v78.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v78.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v88, v9 offset:640
	ds_store_b16_d16_hi v88, v9 offset:704
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v88, v10 offset:17024
	ds_store_b16_d16_hi v88, v10 offset:17088
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v70
	v_and_b16 v9.h, 0xff, v70.l
	v_lshrrev_b32_e32 v10, 24, v70
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v70.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v10, 8, v75
	v_and_b16 v10.h, 0xff, v75.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v75.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s45, v23
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v11, v10 offset:16384
	ds_store_b16_d16_hi v11, v10 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v66
	v_and_b16 v9.h, 0xff, v66.l
	v_lshrrev_b32_e32 v10, 24, v66
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v66.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v10, 8, v69
	v_and_b16 v10.h, 0xff, v69.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v69.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s45, v24
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v11, v10 offset:16384
	ds_store_b16_d16_hi v11, v10 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v66, v26 :: v_dual_mov_b32 v69, v27
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s51, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v178, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v175, 0
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v163, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s50, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v3, s51, v95
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[13:16], v3 offset:2048
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v3, s51, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v4, s51, v98
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v100, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v1, v2
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v2, s51, v96
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_xor_b32_e32 v1, v1, v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v2
	ds_load_b128 v[17:20], v2 offset:2048
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v66, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v83, v1, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[9:12], v3 offset:2048
	ds_load_b128 v[5:8], v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v4 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v65, 0, 1, s2
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v136, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v84, 16, v83
	v_xor_b32_e32 v90, 32, v83
	v_xor_b32_e32 v92, 48, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v65
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v69, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v132, s11 :: v_dual_add_nc_u32 v65, s48, v83
	v_dual_mov_b32 v131, s10 :: v_dual_add_nc_u32 v66, s48, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[133:136], v65 offset:4096
	ds_load_b128 v[156:159], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v128, s7 :: v_dual_add_nc_u32 v69, s48, v90
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[187:190], v66 offset:4096
	ds_load_b128 v[214:217], v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v130, s9 :: v_dual_add_nc_u32 v65, s48, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[218:221], v69 offset:4096
	ds_load_b128 v[222:225], v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v129, s8 :: v_dual_mov_b32 v126, s5
	v_mov_b32_e32 v127, s6
	v_mov_b32_e32 v125, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[226:229], v65
	ds_load_b128 v[230:233], v65 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[198:205], v[133:136], v[29:32], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[156:159], v[29:32], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[156:159], v[13:16], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[13:16], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[214:217], v[25:28], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[187:190], v[25:28], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[214:217], v[17:20], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[187:190], v[17:20], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[222:225], v[21:24], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[218:221], v[21:24], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[222:225], v[9:12], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[218:221], v[9:12], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[226:229], v[5:8], v[179:186] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[198:205], v[230:233], v[5:8], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[226:229], v[1:4], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[230:233], v[1:4], v[125:132] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v87, v181
	v_cvt_f32_i32_e32 v103, v182
	v_cvt_f32_i32_e32 v116, v183
	v_cvt_f32_i32_e32 v133, v184
	v_cvt_f32_i32_e32 v177, v185
	v_cvt_f32_i32_e32 v193, v186
	v_cvt_f32_i32_e32 v99, v198
	v_cvt_f32_i32_e32 v100, v199
	v_cvt_f32_i32_e32 v154, v200
	v_cvt_f32_i32_e32 v81, v201
	v_cvt_f32_i32_e32 v75, v202
	v_cvt_f32_i32_e32 v76, v203
	v_cvt_f32_i32_e32 v65, v204
	v_cvt_f32_i32_e32 v66, v205
	v_cvt_f32_i32_e32 v136, v206
	v_cvt_f32_i32_e32 v138, v207
	v_cvt_f32_i32_e32 v0, v208
	v_cvt_f32_i32_e32 v255, v209
	v_cvt_f32_i32_e32 v134, v210
	v_cvt_f32_i32_e32 v135, v211
	v_cvt_f32_i32_e32 v105, v212
	v_cvt_f32_i32_e32 v107, v213
	v_cvt_f32_i32_e32 v102, v125
	v_cvt_f32_i32_e32 v106, v126
	v_cvt_f32_i32_e32 v82, v127
	v_cvt_f32_i32_e32 v88, v128
	v_cvt_f32_i32_e32 v78, v129
	v_cvt_f32_i32_e32 v79, v130
	v_cvt_f32_i32_e32 v69, v131
	v_cvt_f32_i32_e32 v70, v132
	v_cvt_f32_i32_e32 v125, v179
	v_cvt_f32_i32_e32 v126, v180
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v138, off offset:232
	scratch_store_b32 off, v136, off offset:228
	scratch_store_b32 off, v126, off offset:220
	scratch_store_b32 off, v125, off offset:216
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v133, off offset:180
	scratch_store_b32 off, v116, off offset:176
	scratch_store_b32 off, v107, off offset:160
	scratch_store_b32 off, v105, off offset:156
	scratch_store_b32 off, v106, off offset:140
	scratch_store_b32 off, v102, off offset:136
	scratch_store_b32 off, v100, off offset:124
	scratch_store_b32 off, v99, off offset:120
	scratch_store_b32 off, v88, off offset:108
	scratch_store_b32 off, v82, off offset:104
	scratch_store_b32 off, v81, off offset:92
	scratch_store_b32 off, v79, off offset:40
	scratch_store_b32 off, v78, off offset:36
	scratch_store_b32 off, v76, off offset:28
	scratch_store_b32 off, v75, off offset:24
	scratch_store_b32 off, v70, off offset:12
	scratch_store_b32 off, v69, off offset:8
	scratch_store_b32 off, v66, off offset:4
	scratch_store_b32 off, v65, off
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v75, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v132, s11 :: v_dual_add_nc_u32 v65, s50, v83
	v_dual_mov_b32 v130, s9 :: v_dual_add_nc_u32 v69, s50, v84
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[133:136], v65 offset:4096
	ds_load_b128 v[157:160], v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v128, s7 :: v_dual_add_nc_u32 v65, s50, v90
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[184:187], v69 offset:4096
	ds_load_b128 v[198:201], v69
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v131, s10 :: v_dual_add_nc_u32 v66, s50, v92
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[212:215], v65 offset:4096
	ds_load_b128 v[216:219], v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v129, s8 :: v_dual_mov_b32 v126, s5
	v_mov_b32_e32 v127, s6
	v_mov_b32_e32 v125, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[220:223], v66
	ds_load_b128 v[224:227], v66 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[133:136], v[29:32], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[204:211], v[157:160], v[29:32], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[157:160], v[13:16], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[13:16], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[204:211], v[198:201], v[25:28], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[184:187], v[25:28], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[198:201], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[184:187], v[17:20], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[204:211], v[216:219], v[21:24], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[212:215], v[21:24], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[216:219], v[9:12], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[212:215], v[9:12], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[204:211], v[220:223], v[5:8], v[204:211] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[224:227], v[5:8], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[220:223], v[1:4], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[224:227], v[1:4], v[125:132] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v206
	v_cvt_f32_i32_e32 v100, v207
	v_cvt_f32_i32_e32 v249, v208
	v_cvt_f32_i32_e32 v251, v209
	v_cvt_f32_i32_e32 v231, v210
	v_cvt_f32_i32_e32 v198, v211
	v_cvt_f32_i32_e32 v105, v233
	v_cvt_f32_i32_e32 v191, v234
	v_cvt_f32_i32_e32 v106, v235
	v_cvt_f32_i32_e32 v134, v236
	v_cvt_f32_i32_e32 v78, v237
	v_cvt_f32_i32_e32 v79, v238
	v_cvt_f32_i32_e32 v65, v239
	v_cvt_f32_i32_e32 v66, v240
	v_cvt_f32_i32_e32 v102, v241
	v_cvt_f32_i32_e32 v82, v242
	v_cvt_f32_i32_e32 v70, v243
	v_cvt_f32_i32_e32 v69, v244
	v_cvt_f32_i32_e32 v116, v245
	v_cvt_f32_i32_e32 v107, v246
	v_cvt_f32_i32_e32 v135, v247
	v_cvt_f32_i32_e32 v136, v248
	v_cvt_f32_i32_e32 v237, v125
	v_cvt_f32_i32_e32 v183, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v81, v129
	v_cvt_f32_i32_e32 v99, v130
	v_cvt_f32_i32_e32 v75, v131
	v_cvt_f32_i32_e32 v76, v132
	v_cvt_f32_i32_e32 v137, v204
	v_cvt_f32_i32_e32 v133, v205
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v137, off offset:224
	scratch_store_b32 off, v136, off offset:188
	scratch_store_b32 off, v135, off offset:184
	scratch_store_b32 off, v126, off offset:132
	scratch_store_b32 off, v125, off offset:128
	scratch_store_b32 off, v134, off offset:116
	scratch_store_b32 off, v106, off offset:112
	scratch_store_b32 off, v99, off offset:72
	scratch_store_b32 off, v81, off offset:64
	scratch_store_b32 off, v79, off offset:60
	scratch_store_b32 off, v78, off offset:56
	scratch_store_b32 off, v76, off offset:44
	scratch_store_b32 off, v75, off offset:32
	scratch_store_b32 off, v66, off offset:20
	scratch_store_b32 off, v65, off offset:16
	s_ashr_i32 s0, s0, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v162, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v106, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v65, 0, 1, s3
	v_mov_b32_e32 v135, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v88, v1, s[12:15], 0 offen
	v_add_lshl_u32 v1, v161, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	v_mov_b32_e32 v75, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v179, 0
	v_mov_b32_e32 v157, 0
	v_mov_b32_e32 v217, 0
	v_mov_b32_e32 v79, 0
	buffer_load_u16 v132, v1, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v155, s0, 1
	v_mov_b32_e32 v81, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v243, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v187, 0
	v_mov_b32_e32 v189, 0
	v_mov_b32_e32 v209, 0
	buffer_load_u16 v190, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v151, s0, 1
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v236, 0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v242, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v174, 0
	buffer_load_u16 v131, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v152, s0, 1
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v76, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v78, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_mov_b32_e32 v218, 0
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v158, 0
	buffer_load_u16 v99, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v153, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v125, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v139, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v254, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v140, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v253, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v141, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v142, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v108, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v109, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v110, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v111, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v112, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v113, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v114, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v115, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	.loc	1 426 31 is_stmt 0              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, s0, v150, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v3, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v146, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v4, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v147, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v136, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v148, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v184, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v143, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v134, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v149, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v137, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v144, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v250, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v145, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v252, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v117, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v118, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v119, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v192, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v120, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v138, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v121, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v122, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v123, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v124, 1
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v65
	v_mov_b32_e32 v65, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s46, v95
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[13:16], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v96
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[9:12], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v97
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[5:8], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v98
	ds_load_b128 v[29:32], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[95:98], v1 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[95:98], off offset:236 ; 16-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v206, s11 :: v_dual_add_nc_u32 v65, s45, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[95:98], v65 offset:4096
	ds_load_b128 v[127:130], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v205, s10 :: v_dual_add_nc_u32 v66, s45, v84
	v_dual_mov_b32 v204, s9 :: v_dual_add_nc_u32 v65, s45, v92
	v_dual_mov_b32 v202, s7 :: v_dual_add_nc_u32 v75, s45, v90
	v_dual_mov_b32 v203, s8 :: v_dual_mov_b32 v200, s5
	v_mov_b32_e32 v201, s6
	v_mov_b32_e32 v199, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[238:241], v66 offset:4096
	ds_load_b128 v[242:245], v66
	ds_load_b128 v[156:159], v75 offset:4096
	ds_load_b128 v[233:236], v75
	ds_load_b128 v[179:182], v65
	ds_load_b128 v[186:189], v65 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[95:98], v[17:20], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[127:130], v[17:20], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[127:130], v[13:16], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[95:98], v[13:16], v[199:206] neg_lo:[1,1,0]
	scratch_load_b128 v[95:98], off, off offset:236 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[238:241], v[21:24], v[215:222] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[242:245], v[21:24], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[242:245], v[9:12], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[238:241], v[9:12], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[156:159], v[25:28], v[215:222] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[233:236], v[25:28], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[233:236], v[5:8], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[156:159], v[5:8], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[186:189], v[29:32], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[179:182], v[29:32], v[207:214] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v176, v215
	v_cvt_f32_i32_e32 v65, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v210
	v_cvt_f32_i32_e32 v240, v211
	v_cvt_f32_i32_e32 v239, v212
	v_cvt_f32_i32_e32 v236, v213
	v_cvt_f32_i32_e32 v242, v214
	v_cvt_f32_i32_e32 v160, v216
	v_cvt_f32_i32_e32 v174, v217
	v_cvt_f32_i32_e32 v210, v218
	v_cvt_f32_i32_e32 v156, v221
	v_cvt_f32_i32_e32 v157, v222
	v_cvt_f32_i32_e32 v135, v207
	v_cvt_f32_i32_e32 v75, v208
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[223:230], v[179:182], v[95:98], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[186:189], v[95:98], v[199:206] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v179, v219
	v_cvt_f32_i32_e32 v180, v220
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v223
	v_cvt_f32_i32_e32 v78, v224
	v_cvt_f32_i32_e32 v79, v225
	v_cvt_f32_i32_e32 v81, v226
	v_cvt_f32_i32_e32 v217, v227
	v_cvt_f32_i32_e32 v218, v228
	v_cvt_f32_i32_e32 v215, v229
	v_cvt_f32_i32_e32 v243, v230
	v_cvt_f32_i32_e32 v211, v199
	v_cvt_f32_i32_e32 v212, v200
	v_cvt_f32_i32_e32 v189, v201
	v_cvt_f32_i32_e32 v209, v202
	v_cvt_f32_i32_e32 v182, v203
	v_cvt_f32_i32_e32 v187, v204
	v_cvt_f32_i32_e32 v159, v205
	v_cvt_f32_i32_e32 v158, v206
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v199, 0
	v_mov_b32_e32 v188, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v241, v179 :: v_dual_add_nc_u32 v92, s44, v92
	v_dual_mov_b32 v225, v154 :: v_dual_add_nc_u32 v90, s44, v90
	v_dual_mov_b32 v248, v180 :: v_dual_add_nc_u32 v83, s44, v83
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v84, s44, v84
	ds_load_b128 v[95:98], v92 offset:4096
	ds_load_b128 v[127:130], v92
	v_mov_b32_e32 v154, v182
	ds_load_b128 v[179:182], v90 offset:4096
	v_dual_mov_b32 v126, v100 :: v_dual_mov_b32 v1, v162
	v_mov_b32_e32 v100, v0
	v_mov_b16_e32 v0.l, v88.l
	v_mov_b32_e32 v88, v255
	v_mov_b16_e64 v255.l, v254.l
	v_mov_b16_e64 v254.l, v253.l
	v_mov_b16_e64 v253.l, v252.l
	v_mov_b32_e32 v252, v251
	v_mov_b16_e64 v251.l, v250.l
	v_dual_mov_b32 v250, v249 :: v_dual_mov_b32 v249, v236
	ds_load_b128 v[233:236], v90
	v_mov_b32_e32 v90, v156
	v_mov_b32_e32 v92, v157
	v_mov_b32_e32 v106, v158
	v_mov_b32_e32 v238, v159
	ds_load_b128 v[227:230], v83 offset:4096
	v_dual_mov_b32 v162, v161 :: v_dual_mov_b32 v161, v155
	v_mov_b32_e32 v155, v153
	v_dual_mov_b32 v153, v152 :: v_dual_mov_b32 v152, v151
	v_dual_mov_b32 v151, v150 :: v_dual_mov_b32 v150, v149
	v_mov_b32_e32 v149, v148
	ds_load_b128 v[244:247], v84 offset:4096
	ds_load_b128 v[156:159], v84
	v_mov_b32_e32 v84, v187
	v_dual_mov_b32 v148, v147 :: v_dual_mov_b32 v147, v146
	v_dual_mov_b32 v146, v145 :: v_dual_mov_b32 v145, v144
	v_dual_mov_b32 v144, v143 :: v_dual_mov_b32 v143, v142
	v_dual_mov_b32 v142, v141 :: v_dual_mov_b32 v141, v140
	v_dual_mov_b32 v140, v139 :: v_dual_mov_b32 v139, v124
	v_dual_mov_b32 v124, v123 :: v_dual_mov_b32 v123, v122
	v_dual_mov_b32 v122, v121 :: v_dual_mov_b32 v121, v120
	v_dual_mov_b32 v120, v119 :: v_dual_mov_b32 v119, v118
	v_dual_mov_b32 v118, v117 :: v_dual_mov_b32 v117, v115
	v_dual_mov_b32 v115, v114 :: v_dual_mov_b32 v114, v113
	v_dual_mov_b32 v113, v112 :: v_dual_mov_b32 v112, v111
	v_dual_mov_b32 v111, v110 :: v_dual_mov_b32 v110, v109
	v_mov_b32_e32 v109, v108
	v_mov_b16_e64 v108.l, v137.l
	v_mov_b32_e32 v137, v102
	v_mov_b16_e64 v102.l, v136.l
	v_mov_b16_e64 v136.l, v134.l
	v_mov_b16_e64 v134.l, v131.l
	v_dual_mov_b32 v131, v82 :: v_dual_mov_b32 v82, v81
	v_mov_b32_e32 v81, v79
	v_dual_mov_b32 v79, v78 :: v_dual_mov_b32 v78, v76
	v_mov_b32_e32 v76, v75
	v_mov_b32_e32 v75, v135
	v_mov_b32_e32 v135, v133
	v_dual_mov_b32 v133, v70 :: v_dual_mov_b32 v70, v69
	v_dual_mov_b32 v69, v66 :: v_dual_mov_b32 v66, v65
	v_mov_b32_e32 v185, v87
	v_dual_mov_b32 v65, v116 :: v_dual_mov_b32 v116, v107
	v_mov_b32_e32 v87, v217
	v_mov_b16_e32 v107.l, v99.l
	v_mov_b32_e32 v99, v240
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v240, v215 :: v_dual_mov_b32 v215, v189
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[186:189], v83
	v_mov_b16_e64 v2.l, v184.l
	v_mov_b32_e32 v184, v218
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v224, s11 :: v_dual_mov_b32 v219, s6
	v_dual_mov_b32 v223, s10 :: v_dual_mov_b32 v222, s9
	v_mov_b32_e32 v217, s4
	v_dual_mov_b32 v221, s8 :: v_dual_mov_b32 v220, s7
	v_dual_mov_b32 v83, v209 :: v_dual_mov_b32 v218, s5
	v_mov_b32_e32 v216, v183
	v_mov_b16_e64 v183.l, v138.l
	v_mov_b32_e32 v138, v237
	v_mov_b32_e32 v237, v193
	v_dual_mov_b32 v193, v104 :: v_dual_mov_b32 v104, v177
	v_mov_b16_e64 v177.l, v192.l
	v_dual_mov_b32 v192, v191 :: v_dual_mov_b32 v191, v105
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[199:206], v[186:189], v[17:20], v[217:224] neg_lo:[1,1,0]
	v_mov_b32_e32 v105, v174
	v_mov_b32_e32 v174, v210
	v_mov_b32_e32 v226, v160
	v_mov_b32_e32 v160, v211
	v_dual_mov_b32 v232, v231 :: v_dual_mov_b32 v231, v176
	v_mov_b32_e32 v176, v212
	v_wmma_i32_16x16x16_iu8 v[207:214], v[227:230], v[17:20], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[156:159], v[21:24], v[199:206] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[244:247], v[21:24], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[186:189], v[13:16], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[233:236], v[25:28], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[227:230], v[13:16], v[217:224] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[179:182], v[25:28], v[207:214] neg_lo:[1,1,0]
	scratch_load_b128 v[25:28], off, off offset:236 ; 16-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[156:159], v[9:12], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[127:130], v[29:32], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[244:247], v[9:12], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[95:98], v[29:32], v[207:214] neg_lo:[1,1,0]
	v_mov_b32_e32 v189, v215
	v_wmma_i32_16x16x16_iu8 v[17:24], v[233:236], v[5:8], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v215, v240
	v_wmma_i32_16x16x16_iu8 v[217:224], v[179:182], v[5:8], v[217:224] neg_lo:[1,1,0]
	v_mov_b32_e32 v240, v99
	v_mov_b16_e32 v99.l, v107.l
	v_dual_mov_b32 v107, v116 :: v_dual_mov_b32 v116, v65
	v_dual_mov_b32 v65, v66 :: v_dual_mov_b32 v66, v69
	v_dual_mov_b32 v69, v70 :: v_dual_mov_b32 v70, v133
	v_mov_b32_e32 v133, v135
	v_mov_b32_e32 v135, v75
	v_dual_mov_b32 v75, v76 :: v_dual_mov_b32 v76, v78
	v_dual_mov_b32 v78, v79 :: v_dual_mov_b32 v79, v81
	v_dual_mov_b32 v81, v82 :: v_dual_mov_b32 v82, v131
	v_mov_b16_e64 v131.l, v134.l
	v_mov_b16_e64 v134.l, v136.l
	v_mov_b16_e64 v136.l, v102.l
	v_mov_b32_e32 v102, v137
	v_mov_b16_e64 v137.l, v108.l
	v_dual_mov_b32 v108, v109 :: v_dual_mov_b32 v109, v110
	v_dual_mov_b32 v110, v111 :: v_dual_mov_b32 v111, v112
	v_dual_mov_b32 v112, v113 :: v_dual_mov_b32 v113, v114
	v_dual_mov_b32 v114, v115 :: v_dual_mov_b32 v115, v117
	v_dual_mov_b32 v117, v118 :: v_dual_mov_b32 v118, v119
	v_dual_mov_b32 v119, v120 :: v_dual_mov_b32 v120, v121
	v_dual_mov_b32 v121, v122 :: v_dual_mov_b32 v122, v123
	v_dual_mov_b32 v123, v124 :: v_dual_mov_b32 v124, v139
	v_dual_mov_b32 v139, v140 :: v_dual_mov_b32 v140, v141
	v_dual_mov_b32 v141, v142 :: v_dual_mov_b32 v142, v143
	v_dual_mov_b32 v143, v144 :: v_dual_mov_b32 v144, v145
	v_dual_mov_b32 v145, v146 :: v_dual_mov_b32 v146, v147
	v_dual_mov_b32 v147, v148 :: v_dual_mov_b32 v148, v149
	v_dual_mov_b32 v149, v150 :: v_dual_mov_b32 v150, v151
	v_dual_mov_b32 v151, v152 :: v_dual_mov_b32 v152, v153
	v_mov_b32_e32 v153, v155
	v_mov_b32_e32 v155, v161
	v_dual_mov_b32 v161, v162 :: v_dual_mov_b32 v162, v1
	v_mov_b32_e32 v187, v84
	v_dual_mov_b32 v159, v238 :: v_dual_mov_b32 v236, v249
	v_dual_mov_b32 v158, v106 :: v_dual_mov_b32 v157, v92
	v_mov_b32_e32 v156, v90
	v_mov_b32_e32 v249, v250
	v_mov_b16_e64 v250.l, v251.l
	v_mov_b32_e32 v251, v252
	v_mov_b16_e64 v252.l, v253.l
	v_mov_b16_e64 v253.l, v254.l
	v_mov_b16_e64 v254.l, v255.l
	v_mov_b32_e32 v255, v88
	v_mov_b16_e32 v88.l, v0.l
	v_mov_b32_e32 v0, v100
	v_mov_b32_e32 v100, v126
	v_dual_mov_b32 v182, v154 :: v_dual_mov_b32 v179, v241
	v_mov_b32_e32 v154, v225
	v_mov_b32_e32 v180, v248
	v_cvt_f32_i32_e32 v106, v199
	v_cvt_f32_i32_e32 v246, v203
	v_cvt_f32_i32_e32 v247, v204
	v_cvt_f32_i32_e32 v238, v205
	v_cvt_f32_i32_e32 v241, v206
	v_cvt_f32_i32_e32 v227, v207
	v_cvt_f32_i32_e32 v228, v208
	v_cvt_f32_i32_e32 v205, v210
	v_mov_b32_e32 v210, v174
	v_dual_mov_b32 v174, v105 :: v_dual_mov_b32 v105, v191
	v_mov_b32_e32 v191, v192
	v_mov_b16_e64 v192.l, v177.l
	v_dual_mov_b32 v177, v104 :: v_dual_mov_b32 v104, v193
	v_mov_b32_e32 v193, v237
	v_mov_b32_e32 v237, v138
	v_mov_b16_e64 v138.l, v183.l
	v_mov_b32_e32 v183, v216
	v_cvt_f32_i32_e32 v181, v213
	v_cvt_f32_i32_e32 v186, v214
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[127:130], v[25:28], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[95:98], v[25:28], v[217:224] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v200
	v_cvt_f32_i32_e32 v98, v201
	v_cvt_f32_i32_e32 v95, v202
	v_cvt_f32_i32_e32 v202, v209
	v_mov_b32_e32 v209, v83
	v_cvt_f32_i32_e32 v200, v211
	v_dual_mov_b32 v211, v160 :: v_dual_mov_b32 v160, v226
	v_cvt_f32_i32_e32 v201, v212
	v_mov_b32_e32 v212, v176
	v_dual_mov_b32 v176, v231 :: v_dual_mov_b32 v231, v232
	v_cvt_f32_i32_e32 v130, v17
	v_cvt_f32_i32_e32 v127, v18
	v_cvt_f32_i32_e32 v128, v19
	v_cvt_f32_i32_e32 v129, v20
	v_cvt_f32_i32_e32 v248, v21
	v_cvt_f32_i32_e32 v96, v22
	v_cvt_f32_i32_e32 v244, v23
	v_cvt_f32_i32_e32 v245, v24
	v_cvt_f32_i32_e32 v233, v217
	v_mov_b32_e32 v217, v87
	v_mov_b32_e32 v87, v185
	v_cvt_f32_i32_e32 v234, v218
	v_mov_b32_e32 v218, v184
	v_mov_b16_e64 v184.l, v2.l
	v_cvt_f32_i32_e32 v213, v219
	v_cvt_f32_i32_e32 v214, v220
	v_cvt_f32_i32_e32 v204, v221
	v_cvt_f32_i32_e32 v203, v222
	v_cvt_f32_i32_e32 v188, v223
	v_cvt_f32_i32_e32 v199, v224
.LBB0_16:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:232
	scratch_load_b32 v8, off, off offset:228
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v1.h, v132.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v4.h, v4.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v11.h, v131.l
	v_mov_b16_e64 v12.h, v190.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v4.l, v1.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v11.l, v1.l
	v_mov_b16_e32 v12.l, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v3.h, v3.l
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v1, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v1, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v20.h, v134.l
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v1, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v82, v197
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v22.h, v137.l
	v_mov_b16_e32 v22.l, v1.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s35, 31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v102, v196
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s35, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s10, s0, 8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v15, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s10, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s0, s3, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v6, v6, v7, v195
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v195, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v7, v8, v194
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v197, v5, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v5, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v196, v2, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.h, v88.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v194, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v2, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v3, v5, v163
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v2, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v4, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v3, v133, v178
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v2, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v178, v21, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v3, v4, v173
	scratch_load_b32 v4, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v2, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v12, v3, v4, v175
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v3.h, v136.l
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v175, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v1, v3
	v_mul_f32_e32 v3, v2, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v13, v4, v70, v171
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v4.h, v184.l
	v_mov_b16_e32 v4.l, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v3, v0, v167
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v1, v4
	v_mul_f32_e32 v3, v2, v4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v161, s10, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v167, v18, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v11, v69, v172
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v11.h, v99.l
	v_mov_b16_e32 v11.l, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v3, v100, v168
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v172, v16, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v1, v11
	v_mul_f32_e32 v3, v2, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v14, v15, v169
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v14.h, v125.l
	v_mov_b16_e32 v14.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v3, v87, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v125, v171, v13, s2
	v_cndmask_b32_e64 v17, v169, v17, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v2, v14
	v_mul_f32_e32 v15, v1, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v165, v26, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v3, v103, v166
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v1, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v15, v255, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v14, v3, v116, v101
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v1, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v173, v6, s2
	v_cndmask_b32_e64 v13, v170, v19, s2
	v_cndmask_b32_e64 v19, v168, v25, s2
	v_cndmask_b32_e64 v25, v166, v27, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v28, v3, v107, v164
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v162, s10, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s10, s10, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v11, v155, s10, 1
	v_add_lshl_u32 v15, v153, s10, 1
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_clause 0x1
	buffer_load_u16 v29, v3, s[12:15], 0 offen
	buffer_load_u16 v30, v4, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v151, s10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v11, s0
	v_add_lshl_u32 v11, v152, s10, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s11, s10, s26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v23, s11, v149, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	s_clause 0x3
	buffer_load_u16 v32, v3, s[28:31], 0 offen
	buffer_load_u16 v82, v4, s[28:31], 0 offen
	buffer_load_u16 v84, v11, s[28:31], 0 offen
	buffer_load_u16 v88, v15, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v3, s11, v150, 1
	v_add_lshl_u32 v4, s11, v146, 1
	v_add_lshl_u32 v11, s11, v147, 1
	v_add_lshl_u32 v15, s11, v148, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	s_clause 0x4
	buffer_load_u16 v90, v3, s[28:31], 0 offen
	buffer_load_u16 v92, v4, s[28:31], 0 offen
	buffer_load_u16 v99, v11, s[28:31], 0 offen
	buffer_load_u16 v100, v15, s[28:31], 0 offen
	buffer_load_u16 v102, v23, s[28:31], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v23, v139, s10, 1
	v_add_lshl_u32 v24, v140, s10, 1
	v_add_lshl_u32 v31, v141, s10, 1
	v_add_lshl_u32 v69, v142, s10, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v70, s11, v143, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_cndmask_b32_e64 v103, 0x80000000, v69, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v4, s27, v104
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v104, 0x80000000, v70, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x3
	buffer_load_u16 v70, v23, s[28:31], 0 offen
	buffer_load_u16 v69, v24, s[28:31], 0 offen
	buffer_load_u16 v24, v31, s[28:31], 0 offen
	buffer_load_u16 v23, v103, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v83, s11, v144, 1
	v_add_lshl_u32 v87, s11, v145, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v163, v5, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v2, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v164, v28, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v107, 0x80000000, v83, s0
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	s_clause 0x2
	buffer_load_u16 v83, v104, s[28:31], 0 offen
	buffer_load_u16 v31, v107, s[28:31], 0 offen
	buffer_load_u16 v87, v87, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v1.l
	v_mov_b16_e64 v145.h, v1.l
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s12, s33, s27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.h, v1.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s12, s12, s26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.h, v1.l
	v_mov_b16_e64 v147.h, v1.l
	v_mov_b16_e64 v149.h, v1.l
	v_mov_b16_e64 v151.h, v1.l
	v_mov_b16_e64 v153.h, v1.l
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v5, 16, v29
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v6, 16, v30
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v28, 16, v32
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v30, 16, v84
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v32, 16, v88
	v_lshlrev_b32_e32 v29, 16, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v104, v6, v30
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v84, 16, v90
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v88, 16, v92
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v90, 16, v99
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v92, 16, v100
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v82, 16, v102
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v6, v28
	v_mul_f32_e32 v102, v6, v32
	v_dual_mul_f32 v99, v6, v29 :: v_dual_mul_f32 v32, v5, v32
	v_dual_mul_f32 v29, v5, v29 :: v_dual_mul_f32 v126, v6, v84
	v_mul_f32_e32 v28, v5, v28
	v_dual_mul_f32 v30, v5, v30 :: v_dual_mul_f32 v107, v6, v88
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v2, v20 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_mul_f32 v88, v5, v88 :: v_dual_mul_f32 v133, v6, v82
	v_mul_f32_e32 v131, v6, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v100, v76, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v249, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v135, v116
	v_fma_f32 v30, v30, v65, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v126, v130, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v75, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v93, v20, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v93, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v102, v81, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v97, v88, v97, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v10, v76, s3
	v_cndmask_b32_e64 v76, v116, v28, s3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v15, 56, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v8, v65, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v132, v6, v90
	v_mul_f32_e32 v90, v5, v90
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v102, v131, v129, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v104, v79, v17
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v92, v5, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v99, v78, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v98, v90, v98, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v16, v102, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v84, v5, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v66, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v81, v107, v127, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v17, v79, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v90
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v99, v84, v106, v103
	v_fma_f32 v104, v92, v95, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v7, v81, s3
	v_cndmask_b32_e64 v95, v9, v78, s3
	v_cndmask_b32_e64 v78, v18, v98, s3
	v_cndmask_b32_e64 v92, v103, v99, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v106, v133, v96, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v107
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v21, v97, s3
	v_cndmask_b32_e64 v79, v19, v104, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v92
	v_mul_f32_e32 v7, 0xbfb8aa3b, v116
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v100, v132, v128, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v79
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	v_cndmask_b32_e64 v17, 0, 0x42800000, s6
	v_mul_f32_e32 v10, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v9, 0, 0x42800000, s5
	v_mul_f32_e32 v18, 0xbfb8aa3b, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v125, v100, s3
	v_cndmask_b32_e64 v65, v27, v106, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v19
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v90
	v_exp_f32_e32 v9, v9
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v10
	v_dual_mul_f32 v16, 0xbfb8aa3b, v81 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v19, 0, 0x42800000, s8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v13, v75, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v16
	v_exp_f32_e32 v7, v7
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v9, v9, v27
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v107
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v25, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, s7
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v99, 1.0, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v8
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_exp_f32_e32 v19, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v12, v29, s3
	v_cndmask_b32_e64 v12, v26, v30, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v18
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s8
	v_ldexp_f32 v7, v7, v25
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v81
	v_ldexp_f32 v8, v8, v21
	v_cndmask_b32_e64 v18, 0, 0x42800000, s9
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v19, v19, v30
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v97, 1.0, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v98, 1.0, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v78 :: v_dual_add_f32 v125, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v7, null, v98, v98, v107
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v28
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_ldexp_f32 v16, v16, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v125, v125, v79
	v_rcp_f32_e32 v29, v7
	v_div_scale_f32 v9, null, v97, v97, v116
	v_rcp_f32_e32 v131, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s4
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, s7, v92, v99, v92
	v_fma_f32 v103, -v7, v29, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v26
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v251, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v29, v103, v29 :: v_dual_lshlrev_b32 v24, 16, v24
	v_fma_f32 v103, -v28, v131, 1.0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v104, 1.0, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v32
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v100, 1.0, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, s1, v79, v125, v79
	v_fmac_f32_e32 v131, v103, v131
	v_div_scale_f32 v21, null, v104, v104, v90
	v_fma_f32 v133, -v9, v30, 1.0
	v_div_scale_f32 v10, s9, v116, v97, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v129, v21
	v_dual_mul_f32 v141, v32, v131 :: v_dual_fmac_f32 v30, v133, v30
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v102, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v16, null, v100, v100, v96
	v_div_scale_f32 v8, vcc_lo, v107, v98, v107
	v_div_scale_f32 v25, s6, v90, v104, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v136, -v21, v129, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v106, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v99, v99, v92
	v_rcp_f32_e32 v127, v16
	v_fmac_f32_e32 v129, v136, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v126, null, v106, v106, v78
	v_rcp_f32_e32 v128, v18
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v94, v22, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v139, v25, v129
	v_rcp_f32_e32 v132, v126
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v3, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v134, -v16, v127, 1.0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v135, -v18, v128, 1.0
	v_fmac_f32_e32 v127, v134, v127
	v_div_scale_f32 v17, s8, v96, v100, v96
	v_fma_f32 v133, -v126, v132, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v128, v135, v128 :: v_dual_mul_f32 v135, v10, v30
	v_div_scale_f32 v26, null, v102, v102, v81
	v_div_scale_f32 v27, s4, v81, v102, v81
	v_fma_f32 v136, -v9, v135, v10
	v_fmac_f32_e32 v132, v133, v132
	v_dual_mul_f32 v133, v17, v127 :: v_dual_mul_f32 v134, v8, v29
	v_rcp_f32_e32 v130, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v135, v136, v30 :: v_dual_mul_f32 v136, v19, v128
	v_fma_f32 v103, -v7, v134, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v134, v103, v29
	v_fma_f32 v137, -v26, v130, 1.0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v103, s11, v121, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v7, -v7, v134, v8
	v_fma_f32 v8, -v9, v135, v10
	v_fma_f32 v9, -v18, v136, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v10, v109, s10, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v109, s11, v123, 1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v136, v9, v128
	v_fma_f32 v9, -v28, v141, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v148, -v18, v136, v19
	v_fmac_f32_e32 v141, v9, v131
	v_div_fmas_f32 v134, v7, v29, v134
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v7, -v16, v133, v17
	v_div_fmas_f32 v135, v8, v30, v135
	v_fma_f32 v8, -v21, v139, v25
	v_fmac_f32_e32 v130, v137, v130
	v_div_scale_f32 v137, s5, v78, v106, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v97, v135, v97, v116
	v_dual_fmac_f32 v139, v8, v129 :: v_dual_mul_f32 v140, v27, v130
	v_fmac_f32_e32 v133, v7, v127
	v_div_fixup_f32 v98, v134, v98, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v88, v88, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v142, v137, v132
	v_fma_f32 v7, -v26, v140, v27
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v108, s10, 1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v146, -v16, v133, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.l, v88.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v16, v110, s10, 1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v140, v7, v130
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v95, v95, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v8, -v126, v142, v137
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v17, v111, s10, 1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v150, -v21, v139, v25
	v_fma_f32 v152, -v26, v140, v27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v18, v112, s10, 1
	v_add_lshl_u32 v19, v113, s10, 1
	v_add_lshl_u32 v21, v114, s10, 1
	v_add_lshl_u32 v25, v115, s10, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v26, s11, v117, 1
	v_add_lshl_u32 v27, s11, v118, 1
	v_add_lshl_u32 v110, s11, v124, 1
	v_add_lshl_u32 v29, s11, v119, 1
	v_add_lshl_u32 v30, s11, v120, 1
	v_add_lshl_u32 v108, s11, v122, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v142, v8, v132
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v8, s12, v15
	v_add3_u32 v7, s12, v15, 64
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v15, 0x80000000, v16, s0
	v_cndmask_b32_e64 v16, 0x80000000, v17, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v111, -v28, v141, v32
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	v_cndmask_b32_e64 v28, 0x80000000, v25, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v32, 0x80000000, v26, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v112, 0x80000000, v29, s0
	v_cndmask_b32_e64 v113, 0x80000000, v30, s0
	v_cndmask_b32_e64 v114, 0x80000000, v103, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v30, v9, s[28:31], 0 offen
	buffer_load_u16 v29, v10, s[28:31], 0 offen
	buffer_load_u16 v26, v15, s[28:31], 0 offen
	buffer_load_u16 v25, v16, s[28:31], 0 offen
	buffer_load_u16 v18, v17, s[28:31], 0 offen
	buffer_load_u16 v17, v19, s[28:31], 0 offen
	buffer_load_u16 v10, v21, s[28:31], 0 offen
	buffer_load_u16 v9, v28, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v103, v27, s[28:31], 0 offen
	buffer_load_u16 v27, v112, s[28:31], 0 offen
	buffer_load_u16 v28, v113, s[28:31], 0 offen
	buffer_load_u16 v19, v114, s[28:31], 0 offen
	buffer_load_u16 v21, v108, s[28:31], 0 offen
	buffer_load_u16 v15, v109, s[28:31], 0 offen
	buffer_load_u16 v16, v110, s[28:31], 0 offen
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v110, v146, v127, v133
	s_mov_b32 vcc_lo, s7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.l, v95.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v107, v148, v128, v136
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v96, v110, v100, v96
	v_div_fmas_f32 v112, v150, v129, v139
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v92, v107, v99, v92
	v_div_fmas_f32 v98, v152, v130, v140
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v90, v112, v104, v90
	v_div_fmas_f32 v97, v111, v131, v141
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v76, v76, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v81, v98, v102, v81
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v75, v75, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v79, v97, v125, v79
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.l, v76.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v84, v84, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v90, 1, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v66, v66, v81 :: v_dual_mul_f32 v13, v13, v79
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v108, -v126, v142, v137
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v79, 1, v143
	v_mov_b16_e32 v11.l, v84.h
	v_cmp_o_f32_e64 s1, v84, v84
	v_mov_b16_e64 v147.l, v13.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v96, v108, v132, v142
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s5, v13, v13
	v_and_b32_e32 v81, 1, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v78, v96, v106, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v151.l, v75.h
	v_add3_u32 v84, v84, v11, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v109, 0xbfb8aa3b, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v88, v88
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v12, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v78, v95, v90, 0x7fff
	v_add3_u32 v81, v88, v81, 0x7fff
	v_and_b32_e32 v88, 1, v151
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v6, v69
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v149.l, v12.h
	v_cndmask_b16 v11.h, 0x7fff, v78.h, vcc_lo
	v_and_b32_e32 v78, 1, v147
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_and_b32_e32 v90, 1, v149
	v_cndmask_b16 v11.l, 0x7fff, v81.h, s0
	v_add3_u32 v13, v13, v78, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v5, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v106, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v78, v12, v90, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v84.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v13.l, 0x7fff, v78.h, s6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v78, 16, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v83, v6, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v76, v76
	v_add3_u32 v76, v76, v79, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v81, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v78, v5, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v76.h, s4
	v_add3_u32 v76, v75, v88, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v101, v14, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v81, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v78, v246, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v101, v6, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.h, 0x7fff, v76.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v83, v248, v75
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v83.l, v1.l
	v_mov_b16_e64 v83.h, v253.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v82, v5, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v78, s3
	v_cndmask_b32_e64 v75, v75, v76, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v5, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v75
	v_ldexp_f32 v76, v81, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v84, v1, v83
	v_mul_f32_e32 v83, v2, v83
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v82, v82, v247, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v82, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v153.l, v66.h
	v_cmp_o_f32_e64 s0, v66, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v88, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v78, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v92, 1, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v88
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v79, v66, v92, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v66.l, v1.l
	v_mov_b16_e64 v66.h, v254.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v88, 0, 0x42800000, s1
	v_mul_f32_e32 v92, 0xbfb8aa3b, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.l, 0x7fff, v79.h, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v79.l, v1.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v90, v1, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v2, v66
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v79.h, v252.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(18)
	v_fma_f32 v90, v90, v93, v89
	scratch_load_b32 v93, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v88, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v90, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v88, 1.0, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v95, null, v88, v88, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v98, v95
	v_fma_f32 v102, -v95, v98, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v98, v102, v98
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v102, s4, v22, v88, v22
	v_div_scale_f32 v82, null, v76, v76, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v81, v82
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v66, v66, v106, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v85, v66, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v84, v84, v93, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v91, v84, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v78, v78, v93
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v91, -v82, v81, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v93, vcc_lo, v65, v76, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v78, 1.0, v78 :: v_dual_fmac_f32 v81, v91, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v92, null, v78, v78, v75
	v_rcp_f32_e32 v94, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v90, v91, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v91, v93, v81 :: v_dual_add_f32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v82, v91, v93
	v_fma_f32 v97, -v92, v94, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v99, null, v90, v90, v20
	v_dual_fmac_f32 v91, v96, v81 :: v_dual_fmac_f32 v94, v97, v94
	v_div_scale_f32 v96, s1, v75, v78, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v97, v99
	v_fma_f32 v82, -v82, v91, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v93, v96, v94
	v_div_fmas_f32 v81, v82, v81, v91
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v92, v93, v96
	v_fma_f32 v91, -v99, v97, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v82, v94
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v82, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v91, s5, v20, v90, v20
	v_fma_f32 v92, -v92, v93, v96
	v_mul_f32_e32 v104, v91, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v92, v94, v93
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v96, -v99, v104, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v96, v97
	v_fma_f32 v91, -v99, v104, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v82, v83, v82, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v83, v102, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v86, v82, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v86, -v95, v83, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v69, v239, v82
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v83, v86, v98
	v_div_fixup_f32 v65, v81, v76, v65
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v81.l, v1.l
	v_mov_b16_e64 v81.h, v250.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v82, v69, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v86, -v95, v83, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v83, v86, v98, v83
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v86, v91, v97, v104
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v100, v218, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v22, v83, v88, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v83, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v86, v90, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v90, v6, v23
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v69, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v84, v91, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v6, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v70, v240, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v5, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v5, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v66, v70, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v101, v217, v89
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v66, v66, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v89, v70, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v70, v85, v78, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v22.h
	v_mov_b16_e32 v75.h, v1.l
	v_mov_b16_e32 v78.l, v66.h
	v_mov_b16_e32 v78.h, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v70, v20, v70
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v1, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v76, 1, v78
	v_cmp_o_f32_e64 s0, v70, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v75, v22, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v69, v65
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v65, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v76, v66, v76, 0x7fff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v69, 16, v87
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v22.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v6, v69
	v_mul_f32_e32 v69, v5, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v20, v65, v80
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v75.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_mov_b16_e32 v75.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v80, v65, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v80.l, v70.h
	v_cndmask_b16 v20.l, 0x7fff, v76.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v76, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v80.h, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v78, v245, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v75, 1, v75
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v80
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v80, v1, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v65, v78, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v75, v22, v75, 0x7fff
	v_add3_u32 v66, v70, v66, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v70.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v75.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v22.l, 0x7fff, v66.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v78
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v6, v31
	v_mul_f32_e32 v31, v5, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v76, v80, v76, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v77, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v75, v78, v244, v76
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v2, v79
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v79, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v76, v75, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v78, v198, v74
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v78, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v77, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v74, v76, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v69, v69, v241, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v77, v77, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v74, v69, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v77, 1.0, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v77, v77, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v69
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v70.h, v79.l
	v_mov_b16_e32 v79.l, v1.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v79.h, v78.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v78, v2, v81 :: v_dual_mul_f32 v81, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v78, v231, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v1, v70
	v_mul_f32_e32 v70, v2, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v81, v83, v71
	scratch_load_b32 v83, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v1, v79
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v238, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v81, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v2, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v73, v31, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v73, v78
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v78, v74
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v70, v177, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v70, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v236, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v67, v24, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v91, v215, v71
	s_waitcnt vmcnt(0)
	v_fma_f32 v76, v76, v83, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v72, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v73, v73, v83
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v76, v80
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v80, -v74, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v73, 1.0, v73 :: v_dual_fmac_f32 v82, 0xbfb8aa3b, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v78, v80, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v80, v82
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v82, null, v73, v73, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v76, v76, v81
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v83, vcc_lo, v65, v77, v65
	v_rcp_f32_e32 v84, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v80, v80, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v81, v83, v78
	v_div_scale_f32 v85, null, v76, v76, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v86, -v74, v81, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v82, v84, 1.0
	v_rcp_f32_e32 v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v89, null, v80, v80, v31
	v_dual_fmac_f32 v81, v86, v78 :: v_dual_fmac_f32 v84, v87, v84
	v_div_scale_f32 v86, s1, v75, v73, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v89
	v_fma_f32 v74, -v74, v81, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v85, v88, 1.0
	v_mul_f32_e32 v83, v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v78, v81
	v_fmac_f32_e32 v88, v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v82, v83, v86
	v_div_scale_f32 v92, s4, v69, v76, v69
	v_fma_f32 v81, -v89, v87, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v78, v84
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v79, v193, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v79, v92, v88
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s5, v31, v80, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v68, v78, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v78, -v85, v79, v92
	v_fma_f32 v82, -v82, v83, v86
	v_mul_f32_e32 v93, v81, v87
	v_div_fixup_f32 v65, v74, v77, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v242, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v79, v78, v88
	v_div_fmas_f32 v70, v82, v84, v83
	v_fma_f32 v86, -v89, v93, v81
	s_mov_b32 vcc_lo, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v68, v23, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v78, -v85, v79, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v74, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v93, v86, v87
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v85, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v81, -v89, v93, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v68, v78, v76, v69
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v69.h, v1.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v79, v81, v87, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v90, v243, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.h, v1.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v79, v80, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v72, v81, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v72.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v24, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v71, v67, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v71, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v67, v70, v73, v75
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v73, off, off offset:168 ; 4-byte Folded Reload
	v_mov_b16_e32 v70.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v69.l, v24.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v31, v31, v67 :: v_dual_and_b32 v68, 1, v68
	v_mul_f32_e32 v65, v66, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v71.h, v1.l
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v68, v23, v68, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v6, v29
	v_mul_f32_e32 v29, v5, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v65.h
	v_add3_u32 v69, v24, v69, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v68.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_mov_b16_e32 v68.h, v1.l
	v_cmp_o_f32_e64 s0, v31, v31
	v_cndmask_b16 v23.l, 0x7fff, v69.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v70.h, v71.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v71.l, v31.h
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v72.h, v73.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v67, v1, v70 :: v_dual_and_b32 v24, 1, v71
	v_mul_f32_e32 v71, v1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v67, v183, v64
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v67, 16, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v66, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v66, v6, v67
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v66, v234, v64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v66, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v68
	v_add3_u32 v68, v31, v24, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v24, v71, v237, v63
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v31.l, v1.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v65, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v63, v24, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.l, 0x7fff, v68.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v6, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, s1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v69, v233, v63
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v2, v70
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v70, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v63, v66, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v69, v191, v62
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v69, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v65, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v66, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v66, v5, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v66, v228, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v65, v65, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v66, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v62
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v31.h, v70.l
	v_mov_b16_e32 v70.l, v1.l
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v70.h, v69.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v69, v2, v72 :: v_dual_mul_f32 v72, 0xbfb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v69, v105, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v1, v31
	v_mul_f32_e32 v31, v2, v31
	v_mul_f32_e32 v82, v6, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v67, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v1, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v72, v74, v59
	scratch_load_b32 v74, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v2, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v31, v85, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v72, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v30, v5, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v57, v31, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v176, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v31, v30, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v74, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v60, v67, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v67, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v72
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v76, null, v67, v67, v62
	v_rcp_f32_e32 v79, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v76, v79, 1.0
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v32, v5, v32 :: v_dual_fmac_f32 v79, v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v227, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v83, s4, v62, v67, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v61, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v61, v69
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v61, v61, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v71, -v66, v69, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v69, v71, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, vcc_lo, v64, v65, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v71, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, null, v61, v61, v63
	v_rcp_f32_e32 v75, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v71, v71, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v72, v74, v69 :: v_dual_add_f32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v77, -v66, v72, v74
	v_fma_f32 v78, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v80, null, v71, v71, v32
	v_dual_fmac_f32 v72, v77, v69 :: v_dual_fmac_f32 v75, v78, v75
	v_div_scale_f32 v77, s1, v63, v61, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v80
	v_fma_f32 v66, -v66, v72, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v74, v77, v75
	v_div_fmas_f32 v66, v66, v69, v72
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v69, -v73, v74, v77
	v_fma_f32 v72, -v80, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v69, v75
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v69, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v78, v72, v78
	v_div_scale_f32 v72, s5, v32, v71, v32
	v_fma_f32 v73, -v73, v74, v77
	v_mul_f32_e32 v84, v72, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v57, v73, v75, v74
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v77, -v80, v84, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v77, v78
	v_fma_f32 v72, -v80, v84, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v70, v69, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v70, v83, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v58, v69, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v76, v70, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v160, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v70, v69, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v58, v29, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v76, v70, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v69, v79, v70
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v70, v72, v78, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v81, v212, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v58, v69, v67, v62
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v67, 16, v26
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v62.l, v1.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v70, v71, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v82, v211, v59
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v29, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v60, v72, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v60.l, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v59, v32, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v57, v61, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.l, v29.h
	v_mov_b16_e32 v57.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v60.h, v138.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v32
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v61, v66, v65, v64
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v57, 1, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v70, 16, v25
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v1, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v30.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v58, v58, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v57, v29, v57, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v29, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.h, v1.l
	v_mov_b16_e32 v61.l, v31.h
	v_mov_b16_e32 v57.l, v58.h
	v_mov_b16_e32 v61.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v62.h, v192.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v59, 1, v59
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v63.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v31, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v59, v30, v59, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v32, v29, v56
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v32, 16, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.h, 0x7fff, v57.h, vcc_lo
	v_mov_b16_e32 v57.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v56, v29, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v56, v6, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v61
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v61, v1, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.l, 0x7fff, v59.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v56, v56, v214, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v31, v30, 0x7fff
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v56, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v56, 1, v57
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v57, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v56, v58, v56, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v59
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, v61, v57, v55
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v61, 16, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.h, 0x7fff, v56.h, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v56, v2, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v57, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v58, v6, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v58, v213, v55
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v58, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v55, v31, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v55, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	v_mul_f32_e32 v59, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v59, v5, v61
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v63.h, v58.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v56, v55, v54
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v56, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v55, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v55, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v60.h, v56.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v56, v2, v62 :: v_dual_mul_f32 v61, v1, v60
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v56, v55, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v56, v57, v58
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v58, v32, v205, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v60, v2, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v53, v55, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v54, v58, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v1, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v54, v59, v202, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v59, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v62, null, v32, v32, v29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v55, v54, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v55, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v64, v62
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v2, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v56, 0, 0x42800000, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v63, v154, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v63, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v5, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v56, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v58, v58, v59, v51
	scratch_load_b32 v59, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v58, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v56, v56, v58
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v56, v56, v53
	v_rcp_f32_e32 v71, v69
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v59, v61, v59, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v59, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v55, v55, v61
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v62, v64, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, vcc_lo, v29, v32, v29
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v55, 1.0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v64, v59, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v61, null, v55, v55, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v68, v65, v64
	v_div_scale_f32 v73, s4, v31, v55, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v66, v61
	v_fma_f32 v25, -v62, v68, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v57, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v68, v25, v64
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v6, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v61, v66, 1.0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v62, v68, v65
	v_fma_f32 v65, -v69, v71, 1.0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v58, v209, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v66, v57, v66
	v_div_scale_f32 v72, null, v26, v26, v54
	v_div_fmas_f32 v25, v25, v64, v68
	v_fmac_f32_e32 v71, v65, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v73, v66
	v_rcp_f32_e32 v59, v72
	v_div_scale_f32 v65, s5, v53, v56, v53
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v64, -v61, v62, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v6, v67
	v_mul_f32_e32 v67, v5, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v25, v32, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v62, v64, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v64, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v72, v59, 1.0
	v_fma_f32 v61, -v61, v62, v73
	v_fmac_f32_e32 v59, v68, v59
	v_div_scale_f32 v68, s1, v54, v26, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v68, v59
	v_fma_f32 v73, -v72, v74, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v73, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v60, v60, v64, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v64, v65, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v50, v60, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v69, v64, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v63, v210, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v64, v60, v71
	v_div_fmas_f32 v60, v61, v66, v62
	s_mov_b32 vcc_lo, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v67, v174, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v50, v63, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v69, v64, v65
	v_fma_f32 v65, -v72, v74, v68
	v_div_fixup_f32 v31, v60, v55, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v61, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v60, v6, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v62, v71, v64
	s_mov_b32 vcc_lo, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v5, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v59, v65, v59, v74
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v6, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v53, v62, v56, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v5, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v64, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v59, v26, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v54, v57, v189, v51
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v50, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v52, v58, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.h, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v49, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v51, v54, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, v30.h
	v_mov_b16_e32 v51.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v54, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v26.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v49, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_and_b32_e32 v51, 1, v51
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v53.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v31, 1, v52
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v52, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v50, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v49, v30, v51, 0x7fff
	v_mov_b16_e32 v50.l, v29.h
	v_add3_u32 v30, v26, v31, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v31, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v49.l, v25.h
	v_mov_b16_e32 v50.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v51.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v53.h, v54.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v1, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v32, v31, v48
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v32, 16, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v48, v31, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v6, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v50
	v_and_b32_e32 v49, 1, v49
	v_cndmask_b16 v21.l, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v48, v48, v203, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v29, v26, 0x7fff
	v_add3_u32 v30, v25, v49, 0x7fff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v25, 16, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v48, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v48, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v51.h, v52.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v19.h, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v49, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v50, v1, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v49
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v49, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v48, v50, v48, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v47, v48, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v6, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v5, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v30, v48, v204, v29
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v2, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v53, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v30, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v30, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v26.h, v49.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v49.l, v1.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v50
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v30, v48, v30, v46
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v48, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v46, v30, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v46, off, off offset:56 ; 4-byte Folded Reload
	v_fma_f32 v32, v32, v201, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v32, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, null, v47, v47, v31
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v30
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v49.h, v48.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v48, v2, v51 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v29
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v48, v46, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v1, v26
	v_mul_f32_e32 v26, v2, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v46, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v51, v53, v43
	scratch_load_b32 v53, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v1, v49
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v200, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v51, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v2, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v45, v25, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v32
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v64, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v41, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v179, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v26, v18, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v53, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v46, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v53
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v46, v50
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v32, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v50, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v50, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v45, v45, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v51
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, vcc_lo, v31, v47, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v52
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v50, v50, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v53, v48
	v_div_scale_f32 v55, null, v46, v46, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v32, v51, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v52, v54, 1.0
	v_rcp_f32_e32 v58, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v59, null, v50, v50, v25
	v_dual_fmac_f32 v51, v56, v48 :: v_dual_fmac_f32 v54, v57, v54
	v_div_scale_f32 v56, s0, v29, v45, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v57, v59
	v_fma_f32 v32, -v32, v51, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v55, v58, 1.0
	v_mul_f32_e32 v53, v56, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v48, v51
	v_fmac_f32_e32 v58, v62, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v48, -v52, v53, v56
	v_div_scale_f32 v62, s1, v30, v46, v30
	v_fma_f32 v51, -v59, v57, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v53, v48, v54
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v48, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v32, v47, v31
	v_fmac_f32_e32 v57, v51, v57
	v_div_scale_f32 v51, s4, v25, v50, v25
	v_fma_f32 v52, -v52, v53, v56
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v3, s27, v3
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v63, v51, v57
	v_div_fmas_f32 v41, v52, v54, v53
	s_mov_b32 vcc_lo, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v54, off, off          ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v59, v63, v51
	v_div_fixup_f32 v29, v41, v45, v29
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v45, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v63, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v59, v63, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v48, v49, v48, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v49, v62, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v48, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v55, v49, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v17, v180, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v48, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v42, v17, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v55, v49, v62
	v_div_fmas_f32 v48, v48, v58, v49
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v42, v51, v57, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v48, v46, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v60, v187, v44
	v_fma_f32 v48, v61, v182, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v42, v50, v25
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v42, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v44, v46, s3
	v_cndmask_b32_e64 v30, v43, v48, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.h, v1.l
	v_mov_b16_e32 v25.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v26, v31
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v31, v6, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v43, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v30, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v5, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v6, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v17, v25, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v42.h, v1.l
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v41.h, v42.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v1, v41
	v_dual_mul_f32 v41, v2, v41 :: v_dual_and_b32 v30, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v18, v30, 0x7fff
	v_mov_b16_e32 v18.l, v29.h
	v_mov_b16_e32 v18.h, v1.l
	v_cndmask_b16 v25.l, 0x7fff, v30.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v32, v17, v40
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v32.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v40, v17, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v40, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v29, v18, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v199, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v31, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v31, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v40.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v32.h, v40.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v26.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v42, v1, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v17
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v2, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v42, v31, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v26, v30, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v40, v6, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v39, v31, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v42.l, v1.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v15, v5, v15 :: v_dual_mul_f32 v6, v6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v40, v40, v188, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v5, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v5, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v40, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v40, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v42.h, v43.l
	scratch_load_b32 v43, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	v_mul_f32_e32 v44, 0xbfb8aa3b, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v40, v41, v40, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v1, v42
	v_mul_f32_e32 v42, v2, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v40, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v40, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v26.h, v43.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v44, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v186, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v39, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v38, v16, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v54, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v33, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v39, v39, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v156, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v5, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v32, v32, v40, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v41, v44, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v37, v32, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v1, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v26, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v41, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v15, v181, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v45, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.h, 0x7fff, v30.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v158, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v32, v15, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v40
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v37, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v43
	v_mul_f32_e32 v44, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v36, v6, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v159, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_ldexp_f32 v32, v32, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v38, v40, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v37, v37, v43
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v41, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, vcc_lo, v17, v39, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v15 :: v_dual_add_f32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v41, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v32, v32, v31
	v_div_scale_f32 v47, null, v37, v37, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v46, v44
	v_rcp_f32_e32 v51, v47
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v41, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v43, v45, v40
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v38, v43, v45
	v_fma_f32 v50, -v44, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v47, v51, 1.0
	v_div_scale_f32 v52, null, v41, v41, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v49, v40 :: v_dual_fmac_f32 v46, v50, v46
	v_div_scale_f32 v49, s1, v31, v32, v31
	v_rcp_f32_e32 v50, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v38, v43, v45
	v_fmac_f32_e32 v51, v53, v51
	v_mul_f32_e32 v45, v49, v46
	v_div_scale_f32 v53, s4, v16, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v40, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v44, v45, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v52, v50, 1.0
	v_dual_fmac_f32 v45, v40, v46 :: v_dual_mul_f32 v40, v53, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v43, v50
	v_div_scale_f32 v43, s5, v15, v41, v15
	v_fma_f32 v44, -v44, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v10, v44, v46, v45
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v10, v10, v32, v31
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v26, v42, v26, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v43, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v34, v26, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v47, v40, v53
	v_fma_f32 v49, -v52, v42, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v157, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v34, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v49, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v26, v9, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v47, v40, v53
	v_fma_f32 v34, -v52, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v51, v40
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v34, v34, v50, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v33, v37, v16
	v_div_fixup_f32 v5, v34, v41, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v35, v48, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.h, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v38, v39, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v9.h
	v_mov_b16_e32 v17.h, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v15, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v2.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_and_b32 v6, 1, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.l, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v16.l, v10.h
	v_and_b32_e32 v15, 1, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v5.h
	v_add3_u32 v6, v9, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v15, v2, v15, 0x7fff
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v5, v5
	v_add3_u32 v2, v10, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v10, v10
	v_add3_u32 v9, v5, v17, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v15.h, s0
	v_cndmask_b32_e32 v2, v20, v12, vcc_lo
	v_cndmask_b32_e32 v6, v12, v20, vcc_lo
	v_dual_cndmask_b32 v12, v23, v13 :: v_dual_cndmask_b32 v9, v13, v23
	v_mov_b32_e32 v13, 0x5410
	v_cndmask_b32_e32 v17, 0x3276, v17, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v10, v28, v25, vcc_lo
	v_cndmask_b32_e32 v16, v5, v21, vcc_lo
	v_cndmask_b32_e32 v13, 0x1054, v13, vcc_lo
	v_lshl_or_b32 v17, v17, 8, v17
	v_dual_cndmask_b32 v5, v21, v5 :: v_dual_cndmask_b32 v18, v22, v11
	v_cndmask_b32_e32 v11, v11, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v13, v13, 8, v13
	v_dual_cndmask_b32 v20, v24, v14 :: v_dual_and_b32 v17, 0x760076, v17
	v_cndmask_b32_e32 v14, v14, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v22, v1, v27 :: v_dual_and_b32 v13, 0x540054, v13
	v_dual_cndmask_b32 v1, v27, v1 :: v_dual_cndmask_b32 v24, v0, v19
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v19, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v13, 4, v13
	v_lshl_or_b32 v13, v17, 4, v17
	v_cndmask_b32_e32 v15, v25, v28, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v9
	v_and_b32_e32 v25, 0x7060706, v13
	v_permlanex16_b32 v26, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v6, v2, v23
	v_perm_b32 v10, v6, v2, v25
	v_perm_b32 v11, v19, v12, v23
	v_perm_b32 v12, v19, v12, v25
	v_perm_b32 v13, v17, v15, v23
	v_perm_b32 v14, v17, v15, v25
	v_perm_b32 v15, v5, v16, v23
	v_perm_b32 v17, v21, v18, v23
	v_perm_b32 v18, v21, v18, v25
	v_perm_b32 v19, v26, v20, v23
	v_perm_b32 v21, v1, v22, v23
	v_perm_b32 v23, v0, v24, v23
	v_perm_b32 v24, v0, v24, v25
	v_add_lshl_u32 v0, v8, v4, 1
	v_perm_b32 v16, v5, v16, v25
	v_perm_b32 v22, v1, v22, v25
	v_add_lshl_u32 v1, v7, v4, 1
	v_perm_b32 v20, v26, v20, v25
	v_add_lshl_u32 v2, v8, v3, 1
	v_add_lshl_u32 v3, v7, v3, 1
	s_clause 0x3
	buffer_store_b128 v[9:12], v0, s[24:27], 0 offen
	buffer_store_b128 v[13:16], v1, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v2, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v3, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 256
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
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26988
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 256
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 55
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 256
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 63
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
