	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v72, 0xf0, v0
	v_and_b32_e32 v15, 8, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshrrev_b32_e32 v9, 3, v72
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
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
	s_lshl_b32 s33, s2, 5
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
	v_and_b32_e32 v71, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s33, s31
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v10, v71, 4, v1
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v20, v71, 9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s34, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s27, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v21, 0x90, v20
	v_add_nc_u32_e32 v61, 0, v20
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	buffer_load_b128 v[31:34], v7, s[36:39], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v14, s34, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v22, 0x110, v20
	v_add_nc_u32_e32 v62, 0, v21
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v11, 28, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v7, s31, v7
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v2, 0x37c, v2
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s30, v11
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v7, v11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s30, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s30, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v8, s35, v9
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s34, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x1
	buffer_load_b128 v[35:38], v1, s[36:39], 0 offen
	buffer_load_b128 v[39:42], v8, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v13, s4
	v_cndmask_b32_e64 v8, 0x80000000, v14, s4
	s_clause 0x1
	buffer_load_b128 v[43:46], v1, s[36:39], 0 offen
	buffer_load_b128 v[47:50], v8, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v1, 0x80000000, v7 :: v_dual_lshlrev_b32 v14, 5, v0
	v_and_b32_e32 v13, 4, v0
	buffer_load_b32 v59, v1, s[8:11], 0 offen
	v_bfe_i32 v1, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 0x90, v1
	v_lshlrev_b32_e32 v1, 4, v0
	v_xor_b32_e32 v16, v7, v2
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s35, v11
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s35, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v60, 0, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v64, v7, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v7, v23, v3, 0x5010400
	v_perm_b32 v8, v23, v3, 0x7030602
	v_perm_b32 v17, v24, v4, 0x5010400
	v_perm_b32 v18, v24, v4, 0x7030602
	v_perm_b32 v19, v25, v5, 0x5010400
	v_perm_b32 v24, v26, v6, 0x5010400
	v_perm_b32 v23, v25, v5, 0x7030602
	v_perm_b32 v25, v26, v6, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v52, 8, v8
	v_lshrrev_b32_e32 v54, 8, v17
	v_lshrrev_b32_e32 v56, 8, v18
	v_lshrrev_b32_e32 v65, 24, v19
	v_lshrrev_b32_e32 v68, 8, v24
	v_lshrrev_b32_e32 v69, 24, v24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v31, v27, 0x5010400
	v_perm_b32 v75, v31, v27, 0x7030602
	v_perm_b32 v78, v33, v29, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v51, 24, v7
	v_lshrrev_b32_e32 v53, 24, v8
	v_lshrrev_b32_e32 v55, 24, v17
	v_lshrrev_b32_e32 v57, 24, v18
	v_lshrrev_b32_e32 v66, 8, v23
	v_lshrrev_b32_e32 v70, 8, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v79, v33, v29, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v58, 8, v19
	v_lshrrev_b32_e32 v67, 24, v23
	v_lshrrev_b32_e32 v73, 24, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v76, v32, v28, 0x5010400
	v_perm_b32 v80, v34, v30, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v3.l, 0xff, v7.l
	v_and_b16 v3.h, 0xff, v7.h
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v5.l, 0xff, v17.l
	v_and_b16 v6.l, 0xff, v18.l
	v_and_b16 v7.l, 0xff, v19.l
	v_and_b16 v7.h, 0xff, v19.h
	v_and_b16 v8.l, 0xff, v23.l
	v_and_b16 v17.l, 0xff, v24.l
	v_and_b16 v18.l, 0xff, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v77, v32, v28, 0x7030602
	v_perm_b32 v81, v34, v30, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v19.l, 8, v26.l
	v_lshlrev_b16 v23.l, 8, v52.l
	v_lshlrev_b16 v24.l, 8, v54.l
	v_lshlrev_b16 v25.l, 8, v56.l
	v_lshlrev_b16 v26.h, 8, v65.l
	v_lshlrev_b16 v28.l, 8, v68.l
	v_lshlrev_b16 v28.h, 8, v69.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v54, 8, v74
	v_lshrrev_b32_e32 v56, 8, v75
	v_and_b16 v34.l, 0xff, v78.l
	v_lshrrev_b32_e32 v68, 8, v78
	v_lshrrev_b32_e32 v69, 24, v78
	v_and_b16 v34.h, 0xff, v78.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v17.h
	v_and_b16 v6.h, 0xff, v18.h
	v_and_b16 v8.h, 0xff, v23.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v78, v39, v35, 0x5010400
	v_and_b16 v17.h, 0xff, v24.h
	v_and_b16 v18.h, 0xff, v25.h
	v_lshlrev_b16 v19.h, 8, v51.l
	v_lshlrev_b16 v23.h, 8, v53.l
	v_lshlrev_b16 v24.h, 8, v55.l
	v_lshlrev_b16 v25.h, 8, v57.l
	v_lshlrev_b16 v27.l, 8, v66.l
	v_lshlrev_b16 v29.l, 8, v70.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v55, 24, v74
	v_lshrrev_b32_e32 v57, 24, v75
	v_lshrrev_b32_e32 v70, 8, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.l, 8, v58.l
	v_lshlrev_b16 v27.h, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v73.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v58, 8, v76
	v_lshrrev_b32_e32 v73, 24, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v39, v39, v35, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v30.l, 0xff, v74.l
	v_and_b16 v30.h, 0xff, v74.h
	v_lshrrev_b32_e32 v65, 24, v76
	v_lshrrev_b32_e32 v74, 8, v80
	s_waitcnt vmcnt(2)
	v_perm_b32 v83, v47, v43, 0x5010400
	v_and_b16 v31.l, 0xff, v75.l
	v_and_b16 v31.h, 0xff, v75.h
	v_and_b16 v32.l, 0xff, v76.l
	v_and_b16 v32.h, 0xff, v76.h
	v_and_b16 v33.l, 0xff, v77.l
	v_lshrrev_b32_e32 v66, 8, v77
	v_lshrrev_b32_e32 v67, 24, v77
	v_and_b16 v33.h, 0xff, v77.h
	v_and_b16 v51.l, 0xff, v79.l
	v_and_b16 v51.h, 0xff, v79.h
	v_and_b16 v52.l, 0xff, v80.l
	v_lshrrev_b32_e32 v75, 24, v80
	v_and_b16 v52.h, 0xff, v80.h
	v_and_b16 v53.l, 0xff, v81.l
	v_lshrrev_b32_e32 v76, 8, v81
	v_lshrrev_b32_e32 v77, 24, v81
	v_and_b16 v53.h, 0xff, v81.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v79, v40, v36, 0x5010400
	v_perm_b32 v40, v40, v36, 0x7030602
	v_perm_b32 v80, v41, v37, 0x5010400
	v_perm_b32 v41, v41, v37, 0x7030602
	v_perm_b32 v81, v42, v38, 0x5010400
	v_perm_b32 v82, v42, v38, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v47, v47, v43, 0x7030602
	v_perm_b32 v84, v48, v44, 0x5010400
	v_perm_b32 v48, v48, v44, 0x7030602
	v_perm_b32 v85, v49, v45, 0x5010400
	v_perm_b32 v49, v49, v45, 0x7030602
	v_perm_b32 v86, v50, v46, 0x5010400
	v_perm_b32 v87, v50, v46, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v4.l, v4.l, v23.l
	v_or_b16 v7.h, v7.h, v26.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v19.l, 8, v54.l
	v_lshlrev_b16 v23.l, 8, v56.l
	v_lshlrev_b16 v26.h, 8, v69.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v54, 8, v78
	v_or_b16 v3.h, v3.h, v19.h
	v_or_b16 v4.h, v4.h, v23.h
	v_or_b16 v8.l, v8.l, v27.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v19.h, 8, v55.l
	v_lshlrev_b16 v23.h, 8, v57.l
	v_lshlrev_b16 v27.l, 8, v70.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v55, 24, v78
	v_or_b16 v5.l, v5.l, v24.l
	v_or_b16 v8.h, v8.h, v27.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v24.l, 8, v58.l
	v_lshlrev_b16 v27.h, 8, v73.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v56, 8, v39
	v_or_b16 v5.h, v5.h, v24.h
	v_or_b16 v17.l, v17.l, v28.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v24.h, 8, v65.l
	v_lshlrev_b16 v28.l, 8, v74.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v57, 24, v39
	v_and_b16 v35.l, 0xff, v78.l
	v_and_b16 v35.h, 0xff, v78.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v78, 8, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v6.l, v25.l
	v_or_b16 v6.h, v6.h, v25.h
	v_or_b16 v7.l, v7.l, v26.l
	v_or_b16 v17.h, v17.h, v28.h
	v_or_b16 v18.l, v18.l, v29.l
	v_or_b16 v18.h, v18.h, v29.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v25.l, 8, v66.l
	v_lshlrev_b16 v25.h, 8, v67.l
	v_lshlrev_b16 v26.l, 8, v68.l
	v_lshlrev_b16 v28.h, 8, v75.l
	v_lshlrev_b16 v29.l, 8, v76.l
	v_lshlrev_b16 v29.h, 8, v77.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v36.l, 0xff, v39.l
	v_and_b16 v36.h, 0xff, v39.h
	v_and_b16 v37.l, 0xff, v79.l
	v_lshrrev_b32_e32 v58, 8, v79
	v_lshrrev_b32_e32 v65, 24, v79
	v_and_b16 v37.h, 0xff, v79.h
	v_and_b16 v38.l, 0xff, v40.l
	v_lshrrev_b32_e32 v66, 8, v40
	v_lshrrev_b32_e32 v67, 24, v40
	v_and_b16 v38.h, 0xff, v40.h
	v_and_b16 v39.l, 0xff, v80.l
	v_lshrrev_b32_e32 v68, 8, v80
	v_lshrrev_b32_e32 v69, 24, v80
	v_and_b16 v39.h, 0xff, v80.h
	v_and_b16 v40.l, 0xff, v41.l
	v_lshrrev_b32_e32 v70, 8, v41
	v_lshrrev_b32_e32 v73, 24, v41
	v_and_b16 v40.h, 0xff, v41.h
	v_and_b16 v41.l, 0xff, v81.l
	v_lshrrev_b32_e32 v74, 8, v81
	v_lshrrev_b32_e32 v75, 24, v81
	v_and_b16 v41.h, 0xff, v81.h
	v_and_b16 v42.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v42.h, 0xff, v82.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v43.l, 0xff, v83.l
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v43.h, 0xff, v83.h
	v_and_b16 v44.l, 0xff, v47.l
	v_lshrrev_b32_e32 v80, 8, v47
	v_lshrrev_b32_e32 v81, 24, v47
	v_and_b16 v44.h, 0xff, v47.h
	v_and_b16 v45.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v45.h, 0xff, v84.h
	v_and_b16 v46.l, 0xff, v48.l
	v_lshrrev_b32_e32 v84, 8, v48
	v_lshrrev_b32_e32 v88, 24, v48
	v_and_b16 v46.h, 0xff, v48.h
	v_and_b16 v47.l, 0xff, v85.l
	v_lshrrev_b32_e32 v89, 8, v85
	v_lshrrev_b32_e32 v90, 24, v85
	v_and_b16 v47.h, 0xff, v85.h
	v_and_b16 v48.l, 0xff, v49.l
	v_lshrrev_b32_e32 v85, 8, v49
	v_lshrrev_b32_e32 v91, 24, v49
	v_and_b16 v48.h, 0xff, v49.h
	v_and_b16 v49.l, 0xff, v86.l
	v_lshrrev_b32_e32 v92, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_and_b16 v49.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v94, 24, v87
	v_or_b16 v19.l, v30.l, v19.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v3
	ds_store_b16_d16_hi v61, v3 offset:32
	ds_store_b16 v61, v4 offset:64
	ds_store_b16_d16_hi v61, v4 offset:96
	ds_store_b16_d16_hi v62, v5 offset:32
	ds_store_b16 v62, v6 offset:64
	ds_store_b16_d16_hi v62, v6 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.h, v31.l, v23.l
	v_or_b16 v23.l, v34.h, v26.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.h, 8, v54.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.l, v31.h, v23.h
	v_or_b16 v23.h, v51.l, v27.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.l, 8, v55.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.h, v32.l, v24.l
	v_or_b16 v24.l, v51.h, v27.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.h, 8, v56.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v5.h, v32.h, v24.h
	v_or_b16 v24.h, v52.l, v28.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v28.l, 8, v57.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.l, v30.h, v19.h
	v_lshlrev_b16 v34.h, 8, v78.l
	v_and_b16 v50.l, 0xff, v87.l
	v_and_b16 v50.h, 0xff, v87.h
	v_or_b16 v6.l, v33.l, v25.l
	v_or_b16 v6.h, v33.h, v25.h
	v_or_b16 v19.h, v34.l, v26.l
	v_or_b16 v25.l, v52.h, v28.h
	v_or_b16 v25.h, v53.l, v29.l
	v_or_b16 v26.l, v53.h, v29.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v28.h, 8, v58.l
	v_lshlrev_b16 v29.l, 8, v65.l
	v_lshlrev_b16 v29.h, 8, v66.l
	v_lshlrev_b16 v30.l, 8, v67.l
	v_lshlrev_b16 v30.h, 8, v68.l
	v_lshlrev_b16 v31.l, 8, v69.l
	v_lshlrev_b16 v31.h, 8, v70.l
	v_lshlrev_b16 v32.l, 8, v73.l
	v_lshlrev_b16 v32.h, 8, v74.l
	v_lshlrev_b16 v33.l, 8, v75.l
	v_lshlrev_b16 v33.h, 8, v76.l
	v_lshlrev_b16 v34.l, 8, v77.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v51.l, 8, v79.l
	v_lshlrev_b16 v51.h, 8, v80.l
	v_lshlrev_b16 v52.l, 8, v81.l
	v_lshlrev_b16 v52.h, 8, v82.l
	v_lshlrev_b16 v53.l, 8, v83.l
	v_lshlrev_b16 v53.h, 8, v84.l
	v_lshlrev_b16 v54.l, 8, v88.l
	v_lshlrev_b16 v54.h, 8, v89.l
	v_lshlrev_b16 v55.l, 8, v90.l
	v_lshlrev_b16 v55.h, 8, v85.l
	v_lshlrev_b16 v56.l, 8, v91.l
	v_lshlrev_b16 v56.h, 8, v92.l
	v_lshlrev_b16 v57.l, 8, v93.l
	v_lshlrev_b16 v57.h, 8, v86.l
	v_lshlrev_b16 v58.l, 8, v94.l
	ds_store_b16 v61, v19 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v5
	ds_store_b16 v63, v7
	ds_store_b16_d16_hi v63, v7 offset:32
	ds_store_b16 v63, v8 offset:64
	ds_store_b16_d16_hi v63, v8 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v60, v59 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v61, v3 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v17 offset:384
	ds_store_b16_d16_hi v61, v17 offset:416
	ds_store_b16 v61, v18 offset:448
	ds_store_b16_d16_hi v61, v18 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v61, v3 offset:16416
	ds_store_b16 v61, v4 offset:16480
	ds_store_b16_d16_hi v62, v4 offset:16384
	ds_store_b16_d16_hi v62, v5 offset:16416
	ds_store_b16 v62, v6 offset:16448
	ds_store_b16_d16_hi v62, v6 offset:16480
	ds_store_b16_d16_hi v63, v19 offset:16384
	ds_store_b16 v63, v23 offset:16416
	ds_store_b16_d16_hi v63, v23 offset:16448
	ds_store_b16 v63, v24 offset:16480
	ds_store_b16_d16_hi v61, v24 offset:16768
	ds_store_b16 v61, v25 offset:16800
	ds_store_b16_d16_hi v61, v25 offset:16832
	ds_store_b16 v61, v26 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v35.l, v26.h
	v_or_b16 v3.h, v35.h, v27.l
	v_or_b16 v4.l, v36.l, v27.h
	v_or_b16 v4.h, v36.h, v28.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v19.l, v43.l, v34.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v37.l, v28.h
	v_or_b16 v5.h, v37.h, v29.l
	v_or_b16 v6.l, v38.l, v29.h
	v_or_b16 v6.h, v38.h, v30.l
	v_or_b16 v7.l, v39.l, v30.h
	v_or_b16 v7.h, v39.h, v31.l
	v_or_b16 v8.l, v40.l, v31.h
	v_or_b16 v8.h, v40.h, v32.l
	v_or_b16 v17.l, v41.l, v32.h
	v_or_b16 v17.h, v41.h, v33.l
	v_or_b16 v18.l, v42.l, v33.h
	v_or_b16 v18.h, v42.h, v34.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v19.h, v43.h, v51.l
	v_or_b16 v23.l, v44.l, v51.h
	v_or_b16 v23.h, v44.h, v52.l
	v_or_b16 v24.l, v45.l, v52.h
	v_or_b16 v24.h, v45.h, v53.l
	v_or_b16 v25.l, v46.l, v53.h
	v_or_b16 v25.h, v46.h, v54.l
	v_or_b16 v26.l, v47.l, v54.h
	v_or_b16 v26.h, v47.h, v55.l
	v_or_b16 v27.l, v48.l, v55.h
	v_or_b16 v27.h, v48.h, v56.l
	v_or_b16 v28.l, v49.l, v56.h
	v_or_b16 v28.h, v49.h, v57.l
	v_or_b16 v29.l, v50.l, v57.h
	v_or_b16 v29.h, v50.h, v58.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v3 offset:8192
	ds_store_b16_d16_hi v61, v3 offset:8224
	ds_store_b16 v61, v4 offset:8256
	ds_store_b16_d16_hi v61, v4 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v61, v19 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v5 offset:8192
	ds_store_b16_d16_hi v62, v5 offset:8224
	ds_store_b16 v62, v6 offset:8256
	ds_store_b16_d16_hi v62, v6 offset:8288
	ds_store_b16 v63, v7 offset:8192
	ds_store_b16_d16_hi v63, v7 offset:8224
	ds_store_b16 v63, v8 offset:8256
	ds_store_b16_d16_hi v63, v8 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v60, v64 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v61, v23 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v17 offset:8576
	ds_store_b16_d16_hi v61, v17 offset:8608
	ds_store_b16 v61, v18 offset:8640
	ds_store_b16_d16_hi v61, v18 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v61, v19 offset:24608
	ds_store_b16_d16_hi v61, v23 offset:24672
	ds_store_b16 v62, v24 offset:24576
	ds_store_b16_d16_hi v62, v24 offset:24608
	ds_store_b16 v62, v25 offset:24640
	ds_store_b16_d16_hi v62, v25 offset:24672
	ds_store_b16 v63, v26 offset:24576
	ds_store_b16_d16_hi v63, v26 offset:24608
	ds_store_b16 v63, v27 offset:24640
	ds_store_b16_d16_hi v63, v27 offset:24672
	ds_store_b16 v61, v28 offset:24960
	ds_store_b16_d16_hi v61, v28 offset:24992
	ds_store_b16 v61, v29 offset:25024
	ds_store_b16_d16_hi v61, v29 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v25, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0xe00, v1
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
.LBB0_3:                                ; %Flow613
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s33, v71
	v_or_b32_e32 v2, s33, v2
	s_ashr_i32 s1, s6, 7
	v_or_b32_e32 v146, s26, v0
	v_lshlrev_b32_e32 v18, 2, v72
	v_mul_lo_u32 v147, v5, s1
	v_mul_lo_u32 v142, v2, s1
	v_lshlrev_b32_e32 v19, 1, v0
	v_lshlrev_b32_e32 v17, 1, v72
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v2, 0x90, v2
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0xe00, v1
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v24, 0x160, v14
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v31, 28, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v23, 0x60, v14, v1
	v_xor_b32_e32 v1, v2, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v26, v2, v24
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s34, v10
	v_add_nc_u32_e32 v30, s27, v146
	v_mov_b32_e32 v102, 0
	v_or_b32_e32 v27, v23, v1
	v_and_b32_e32 v1, 32, v14
	v_xor_b32_e32 v28, 16, v26
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v94, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v29, 16, v27
	v_add3_u32 v32, 0, v18, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v31, v32, v31
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v32, 0, v17
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v49, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s48, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s47, s35, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s49, 1
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
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
	s_lshl_b32 s21, s17, 5
	s_mov_b32 s0, s15
	s_mov_b32 s20, s30
	s_mov_b32 s30, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s47, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v35, s0, v26
	v_add_nc_u32_e32 v36, s0, v28
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s20, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v33, s35, v11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s18, s16
	s_add_i32 s20, s20, s0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v34, s35, v12
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v37, s18, v27
	v_add_nc_u32_e32 v38, s18, v29
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s34
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s20, s20, 7
	s_mov_b32 s19, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s18, s18, s26
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s21, s20, s34
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v39, s19, v27
	v_add_nc_u32_e32 v40, s19, v29
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	s_add_i32 s19, s18, s27
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v41, v146, s21, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v33, 0x80000000, v34, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v34, v147, s20, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s20, s1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v116, v30, s21, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v43, s18, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v42, 0x80000000, v34, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v34, 0x80000000, v41, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v33, v33, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v41, s35, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v47, s18, v25
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v115, v142, s20, 1
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v48, s19, v25
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v41
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v41, s19, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[131:134], v37
	ds_load_b128 v[148:151], v37 offset:4096
	ds_load_b128 v[192:195], v38
	ds_load_b128 v[196:199], v38 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[172:175], v39
	ds_load_b128 v[200:203], v39 offset:4096
	ds_load_b128 v[204:207], v40
	ds_load_b128 v[208:211], v40 offset:4096
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v38, 0x80000000, v115, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s49, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v117, 0x80000000, v43, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[43:46], v35
	ds_load_b128 v[180:183], v35 offset:512
	ds_load_b128 v[184:187], v36
	ds_load_b128 v[188:191], v36 offset:512
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v35, 0x80000000, v47, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v36, 0x80000000, v41, s0
	v_cndmask_b32_e64 v37, 0x80000000, v48, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v47, 0x80000000, v116, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[212:215], v117, s[36:39], 0 offen
	buffer_load_b128 v[216:219], v35, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v48, v42, s[4:7], 0 offen
	buffer_load_u16 v139, v38, s[4:7], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[220:223], v36, s[36:39], 0 offen
	buffer_load_b128 v[224:227], v37, s[36:39], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s18, 2
	s_mov_b32 s16, s46
	s_cselect_b32 s49, s18, 0
	s_add_i32 s0, s17, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s49, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s18, s49, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s19, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s18, s18, 0
	s_mov_b32 s15, s45
	s_mov_b32 s14, s44
	s_add_i32 s45, s18, 0x8000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[131:134], v[43:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[148:151], v[43:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[131:134], v[180:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[148:151], v[180:183], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[148:155], v[172:175], v[43:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[200:203], v[43:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[180:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[200:203], v[180:183], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[192:195], v[184:187], v[35:42] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[196:199], v[184:187], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[192:195], v[188:191], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[196:199], v[188:191], v[131:138] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[148:155], v[204:207], v[184:187], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[208:211], v[184:187], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[204:207], v[188:191], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[208:211], v[188:191], v[172:179] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v180, v36
	v_cvt_f32_i32_e32 v181, v35
	v_cvt_f32_i32_e32 v184, v38
	v_cvt_f32_i32_e32 v185, v37
	v_cvt_f32_i32_e32 v187, v40
	v_cvt_f32_i32_e32 v188, v39
	v_cvt_f32_i32_e32 v189, v42
	v_cvt_f32_i32_e32 v190, v41
	v_cvt_f32_i32_e32 v191, v116
	v_cvt_f32_i32_e32 v192, v115
	v_cvt_f32_i32_e32 v193, v118
	v_cvt_f32_i32_e32 v194, v117
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v182, v149
	v_cvt_f32_i32_e32 v183, v148
	v_cvt_f32_i32_e32 v186, v150
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v195, v120
	v_cvt_f32_i32_e32 v196, v119
	v_cvt_f32_i32_e32 v197, v122
	v_cvt_f32_i32_e32 v198, v121
	v_cvt_f32_i32_e32 v199, v124
	v_cvt_f32_i32_e32 v200, v123
	v_cvt_f32_i32_e32 v202, v126
	v_cvt_f32_i32_e32 v203, v125
	v_cvt_f32_i32_e32 v204, v128
	v_cvt_f32_i32_e32 v205, v127
	v_cvt_f32_i32_e32 v206, v130
	v_cvt_f32_i32_e32 v207, v129
	v_cvt_f32_i32_e32 v208, v132
	v_cvt_f32_i32_e32 v209, v131
	v_cvt_f32_i32_e32 v210, v134
	v_cvt_f32_i32_e32 v211, v133
	v_cvt_f32_i32_e32 v232, v136
	v_cvt_f32_i32_e32 v233, v135
	v_cvt_f32_i32_e32 v234, v138
	v_cvt_f32_i32_e32 v235, v137
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v178, v178
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v31, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v201, v47, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v34, v216, v212, 0x5010400
	v_perm_b32 v35, v216, v212, 0x7030602
	v_perm_b32 v36, v217, v213, 0x5010400
	v_perm_b32 v37, v217, v213, 0x7030602
	v_perm_b32 v38, v218, v214, 0x5010400
	v_perm_b32 v39, v218, v214, 0x7030602
	v_perm_b32 v40, v219, v215, 0x5010400
	v_perm_b32 v41, v219, v215, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v42, v224, v220, 0x5010400
	v_perm_b32 v43, v224, v220, 0x7030602
	v_perm_b32 v44, v225, v221, 0x5010400
	v_perm_b32 v45, v225, v221, 0x7030602
	v_perm_b32 v115, v226, v222, 0x5010400
	v_perm_b32 v116, v226, v222, 0x7030602
	v_perm_b32 v117, v227, v223, 0x5010400
	v_perm_b32 v118, v227, v223, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v213, 16, v139
	v_lshlrev_b32_e32 v212, 16, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v46.l, 0xff, v34.l
	v_lshrrev_b32_e32 v132, 8, v34
	v_lshrrev_b32_e32 v133, 24, v34
	v_and_b16 v46.h, 0xff, v34.h
	v_and_b16 v47.l, 0xff, v35.l
	v_lshrrev_b32_e32 v134, 8, v35
	v_lshrrev_b32_e32 v135, 24, v35
	v_and_b16 v47.h, 0xff, v35.h
	v_and_b16 v48.l, 0xff, v36.l
	v_lshrrev_b32_e32 v136, 8, v36
	v_lshrrev_b32_e32 v137, 24, v36
	v_and_b16 v48.h, 0xff, v36.h
	v_and_b16 v119.l, 0xff, v37.l
	v_lshrrev_b32_e32 v138, 8, v37
	v_lshrrev_b32_e32 v139, 24, v37
	v_and_b16 v119.h, 0xff, v37.h
	v_and_b16 v120.l, 0xff, v38.l
	v_lshrrev_b32_e32 v140, 8, v38
	v_lshrrev_b32_e32 v141, 24, v38
	v_and_b16 v120.h, 0xff, v38.h
	v_and_b16 v121.l, 0xff, v39.l
	v_lshrrev_b32_e32 v143, 8, v39
	v_lshrrev_b32_e32 v144, 24, v39
	v_and_b16 v121.h, 0xff, v39.h
	v_and_b16 v122.l, 0xff, v40.l
	v_lshrrev_b32_e32 v145, 8, v40
	v_lshrrev_b32_e32 v148, 24, v40
	v_and_b16 v122.h, 0xff, v40.h
	v_and_b16 v123.l, 0xff, v41.l
	v_lshrrev_b32_e32 v149, 8, v41
	v_lshrrev_b32_e32 v150, 24, v41
	v_and_b16 v123.h, 0xff, v41.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v124.l, 0xff, v42.l
	v_lshrrev_b32_e32 v214, 8, v42
	v_lshrrev_b32_e32 v215, 24, v42
	v_and_b16 v124.h, 0xff, v42.h
	v_and_b16 v125.l, 0xff, v43.l
	v_lshrrev_b32_e32 v216, 8, v43
	v_lshrrev_b32_e32 v217, 24, v43
	v_and_b16 v125.h, 0xff, v43.h
	v_and_b16 v126.l, 0xff, v44.l
	v_lshrrev_b32_e32 v218, 8, v44
	v_lshrrev_b32_e32 v219, 24, v44
	v_and_b16 v126.h, 0xff, v44.h
	v_and_b16 v127.l, 0xff, v45.l
	v_lshrrev_b32_e32 v220, 8, v45
	v_lshrrev_b32_e32 v221, 24, v45
	v_and_b16 v127.h, 0xff, v45.h
	v_and_b16 v128.l, 0xff, v115.l
	v_lshrrev_b32_e32 v222, 8, v115
	v_lshrrev_b32_e32 v223, 24, v115
	v_and_b16 v128.h, 0xff, v115.h
	v_and_b16 v129.l, 0xff, v116.l
	v_lshrrev_b32_e32 v224, 8, v116
	v_lshrrev_b32_e32 v225, 24, v116
	v_and_b16 v129.h, 0xff, v116.h
	v_and_b16 v130.l, 0xff, v117.l
	v_lshrrev_b32_e32 v226, 8, v117
	v_lshrrev_b32_e32 v227, 24, v117
	v_and_b16 v130.h, 0xff, v117.h
	v_and_b16 v131.l, 0xff, v118.l
	v_lshrrev_b32_e32 v236, 8, v118
	v_lshrrev_b32_e32 v237, 24, v118
	v_and_b16 v131.h, 0xff, v118.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[34:37], v32 offset:34816
	ds_load_b128 v[38:41], v32 offset:34832
	ds_load_b128 v[42:45], v32 offset:35328
	ds_load_b128 v[115:118], v32 offset:35344
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v132.h, 8, v133.l
	v_lshlrev_b16 v133.l, 8, v134.l
	v_lshlrev_b16 v133.h, 8, v135.l
	v_lshlrev_b16 v135.l, 8, v138.l
	v_lshlrev_b16 v138.l, 8, v145.l
	v_lshlrev_b16 v138.h, 8, v148.l
	v_lshlrev_b16 v139.h, 8, v150.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v150.l, 8, v236.l
	v_lshlrev_b16 v150.h, 8, v237.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v132.l, 8, v132.l
	v_lshlrev_b16 v134.l, 8, v136.l
	v_lshlrev_b16 v134.h, 8, v137.l
	v_lshlrev_b16 v135.h, 8, v139.l
	v_lshlrev_b16 v136.l, 8, v140.l
	v_lshlrev_b16 v136.h, 8, v141.l
	v_lshlrev_b16 v137.l, 8, v143.l
	v_lshlrev_b16 v137.h, 8, v144.l
	v_lshlrev_b16 v139.l, 8, v149.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v140.l, 8, v214.l
	v_lshlrev_b16 v140.h, 8, v215.l
	v_lshlrev_b16 v141.l, 8, v216.l
	v_lshlrev_b16 v141.h, 8, v217.l
	v_lshlrev_b16 v143.l, 8, v218.l
	v_lshlrev_b16 v143.h, 8, v219.l
	v_lshlrev_b16 v144.l, 8, v220.l
	v_lshlrev_b16 v144.h, 8, v221.l
	v_lshlrev_b16 v145.l, 8, v222.l
	v_lshlrev_b16 v145.h, 8, v223.l
	v_lshlrev_b16 v148.l, 8, v224.l
	v_lshlrev_b16 v148.h, 8, v225.l
	v_lshlrev_b16 v149.l, 8, v226.l
	v_lshlrev_b16 v149.h, 8, v227.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v47.l, v47.l, v133.l
	v_or_b16 v47.h, v47.h, v133.h
	v_or_b16 v122.l, v122.l, v138.l
	v_or_b16 v122.h, v122.h, v138.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v131.l, v131.l, v150.l
	v_or_b16 v131.h, v131.h, v150.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v138, v41, v212
	v_mul_f32_e32 v41, v41, v213
	v_mul_f32_e32 v133, v34, v212
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v150, v117, v212
	v_dual_mul_f32 v34, v34, v213 :: v_dual_add_nc_u32 v229, s46, v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v228, s18, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v230, s46, v21
	v_add_nc_u32_e32 v231, s46, v22
	v_or_b16 v46.l, v46.l, v132.l
	v_or_b16 v46.h, v46.h, v132.h
	v_or_b16 v48.l, v48.l, v134.l
	v_or_b16 v48.h, v48.h, v134.h
	v_or_b16 v119.l, v119.l, v135.l
	v_or_b16 v119.h, v119.h, v135.h
	v_or_b16 v120.l, v120.l, v136.l
	v_or_b16 v120.h, v120.h, v136.h
	v_or_b16 v121.l, v121.l, v137.l
	v_or_b16 v121.h, v121.h, v137.h
	v_or_b16 v123.l, v123.l, v139.l
	v_or_b16 v123.h, v123.h, v139.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v124.l, v124.l, v140.l
	v_or_b16 v124.h, v124.h, v140.h
	v_or_b16 v125.l, v125.l, v141.l
	v_or_b16 v125.h, v125.h, v141.h
	v_or_b16 v126.l, v126.l, v143.l
	v_or_b16 v126.h, v126.h, v143.h
	v_or_b16 v127.l, v127.l, v144.l
	v_or_b16 v127.h, v127.h, v144.h
	v_or_b16 v128.l, v128.l, v145.l
	v_or_b16 v128.h, v128.h, v145.h
	v_or_b16 v129.l, v129.l, v148.l
	v_or_b16 v129.h, v129.h, v148.h
	v_or_b16 v130.l, v130.l, v149.l
	v_or_b16 v130.h, v130.h, v149.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v132, v35, v212
	v_mul_f32_e32 v134, v37, v212
	v_mul_f32_e32 v135, v36, v212
	v_mul_f32_e32 v136, v39, v212
	v_mul_f32_e32 v137, v38, v212
	v_mul_f32_e32 v139, v40, v212
	v_mul_f32_e32 v140, v43, v212
	v_mul_f32_e32 v141, v42, v212
	v_mul_f32_e32 v143, v45, v212
	v_mul_f32_e32 v144, v44, v212
	v_dual_mul_f32 v145, v116, v212 :: v_dual_mul_f32 v38, v38, v213
	v_mul_f32_e32 v148, v115, v212
	v_dual_mul_f32 v149, v118, v212 :: v_dual_mul_f32 v36, v36, v213
	v_mul_f32_e32 v35, v35, v213
	v_mul_f32_e32 v37, v37, v213
	v_mul_f32_e32 v39, v39, v213
	v_dual_mul_f32 v40, v40, v213 :: v_dual_fmac_f32 v99, v134, v184
	v_dual_mul_f32 v43, v43, v213 :: v_dual_fmac_f32 v94, v137, v188
	v_dual_mul_f32 v42, v42, v213 :: v_dual_fmac_f32 v103, v132, v180
	v_dual_mul_f32 v45, v45, v213 :: v_dual_fmac_f32 v90, v139, v190
	v_dual_mul_f32 v44, v44, v213 :: v_dual_fmac_f32 v79, v145, v195
	v_dual_mul_f32 v116, v116, v213 :: v_dual_fmac_f32 v111, v34, v200
	v_dual_mul_f32 v115, v115, v213 :: v_dual_fmac_f32 v86, v141, v192
	v_dual_mul_f32 v118, v118, v213 :: v_dual_fmac_f32 v95, v136, v187
	v_dual_mul_f32 v117, v117, v213 :: v_dual_fmac_f32 v82, v144, v194
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v98, v135, v185 :: v_dual_fmac_f32 v107, v36, v203
	v_dual_fmac_f32 v75, v149, v197 :: v_dual_fmac_f32 v112, v35, v199
	v_dual_fmac_f32 v108, v37, v202 :: v_dual_fmac_f32 v69, v38, v205
	v_dual_fmac_f32 v70, v39, v204 :: v_dual_fmac_f32 v65, v40, v207
	v_dual_fmac_f32 v66, v41, v206 :: v_dual_fmac_f32 v61, v42, v209
	v_dual_fmac_f32 v62, v43, v208 :: v_dual_fmac_f32 v57, v44, v211
	v_dual_fmac_f32 v58, v45, v210 :: v_dual_fmac_f32 v51, v115, v233
	v_dual_fmac_f32 v52, v116, v232 :: v_dual_fmac_f32 v49, v118, v234
	v_fmac_f32_e32 v50, v117, v235
	v_dual_fmac_f32 v102, v133, v181 :: v_dual_fmac_f32 v87, v140, v191
	v_dual_fmac_f32 v91, v138, v189 :: v_dual_fmac_f32 v78, v148, v196
	v_dual_fmac_f32 v83, v143, v193 :: v_dual_fmac_f32 v74, v150, v198
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v201
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v31, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v32 offset:34816
	ds_load_b128 v[38:41], v32 offset:34832
	ds_load_b128 v[42:45], v32 offset:35328
	ds_load_b128 v[115:118], v32 offset:35344
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v228, v33 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v229, v46
	ds_store_b16_d16_hi v229, v46 offset:32
	ds_store_b16 v229, v47 offset:64
	ds_store_b16_d16_hi v229, v47 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v229, v124 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v230, v48
	ds_store_b16_d16_hi v230, v48 offset:32
	ds_store_b16 v230, v119 offset:64
	ds_store_b16_d16_hi v230, v119 offset:96
	ds_store_b16 v231, v120
	ds_store_b16_d16_hi v231, v120 offset:32
	ds_store_b16 v231, v121 offset:64
	ds_store_b16_d16_hi v231, v121 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v229, v125 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v229, v122 offset:384
	ds_store_b16_d16_hi v229, v122 offset:416
	ds_store_b16 v229, v123 offset:448
	ds_store_b16_d16_hi v229, v123 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v229, v124 offset:16416
	ds_store_b16_d16_hi v229, v125 offset:16480
	ds_store_b16 v230, v126 offset:16384
	ds_store_b16_d16_hi v230, v126 offset:16416
	ds_store_b16 v230, v127 offset:16448
	ds_store_b16_d16_hi v230, v127 offset:16480
	ds_store_b16 v231, v128 offset:16384
	ds_store_b16_d16_hi v231, v128 offset:16416
	ds_store_b16 v231, v129 offset:16448
	ds_store_b16_d16_hi v231, v129 offset:16480
	ds_store_b16 v229, v130 offset:16768
	ds_store_b16_d16_hi v229, v130 offset:16800
	ds_store_b16 v229, v131 offset:16832
	ds_store_b16_d16_hi v229, v131 offset:16864
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(36)
	v_mul_f32_e32 v33, v35, v212
	v_dual_mul_f32 v46, v34, v212 :: v_dual_mul_f32 v35, v35, v213
	v_mul_f32_e32 v47, v37, v212
	v_dual_mul_f32 v48, v36, v212 :: v_dual_mul_f32 v37, v37, v213
	s_waitcnt lgkmcnt(35)
	v_dual_mul_f32 v119, v39, v212 :: v_dual_mul_f32 v34, v34, v213
	v_dual_mul_f32 v120, v38, v212 :: v_dual_mul_f32 v39, v39, v213
	v_dual_mul_f32 v121, v41, v212 :: v_dual_mul_f32 v36, v36, v213
	v_dual_mul_f32 v122, v40, v212 :: v_dual_mul_f32 v41, v41, v213
	s_waitcnt lgkmcnt(34)
	v_dual_mul_f32 v123, v43, v212 :: v_dual_mul_f32 v38, v38, v213
	v_dual_mul_f32 v124, v42, v212 :: v_dual_mul_f32 v43, v43, v213
	v_dual_mul_f32 v125, v45, v212 :: v_dual_mul_f32 v40, v40, v213
	v_dual_mul_f32 v126, v44, v212 :: v_dual_mul_f32 v45, v45, v213
	s_waitcnt lgkmcnt(33)
	v_dual_mul_f32 v127, v116, v212 :: v_dual_mul_f32 v42, v42, v213
	v_mul_f32_e32 v128, v115, v212
	v_dual_mul_f32 v129, v118, v212 :: v_dual_mul_f32 v44, v44, v213
	v_dual_mul_f32 v132, v117, v212 :: v_dual_mul_f32 v115, v115, v213
	v_dual_mul_f32 v116, v116, v213 :: v_dual_fmac_f32 v73, v46, v183
	v_dual_mul_f32 v118, v118, v213 :: v_dual_fmac_f32 v101, v47, v151
	v_mul_f32_e32 v117, v117, v213
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v104, v33, v182 :: v_dual_fmac_f32 v97, v119, v153
	v_dual_fmac_f32 v100, v48, v186 :: v_dual_fmac_f32 v93, v121, v155
	v_dual_fmac_f32 v96, v120, v152 :: v_dual_fmac_f32 v89, v123, v157
	v_dual_fmac_f32 v92, v122, v154 :: v_dual_fmac_f32 v85, v125, v159
	v_dual_fmac_f32 v88, v124, v156 :: v_dual_fmac_f32 v81, v127, v161
	v_dual_fmac_f32 v84, v126, v158 :: v_dual_fmac_f32 v77, v129, v163
	v_dual_fmac_f32 v80, v128, v160 :: v_dual_fmac_f32 v53, v117, v178
	v_dual_fmac_f32 v76, v132, v162 :: v_dual_fmac_f32 v113, v34, v164
	v_dual_fmac_f32 v114, v35, v165 :: v_dual_fmac_f32 v109, v36, v166
	v_dual_fmac_f32 v110, v37, v167 :: v_dual_fmac_f32 v105, v38, v168
	v_dual_fmac_f32 v106, v39, v169 :: v_dual_fmac_f32 v67, v40, v170
	v_dual_fmac_f32 v68, v41, v171 :: v_dual_fmac_f32 v63, v42, v172
	v_dual_fmac_f32 v64, v43, v173 :: v_dual_fmac_f32 v59, v44, v174
	v_dual_fmac_f32 v60, v45, v175 :: v_dual_fmac_f32 v55, v115, v176
	v_fmac_f32_e32 v56, v116, v177
	v_fmac_f32_e32 v54, v118, v179
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v4, v13
	v_mov_b32_e32 v3, v15
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v73, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v168, 0
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v20, v1, v24
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v173, 0
	v_mov_b32_e32 v174, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v21, 16, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s15, v20
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[5:8], v3 offset:512
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v229, v23, v1
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v1, s15, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[9:12], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v1 offset:512
	v_xor_b32_e32 v230, 16, v229
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v22, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v33, s11 :: v_dual_add_nc_u32 v22, s16, v229
	v_dual_mov_b32 v32, s10 :: v_dual_add_nc_u32 v23, s16, v230
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[131:134], v22 offset:4096
	ds_load_b128 v[135:138], v23 offset:4096
	ds_load_b128 v[148:151], v23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v30, s8
	v_dual_mov_b32 v29, s7 :: v_dual_mov_b32 v28, s6
	v_dual_mov_b32 v27, s5 :: v_dual_mov_b32 v26, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[13:16], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[131:134], v[13:16], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[42:45], v[5:8], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[131:134], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[148:151], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[135:138], v[9:12], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[148:151], v[1:4], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[135:138], v[1:4], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v178, v36
	v_cvt_f32_i32_e32 v179, v37
	v_cvt_f32_i32_e32 v171, v38
	v_cvt_f32_i32_e32 v172, v39
	v_cvt_f32_i32_e32 v168, v40
	v_cvt_f32_i32_e32 v173, v41
	v_cvt_f32_i32_e32 v169, v115
	v_cvt_f32_i32_e32 v174, v116
	v_cvt_f32_i32_e32 v176, v117
	v_cvt_f32_i32_e32 v177, v118
	v_cvt_f32_i32_e32 v166, v119
	v_cvt_f32_i32_e32 v167, v120
	v_cvt_f32_i32_e32 v170, v121
	v_cvt_f32_i32_e32 v175, v122
	v_cvt_f32_i32_e32 v185, v123
	v_cvt_f32_i32_e32 v186, v124
	v_cvt_f32_i32_e32 v183, v125
	v_cvt_f32_i32_e32 v184, v126
	v_cvt_f32_i32_e32 v137, v127
	v_cvt_f32_i32_e32 v138, v128
	v_cvt_f32_i32_e32 v255, v129
	v_cvt_f32_i32_e32 v38, v130
	v_cvt_f32_i32_e32 v36, v26
	v_cvt_f32_i32_e32 v37, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v24, v30
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v23, v32
	v_cvt_f32_i32_e32 v22, v33
	v_cvt_f32_i32_e32 v181, v34
	v_cvt_f32_i32_e32 v182, v35
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v38, off offset:64
	scratch_store_b32 off, v37, off offset:36
	scratch_store_b32 off, v36, off offset:32
	scratch_store_b32 off, v28, off offset:20
	scratch_store_b32 off, v27, off offset:16
	scratch_store_b32 off, v26, off offset:12
	scratch_store_b32 off, v24, off offset:8
	scratch_store_b32 off, v23, off offset:4
	scratch_store_b32 off, v22, off
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v22, 0
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
	v_dual_mov_b32 v33, s11 :: v_dual_add_nc_u32 v22, s14, v229
	v_dual_mov_b32 v32, s10 :: v_dual_add_nc_u32 v23, s14, v230
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[115:118], v22 offset:4096
	ds_load_b128 v[119:122], v23 offset:4096
	ds_load_b128 v[156:159], v23
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v30, s8
	v_dual_mov_b32 v29, s7 :: v_dual_mov_b32 v28, s6
	v_dual_mov_b32 v27, s5 :: v_dual_mov_b32 v26, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[13:16], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[115:118], v[13:16], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[42:45], v[5:8], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[115:118], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[156:159], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[119:122], v[9:12], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[156:159], v[1:4], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[119:122], v[1:4], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v36
	v_cvt_f32_i32_e32 v200, v37
	v_cvt_f32_i32_e32 v196, v38
	v_cvt_f32_i32_e32 v197, v39
	v_cvt_f32_i32_e32 v189, v40
	v_cvt_f32_i32_e32 v192, v41
	v_cvt_f32_i32_e32 v190, v125
	v_cvt_f32_i32_e32 v193, v126
	v_cvt_f32_i32_e32 v195, v127
	v_cvt_f32_i32_e32 v198, v128
	v_cvt_f32_i32_e32 v187, v129
	v_cvt_f32_i32_e32 v188, v130
	v_cvt_f32_i32_e32 v191, v131
	v_cvt_f32_i32_e32 v194, v132
	v_cvt_f32_i32_e32 v206, v148
	v_cvt_f32_i32_e32 v207, v149
	v_cvt_f32_i32_e32 v204, v150
	v_cvt_f32_i32_e32 v205, v151
	v_cvt_f32_i32_e32 v202, v152
	v_cvt_f32_i32_e32 v203, v153
	v_cvt_f32_i32_e32 v148, v154
	v_cvt_f32_i32_e32 v149, v155
	v_cvt_f32_i32_e32 v135, v26
	v_cvt_f32_i32_e32 v136, v27
	v_cvt_f32_i32_e32 v253, v28
	v_cvt_f32_i32_e32 v254, v29
	v_cvt_f32_i32_e32 v24, v30
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v22, v32
	v_cvt_f32_i32_e32 v23, v33
	v_cvt_f32_i32_e32 v180, v34
	v_cvt_f32_i32_e32 v201, v35
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
	v_add_lshl_u32 v1, v147, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v146, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v232, s26, s27, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v142, s0, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v4, 28, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v6, v232, s4, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 32, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v26, off offset:44
	scratch_store_b32 off, v24, off offset:40
	scratch_store_b32 off, v23, off offset:28
	scratch_store_b32 off, v22, off offset:24
	v_mov_b32_e32 v210, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v18, v3
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v208, 0, v17
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v9, s45, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v209, v3, v4
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v231, v1, s[12:15], 0 offen
	buffer_load_u16 v252, v3, s[12:15], 0 offen
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v10, s45, v21
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v144, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v227, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v209, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v1, v4, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_mov_b32_e32 v222, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v208 offset:34816
	ds_load_b128 v[17:20], v208 offset:34832
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v208 offset:35328
	ds_load_b128 v[1:4], v208 offset:35344
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v209, v11 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[37:40], v9 offset:512
	ds_load_b128 v[45:48], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[33:36], v10 offset:512
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
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
	v_add_nc_u32_e32 v9, s46, v229
	v_add_nc_u32_e32 v10, s46, v230
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[29:32], v9 offset:4096
	ds_load_b128 v[115:118], v10 offset:4096
	ds_load_b128 v[119:122], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v13, s8
	v_dual_mov_b32 v15, s10 :: v_dual_mov_b32 v14, s9
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v10, s5 :: v_dual_mov_b32 v9, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[21:24], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[29:32], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[21:24], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[119:122], v[45:48], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[115:118], v[45:48], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[119:122], v[33:36], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[115:118], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v213, v152
	v_cvt_f32_i32_e32 v214, v153
	v_cvt_f32_i32_e32 v211, v154
	v_cvt_f32_i32_e32 v212, v155
	v_cvt_f32_i32_e32 v215, v156
	v_cvt_f32_i32_e32 v216, v157
	v_cvt_f32_i32_e32 v217, v158
	v_cvt_f32_i32_e32 v218, v159
	v_cvt_f32_i32_e32 v221, v160
	v_cvt_f32_i32_e32 v222, v161
	v_cvt_f32_i32_e32 v219, v162
	v_cvt_f32_i32_e32 v220, v163
	v_cvt_f32_i32_e32 v223, v164
	v_cvt_f32_i32_e32 v224, v165
	v_cvt_f32_i32_e32 v225, v233
	v_cvt_f32_i32_e32 v226, v234
	v_cvt_f32_i32_e32 v161, v235
	v_cvt_f32_i32_e32 v160, v236
	v_cvt_f32_i32_e32 v157, v237
	v_cvt_f32_i32_e32 v156, v238
	v_cvt_f32_i32_e32 v153, v239
	v_cvt_f32_i32_e32 v152, v240
	v_cvt_f32_i32_e32 v145, v9
	v_cvt_f32_i32_e32 v144, v10
	v_cvt_f32_i32_e32 v139, v11
	v_cvt_f32_i32_e32 v140, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v227, v150
	v_cvt_f32_i32_e32 v228, v151
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v12, off offset:60
	scratch_store_b32 off, v11, off offset:56
	scratch_store_b32 off, v10, off offset:52
	scratch_store_b32 off, v9, off offset:48
	ds_load_b128 v[29:32], v208 offset:34816
	ds_load_b128 v[21:24], v208 offset:34832
	ds_load_b128 v[13:16], v208 offset:35328
	ds_load_b128 v[9:12], v208 offset:35344
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v155, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v143, 0
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
	v_add_nc_u32_e32 v115, s44, v230
	ds_load_b128 v[162:165], v115 offset:4096
	ds_load_b128 v[123:126], v115
	v_add_nc_u32_e32 v115, s44, v229
	ds_load_b128 v[127:130], v115 offset:4096
	ds_load_b128 v[131:134], v115
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v122, s11 :: v_dual_mov_b32 v121, s10
	v_dual_mov_b32 v120, s9 :: v_dual_mov_b32 v119, s8
	v_mov_b32_e32 v116, s5
	v_dual_mov_b32 v118, s7 :: v_dual_mov_b32 v117, s6
	v_mov_b32_e32 v115, s4
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[242:249], v[127:130], v[41:44], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[131:134], v[41:44], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[242:249], v[162:165], v[45:48], v[242:249] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[123:126], v[45:48], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[131:134], v[37:40], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[127:130], v[37:40], v[115:122] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v244, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v234
	v_wmma_i32_16x16x16_iu8 v[41:48], v[123:126], v[33:36], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v233, v235
	v_wmma_i32_16x16x16_iu8 v[115:122], v[162:165], v[33:36], v[115:122] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v236, v236
	v_cvt_f32_i32_e32 v237, v237
	v_cvt_f32_i32_e32 v234, v238
	v_cvt_f32_i32_e32 v235, v239
	v_cvt_f32_i32_e32 v238, v240
	v_cvt_f32_i32_e32 v239, v241
	v_cvt_f32_i32_e32 v240, v242
	v_cvt_f32_i32_e32 v241, v243
	v_cvt_f32_i32_e32 v245, v245
	v_cvt_f32_i32_e32 v242, v246
	v_cvt_f32_i32_e32 v243, v247
	v_cvt_f32_i32_e32 v246, v248
	v_cvt_f32_i32_e32 v247, v249
	v_cvt_f32_i32_e32 v248, v41
	v_cvt_f32_i32_e32 v249, v42
	v_cvt_f32_i32_e32 v250, v43
	v_cvt_f32_i32_e32 v251, v44
	v_cvt_f32_i32_e32 v164, v45
	v_cvt_f32_i32_e32 v165, v46
	v_cvt_f32_i32_e32 v162, v47
	v_cvt_f32_i32_e32 v163, v48
	v_cvt_f32_i32_e32 v158, v115
	v_cvt_f32_i32_e32 v159, v116
	v_cvt_f32_i32_e32 v154, v117
	v_cvt_f32_i32_e32 v155, v118
	v_cvt_f32_i32_e32 v150, v119
	v_cvt_f32_i32_e32 v151, v120
	v_cvt_f32_i32_e32 v141, v121
	v_cvt_f32_i32_e32 v143, v122
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
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s34
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v147, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v146, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v35, v142, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v142.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_mov_b16_e64 v142.h, v252.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e64 v229.h, v142.l
	v_mov_b16_e64 v230.h, v142.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v231.h, v142.l
	v_mov_b16_e64 v147.h, v142.l
	v_mov_b16_e64 v146.h, v142.l
	v_mov_b16_e64 v252.h, v142.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v45, v22, v142
	v_mul_f32_e32 v46, v21, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v203, v106
	v_fma_f32 v46, v46, v202, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v106, v106, v45, s2
	v_cndmask_b32_e64 v105, v105, v46, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v39, v33, s[12:15], 0 offen
	buffer_load_u16 v38, v35, s[12:15], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v33, v232, s1, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v209, v34 offset:34816
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v34, 1, v72
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v72, s27, v71
	v_add3_u32 v71, s33, s26, v34
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v30, v142
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v37, v33, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v33.h, v231.l
	v_mov_b16_e64 v33.l, v142.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v29, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v26, v142
	v_mul_f32_e32 v40, v25, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v41, v32, v142 :: v_dual_mul_f32 v26, v26, v33
	v_dual_mul_f32 v42, v31, v142 :: v_dual_mul_f32 v25, v25, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v43, v28, v142 :: v_dual_mul_f32 v22, v22, v33
	v_dual_mul_f32 v44, v27, v142 :: v_dual_mul_f32 v21, v21, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v30, v33
	v_mul_f32_e32 v29, v29, v33
	v_mul_f32_e32 v32, v32, v33
	v_mul_f32_e32 v31, v31, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v27, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v42, v42, v204, v109
	v_fma_f32 v41, v41, v205, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v44, v183, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v19, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v43, v184, v108
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v29, v29, v180, v73
	v_fma_f32 v30, v30, v201, v104
	v_fma_f32 v31, v31, v199, v100
	v_fma_f32 v32, v32, v200, v101
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v118, v118, v168, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v110, v41, s2
	v_cndmask_b32_e64 v109, v109, v42, s2
	v_cndmask_b32_e64 v108, v108, v43, s2
	v_cndmask_b32_e64 v107, v107, v44, s2
	v_cndmask_b32_e64 v104, v104, v30, s2
	v_cndmask_b32_e64 v73, v73, v29, s2
	v_cndmask_b32_e64 v101, v101, v32, s2
	v_cndmask_b32_e64 v100, v100, v31, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[29:32], v208 offset:34816
	ds_load_b128 v[41:44], v208 offset:34832
	v_mul_f32_e32 v28, v28, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v35, v35, v206, v113
	v_fma_f32 v34, v34, v207, v114
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v18, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v186, v112
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v90, v118, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v196, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v114, v34, s2
	v_cndmask_b32_e64 v113, v113, v35, s2
	v_cndmask_b32_e64 v112, v112, v36, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v185, v111
	v_fma_f32 v25, v25, v181, v102
	v_fma_f32 v26, v26, v182, v103
	v_fma_f32 v27, v27, v178, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v96, v21, s2
	v_cndmask_b32_e64 v111, v111, v40, s2
	v_cndmask_b32_e64 v45, v102, v25, s2
	v_cndmask_b32_e64 v40, v103, v26, s2
	v_cndmask_b32_e64 v98, v98, v27, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v197, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v232.h, v142.l
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v19, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v97, v22, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v255, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v65, v19, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v118, 16, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v17, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v115, v24, v33
	v_mul_f32_e32 v116, v23, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v117, v20, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v119, v14, v33
	v_mul_f32_e32 v120, v13, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v121, v6, v33
	v_mul_f32_e32 v122, v5, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v123, v16, v33
	v_mul_f32_e32 v124, v15, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v125, v8, v33
	v_mul_f32_e32 v126, v7, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v127, v10, v33
	v_mul_f32_e32 v128, v9, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v2, v33
	v_mul_f32_e32 v130, v1, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v131, v12, v33
	v_mul_f32_e32 v132, v11, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v133, v4, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v125, v125, v177, v83
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v179, v99
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v131, v131, v194, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v134, v33, v170, v74
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[33:36], v208 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v83, v125, s2
	v_cndmask_b32_e64 v46, v99, v28, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v208 offset:35344
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v83, v41, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v124, v124, v195, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v29, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v116, v116, v189, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v172, v95
	v_fma_f32 v117, v117, v173, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v84, v124, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v84, v44, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v121, v121, v174, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v92, v116, s2
	v_cndmask_b32_e64 v116, v77, v131, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v77, v42, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v171, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v87, v121, s2
	v_cndmask_b32_e64 v47, v95, v47, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v133, v133, v175, v75
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v121, v35, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v122, v122, v169, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v94, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v32, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v119, v119, v193, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v91, v117, s2
	v_cndmask_b32_e64 v95, v86, v122, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v34, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v123, v123, v198, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v119, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v119, v33, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v126, v126, v176, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v30, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v85, v123, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v85, v43, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v120, v120, v190, v88
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v123, v25, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v132, v132, v191, v76
	v_fma_f32 v115, v115, v192, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v82, v126, s2
	v_cndmask_b32_e64 v88, v88, v120, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v36, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v127, v127, v188, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v76, v132, s2
	v_cndmask_b32_e64 v76, v74, v134, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v74, v31, v118
	v_mul_f32_e32 v82, v31, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v39, v227, v45
	v_fma_f32 v39, v48, v214, v46
	v_fma_f32 v48, v77, v212, v47
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v115, s2
	v_cndmask_b32_e64 v115, v81, v127, s2
	v_cndmask_b32_e64 v75, v75, v133, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v32, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v38, v228, v40
	v_fma_f32 v38, v74, v213, v98
	v_fma_f32 v74, v83, v211, v94
	v_fma_f32 v77, v85, v215, v90
	v_fma_f32 v126, v84, v216, v91
	v_fma_f32 v127, v86, v218, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v45, v31, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v209, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v208 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v132, v46, v39, s3
	v_cndmask_b32_e64 v133, v47, v48, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[45:48], v208 offset:34832
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v130, v130, v166, v78
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v28, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v129, v129, v167, v79
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v125, v27, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v128, v128, v187, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v130, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v30, v21
	v_mul_f32_e32 v29, v29, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v124, v124, v224, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v80, v128, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v123, v123, v219, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v79, v129, s2
	v_cndmask_b32_e64 v130, v40, v32, s3
	v_cndmask_b32_e64 v98, v98, v38, s3
	v_cndmask_b32_e64 v94, v94, v74, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[37:40], v208 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v78, v123, s3
	v_cndmask_b32_e64 v78, v75, v124, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v119, v119, v217, v95
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v123, v48, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v129, v30, v226, v112
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v124, v47, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v128, v29, v225, v111
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[29:32], v208 offset:35344
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v120, v120, v222, v102
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v26, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v121, v121, v221, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v90, v77, s3
	v_cndmask_b32_e64 v95, v95, v119, s3
	v_cndmask_b32_e64 v102, v102, v120, s3
	v_cndmask_b32_e64 v77, v112, v129, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v112, v83, v118
	v_mul_f32_e32 v119, v86, v118
	v_mul_f32_e32 v120, v85, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v122, v122, v220, v79
	v_fma_f32 v125, v125, v223, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v87, v127, s3
	v_cndmask_b32_e64 v103, v103, v121, s3
	v_cndmask_b32_e64 v75, v111, v128, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v111, v84, v118
	v_dual_mul_f32 v121, v46, v118 :: v_dual_mul_f32 v84, v84, v21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v127, v40, v118 :: v_dual_mul_f32 v86, v86, v21
	v_mul_f32_e32 v128, v39, v118
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v134, v29, v118 :: v_dual_mul_f32 v83, v83, v21
	v_dual_mul_f32 v166, v32, v118 :: v_dual_mul_f32 v85, v85, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v112, v112, v210, v73
	v_fma_f32 v120, v120, v236, v100
	v_fma_f32 v119, v119, v237, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v91, v126, s3
	v_cndmask_b32_e64 v79, v79, v122, s3
	v_cndmask_b32_e64 v76, v76, v125, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v122, v45, v118
	v_mul_f32_e32 v126, v37, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v124, v124, v238, v92
	v_fma_f32 v123, v123, v239, v93
	v_fma_f32 v128, v128, v244, v99
	v_fma_f32 v127, v127, v245, v97
	v_fma_f32 v83, v83, v248, v113
	v_fma_f32 v84, v84, v249, v114
	v_fma_f32 v85, v85, v250, v109
	v_fma_f32 v86, v86, v251, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v112, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v125, v38, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v119, s3
	v_cndmask_b32_e64 v100, v100, v120, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v129, v30, v118
	v_mul_f32_e32 v118, v31, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v111, v111, v233, v104
	v_fma_f32 v122, v122, v234, v96
	v_fma_f32 v121, v121, v235, v22
	v_fma_f32 v166, v166, v247, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v123, s3
	v_cndmask_b32_e64 v92, v92, v124, s3
	v_cndmask_b32_e64 v97, v97, v127, s3
	v_cndmask_b32_e64 v99, v99, v128, s3
	v_cndmask_b32_e64 v114, v114, v84, s3
	v_cndmask_b32_e64 v113, v113, v83, s3
	v_cndmask_b32_e64 v84, v110, v86, s3
	v_cndmask_b32_e64 v83, v109, v85, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v86, 0xbfb8aa3b, v100
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v129, v129, v243, v115
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v109, 0xbfb8aa3b, v101
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v118, v118, v246, v117
	v_fma_f32 v126, v126, v240, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v104, v111, s3
	v_cndmask_b32_e64 v111, v22, v121, s3
	v_cndmask_b32_e64 v96, v96, v122, s3
	v_cndmask_b32_e64 v112, v115, v129, s3
	v_cndmask_b32_e64 v115, v116, v166, s3
	v_cndmask_b32_e64 v116, v117, v118, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v73
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v125, v125, v241, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v118, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v119, 0xbfb8aa3b, v93
	v_dual_mul_f32 v122, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v86
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v134, v134, v242, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v125, s3
	v_cndmask_b32_e64 v88, v88, v126, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v119
	v_cndmask_b32_e64 v86, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v118
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v123
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v80, v134, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v104
	v_dual_mul_f32 v110, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v117, 0xbfb8aa3b, v111
	v_dual_mul_f32 v120, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v121, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v119, 0, 0x42800000, s7
	v_cndmask_b32_e64 v118, 0, 0x42800000, s8
	v_cndmask_b32_e64 v123, 0, 0x42800000, s11
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v100
	v_dual_mul_f32 v124, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v127, 0xbfb8aa3b, v115
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v85
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v110
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v121
	v_dual_fmac_f32 v119, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v118, 0xbfb8aa3b, v92
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v97
	v_exp_f32_e32 v86, v86
	v_dual_mul_f32 v125, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v128, 0xbfb8aa3b, v113
	v_dual_mul_f32 v126, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v129, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v109
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v117
	v_cndmask_b32_e64 v110, 0, 0x42800000, s6
	v_cndmask_b32_e64 v121, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v124
	v_cndmask_b32_e64 v170, 0, 0xffffffc0, s4
	v_exp_f32_e32 v123, v123
	v_dual_mul_f32 v134, 0xbfb8aa3b, v83 :: v_dual_fmac_f32 v85, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v109, 0, 0x42800000, s1
	v_cndmask_b32_e64 v117, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v122
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v125
	v_cndmask_b32_e64 v124, 0, 0x42800000, s14
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v129
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v117, 0xbfb8aa3b, v111
	v_dual_fmac_f32 v110, 0xbfb8aa3b, v96 :: v_dual_fmac_f32 v121, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, s11
	v_exp_f32_e32 v119, v119
	v_ldexp_f32 v86, v86, v170
	v_dual_mul_f32 v166, 0xbfb8aa3b, v84 :: v_dual_fmac_f32 v109, 0xbfb8aa3b, v101
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v120
	v_cndmask_b32_e64 v122, 0, 0x42800000, s12
	v_cndmask_b32_e64 v125, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v127
	v_cndmask_b32_e64 v129, 0, 0x42800000, s17
	v_cndmask_b32_e64 v173, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v80
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v123, v123, v177
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v86, 1.0, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v120, 0, 0x42800000, s10
	v_cndmask_b32_e64 v127, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v126
	v_cndmask_b32_e64 v167, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v122, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v125, 0xbfb8aa3b, v112
	v_fmac_f32_e32 v129, 0xbfb8aa3b, v114
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v119, v119, v173
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v173, null, v86, v86, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v126, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v166
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v120, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v127, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, s14
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v129, v129
	v_ldexp_f32 v85, v85, v167
	v_ldexp_f32 v22, v22, v168
	v_ldexp_f32 v121, v121, v175
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v203, v173
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v128
	v_cndmask_b32_e64 v166, 0, 0x42800000, s19
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, s13
	v_dual_fmac_f32 v126, 0xbfb8aa3b, v116 :: v_dual_add_f32 v85, 1.0, v85
	v_cndmask_b32_e64 v183, 0, 0xffffffc0, s17
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v127, v127
	v_ldexp_f32 v109, v109, v169
	v_ldexp_f32 v110, v110, v172
	v_ldexp_f32 v124, v124, v180
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v121, 1.0, v121
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0x42800000, s18
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, s15
	v_dual_fmac_f32 v166, 0xbfb8aa3b, v84 :: v_dual_add_f32 v109, 1.0, v109
	v_ldexp_f32 v118, v118, v174
	v_ldexp_f32 v125, v125, v179
	v_ldexp_f32 v129, v129, v183
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v110, 1.0, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v167, null, v85, v85, v104
	v_div_scale_f32 v183, null, v121, v121, v89
	v_fma_f32 v223, -v173, v203, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v128, 0xbfb8aa3b, v113 :: v_dual_add_f32 v119, 1.0, v119
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v117, v117, v171
	v_ldexp_f32 v127, v127, v181
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v118, 1.0, v118 :: v_dual_add_f32 v125, 1.0, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v171, null, v109, v109, v101
	v_div_scale_f32 v177, null, v110, v110, v96
	v_rcp_f32_e32 v200, v167
	v_rcp_f32_e32 v208, v183
	v_fmac_f32_e32 v203, v223, v203
	v_div_scale_f32 v193, null, v124, v124, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v134
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, s16
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v128, v128
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v181, null, v118, v118, v92
	v_rcp_f32_e32 v202, v171
	v_rcp_f32_e32 v205, v177
	v_rcp_f32_e32 v213, v193
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v134, 0, 0x42800000, s20
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v184, 0, 0xffffffc0, s18
	v_ldexp_f32 v126, v126, v182
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v207, v181
	v_fma_f32 v220, -v167, v200, 1.0
	v_fma_f32 v223, -v183, v208, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v134, 0xbfb8aa3b, v83 :: v_dual_add_f32 v117, 1.0, v117
	v_exp_f32_e32 v166, v166
	v_ldexp_f32 v120, v120, v176
	v_ldexp_f32 v128, v128, v184
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v169, null, v22, v22, v73
	v_div_scale_f32 v187, null, v123, v123, v97
	v_fma_f32 v222, -v171, v202, 1.0
	v_fmac_f32_e32 v208, v223, v208
	v_fma_f32 v223, -v193, v213, 1.0
	v_fmac_f32_e32 v200, v220, v200
	v_fma_f32 v220, -v177, v205, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v185, 0, 0xffffffc0, s19
	v_exp_f32_e32 v122, v122
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v120, 1.0, v120 :: v_dual_add_f32 v129, 1.0, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v168, vcc_lo, v104, v85, v104
	v_div_scale_f32 v175, null, v117, v117, v111
	v_div_scale_f32 v179, null, v119, v119, v93
	v_div_scale_f32 v191, null, v125, v125, v112
	v_rcp_f32_e32 v201, v169
	v_rcp_f32_e32 v210, v187
	v_fmac_f32_e32 v202, v222, v202
	v_fma_f32 v222, -v181, v207, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v128, 1.0, v128 :: v_dual_fmac_f32 v205, v220, v205
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v195, null, v126, v126, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, s12
	v_exp_f32_e32 v134, v134
	v_ldexp_f32 v166, v166, v185
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v185, null, v120, v120, v88
	v_rcp_f32_e32 v204, v175
	v_rcp_f32_e32 v206, v179
	v_rcp_f32_e32 v212, v191
	v_rcp_f32_e32 v215, v195
	v_fmac_f32_e32 v207, v222, v207
	v_div_scale_f32 v197, null, v128, v128, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v186, 0, 0xffffffc0, s20
	v_ldexp_f32 v122, v122, v178
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v209, v185
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v217, v197
	v_fma_f32 v221, -v169, v201, 1.0
	v_fma_f32 v220, -v187, v210, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v134, v134, v186
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v122, 1.0, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v178, s9, v96, v110, v96
	v_fma_f32 v224, -v175, v204, 1.0
	v_fmac_f32_e32 v201, v221, v201
	v_fma_f32 v221, -v179, v206, 1.0
	v_fma_f32 v222, -v191, v212, 1.0
	v_fmac_f32_e32 v210, v220, v210
	v_fma_f32 v220, -v195, v215, 1.0
	v_div_scale_f32 v180, s10, v93, v119, v93
	v_dual_fmac_f32 v206, v221, v206 :: v_dual_fmac_f32 v213, v223, v213
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v215, v220, v215 :: v_dual_fmac_f32 v212, v222, v212
	v_fma_f32 v222, -v197, v217, 1.0
	v_fmac_f32_e32 v204, v224, v204
	v_fma_f32 v224, -v185, v209, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v134, 1.0, v134 :: v_dual_mul_f32 v223, v168, v200
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v170, s5, v73, v22, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v209, v224, v209
	v_div_scale_f32 v199, null, v134, v134, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v220, -v167, v223, v168
	v_div_scale_f32 v189, null, v122, v122, v99
	v_rcp_f32_e32 v219, v199
	v_fmac_f32_e32 v217, v222, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v223, v220, v200 :: v_dual_mul_f32 v220, v170, v201
	v_div_scale_f32 v196, null, v129, v129, v114
	v_rcp_f32_e32 v211, v189
	v_div_scale_f32 v192, s0, v112, v125, v112
	v_rcp_f32_e32 v216, v196
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v222, -v199, v219, 1.0
	v_fma_f32 v167, -v167, v223, v168
	v_div_scale_f32 v172, s6, v101, v109, v101
	v_div_scale_f32 v174, s7, v100, v86, v100
	v_fmac_f32_e32 v219, v222, v219
	v_fma_f32 v222, -v169, v220, v170
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v221, -v189, v211, 1.0
	v_div_fmas_f32 v167, v167, v200, v223
	s_mov_b32 vcc_lo, s5
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v166, 1.0, v166
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v220, v222, v201 :: v_dual_fmac_f32 v211, v221, v211
	v_fma_f32 v221, -v196, v216, 1.0
	v_div_scale_f32 v223, s16, v116, v126, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v169, -v169, v220, v170
	v_div_scale_f32 v222, s17, v114, v129, v114
	v_fmac_f32_e32 v216, v221, v216
	v_div_scale_f32 v176, s8, v111, v117, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v169, v169, v201, v220
	v_mul_f32_e32 v201, v178, v205
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v194, null, v127, v127, v115
	v_div_fixup_f32 v73, v169, v22, v73
	v_dual_mul_f32 v169, v223, v215 :: v_dual_mul_f32 v168, v172, v202
	v_mul_f32_e32 v225, v222, v216
	v_fma_f32 v22, -v177, v201, v178
	v_rcp_f32_e32 v214, v194
	v_div_scale_f32 v186, s13, v88, v120, v88
	v_fma_f32 v200, -v171, v168, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v201, v22, v205
	v_div_scale_f32 v198, null, v166, v166, v84
	v_div_fixup_f32 v85, v167, v85, v104
	v_fmac_f32_e32 v168, v200, v202
	v_div_scale_f32 v200, s18, v113, v128, v113
	v_mul_f32_e32 v170, v174, v203
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v224, -v194, v214, 1.0
	v_fma_f32 v171, -v171, v168, v172
	v_mul_f32_e32 v167, v186, v209
	v_div_scale_f32 v182, s11, v92, v118, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v214, v224, v214
	v_div_fmas_f32 v168, v171, v202, v168
	v_mul_f32_e32 v171, v180, v206
	v_mul_f32_e32 v172, v176, v204
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v218, v198
	v_div_fixup_f32 v101, v168, v109, v101
	v_mul_f32_e32 v109, v200, v217
	v_fma_f32 v220, -v173, v170, v174
	v_div_scale_f32 v184, s12, v89, v121, v89
	v_div_scale_f32 v190, s1, v99, v122, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v170, v220, v203
	v_fma_f32 v220, -v175, v172, v176
	v_fma_f32 v224, -v198, v218, 1.0
	v_div_scale_f32 v221, s14, v80, v124, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v173, -v173, v170, v174
	v_fmac_f32_e32 v172, v220, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v218, v224, v218
	v_div_scale_f32 v224, s15, v115, v127, v115
	v_div_fmas_f32 v170, v173, v203, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v175, -v175, v172, v176
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v173, v192, v212
	v_dual_mul_f32 v203, v221, v213 :: v_dual_mul_f32 v220, v190, v211
	v_div_fmas_f32 v172, v175, v204, v172
	v_fma_f32 v175, -v179, v171, v180
	v_dual_mul_f32 v176, v224, v214 :: v_dual_mul_f32 v73, v131, v73
	v_div_fixup_f32 v86, v170, v86, v100
	v_div_scale_f32 v188, s4, v97, v123, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v171, v175, v206
	v_fma_f32 v175, -v185, v167, v186
	v_mul_f32_e32 v202, v182, v207
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v86, v98, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v177, -v177, v201, v178
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v167, v175, v209
	v_fma_f32 v175, -v191, v173, v192
	v_fma_f32 v168, -v181, v202, v182
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v229.l, v86.h
	v_mov_b16_e64 v178.h, v142.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v179, -v179, v171, v180
	v_fmac_f32_e32 v173, v175, v212
	v_fma_f32 v175, -v195, v169, v223
	v_mul_f32_e32 v104, v184, v208
	v_fmac_f32_e32 v202, v168, v207
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v101, v132, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v185, -v185, v167, v186
	v_fmac_f32_e32 v169, v175, v215
	v_fma_f32 v22, -v183, v104, v184
	v_div_fixup_f32 v111, v172, v117, v111
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v230.l, v101.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v191, -v191, v173, v192
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v180.h, v142.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v104, v22, v208
	v_fma_f32 v22, -v189, v220, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v146.l, v73.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v45, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v195, -v195, v169, v223
	v_fma_f32 v183, -v183, v104, v184
	v_fmac_f32_e32 v220, v22, v211
	v_fma_f32 v22, -v194, v176, v224
	v_div_scale_f32 v223, s5, v84, v166, v84
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v164, v105
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v186.h, v142.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v176, v22, v214
	v_fma_f32 v22, -v197, v109, v200
	v_mul_f32_e32 v174, v188, v210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s8, v73, v73
	v_cmp_o_f32_e64 s9, v101, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v105, v45, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v109, v22, v217
	v_fma_f32 v168, -v187, v174, v188
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v175.h, v142.l
	v_mov_b16_e64 v184.h, v142.l
	v_mov_b16_e64 v204.h, v142.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v197, -v197, v109, v200
	v_fmac_f32_e32 v174, v168, v210
	v_fma_f32 v168, -v193, v203, v221
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v192.h, v142.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v81, v160, v108
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v41, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v82, v161, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v203, v168, v213
	v_fma_f32 v168, -v196, v225, v222
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v108, v81, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v23, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v107, v82, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v193, -v193, v203, v221
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v221, v46, v21
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v130, v85
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v85, v177, v205, v201
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v225, v168, v216
	v_div_fmas_f32 v100, v179, v206, v171
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v85, v85, v110, v96
	v_fma_f32 v189, -v189, v220, v190
	v_fma_f32 v196, -v196, v225, v222
	v_div_fixup_f32 v93, v100, v119, v93
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v168.h, v142.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v85, v94, v85
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v181, -v181, v202, v182
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v182.h, v142.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v91, v91, v93
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v187, -v187, v174, v188
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v231.l, v85.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v117, v181, v207, v202
	s_mov_b32 vcc_lo, s12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v252.l, v91.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v96, v183, v208, v104
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v92, v117, v118, v92
	v_div_fmas_f32 v100, v185, v209, v167
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v89, v96, v121, v89
	v_div_fmas_f32 v94, v187, v210, v174
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v88, v100, v120, v88
	v_div_fmas_f32 v93, v189, v211, v220
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v100, 1, v230
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v94, v94, v123, v97
	s_mov_b32 vcc_lo, s0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v90, v90, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v93, v93, v122, v99
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v98, v133, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v92, v191, v212, v173
	s_mov_b32 vcc_lo, s14
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v87, v87, v89
	v_mul_f32_e32 v93, v103, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v89, v193, v213, v203
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v99, v101, v100, 0x7fff
	v_and_b32_e32 v100, 1, v231
	v_cmp_o_f32_e64 s0, v85, v85
	v_mov_b16_e64 v180.l, v93.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v94, v102, v94
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v80, v89, v124, v80
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v85, v85, v100, 0x7fff
	v_and_b32_e32 v97, 1, v229
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v194, -v194, v176, v224
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v178.l, v94.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v80, v74, v80
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v74.l, 0x7fff, v85.h, s0
	v_and_b32_e32 v96, 1, v146
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v92, v92, v125, v112
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v85, 1, v178
	v_mov_b16_e64 v147.l, v46.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s15
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v88, v95, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v95, v194, v214, v176
	s_mov_b32 vcc_lo, s16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v104, 1, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v200, v223, v218 :: v_dual_and_b32 v89, 1, v252
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v73, v73, v96, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v101, v195, v215, v169
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v92, v79, v92
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v46, v46
	v_add3_u32 v46, v46, v104, 0x7fff
	v_mov_b16_e64 v232.l, v98.h
	v_cmp_o_f32_e64 s10, v91, v91
	v_cndmask_b16 v46.l, 0x7fff, v73.h, s8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v95, v127, v115
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v73.h, 0x7fff, v99.h, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v101, v126, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v89, v91, v89, 0x7fff
	v_mov_b16_e64 v182.l, v92.h
	v_and_b32_e32 v96, 1, v232
	v_mov_b16_e64 v184.l, v80.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v78, v78, v95
	v_mul_f32_e32 v95, v76, v99
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v76.h, 0x7fff, v89.h, s10
	v_and_b32_e32 v89, 1, v182
	v_mov_b16_e64 v175.l, v90.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v86, v86
	v_add3_u32 v86, v86, v97, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v97, v196, v216, v225
	s_mov_b32 vcc_lo, s18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v98, v98
	v_mov_b16_e64 v168.l, v87.h
	v_add3_u32 v96, v98, v96, 0x7fff
	v_and_b32_e32 v98, 1, v175
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v79, v197, v217, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s11, v90, v90
	v_cndmask_b16 v73.l, 0x7fff, v86.h, s4
	v_and_b32_e32 v86, 1, v168
	v_add3_u32 v90, v90, v98, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v79, v79, v128, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v188.h, v142.l
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	v_cmp_o_f32_e64 s7, v87, v87
	v_add3_u32 v86, v87, v86, 0x7fff
	v_and_b32_e32 v87, 1, v180
	v_cndmask_b16 v76.l, 0x7fff, v90.h, s11
	v_mov_b16_e64 v188.l, v95.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v90, v75, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v75, v94, v85, 0x7fff
	v_and_b32_e32 v85, 1, v184
	v_mov_b16_e64 v186.l, v78.h
	v_cndmask_b16 v79.h, 0x7fff, v86.h, s7
	v_add3_u32 v86, v93, v87, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v96.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v222, s6, v83, v134, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v87, 1, v186
	v_mov_b16_e64 v204.l, v88.h
	v_cmp_o_f32_e64 s8, v88, v88
	v_cmp_o_f32_e64 s0, v80, v80
	v_cmp_o_f32_e64 s9, v78, v78
	v_add3_u32 v85, v80, v85, 0x7fff
	v_and_b32_e32 v96, 1, v204
	v_add3_u32 v78, v78, v87, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v91, v97, v129, v114
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_cndmask_b16 v80.l, 0x7fff, v85.h, s0
	v_add3_u32 v88, v88, v96, 0x7fff
	v_mov_b16_e64 v190.h, v142.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v77, v77, v91
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v75.h, 0x7fff, v75.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v79.l, 0x7fff, v88.h, s8
	v_add3_u32 v88, v92, v89, 0x7fff
	v_and_b32_e32 v89, 1, v188
	v_mov_b16_e64 v192.l, v90.h
	v_cmp_o_f32_e64 s8, v90, v90
	v_cmp_o_f32_e64 s4, v93, v93
	v_cmp_o_f32_e64 s1, v92, v92
	v_mov_b16_e64 v190.l, v77.h
	v_and_b32_e32 v87, 1, v192
	v_cmp_o_f32_e64 s10, v95, v95
	v_cndmask_b16 v75.l, 0x7fff, v86.h, s4
	v_cndmask_b16 v80.h, 0x7fff, v88.h, s1
	v_add3_u32 v88, v95, v89, 0x7fff
	v_add3_u32 v85, v90, v87, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v198, v200, v223
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v77, v77
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v18, v18, v142 :: v_dual_mul_f32 v47, v47, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v78.l, 0x7fff, v85.h, s8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v200, v87, v218
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v85.h, v142.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v148, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v138, v70
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v48, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v90, -v198, v200, v223
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v44, v44, v21 :: v_dual_mul_f32 v13, v13, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v67, v23, s2
	v_cndmask_b32_e64 v18, v70, v18, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v90, v90, v218, v200
	s_mov_b32 vcc_lo, s6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v13, v13, v135, v63
	v_fma_f32 v47, v47, v162, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v37, v37, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v84, v90, v166, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v86, 1, v190
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v63, v13, s2
	v_cndmask_b32_e64 v23, v23, v47, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v38, v38, v21 :: v_dual_mul_f32 v81, v81, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v86, v77, v86, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v88.h, s10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v88, v222, v219
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v77.h, 0x7fff, v78.h, s9
	v_mov_b16_e32 v85.l, v81.h
	v_cndmask_b16 v78.h, 0x7fff, v86.h, s7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v86, v221, v165, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v199, v88, v222
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v37, v37, v158, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v85, 1, v85
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v40, v40, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v106, v86, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v88, v87, v219 :: v_dual_mul_f32 v87, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v85, v81, v85, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v13, v37, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v89, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v91, -v199, v88, v222
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v87
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v20, v142
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v14, v14, v142
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v89
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v88, v91, v219, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v87, 0, 0x42800000, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v14, v14, v136, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v89, 0, 0x42800000, s0
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v83, v88, v134, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, s0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v64, v14, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v89, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v82, v82, v83
	v_exp_f32_e32 v84, v87
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v38, v159, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v89, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v142
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v30, v30, v21 :: v_dual_mul_f32 v1, v1, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v38, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v22, s27, 4, v72
	s_mov_b32 s27, 0x31027000
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v84, v84, v87
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v33, v21
	v_mul_f32_e32 v5, v5, v142
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v83, v89, v88
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v89, v17, v142
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v17.h, 0x7fff, v85.h, vcc_lo
	v_mov_b16_e32 v88.l, v82.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v89, v137, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v90, null, v81, v81, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v88.h, v142.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v87, null, v83, v83, v86
	v_rcp_f32_e32 v89, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v85, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, vcc_lo, v86, v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v87
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v15, v15, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v41, v157, v69
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v39, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v142
	v_mul_f32_e32 v35, v35, v21
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v85, -v90, v89, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v88, 1, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v69, v41, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v15, v253, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v91, -v87, v84, 1.0
	v_fmac_f32_e32 v89, v85, v89
	v_div_scale_f32 v85, s0, v45, v81, v45
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v24, v24, v142
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v88, v82, v88, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v59, v15, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v67, v85, v89 :: v_dual_fmac_f32 v84, v91, v84
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v24, v24, v149, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v9, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v154, v15
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v11, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v25, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v68, v24, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v68, v70, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v39, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v142
	v_mul_f32_e32 v4, v4, v142
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v48, v48, v163, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v42, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v87, v68, v70
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v91, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v42, v156, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v68, v48, v84
	v_fma_f32 v48, -v90, v67, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v91
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v42, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v87, v68, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v70, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v67, v48, v89
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v84, v68
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v90, v67, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v83, v86
	v_div_fmas_f32 v67, v68, v89, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v67, v81, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v67.h, v142.l
	v_cndmask_b16 v17.l, 0x7fff, v88.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v45.h, v142.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v67.l, v41.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v18, v18, v42 :: v_dual_add_f32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v67, 1, v67
	v_mov_b16_e32 v45.l, v18.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v67, v41, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v45, 1, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v18, v45, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	v_exp_f32_e32 v42, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v68, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v69, null, v42, v42, v23
	v_div_scale_f32 v64, s1, v23, v42, v23
	v_fma_f32 v81, -v48, v68, 1.0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v70, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v66, v20, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v44, v152, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v69, v70, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v44, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v43, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v68, v81, v68
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v24, v47, v24
	v_mul_f32_e32 v81, v64, v70
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v153, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v69, v81, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v81, v38, v70 :: v_dual_mul_f32 v66, v43, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v69, v81, v64
	v_fma_f32 v65, -v48, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v65, v68
	v_fma_f32 v20, -v48, v66, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v68, v66
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v38, v38, v70, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v20, v47, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v13
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.h, 0x7fff, v45.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v37
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v18.h
	v_mov_b16_e64 v23.h, v142.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v43, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.l, 0x7fff, v67.h, s0
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_and_b32 v23, 1, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v19.h
	v_mov_b16_e64 v38.h, v142.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v20, v20, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v18, null, v24, v24, v37
	v_rcp_f32_e32 v44, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v18, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v254, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v60, v16, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v40, v40, v155, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v40, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v142
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, s1, v37, v24, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v16
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v43, v62
	scratch_load_b32 v43, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v62, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v5, v43, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v61, v5, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v14, v20, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v33, v145, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v47, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v38, v19, v38, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v42, v47, v43
	v_fmac_f32_e32 v47, v48, v41
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v34, v34, v21 :: v_dual_mul_f32 v59, v40, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v34, v144, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v18, v59, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v34, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v59, v39, v44
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v42, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v18, v59, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v34, v41, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v44, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v39, v40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v15
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v34, v20, v14
	v_div_fixup_f32 v18, v18, v24, v37
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v39, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v14
	v_mul_f32_e32 v5, v5, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v19, v19, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v5.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v24.h, v142.l
	v_cndmask_b16 v23.l, 0x7fff, v38.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v18, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, vcc_lo, v16, v19, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v14, v41, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v6.h
	v_mov_b16_e64 v20.h, v142.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v14, v14, v15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v6, v20, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v6, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v39, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v34, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v15, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v39, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v7, v6, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v58, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v8, v38, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v57, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v18, v8, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v35, v139, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v8, v40, v33
	v_fma_f32 v40, -v34, v41, v39
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v35, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v18, v8, v38
	v_fmac_f32_e32 v41, v40, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v8, v18, v33, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v34, v41, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v8, v19, v16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v29, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v36, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v37, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v140, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v18, v14, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v24.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v24, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v36, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v9, v9, v33, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v55, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v16, v150, v9
	scratch_load_b32 v16, off, off offset:28 ; 4-byte Folded Reload
	v_fma_f32 v10, v10, v35, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v56, v10, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v14.h, v142.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v30, v151, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v19, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v142.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v19, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v9, 0xbfb8aa3b, v8 :: v_dual_and_b32 v10, 1, v10
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v7, v10, 0x7fff
	v_add3_u32 v7, v6, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v14, v15
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v15, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v12, v12, v142 :: v_dual_add_f32 v9, 1.0, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v9, v9, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v12, v12, v16, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v54, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v14, v14, v16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v31, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v24, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, s1, v8, v9, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v51, v1, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v15, v53
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v15, v32, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v53, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v15, v143, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, v16, v141, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v15, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v15, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v16, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v2, v2, v142 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v19, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v18, v15, 1.0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v52, v2, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v15, v30, v15
	v_div_scale_f32 v19, null, v14, v14, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v19
	v_mul_f32_e32 v33, v31, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, s4, v5, v14, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v18, v33, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v26, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v19, v24, 1.0
	v_dual_fmac_f32 v33, v35, v15 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, v30, v24
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v29, v29, v34
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v34, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v18, v33, v31
	s_mov_b32 vcc_lo, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v18, v15, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v30, v32, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v8, v15, v9, v8
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v15, off, off offset:4 ; 4-byte Folded Reload
	v_fma_f32 v26, v26, v36, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v25, v25, v34, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v19, v30, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v30, v34, v24
	v_div_scale_f32 v34, null, v29, v29, v11
	v_fma_f32 v19, -v19, v30, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v31, v34
	v_div_fmas_f32 v18, v19, v24, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v18, v14, v5
	v_fma_f32 v24, -v34, v31, 1.0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, s0, v11, v29, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v24, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v35, null, v16, v16, v12
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	v_mul_f32_e32 v5, v18, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v8, -v34, v5, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v5, v8, v31
	v_fma_f32 v19, -v35, v36, 1.0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v28, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v34, v5, v18
	v_fmac_f32_e32 v36, v19, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v15, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v9, v14, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v50, v3, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v35, v9, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v9, v15, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v27, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v35, v9, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v9, v14, v36, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v14, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v18, v31, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v29, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v4, v4, v19, v49
	scratch_load_b32 v19, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v49, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, v8, v14, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e64 v14.h, v142.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v9, v16, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e64 v9.h, v142.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v8.h, v142.l
	v_and_b32_e32 v6, 1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v19, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v15, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v14
	v_mov_b16_e32 v8.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v8
	v_add3_u32 v1, v3, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v8, 1, v9
	v_mov_b32_e32 v9, 0x5410
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_dual_mov_b32 v11, 0x7632 :: v_dual_cndmask_b32 v14, v13, v78
	v_cndmask_b32_e32 v1, v74, v46, vcc_lo
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	v_dual_cndmask_b32 v5, v73, v76 :: v_dual_cndmask_b32 v12, v75, v77
	v_dual_cndmask_b32 v7, v79, v80 :: v_dual_cndmask_b32 v8, v77, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_dual_cndmask_b32 v11, 0x3276, v11 :: v_dual_cndmask_b32 v2, v46, v74
	v_dual_cndmask_b32 v13, v78, v13 :: v_dual_cndmask_b32 v16, v17, v23
	v_cndmask_b32_e32 v18, v0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v4, v76, v73, vcc_lo
	v_dual_cndmask_b32 v6, v80, v79 :: v_dual_and_b32 v9, 0x540054, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v10, v11, 4, v11
	v_cndmask_b32_e32 v15, v23, v17, vcc_lo
	v_cndmask_b32_e32 v17, v3, v20, vcc_lo
	v_cndmask_b32_e32 v3, v20, v3, vcc_lo
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v9
	v_and_b32_e32 v20, 0x7060706, v10
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v7, v6, v19
	v_perm_b32 v5, v7, v6, v20
	v_perm_b32 v6, v11, v8, v19
	v_perm_b32 v7, v11, v8, v20
	v_perm_b32 v8, v12, v14, v19
	v_perm_b32 v9, v12, v14, v20
	v_perm_b32 v10, v13, v15, v19
	v_perm_b32 v11, v13, v15, v20
	v_perm_b32 v12, v16, v17, v19
	v_perm_b32 v13, v16, v17, v20
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v71, v72, 1
	v_add_lshl_u32 v17, v71, v22, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v14, v21, v18, v19
	v_perm_b32 v15, v21, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 72
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20876
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 72
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 72
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 17
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
