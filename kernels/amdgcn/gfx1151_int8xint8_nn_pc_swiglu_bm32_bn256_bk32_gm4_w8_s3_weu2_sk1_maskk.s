	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v19, 0xf0, v0
	v_and_b32_e32 v15, 8, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshrrev_b32_e32 v9, 3, v19
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
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s19
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s18
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
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s36, s3, 5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s36, v9
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 31
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s31, s27, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s3, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s31, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s29, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s31, s36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v82, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s28, s30
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s6, 0
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v10, v82, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, s26, s4, v10
	v_add_nc_u32_e32 v2, s31, v1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v1, vcc_lo
	v_lshl_or_b32 v83, v82, 9, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v6, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[2:5], v3, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v6, s[20:23], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s27, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v84, 0x90, v83
	v_add_nc_u32_e32 v58, 0, v83
	v_xor_b32_e32 v85, 0x110, v83
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s31, v6
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s27, v1
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v59, 0, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v60, 0, v85
	s_clause 0x1
	buffer_load_b128 v[24:27], v6, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v7, s[20:23], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v6, 2, v0
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v14, s31, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v11, 28, v6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v7, s30, v7
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v6, 0x37c, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s36, v11
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v7, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s36, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s36, s36, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v8, s36, v9
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s31, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_clause 0x1
	buffer_load_b128 v[32:35], v1, s[20:23], 0 offen
	buffer_load_b128 v[36:39], v8, s[20:23], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v13, s3
	v_cndmask_b32_e64 v8, 0x80000000, v14, s3
	s_clause 0x1
	buffer_load_b128 v[40:43], v1, s[20:23], 0 offen
	buffer_load_b128 v[44:47], v8, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s36, v11
	v_lshlrev_b32_e32 v14, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v56, v1, s[16:19], 0 offen
	v_bfe_i32 v1, v0, 5, 1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 0x90, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v1, 4, v0
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v16, v7, v6
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s36, v12
	v_and_b32_e32 v13, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v57, 0, v16
	buffer_load_b32 v61, v6, s[16:19], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v6, v20, v2, 0x5010400
	v_perm_b32 v7, v20, v2, 0x7030602
	v_perm_b32 v8, v21, v3, 0x5010400
	v_perm_b32 v17, v21, v3, 0x7030602
	v_perm_b32 v18, v22, v4, 0x5010400
	v_perm_b32 v21, v23, v5, 0x5010400
	v_perm_b32 v20, v22, v4, 0x7030602
	v_perm_b32 v22, v23, v5, 0x7030602
	v_lshrrev_b32_e32 v23, 8, v6
	v_lshrrev_b32_e32 v49, 8, v7
	v_lshrrev_b32_e32 v51, 8, v8
	v_lshrrev_b32_e32 v53, 8, v17
	v_lshrrev_b32_e32 v62, 24, v18
	v_lshrrev_b32_e32 v65, 8, v21
	v_lshrrev_b32_e32 v66, 24, v21
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v69, v28, v24, 0x5010400
	v_perm_b32 v70, v28, v24, 0x7030602
	v_perm_b32 v73, v30, v26, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v48, 24, v6
	v_lshrrev_b32_e32 v50, 24, v7
	v_lshrrev_b32_e32 v52, 24, v8
	v_lshrrev_b32_e32 v54, 24, v17
	v_lshrrev_b32_e32 v63, 8, v20
	v_lshrrev_b32_e32 v67, 8, v22
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v74, v30, v26, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v55, 8, v18
	v_lshrrev_b32_e32 v64, 24, v20
	v_lshrrev_b32_e32 v68, 24, v22
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v71, v29, v25, 0x5010400
	v_perm_b32 v75, v31, v27, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v2.l, 0xff, v6.l
	v_and_b16 v2.h, 0xff, v6.h
	v_and_b16 v3.l, 0xff, v7.l
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v5.l, 0xff, v17.l
	v_and_b16 v6.l, 0xff, v18.l
	v_and_b16 v6.h, 0xff, v18.h
	v_and_b16 v7.l, 0xff, v20.l
	v_and_b16 v8.l, 0xff, v21.l
	v_and_b16 v17.l, 0xff, v22.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v72, v29, v25, 0x7030602
	v_perm_b32 v76, v31, v27, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v23.l
	v_lshlrev_b16 v20.l, 8, v49.l
	v_lshlrev_b16 v21.l, 8, v51.l
	v_lshlrev_b16 v22.l, 8, v53.l
	v_lshlrev_b16 v23.h, 8, v62.l
	v_lshlrev_b16 v25.l, 8, v65.l
	v_lshlrev_b16 v25.h, 8, v66.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v51, 8, v69
	v_lshrrev_b32_e32 v53, 8, v70
	v_and_b16 v31.l, 0xff, v73.l
	v_lshrrev_b32_e32 v65, 8, v73
	v_lshrrev_b32_e32 v66, 24, v73
	v_and_b16 v31.h, 0xff, v73.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v3.h, 0xff, v7.h
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v17.h
	v_and_b16 v7.h, 0xff, v20.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v73, v36, v32, 0x5010400
	v_and_b16 v8.h, 0xff, v21.h
	v_and_b16 v17.h, 0xff, v22.h
	v_lshlrev_b16 v18.h, 8, v48.l
	v_lshlrev_b16 v20.h, 8, v50.l
	v_lshlrev_b16 v21.h, 8, v52.l
	v_lshlrev_b16 v22.h, 8, v54.l
	v_lshlrev_b16 v24.l, 8, v63.l
	v_lshlrev_b16 v26.l, 8, v67.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v52, 24, v69
	v_lshrrev_b32_e32 v54, 24, v70
	v_lshrrev_b32_e32 v67, 8, v74
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v23.l, 8, v55.l
	v_lshlrev_b16 v24.h, 8, v64.l
	v_lshlrev_b16 v26.h, 8, v68.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v55, 8, v71
	v_lshrrev_b32_e32 v68, 24, v74
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v36, v36, v32, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v27.l, 0xff, v69.l
	v_and_b16 v27.h, 0xff, v69.h
	v_lshrrev_b32_e32 v62, 24, v71
	v_lshrrev_b32_e32 v69, 8, v75
	s_waitcnt vmcnt(2)
	v_perm_b32 v78, v44, v40, 0x5010400
	v_and_b16 v28.l, 0xff, v70.l
	v_and_b16 v28.h, 0xff, v70.h
	v_and_b16 v29.l, 0xff, v71.l
	v_and_b16 v29.h, 0xff, v71.h
	v_and_b16 v30.l, 0xff, v72.l
	v_lshrrev_b32_e32 v63, 8, v72
	v_lshrrev_b32_e32 v64, 24, v72
	v_and_b16 v30.h, 0xff, v72.h
	v_and_b16 v48.l, 0xff, v74.l
	v_and_b16 v48.h, 0xff, v74.h
	v_and_b16 v49.l, 0xff, v75.l
	v_lshrrev_b32_e32 v70, 24, v75
	v_and_b16 v49.h, 0xff, v75.h
	v_and_b16 v50.l, 0xff, v76.l
	v_lshrrev_b32_e32 v71, 8, v76
	v_lshrrev_b32_e32 v72, 24, v76
	v_and_b16 v50.h, 0xff, v76.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v74, v37, v33, 0x5010400
	v_perm_b32 v37, v37, v33, 0x7030602
	v_perm_b32 v75, v38, v34, 0x5010400
	v_perm_b32 v38, v38, v34, 0x7030602
	v_perm_b32 v76, v39, v35, 0x5010400
	v_perm_b32 v77, v39, v35, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v44, v44, v40, 0x7030602
	v_perm_b32 v79, v45, v41, 0x5010400
	v_perm_b32 v45, v45, v41, 0x7030602
	v_perm_b32 v80, v46, v42, 0x5010400
	v_perm_b32 v46, v46, v42, 0x7030602
	v_perm_b32 v81, v47, v43, 0x5010400
	v_perm_b32 v86, v47, v43, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v2.l, v2.l, v18.l
	v_or_b16 v3.l, v3.l, v20.l
	v_or_b16 v6.h, v6.h, v23.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v18.l, 8, v51.l
	v_lshlrev_b16 v20.l, 8, v53.l
	v_lshlrev_b16 v23.h, 8, v66.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v51, 8, v73
	v_or_b16 v2.h, v2.h, v18.h
	v_or_b16 v3.h, v3.h, v20.h
	v_or_b16 v7.l, v7.l, v24.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v18.h, 8, v52.l
	v_lshlrev_b16 v20.h, 8, v54.l
	v_lshlrev_b16 v24.l, 8, v67.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v52, 24, v73
	v_or_b16 v4.l, v4.l, v21.l
	v_or_b16 v7.h, v7.h, v24.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.l, 8, v55.l
	v_lshlrev_b16 v24.h, 8, v68.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v53, 8, v36
	v_or_b16 v4.h, v4.h, v21.h
	v_or_b16 v8.l, v8.l, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.h, 8, v62.l
	v_lshlrev_b16 v25.l, 8, v69.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v54, 24, v36
	v_and_b16 v32.l, 0xff, v73.l
	v_and_b16 v32.h, 0xff, v73.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v73, 8, v78
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v5.l, v22.l
	v_or_b16 v5.h, v5.h, v22.h
	v_or_b16 v6.l, v6.l, v23.l
	v_or_b16 v8.h, v8.h, v25.h
	v_or_b16 v17.l, v17.l, v26.l
	v_or_b16 v17.h, v17.h, v26.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v63.l
	v_lshlrev_b16 v22.h, 8, v64.l
	v_lshlrev_b16 v23.l, 8, v65.l
	v_lshlrev_b16 v25.h, 8, v70.l
	v_lshlrev_b16 v26.l, 8, v71.l
	v_lshlrev_b16 v26.h, 8, v72.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v33.l, 0xff, v36.l
	v_and_b16 v33.h, 0xff, v36.h
	v_and_b16 v34.l, 0xff, v74.l
	v_lshrrev_b32_e32 v55, 8, v74
	v_lshrrev_b32_e32 v62, 24, v74
	v_and_b16 v34.h, 0xff, v74.h
	v_and_b16 v35.l, 0xff, v37.l
	v_lshrrev_b32_e32 v63, 8, v37
	v_lshrrev_b32_e32 v64, 24, v37
	v_and_b16 v35.h, 0xff, v37.h
	v_and_b16 v36.l, 0xff, v75.l
	v_lshrrev_b32_e32 v65, 8, v75
	v_lshrrev_b32_e32 v66, 24, v75
	v_and_b16 v36.h, 0xff, v75.h
	v_and_b16 v37.l, 0xff, v38.l
	v_lshrrev_b32_e32 v67, 8, v38
	v_lshrrev_b32_e32 v68, 24, v38
	v_and_b16 v37.h, 0xff, v38.h
	v_and_b16 v38.l, 0xff, v76.l
	v_lshrrev_b32_e32 v69, 8, v76
	v_lshrrev_b32_e32 v70, 24, v76
	v_and_b16 v38.h, 0xff, v76.h
	v_and_b16 v39.l, 0xff, v77.l
	v_lshrrev_b32_e32 v71, 8, v77
	v_lshrrev_b32_e32 v72, 24, v77
	v_and_b16 v39.h, 0xff, v77.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v40.l, 0xff, v78.l
	v_lshrrev_b32_e32 v74, 24, v78
	v_and_b16 v40.h, 0xff, v78.h
	v_and_b16 v41.l, 0xff, v44.l
	v_lshrrev_b32_e32 v75, 8, v44
	v_lshrrev_b32_e32 v76, 24, v44
	v_and_b16 v41.h, 0xff, v44.h
	v_and_b16 v42.l, 0xff, v79.l
	v_lshrrev_b32_e32 v77, 8, v79
	v_lshrrev_b32_e32 v78, 24, v79
	v_and_b16 v42.h, 0xff, v79.h
	v_and_b16 v43.l, 0xff, v45.l
	v_lshrrev_b32_e32 v79, 8, v45
	v_lshrrev_b32_e32 v87, 24, v45
	v_and_b16 v43.h, 0xff, v45.h
	v_and_b16 v44.l, 0xff, v80.l
	v_lshrrev_b32_e32 v88, 8, v80
	v_lshrrev_b32_e32 v89, 24, v80
	v_and_b16 v44.h, 0xff, v80.h
	v_and_b16 v45.l, 0xff, v46.l
	v_lshrrev_b32_e32 v80, 8, v46
	v_lshrrev_b32_e32 v90, 24, v46
	v_and_b16 v45.h, 0xff, v46.h
	v_and_b16 v46.l, 0xff, v81.l
	v_lshrrev_b32_e32 v91, 8, v81
	v_lshrrev_b32_e32 v92, 24, v81
	v_and_b16 v46.h, 0xff, v81.h
	v_lshrrev_b32_e32 v81, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_or_b16 v18.l, v27.l, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v2
	ds_store_b16_d16_hi v58, v2 offset:32
	ds_store_b16 v58, v3 offset:64
	ds_store_b16_d16_hi v58, v3 offset:96
	ds_store_b16_d16_hi v59, v4 offset:32
	ds_store_b16 v59, v5 offset:64
	ds_store_b16_d16_hi v59, v5 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v2.h, v28.l, v20.l
	v_or_b16 v20.l, v31.h, v23.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v23.h, 8, v51.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.l, v28.h, v20.h
	v_or_b16 v20.h, v48.l, v24.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.l, 8, v52.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.h, v29.l, v21.l
	v_or_b16 v21.l, v48.h, v24.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.h, 8, v53.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.h, v29.h, v21.h
	v_or_b16 v21.h, v49.l, v25.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.l, 8, v54.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v2.l, v27.h, v18.h
	v_lshlrev_b16 v31.h, 8, v73.l
	v_and_b16 v47.l, 0xff, v86.l
	v_and_b16 v47.h, 0xff, v86.h
	v_or_b16 v5.l, v30.l, v22.l
	v_or_b16 v5.h, v30.h, v22.h
	v_or_b16 v18.h, v31.l, v23.l
	v_or_b16 v22.l, v49.h, v25.h
	v_or_b16 v22.h, v50.l, v26.l
	v_or_b16 v23.l, v50.h, v26.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.h, 8, v55.l
	v_lshlrev_b16 v26.l, 8, v62.l
	v_lshlrev_b16 v26.h, 8, v63.l
	v_lshlrev_b16 v27.l, 8, v64.l
	v_lshlrev_b16 v27.h, 8, v65.l
	v_lshlrev_b16 v28.l, 8, v66.l
	v_lshlrev_b16 v28.h, 8, v67.l
	v_lshlrev_b16 v29.l, 8, v68.l
	v_lshlrev_b16 v29.h, 8, v69.l
	v_lshlrev_b16 v30.l, 8, v70.l
	v_lshlrev_b16 v30.h, 8, v71.l
	v_lshlrev_b16 v31.l, 8, v72.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v48.l, 8, v74.l
	v_lshlrev_b16 v48.h, 8, v75.l
	v_lshlrev_b16 v49.l, 8, v76.l
	v_lshlrev_b16 v49.h, 8, v77.l
	v_lshlrev_b16 v50.l, 8, v78.l
	v_lshlrev_b16 v50.h, 8, v79.l
	v_lshlrev_b16 v51.l, 8, v87.l
	v_lshlrev_b16 v51.h, 8, v88.l
	v_lshlrev_b16 v52.l, 8, v89.l
	v_lshlrev_b16 v52.h, 8, v80.l
	v_lshlrev_b16 v53.l, 8, v90.l
	v_lshlrev_b16 v53.h, 8, v91.l
	v_lshlrev_b16 v54.l, 8, v92.l
	v_lshlrev_b16 v54.h, 8, v81.l
	v_lshlrev_b16 v55.l, 8, v93.l
	ds_store_b16 v58, v18 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v4
	ds_store_b16 v60, v6
	ds_store_b16_d16_hi v60, v6 offset:32
	ds_store_b16 v60, v7 offset:64
	ds_store_b16_d16_hi v60, v7 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v57, v56 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v58, v2 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v8 offset:384
	ds_store_b16_d16_hi v58, v8 offset:416
	ds_store_b16 v58, v17 offset:448
	ds_store_b16_d16_hi v58, v17 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v58, v2 offset:16416
	ds_store_b16 v58, v3 offset:16480
	ds_store_b16_d16_hi v59, v3 offset:16384
	ds_store_b16_d16_hi v59, v4 offset:16416
	ds_store_b16 v59, v5 offset:16448
	ds_store_b16_d16_hi v59, v5 offset:16480
	ds_store_b16_d16_hi v60, v18 offset:16384
	ds_store_b16 v60, v20 offset:16416
	ds_store_b16_d16_hi v60, v20 offset:16448
	ds_store_b16 v60, v21 offset:16480
	ds_store_b16_d16_hi v58, v21 offset:16768
	ds_store_b16 v58, v22 offset:16800
	ds_store_b16_d16_hi v58, v22 offset:16832
	ds_store_b16 v58, v23 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v2.l, v32.l, v23.h
	v_or_b16 v2.h, v32.h, v24.l
	v_or_b16 v3.l, v33.l, v24.h
	v_or_b16 v3.h, v33.h, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v18.l, v40.l, v31.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v34.l, v25.h
	v_or_b16 v4.h, v34.h, v26.l
	v_or_b16 v5.l, v35.l, v26.h
	v_or_b16 v5.h, v35.h, v27.l
	v_or_b16 v6.l, v36.l, v27.h
	v_or_b16 v6.h, v36.h, v28.l
	v_or_b16 v7.l, v37.l, v28.h
	v_or_b16 v7.h, v37.h, v29.l
	v_or_b16 v8.l, v38.l, v29.h
	v_or_b16 v8.h, v38.h, v30.l
	v_or_b16 v17.l, v39.l, v30.h
	v_or_b16 v17.h, v39.h, v31.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v18.h, v40.h, v48.l
	v_or_b16 v20.l, v41.l, v48.h
	v_or_b16 v20.h, v41.h, v49.l
	v_or_b16 v21.l, v42.l, v49.h
	v_or_b16 v21.h, v42.h, v50.l
	v_or_b16 v22.l, v43.l, v50.h
	v_or_b16 v22.h, v43.h, v51.l
	v_or_b16 v23.l, v44.l, v51.h
	v_or_b16 v23.h, v44.h, v52.l
	v_or_b16 v24.l, v45.l, v52.h
	v_or_b16 v24.h, v45.h, v53.l
	v_or_b16 v25.l, v46.l, v53.h
	v_or_b16 v25.h, v46.h, v54.l
	v_or_b16 v26.l, v47.l, v54.h
	v_or_b16 v26.h, v47.h, v55.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v2 offset:8192
	ds_store_b16_d16_hi v58, v2 offset:8224
	ds_store_b16 v58, v3 offset:8256
	ds_store_b16_d16_hi v58, v3 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v58, v18 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v4 offset:8192
	ds_store_b16_d16_hi v59, v4 offset:8224
	ds_store_b16 v59, v5 offset:8256
	ds_store_b16_d16_hi v59, v5 offset:8288
	ds_store_b16 v60, v6 offset:8192
	ds_store_b16_d16_hi v60, v6 offset:8224
	ds_store_b16 v60, v7 offset:8256
	ds_store_b16_d16_hi v60, v7 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v57, v61 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v58, v20 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v8 offset:8576
	ds_store_b16_d16_hi v58, v8 offset:8608
	ds_store_b16 v58, v17 offset:8640
	ds_store_b16_d16_hi v58, v17 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v58, v18 offset:24608
	ds_store_b16_d16_hi v58, v20 offset:24672
	ds_store_b16 v59, v21 offset:24576
	ds_store_b16_d16_hi v59, v21 offset:24608
	ds_store_b16 v59, v22 offset:24640
	ds_store_b16_d16_hi v59, v22 offset:24672
	ds_store_b16 v60, v23 offset:24576
	ds_store_b16_d16_hi v60, v23 offset:24608
	ds_store_b16 v60, v24 offset:24640
	ds_store_b16_d16_hi v60, v24 offset:24672
	ds_store_b16 v58, v25 offset:24960
	ds_store_b16_d16_hi v58, v25 offset:24992
	ds_store_b16 v58, v26 offset:25024
	ds_store_b16_d16_hi v58, v26 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v88, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0xe00, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v2, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v89, 8, v0
	s_mov_b32 s3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v87, 0x160, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v86, 0x60, v88, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr86
