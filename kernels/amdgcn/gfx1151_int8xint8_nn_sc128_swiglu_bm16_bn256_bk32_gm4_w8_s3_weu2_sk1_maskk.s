	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v42, 0xf0, v0
	v_and_b32_e32 v15, 8, v0
	v_lshlrev_b32_e32 v14, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v9, 3, v42
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_lshl_b32 s30, s3, 5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v9
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
	s_lshr_b32 s16, s16, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 31
.Ltmp19:
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s4, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp21:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s34, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s34, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v41, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s33, s31
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v10, v41, 4, v1
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, s26, s18, v10
	v_add_nc_u32_e32 v2, s34, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v3, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[36:39], 0 offen
	buffer_load_b128 v[23:26], v2, s[36:39], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s27, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v11, 1, v41
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v20, v41, 9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s34, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v8, s27, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v21, 0x90, v20
	v_add_nc_u32_e32 v63, 0, v20
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	buffer_load_b128 v[31:34], v7, s[36:39], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s30, v11
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s34, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v22, 0x110, v20
	v_add_nc_u32_e32 v64, 0, v21
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s31, v2
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, 0, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s5, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v2, v11, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s30, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v7, s35, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s30, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s34, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	s_clause 0x1
	buffer_load_b128 v[35:38], v1, s[36:39], 0 offen
	buffer_load_b128 v[43:46], v7, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v8, s4
	v_cndmask_b32_e64 v7, 0x80000000, v13, s4
	s_clause 0x1
	buffer_load_b128 v[47:50], v1, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v7, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_bfe_i32 v2, v0, 6, 1
	v_and_b32_e32 v13, 4, v0
	buffer_load_u16 v61, v1, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 0x90, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 0x17e, v1
	v_xor_b32_e32 v19, v2, v7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s35, v11
	v_lshlrev_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v62, 0, v19
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s35, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	buffer_load_u16 v66, v7, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v7, v23, v3, 0x5010400
	v_perm_b32 v8, v23, v3, 0x7030602
	v_perm_b32 v16, v24, v4, 0x5010400
	v_perm_b32 v17, v24, v4, 0x7030602
	v_perm_b32 v18, v25, v5, 0x5010400
	v_perm_b32 v24, v26, v6, 0x5010400
	v_perm_b32 v23, v25, v5, 0x7030602
	v_perm_b32 v25, v26, v6, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v40, 8, v8
	v_lshrrev_b32_e32 v56, 8, v16
	v_lshrrev_b32_e32 v58, 8, v17
	v_lshrrev_b32_e32 v67, 24, v18
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v31, v27, 0x5010400
	v_perm_b32 v75, v31, v27, 0x7030602
	v_perm_b32 v78, v33, v29, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v39, 24, v7
	v_lshrrev_b32_e32 v55, 24, v8
	v_lshrrev_b32_e32 v57, 24, v16
	v_lshrrev_b32_e32 v59, 24, v17
	v_lshrrev_b32_e32 v68, 8, v23
	v_lshrrev_b32_e32 v72, 8, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v79, v33, v29, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v60, 8, v18
	v_lshrrev_b32_e32 v69, 24, v23
	v_lshrrev_b32_e32 v73, 24, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v76, v32, v28, 0x5010400
	v_perm_b32 v80, v34, v30, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v3.l, 0xff, v7.l
	v_and_b16 v3.h, 0xff, v7.h
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v5.l, 0xff, v16.l
	v_and_b16 v6.l, 0xff, v17.l
	v_and_b16 v7.l, 0xff, v18.l
	v_and_b16 v7.h, 0xff, v18.h
	v_and_b16 v8.l, 0xff, v23.l
	v_and_b16 v16.l, 0xff, v24.l
	v_and_b16 v17.l, 0xff, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v77, v32, v28, 0x7030602
	v_perm_b32 v81, v34, v30, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v26.l
	v_lshlrev_b16 v23.l, 8, v40.l
	v_lshlrev_b16 v24.l, 8, v56.l
	v_lshlrev_b16 v25.l, 8, v58.l
	v_lshlrev_b16 v26.h, 8, v67.l
	v_lshlrev_b16 v28.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v71.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v56, 8, v74
	v_lshrrev_b32_e32 v58, 8, v75
	v_and_b16 v34.l, 0xff, v78.l
	v_lshrrev_b32_e32 v70, 8, v78
	v_lshrrev_b32_e32 v71, 24, v78
	v_and_b16 v34.h, 0xff, v78.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v78, v43, v35, 0x5010400
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v16.h
	v_and_b16 v6.h, 0xff, v17.h
	v_and_b16 v8.h, 0xff, v23.h
	v_and_b16 v16.h, 0xff, v24.h
	v_and_b16 v17.h, 0xff, v25.h
	v_lshlrev_b16 v18.h, 8, v39.l
	v_lshlrev_b16 v23.h, 8, v55.l
	v_lshlrev_b16 v24.h, 8, v57.l
	v_lshlrev_b16 v25.h, 8, v59.l
	v_lshlrev_b16 v27.l, 8, v68.l
	v_lshlrev_b16 v29.l, 8, v72.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v57, 24, v74
	v_lshrrev_b32_e32 v59, 24, v75
	v_lshrrev_b32_e32 v72, 8, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.l, 8, v60.l
	v_lshlrev_b16 v27.h, 8, v69.l
	v_lshlrev_b16 v29.h, 8, v73.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v60, 8, v76
	v_lshrrev_b32_e32 v73, 24, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v43, v43, v35, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v30.l, 0xff, v74.l
	v_and_b16 v30.h, 0xff, v74.h
	v_lshrrev_b32_e32 v67, 24, v76
	v_lshrrev_b32_e32 v74, 8, v80
	s_waitcnt vmcnt(2)
	v_perm_b32 v83, v51, v47, 0x5010400
	v_and_b16 v31.l, 0xff, v75.l
	v_and_b16 v31.h, 0xff, v75.h
	v_and_b16 v32.l, 0xff, v76.l
	v_and_b16 v32.h, 0xff, v76.h
	v_and_b16 v33.l, 0xff, v77.l
	v_lshrrev_b32_e32 v68, 8, v77
	v_lshrrev_b32_e32 v69, 24, v77
	v_and_b16 v33.h, 0xff, v77.h
	v_and_b16 v39.l, 0xff, v79.l
	v_and_b16 v39.h, 0xff, v79.h
	v_and_b16 v40.l, 0xff, v80.l
	v_lshrrev_b32_e32 v75, 24, v80
	v_and_b16 v40.h, 0xff, v80.h
	v_and_b16 v55.l, 0xff, v81.l
	v_lshrrev_b32_e32 v76, 8, v81
	v_lshrrev_b32_e32 v77, 24, v81
	v_and_b16 v55.h, 0xff, v81.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v79, v44, v36, 0x5010400
	v_perm_b32 v44, v44, v36, 0x7030602
	v_perm_b32 v80, v45, v37, 0x5010400
	v_perm_b32 v45, v45, v37, 0x7030602
	v_perm_b32 v81, v46, v38, 0x5010400
	v_perm_b32 v82, v46, v38, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v84, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v85, v53, v49, 0x5010400
	v_perm_b32 v53, v53, v49, 0x7030602
	v_perm_b32 v86, v54, v50, 0x5010400
	v_perm_b32 v87, v54, v50, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v3.l, v18.l
	v_or_b16 v4.l, v4.l, v23.l
	v_or_b16 v7.h, v7.h, v26.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v18.l, 8, v56.l
	v_lshlrev_b16 v23.l, 8, v58.l
	v_lshlrev_b16 v26.h, 8, v71.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v56, 8, v78
	v_or_b16 v3.h, v3.h, v18.h
	v_or_b16 v4.h, v4.h, v23.h
	v_or_b16 v8.l, v8.l, v27.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v18.h, 8, v57.l
	v_lshlrev_b16 v23.h, 8, v59.l
	v_lshlrev_b16 v27.l, 8, v72.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v57, 24, v78
	v_or_b16 v5.l, v5.l, v24.l
	v_or_b16 v8.h, v8.h, v27.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v24.l, 8, v60.l
	v_lshlrev_b16 v27.h, 8, v73.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v58, 8, v43
	v_or_b16 v5.h, v5.h, v24.h
	v_or_b16 v16.l, v16.l, v28.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v24.h, 8, v67.l
	v_lshlrev_b16 v28.l, 8, v74.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v59, 24, v43
	v_and_b16 v35.l, 0xff, v78.l
	v_and_b16 v35.h, 0xff, v78.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v78, 8, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v6.l, v25.l
	v_or_b16 v6.h, v6.h, v25.h
	v_or_b16 v7.l, v7.l, v26.l
	v_or_b16 v16.h, v16.h, v28.h
	v_or_b16 v17.l, v17.l, v29.l
	v_or_b16 v17.h, v17.h, v29.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v25.l, 8, v68.l
	v_lshlrev_b16 v25.h, 8, v69.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v75.l
	v_lshlrev_b16 v29.l, 8, v76.l
	v_lshlrev_b16 v29.h, 8, v77.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v36.l, 0xff, v43.l
	v_and_b16 v36.h, 0xff, v43.h
	v_and_b16 v37.l, 0xff, v79.l
	v_lshrrev_b32_e32 v60, 8, v79
	v_lshrrev_b32_e32 v67, 24, v79
	v_and_b16 v37.h, 0xff, v79.h
	v_and_b16 v38.l, 0xff, v44.l
	v_lshrrev_b32_e32 v68, 8, v44
	v_lshrrev_b32_e32 v69, 24, v44
	v_and_b16 v38.h, 0xff, v44.h
	v_and_b16 v43.l, 0xff, v80.l
	v_lshrrev_b32_e32 v70, 8, v80
	v_lshrrev_b32_e32 v71, 24, v80
	v_and_b16 v43.h, 0xff, v80.h
	v_and_b16 v44.l, 0xff, v45.l
	v_lshrrev_b32_e32 v72, 8, v45
	v_lshrrev_b32_e32 v73, 24, v45
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.l, 0xff, v81.l
	v_lshrrev_b32_e32 v74, 8, v81
	v_lshrrev_b32_e32 v75, 24, v81
	v_and_b16 v45.h, 0xff, v81.h
	v_and_b16 v46.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v46.h, 0xff, v82.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v47.l, 0xff, v83.l
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v47.h, 0xff, v83.h
	v_and_b16 v48.l, 0xff, v51.l
	v_lshrrev_b32_e32 v80, 8, v51
	v_lshrrev_b32_e32 v81, 24, v51
	v_and_b16 v48.h, 0xff, v51.h
	v_and_b16 v49.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v49.h, 0xff, v84.h
	v_and_b16 v50.l, 0xff, v52.l
	v_lshrrev_b32_e32 v84, 8, v52
	v_lshrrev_b32_e32 v88, 24, v52
	v_and_b16 v50.h, 0xff, v52.h
	v_and_b16 v51.l, 0xff, v85.l
	v_lshrrev_b32_e32 v89, 8, v85
	v_lshrrev_b32_e32 v90, 24, v85
	v_and_b16 v51.h, 0xff, v85.h
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v85, 8, v53
	v_lshrrev_b32_e32 v91, 24, v53
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.l, 0xff, v86.l
	v_lshrrev_b32_e32 v92, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_and_b16 v53.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v94, 24, v87
	v_or_b16 v18.l, v30.l, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v3
	ds_store_b16_d16_hi v63, v3 offset:32
	ds_store_b16 v63, v4 offset:64
	ds_store_b16_d16_hi v63, v4 offset:96
	ds_store_b16_d16_hi v64, v5 offset:32
	ds_store_b16 v64, v6 offset:64
	ds_store_b16_d16_hi v64, v6 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.h, v31.l, v23.l
	v_or_b16 v23.l, v34.h, v26.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.h, 8, v56.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.l, v31.h, v23.h
	v_or_b16 v23.h, v39.l, v27.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.l, 8, v57.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.h, v32.l, v24.l
	v_or_b16 v24.l, v39.h, v27.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.h, 8, v58.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v5.h, v32.h, v24.h
	v_or_b16 v24.h, v40.l, v28.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v28.l, 8, v59.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.l, v30.h, v18.h
	v_lshlrev_b16 v34.h, 8, v78.l
	v_and_b16 v54.l, 0xff, v87.l
	v_and_b16 v54.h, 0xff, v87.h
	v_or_b16 v6.l, v33.l, v25.l
	v_or_b16 v6.h, v33.h, v25.h
	v_or_b16 v18.h, v34.l, v26.l
	v_or_b16 v25.l, v40.h, v28.h
	v_or_b16 v25.h, v55.l, v29.l
	v_or_b16 v26.l, v55.h, v29.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v28.h, 8, v60.l
	v_lshlrev_b16 v29.l, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v68.l
	v_lshlrev_b16 v30.l, 8, v69.l
	v_lshlrev_b16 v30.h, 8, v70.l
	v_lshlrev_b16 v31.l, 8, v71.l
	v_lshlrev_b16 v31.h, 8, v72.l
	v_lshlrev_b16 v32.l, 8, v73.l
	v_lshlrev_b16 v32.h, 8, v74.l
	v_lshlrev_b16 v33.l, 8, v75.l
	v_lshlrev_b16 v33.h, 8, v76.l
	v_lshlrev_b16 v34.l, 8, v77.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v39.l, 8, v79.l
	v_lshlrev_b16 v39.h, 8, v80.l
	v_lshlrev_b16 v40.l, 8, v81.l
	v_lshlrev_b16 v40.h, 8, v82.l
	v_lshlrev_b16 v55.l, 8, v83.l
	v_lshlrev_b16 v55.h, 8, v84.l
	v_lshlrev_b16 v56.l, 8, v88.l
	v_lshlrev_b16 v56.h, 8, v89.l
	v_lshlrev_b16 v57.l, 8, v90.l
	v_lshlrev_b16 v57.h, 8, v85.l
	v_lshlrev_b16 v58.l, 8, v91.l
	v_lshlrev_b16 v58.h, 8, v92.l
	v_lshlrev_b16 v59.l, 8, v93.l
	v_lshlrev_b16 v59.h, 8, v86.l
	v_lshlrev_b16 v60.l, 8, v94.l
	ds_store_b16 v63, v18 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v64, v5
	ds_store_b16 v65, v7
	ds_store_b16_d16_hi v65, v7 offset:32
	ds_store_b16 v65, v8 offset:64
	ds_store_b16_d16_hi v65, v8 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v62, v61 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v63, v3 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v16 offset:384
	ds_store_b16_d16_hi v63, v16 offset:416
	ds_store_b16 v63, v17 offset:448
	ds_store_b16_d16_hi v63, v17 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v63, v3 offset:16416
	ds_store_b16 v63, v4 offset:16480
	ds_store_b16_d16_hi v64, v4 offset:16384
	ds_store_b16_d16_hi v64, v5 offset:16416
	ds_store_b16 v64, v6 offset:16448
	ds_store_b16_d16_hi v64, v6 offset:16480
	ds_store_b16_d16_hi v65, v18 offset:16384
	ds_store_b16 v65, v23 offset:16416
	ds_store_b16_d16_hi v65, v23 offset:16448
	ds_store_b16 v65, v24 offset:16480
	ds_store_b16_d16_hi v63, v24 offset:16768
	ds_store_b16 v63, v25 offset:16800
	ds_store_b16_d16_hi v63, v25 offset:16832
	ds_store_b16 v63, v26 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v35.l, v26.h
	v_or_b16 v3.h, v35.h, v27.l
	v_or_b16 v4.l, v36.l, v27.h
	v_or_b16 v4.h, v36.h, v28.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v18.l, v47.l, v34.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v37.l, v28.h
	v_or_b16 v5.h, v37.h, v29.l
	v_or_b16 v6.l, v38.l, v29.h
	v_or_b16 v6.h, v38.h, v30.l
	v_or_b16 v7.l, v43.l, v30.h
	v_or_b16 v7.h, v43.h, v31.l
	v_or_b16 v8.l, v44.l, v31.h
	v_or_b16 v8.h, v44.h, v32.l
	v_or_b16 v16.l, v45.l, v32.h
	v_or_b16 v16.h, v45.h, v33.l
	v_or_b16 v17.l, v46.l, v33.h
	v_or_b16 v17.h, v46.h, v34.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v18.h, v47.h, v39.l
	v_or_b16 v23.l, v48.l, v39.h
	v_or_b16 v23.h, v48.h, v40.l
	v_or_b16 v24.l, v49.l, v40.h
	v_or_b16 v24.h, v49.h, v55.l
	v_or_b16 v25.l, v50.l, v55.h
	v_or_b16 v25.h, v50.h, v56.l
	v_or_b16 v26.l, v51.l, v56.h
	v_or_b16 v26.h, v51.h, v57.l
	v_or_b16 v27.l, v52.l, v57.h
	v_or_b16 v27.h, v52.h, v58.l
	v_or_b16 v28.l, v53.l, v58.h
	v_or_b16 v28.h, v53.h, v59.l
	v_or_b16 v29.l, v54.l, v59.h
	v_or_b16 v29.h, v54.h, v60.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v3 offset:8192
	ds_store_b16_d16_hi v63, v3 offset:8224
	ds_store_b16 v63, v4 offset:8256
	ds_store_b16_d16_hi v63, v4 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v63, v18 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v64, v5 offset:8192
	ds_store_b16_d16_hi v64, v5 offset:8224
	ds_store_b16 v64, v6 offset:8256
	ds_store_b16_d16_hi v64, v6 offset:8288
	ds_store_b16 v65, v7 offset:8192
	ds_store_b16_d16_hi v65, v7 offset:8224
	ds_store_b16 v65, v8 offset:8256
	ds_store_b16_d16_hi v65, v8 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v62, v66 offset:33280
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v63, v23 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v16 offset:8576
	ds_store_b16_d16_hi v63, v16 offset:8608
	ds_store_b16 v63, v17 offset:8640
	ds_store_b16_d16_hi v63, v17 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v63, v18 offset:24608
	ds_store_b16_d16_hi v63, v23 offset:24672
	ds_store_b16 v64, v24 offset:24576
	ds_store_b16_d16_hi v64, v24 offset:24608
	ds_store_b16 v64, v25 offset:24640
	ds_store_b16_d16_hi v64, v25 offset:24672
	ds_store_b16 v65, v26 offset:24576
	ds_store_b16_d16_hi v65, v26 offset:24608
	ds_store_b16 v65, v27 offset:24640
	ds_store_b16_d16_hi v65, v27 offset:24672
	ds_store_b16 v63, v28 offset:24960
	ds_store_b16_d16_hi v63, v28 offset:24992
	ds_store_b16 v63, v29 offset:25024
	ds_store_b16_d16_hi v63, v29 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v25, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0xe00, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v4, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 8, v0
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v24, 0x160, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v23, 0x60, v25, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr23
.LBB0_3:                                ; %Flow317
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s33, v41
	s_ashr_i32 s1, s6, 7
	v_or_b32_e32 v75, s26, v0
	v_lshlrev_b32_e32 v18, 2, v42
	v_and_b32_e32 v17, 28, v1
	v_mul_lo_u32 v76, v5, s1
	v_lshlrev_b32_e32 v16, 1, v42
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v2, 0xe00, v2
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v24, 0x160, v14
	v_and_or_b32 v23, 0x60, v14, v2
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s34, v10
	v_add_nc_u32_e32 v30, s27, v75
	v_xor_b32_e32 v2, v1, v3
	v_or_b32_e32 v26, v1, v24
	v_and_b32_e32 v1, 32, v14
	v_add_nc_u32_e32 v32, 0, v16
	v_mov_b32_e32 v74, 0
	v_or_b32_e32 v27, v23, v2
	v_xor_b32_e32 v28, 16, v26
	v_add3_u32 v31, 0, v18, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v29, 16, v27
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v31, v31, v17
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v45, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s48, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s15, s35, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s47, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s48, s48, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s18, s30
	s_mov_b32 s30, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s15, s19
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s18, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v33, s35, v11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s19, s19, 25
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v34, s35, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s20, s35, s34
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s18, s19
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v33
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s20, s20, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s18, 7
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s19, s20, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v33, 0x80000000, v34, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v34, v76, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v75, s18, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v36, s35, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v40, s0, v28
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v37, s20, v10
	v_add_nc_u32_e32 v81, s20, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v39, v35, s[40:43], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v35, s0, v26
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v77, s16, v27
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v82, s19, v10
	v_add_nc_u32_e32 v83, s19, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s16, v29
	v_cndmask_b32_e64 v89, 0x80000000, v37, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[35:38], v35
	ds_load_b128 v[109:112], v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v40, 0x80000000, v81, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v79, s14, v27
	v_add_nc_u32_e32 v80, s14, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[85:88], v77
	ds_load_b128 v[93:96], v77 offset:4096
	ds_load_b128 v[113:116], v78
	ds_load_b128 v[117:120], v78 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[101:104], v79
	ds_load_b128 v[121:124], v79 offset:4096
	ds_load_b128 v[125:128], v80
	ds_load_b128 v[129:132], v80 offset:4096
	v_cndmask_b32_e64 v77, 0x80000000, v82, s0
	v_cndmask_b32_e64 v78, 0x80000000, v83, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[133:136], v89, s[36:39], 0 offen
	buffer_load_b128 v[137:140], v40, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v40, v34, s[4:7], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[141:144], v77, s[36:39], 0 offen
	buffer_load_b128 v[145:148], v78, s[36:39], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v84, v30, s18, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s47, 1
	s_mov_b32 s16, s45
	s_cmp_lt_i32 s18, 2
	s_mov_b32 s0, s46
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v79, 0x80000000, v84, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s47, s18, 0
	s_add_i32 s18, s17, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s19, s47, 9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s20, s47, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s19, s19, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s20, 0
	s_mov_b32 s14, s44
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s46, s19, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s18
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v31, v34 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v34, v79, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[35:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[35:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[93:100], v[101:104], v[35:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[121:124], v[35:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[77:84], v[113:116], v[109:112], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[117:120], v[109:112], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[93:100], v[125:128], v[109:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[129:132], v[109:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v35, v137, v133, 0x5010400
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v78
	v_cvt_f32_i32_e32 v120, v77
	v_cvt_f32_i32_e32 v123, v80
	v_cvt_f32_i32_e32 v124, v79
	v_cvt_f32_i32_e32 v127, v82
	v_cvt_f32_i32_e32 v128, v81
	v_cvt_f32_i32_e32 v131, v84
	v_cvt_f32_i32_e32 v132, v83
	v_cvt_f32_i32_e32 v155, v86
	v_cvt_f32_i32_e32 v156, v85
	v_cvt_f32_i32_e32 v159, v88
	v_cvt_f32_i32_e32 v160, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v36, v137, v133, 0x7030602
	v_perm_b32 v37, v138, v134, 0x5010400
	v_perm_b32 v38, v138, v134, 0x7030602
	v_perm_b32 v77, v139, v135, 0x5010400
	v_perm_b32 v78, v139, v135, 0x7030602
	v_perm_b32 v79, v140, v136, 0x5010400
	v_perm_b32 v80, v140, v136, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v81, v145, v141, 0x5010400
	v_perm_b32 v82, v145, v141, 0x7030602
	v_perm_b32 v83, v146, v142, 0x5010400
	v_perm_b32 v84, v146, v142, 0x7030602
	v_perm_b32 v85, v147, v143, 0x5010400
	v_perm_b32 v86, v147, v143, 0x7030602
	v_perm_b32 v87, v148, v144, 0x5010400
	v_perm_b32 v88, v148, v144, 0x7030602
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v121, v94
	v_cvt_f32_i32_e32 v122, v93
	v_cvt_f32_i32_e32 v125, v96
	v_cvt_f32_i32_e32 v126, v95
	v_cvt_f32_i32_e32 v129, v98
	v_cvt_f32_i32_e32 v130, v97
	v_cvt_f32_i32_e32 v153, v100
	v_cvt_f32_i32_e32 v154, v99
	v_cvt_f32_i32_e32 v157, v102
	v_cvt_f32_i32_e32 v158, v101
	v_cvt_f32_i32_e32 v161, v104
	v_cvt_f32_i32_e32 v162, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v163, v90
	v_cvt_f32_i32_e32 v164, v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v165, v106
	v_cvt_f32_i32_e32 v166, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v167, v92
	v_cvt_f32_i32_e32 v168, v91
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v169, v108
	v_cvt_f32_i32_e32 v170, v107
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v133, 16, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v39.l, 0xff, v35.l
	v_lshrrev_b32_e32 v103, 8, v35
	v_lshrrev_b32_e32 v104, 24, v35
	v_and_b16 v39.h, 0xff, v35.h
	v_and_b16 v40.l, 0xff, v36.l
	v_lshrrev_b32_e32 v105, 8, v36
	v_lshrrev_b32_e32 v106, 24, v36
	v_and_b16 v40.h, 0xff, v36.h
	v_and_b16 v89.l, 0xff, v37.l
	v_lshrrev_b32_e32 v107, 8, v37
	v_lshrrev_b32_e32 v108, 24, v37
	v_and_b16 v89.h, 0xff, v37.h
	v_and_b16 v90.l, 0xff, v38.l
	v_lshrrev_b32_e32 v109, 8, v38
	v_lshrrev_b32_e32 v110, 24, v38
	v_and_b16 v90.h, 0xff, v38.h
	v_and_b16 v91.l, 0xff, v77.l
	v_lshrrev_b32_e32 v111, 8, v77
	v_lshrrev_b32_e32 v112, 24, v77
	v_and_b16 v91.h, 0xff, v77.h
	v_and_b16 v92.l, 0xff, v78.l
	v_lshrrev_b32_e32 v113, 8, v78
	v_lshrrev_b32_e32 v114, 24, v78
	v_and_b16 v92.h, 0xff, v78.h
	v_and_b16 v93.l, 0xff, v79.l
	v_lshrrev_b32_e32 v115, 8, v79
	v_lshrrev_b32_e32 v116, 24, v79
	v_and_b16 v93.h, 0xff, v79.h
	v_and_b16 v94.l, 0xff, v80.l
	v_lshrrev_b32_e32 v117, 8, v80
	v_lshrrev_b32_e32 v118, 24, v80
	v_and_b16 v94.h, 0xff, v80.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v95.l, 0xff, v81.l
	v_lshrrev_b32_e32 v134, 8, v81
	v_lshrrev_b32_e32 v135, 24, v81
	v_and_b16 v95.h, 0xff, v81.h
	v_and_b16 v96.l, 0xff, v82.l
	v_lshrrev_b32_e32 v136, 8, v82
	v_lshrrev_b32_e32 v137, 24, v82
	v_and_b16 v96.h, 0xff, v82.h
	v_and_b16 v97.l, 0xff, v83.l
	v_lshrrev_b32_e32 v138, 8, v83
	v_lshrrev_b32_e32 v139, 24, v83
	v_and_b16 v97.h, 0xff, v83.h
	v_and_b16 v98.l, 0xff, v84.l
	v_lshrrev_b32_e32 v140, 8, v84
	v_lshrrev_b32_e32 v141, 24, v84
	v_and_b16 v98.h, 0xff, v84.h
	v_and_b16 v99.l, 0xff, v85.l
	v_lshrrev_b32_e32 v142, 8, v85
	v_lshrrev_b32_e32 v143, 24, v85
	v_and_b16 v99.h, 0xff, v85.h
	v_and_b16 v100.l, 0xff, v86.l
	v_lshrrev_b32_e32 v144, 8, v86
	v_lshrrev_b32_e32 v145, 24, v86
	v_and_b16 v100.h, 0xff, v86.h
	v_and_b16 v101.l, 0xff, v87.l
	v_lshrrev_b32_e32 v146, 8, v87
	v_lshrrev_b32_e32 v147, 24, v87
	v_and_b16 v101.h, 0xff, v87.h
	v_and_b16 v102.l, 0xff, v88.l
	v_lshrrev_b32_e32 v148, 8, v88
	v_lshrrev_b32_e32 v171, 24, v88
	v_and_b16 v102.h, 0xff, v88.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[35:38], v32 offset:33792
	ds_load_b128 v[77:80], v32 offset:33808
	ds_load_b128 v[81:84], v32 offset:34304
	ds_load_b128 v[85:88], v32 offset:34320
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v103.l, 8, v103.l
	v_lshlrev_b16 v103.h, 8, v104.l
	v_lshlrev_b16 v104.l, 8, v105.l
	v_lshlrev_b16 v104.h, 8, v106.l
	v_lshlrev_b16 v105.l, 8, v107.l
	v_lshlrev_b16 v105.h, 8, v108.l
	v_lshlrev_b16 v106.l, 8, v109.l
	v_lshlrev_b16 v106.h, 8, v110.l
	v_lshlrev_b16 v107.l, 8, v111.l
	v_lshlrev_b16 v107.h, 8, v112.l
	v_lshlrev_b16 v108.l, 8, v113.l
	v_lshlrev_b16 v108.h, 8, v114.l
	v_lshlrev_b16 v109.l, 8, v115.l
	v_lshlrev_b16 v109.h, 8, v116.l
	v_lshlrev_b16 v110.l, 8, v117.l
	v_lshlrev_b16 v110.h, 8, v118.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v111.l, 8, v134.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v88, v88, v133
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v111.h, 8, v135.l
	v_lshlrev_b16 v112.l, 8, v136.l
	v_lshlrev_b16 v112.h, 8, v137.l
	v_lshlrev_b16 v113.l, 8, v138.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v44, v88, v167
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v84, v84, v133 :: v_dual_add_nc_u32 v149, s19, v19
	v_dual_mul_f32 v79, v79, v133 :: v_dual_add_nc_u32 v150, s45, v20
	v_dual_mul_f32 v81, v81, v133 :: v_dual_add_nc_u32 v152, s45, v22
	v_mul_f32_e32 v36, v36, v133
	v_mul_f32_e32 v35, v35, v133
	v_mul_f32_e32 v37, v37, v133
	v_mul_f32_e32 v78, v78, v133
	v_mul_f32_e32 v77, v77, v133
	v_mul_f32_e32 v80, v80, v133
	v_mul_f32_e32 v82, v82, v133
	v_dual_mul_f32 v83, v83, v133 :: v_dual_fmac_f32 v56, v81, v156
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v86, v86, v133 :: v_dual_fmac_f32 v61, v80, v131
	v_dual_mul_f32 v85, v85, v133 :: v_dual_fmac_f32 v60, v79, v132
	v_mul_f32_e32 v87, v87, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v53, v84, v159
	v_dual_fmac_f32 v64, v77, v128 :: v_dual_add_nc_u32 v151, s45, v21
	v_dual_fmac_f32 v72, v35, v120 :: v_dual_fmac_f32 v73, v36, v119
	v_dual_fmac_f32 v68, v37, v124 :: v_dual_fmac_f32 v65, v78, v127
	v_dual_fmac_f32 v57, v82, v155 :: v_dual_fmac_f32 v52, v83, v160
	v_dual_fmac_f32 v48, v85, v164 :: v_dual_fmac_f32 v49, v86, v163
	v_fmac_f32_e32 v45, v87, v168
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v113.h, 8, v139.l
	v_lshlrev_b16 v114.l, 8, v140.l
	v_lshlrev_b16 v114.h, 8, v141.l
	v_lshlrev_b16 v115.l, 8, v142.l
	v_lshlrev_b16 v115.h, 8, v143.l
	v_lshlrev_b16 v116.l, 8, v144.l
	v_lshlrev_b16 v116.h, 8, v145.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v38, v133
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v39.l, v39.l, v103.l
	v_or_b16 v39.h, v39.h, v103.h
	v_or_b16 v40.l, v40.l, v104.l
	v_or_b16 v40.h, v40.h, v104.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v117.l, 8, v146.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v89.l, v89.l, v105.l
	v_or_b16 v89.h, v89.h, v105.h
	v_or_b16 v90.l, v90.l, v106.l
	v_or_b16 v90.h, v90.h, v106.h
	v_or_b16 v91.l, v91.l, v107.l
	v_or_b16 v91.h, v91.h, v107.h
	v_or_b16 v92.l, v92.l, v108.l
	v_or_b16 v92.h, v92.h, v108.h
	v_or_b16 v93.l, v93.l, v109.l
	v_or_b16 v93.h, v93.h, v109.h
	v_or_b16 v94.l, v94.l, v110.l
	v_or_b16 v94.h, v94.h, v110.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v95.l, v95.l, v111.l
	v_or_b16 v95.h, v95.h, v111.h
	v_or_b16 v96.l, v96.l, v112.l
	v_or_b16 v96.h, v96.h, v112.h
	v_or_b16 v97.l, v97.l, v113.l
	v_or_b16 v97.h, v97.h, v113.h
	v_or_b16 v98.l, v98.l, v114.l
	v_or_b16 v98.h, v98.h, v114.h
	v_or_b16 v99.l, v99.l, v115.l
	v_or_b16 v99.h, v99.h, v115.h
	v_or_b16 v100.l, v100.l, v116.l
	v_or_b16 v100.h, v100.h, v116.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v69, v38, v123
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v117.h, 8, v147.l
	v_lshlrev_b16 v118.l, 8, v148.l
	v_lshlrev_b16 v118.h, 8, v171.l
	v_or_b16 v101.l, v101.l, v117.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v101.h, v101.h, v117.h
	v_or_b16 v102.l, v102.l, v118.l
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v102.h, v102.h, v118.h
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v31, v34 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v32 offset:33792
	ds_load_b128 v[77:80], v32 offset:33808
	ds_load_b128 v[81:84], v32 offset:34304
	ds_load_b128 v[85:88], v32 offset:34320
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b16 v149, v33 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v150, v39
	ds_store_b16_d16_hi v150, v39 offset:32
	ds_store_b16 v150, v40 offset:64
	ds_store_b16_d16_hi v150, v40 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v150, v95 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v151, v89
	ds_store_b16_d16_hi v151, v89 offset:32
	ds_store_b16 v151, v90 offset:64
	ds_store_b16_d16_hi v151, v90 offset:96
	ds_store_b16 v152, v91
	ds_store_b16_d16_hi v152, v91 offset:32
	ds_store_b16 v152, v92 offset:64
	ds_store_b16_d16_hi v152, v92 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v150, v96 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v150, v93 offset:384
	ds_store_b16_d16_hi v150, v93 offset:416
	ds_store_b16 v150, v94 offset:448
	ds_store_b16_d16_hi v150, v94 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v150, v95 offset:16416
	ds_store_b16_d16_hi v150, v96 offset:16480
	ds_store_b16 v151, v97 offset:16384
	ds_store_b16_d16_hi v151, v97 offset:16416
	ds_store_b16 v151, v98 offset:16448
	ds_store_b16_d16_hi v151, v98 offset:16480
	ds_store_b16 v152, v99 offset:16384
	ds_store_b16_d16_hi v152, v99 offset:16416
	ds_store_b16 v152, v100 offset:16448
	ds_store_b16_d16_hi v152, v100 offset:16480
	ds_store_b16 v150, v101 offset:16768
	ds_store_b16_d16_hi v150, v101 offset:16800
	ds_store_b16 v150, v102 offset:16832
	ds_store_b16_d16_hi v150, v102 offset:16864
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(36)
	v_mul_f32_e32 v34, v34, v133
	v_mul_f32_e32 v36, v36, v133
	v_mul_f32_e32 v33, v35, v133
	s_waitcnt lgkmcnt(35)
	v_mul_f32_e32 v38, v77, v133
	v_dual_mul_f32 v40, v79, v133 :: v_dual_fmac_f32 v43, v34, v122
	v_mul_f32_e32 v35, v37, v133
	v_mul_f32_e32 v37, v78, v133
	s_waitcnt lgkmcnt(34)
	v_mul_f32_e32 v78, v81, v133
	v_mul_f32_e32 v39, v80, v133
	v_mul_f32_e32 v80, v83, v133
	v_mul_f32_e32 v77, v82, v133
	s_waitcnt lgkmcnt(33)
	v_mul_f32_e32 v82, v85, v133
	v_mul_f32_e32 v79, v84, v133
	v_mul_f32_e32 v83, v88, v133
	v_mul_f32_e32 v84, v87, v133
	v_dual_mul_f32 v81, v86, v133 :: v_dual_fmac_f32 v70, v36, v126
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v74, v33, v121
	v_dual_fmac_f32 v66, v38, v130 :: v_dual_fmac_f32 v71, v35, v125
	v_dual_fmac_f32 v62, v40, v154 :: v_dual_fmac_f32 v67, v37, v129
	v_dual_fmac_f32 v58, v78, v158 :: v_dual_fmac_f32 v63, v39, v153
	v_dual_fmac_f32 v54, v80, v162 :: v_dual_fmac_f32 v59, v77, v157
	v_dual_fmac_f32 v50, v82, v166 :: v_dual_fmac_f32 v55, v79, v161
	v_dual_fmac_f32 v46, v84, v170 :: v_dual_fmac_f32 v51, v81, v165
	v_fmac_f32_e32 v47, v83, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v4, v13
	v_mov_b32_e32 v3, v15
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v43, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v9, v1, v24
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v10, 16, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v84, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v143, v23, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s0, v9
	v_add_nc_u32_e32 v3, s0, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v3
	v_xor_b32_e32 v144, 16, v143
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
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
	v_add_nc_u32_e32 v15, s16, v143
	v_add_nc_u32_e32 v23, s16, v144
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v33, s11 :: v_dual_mov_b32 v28, s6
	v_mov_b32_e32 v32, s10
	v_mov_b32_e32 v30, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[11:14], v15
	ds_load_b128 v[19:22], v15 offset:4096
	ds_load_b128 v[34:37], v23
	ds_load_b128 v[77:80], v23 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v26, s4
	v_mov_b32_e32 v29, s7
	v_mov_b32_e32 v27, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[11:14], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[19:22], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[34:37], v[1:4], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[77:80], v[1:4], v[26:33] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v87, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v89, v95
	v_cvt_f32_i32_e32 v77, v96
	v_cvt_f32_i32_e32 v79, v97
	v_cvt_f32_i32_e32 v81, v98
	v_cvt_f32_i32_e32 v84, v99
	v_cvt_f32_i32_e32 v82, v26
	v_cvt_f32_i32_e32 v85, v27
	v_cvt_f32_i32_e32 v88, v28
	v_cvt_f32_i32_e32 v90, v29
	v_cvt_f32_i32_e32 v78, v30
	v_cvt_f32_i32_e32 v80, v31
	v_cvt_f32_i32_e32 v83, v32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_mov_b32_e32 v105, 0
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
	v_add_nc_u32_e32 v15, s14, v143
	v_add_nc_u32_e32 v23, s14, v144
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v33, s11 :: v_dual_mov_b32 v28, s6
	v_mov_b32_e32 v32, s10
	v_mov_b32_e32 v30, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[11:14], v15
	ds_load_b128 v[19:22], v15 offset:4096
	ds_load_b128 v[34:37], v23
	ds_load_b128 v[102:105], v23 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v26, s4
	v_mov_b32_e32 v29, s7
	v_mov_b32_e32 v27, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[11:14], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[19:22], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[34:37], v[1:4], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[102:105], v[1:4], v[26:33] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v108, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v103, v101
	v_cvt_f32_i32_e32 v101, v26
	v_cvt_f32_i32_e32 v104, v27
	v_cvt_f32_i32_e32 v107, v28
	v_cvt_f32_i32_e32 v109, v29
	v_cvt_f32_i32_e32 v97, v30
	v_cvt_f32_i32_e32 v99, v31
	v_cvt_f32_i32_e32 v102, v32
	v_cvt_f32_i32_e32 v105, v33
	v_cvt_f32_i32_e32 v91, v94
	v_cvt_f32_i32_e32 v111, v95
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s0, s34
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v76, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v75, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v3, 32, v25
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v146, s26, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v18, v3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v95, 0, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v4, v146, s4, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v94, v3, v17
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v145, v1, s[12:15], 0 offen
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v17, s46, v9
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v18, s46, v10
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v125, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v114, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v94, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v95 offset:33792
	ds_load_b128 v[9:12], v95 offset:33808
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v95 offset:34304
	ds_load_b128 v[1:4], v95 offset:34320
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v94, v19 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[37:40], v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[33:36], v18
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s45, v143
	v_add_nc_u32_e32 v18, s45, v144
	ds_load_b128 v[112:115], v17
	ds_load_b128 v[116:119], v17 offset:4096
	ds_load_b128 v[120:123], v18
	ds_load_b128 v[124:127], v18 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v24, s11 :: v_dual_mov_b32 v21, s8
	v_dual_mov_b32 v23, s10 :: v_dual_mov_b32 v22, s9
	v_dual_mov_b32 v20, s7 :: v_dual_mov_b32 v19, s6
	v_dual_mov_b32 v18, s5 :: v_dual_mov_b32 v17, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[112:115], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[116:119], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[120:123], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[124:127], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v115, v28
	v_cvt_f32_i32_e32 v112, v29
	v_cvt_f32_i32_e32 v113, v30
	v_cvt_f32_i32_e32 v116, v31
	v_cvt_f32_i32_e32 v117, v32
	v_cvt_f32_i32_e32 v118, v17
	v_cvt_f32_i32_e32 v119, v18
	v_cvt_f32_i32_e32 v122, v19
	v_cvt_f32_i32_e32 v123, v20
	v_cvt_f32_i32_e32 v120, v21
	v_cvt_f32_i32_e32 v121, v22
	v_cvt_f32_i32_e32 v124, v23
	v_cvt_f32_i32_e32 v125, v24
	v_cvt_f32_i32_e32 v126, v25
	v_cvt_f32_i32_e32 v127, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v95 offset:33792
	ds_load_b128 v[25:28], v95 offset:33808
	ds_load_b128 v[21:24], v95 offset:34304
	ds_load_b128 v[17:20], v95 offset:34320
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_mov_b32_e32 v142, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v110, s44, v143
	v_add_nc_u32_e32 v128, s44, v144
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v144, s11 :: v_dual_mov_b32 v139, s6
	v_mov_b32_e32 v143, s10
	v_mov_b32_e32 v141, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[147:150], v110
	ds_load_b128 v[151:154], v110 offset:4096
	ds_load_b128 v[155:158], v128
	ds_load_b128 v[159:162], v128 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v142, s9 :: v_dual_mov_b32 v137, s4
	v_mov_b32_e32 v140, s7
	v_mov_b32_e32 v138, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[147:150], v[37:40], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[151:154], v[37:40], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[155:158], v[33:36], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[159:162], v[33:36], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v129
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v135, v137
	v_cvt_f32_i32_e32 v136, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v142, v144
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s35, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v36.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v36.h, v145.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s34
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v33, v76, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v75, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v37, s27, v41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v90, v53
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v34, v33, s[12:15], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v33, v146, s1, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 16, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v53, v8, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v40, v30, v36
	v_mov_b16_e32 v30.h, v36.l
	s_mov_b32 s15, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v40, v40, v111, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v22, v36 :: v_dual_lshlrev_b32 v53, 16, v34
	v_mul_f32_e32 v21, v21, v36
	v_mul_f32_e32 v24, v24, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v94, v35 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v35, 1, v42
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v14, v36
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v23, v36
	v_mul_f32_e32 v41, v29, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v75, v13, v36
	v_mul_f32_e32 v76, v16, v36
	v_mul_f32_e32 v143, v15, v36
	v_mul_f32_e32 v150, v7, v36
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v18, v36
	v_mul_f32_e32 v17, v17, v36
	v_mul_f32_e32 v20, v20, v36
	v_mul_f32_e32 v19, v19, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v101, v58
	v_fma_f32 v22, v22, v104, v59
	v_fma_f32 v23, v23, v107, v54
	v_fma_f32 v24, v24, v109, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.h, v36.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v32, v36
	v_mul_f32_e32 v31, v31, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.h, v36.l
	v_mov_b16_e32 v15.h, v36.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v26, v36
	v_mul_f32_e32 v25, v25, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v144, v10, v36
	v_mul_f32_e32 v145, v9, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v36.l
	v_mov_b16_e32 v13.h, v36.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v27, v27, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v146, v12, v36
	v_mul_f32_e32 v147, v11, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.h, v36.l
	v_mov_b16_e32 v11.h, v36.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v148, v6, v36
	v_mul_f32_e32 v149, v5, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v36.l
	v_mov_b16_e32 v9.h, v36.l
	v_mov_b16_e32 v7.h, v36.l
	v_mov_b16_e32 v5.h, v36.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v151, v2, v36
	v_mul_f32_e32 v152, v1, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.h, v36.l
	v_mov_b16_e32 v2.h, v36.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v153, v3, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, v36.l
	v_mov_b16_e32 v1.h, v36.l
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add3_u32 v36, s33, s26, v37
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v37, v41, v91, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v75, v92, v72
	v_fma_f32 v75, v143, v87, v68
	v_fma_f32 v76, v76, v89, v69
	v_fma_f32 v87, v150, v88, v52
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v88, v17, v97, v50
	v_fma_f32 v89, v18, v99, v51
	v_fma_f32 v90, v19, v102, v46
	v_fma_f32 v91, v20, v105, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v22, s2
	v_cndmask_b32_e64 v58, v58, v21, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[17:20], v95 offset:33792
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v24, s2
	v_cndmask_b32_e64 v54, v54, v23, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[21:24], v95 offset:33808
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v42, v93, v73
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v96, v66
	v_fma_f32 v27, v27, v100, v62
	v_fma_f32 v28, v28, v103, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v4, v86, v44
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v4, v36, v35, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v74, v40, s2
	v_cndmask_b32_e64 v36, v43, v37, s2
	v_cndmask_b32_e64 v37, v73, v42, s2
	v_cndmask_b32_e64 v72, v72, v41, s2
	v_cndmask_b32_e64 v66, v66, v25, s2
	v_cndmask_b32_e64 v63, v63, v28, s2
	v_cndmask_b32_e64 v62, v62, v27, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[40:43], v95 offset:34320
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v152, v78, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v87, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v17, v17, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v108, v71
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v18, v53
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v21, v21, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v98, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v22, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v106, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v32, s2
	v_cndmask_b32_e64 v32, v68, v75, s2
	v_cndmask_b32_e64 v67, v67, v26, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v95 offset:34304
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v70, v31, s2
	v_cndmask_b32_e64 v31, v69, v76, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v20, v53
	v_mul_f32_e32 v19, v19, v53
	v_mul_f32_e32 v23, v23, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v144, v79, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v34, v41, v53
	v_mul_f32_e32 v40, v40, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v147, v81, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v43, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v17, v126, v72
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v65, v79, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v60, v81, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_barrier
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v24, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v18, v127, v37
	v_fma_f32 v69, v19, v114, v32
	v_fma_f32 v73, v20, v115, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v28, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v145, v77, v64
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v27, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v146, v84, v61
	v_fma_f32 v75, v22, v113, v65
	v_fma_f32 v76, v23, v116, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v77, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v26, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v84, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v25, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v78, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v21, v112, v64
	v_fma_f32 v81, v28, v123, v8
	v_fma_f32 v77, v24, v117, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v68, s3
	v_cndmask_b32_e64 v68, v31, v73, s3
	v_cndmask_b32_e64 v69, v32, v69, s3
	v_cndmask_b32_e64 v50, v50, v88, s2
	v_cndmask_b32_e64 v47, v47, v91, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v42, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v89, s2
	v_cndmask_b32_e64 v44, v44, v86, s2
	v_cndmask_b32_e64 v46, v46, v90, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v120, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v72, v43, s3
	v_cndmask_b32_e64 v65, v65, v75, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v41, v125, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v74, s3
	v_cndmask_b32_e64 v61, v61, v77, s3
	v_cndmask_b32_e64 v60, v60, v76, s3
	v_cndmask_b32_e64 v8, v8, v81, s3
	v_cndmask_b32_e64 v41, v44, v41, s3
	v_cndmask_b32_e64 v40, v48, v40, s3
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v148, v85, v57
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v94, v17 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v95 offset:33792
	ds_load_b128 v[21:24], v95 offset:33808
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v85, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v26, v119, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v79, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v18, v18, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v149, v82, v56
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v24, v24, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v151, v80, v49
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v22, v53
	v_mul_f32_e32 v17, v17, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v82, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v20, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v27, v122, v52
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v130, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v25, v118, v56
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[25:28], v95 offset:34304
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v34, v121, v49
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[31:34], v95 offset:34320
	v_mul_f32_e32 v19, v19, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v110, v36
	v_fma_f32 v18, v18, v128, v35
	v_fma_f32 v20, v20, v132, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v67, v22, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v131, v70
	v_fma_f32 v24, v24, v134, v63
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v35, v18, s3
	v_cndmask_b32_e64 v17, v36, v17, s3
	v_cndmask_b32_e64 v20, v71, v20, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v21, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v70, v19, s3
	v_cndmask_b32_e64 v24, v63, v24, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v35, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v23, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v129, v66
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v28, v28, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v153, v83, v45
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v31, v31, v53
	v_mul_f32_e32 v34, v34, v53
	v_mul_f32_e32 v25, v25, v53
	v_mul_f32_e32 v32, v32, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v83, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v137, v50
	v_fma_f32 v34, v34, v142, v47
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v26, v53
	v_mul_f32_e32 v33, v33, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v42, v124, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v135, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v50, v31, s3
	v_cndmask_b32_e64 v34, v47, v34, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v136, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v45, v42, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v138, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v58, v25, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v19
	v_dual_mul_f32 v50, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v51, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v27, v27, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v133, v62
	v_fma_f32 v33, v33, v141, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v66, v21, s3
	v_cndmask_b32_e64 v26, v59, v26, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v58
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v63
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v27, v27, v139, v54
	v_fma_f32 v28, v28, v140, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v62, v23, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v46, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v46, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	v_cndmask_b32_e64 v58, 0, 0x42800000, s12
	v_cndmask_b32_e64 v63, 0, 0x42800000, s13
	v_dual_fmac_f32 v36, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v35, 0xbfb8aa3b, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v78, s3
	v_cndmask_b32_e64 v52, v52, v80, s3
	v_cndmask_b32_e64 v49, v49, v82, s3
	v_cndmask_b32_e64 v28, v55, v28, s3
	v_cndmask_b32_e64 v27, v54, v27, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	v_mul_f32_e32 v62, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v44, 0, 0x42800000, s2
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v34
	v_exp_f32_e32 v35, v35
	v_dual_mul_f32 v54, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v48
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v51
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v62
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v22
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v63, v63
	v_cndmask_b32_e64 v50, 0, 0x42800000, s5
	v_cndmask_b32_e64 v48, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v55
	v_cndmask_b32_e64 v53, 0, 0x42800000, s7
	v_cndmask_b32_e64 v51, 0, 0x42800000, s8
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v21
	v_exp_f32_e32 v45, v45
	v_cndmask_b32_e64 v62, 0, 0x42800000, s14
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s13
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v35, v35, v67
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v54
	v_cndmask_b32_e64 v55, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v59
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v28
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v26
	v_exp_f32_e32 v46, v46
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s2
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v33 :: v_dual_add_f32 v35, 1.0, v35
	v_ldexp_f32 v36, v36, v66
	v_ldexp_f32 v58, v58, v81
	v_ldexp_f32 v63, v63, v82
	v_cndmask_b32_e64 v54, 0, 0x42800000, s10
	v_cndmask_b32_e64 v59, 0, 0x42800000, s11
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s3
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s4
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v45, v45, v70
	v_ldexp_f32 v44, v44, v71
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_add_f32 v63, 1.0, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v35, v35, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v32
	v_exp_f32_e32 v53, v53
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s6
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v47, v47, v72
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s8
	v_ldexp_f32 v46, v46, v73
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v62, v62
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v44, 1.0, v44 :: v_dual_add_f32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v36, v36, v18
	v_div_scale_f32 v96, null, v63, v63, v34
	v_rcp_f32_e32 v101, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s7
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s9
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v50, v50, v74
	v_ldexp_f32 v48, v48, v75
	v_ldexp_f32 v51, v51, v77
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v45, v45, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, s14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v44, v44, v19
	v_rcp_f32_e32 v100, v66
	v_rcp_f32_e32 v114, v96
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s10
	v_ldexp_f32 v53, v53, v76
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s11
	v_ldexp_f32 v55, v55, v78
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v76, null, v47, v47, v22
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v78, null, v46, v46, v21
	v_rcp_f32_e32 v102, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v62, v62, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v103, v74
	v_fma_f32 v117, -v70, v101, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v54, v54, v79
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v59, v59, v80
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v80, null, v50, v50, v24
	v_div_scale_f32 v82, null, v48, v48, v23
	v_rcp_f32_e32 v104, v76
	v_rcp_f32_e32 v105, v78
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_fmac_f32 v101, v117, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, s0, v17, v35, v17
	v_fma_f32 v116, -v66, v100, 1.0
	v_fma_f32 v130, -v96, v114, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_add_f32 v59, 1.0, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v84, null, v53, v53, v26
	v_div_scale_f32 v86, null, v51, v51, v25
	v_rcp_f32_e32 v106, v80
	v_rcp_f32_e32 v107, v82
	v_fma_f32 v118, -v72, v102, 1.0
	v_div_scale_f32 v67, vcc_lo, v18, v36, v18
	v_fma_f32 v119, -v74, v103, 1.0
	v_fmac_f32_e32 v100, v116, v100
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v117, v71, v101
	v_div_scale_f32 v88, null, v55, v55, v28
	v_div_scale_f32 v90, null, v54, v54, v27
	v_rcp_f32_e32 v108, v84
	v_rcp_f32_e32 v109, v86
	v_fma_f32 v120, -v76, v104, 1.0
	v_div_scale_f32 v73, s1, v20, v45, v20
	v_fma_f32 v121, -v78, v105, 1.0
	v_fmac_f32_e32 v102, v118, v102
	v_div_scale_f32 v75, s2, v19, v44, v19
	v_fmac_f32_e32 v103, v119, v103
	v_fma_f32 v133, -v70, v117, v71
	v_mul_f32_e32 v116, v67, v100
	v_div_scale_f32 v92, null, v59, v59, v32
	v_div_scale_f32 v94, null, v58, v58, v31
	v_rcp_f32_e32 v110, v88
	v_rcp_f32_e32 v111, v90
	v_div_scale_f32 v77, s3, v22, v47, v22
	v_div_scale_f32 v98, null, v62, v62, v33
	v_fma_f32 v122, -v80, v106, 1.0
	v_fma_f32 v123, -v82, v107, 1.0
	v_fmac_f32_e32 v104, v120, v104
	v_div_scale_f32 v79, s4, v21, v46, v21
	v_fmac_f32_e32 v105, v121, v105
	v_dual_mul_f32 v118, v73, v102 :: v_dual_mul_f32 v119, v75, v103
	v_fmac_f32_e32 v117, v133, v101
	v_fma_f32 v132, -v66, v116, v67
	v_rcp_f32_e32 v112, v92
	v_rcp_f32_e32 v113, v94
	v_fma_f32 v124, -v84, v108, 1.0
	v_div_scale_f32 v81, s5, v24, v50, v24
	v_div_scale_f32 v83, s6, v23, v48, v23
	v_rcp_f32_e32 v115, v98
	v_fma_f32 v125, -v86, v109, 1.0
	v_dual_fmac_f32 v106, v122, v106 :: v_dual_fmac_f32 v107, v123, v107
	v_dual_mul_f32 v120, v77, v104 :: v_dual_mul_f32 v121, v79, v105
	v_fma_f32 v134, -v72, v118, v73
	v_fma_f32 v135, -v74, v119, v75
	v_fmac_f32_e32 v116, v132, v100
	v_fma_f32 v126, -v88, v110, 1.0
	v_div_scale_f32 v85, s7, v26, v53, v26
	v_fma_f32 v127, -v90, v111, 1.0
	v_fmac_f32_e32 v108, v124, v108
	v_div_scale_f32 v87, s8, v25, v51, v25
	v_fmac_f32_e32 v109, v125, v109
	v_dual_mul_f32 v122, v81, v106 :: v_dual_mul_f32 v123, v83, v107
	v_fma_f32 v136, -v76, v120, v77
	v_fma_f32 v137, -v78, v121, v79
	v_dual_fmac_f32 v118, v134, v102 :: v_dual_fmac_f32 v119, v135, v103
	v_fma_f32 v66, -v66, v116, v67
	v_div_scale_f32 v89, s9, v28, v55, v28
	v_fma_f32 v128, -v92, v112, 1.0
	v_fma_f32 v129, -v94, v113, 1.0
	v_fmac_f32_e32 v110, v126, v110
	v_div_scale_f32 v91, s10, v27, v54, v27
	v_dual_fmac_f32 v111, v127, v111 :: v_dual_mul_f32 v124, v85, v108
	v_mul_f32_e32 v125, v87, v109
	v_fma_f32 v67, -v70, v117, v71
	v_div_scale_f32 v97, s13, v34, v63, v34
	v_fma_f32 v131, -v98, v115, 1.0
	v_fma_f32 v138, -v80, v122, v81
	v_fma_f32 v139, -v82, v123, v83
	v_dual_fmac_f32 v120, v136, v104 :: v_dual_fmac_f32 v121, v137, v105
	v_fma_f32 v70, -v72, v118, v73
	v_div_fmas_f32 v66, v66, v100, v116
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, s11, v32, v59, v32
	v_div_scale_f32 v95, s12, v31, v58, v31
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_fmac_f32 v115, v131, v115
	v_fmac_f32_e32 v113, v129, v113
	v_dual_mul_f32 v126, v89, v110 :: v_dual_mul_f32 v127, v91, v111
	v_fma_f32 v71, -v74, v119, v75
	v_fma_f32 v140, -v84, v124, v85
	v_div_fmas_f32 v67, v67, v101, v117
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v99, s14, v33, v62, v33
	v_mul_f32_e32 v130, v97, v114
	v_fma_f32 v141, -v86, v125, v87
	v_dual_fmac_f32 v122, v138, v106 :: v_dual_fmac_f32 v123, v139, v107
	v_fma_f32 v72, -v76, v120, v77
	v_div_fmas_f32 v70, v70, v102, v118
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v128, v93, v112 :: v_dual_mul_f32 v129, v95, v113
	v_fma_f32 v142, -v88, v126, v89
	v_fma_f32 v73, -v78, v121, v79
	v_div_fixup_f32 v18, v66, v36, v18
	v_div_fmas_f32 v36, v71, v103, v119
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v143, -v90, v127, v91
	v_dual_fmac_f32 v124, v140, v108 :: v_dual_mul_f32 v131, v99, v115
	v_fma_f32 v146, -v96, v130, v97
	v_fmac_f32_e32 v125, v141, v109
	v_fma_f32 v74, -v80, v122, v81
	v_div_fixup_f32 v17, v67, v35, v17
	v_div_fmas_f32 v35, v72, v104, v120
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v75, -v82, v123, v83
	v_fma_f32 v145, -v94, v129, v95
	v_fmac_f32_e32 v126, v142, v110
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v37, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v73, v105, v121
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v127, v143, v111
	v_fma_f32 v76, -v84, v124, v85
	v_dual_fmac_f32 v130, v146, v114 :: v_dual_mul_f32 v17, v43, v17
	v_div_fixup_f32 v19, v36, v44, v19
	v_div_fmas_f32 v36, v74, v106, v122
	v_div_fixup_f32 v22, v35, v47, v22
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v77, -v86, v125, v87
	v_div_fmas_f32 v35, v75, v107, v123
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v129, v145, v113
	v_fma_f32 v78, -v88, v126, v89
	v_fma_f32 v144, -v92, v128, v93
	v_div_fixup_f32 v21, v37, v46, v21
	v_div_fmas_f32 v37, v76, v108, v124
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v90, v127, v91
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.l, v17.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v65, v22
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v24, v36, v50, v24
	v_div_fmas_f32 v36, v77, v109, v125
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v23, v35, v48, v23
	v_div_fmas_f32 v35, v78, v110, v126
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v147, -v98, v131, v99
	v_fmac_f32_e32 v128, v144, v112
	v_div_fixup_f32 v20, v70, v45, v20
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v64, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v30.l, v18.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v37, v53, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v29, 1, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v79, v111, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v22.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v131, v147, v115
	v_fma_f32 v80, -v92, v128, v93
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v20, v68, v20 :: v_dual_mul_f32 v19, v69, v19
	v_dual_mul_f32 v23, v60, v23 :: v_dual_and_b32 v30, 1, v30
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_add3_u32 v17, v17, v29, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v37, v54, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v81, -v94, v129, v95
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v82, -v96, v130, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_mov_b16_e32 v16.l, v20.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v36, v51, v25
	v_div_fmas_f32 v36, v80, v112, v128
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v18, v30, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v83, -v98, v131, v99
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v19.h
	v_cmp_o_f32_e64 s4, v22, v22
	v_mov_b16_e32 v13.l, v21.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v35, v55, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v52, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v22, v14, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v30, v81, v113, v129
	s_mov_b32 vcc_lo, s13
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v24, v61, v24 :: v_dual_and_b32 v15, 1, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v82, v114, v130
	s_mov_b32 vcc_lo, s14
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v25, v56, v25 :: v_dual_and_b32 v16, 1, v16
	v_dual_mul_f32 v26, v57, v26 :: v_dual_and_b32 v13, 1, v13
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v23.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v28
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v83, v115, v131
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s4
	v_cmp_eq_u32_e64 s4, 0, v38
	v_cmp_o_f32_e64 s2, v20, v20
	v_mov_b16_e32 v12.l, v24.h
	v_add3_u32 v16, v20, v16, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v36, v59, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v15, v19, v15, 0x7fff
	v_mov_b16_e32 v10.l, v26.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v19, v30, v58, v31
	v_div_fixup_f32 v22, v29, v63, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v21, v13, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v28, v62, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v9.l, v25.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v20, v49, v20 :: v_dual_and_b32 v11, 1, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v8.h
	v_cndmask_b16 v16.l, 0x7fff, v15.h, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v15, v40, v19 :: v_dual_and_b32 v10, 1, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v42, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v41, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v24, v24
	v_cmp_o_f32_e64 s7, v23, v23
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_add3_u32 v12, v24, v12, 0x7fff
	v_mov_b16_e32 v5.l, v17.h
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v11, v23, v11, 0x7fff
	v_mov_b16_e32 v6.l, v20.h
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v2.l, v15.h
	v_mov_b16_e32 v1.l, v13.h
	v_and_b32_e32 v0, 0x540054, v0
	v_mov_b16_e32 v3.l, v19.h
	v_cmp_o_f32_e64 s0, v25, v25
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s2
	v_cmp_o_f32_e64 s1, v8, v8
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v9, v25, v9, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s7
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cndmask_b32_e64 v8, v14, v18, s4
	v_cndmask_b32_e64 v11, v18, v14, s4
	v_cndmask_b32_e64 v14, 0x3276, v39, s4
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v10, v26, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v17, v17
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v5, v17, v5, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s0
	v_add3_u32 v6, v20, v6, 0x7fff
	v_cndmask_b32_e64 v9, v12, v16, s4
	v_cndmask_b32_e64 v12, v16, v12, s4
	v_lshl_or_b32 v14, v14, 8, v14
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s6, v19, v19
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v2, v15, v2, 0x7fff
	v_add3_u32 v3, v19, v3, 0x7fff
	v_add3_u32 v1, v13, v1, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s3
	v_permlanex16_b32 v6, v12, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x760076, v14
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v12, 4, v12
	v_cndmask_b32_e64 v12, v5, v10, s4
	v_cndmask_b32_e64 v3, v10, v5, s4
	v_cndmask_b32_e64 v5, v7, v2, s4
	v_permlanex16_b32 v11, v11, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v1
	v_cndmask_b32_e64 v14, v2, v7, s4
	v_permlanex16_b32 v7, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v11, v8, v10
	v_perm_b32 v1, v11, v8, v13
	v_perm_b32 v2, v6, v9, v10
	v_perm_b32 v3, v6, v9, v13
	v_perm_b32 v5, v7, v12, v10
	v_perm_b32 v6, v7, v12, v13
	v_perm_b32 v7, v15, v14, v10
	v_perm_b32 v8, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v4, s[24:27], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 172
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13860
; TotalNumSgprs: 51
; NumVgprs: 172
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     172
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