.LBB0_3:                                ; %Flow304
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[24:25], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v1, 0xe00, v1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s37, s5, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v87, 0x160, v14
	v_and_or_b32 v86, 0x60, v14, v1
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v88, s31, v10
	v_mov_b32_e32 v80, 0
	v_xor_b32_e32 v1, v2, v3
	v_or_b32_e32 v89, v2, v87
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v90, v86, v1
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v91, 16, v89
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_xor_b32_e32 v92, 16, v90
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	s_add_i32 s36, s36, 32
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s34, 0, 0x8400
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s0, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s8, s3
	s_mov_b32 s3, s1
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s5, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s9, s0, 1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s0, s36, s1
	s_mov_b32 s6, s35
	v_or_b32_e32 v99, s0, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s1, s0, s31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v100, s0, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v101, s0, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s0, s1, s26
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v102, s0, v10
	v_add_nc_u32_e32 v103, s0, v88
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s1, s0, s27
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s0, s30, v99
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v93, s6, v89
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v100, s1, v10
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v94, s6, v91
	v_cndmask_b32_e64 v99, 0x80000000, v101, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v95, s7, v90
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v101, s1, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v96, s7, v92
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v205, v99, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[141:144], v93
	ds_load_b128 v[157:160], v93 offset:512
	ds_load_b128 v[161:164], v94
	ds_load_b128 v[165:168], v94 offset:512
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v93, 0x80000000, v103, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v97, s8, v90
	v_cndmask_b32_e32 v94, 0x80000000, v100, vcc_lo
	v_add_nc_u32_e32 v98, s8, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v95
	ds_load_b128 v[125:128], v95 offset:4096
	ds_load_b128 v[169:172], v96
	ds_load_b128 v[173:176], v96 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[149:152], v97
	ds_load_b128 v[177:180], v97 offset:4096
	ds_load_b128 v[181:184], v98
	ds_load_b128 v[185:188], v98 offset:4096
	v_cndmask_b32_e32 v95, 0x80000000, v101, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[189:192], v102, s[20:23], 0 offen
	buffer_load_b128 v[193:196], v93, s[20:23], 0 offen
	buffer_load_b128 v[197:200], v94, s[20:23], 0 offen
	buffer_load_b128 v[201:204], v95, s[20:23], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s9, 2
	s_mov_b32 s4, s33
	s_cselect_b32 s0, s9, 0
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s0, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s0, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s7, 0
	s_mov_b32 s35, s34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[117:120], v[141:144], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[125:128], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[117:120], v[157:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[169:172], v[161:164], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[125:128], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[149:152], v[141:144], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[173:176], v[161:164], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[169:172], v[165:168], v[109:116] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[149:156], v[177:180], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[117:124], v[173:176], v[165:168], v[117:124] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[181:184], v[161:164], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[185:188], v[161:164], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[181:184], v[165:168], v[141:148] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v97
	v_dual_add_f32 v73, v73, v98 :: v_dual_add_nc_u32 v206, s1, v16
	v_dual_add_f32 v56, v56, v105 :: v_dual_add_nc_u32 v207, s33, v83
	v_dual_add_f32 v57, v57, v106 :: v_dual_add_nc_u32 v208, s33, v84
	v_dual_add_f32 v52, v52, v107 :: v_dual_add_nc_u32 v209, s33, v85
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[149:156], v[185:188], v[165:168], v[149:156] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
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
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v79, v79, v96
	v_dual_add_f32 v69, v69, v100 :: v_dual_add_f32 v68, v68, v99
	v_dual_add_f32 v65, v65, v102 :: v_dual_add_f32 v64, v64, v101
	v_dual_add_f32 v61, v61, v104 :: v_dual_add_f32 v60, v60, v103
	v_dual_add_f32 v53, v53, v108 :: v_dual_add_f32 v48, v48, v109
	v_dual_add_f32 v49, v49, v110 :: v_dual_add_f32 v44, v44, v111
	v_dual_add_f32 v45, v45, v112 :: v_dual_add_f32 v40, v40, v113
	v_dual_add_f32 v37, v37, v116 :: v_dual_add_f32 v32, v32, v117
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v80, v80, v93 :: v_dual_add_f32 v41, v41, v114
	v_dual_add_f32 v36, v36, v115 :: v_dual_add_f32 v33, v33, v118
	v_dual_add_f32 v28, v28, v119 :: v_dual_add_f32 v29, v29, v120
	v_dual_add_f32 v22, v22, v121 :: v_dual_add_f32 v23, v23, v122
	v_dual_add_f32 v20, v20, v123 :: v_dual_add_f32 v21, v21, v124
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v74, v74, v125 :: v_dual_add_f32 v75, v75, v126
	v_dual_add_f32 v76, v76, v127 :: v_dual_add_f32 v77, v77, v128
	v_dual_add_f32 v70, v70, v129 :: v_dual_add_f32 v71, v71, v130
	v_dual_add_f32 v66, v66, v131 :: v_dual_add_f32 v67, v67, v132
	v_dual_add_f32 v62, v62, v133 :: v_dual_add_f32 v63, v63, v134
	v_dual_add_f32 v58, v58, v135 :: v_dual_add_f32 v59, v59, v136
	v_dual_add_f32 v54, v54, v137 :: v_dual_add_f32 v55, v55, v138
	v_dual_add_f32 v50, v50, v139 :: v_dual_add_f32 v51, v51, v140
	v_dual_add_f32 v46, v46, v141 :: v_dual_add_f32 v47, v47, v142
	v_dual_add_f32 v42, v42, v143 :: v_dual_add_f32 v43, v43, v144
	v_dual_add_f32 v38, v38, v145 :: v_dual_add_f32 v39, v39, v146
	v_dual_add_f32 v18, v18, v148 :: v_dual_add_f32 v17, v17, v147
	v_dual_add_f32 v34, v34, v149 :: v_dual_add_f32 v35, v35, v150
	v_dual_add_f32 v30, v30, v151 :: v_dual_add_f32 v31, v31, v152
	v_dual_add_f32 v26, v26, v153 :: v_dual_add_f32 v27, v27, v154
	v_dual_add_f32 v24, v24, v155 :: v_dual_add_f32 v25, v25, v156
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s34, s1, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s1, s33, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s37
	s_mov_b32 s5, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v206, v205 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v94, v193, v189, 0x5010400
	v_perm_b32 v95, v193, v189, 0x7030602
	v_perm_b32 v97, v194, v190, 0x7030602
	v_perm_b32 v96, v194, v190, 0x5010400
	v_perm_b32 v98, v195, v191, 0x5010400
	v_perm_b32 v99, v195, v191, 0x7030602
	v_perm_b32 v100, v196, v192, 0x5010400
	v_perm_b32 v101, v196, v192, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v102, v201, v197, 0x5010400
	v_perm_b32 v103, v201, v197, 0x7030602
	v_perm_b32 v104, v202, v198, 0x5010400
	v_perm_b32 v105, v202, v198, 0x7030602
	v_perm_b32 v106, v203, v199, 0x5010400
	v_perm_b32 v107, v203, v199, 0x7030602
	v_perm_b32 v108, v204, v200, 0x5010400
	v_perm_b32 v109, v204, v200, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v110, 8, v94
	v_lshrrev_b32_e32 v111, 24, v94
	v_lshrrev_b32_e32 v112, 8, v95
	v_lshrrev_b32_e32 v113, 24, v95
	v_lshrrev_b32_e32 v116, 8, v97
	v_and_b16 v93.l, 0xff, v94.l
	v_and_b16 v94.l, 0xff, v95.l
	v_and_b16 v95.l, 0xff, v96.l
	v_lshrrev_b32_e32 v114, 8, v96
	v_lshrrev_b32_e32 v115, 24, v96
	v_and_b16 v96.l, 0xff, v97.l
	v_lshrrev_b32_e32 v117, 24, v97
	v_and_b16 v97.l, 0xff, v98.l
	v_lshrrev_b32_e32 v118, 8, v98
	v_lshrrev_b32_e32 v119, 24, v98
	v_and_b16 v98.l, 0xff, v99.l
	v_lshrrev_b32_e32 v120, 8, v99
	v_lshrrev_b32_e32 v121, 24, v99
	v_and_b16 v99.l, 0xff, v100.l
	v_lshrrev_b32_e32 v122, 8, v100
	v_lshrrev_b32_e32 v123, 24, v100
	v_and_b16 v100.l, 0xff, v101.l
	v_lshrrev_b32_e32 v124, 8, v101
	v_lshrrev_b32_e32 v125, 24, v101
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v101.l, 0xff, v102.l
	v_lshrrev_b32_e32 v126, 8, v102
	v_lshrrev_b32_e32 v127, 24, v102
	v_and_b16 v102.l, 0xff, v103.l
	v_lshrrev_b32_e32 v128, 8, v103
	v_lshrrev_b32_e32 v129, 24, v103
	v_and_b16 v103.l, 0xff, v104.l
	v_lshrrev_b32_e32 v130, 8, v104
	v_lshrrev_b32_e32 v131, 24, v104
	v_and_b16 v104.l, 0xff, v105.l
	v_lshrrev_b32_e32 v132, 8, v105
	v_lshrrev_b32_e32 v133, 24, v105
	v_and_b16 v105.l, 0xff, v106.l
	v_lshrrev_b32_e32 v134, 8, v106
	v_lshrrev_b32_e32 v135, 24, v106
	v_and_b16 v106.l, 0xff, v107.l
	v_lshrrev_b32_e32 v136, 8, v107
	v_lshrrev_b32_e32 v137, 24, v107
	v_and_b16 v107.l, 0xff, v108.l
	v_lshrrev_b32_e32 v138, 8, v108
	v_lshrrev_b32_e32 v139, 24, v108
	v_and_b16 v108.l, 0xff, v109.l
	v_lshrrev_b32_e32 v140, 8, v109
	v_lshrrev_b32_e32 v141, 24, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v109.l, 8, v110.l
	v_and_b16 v93.h, 0xff, v94.h
	v_and_b16 v94.h, 0xff, v95.h
	v_and_b16 v95.h, 0xff, v96.h
	v_and_b16 v96.h, 0xff, v97.h
	v_and_b16 v97.h, 0xff, v98.h
	v_and_b16 v98.h, 0xff, v99.h
	v_and_b16 v99.h, 0xff, v100.h
	v_and_b16 v100.h, 0xff, v101.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v101.h, 0xff, v102.h
	v_and_b16 v102.h, 0xff, v103.h
	v_and_b16 v103.h, 0xff, v104.h
	v_and_b16 v104.h, 0xff, v105.h
	v_and_b16 v105.h, 0xff, v106.h
	v_and_b16 v106.h, 0xff, v107.h
	v_and_b16 v107.h, 0xff, v108.h
	v_and_b16 v108.h, 0xff, v109.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v109.h, 8, v111.l
	v_lshlrev_b16 v110.l, 8, v112.l
	v_lshlrev_b16 v110.h, 8, v113.l
	v_lshlrev_b16 v112.l, 8, v116.l
	v_lshlrev_b16 v111.l, 8, v114.l
	v_lshlrev_b16 v111.h, 8, v115.l
	v_lshlrev_b16 v112.h, 8, v117.l
	v_lshlrev_b16 v113.l, 8, v118.l
	v_lshlrev_b16 v113.h, 8, v119.l
	v_lshlrev_b16 v114.l, 8, v120.l
	v_lshlrev_b16 v114.h, 8, v121.l
	v_lshlrev_b16 v115.l, 8, v122.l
	v_lshlrev_b16 v115.h, 8, v123.l
	v_lshlrev_b16 v116.l, 8, v124.l
	v_lshlrev_b16 v116.h, 8, v125.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v117.l, 8, v126.l
	v_lshlrev_b16 v117.h, 8, v127.l
	v_lshlrev_b16 v118.l, 8, v128.l
	v_lshlrev_b16 v118.h, 8, v129.l
	v_lshlrev_b16 v119.l, 8, v130.l
	v_lshlrev_b16 v119.h, 8, v131.l
	v_lshlrev_b16 v120.l, 8, v132.l
	v_lshlrev_b16 v120.h, 8, v133.l
	v_lshlrev_b16 v121.l, 8, v134.l
	v_lshlrev_b16 v121.h, 8, v135.l
	v_lshlrev_b16 v122.l, 8, v136.l
	v_lshlrev_b16 v122.h, 8, v137.l
	v_lshlrev_b16 v123.l, 8, v138.l
	v_lshlrev_b16 v123.h, 8, v139.l
	v_lshlrev_b16 v124.l, 8, v140.l
	v_lshlrev_b16 v124.h, 8, v141.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v93.l, v93.l, v109.l
	v_or_b16 v93.h, v93.h, v109.h
	v_or_b16 v94.l, v94.l, v110.l
	v_or_b16 v94.h, v94.h, v110.h
	v_or_b16 v96.l, v96.l, v112.l
	v_or_b16 v95.l, v95.l, v111.l
	v_or_b16 v95.h, v95.h, v111.h
	v_or_b16 v96.h, v96.h, v112.h
	v_or_b16 v97.l, v97.l, v113.l
	v_or_b16 v97.h, v97.h, v113.h
	v_or_b16 v98.l, v98.l, v114.l
	v_or_b16 v98.h, v98.h, v114.h
	v_or_b16 v99.l, v99.l, v115.l
	v_or_b16 v99.h, v99.h, v115.h
	v_or_b16 v100.l, v100.l, v116.l
	v_or_b16 v100.h, v100.h, v116.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v101.l, v101.l, v117.l
	v_or_b16 v101.h, v101.h, v117.h
	v_or_b16 v102.l, v102.l, v118.l
	v_or_b16 v102.h, v102.h, v118.h
	v_or_b16 v103.l, v103.l, v119.l
	v_or_b16 v103.h, v103.h, v119.h
	v_or_b16 v104.l, v104.l, v120.l
	v_or_b16 v104.h, v104.h, v120.h
	v_or_b16 v105.l, v105.l, v121.l
	v_or_b16 v105.h, v105.h, v121.h
	v_or_b16 v106.l, v106.l, v122.l
	v_or_b16 v106.h, v106.h, v122.h
	v_or_b16 v107.l, v107.l, v123.l
	v_or_b16 v107.h, v107.h, v123.h
	v_or_b16 v108.l, v108.l, v124.l
	v_or_b16 v108.h, v108.h, v124.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v207, v93
	ds_store_b16_d16_hi v207, v93 offset:32
	ds_store_b16 v207, v94 offset:64
	ds_store_b16_d16_hi v207, v94 offset:96
	ds_store_b16 v208, v96 offset:64
	ds_store_b16_d16_hi v208, v96 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v207, v101 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v208, v95
	ds_store_b16_d16_hi v208, v95 offset:32
	ds_store_b16 v209, v97
	ds_store_b16_d16_hi v209, v97 offset:32
	ds_store_b16 v209, v98 offset:64
	ds_store_b16_d16_hi v209, v98 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v207, v102 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v207, v99 offset:384
	ds_store_b16_d16_hi v207, v99 offset:416
	ds_store_b16 v207, v100 offset:448
	ds_store_b16_d16_hi v207, v100 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v207, v101 offset:16416
	ds_store_b16_d16_hi v207, v102 offset:16480
	ds_store_b16 v208, v103 offset:16384
	ds_store_b16_d16_hi v208, v103 offset:16416
	ds_store_b16 v208, v104 offset:16448
	ds_store_b16_d16_hi v208, v104 offset:16480
	ds_store_b16 v209, v105 offset:16384
	ds_store_b16_d16_hi v209, v105 offset:16416
	ds_store_b16 v209, v106 offset:16448
	ds_store_b16_d16_hi v209, v106 offset:16480
	ds_store_b16 v207, v107 offset:16768
	ds_store_b16_d16_hi v207, v107 offset:16800
	ds_store_b16 v207, v108 offset:16832
	ds_store_b16_d16_hi v207, v108 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v88, v14 :: v_dual_mov_b32 v89, v15
	v_mov_b32_e32 v2, v13
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v74, 0
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s34, 0, 0x8400
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s3, 0, 0x4000
	v_mov_b32_e32 v75, v74
	v_mov_b32_e32 v70, v74
	v_mov_b32_e32 v72, v74
	v_mov_b32_e32 v66, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v68, v74 :: v_dual_mov_b32 v69, v75
	v_dual_mov_b32 v81, v75 :: v_dual_mov_b32 v80, v74
	v_mov_b32_e32 v71, v75
	v_mov_b32_e32 v73, v75
	v_dual_mov_b32 v77, v75 :: v_dual_mov_b32 v76, v74
	v_dual_mov_b32 v79, v75 :: v_dual_mov_b32 v78, v74
	v_dual_mov_b32 v67, v75 :: v_dual_mov_b32 v62, v74
	v_dual_mov_b32 v63, v75 :: v_dual_mov_b32 v64, v74
	v_dual_mov_b32 v65, v75 :: v_dual_mov_b32 v54, v74
	v_dual_mov_b32 v55, v75 :: v_dual_mov_b32 v56, v74
	v_dual_mov_b32 v57, v75 :: v_dual_mov_b32 v58, v74
	v_dual_mov_b32 v59, v75 :: v_dual_mov_b32 v60, v74
	v_dual_mov_b32 v61, v75 :: v_dual_mov_b32 v50, v74
	v_dual_mov_b32 v51, v75 :: v_dual_mov_b32 v52, v74
	v_dual_mov_b32 v53, v75 :: v_dual_mov_b32 v46, v74
	v_dual_mov_b32 v47, v75 :: v_dual_mov_b32 v48, v74
	v_dual_mov_b32 v49, v75 :: v_dual_mov_b32 v38, v74
	v_dual_mov_b32 v39, v75 :: v_dual_mov_b32 v40, v74
	v_dual_mov_b32 v41, v75 :: v_dual_mov_b32 v42, v74
	v_dual_mov_b32 v43, v75 :: v_dual_mov_b32 v44, v74
	v_mov_b32_e32 v45, v75
	v_dual_mov_b32 v17, v74 :: v_dual_mov_b32 v18, v75
	v_dual_mov_b32 v36, v74 :: v_dual_mov_b32 v37, v75
	v_dual_mov_b32 v34, v74 :: v_dual_mov_b32 v35, v75
	v_dual_mov_b32 v32, v74 :: v_dual_mov_b32 v33, v75
	v_dual_mov_b32 v26, v74 :: v_dual_mov_b32 v27, v75
	v_dual_mov_b32 v22, v74 :: v_dual_mov_b32 v23, v75
	v_dual_mov_b32 v30, v74 :: v_dual_mov_b32 v31, v75
	v_dual_mov_b32 v28, v74 :: v_dual_mov_b32 v29, v75
	v_dual_mov_b32 v24, v74 :: v_dual_mov_b32 v25, v75
	v_dual_mov_b32 v20, v74 :: v_dual_mov_b32 v21, v75
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v83, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v85, v83, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v84, 0x110, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v87, 16, v85
	v_add_nc_u32_e32 v1, s35, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v83, v83, v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v84, 0, 1, s29
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s35, v87
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v2 offset:512
	v_or_b32_e32 v83, v86, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v84
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v84, 16, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v86, s6, v83
	v_add_nc_u32_e32 v89, s6, v84
	ds_load_b128 v[121:124], v86
	ds_load_b128 v[125:128], v86 offset:4096
	ds_load_b128 v[129:132], v89 offset:4096
	ds_load_b128 v[133:136], v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	v_dual_mov_b32 v96, s11 :: v_dual_mov_b32 v93, s8
	v_dual_mov_b32 v95, s10 :: v_dual_mov_b32 v94, s9
	v_dual_mov_b32 v92, s7 :: v_dual_mov_b32 v91, s6
	v_dual_mov_b32 v90, s5 :: v_dual_mov_b32 v89, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[121:124], v[13:16], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[125:128], v[13:16], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[121:124], v[9:12], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[133:136], v[5:8], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[129:132], v[5:8], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[125:128], v[9:12], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[133:136], v[1:4], v[113:120] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v86, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v78, v78, v86 :: v_dual_add_f32 v79, v79, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v107
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v60, v86 :: v_dual_add_f32 v57, v57, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v112
	v_cvt_f32_i32_e32 v106, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v73, v73, v101 :: v_dual_add_f32 v72, v72, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v109
	v_cvt_f32_i32_e32 v99, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v116
	v_wmma_i32_16x16x16_iu8 v[89:96], v[129:132], v[1:4], v[89:96] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v61, v61, v106 :: v_dual_add_f32 v56, v56, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v118
	v_cvt_f32_i32_e32 v101, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v117
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v90
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v101, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v33, v33, v86 :: v_dual_add_f32 v32, v32, v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v94
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v29, v29, v90 :: v_dual_add_f32 v28, v28, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v89, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v96
	v_cvt_f32_i32_e32 v90, v95
	v_cvt_f32_i32_e32 v91, v98
	v_cvt_f32_i32_e32 v92, v97
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v69, v103 :: v_dual_add_f32 v68, v68, v102
	v_dual_add_f32 v65, v65, v105 :: v_dual_add_f32 v64, v64, v104
	v_dual_add_f32 v40, v40, v100 :: v_dual_add_f32 v37, v37, v101
	v_add_f32_e32 v36, v36, v99
	v_dual_add_f32 v22, v22, v89 :: v_dual_add_f32 v21, v21, v86
	v_add_f32_e32 v80, v80, v92
	v_dual_add_f32 v20, v20, v90 :: v_dual_add_f32 v81, v81, v91
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
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
	v_add_nc_u32_e32 v86, s3, v83
	v_add_nc_u32_e32 v89, s3, v84
	ds_load_b128 v[121:124], v86
	ds_load_b128 v[125:128], v86 offset:4096
	ds_load_b128 v[129:132], v89 offset:4096
	ds_load_b128 v[133:136], v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v96, s11 :: v_dual_mov_b32 v93, s8
	v_dual_mov_b32 v95, s10 :: v_dual_mov_b32 v94, s9
	v_dual_mov_b32 v92, s7 :: v_dual_mov_b32 v91, s6
	v_dual_mov_b32 v90, s5 :: v_dual_mov_b32 v89, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[121:124], v[13:16], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[125:128], v[13:16], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[121:124], v[9:12], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[125:128], v[9:12], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[133:136], v[5:8], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[129:132], v[5:8], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[133:136], v[1:4], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[129:132], v[1:4], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v99
	v_cvt_f32_i32_e32 v2, v100
	v_cvt_f32_i32_e32 v3, v101
	v_cvt_f32_i32_e32 v4, v102
	v_cvt_f32_i32_e32 v5, v103
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v76, v76, v1 :: v_dual_add_f32 v77, v77, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v108
	v_cvt_f32_i32_e32 v2, v107
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v71, v71, v4 :: v_dual_add_f32 v70, v70, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v110
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v59, v59, v1 :: v_dual_add_f32 v58, v58, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v112
	v_cvt_f32_i32_e32 v4, v109
	v_cvt_f32_i32_e32 v2, v111
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v55, v55, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v114
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v51, v51, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v54, v54, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v113
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v50, v50, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v115
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v43, v43, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v47, v47, v3 :: v_dual_add_f32 v46, v46, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v117
	v_cvt_f32_i32_e32 v4, v120
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v42, v42, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v39, v39, v1 :: v_dual_add_f32 v38, v38, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v90
	v_cvt_f32_i32_e32 v6, v104
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v17, v17, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v89
	v_cvt_f32_i32_e32 v3, v92
	v_cvt_f32_i32_e32 v4, v91
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v35, v35, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v94
	v_cvt_f32_i32_e32 v7, v105
	v_cvt_f32_i32_e32 v8, v106
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v67, v67, v6 :: v_dual_add_f32 v66, v66, v5
	v_dual_add_f32 v34, v34, v2 :: v_dual_add_f32 v31, v31, v3
	v_add_f32_e32 v30, v30, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v93
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v27, v27, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v96
	v_cvt_f32_i32_e32 v3, v95
	v_cvt_f32_i32_e32 v4, v98
	v_cvt_f32_i32_e32 v5, v97
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v63, v63, v8 :: v_dual_add_f32 v62, v62, v7
	v_dual_add_f32 v26, v26, v2 :: v_dual_add_f32 v25, v25, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v24, v24, v3 :: v_dual_add_f32 v75, v75, v4
	v_add_f32_e32 v74, v74, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v1, s34, v85
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v2, s34, v87
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v85, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[1:4], v2 offset:512
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_cmp_ne_u32_e64 s0, 1, v85
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_mov_b32_e32 v119, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
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
	v_add_nc_u32_e32 v85, s33, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v123, s11 :: v_dual_add_nc_u32 v86, s33, v84
	v_mov_b32_e32 v122, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[90:93], v85
	ds_load_b128 v[112:115], v85 offset:4096
	ds_load_b128 v[132:135], v86 offset:4096
	ds_load_b128 v[136:139], v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v121, s9 :: v_dual_mov_b32 v120, s8
	v_dual_mov_b32 v119, s7 :: v_dual_mov_b32 v118, s6
	v_dual_mov_b32 v117, s5 :: v_dual_mov_b32 v116, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[90:93], v[13:16], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[112:115], v[13:16], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[90:93], v[9:12], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[112:115], v[9:12], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[136:139], v[5:8], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[132:135], v[5:8], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[136:139], v[1:4], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[132:135], v[1:4], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v86, v126
	v_cvt_f32_i32_e32 v91, v127
	v_cvt_f32_i32_e32 v85, v128
	v_cvt_f32_i32_e32 v87, v129
	v_cvt_f32_i32_e32 v90, v130
	v_cvt_f32_i32_e32 v93, v131
	v_cvt_f32_i32_e32 v92, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v94, v100
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v102, v108
	v_cvt_f32_i32_e32 v105, v109
	v_cvt_f32_i32_e32 v106, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	v_cvt_f32_i32_e32 v120, v123
	v_cvt_f32_i32_e32 v109, v124
	v_cvt_f32_i32_e32 v110, v125
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_mov_b32_e32 v151, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v154, s11 :: v_dual_add_nc_u32 v83, s1, v83
	v_dual_mov_b32 v153, s10 :: v_dual_add_nc_u32 v84, s1, v84
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[155:158], v83
	ds_load_b128 v[159:162], v83 offset:4096
	ds_load_b128 v[163:166], v84 offset:4096
	ds_load_b128 v[167:170], v84
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v152, s9 :: v_dual_mov_b32 v151, s8
	v_dual_mov_b32 v150, s7 :: v_dual_mov_b32 v149, s6
	v_dual_mov_b32 v148, s5 :: v_dual_mov_b32 v147, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[155:158], v[13:16], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[159:162], v[13:16], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[155:158], v[9:12], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[9:12], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[5:8], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[163:166], v[5:8], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[1:4], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[163:166], v[1:4], v[147:154] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v89, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v121, v127
	v_cvt_f32_i32_e32 v124, v128
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v129, v135
	v_cvt_f32_i32_e32 v132, v136
	v_cvt_f32_i32_e32 v133, v137
	v_cvt_f32_i32_e32 v136, v138
	v_cvt_f32_i32_e32 v135, v139
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v139, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v137, v143
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v146, v148
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v145, v151
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v151, v154
.LBB0_16:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, s28, v82
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v2, s26, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v152, v81, v110 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_add_f32 v153, v80, v109 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s20, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v3, 32, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v4, v19, 2, 0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s26, s27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v114, v57, v97 :: v_dual_add_f32 v115, v56, v94
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v11, v1, s[20:23], 0 offen
	buffer_load_u16 v10, v3, s[20:23], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v154, v79, v91 :: v_dual_and_b32 v3, 32, v88
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v1, v2, s[20:23], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v155, v78, v86 :: v_dual_lshlrev_b32 v2, 1, v0
	v_add_f32_e32 v157, v72, v85
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v109, v53, v101 :: v_dual_and_b32 v2, 28, v2
	v_add_f32_e32 v110, v52, v98
	v_dual_add_f32 v12, v49, v103 :: v_dual_add_f32 v13, v48, v100
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v9, v4, v3, v2
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v2, s0, v0, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v5, v45, v107 :: v_dual_add_f32 v6, v44, v104
	v_dual_add_f32 v97, v33, v113 :: v_dual_add_f32 v98, v32, v108
	v_dual_add_f32 v84, v21, v120 :: v_dual_add_f32 v85, v20, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v107, v75, v122 :: v_dual_add_f32 v118, v70, v121
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v103, v19, 1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v162, v61, v99 :: v_dual_add_f32 v163, v60, v96
	v_dual_add_f32 v99, v37, v111 :: v_dual_add_f32 v100, v36, v106
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v106, v81, v152, s2
	v_cndmask_b32_e64 v81, v75, v107, s2
	v_cndmask_b32_e64 v107, v72, v157, s2
	v_cndmask_b32_e64 v72, v70, v118, s2
	v_cndmask_b32_e64 v56, v56, v115, s2
	v_cndmask_b32_e64 v57, v57, v114, s2
	v_cndmask_b32_e64 v52, v52, v110, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v158, v69, v93 :: v_dual_add_f32 v159, v68, v90
	v_dual_add_f32 v160, v65, v95 :: v_dual_add_f32 v161, v64, v92
	v_dual_add_f32 v91, v29, v119 :: v_dual_add_f32 v86, v23, v117
	v_dual_add_f32 v93, v28, v116 :: v_dual_add_f32 v108, v74, v89
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v111, v77, v126 :: v_dual_add_f32 v120, v66, v125
	v_dual_add_f32 v117, v71, v124 :: v_dual_add_f32 v122, v62, v127
	v_dual_add_f32 v119, v67, v128 :: v_dual_add_f32 v124, v58, v131
	v_dual_add_f32 v121, v63, v130 :: v_dual_add_f32 v126, v54, v129
	v_dual_add_f32 v125, v55, v132 :: v_dual_add_f32 v4, v38, v137
	v_dual_add_f32 v14, v47, v138 :: v_dual_add_f32 v15, v46, v135
	v_dual_add_f32 v7, v43, v142 :: v_dual_add_f32 v104, v18, v144
	v_dual_add_f32 v3, v39, v140 :: v_dual_add_f32 v92, v26, v145
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v83, 1, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v80, v153, s2
	v_cndmask_b32_e64 v80, v74, v108, s2
	v_cndmask_b32_e64 v77, v77, v111, s2
	v_cndmask_b32_e64 v108, v68, v159, s2
	v_cndmask_b32_e64 v68, v66, v120, s2
	v_cndmask_b32_e64 v67, v67, v119, s2
	v_cndmask_b32_e64 v111, v64, v161, s2
	v_cndmask_b32_e64 v64, v62, v122, s2
	v_cndmask_b32_e64 v63, v63, v121, s2
	v_cndmask_b32_e64 v119, v48, v13, s2
	v_cndmask_b32_e64 v49, v49, v12, s2
	v_cndmask_b32_e64 v120, v46, v15, s2
	v_cndmask_b32_e64 v47, v47, v14, s2
	v_cndmask_b32_e64 v44, v44, v6, s2
	v_cndmask_b32_e64 v121, v45, v5, s2
	v_cndmask_b32_e64 v43, v43, v7, s2
	v_cndmask_b32_e64 v78, v78, v155, s2
	v_cndmask_b32_e64 v55, v55, v125, s2
	v_cndmask_b32_e64 v71, v71, v117, s2
	v_cndmask_b32_e64 v69, v69, v158, s2
	v_cndmask_b32_e64 v117, v54, v126, s2
	v_cndmask_b32_e64 v109, v53, v109, s2
	v_cndmask_b32_e64 v126, v18, v104, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v101, v34, v143 :: v_dual_add_f32 v96, v31, v150
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v65, v160, s2
	v_cndmask_b32_e64 v61, v61, v162, s2
	v_cndmask_b32_e64 v79, v79, v154, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v95, v30, v147 :: v_dual_add_f32 v94, v27, v148
	v_dual_add_f32 v90, v25, v151 :: v_dual_add_f32 v89, v24, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v101, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v30, v30, v95, s2
	v_cndmask_b32_e64 v33, v33, v97, s2
	v_cndmask_b32_e64 v31, v31, v96, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.h, v88.h
	v_mov_b16_e32 v70.h, v88.h
	v_mov_b16_e32 v74.h, v88.h
	v_mov_b16_e32 v75.h, v88.h
	v_mov_b16_e32 v66.h, v88.h
	v_mov_b16_e32 v54.h, v88.h
	v_mov_b16_e32 v46.h, v88.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v98, s2
	v_cndmask_b32_e64 v27, v27, v94, s2
	v_cndmask_b32_e64 v26, v26, v92, s2
	v_cndmask_b32_e64 v28, v28, v93, s2
	v_cndmask_b32_e64 v29, v29, v91, s2
	v_cndmask_b32_e64 v23, v23, v86, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v82, s27, v82
	s_mul_i32 s28, s28, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v83, s28, s26, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s26, s22
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v156, v73, v87 :: v_dual_add_f32 v87, v22, v112
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v116, v76, v123
	v_dual_add_f32 v112, v51, v136 :: v_dual_add_f32 v113, v50, v133
	v_dual_add_f32 v123, v59, v134 :: v_dual_add_f32 v8, v42, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v116, s2
	v_cndmask_b32_e64 v118, v51, v112, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v110, v50, v113, s2
	v_cndmask_b32_e64 v116, v60, v163, s2
	v_cndmask_b32_e64 v60, v58, v124, s2
	v_cndmask_b32_e64 v59, v59, v123, s2
	v_cndmask_b32_e64 v122, v42, v8, s2
	v_cndmask_b32_e64 v123, v38, v4, s2
	v_cndmask_b32_e64 v124, v39, v3, s2
	v_cndmask_b32_e64 v73, v73, v156, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.h, v88.h
	v_mov_b16_e32 v50.h, v88.h
	v_mov_b16_e32 v42.h, v88.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v87, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v38, s27, 4, v82
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_mov_b32 s27, s23
	v_and_b32_e32 v0, 16, v0
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v11
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v9, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v16, v2, s[20:23], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[112:115], v103
	ds_load_b128 v[12:15], v103 offset:16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v1, v41, v105 :: v_dual_add_f32 v2, v40, v102
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[5:8], v103 offset:512
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v105, v17, v141 :: v_dual_add_f32 v102, v35, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v1, s2
	v_cndmask_b32_e64 v40, v40, v2, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[1:4], v103 offset:528
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v125, v17, v105, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v102, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v17, v114, v127
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v78, v78, v17 :: v_dual_lshlrev_b32 v39, 16, v10
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v112, v127
	v_mul_f32_e32 v11, v113, v127
	v_mul_f32_e32 v133, v2, v127
	v_mul_f32_e32 v130, v7, v127
	v_mul_f32_e32 v104, v15, v127
	v_mul_f32_e32 v45, v12, v127
	v_mul_f32_e32 v53, v12, v39
	v_mul_f32_e32 v129, v6, v127
	v_mul_f32_e32 v18, v115, v127
	v_mul_f32_e32 v136, v112, v39
	v_mul_f32_e32 v137, v113, v39
	v_dual_mul_f32 v139, v115, v39 :: v_dual_mul_f32 v144, v69, v104
	v_dual_mul_f32 v132, v1, v127 :: v_dual_mul_f32 v143, v107, v45
	v_mul_f32_e32 v134, v3, v127
	v_mul_f32_e32 v138, v114, v39
	v_dual_mul_f32 v48, v13, v127 :: v_dual_mul_f32 v141, v19, v10
	v_mul_f32_e32 v131, v8, v127
	v_mul_f32_e32 v51, v14, v127
	v_mul_f32_e32 v13, v13, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v142, v73, v48
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v14, v14, v39
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v73, v61, v131
	v_dual_mul_f32 v61, v52, v134 :: v_dual_mul_f32 v52, v121, v139
	v_mul_f32_e32 v13, v41, v13
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v6, v6, v39
	v_mul_f32_e32 v8, v8, v39
	v_mul_f32_e32 v7, v7, v39
	v_mul_f32_e32 v2, v2, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v33, v6
	v_dual_mul_f32 v8, v29, v8 :: v_dual_mul_f32 v7, v28, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v2, v23, v2
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v140, v106, v11
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[112:115], v103
	ds_load_b128 v[104:107], v103 offset:16
	ds_load_b128 v[9:12], v103 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v121, v106, v127
	v_mul_f32_e32 v106, v106, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v68, v68, v121
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v57, v133
	v_mul_f32_e32 v69, v116, v130
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v116, v104, v127
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v72, v72, v116 :: v_dual_mul_f32 v129, v65, v129
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v128, v5, v127 :: v_dual_mul_f32 v79, v79, v18
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[16:19], v103 offset:512
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v65, v56, v132
	v_dual_mul_f32 v111, v111, v128 :: v_dual_mul_f32 v108, v108, v51
	v_mul_f32_e32 v57, v119, v136
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v133, v19, v127
	v_mul_f32_e32 v56, v113, v127
	v_mul_f32_e32 v113, v113, v39
	v_mul_f32_e32 v130, v16, v127
	v_mul_f32_e32 v132, v18, v127
	v_mul_f32_e32 v131, v17, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v16, v16, v39 :: v_dual_mul_f32 v113, v47, v113
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v64, v64, v130
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v104, v104, v39 :: v_dual_mul_f32 v51, v49, v137
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v44, v138
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v47, v125, v106
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v121, 0xbfb8aa3b, v64
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v103, v114, v127
	v_mul_f32_e32 v114, v114, v39
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v60, v60, v132
	v_mul_f32_e32 v16, v34, v16
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v121
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v76, v76, v103
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v136, v11, v127
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v135, v4, v127
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v103, v59, v133 :: v_dual_mul_f32 v44, v112, v127
	v_mul_f32_e32 v81, v81, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v110, v110, v136
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v48, v109, v135
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v109, v115, v127
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v56, v123, v104
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v104, 0xbfb8aa3b, v81
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v80, v80, v44
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v134, v9, v127
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v77, v77, v109
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v119, v105, v127
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v104
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v112, v112, v39 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v106, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v71, v71, v119
	v_cndmask_b32_e64 v104, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v119, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v114, v122, v114
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v135, v10, v127 :: v_dual_fmac_f32 v104, 0xbfb8aa3b, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v132, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v106, 0, 0x42800000, s1
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v115, v115, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s1
	v_exp_f32_e32 v104, v104
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v109, v55, v135 :: v_dual_fmac_f32 v106, 0xbfb8aa3b, v77
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v105, v105, v39
	v_mul_f32_e32 v128, v107, v127
	v_mul_f32_e32 v127, v12, v127
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v132
	v_exp_f32_e32 v106, v106
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v119
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v123
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v104, v104, v136
	v_cndmask_b32_e64 v132, 0, 0x42800000, s19
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v119, 0, 0x42800000, s7
	v_cndmask_b32_e64 v123, 0, 0x42800000, s11
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v104, 1.0, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v114
	v_ldexp_f32 v106, v106, v138
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v115, v43, v115
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v116, v117, v134
	v_dual_mul_f32 v134, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v117, v118, v127
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v107, v107, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	v_mul_f32_e32 v125, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v134
	v_dual_mul_f32 v127, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v44, v126, v107
	v_mul_f32_e32 v107, 0xbfb8aa3b, v72
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v112, v120, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v134, 0, 0x42800000, s21
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_mul_f32_e32 v59, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v107
	v_mul_f32_e32 v130, 0xbfb8aa3b, v112
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v56
	v_dual_mul_f32 v126, 0xbfb8aa3b, v109 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v130
	v_exp_f32_e32 v132, v132
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v126
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v134, v134
	v_cndmask_b32_e64 v130, 0, 0x42800000, s17
	v_cndmask_b32_e64 v107, 0, 0x42800000, s5
	v_cndmask_b32_e64 v126, 0, 0x42800000, s12
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s21
	v_fmac_f32_e32 v130, 0xbfb8aa3b, v112
	v_mul_f32_e32 v118, 0xbfb8aa3b, v71
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v109
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v55, v124, v105
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v105, 0xbfb8aa3b, v76
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v67, v67, v128 :: v_dual_mul_f32 v128, 0xbfb8aa3b, v117
	v_mul_f32_e32 v63, v63, v131
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v131, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v105
	v_mul_f32_e32 v120, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v118
	v_mul_f32_e32 v122, 0xbfb8aa3b, v63
	v_ldexp_f32 v43, v43, v137
	v_cndmask_b32_e64 v105, 0, 0x42800000, s3
	v_mul_f32_e32 v124, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v120
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v118, 0, 0x42800000, s4
	v_fmac_f32_e32 v105, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v124
	v_cndmask_b32_e64 v120, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v107, 0xbfb8aa3b, v72 :: v_dual_fmac_f32 v118, 0xbfb8aa3b, v71
	v_exp_f32_e32 v105, v105
	v_ldexp_f32 v132, v132, v160
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v67
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v128
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s6
	v_ldexp_f32 v134, v134, v162
	v_exp_f32_e32 v120, v120
	v_cndmask_b32_e64 v124, 0, 0x42800000, s10
	v_exp_f32_e32 v118, v118
	v_ldexp_f32 v105, v105, v139
	v_exp_f32_e32 v107, v107
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v138, null, v43, v43, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v105, 1.0, v105 :: v_dual_add_f32 v134, 1.0, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0x42800000, s14
	v_exp_f32_e32 v119, v119
	v_ldexp_f32 v120, v120, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v147, null, v105, v105, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v122
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v124, 0xbfb8aa3b, v103 :: v_dual_fmac_f32 v123, 0xbfb8aa3b, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v186, v138
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v117
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v188, v147
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v122, 0, 0x42800000, s8
	v_cndmask_b32_e64 v121, 0, 0x42800000, s9
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v118, v118, v145
	v_ldexp_f32 v107, v107, v146
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v106, 1.0, v106 :: v_dual_mul_f32 v133, 0xbfb8aa3b, v115
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v128, v128
	v_ldexp_f32 v119, v119, v148
	v_dual_fmac_f32 v122, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v121, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s10
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v118, 1.0, v118
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v133
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v208, -v138, v186, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v210, -v147, v188, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v119, 1.0, v119
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v133, 0, 0x42800000, s18
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v124, v124, v151
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v186, v208, v186
	v_div_scale_f32 v151, null, v107, v107, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v123, v123
	v_ldexp_f32 v128, v128, v155
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v188, v210, v188
	v_div_scale_f32 v155, null, v119, v119, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v125
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v133, 0xbfb8aa3b, v115 :: v_dual_add_f32 v128, 1.0, v128
	v_exp_f32_e32 v122, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v190, v151
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v127
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v192, v155
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v125, 0, 0x42800000, s13
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s8
	v_exp_f32_e32 v133, v133
	v_ldexp_f32 v121, v121, v150
	v_cndmask_b32_e64 v127, 0, 0x42800000, s15
	v_ldexp_f32 v123, v123, v152
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s18
	v_ldexp_f32 v122, v122, v149
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v212, -v151, v190, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v121, 1.0, v121
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v127, 0xbfb8aa3b, v110 :: v_dual_add_f32 v124, 1.0, v124
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v214, -v155, v192, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v135, 0xbfb8aa3b, v55 :: v_dual_add_f32 v120, 1.0, v120
	v_ldexp_f32 v133, v133, v159
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v122, 1.0, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v125, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v190, v212, v190
	v_div_scale_f32 v159, null, v121, v121, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v130, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v192, v214, v192
	v_div_scale_f32 v163, null, v123, v123, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v131
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v135
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s13
	v_exp_f32_e32 v126, v126
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v194, v159
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v196, v163
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0x42800000, s16
	v_cndmask_b32_e64 v135, 0, 0x42800000, s20
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s12
	v_ldexp_f32 v125, v125, v154
	v_ldexp_f32 v127, v127, v156
	v_ldexp_f32 v130, v130, v158
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v55
	v_ldexp_f32 v126, v126, v153
	v_fmac_f32_e32 v131, 0xbfb8aa3b, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v216, -v159, v194, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v136, null, v104, v104, v81
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v130, 1.0, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v218, -v163, v196, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v135, v135
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v131, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v194, v216, v194
	v_div_scale_f32 v167, null, v125, v125, v116
	v_div_scale_f32 v145, null, v106, v106, v77
	v_div_scale_f32 v179, null, v132, v132, v114
	v_rcp_f32_e32 v185, v136
	v_div_scale_f32 v175, null, v130, v130, v112
	v_fmac_f32_e32 v196, v218, v196
	v_div_scale_f32 v171, null, v127, v127, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v153, null, v120, v120, v67
	v_rcp_f32_e32 v198, v167
	v_div_scale_f32 v149, null, v118, v118, v71
	v_div_scale_f32 v183, null, v134, v134, v56
	v_rcp_f32_e32 v187, v145
	v_rcp_f32_e32 v204, v179
	v_rcp_f32_e32 v200, v171
	v_rcp_f32_e32 v202, v175
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v131, v131, v157
	v_ldexp_f32 v135, v135, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v161, null, v124, v124, v103
	v_rcp_f32_e32 v191, v153
	v_rcp_f32_e32 v189, v149
	v_div_scale_f32 v157, null, v122, v122, v63
	v_rcp_f32_e32 v206, v183
	v_fma_f32 v207, -v136, v185, 1.0
	v_div_scale_f32 v169, null, v128, v128, v117
	v_rcp_f32_e32 v195, v161
	v_fma_f32 v220, -v167, v198, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v131, 1.0, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v165, null, v126, v126, v109
	v_rcp_f32_e32 v193, v157
	v_fma_f32 v209, -v145, v187, 1.0
	v_div_scale_f32 v137, vcc_lo, v81, v104, v81
	v_fma_f32 v226, -v179, v204, 1.0
	v_fmac_f32_e32 v185, v207, v185
	v_rcp_f32_e32 v199, v169
	v_fma_f32 v222, -v171, v200, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v133, 1.0, v133
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v224, -v175, v202, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, s13, v80, v43, v80
	v_fma_f32 v213, -v153, v191, 1.0
	v_fmac_f32_e32 v198, v220, v198
	v_div_scale_f32 v173, null, v131, v131, v113
	v_div_scale_f32 v148, s15, v76, v105, v76
	v_rcp_f32_e32 v197, v165
	v_fma_f32 v211, -v149, v189, 1.0
	v_div_scale_f32 v146, s14, v77, v106, v77
	v_fma_f32 v228, -v183, v206, 1.0
	v_fmac_f32_e32 v187, v209, v187
	v_div_scale_f32 v180, s3, v114, v132, v114
	v_dual_fmac_f32 v204, v226, v204 :: v_dual_mul_f32 v207, v137, v185
	v_fmac_f32_e32 v200, v222, v200
	v_div_scale_f32 v177, null, v133, v133, v115
	v_fmac_f32_e32 v202, v224, v202
	v_div_scale_f32 v181, null, v135, v135, v55
	v_div_scale_f32 v156, s19, v68, v119, v68
	v_rcp_f32_e32 v201, v173
	v_fma_f32 v217, -v161, v195, 1.0
	v_dual_fmac_f32 v191, v213, v191 :: v_dual_mul_f32 v208, v139, v186
	v_div_scale_f32 v150, s16, v71, v118, v71
	v_dual_fmac_f32 v189, v211, v189 :: v_dual_mul_f32 v210, v148, v188
	v_div_scale_f32 v152, s17, v72, v107, v72
	v_div_scale_f32 v184, s0, v56, v134, v56
	v_fma_f32 v215, -v157, v193, 1.0
	v_dual_fmac_f32 v206, v228, v206 :: v_dual_mul_f32 v209, v146, v187
	v_mul_f32_e32 v226, v180, v204
	v_fma_f32 v229, -v136, v207, v137
	v_div_scale_f32 v164, s11, v60, v123, v60
	v_rcp_f32_e32 v203, v177
	v_rcp_f32_e32 v205, v181
	v_fma_f32 v221, -v169, v199, 1.0
	v_div_scale_f32 v154, s18, v67, v120, v67
	v_dual_fmac_f32 v195, v217, v195 :: v_dual_mul_f32 v214, v156, v192
	v_fma_f32 v230, -v138, v208, v139
	v_div_scale_f32 v160, s21, v64, v121, v64
	v_fma_f32 v219, -v165, v197, 1.0
	v_fma_f32 v232, -v147, v210, v148
	v_mul_f32_e32 v211, v150, v189
	v_dual_fmac_f32 v193, v215, v193 :: v_dual_mul_f32 v212, v152, v190
	v_mul_f32_e32 v228, v184, v206
	v_fma_f32 v231, -v145, v209, v146
	v_dual_fmac_f32 v207, v229, v185 :: v_dual_fmac_f32 v208, v230, v186
	v_div_scale_f32 v158, s20, v63, v122, v63
	v_dual_fmac_f32 v199, v221, v199 :: v_dual_mul_f32 v218, v164, v196
	v_div_scale_f32 v168, s9, v116, v125, v116
	v_fma_f32 v223, -v173, v201, 1.0
	v_fma_f32 v236, -v155, v214, v156
	v_mul_f32_e32 v213, v154, v191
	v_dual_fmac_f32 v197, v219, v197 :: v_dual_mul_f32 v216, v160, v194
	v_fmac_f32_e32 v210, v232, v188
	v_fma_f32 v233, -v149, v211, v150
	v_fma_f32 v234, -v151, v212, v152
	v_fmac_f32_e32 v209, v231, v187
	v_fma_f32 v136, -v136, v207, v137
	v_div_scale_f32 v172, s7, v110, v127, v110
	v_div_scale_f32 v176, s5, v112, v130, v112
	v_fma_f32 v225, -v177, v203, 1.0
	v_fma_f32 v227, -v181, v205, 1.0
	v_fma_f32 v240, -v163, v218, v164
	v_mul_f32_e32 v215, v158, v193
	v_dual_fmac_f32 v201, v223, v201 :: v_dual_mul_f32 v220, v168, v198
	v_fmac_f32_e32 v214, v236, v192
	v_fma_f32 v235, -v153, v213, v154
	v_fma_f32 v137, -v138, v208, v139
	v_fma_f32 v238, -v159, v216, v160
	v_dual_fmac_f32 v211, v233, v189 :: v_dual_fmac_f32 v212, v234, v190
	v_fma_f32 v138, -v145, v209, v146
	v_div_fmas_f32 v136, v136, v185, v207
	s_mov_b32 vcc_lo, s13
	v_div_scale_f32 v162, s12, v103, v124, v103
	v_dual_fmac_f32 v203, v225, v203 :: v_dual_mul_f32 v222, v172, v200
	v_dual_fmac_f32 v205, v227, v205 :: v_dual_mul_f32 v224, v176, v202
	v_fmac_f32_e32 v218, v240, v196
	v_fma_f32 v237, -v157, v215, v158
	v_fma_f32 v139, -v147, v210, v148
	v_fma_f32 v242, -v167, v220, v168
	v_fmac_f32_e32 v213, v235, v191
	v_div_fmas_f32 v137, v137, v186, v208
	s_mov_b32 vcc_lo, s14
	v_fmac_f32_e32 v216, v238, v194
	v_fma_f32 v145, -v149, v211, v150
	v_div_fmas_f32 v138, v138, v187, v209
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v146, -v151, v212, v152
	v_fma_f32 v244, -v171, v222, v172
	v_mul_f32_e32 v217, v162, v195
	v_fma_f32 v246, -v175, v224, v176
	v_fmac_f32_e32 v215, v237, v193
	v_div_fixup_f32 v81, v136, v104, v81
	v_div_fmas_f32 v104, v139, v188, v210
	s_mov_b32 vcc_lo, s16
	v_fmac_f32_e32 v220, v242, v198
	v_fma_f32 v147, -v153, v213, v154
	v_div_fixup_f32 v43, v137, v43, v80
	v_div_fmas_f32 v80, v145, v189, v211
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v148, -v155, v214, v156
	v_div_fixup_f32 v77, v138, v106, v77
	v_div_fmas_f32 v106, v146, v190, v212
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v222, v244, v200
	v_fma_f32 v239, -v161, v217, v162
	v_fmac_f32_e32 v224, v246, v202
	v_fma_f32 v149, -v157, v215, v158
	v_div_fixup_f32 v76, v104, v105, v76
	v_div_fmas_f32 v104, v147, v191, v213
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v150, -v159, v216, v160
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v77, v79, v77
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v79, v148, v192, v214
	s_mov_b32 vcc_lo, s20
	v_dual_fmac_f32 v217, v239, v195 :: v_dual_mul_f32 v76, v78, v76
	v_div_fmas_f32 v78, v149, v193, v215
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v71, v80, v118, v71
	v_div_fmas_f32 v80, v150, v194, v216
	v_div_scale_f32 v166, s10, v109, v126, v109
	v_div_scale_f32 v170, s8, v117, v128, v117
	v_div_scale_f32 v182, s1, v55, v135, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v64, v80, v121, v64
	v_fma_f32 v248, -v179, v226, v180
	v_mul_f32_e32 v219, v166, v197
	v_div_fixup_f32 v72, v106, v107, v72
	v_fma_f32 v151, -v161, v217, v162
	v_mul_f32_e32 v221, v170, v199
	v_dual_mul_f32 v227, v182, v205 :: v_dual_mul_f32 v64, v111, v64
	v_fma_f32 v152, -v163, v218, v164
	v_fmac_f32_e32 v226, v248, v204
	v_fma_f32 v241, -v165, v219, v166
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v72, v143, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v67, v104, v120, v67
	v_div_fmas_f32 v104, v151, v195, v217
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v243, -v169, v221, v170
	v_div_fixup_f32 v63, v78, v122, v63
	v_div_fmas_f32 v78, v152, v196, v218
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v64.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v141, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v70.l, v72.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v219, v241, v197
	v_div_scale_f32 v174, s6, v113, v131, v113
	v_div_fixup_f32 v60, v78, v123, v60
	v_dual_fmac_f32 v221, v243, v199 :: v_dual_and_b32 v62, 1, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v74.l, v43.h
	v_and_b32_e32 v70, 1, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v153, -v165, v219, v166
	v_fma_f32 v154, -v167, v220, v168
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v223, v174, v201 :: v_dual_and_b32 v74, 1, v74
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v60, v69, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v155, -v169, v221, v170
	v_div_fmas_f32 v80, v153, v197, v219
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v103, v104, v124, v103
	v_div_fmas_f32 v104, v154, v198, v220
	s_mov_b32 vcc_lo, s8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v81, v140, v81
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s14, v43, v43
	v_add3_u32 v74, v43, v74, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v78, v155, v199, v221
	v_div_scale_f32 v178, s4, v115, v133, v115
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v81.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v43.l, 0x7fff, v74.h, s14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v74, v78, v128, v117
	v_div_fixup_f32 v68, v79, v119, v68
	v_mul_f32_e32 v225, v178, v203
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v79, 1, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v245, -v173, v223, v174
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v74, v48, v74
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v77.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v68, v108, v68
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v156, -v171, v222, v172
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s13, v81, v81
	v_add3_u32 v79, v81, v79, 0x7fff
	v_and_b32_e32 v81, 1, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v247, -v177, v225, v178
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v76.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v68.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v223, v245, v201
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s15, v77, v77
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v80, v80, v126, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v77, v77, v81, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v81, v156, v200, v222
	v_fmac_f32_e32 v225, v247, v203
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v75, 1, v75
	v_and_b32_e32 v66, 1, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v157, -v173, v223, v174
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v78, v45, v80
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.h, 0x7fff, v77.h, s15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v77, v81, v127, v110
	v_fma_f32 v158, -v175, v224, v176
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v159, -v177, v225, v178
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s12, v76, v76
	v_add3_u32 v75, v76, v75, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v69, v157, v201, v223
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v160, -v179, v226, v180
	v_div_fixup_f32 v76, v104, v125, v116
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v61, v61, v77
	v_mul_f32_e32 v71, v142, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v80, v158, v202, v224
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.l, 0x7fff, v75.h, s12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v75, v159, v203, v225
	s_mov_b32 vcc_lo, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v60.h
	v_mov_b16_e32 v50.l, v61.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v65, v65, v76
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v76, v160, v204, v226
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v67, v144, v67 :: v_dual_and_b32 v58, 1, v58
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v71.h
	v_cmp_o_f32_e64 s6, v64, v64
	v_add3_u32 v62, v64, v62, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v64, v76, v132, v114
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v63, v129, v63
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v43.h, 0x7fff, v79.h, s13
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v40, v40, v53 :: v_dual_and_b32 v79, 1, v88
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v67.h
	v_cmp_o_f32_e64 s8, v68, v68
	v_cmp_o_f32_e64 s4, v60, v60
	v_add3_u32 v66, v68, v66, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v68, v80, v130, v112
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v58, v60, v58, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v60, v49, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s10, v72, v72
	v_add3_u32 v70, v72, v70, 0x7fff
	v_and_b32_e32 v72, 1, v88
	v_mov_b16_e32 v88.l, v63.h
	v_and_b32_e32 v50, 1, v50
	v_mov_b16_e32 v54.l, v65.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v73, v73, v103
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v60.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v57, v57, v68
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v69, v69, v131, v113
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v48.l, 0x7fff, v70.h, s10
	v_and_b32_e32 v70, 1, v88
	v_cmp_o_f32_e64 s11, v71, v71
	v_add3_u32 v71, v71, v79, 0x7fff
	v_and_b32_e32 v54, 1, v54
	v_mov_b16_e32 v88.l, v73.h
	v_mov_b16_e32 v46.l, v57.h
	v_cmp_o_f32_e64 s9, v67, v67
	v_cndmask_b16 v48.h, 0x7fff, v71.h, s11
	v_add3_u32 v67, v67, v72, 0x7fff
	v_cmp_o_f32_e64 s3, v65, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v71, v75, v133, v115
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v69, v51, v69 :: v_dual_and_b32 v46, 1, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v51.l, 0x7fff, v66.h, s8
	v_and_b32_e32 v66, 1, v88
	v_mov_b16_e32 v88.l, v78.h
	v_add3_u32 v54, v65, v54, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v67.h, s9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v67, v52, v71
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v52.l, 0x7fff, v62.h, s6
	v_and_b32_e32 v62, 1, v88
	v_cmp_o_f32_e64 s8, v61, v61
	v_mov_b16_e32 v88.l, v74.h
	v_add3_u32 v61, v61, v50, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v54.h, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v49, v73, v66, 0x7fff
	v_and_b32_e32 v54, 1, v42
	v_add3_u32 v46, v57, v46, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v58.h, s4
	v_and_b32_e32 v58, 1, v88
	v_cndmask_b16 v46.l, 0x7fff, v61.h, s8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	v_mul_f32_e32 v61, 0xbfb8aa3b, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v249, -v181, v227, v182
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v57, v57
	v_mov_b16_e32 v88.l, v69.h
	v_add3_u32 v57, v74, v58, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v183, v228, v184
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v61
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v63, v63
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v63, v63, v70, 0x7fff
	v_add3_u32 v62, v78, v62, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v227, v249, v205 :: v_dual_and_b32 v42, 1, v88
	v_fmac_f32_e32 v228, v58, v206
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s4
	v_exp_f32_e32 v59, v59
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v52.h, 0x7fff, v63.h, s7
	v_cndmask_b16 v50.h, 0x7fff, v62.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v181, v227, v182
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s10, v74, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v61, v62, v205, v227
	v_fma_f32 v62, -v183, v228, v184
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v58
	v_ldexp_f32 v53, v59, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v55, v61, v135, v55
	v_div_fmas_f32 v62, v62, v206, v228
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s4
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v67.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v55, v13, v55
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v56, v62, v134, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v13, v41, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v53, v53, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v69, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v46.h, s6
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v56
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v58, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v57, 1, v88
	v_mov_b16_e32 v88.l, v55.h
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v54, v60, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_add3_u32 v56, v67, v57, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v57, 1.0, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v40.h
	v_mov_b16_e32 v13.h, v88.h
	v_and_b32_e32 v60, 1, v88
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v17, v17, v39
	v_mul_f32_e32 v19, v19, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v61, 1, v13
	v_cndmask_b16 v13.h, 0x7fff, v56.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v41, v58, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.l, 0x7fff, v54.h, s0
	v_add3_u32 v60, v55, v60, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v55, vcc_lo, v44, v53, v44
	v_fmac_f32_e32 v58, v56, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v54, v40, v61, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v35, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v36, v100, s2
	v_cndmask_b32_e64 v36, v37, v99, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v55, v58
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v19, v31, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v14, v35, v14 :: v_dual_mul_f32 v15, v36, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v41, v40, v55
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v18, v18, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s5
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v9, v9, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v37, v58
	v_div_scale_f32 v59, null, v57, v57, v47
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v18, v30, v18
	v_mul_f32_e32 v10, v27, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v41, v40, v55
	v_rcp_f32_e32 v62, v59
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v9, v26, v9 :: v_dual_mul_f32 v12, v12, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v34, v58, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v58, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v11, v11, v39
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v4, v39
	v_mul_f32_e32 v3, v3, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v34, v53, v44
	v_fma_f32 v56, -v59, v62, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s9, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v34
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v62, v56, v62
	v_div_scale_f32 v56, s3, v47, v57, v47
	s_mov_b32 vcc_lo, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v15.h
	v_mov_b16_e32 v34.h, v88.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v56, v62
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s9
	v_and_b32_e32 v44, 1, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v59, v61, v56
	v_fmac_f32_e32 v61, v37, v62
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v59, v61, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v37
	v_mul_f32_e32 v56, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v62, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v41, v57, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v41.l, 0x7fff, v54.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v41.h, 0x7fff, v60.h, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v35
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v34.l, v14.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v63, 0xbfb8aa3b, v17 :: v_dual_and_b32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v63
	v_ldexp_f32 v35, v37, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v14, v34, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s4
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v29
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v35, v35, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v54, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v47, v54, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v31, v54
	v_div_scale_f32 v31, s0, v16, v35, v16
	v_div_scale_f32 v40, null, v36, v36, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v57, v31, v54
	v_rcp_f32_e32 v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v47, v57, v31
	v_fmac_f32_e32 v57, v33, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v40, v37, 1.0
	v_fma_f32 v31, -v47, v57, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v53, v37
	v_div_scale_f32 v53, vcc_lo, v17, v36, v17
	v_mul_f32_e32 v55, v53, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v40, v55, v53
	v_fmac_f32_e32 v55, v56, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v40, v55, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v40, v37, v55
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v31, v31, v54, v57
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v37, v36, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v88.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v31, v35, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v17
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v19
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v15, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v88.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v35.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v30, v33
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v5, v5, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v5, v32, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v40, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, null, v30, v30, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v31
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v31, 1, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v5.h
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v6, v31, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v6, s0, v19, v30, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v15, v15, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v32, v16, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_add3_u32 v14, v5, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v17
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v16, v36, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.l, 0x7fff, v14.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v24, v89, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v5, v6, v16
	v_fma_f32 v34, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v11, v14, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v32, v5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, s3, v18, v15, v18
	v_fmac_f32_e32 v5, v36, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v32, v5, v6
	v_div_fmas_f32 v5, v6, v16, v5
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v5, v5, v30, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v8, v5
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v25, v90, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v37, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v5.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v8, v8, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v17, v37, v34
	v_dual_fmac_f32 v37, v27, v33 :: v_dual_and_b32 v24, 1, v88
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v6, -v17, v37, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v6, v6, v33, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v17, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v6, v15, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.h, v88.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v7, v17, v15
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v16
	v_dual_mul_f32 v16, 0xbfb8aa3b, v8 :: v_dual_add_f32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v14, null, v7, v7, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_ldexp_f32 v12, v15, v12
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v15, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v5, v5
	v_add3_u32 v18, v6, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v14, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v15, v25, v15
	v_div_scale_f32 v25, vcc_lo, v10, v7, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v27
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v5, 1.0, v16 :: v_dual_mul_f32 v16, v25, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v12, v12, v9
	v_div_scale_f32 v29, s1, v9, v12, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v14, v16, v25
	v_rcp_f32_e32 v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v32, v15
	v_fma_f32 v14, -v14, v16, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v19, v26, 1.0
	v_div_fmas_f32 v14, v14, v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, null, v5, v5, v8
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v34, v29, v26
	v_rcp_f32_e32 v30, v27
	v_fma_f32 v32, -v19, v34, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v32, v26
	v_fma_f32 v36, -v27, v30, 1.0
	v_div_scale_f32 v32, s0, v8, v5, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v19, v34, v29
	v_fmac_f32_e32 v30, v36, v30
	v_div_fixup_f32 v7, v14, v7, v10
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v21, v84, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v15, v26, v34
	v_mul_f32_e32 v16, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v14, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v15, v12, v9
	v_fma_f32 v26, -v27, v16, v32
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v26, v30
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v27, v16, v32
	v_div_fmas_f32 v10, v10, v30, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v10, v5, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v1, v1, v39 :: v_dual_mov_b32 v10, 0x7632
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v17, v17, v11
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v22, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v20, v85, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v9, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v28, v33, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v88.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v25, v33
	v_div_scale_f32 v25, s3, v11, v17, v11
	s_mov_b32 vcc_lo, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v19, v25, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v28, v19, v25
	v_fmac_f32_e32 v19, v22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v28, v19, v25
	v_div_fmas_f32 v12, v12, v33, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v6.h, v88.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v12, v17, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.l, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v88
	v_mov_b16_e32 v88.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v6.l, v3.h
	v_add3_u32 v7, v2, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 1, v88
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v4, v8, 0x7fff
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_mov_b32_e32 v9, 0x5410
	v_dual_cndmask_b32 v5, v45, v51 :: v_dual_cndmask_b32 v10, 0x3276, v10
	v_dual_cndmask_b32 v1, v48, v43 :: v_dual_cndmask_b32 v14, v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, v0, v24, vcc_lo
	v_dual_cndmask_b32 v0, v24, v0 :: v_dual_cndmask_b32 v9, 0x1054, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v15, v35, v13, vcc_lo
	v_dual_cndmask_b32 v2, v43, v48 :: v_dual_cndmask_b32 v7, v52, v50
	v_cndmask_b32_e32 v16, v3, v31, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_cndmask_b32 v13, v13, v35 :: v_dual_and_b32 v10, 0x760076, v10
	v_cndmask_b32_e32 v3, v31, v3, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 0x540054, v9
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v4, v51, v45, vcc_lo
	v_cndmask_b32_e32 v6, v50, v52, vcc_lo
	v_cndmask_b32_e32 v8, v46, v49, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	v_cndmask_b32_e32 v11, v49, v46, vcc_lo
	v_cndmask_b32_e32 v12, v41, v42, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v9
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x7060706, v10
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v18
	v_perm_b32 v1, v2, v1, v19
	v_perm_b32 v2, v5, v4, v18
	v_perm_b32 v3, v5, v4, v19
	v_perm_b32 v4, v7, v6, v18
	v_perm_b32 v5, v7, v6, v19
	v_perm_b32 v6, v11, v8, v18
	v_perm_b32 v7, v11, v8, v19
	v_perm_b32 v8, v14, v12, v18
	v_perm_b32 v9, v14, v12, v19
	v_perm_b32 v10, v13, v15, v18
	v_perm_b32 v11, v13, v15, v19
	v_perm_b32 v12, v20, v16, v18
	v_perm_b32 v13, v20, v16, v19
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v83, v82, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v14, v21, v17, v18
	v_perm_b32 v15, v21, v17, v19
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v83, v38, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 250
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 250
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17912
; TotalNumSgprs: 40
; NumVgprs: 250
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 250
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     250
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
