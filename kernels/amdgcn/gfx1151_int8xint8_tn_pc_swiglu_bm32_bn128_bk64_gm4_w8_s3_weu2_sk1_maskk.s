	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v43, 2, v0
	v_or_b32_e32 v47, 0x3f0, v0
	v_or_b32_e32 v48, 0x7f0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v46, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v44, 62, v43
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v20, 24, v46
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 31
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s23
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
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
	s_lshl_b32 s7, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s6
	s_sub_i32 s10, 0, s6
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
	s_xor_b32 s9, s2, s8
	s_mul_i32 s10, s4, s6
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s37, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s37, v44
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s31, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s3, s8
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s33, s15, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s33, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s30, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s33, s37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v21, s37, v43
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s5, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v45, v1, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v2, s28, s4, v45
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s14, s37
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v4, 0x80000000, v2 :: v_dual_lshlrev_b32 v49, 6, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v3, s[24:27], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s15, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s15, 7, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s33, v3
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v28, s15, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v16, 0x80000000, v12, vcc_lo
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v21
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v3, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s14, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v29, s33, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s37, s37, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v41, v3, v20, s29
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v20, s37, v44
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s4, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s33, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v24, 0x80000000, v20, s3
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v24, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v28, s3
	v_cndmask_b32_e64 v32, 0x80000000, v29, s3
	s_clause 0x1
	buffer_load_b128 v[28:31], v2, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v32, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v2, 0x80000000, v3 :: v_dual_and_b32 v3, 6, v0
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s3, s14, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[63:64], v2, s[20:23], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x420, v2
	v_xor_b32_e32 v36, v2, v44
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v51, v3, 10, v36
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v36, s37, v43
	v_lshlrev_b32_e32 v3, 3, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v52, 0x90, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v36
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v36, s4, s3, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v53, 0x120, v51
	v_add_nc_u32_e32 v68, 0, v51
	v_xor_b32_e32 v54, 0x1b0, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_add_nc_u32 v67, 0, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v55, 0x210, v51
	v_add_nc_u32_e32 v69, 0, v52
	v_xor_b32_e32 v56, 0x330, v51
	v_add_nc_u32_e32 v70, 0, v53
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[65:66], v36, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v57, 0x3a0, v51
	v_add_nc_u32_e32 v71, 0, v54
	v_add_nc_u32_e32 v72, 0, v55
	v_add_nc_u32_e32 v73, 0, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v74, 0, v57
	s_waitcnt vmcnt(8)
	v_perm_b32 v36, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v37, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v38, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v39, v11, v7, 0x5010400
	v_perm_b32 v40, v11, v7, 0x7030602
	v_and_b16 v4.l, 0xff, v36.l
	v_lshrrev_b32_e32 v42, 8, v36
	v_lshrrev_b32_e32 v58, 24, v36
	v_and_b16 v4.h, 0xff, v36.h
	v_and_b16 v5.l, 0xff, v8.l
	v_lshrrev_b32_e32 v36, 8, v8
	v_lshrrev_b32_e32 v59, 24, v8
	v_and_b16 v5.h, 0xff, v8.h
	v_and_b16 v6.l, 0xff, v37.l
	v_lshrrev_b32_e32 v60, 8, v37
	v_lshrrev_b32_e32 v61, 24, v37
	v_and_b16 v6.h, 0xff, v37.h
	v_and_b16 v7.l, 0xff, v9.l
	v_lshrrev_b32_e32 v37, 8, v9
	v_lshrrev_b32_e32 v62, 24, v9
	v_and_b16 v7.h, 0xff, v9.h
	v_and_b16 v8.l, 0xff, v38.l
	v_lshrrev_b32_e32 v75, 8, v38
	v_lshrrev_b32_e32 v76, 24, v38
	v_and_b16 v8.h, 0xff, v38.h
	v_and_b16 v9.l, 0xff, v10.l
	v_lshrrev_b32_e32 v38, 8, v10
	v_lshrrev_b32_e32 v77, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v78, 8, v39
	v_lshrrev_b32_e32 v79, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	v_and_b16 v11.l, 0xff, v40.l
	v_lshrrev_b32_e32 v39, 8, v40
	v_lshrrev_b32_e32 v80, 24, v40
	v_and_b16 v11.h, 0xff, v40.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v40, v16, v12, 0x5010400
	v_perm_b32 v81, v16, v12, 0x7030602
	v_perm_b32 v82, v17, v13, 0x5010400
	v_perm_b32 v83, v17, v13, 0x7030602
	v_perm_b32 v84, v18, v14, 0x5010400
	v_perm_b32 v85, v18, v14, 0x7030602
	v_perm_b32 v86, v19, v15, 0x5010400
	v_perm_b32 v87, v19, v15, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v12.l, 8, v42.l
	v_lshlrev_b16 v12.h, 8, v58.l
	v_lshlrev_b16 v13.l, 8, v36.l
	v_lshlrev_b16 v13.h, 8, v59.l
	v_lshlrev_b16 v14.l, 8, v60.l
	v_lshlrev_b16 v14.h, 8, v61.l
	v_lshlrev_b16 v15.l, 8, v37.l
	v_lshlrev_b16 v15.h, 8, v62.l
	v_lshlrev_b16 v16.l, 8, v75.l
	v_lshlrev_b16 v16.h, 8, v76.l
	v_lshlrev_b16 v17.l, 8, v38.l
	v_lshlrev_b16 v17.h, 8, v77.l
	v_lshlrev_b16 v18.l, 8, v78.l
	v_lshlrev_b16 v18.h, 8, v79.l
	v_lshlrev_b16 v19.l, 8, v39.l
	v_lshlrev_b16 v19.h, 8, v80.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v36.l, 0xff, v40.l
	v_lshrrev_b32_e32 v60, 8, v40
	v_lshrrev_b32_e32 v61, 24, v40
	v_and_b16 v36.h, 0xff, v40.h
	v_and_b16 v37.l, 0xff, v81.l
	v_lshrrev_b32_e32 v62, 8, v81
	v_lshrrev_b32_e32 v75, 24, v81
	v_and_b16 v37.h, 0xff, v81.h
	v_and_b16 v38.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v38.h, 0xff, v82.h
	v_and_b16 v39.l, 0xff, v83.l
	v_lshrrev_b32_e32 v78, 8, v83
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v39.h, 0xff, v83.h
	v_and_b16 v40.l, 0xff, v84.l
	v_lshrrev_b32_e32 v80, 8, v84
	v_lshrrev_b32_e32 v81, 24, v84
	v_and_b16 v40.h, 0xff, v84.h
	v_and_b16 v42.l, 0xff, v85.l
	v_lshrrev_b32_e32 v82, 8, v85
	v_lshrrev_b32_e32 v83, 24, v85
	v_and_b16 v42.h, 0xff, v85.h
	v_and_b16 v58.l, 0xff, v86.l
	v_lshrrev_b32_e32 v84, 8, v86
	v_lshrrev_b32_e32 v85, 24, v86
	v_and_b16 v58.h, 0xff, v86.h
	v_and_b16 v59.l, 0xff, v87.l
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v88, 24, v87
	v_and_b16 v59.h, 0xff, v87.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v87, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v89, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v90, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v91, v27, v23, 0x5010400
	v_perm_b32 v92, v27, v23, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v93, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v94, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v95, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v96, v35, v31, 0x5010400
	v_perm_b32 v97, v35, v31, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v4.l, v12.l
	v_or_b16 v7.l, v7.l, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v60.l
	v_lshlrev_b16 v15.l, 8, v78.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v60, 8, v87
	v_or_b16 v4.h, v4.h, v12.h
	v_or_b16 v7.h, v7.h, v15.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.h, 8, v61.l
	v_lshlrev_b16 v15.h, 8, v79.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v61, 24, v87
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v8.l, v8.l, v16.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.l, 8, v62.l
	v_lshlrev_b16 v16.l, 8, v80.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v62, 8, v24
	v_or_b16 v5.h, v5.h, v13.h
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.h, 8, v75.l
	v_lshlrev_b16 v16.h, 8, v81.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v75, 24, v24
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v9.l, v9.l, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.l, 8, v76.l
	v_lshlrev_b16 v17.l, 8, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v76, 8, v89
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.h, 8, v77.l
	v_lshlrev_b16 v17.h, 8, v83.l
	v_lshlrev_b16 v18.l, 8, v84.l
	v_lshlrev_b16 v18.h, 8, v85.l
	v_lshlrev_b16 v19.l, 8, v86.l
	v_lshlrev_b16 v19.h, 8, v88.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v20.l, 0xff, v87.l
	v_and_b16 v20.h, 0xff, v87.h
	v_and_b16 v21.l, 0xff, v24.l
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v89.l
	v_lshrrev_b32_e32 v77, 24, v89
	v_and_b16 v22.h, 0xff, v89.h
	v_and_b16 v23.l, 0xff, v25.l
	v_lshrrev_b32_e32 v78, 8, v25
	v_lshrrev_b32_e32 v79, 24, v25
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v90.l
	v_lshrrev_b32_e32 v80, 8, v90
	v_lshrrev_b32_e32 v81, 24, v90
	v_and_b16 v24.h, 0xff, v90.h
	v_and_b16 v25.l, 0xff, v26.l
	v_lshrrev_b32_e32 v82, 8, v26
	v_lshrrev_b32_e32 v83, 24, v26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v91.l
	v_lshrrev_b32_e32 v84, 8, v91
	v_lshrrev_b32_e32 v85, 24, v91
	v_and_b16 v26.h, 0xff, v91.h
	v_and_b16 v27.l, 0xff, v92.l
	v_lshrrev_b32_e32 v86, 8, v92
	v_lshrrev_b32_e32 v87, 24, v92
	v_and_b16 v27.h, 0xff, v92.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v28.l, 0xff, v93.l
	v_lshrrev_b32_e32 v88, 8, v93
	v_lshrrev_b32_e32 v89, 24, v93
	v_and_b16 v28.h, 0xff, v93.h
	v_and_b16 v29.l, 0xff, v32.l
	v_lshrrev_b32_e32 v90, 8, v32
	v_lshrrev_b32_e32 v91, 24, v32
	v_and_b16 v29.h, 0xff, v32.h
	v_and_b16 v30.l, 0xff, v94.l
	v_lshrrev_b32_e32 v92, 8, v94
	v_lshrrev_b32_e32 v93, 24, v94
	v_and_b16 v30.h, 0xff, v94.h
	v_and_b16 v31.l, 0xff, v33.l
	v_lshrrev_b32_e32 v94, 8, v33
	v_lshrrev_b32_e32 v98, 24, v33
	v_and_b16 v31.h, 0xff, v33.h
	v_and_b16 v32.l, 0xff, v95.l
	v_lshrrev_b32_e32 v99, 8, v95
	v_lshrrev_b32_e32 v100, 24, v95
	v_and_b16 v32.h, 0xff, v95.h
	v_and_b16 v33.l, 0xff, v34.l
	v_lshrrev_b32_e32 v95, 8, v34
	v_lshrrev_b32_e32 v101, 24, v34
	v_and_b16 v33.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v96.l
	v_lshrrev_b32_e32 v102, 8, v96
	v_lshrrev_b32_e32 v103, 24, v96
	v_and_b16 v34.h, 0xff, v96.h
	v_lshrrev_b32_e32 v96, 8, v97
	v_lshrrev_b32_e32 v104, 24, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v68, v4
	ds_store_b16_d16_hi v68, v4 offset:64
	ds_store_b16 v69, v5
	ds_store_b16_d16_hi v69, v5 offset:64
	ds_store_b16 v70, v6
	ds_store_b16_d16_hi v70, v6 offset:64
	ds_store_b16 v71, v7
	ds_store_b16_d16_hi v71, v7 offset:64
	ds_store_b16 v72, v8
	ds_store_b16_d16_hi v72, v8 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v6.h, v39.l, v15.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.l, 8, v60.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v36.l, v12.l
	v_or_b16 v7.l, v39.h, v15.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.h, 8, v61.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v7.h, v40.l, v16.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.l, 8, v62.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v8.l, v40.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.h, 8, v75.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.l, v36.h, v12.h
	v_or_b16 v8.h, v42.l, v17.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.l, 8, v76.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v35.l, 0xff, v97.l
	v_and_b16 v35.h, 0xff, v97.h
	v_or_b16 v4.h, v37.l, v13.l
	v_or_b16 v5.l, v37.h, v13.h
	v_or_b16 v5.h, v38.l, v14.l
	v_or_b16 v6.l, v38.h, v14.h
	v_or_b16 v12.h, v42.h, v17.h
	v_or_b16 v13.l, v58.l, v18.l
	v_or_b16 v13.h, v58.h, v18.h
	v_or_b16 v14.l, v59.l, v19.l
	v_or_b16 v14.h, v59.h, v19.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.h, 8, v77.l
	v_lshlrev_b16 v18.l, 8, v78.l
	v_lshlrev_b16 v18.h, 8, v79.l
	v_lshlrev_b16 v19.l, 8, v80.l
	v_lshlrev_b16 v19.h, 8, v81.l
	v_lshlrev_b16 v36.l, 8, v82.l
	v_lshlrev_b16 v36.h, 8, v83.l
	v_lshlrev_b16 v37.l, 8, v84.l
	v_lshlrev_b16 v37.h, 8, v85.l
	v_lshlrev_b16 v38.l, 8, v86.l
	v_lshlrev_b16 v38.h, 8, v87.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v39.l, 8, v88.l
	v_lshlrev_b16 v39.h, 8, v89.l
	v_lshlrev_b16 v40.l, 8, v90.l
	v_lshlrev_b16 v40.h, 8, v91.l
	v_lshlrev_b16 v42.l, 8, v92.l
	v_lshlrev_b16 v42.h, 8, v93.l
	v_lshlrev_b16 v58.l, 8, v94.l
	v_lshlrev_b16 v58.h, 8, v98.l
	v_lshlrev_b16 v59.l, 8, v99.l
	v_lshlrev_b16 v59.h, 8, v100.l
	v_lshlrev_b16 v60.l, 8, v95.l
	v_lshlrev_b16 v60.h, 8, v101.l
	v_lshlrev_b16 v61.l, 8, v102.l
	v_lshlrev_b16 v61.h, 8, v103.l
	v_lshlrev_b16 v62.l, 8, v96.l
	v_lshlrev_b16 v62.h, 8, v104.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v67, v[63:64] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v68, v12 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v68, v9 offset:640
	ds_store_b16_d16_hi v68, v9 offset:704
	ds_store_b16 v73, v10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v68, v4 offset:16448
	ds_store_b16_d16_hi v69, v4 offset:16384
	ds_store_b16 v69, v5 offset:16448
	ds_store_b16_d16_hi v70, v5 offset:16384
	ds_store_b16 v70, v6 offset:16448
	ds_store_b16_d16_hi v71, v6 offset:16384
	ds_store_b16 v71, v7 offset:16448
	ds_store_b16_d16_hi v72, v7 offset:16384
	ds_store_b16 v72, v8 offset:16448
	ds_store_b16_d16_hi v68, v8 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v73, v10 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v68, v12 offset:17088
	ds_store_b16 v73, v13 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v74, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v73, v13 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v74, v11 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v74, v14 offset:16384
	ds_store_b16_d16_hi v74, v14 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v20.l, v15.l
	v_or_b16 v4.h, v20.h, v15.h
	v_or_b16 v5.l, v21.l, v16.l
	v_or_b16 v5.h, v21.h, v16.h
	v_or_b16 v6.l, v22.l, v17.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.h, v22.h, v17.h
	v_or_b16 v7.l, v23.l, v18.l
	v_or_b16 v7.h, v23.h, v18.h
	v_or_b16 v8.l, v24.l, v19.l
	v_or_b16 v8.h, v24.h, v19.h
	v_or_b16 v9.l, v25.l, v36.l
	v_or_b16 v9.h, v25.h, v36.h
	v_or_b16 v10.l, v26.l, v37.l
	v_or_b16 v10.h, v26.h, v37.h
	v_or_b16 v11.l, v27.l, v38.l
	v_or_b16 v11.h, v27.h, v38.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v28.l, v39.l
	v_or_b16 v12.h, v28.h, v39.h
	v_or_b16 v13.l, v29.l, v40.l
	v_or_b16 v13.h, v29.h, v40.h
	v_or_b16 v14.l, v30.l, v42.l
	v_or_b16 v14.h, v30.h, v42.h
	v_or_b16 v15.l, v31.l, v58.l
	v_or_b16 v15.h, v31.h, v58.h
	v_or_b16 v16.l, v32.l, v59.l
	v_or_b16 v16.h, v32.h, v59.h
	v_or_b16 v17.l, v33.l, v60.l
	v_or_b16 v17.h, v33.h, v60.h
	v_or_b16 v18.l, v34.l, v61.l
	v_or_b16 v18.h, v34.h, v61.h
	v_or_b16 v19.l, v35.l, v62.l
	v_or_b16 v19.h, v35.h, v62.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v68, v4 offset:8192
	ds_store_b16_d16_hi v68, v4 offset:8256
	ds_store_b16 v69, v5 offset:8192
	ds_store_b16_d16_hi v69, v5 offset:8256
	ds_store_b16 v70, v6 offset:8192
	ds_store_b16_d16_hi v70, v6 offset:8256
	ds_store_b16 v71, v7 offset:8192
	ds_store_b16_d16_hi v71, v7 offset:8256
	ds_store_b16 v72, v8 offset:8192
	ds_store_b16_d16_hi v72, v8 offset:8256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v67, v[65:66] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v68, v12 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v68, v9 offset:8832
	ds_store_b16_d16_hi v68, v9 offset:8896
	ds_store_b16 v73, v10 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v68, v12 offset:24640
	ds_store_b16 v69, v13 offset:24576
	ds_store_b16_d16_hi v69, v13 offset:24640
	ds_store_b16 v70, v14 offset:24576
	ds_store_b16_d16_hi v70, v14 offset:24640
	ds_store_b16 v71, v15 offset:24576
	ds_store_b16_d16_hi v71, v15 offset:24640
	ds_store_b16 v72, v16 offset:24576
	ds_store_b16_d16_hi v72, v16 offset:24640
	ds_store_b16 v68, v17 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v73, v10 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v68, v17 offset:25280
	ds_store_b16 v73, v18 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v74, v11 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v73, v18 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v74, v11 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v74, v19 offset:24576
	ds_store_b16_d16_hi v74, v19 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v6, 0x3f0, v0
	v_or_b32_e32 v5, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v4, 8, v0
	v_and_b32_e32 v92, 32, v0
	v_and_or_b32 v58, 0x1800, v2, v3
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr58
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_b32_e32 v42, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s38, s6, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v58, 0x1800, v2, v3
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v60, s33, v45
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v4, v1
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_xor_b32_e32 v1, v1, v58
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v28, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v61, v1, v49
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v6, s9
	v_xor_b32_e32 v62, 16, v61
	v_xor_b32_e32 v63, 32, v61
	v_xor_b32_e32 v64, 48, v61
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s37, s37, 64
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s35, 0, 0x8800
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
	scratch_store_b32 off, v49, off         ; 4-byte Folded Spill
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s0, s34
	s_mov_b32 s34, s1
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s5, 6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v74, s0, v61
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s1, s37, s1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v75, s0, v62
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v78, s1, v43
	v_or_b32_e32 v79, s1, v44
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v76, s0, v63
	v_add_nc_u32_e32 v77, s0, v64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s0, s1, s33
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[65:66], null, s1, s14, v[41:42]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s0, s0, s28
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v78
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v66, s0, v45
	v_add_nc_u32_e32 v80, s0, v60
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s1, s0, s15
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v79
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v78, s1, v45
	v_add_nc_u32_e32 v79, s1, v60
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_mov_b32 s6, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v80, 0x80000000, v80, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v78, 0x80000000, v78, s0
	v_cndmask_b32_e64 v79, 0x80000000, v79, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[169:170], v65, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[125:128], v66, s[24:27], 0 offen
	buffer_load_b128 v[129:132], v80, s[24:27], 0 offen
	buffer_load_b128 v[133:136], v78, s[24:27], 0 offen
	buffer_load_b128 v[137:140], v79, s[24:27], 0 offen
	v_add_nc_u32_e32 v70, s6, v61
	v_add_nc_u32_e32 v71, s6, v62
	s_mov_b32 s7, s36
	v_add_nc_u32_e32 v72, s6, v63
	v_add_nc_u32_e32 v73, s6, v64
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v67, s7, v42
	v_add_nc_u32_e32 v68, s7, v47
	v_add_nc_u32_e32 v69, s7, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v70
	ds_load_b128 v[97:100], v71
	ds_load_b128 v[101:104], v72
	ds_load_b128 v[105:108], v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v65, v67 offset:96
	ds_load_u8 v70, v67 offset:64
	ds_load_u8 v71, v67
	ds_load_u8 v72, v67 offset:16
	ds_load_u8 v73, v67 offset:32
	ds_load_u8 v85, v67 offset:112
	ds_load_u8 v86, v67 offset:80
	ds_load_u8 v87, v67 offset:48
	ds_load_u8 v88, v67 offset:416
	ds_load_u8 v89, v67 offset:384
	ds_load_u8 v90, v67 offset:480
	ds_load_u8 v91, v67 offset:448
	ds_load_u8 v92, v67 offset:496
	ds_load_u8 v93, v67 offset:464
	ds_load_u8 v94, v67 offset:432
	ds_load_u8 v95, v67 offset:400
	ds_load_u8 v96, v67 offset:288
	ds_load_u8 v141, v67 offset:256
	ds_load_u8 v142, v67 offset:352
	ds_load_u8 v143, v67 offset:320
	ds_load_u8 v144, v67 offset:368
	ds_load_u8 v145, v67 offset:336
	ds_load_u8 v146, v67 offset:304
	ds_load_u8 v147, v67 offset:272
	ds_load_u8 v148, v67 offset:160
	ds_load_u8 v149, v67 offset:128
	ds_load_u8 v150, v67 offset:224
	ds_load_u8 v151, v67 offset:192
	ds_load_u8 v152, v67 offset:240
	ds_load_u8 v153, v67 offset:208
	ds_load_u8 v154, v67 offset:176
	ds_load_u8 v155, v67 offset:144
	ds_load_u8 v156, v67 offset:928
	ds_load_u8 v157, v67 offset:896
	ds_load_u8 v158, v67 offset:992
	ds_load_u8 v159, v67 offset:960
	ds_load_u8 v160, v67 offset:1024
	ds_load_u8 v161, v67 offset:976
	ds_load_u8 v162, v67 offset:944
	ds_load_u8 v163, v67 offset:912
	ds_load_u8 v164, v67 offset:800
	ds_load_u8 v165, v67 offset:768
	ds_load_u8 v166, v67 offset:864
	ds_load_u8 v167, v67 offset:832
	ds_load_u8 v168, v67 offset:880
	ds_load_u8 v171, v67 offset:848
	ds_load_u8 v172, v67 offset:816
	ds_load_u8 v173, v67 offset:784
	ds_load_u8 v174, v67 offset:672
	ds_load_u8 v175, v67 offset:640
	ds_load_u8 v176, v67 offset:736
	ds_load_u8 v177, v67 offset:704
	ds_load_u8 v178, v67 offset:752
	ds_load_u8 v179, v67 offset:720
	ds_load_u8 v180, v67 offset:688
	ds_load_u8 v181, v67 offset:656
	ds_load_u8 v182, v67 offset:544
	ds_load_u8 v183, v67 offset:512
	ds_load_u8 v184, v67 offset:608
	ds_load_u8 v185, v67 offset:576
	ds_load_u8 v186, v67 offset:624
	ds_load_u8 v187, v67 offset:592
	ds_load_u8 v188, v67 offset:560
	ds_load_u8 v189, v67 offset:528
	ds_load_u8 v190, v67 offset:1440
	ds_load_u8 v191, v67 offset:1504
	ds_load_u8 v192, v67 offset:1472
	ds_load_u8 v193, v67 offset:1536
	ds_load_u8 v194, v67 offset:1520
	ds_load_u8 v195, v67 offset:1488
	ds_load_u8 v196, v67 offset:1456
	ds_load_u8 v197, v67 offset:1424
	ds_load_u8 v198, v67 offset:1408
	ds_load_u8 v199, v67 offset:1312
	ds_load_u8 v200, v67 offset:1376
	ds_load_u8 v201, v67 offset:1344
	ds_load_u8 v202, v67 offset:1392
	ds_load_u8 v203, v67 offset:1360
	ds_load_u8 v204, v67 offset:1328
	ds_load_u8 v205, v67 offset:1296
	ds_load_u8 v206, v67 offset:1280
	ds_load_u8 v207, v67 offset:1184
	ds_load_u8 v208, v67 offset:1248
	ds_load_u8 v209, v67 offset:1216
	ds_load_u8 v210, v67 offset:1264
	ds_load_u8 v211, v67 offset:1232
	ds_load_u8 v212, v67 offset:1200
	ds_load_u8 v213, v67 offset:1168
	ds_load_u8 v214, v67 offset:1152
	ds_load_u8 v215, v67 offset:1056
	ds_load_u8 v216, v67 offset:1120
	ds_load_u8 v217, v67 offset:1088
	ds_load_u8 v218, v67 offset:1136
	ds_load_u8 v219, v67 offset:1104
	ds_load_u8 v220, v67 offset:1072
	ds_load_u8 v221, v67 offset:1040
	ds_load_u8 v222, v67 offset:1952
	ds_load_u8 v223, v67 offset:2016
	ds_load_u8 v224, v67 offset:1984
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	ds_load_u8 v225, v67 offset:2000
	ds_load_u8 v226, v67 offset:1968
	ds_load_u8 v227, v67 offset:1936
	ds_load_u8 v228, v67 offset:1920
	ds_load_u8 v229, v67 offset:1824
	ds_load_u8 v230, v67 offset:1888
	ds_load_u8 v231, v67 offset:1856
	ds_load_u8 v232, v67 offset:1904
	ds_load_u8 v233, v67 offset:1872
	ds_load_u8 v234, v67 offset:1840
	ds_load_u8 v235, v67 offset:1808
	ds_load_u8 v236, v67 offset:1792
	ds_load_u8 v237, v67 offset:1696
	ds_load_u8 v238, v67 offset:1760
	ds_load_u8 v239, v67 offset:1728
	ds_load_u8 v240, v67 offset:1776
	ds_load_u8 v241, v67 offset:1744
	ds_load_u8 v242, v67 offset:1712
	ds_load_u8 v243, v67 offset:1680
	ds_load_u8 v244, v67 offset:1664
	ds_load_u8 v245, v67 offset:1568
	ds_load_u8 v246, v67 offset:1632
	ds_load_u8 v247, v67 offset:1600
	ds_load_u8 v248, v67 offset:1648
	ds_load_u8 v249, v67 offset:1616
	ds_load_u8 v250, v67 offset:1584
	ds_load_u8 v67, v67 offset:1552
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[109:112], v74
	ds_load_b128 v[113:116], v75
	ds_load_b128 v[117:120], v76
	ds_load_b128 v[121:124], v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v66, v89, v88, 0xc0c0004
	v_perm_b32 v74, v91, v90, 0xc0c0004
	v_perm_b32 v75, v141, v96, 0xc0c0004
	v_perm_b32 v76, v143, v142, 0xc0c0004
	v_perm_b32 v77, v149, v148, 0xc0c0004
	v_perm_b32 v78, v151, v150, 0xc0c0004
	v_perm_b32 v65, v70, v65, 0xc0c0004
	v_perm_b32 v70, v71, v73, 0xc0c0004
	v_perm_b32 v71, v157, v156, 0xc0c0004
	v_perm_b32 v73, v159, v158, 0xc0c0004
	v_perm_b32 v79, v165, v164, 0xc0c0004
	v_perm_b32 v80, v167, v166, 0xc0c0004
	v_perm_b32 v88, v175, v174, 0xc0c0004
	v_perm_b32 v96, v177, v176, 0xc0c0004
	v_perm_b32 v141, v183, v182, 0xc0c0004
	v_perm_b32 v148, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v149, v198, v190, 0xc0c0004
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v151, v206, v199, 0xc0c0004
	v_perm_b32 v156, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v157, v214, v207, 0xc0c0004
	v_perm_b32 v158, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v159, v160, v215, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v160, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v164, v228, v222, 0xc0c0004
	v_perm_b32 v165, v224, v223, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v93, v93, v92, 0xc0c0004
	v_perm_b32 v95, v147, v146, 0xc0c0004
	v_perm_b32 v182, v145, v144, 0xc0c0004
	v_perm_b32 v154, v155, v154, 0xc0c0004
	v_perm_b32 v153, v153, v152, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v72, v72, v87, 0xc0c0004
	v_perm_b32 v86, v163, v162, 0xc0c0004
	v_perm_b32 v68, v161, v68, 0xc0c0004
	v_perm_b32 v161, v171, v168, 0xc0c0004
	v_perm_b32 v168, v189, v188, 0xc0c0004
	v_perm_b32 v171, v187, v186, 0xc0c0004
	v_perm_b32 v185, v227, v226, 0xc0c0004
	v_perm_b32 v69, v225, v69, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v67, v250, 0xc0c0004
	v_perm_b32 v190, v249, v248, 0xc0c0004
	v_lshl_or_b32 v92, v74, 16, v66
	v_lshl_or_b32 v91, v76, 16, v75
	v_lshl_or_b32 v90, v78, 16, v77
	v_lshl_or_b32 v89, v65, 16, v70
	v_perm_b32 v150, v192, v191, 0xc0c0004
	v_perm_b32 v87, v173, v172, 0xc0c0004
	v_perm_b32 v162, v181, v180, 0xc0c0004
	v_perm_b32 v163, v179, v178, 0xc0c0004
	v_lshl_or_b32 v144, v73, 16, v71
	v_lshl_or_b32 v143, v80, 16, v79
	v_lshl_or_b32 v142, v96, 16, v88
	v_lshl_or_b32 v141, v148, 16, v141
	v_lshl_or_b32 v147, v156, 16, v151
	v_lshl_or_b32 v146, v158, 16, v157
	v_lshl_or_b32 v145, v160, 16, v159
	v_lshl_or_b32 v152, v165, 16, v164
	v_lshl_or_b32 v156, v93, 16, v94
	v_lshl_or_b32 v155, v182, 16, v95
	v_lshl_or_b32 v154, v153, 16, v154
	v_lshl_or_b32 v153, v85, 16, v72
	v_lshl_or_b32 v160, v68, 16, v86
	v_lshl_or_b32 v157, v171, 16, v168
	v_lshl_or_b32 v168, v69, 16, v185
	v_lshl_or_b32 v165, v190, 16, v67
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v166, v236, v229, 0xc0c0004
	v_perm_b32 v167, v231, v230, 0xc0c0004
	v_perm_b32 v174, v244, v237, 0xc0c0004
	v_perm_b32 v175, v239, v238, 0xc0c0004
	v_perm_b32 v176, v193, v245, 0xc0c0004
	v_perm_b32 v177, v247, v246, 0xc0c0004
	v_perm_b32 v172, v197, v196, 0xc0c0004
	v_perm_b32 v173, v195, v194, 0xc0c0004
	v_perm_b32 v178, v205, v204, 0xc0c0004
	v_perm_b32 v179, v203, v202, 0xc0c0004
	v_perm_b32 v180, v213, v212, 0xc0c0004
	v_perm_b32 v181, v211, v210, 0xc0c0004
	v_perm_b32 v183, v221, v220, 0xc0c0004
	v_perm_b32 v184, v219, v218, 0xc0c0004
	v_lshl_or_b32 v148, v150, 16, v149
	v_lshl_or_b32 v159, v161, 16, v87
	v_lshl_or_b32 v158, v163, 16, v162
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[153:156], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[97:100], v[141:144], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v186, v235, v234, 0xc0c0004
	v_perm_b32 v187, v233, v232, 0xc0c0004
	v_perm_b32 v188, v243, v242, 0xc0c0004
	v_perm_b32 v189, v241, v240, 0xc0c0004
	v_lshl_or_b32 v151, v167, 16, v166
	v_lshl_or_b32 v150, v175, 16, v174
	v_lshl_or_b32 v149, v177, 16, v176
	v_lshl_or_b32 v164, v173, 16, v172
	v_lshl_or_b32 v163, v179, 16, v178
	v_lshl_or_b32 v162, v181, 16, v180
	v_lshl_or_b32 v161, v184, 16, v183
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[89:96], v[109:112], v[153:156], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[113:116], v[141:144], v[81:88] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[157:160], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[101:104], v[145:148], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v187, 16, v186
	v_lshl_or_b32 v166, v189, 16, v188
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[89:96], v[113:116], v[157:160], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[117:120], v[145:148], v[81:88] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[161:164], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[105:108], v[149:152], v[65:72] neg_lo:[1,1,0]
	s_mov_b32 s4, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s39, 1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[89:96], v[117:120], v[161:164], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[121:124], v[149:152], v[81:88] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[105:108], v[165:168], v[73:80] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s3, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s39, s3, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[89:96], v[121:124], v[165:168], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s3, s39, 13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v67
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s39, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s3, s3, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v68
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s0, s1, 0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v29, v29, v81 :: v_dual_add_nc_u32 v252, s3, v51
	v_dual_add_f32 v30, v30, v82 :: v_dual_add_nc_u32 v253, s3, v52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v70 :: v_dual_add_f32 v17, v17, v69
	v_dual_add_f32 v10, v10, v72 :: v_dual_add_f32 v9, v9, v71
	v_dual_add_f32 v40, v40, v74 :: v_dual_add_f32 v39, v39, v73
	v_dual_add_f32 v36, v36, v76 :: v_dual_add_f32 v35, v35, v75
	v_dual_add_f32 v24, v24, v78 :: v_dual_add_f32 v23, v23, v77
	v_dual_add_f32 v12, v12, v80 :: v_dual_add_f32 v11, v11, v79
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v25, v25, v83 :: v_dual_add_nc_u32 v254, s3, v53
	v_dual_add_f32 v26, v26, v84 :: v_dual_add_nc_u32 v251, s0, v46
	v_dual_add_f32 v19, v19, v85 :: v_dual_add_f32 v32, v32, v92
	v_dual_add_f32 v20, v20, v86 :: v_dual_add_nc_u32 v49, s3, v55
	v_dual_add_f32 v14, v14, v88 :: v_dual_add_nc_u32 v255, s3, v54
	v_dual_add_f32 v38, v38, v90 :: v_dual_add_nc_u32 v59, s3, v56
	v_dual_add_f32 v13, v13, v87 :: v_dual_add_nc_u32 v50, s3, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v65
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v37, v37, v89 :: v_dual_add_f32 v22, v22, v94
	v_dual_add_f32 v31, v31, v91 :: v_dual_add_f32 v16, v16, v96
	v_add_f32_e32 v21, v21, v93
	v_add_f32_e32 v15, v15, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	s_mov_b32 s36, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s35, s0, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s1, s3, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v251, v[169:170] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v66, v129, v125, 0x5010400
	v_perm_b32 v67, v129, v125, 0x7030602
	v_perm_b32 v68, v130, v126, 0x5010400
	v_perm_b32 v69, v130, v126, 0x7030602
	v_perm_b32 v70, v131, v127, 0x5010400
	v_perm_b32 v71, v131, v127, 0x7030602
	v_perm_b32 v72, v132, v128, 0x5010400
	v_perm_b32 v73, v132, v128, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v74, v137, v133, 0x5010400
	v_perm_b32 v75, v137, v133, 0x7030602
	v_perm_b32 v76, v138, v134, 0x5010400
	v_perm_b32 v77, v138, v134, 0x7030602
	v_perm_b32 v78, v139, v135, 0x5010400
	v_perm_b32 v79, v139, v135, 0x7030602
	v_perm_b32 v80, v140, v136, 0x5010400
	v_perm_b32 v81, v140, v136, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v82, 8, v66
	v_lshrrev_b32_e32 v83, 24, v66
	v_lshrrev_b32_e32 v84, 8, v67
	v_lshrrev_b32_e32 v85, 24, v67
	v_lshrrev_b32_e32 v86, 8, v68
	v_and_b16 v65.l, 0xff, v66.l
	v_and_b16 v66.l, 0xff, v67.l
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v87, 24, v68
	v_and_b16 v68.l, 0xff, v69.l
	v_lshrrev_b32_e32 v88, 8, v69
	v_lshrrev_b32_e32 v89, 24, v69
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v90, 8, v70
	v_lshrrev_b32_e32 v91, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v92, 8, v71
	v_lshrrev_b32_e32 v93, 24, v71
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v94, 8, v72
	v_lshrrev_b32_e32 v95, 24, v72
	v_and_b16 v72.l, 0xff, v73.l
	v_lshrrev_b32_e32 v96, 8, v73
	v_lshrrev_b32_e32 v97, 24, v73
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v73.l, 0xff, v74.l
	v_lshrrev_b32_e32 v98, 8, v74
	v_lshrrev_b32_e32 v99, 24, v74
	v_and_b16 v74.l, 0xff, v75.l
	v_lshrrev_b32_e32 v100, 8, v75
	v_lshrrev_b32_e32 v101, 24, v75
	v_and_b16 v75.l, 0xff, v76.l
	v_lshrrev_b32_e32 v102, 8, v76
	v_lshrrev_b32_e32 v103, 24, v76
	v_and_b16 v76.l, 0xff, v77.l
	v_lshrrev_b32_e32 v104, 8, v77
	v_lshrrev_b32_e32 v105, 24, v77
	v_and_b16 v77.l, 0xff, v78.l
	v_lshrrev_b32_e32 v106, 8, v78
	v_lshrrev_b32_e32 v107, 24, v78
	v_and_b16 v78.l, 0xff, v79.l
	v_lshrrev_b32_e32 v108, 8, v79
	v_lshrrev_b32_e32 v109, 24, v79
	v_and_b16 v79.l, 0xff, v80.l
	v_lshrrev_b32_e32 v110, 8, v80
	v_lshrrev_b32_e32 v111, 24, v80
	v_and_b16 v80.l, 0xff, v81.l
	v_lshrrev_b32_e32 v112, 8, v81
	v_lshrrev_b32_e32 v113, 24, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v81.l, 8, v82.l
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.h
	v_and_b16 v71.h, 0xff, v72.h
	v_and_b16 v72.h, 0xff, v73.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v73.h, 0xff, v74.h
	v_and_b16 v74.h, 0xff, v75.h
	v_and_b16 v75.h, 0xff, v76.h
	v_and_b16 v76.h, 0xff, v77.h
	v_and_b16 v77.h, 0xff, v78.h
	v_and_b16 v78.h, 0xff, v79.h
	v_and_b16 v79.h, 0xff, v80.h
	v_and_b16 v80.h, 0xff, v81.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v81.h, 8, v83.l
	v_lshlrev_b16 v82.l, 8, v84.l
	v_lshlrev_b16 v82.h, 8, v85.l
	v_lshlrev_b16 v83.l, 8, v86.l
	v_lshlrev_b16 v83.h, 8, v87.l
	v_lshlrev_b16 v84.l, 8, v88.l
	v_lshlrev_b16 v84.h, 8, v89.l
	v_lshlrev_b16 v85.l, 8, v90.l
	v_lshlrev_b16 v85.h, 8, v91.l
	v_lshlrev_b16 v86.l, 8, v92.l
	v_lshlrev_b16 v86.h, 8, v93.l
	v_lshlrev_b16 v87.l, 8, v94.l
	v_lshlrev_b16 v87.h, 8, v95.l
	v_lshlrev_b16 v88.l, 8, v96.l
	v_lshlrev_b16 v88.h, 8, v97.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v89.l, 8, v98.l
	v_lshlrev_b16 v89.h, 8, v99.l
	v_lshlrev_b16 v90.l, 8, v100.l
	v_lshlrev_b16 v90.h, 8, v101.l
	v_lshlrev_b16 v91.l, 8, v102.l
	v_lshlrev_b16 v91.h, 8, v103.l
	v_lshlrev_b16 v92.l, 8, v104.l
	v_lshlrev_b16 v92.h, 8, v105.l
	v_lshlrev_b16 v93.l, 8, v106.l
	v_lshlrev_b16 v93.h, 8, v107.l
	v_lshlrev_b16 v94.l, 8, v108.l
	v_lshlrev_b16 v94.h, 8, v109.l
	v_lshlrev_b16 v95.l, 8, v110.l
	v_lshlrev_b16 v95.h, 8, v111.l
	v_lshlrev_b16 v96.l, 8, v112.l
	v_lshlrev_b16 v96.h, 8, v113.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v65.l, v65.l, v81.l
	v_or_b16 v65.h, v65.h, v81.h
	v_or_b16 v66.l, v66.l, v82.l
	v_or_b16 v66.h, v66.h, v82.h
	v_or_b16 v67.l, v67.l, v83.l
	v_or_b16 v67.h, v67.h, v83.h
	v_or_b16 v68.l, v68.l, v84.l
	v_or_b16 v68.h, v68.h, v84.h
	v_or_b16 v69.l, v69.l, v85.l
	v_or_b16 v69.h, v69.h, v85.h
	v_or_b16 v70.l, v70.l, v86.l
	v_or_b16 v70.h, v70.h, v86.h
	v_or_b16 v71.l, v71.l, v87.l
	v_or_b16 v71.h, v71.h, v87.h
	v_or_b16 v72.l, v72.l, v88.l
	v_or_b16 v72.h, v72.h, v88.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v73.l, v73.l, v89.l
	v_or_b16 v73.h, v73.h, v89.h
	v_or_b16 v74.l, v74.l, v90.l
	v_or_b16 v74.h, v74.h, v90.h
	v_or_b16 v75.l, v75.l, v91.l
	v_or_b16 v75.h, v75.h, v91.h
	v_or_b16 v76.l, v76.l, v92.l
	v_or_b16 v76.h, v76.h, v92.h
	v_or_b16 v77.l, v77.l, v93.l
	v_or_b16 v77.h, v77.h, v93.h
	v_or_b16 v78.l, v78.l, v94.l
	v_or_b16 v78.h, v78.h, v94.h
	v_or_b16 v79.l, v79.l, v95.l
	v_or_b16 v79.h, v79.h, v95.h
	v_or_b16 v80.l, v80.l, v96.l
	v_or_b16 v80.h, v80.h, v96.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v252, v65
	ds_store_b16_d16_hi v252, v65 offset:64
	ds_store_b16 v253, v66
	ds_store_b16_d16_hi v253, v66 offset:64
	ds_store_b16 v254, v67
	ds_store_b16_d16_hi v254, v67 offset:64
	ds_store_b16 v255, v68
	ds_store_b16_d16_hi v255, v68 offset:64
	ds_store_b16 v49, v69
	ds_store_b16_d16_hi v49, v69 offset:64
	ds_store_b16 v252, v70 offset:640
	ds_store_b16_d16_hi v252, v70 offset:704
	ds_store_b16 v59, v71
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v252, v73 offset:16384
	ds_store_b16_d16_hi v252, v73 offset:16448
	ds_store_b16 v253, v74 offset:16384
	ds_store_b16_d16_hi v253, v74 offset:16448
	ds_store_b16 v254, v75 offset:16384
	ds_store_b16_d16_hi v254, v75 offset:16448
	ds_store_b16 v255, v76 offset:16384
	ds_store_b16_d16_hi v255, v76 offset:16448
	ds_store_b16 v49, v77 offset:16384
	ds_store_b16_d16_hi v49, v77 offset:16448
	ds_store_b16 v252, v78 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v59, v71 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v252, v78 offset:17088
	ds_store_b16 v59, v79 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v50, v72
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v59, v79 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v50, v72 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v50, v80 offset:16384
	ds_store_b16_d16_hi v50, v80 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	v_dual_mov_b32 v6, v47 :: v_dual_mov_b32 v5, v48
	v_and_b32_e32 v4, 8, v0
	v_and_b32_e32 v92, 32, v0
	s_mov_b32 s5, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v29, 0
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s35, 0, 0x8800
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	v_mov_b32_e32 v30, v29
	v_mov_b32_e32 v19, v29
	v_mov_b32_e32 v17, v29
	v_mov_b32_e32 v25, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v27, v29 :: v_dual_mov_b32 v28, v30
	v_dual_mov_b32 v34, v30 :: v_dual_mov_b32 v33, v29
	v_mov_b32_e32 v20, v30
	v_mov_b32_e32 v18, v30
	v_dual_mov_b32 v26, v30 :: v_dual_mov_b32 v13, v29
	v_dual_mov_b32 v14, v30 :: v_dual_mov_b32 v9, v29
	v_mov_b32_e32 v10, v30
	v_dual_mov_b32 v38, v30 :: v_dual_mov_b32 v37, v29
	v_dual_mov_b32 v40, v30 :: v_dual_mov_b32 v39, v29
	v_dual_mov_b32 v21, v29 :: v_dual_mov_b32 v22, v30
	v_dual_mov_b32 v23, v29 :: v_dual_mov_b32 v24, v30
	v_dual_mov_b32 v32, v30 :: v_dual_mov_b32 v31, v29
	v_dual_mov_b32 v36, v30 :: v_dual_mov_b32 v35, v29
	v_dual_mov_b32 v15, v29 :: v_dual_mov_b32 v16, v30
	v_dual_mov_b32 v11, v29 :: v_dual_mov_b32 v12, v30
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s36, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v3, s36, v6
	ds_load_u8_d16 v106, v2
	ds_load_u8_d16 v7, v2 offset:16
	ds_load_u8_d16 v107, v2 offset:32
	ds_load_u8_d16 v8, v2 offset:48
	ds_load_u8_d16 v104, v2 offset:64
	ds_load_u8_d16 v105, v2 offset:96
	ds_load_u8_d16 v41, v2 offset:112
	ds_load_u8_d16 v43, v2 offset:80
	ds_load_u8_d16 v127, v2 offset:128
	ds_load_u8_d16 v131, v2 offset:160
	ds_load_u8_d16 v126, v2 offset:192
	ds_load_u8_d16 v128, v2 offset:224
	ds_load_u8_d16 v50, v2 offset:240
	ds_load_u8_d16 v52, v2 offset:208
	ds_load_u8_d16 v56, v2 offset:176
	ds_load_u8_d16 v57, v2 offset:144
	ds_load_u8_d16 v143, v2 offset:256
	ds_load_u8_d16 v147, v2 offset:288
	ds_load_u8_d16 v142, v2 offset:320
	ds_load_u8_d16 v144, v2 offset:352
	ds_load_u8_d16 v67, v2 offset:368
	ds_load_u8_d16 v69, v2 offset:336
	ds_load_u8_d16 v73, v2 offset:304
	ds_load_u8_d16 v74, v2 offset:272
	ds_load_u8_d16 v156, v2 offset:384
	ds_load_u8_d16 v159, v2 offset:416
	ds_load_u8_d16 v155, v2 offset:448
	ds_load_u8_d16 v157, v2 offset:480
	ds_load_u8_d16 v83, v2 offset:496
	ds_load_u8_d16 v85, v2 offset:464
	ds_load_u8_d16 v87, v2 offset:432
	ds_load_u8_d16 v88, v2 offset:400
	ds_load_u8_d16 v110, v2 offset:512
	ds_load_u8_d16 v112, v2 offset:544
	ds_load_u8_d16 v108, v2 offset:576
	ds_load_u8_d16 v111, v2 offset:608
	ds_load_u8_d16 v44, v2 offset:624
	ds_load_u8_d16 v45, v2 offset:592
	ds_load_u8_d16 v46, v2 offset:560
	ds_load_u8_d16 v47, v2 offset:528
	ds_load_u8_d16 v123, v2 offset:640
	ds_load_u8_d16 v125, v2 offset:672
	ds_load_u8_d16 v122, v2 offset:704
	ds_load_u8_d16 v124, v2 offset:736
	ds_load_u8_d16 v59, v2 offset:752
	ds_load_u8_d16 v61, v2 offset:720
	ds_load_u8_d16 v63, v2 offset:688
	ds_load_u8_d16 v64, v2 offset:656
	ds_load_u8_d16 v139, v2 offset:768
	ds_load_u8_d16 v141, v2 offset:800
	ds_load_u8_d16 v137, v2 offset:832
	ds_load_u8_d16 v140, v2 offset:864
	ds_load_u8_d16 v75, v2 offset:880
	ds_load_u8_d16 v77, v2 offset:848
	ds_load_u8_d16 v79, v2 offset:816
	ds_load_u8_d16 v80, v2 offset:784
	ds_load_u8_d16 v152, v2 offset:896
	ds_load_u8_d16 v154, v2 offset:928
	ds_load_u8_d16 v150, v2 offset:960
	ds_load_u8_d16 v153, v2 offset:992
	ds_load_u8_d16 v109, v2 offset:1024
	ds_load_u8_d16 v89, v2 offset:976
	ds_load_u8_d16 v90, v2 offset:944
	ds_load_u8_d16 v91, v2 offset:912
	ds_load_u8_d16 v117, v2 offset:1056
	ds_load_u8_d16 v113, v2 offset:1088
	ds_load_u8_d16 v115, v2 offset:1120
	ds_load_u8_d16 v121, v2 offset:1152
	ds_load_u8_d16 v48, v2 offset:1136
	ds_load_u8_d16 v49, v2 offset:1104
	ds_load_u8_d16 v51, v2 offset:1072
	ds_load_u8_d16 v53, v2 offset:1040
	ds_load_u8_d16 v133, v2 offset:1184
	ds_load_u8_d16 v129, v2 offset:1216
	ds_load_u8_d16 v132, v2 offset:1248
	ds_load_u8_d16 v138, v2 offset:1280
	ds_load_u8_d16 v65, v2 offset:1264
	ds_load_u8_d16 v66, v2 offset:1232
	ds_load_u8_d16 v68, v2 offset:1200
	ds_load_u8_d16 v70, v2 offset:1168
	ds_load_u8_d16 v149, v2 offset:1312
	ds_load_u8_d16 v145, v2 offset:1344
	ds_load_u8_d16 v148, v2 offset:1376
	ds_load_u8_d16 v151, v2 offset:1408
	ds_load_u8_d16 v81, v2 offset:1392
	ds_load_u8_d16 v82, v2 offset:1360
	ds_load_u8_d16 v84, v2 offset:1328
	ds_load_u8_d16 v86, v2 offset:1296
	ds_load_u8_d16 v161, v2 offset:1440
	ds_load_u8_d16 v158, v2 offset:1472
	ds_load_u8_d16 v160, v2 offset:1504
	ds_load_u8_d16 v116, v2 offset:1536
	ds_load_u8_d16 v93, v2 offset:1520
	ds_load_u8_d16 v95, v2 offset:1488
	ds_load_u8_d16 v97, v2 offset:1456
	ds_load_u8_d16 v99, v2 offset:1424
	ds_load_u8_d16 v120, v2 offset:1568
	ds_load_u8_d16 v118, v2 offset:1600
	ds_load_u8_d16 v119, v2 offset:1632
	ds_load_u8_d16 v130, v2 offset:1664
	ds_load_u8_d16 v54, v2 offset:1648
	ds_load_u8_d16 v55, v2 offset:1616
	ds_load_u8_d16 v60, v2 offset:1584
	ds_load_u8_d16 v62, v2 offset:1552
	ds_load_u8_d16 v136, v2 offset:1696
	ds_load_u8_d16 v134, v2 offset:1728
	ds_load_u8_d16 v135, v2 offset:1760
	ds_load_u8_d16 v146, v2 offset:1792
	ds_load_u8_d16 v71, v2 offset:1776
	ds_load_u8_d16 v72, v2 offset:1744
	ds_load_u8_d16 v76, v2 offset:1712
	ds_load_u8_d16 v78, v2 offset:1680
	v_add_nc_u32_e32 v101, s36, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v164, v2 offset:1824
	ds_load_u8_d16 v162, v2 offset:1856
	ds_load_u8_d16 v163, v2 offset:1888
	ds_load_u8_d16 v165, v2 offset:1920
	ds_load_u8_d16 v92, v2 offset:1904
	ds_load_u8_d16 v94, v2 offset:1872
	ds_load_u8_d16 v96, v2 offset:1840
	ds_load_u8_d16 v98, v2 offset:1808
	s_mov_b32 s4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v100, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v4, v4, v100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v168, v2 offset:1952
	ds_load_u8_d16 v166, v2 offset:1984
	ds_load_u8_d16 v167, v2 offset:2016
	ds_load_u8_d16 v114, v3
	ds_load_u8_d16 v100, v101
	ds_load_u8_d16 v101, v2 offset:2000
	ds_load_u8_d16 v102, v2 offset:1968
	ds_load_u8_d16 v103, v2 offset:1936
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v3, 0, 1, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v4, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v170, s5, v2
	v_add_nc_u32_e32 v171, s5, v1
	v_add_nc_u32_e32 v58, s5, v4
	v_add_nc_u32_e32 v169, s5, v3
	ds_load_b128 v[193:196], v170
	ds_load_b128 v[197:200], v171
	ds_load_b128 v[185:188], v58
	ds_load_b128 v[189:192], v169
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v58, v156, v159, 0xc0c0004
	v_perm_b32 v169, v155, v157, 0xc0c0004
	v_perm_b32 v172, v143, v147, 0xc0c0004
	v_perm_b32 v173, v142, v144, 0xc0c0004
	v_perm_b32 v174, v127, v131, 0xc0c0004
	v_perm_b32 v175, v126, v128, 0xc0c0004
	v_lshl_or_b32 v204, v169, 16, v58
	v_perm_b32 v58, v106, v107, 0xc0c0004
	v_perm_b32 v169, v104, v105, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v203, v173, 16, v172
	v_lshl_or_b32 v202, v175, 16, v174
	v_perm_b32 v205, v150, v153, 0xc0c0004
	v_lshl_or_b32 v201, v169, 16, v58
	v_dual_mov_b32 v176, s11 :: v_dual_mov_b32 v171, s6
	v_dual_mov_b32 v175, s10 :: v_dual_mov_b32 v174, s9
	v_dual_mov_b32 v173, s8 :: v_dual_mov_b32 v172, s7
	v_dual_mov_b32 v170, s5 :: v_dual_mov_b32 v169, s4
	v_perm_b32 v58, v152, v154, 0xc0c0004
	v_perm_b32 v206, v139, v141, 0xc0c0004
	v_perm_b32 v207, v137, v140, 0xc0c0004
	v_perm_b32 v208, v123, v125, 0xc0c0004
	v_perm_b32 v209, v122, v124, 0xc0c0004
	v_perm_b32 v210, v110, v112, 0xc0c0004
	v_perm_b32 v211, v108, v111, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[197:200], v[201:204], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v205, 16, v58
	v_lshl_or_b32 v203, v207, 16, v206
	v_lshl_or_b32 v202, v209, 16, v208
	v_lshl_or_b32 v201, v211, 16, v210
	v_perm_b32 v58, v151, v161, 0xc0c0004
	v_perm_b32 v205, v158, v160, 0xc0c0004
	v_perm_b32 v206, v138, v149, 0xc0c0004
	v_perm_b32 v207, v145, v148, 0xc0c0004
	v_perm_b32 v208, v121, v133, 0xc0c0004
	v_perm_b32 v209, v129, v132, 0xc0c0004
	v_perm_b32 v210, v109, v117, 0xc0c0004
	v_perm_b32 v211, v113, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[177:184], v[193:196], v[201:204], v[177:184] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v205, 16, v58
	v_lshl_or_b32 v203, v207, 16, v206
	v_lshl_or_b32 v202, v209, 16, v208
	v_lshl_or_b32 v201, v211, 16, v210
	v_perm_b32 v58, v165, v168, 0xc0c0004
	v_perm_b32 v205, v166, v167, 0xc0c0004
	v_perm_b32 v206, v146, v164, 0xc0c0004
	v_perm_b32 v207, v162, v163, 0xc0c0004
	v_perm_b32 v208, v130, v136, 0xc0c0004
	v_perm_b32 v209, v134, v135, 0xc0c0004
	v_perm_b32 v210, v116, v120, 0xc0c0004
	v_perm_b32 v211, v118, v119, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[189:192], v[201:204], v[177:184] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v205, 16, v58
	v_lshl_or_b32 v203, v207, 16, v206
	v_lshl_or_b32 v202, v209, 16, v208
	v_lshl_or_b32 v201, v211, 16, v210
	v_perm_b32 v58, v88, v87, 0xc0c0004
	v_perm_b32 v205, v85, v83, 0xc0c0004
	v_perm_b32 v206, v74, v73, 0xc0c0004
	v_perm_b32 v207, v69, v67, 0xc0c0004
	v_perm_b32 v208, v57, v56, 0xc0c0004
	v_perm_b32 v209, v52, v50, 0xc0c0004
	v_perm_b32 v210, v7, v8, 0xc0c0004
	v_perm_b32 v211, v43, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[177:184], v[185:188], v[201:204], v[177:184] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v205, 16, v58
	v_lshl_or_b32 v203, v207, 16, v206
	v_lshl_or_b32 v202, v209, 16, v208
	v_lshl_or_b32 v201, v211, 16, v210
	v_perm_b32 v58, v91, v90, 0xc0c0004
	v_perm_b32 v205, v89, v114, 0xc0c0004
	v_perm_b32 v206, v80, v79, 0xc0c0004
	v_perm_b32 v207, v77, v75, 0xc0c0004
	v_perm_b32 v208, v64, v63, 0xc0c0004
	v_perm_b32 v209, v61, v59, 0xc0c0004
	v_perm_b32 v210, v47, v46, 0xc0c0004
	v_perm_b32 v211, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[197:200], v[201:204], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v200, v205, 16, v58
	v_lshl_or_b32 v199, v207, 16, v206
	v_lshl_or_b32 v198, v209, 16, v208
	v_lshl_or_b32 v197, v211, 16, v210
	v_perm_b32 v58, v99, v97, 0xc0c0004
	v_perm_b32 v201, v95, v93, 0xc0c0004
	v_perm_b32 v202, v86, v84, 0xc0c0004
	v_perm_b32 v203, v82, v81, 0xc0c0004
	v_perm_b32 v204, v70, v68, 0xc0c0004
	v_perm_b32 v205, v66, v65, 0xc0c0004
	v_perm_b32 v206, v53, v51, 0xc0c0004
	v_perm_b32 v207, v49, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[193:196], v[197:200], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v201, 16, v58
	v_lshl_or_b32 v195, v203, 16, v202
	v_lshl_or_b32 v194, v205, 16, v204
	v_lshl_or_b32 v193, v207, 16, v206
	v_perm_b32 v58, v103, v102, 0xc0c0004
	v_perm_b32 v197, v101, v100, 0xc0c0004
	v_perm_b32 v198, v98, v96, 0xc0c0004
	v_perm_b32 v199, v94, v92, 0xc0c0004
	v_perm_b32 v200, v78, v76, 0xc0c0004
	v_perm_b32 v201, v72, v71, 0xc0c0004
	v_perm_b32 v202, v62, v60, 0xc0c0004
	v_perm_b32 v203, v55, v54, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[193:196], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v197, 16, v58
	v_lshl_or_b32 v191, v199, 16, v198
	v_lshl_or_b32 v190, v201, 16, v200
	v_lshl_or_b32 v189, v203, 16, v202
	v_cvt_f32_i32_e32 v58, v180
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v181
	v_cvt_f32_i32_e32 v181, v184
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[189:192], v[169:176] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v28, v28, v58 :: v_dual_add_f32 v27, v27, v179
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v182
	v_cvt_f32_i32_e32 v179, v183
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v171, v171
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v17, v180 :: v_dual_add_f32 v18, v18, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v170
	v_cvt_f32_i32_e32 v170, v172
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v169
	v_add_f32_e32 v35, v35, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v169, v173
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v174
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v170, v175
	v_cvt_f32_i32_e32 v171, v178
	v_cvt_f32_i32_e32 v172, v177
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v58 :: v_dual_add_f32 v23, v23, v169
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v176
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v10, v181 :: v_dual_add_f32 v9, v9, v179
	v_dual_add_f32 v11, v11, v170 :: v_dual_add_f32 v34, v34, v171
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v12, v12, v58 :: v_dual_add_f32 v33, v33, v172
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
	v_add_nc_u32_e32 v170, s34, v2
	v_add_nc_u32_e32 v171, s34, v1
	v_add_nc_u32_e32 v58, s34, v4
	ds_load_b128 v[193:196], v170
	ds_load_b128 v[197:200], v171
	v_add_nc_u32_e32 v169, s34, v3
	ds_load_b128 v[185:188], v58
	ds_load_b128 v[189:192], v169
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v58, v156, v159, 0xc0c0004
	v_perm_b32 v155, v155, v157, 0xc0c0004
	v_perm_b32 v143, v143, v147, 0xc0c0004
	v_perm_b32 v142, v142, v144, 0xc0c0004
	v_perm_b32 v127, v127, v131, 0xc0c0004
	v_perm_b32 v126, v126, v128, 0xc0c0004
	v_lshl_or_b32 v204, v155, 16, v58
	v_perm_b32 v58, v106, v107, 0xc0c0004
	v_perm_b32 v104, v104, v105, 0xc0c0004
	v_dual_mov_b32 v176, s11 :: v_dual_mov_b32 v171, s6
	v_lshl_or_b32 v203, v142, 16, v143
	v_lshl_or_b32 v202, v126, 16, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v201, v104, 16, v58
	v_dual_mov_b32 v175, s10 :: v_dual_mov_b32 v174, s9
	v_dual_mov_b32 v173, s8 :: v_dual_mov_b32 v172, s7
	v_dual_mov_b32 v170, s5 :: v_dual_mov_b32 v169, s4
	v_perm_b32 v58, v152, v154, 0xc0c0004
	v_perm_b32 v104, v150, v153, 0xc0c0004
	v_perm_b32 v105, v139, v141, 0xc0c0004
	v_perm_b32 v106, v137, v140, 0xc0c0004
	v_perm_b32 v123, v123, v125, 0xc0c0004
	v_perm_b32 v122, v122, v124, 0xc0c0004
	v_perm_b32 v110, v110, v112, 0xc0c0004
	v_perm_b32 v108, v108, v111, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[197:200], v[201:204], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v104, 16, v58
	v_lshl_or_b32 v106, v106, 16, v105
	v_lshl_or_b32 v105, v122, 16, v123
	v_lshl_or_b32 v104, v108, 16, v110
	v_perm_b32 v58, v151, v161, 0xc0c0004
	v_perm_b32 v108, v158, v160, 0xc0c0004
	v_perm_b32 v110, v138, v149, 0xc0c0004
	v_perm_b32 v111, v145, v148, 0xc0c0004
	v_perm_b32 v112, v121, v133, 0xc0c0004
	v_perm_b32 v121, v129, v132, 0xc0c0004
	v_perm_b32 v109, v109, v117, 0xc0c0004
	v_perm_b32 v113, v113, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[177:184], v[193:196], v[104:107], v[177:184] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v108, 16, v58
	v_lshl_or_b32 v106, v111, 16, v110
	v_lshl_or_b32 v105, v121, 16, v112
	v_lshl_or_b32 v104, v113, 16, v109
	v_perm_b32 v58, v165, v168, 0xc0c0004
	v_perm_b32 v108, v166, v167, 0xc0c0004
	v_perm_b32 v109, v146, v164, 0xc0c0004
	v_perm_b32 v110, v162, v163, 0xc0c0004
	v_perm_b32 v111, v130, v136, 0xc0c0004
	v_perm_b32 v112, v134, v135, 0xc0c0004
	v_perm_b32 v113, v116, v120, 0xc0c0004
	v_perm_b32 v115, v118, v119, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[189:192], v[104:107], v[177:184] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v108, 16, v58
	v_lshl_or_b32 v106, v110, 16, v109
	v_lshl_or_b32 v105, v112, 16, v111
	v_lshl_or_b32 v104, v115, 16, v113
	v_perm_b32 v58, v88, v87, 0xc0c0004
	v_perm_b32 v83, v85, v83, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_perm_b32 v50, v52, v50, 0xc0c0004
	v_perm_b32 v7, v7, v8, 0xc0c0004
	v_perm_b32 v8, v43, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[177:184], v[185:188], v[104:107], v[177:184] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v83, 16, v58
	v_lshl_or_b32 v106, v67, 16, v73
	v_lshl_or_b32 v105, v50, 16, v56
	v_lshl_or_b32 v104, v8, 16, v7
	v_perm_b32 v7, v91, v90, 0xc0c0004
	v_perm_b32 v8, v89, v114, 0xc0c0004
	v_perm_b32 v41, v80, v79, 0xc0c0004
	v_perm_b32 v43, v77, v75, 0xc0c0004
	v_perm_b32 v50, v64, v63, 0xc0c0004
	v_perm_b32 v52, v61, v59, 0xc0c0004
	v_perm_b32 v47, v47, v46, 0xc0c0004
	v_perm_b32 v56, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[197:200], v[104:107], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v8, 16, v7
	v_lshl_or_b32 v45, v43, 16, v41
	v_lshl_or_b32 v44, v52, 16, v50
	v_lshl_or_b32 v43, v56, 16, v47
	v_perm_b32 v7, v99, v97, 0xc0c0004
	v_perm_b32 v8, v95, v93, 0xc0c0004
	v_perm_b32 v41, v86, v84, 0xc0c0004
	v_perm_b32 v47, v82, v81, 0xc0c0004
	v_perm_b32 v50, v70, v68, 0xc0c0004
	v_perm_b32 v52, v66, v65, 0xc0c0004
	v_perm_b32 v51, v53, v51, 0xc0c0004
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[193:196], v[43:46], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v8, 16, v7
	v_lshl_or_b32 v45, v47, 16, v41
	v_lshl_or_b32 v44, v52, 16, v50
	v_lshl_or_b32 v43, v48, 16, v51
	v_perm_b32 v7, v103, v102, 0xc0c0004
	v_perm_b32 v8, v101, v100, 0xc0c0004
	v_perm_b32 v41, v98, v96, 0xc0c0004
	v_perm_b32 v47, v94, v92, 0xc0c0004
	v_perm_b32 v48, v78, v76, 0xc0c0004
	v_perm_b32 v49, v72, v71, 0xc0c0004
	v_perm_b32 v50, v62, v60, 0xc0c0004
	v_perm_b32 v51, v55, v54, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[43:46], v[169:176] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v8, 16, v7
	v_lshl_or_b32 v45, v47, 16, v41
	v_lshl_or_b32 v44, v49, 16, v48
	v_lshl_or_b32 v43, v51, 16, v50
	v_cvt_f32_i32_e32 v7, v180
	v_cvt_f32_i32_e32 v8, v179
	v_cvt_f32_i32_e32 v41, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[43:46], v[169:176] neg_lo:[1,1,0]
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v26, v26, v7 :: v_dual_add_f32 v25, v25, v8
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v7, v182
	v_cvt_f32_i32_e32 v43, v184
	v_cvt_f32_i32_e32 v8, v183
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v19, v19, v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v41, v172
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v20, v20, v7
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v7, v170
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v14, v14, v43 :: v_dual_add_f32 v13, v13, v8
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v8, v169
	v_cvt_f32_i32_e32 v43, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v38, v38, v7
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v7, v174
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v32, v32, v41 :: v_dual_add_f32 v37, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v31, v31, v43
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v8, v173
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v22, v22, v7
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v7, v176
	v_cvt_f32_i32_e32 v41, v175
	v_cvt_f32_i32_e32 v43, v178
	v_cvt_f32_i32_e32 v44, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v21, v21, v8 :: v_dual_add_f32 v16, v16, v7
	v_dual_add_f32 v15, v15, v41 :: v_dual_add_f32 v30, v30, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v29, v29, v44
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v100, s35, v42
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v98, s35, v6
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v5, s35, v5
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v103, v100
	ds_load_u8_d16 v7, v100 offset:16
	ds_load_u8_d16 v104, v100 offset:32
	ds_load_u8_d16 v8, v100 offset:48
	ds_load_u8_d16 v101, v100 offset:64
	ds_load_u8_d16 v102, v100 offset:96
	ds_load_u8_d16 v41, v100 offset:112
	ds_load_u8_d16 v43, v100 offset:80
	ds_load_u8_d16 v125, v100 offset:128
	ds_load_u8_d16 v129, v100 offset:160
	ds_load_u8_d16 v124, v100 offset:192
	ds_load_u8_d16 v126, v100 offset:224
	ds_load_u8_d16 v49, v100 offset:240
	ds_load_u8_d16 v51, v100 offset:208
	ds_load_u8_d16 v55, v100 offset:176
	ds_load_u8_d16 v56, v100 offset:144
	ds_load_u8_d16 v142, v100 offset:256
	ds_load_u8_d16 v147, v100 offset:288
	ds_load_u8_d16 v141, v100 offset:320
	ds_load_u8_d16 v143, v100 offset:352
	ds_load_u8_d16 v65, v100 offset:368
	ds_load_u8_d16 v67, v100 offset:336
	ds_load_u8_d16 v71, v100 offset:304
	ds_load_u8_d16 v72, v100 offset:272
	ds_load_u8_d16 v176, v100 offset:384
	ds_load_u8_d16 v178, v100 offset:416
	ds_load_u8_d16 v172, v100 offset:448
	ds_load_u8_d16 v173, v100 offset:480
	ds_load_u8_d16 v81, v100 offset:496
	ds_load_u8_d16 v83, v100 offset:464
	ds_load_u8_d16 v87, v100 offset:432
	ds_load_u8_d16 v88, v100 offset:400
	ds_load_u8_d16 v108, v100 offset:512
	ds_load_u8_d16 v110, v100 offset:544
	ds_load_u8_d16 v106, v100 offset:576
	ds_load_u8_d16 v109, v100 offset:608
	ds_load_u8_d16 v44, v100 offset:624
	ds_load_u8_d16 v45, v100 offset:592
	ds_load_u8_d16 v46, v100 offset:560
	ds_load_u8_d16 v47, v100 offset:528
	ds_load_u8_d16 v120, v100 offset:640
	ds_load_u8_d16 v122, v100 offset:672
	ds_load_u8_d16 v119, v100 offset:704
	ds_load_u8_d16 v121, v100 offset:736
	ds_load_u8_d16 v57, v100 offset:752
	ds_load_u8_d16 v59, v100 offset:720
	ds_load_u8_d16 v61, v100 offset:688
	ds_load_u8_d16 v62, v100 offset:656
	ds_load_u8_d16 v137, v100 offset:768
	ds_load_u8_d16 v139, v100 offset:800
	ds_load_u8_d16 v135, v100 offset:832
	ds_load_u8_d16 v138, v100 offset:864
	ds_load_u8_d16 v73, v100 offset:880
	ds_load_u8_d16 v75, v100 offset:848
	ds_load_u8_d16 v77, v100 offset:816
	ds_load_u8_d16 v78, v100 offset:784
	ds_load_u8_d16 v166, v100 offset:896
	ds_load_u8_d16 v170, v100 offset:928
	ds_load_u8_d16 v164, v100 offset:960
	ds_load_u8_d16 v167, v100 offset:992
	ds_load_u8_d16 v107, v100 offset:1024
	ds_load_u8_d16 v89, v100 offset:976
	ds_load_u8_d16 v92, v100 offset:944
	ds_load_u8_d16 v93, v100 offset:912
	ds_load_u8_d16 v114, v100 offset:1056
	ds_load_u8_d16 v112, v100 offset:1088
	ds_load_u8_d16 v113, v100 offset:1120
	ds_load_u8_d16 v118, v100 offset:1152
	ds_load_u8_d16 v6, v100 offset:1136
	ds_load_u8_d16 v48, v100 offset:1104
	ds_load_u8_d16 v50, v100 offset:1072
	ds_load_u8_d16 v52, v100 offset:1040
	ds_load_u8_d16 v131, v100 offset:1184
	ds_load_u8_d16 v127, v100 offset:1216
	ds_load_u8_d16 v130, v100 offset:1248
	ds_load_u8_d16 v136, v100 offset:1280
	ds_load_u8_d16 v63, v100 offset:1264
	ds_load_u8_d16 v64, v100 offset:1232
	ds_load_u8_d16 v66, v100 offset:1200
	ds_load_u8_d16 v68, v100 offset:1168
	ds_load_u8_d16 v150, v100 offset:1312
	ds_load_u8_d16 v144, v100 offset:1344
	ds_load_u8_d16 v148, v100 offset:1376
	ds_load_u8_d16 v165, v100 offset:1408
	ds_load_u8_d16 v79, v100 offset:1392
	ds_load_u8_d16 v80, v100 offset:1360
	ds_load_u8_d16 v82, v100 offset:1328
	ds_load_u8_d16 v84, v100 offset:1296
	ds_load_u8_d16 v179, v100 offset:1440
	ds_load_u8_d16 v174, v100 offset:1472
	ds_load_u8_d16 v177, v100 offset:1504
	ds_load_u8_d16 v111, v100 offset:1536
	ds_load_u8_d16 v94, v100 offset:1520
	ds_load_u8_d16 v95, v100 offset:1488
	ds_load_u8_d16 v96, v100 offset:1456
	ds_load_u8_d16 v97, v100 offset:1424
	ds_load_u8_d16 v117, v100 offset:1568
	ds_load_u8_d16 v115, v100 offset:1600
	ds_load_u8_d16 v116, v100 offset:1632
	ds_load_u8_d16 v128, v100 offset:1664
	ds_load_u8_d16 v53, v100 offset:1648
	ds_load_u8_d16 v54, v100 offset:1616
	ds_load_u8_d16 v58, v100 offset:1584
	ds_load_u8_d16 v60, v100 offset:1552
	ds_load_u8_d16 v134, v100 offset:1696
	ds_load_u8_d16 v132, v100 offset:1728
	ds_load_u8_d16 v133, v100 offset:1760
	ds_load_u8_d16 v145, v100 offset:1792
	ds_load_u8_d16 v69, v100 offset:1776
	ds_load_u8_d16 v70, v100 offset:1744
	ds_load_u8_d16 v74, v100 offset:1712
	ds_load_u8_d16 v76, v100 offset:1680
	ds_load_u8_d16 v159, v100 offset:1824
	ds_load_u8_d16 v155, v100 offset:1856
	ds_load_u8_d16 v158, v100 offset:1888
	ds_load_u8_d16 v175, v100 offset:1920
	ds_load_u8_d16 v85, v100 offset:1904
	ds_load_u8_d16 v86, v100 offset:1872
	ds_load_u8_d16 v90, v100 offset:1840
	ds_load_u8_d16 v91, v100 offset:1808
	ds_load_u8_d16 v182, v100 offset:1952
	ds_load_u8_d16 v180, v100 offset:1984
	ds_load_u8_d16 v181, v100 offset:2016
	ds_load_u8_d16 v105, v98
	ds_load_u8_d16 v5, v5
	ds_load_u8_d16 v98, v100 offset:2000
	ds_load_u8_d16 v99, v100 offset:1968
	ds_load_u8_d16 v100, v100 offset:1936
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v140, 0, 1, s2
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_mov_b32_e32 v153, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v140
	v_mov_b32_e32 v140, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v169, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v171, v125, v129, 0xc0c0004
	v_perm_b32 v183, v124, v126, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v149, s3, v2
	v_add_nc_u32_e32 v156, s3, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v204, v183, 16, v171
	v_mov_b32_e32 v190, s11
	v_dual_mov_b32 v189, s10 :: v_dual_add_nc_u32 v140, s3, v3
	v_mov_b32_e32 v185, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[160:163], v149
	ds_load_b128 v[199:202], v156
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v157, v176, v178, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[151:154], v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v140, v172, v173, 0xc0c0004
	v_perm_b32 v168, v142, v147, 0xc0c0004
	v_perm_b32 v169, v141, v143, 0xc0c0004
	v_perm_b32 v149, v101, v102, 0xc0c0004
	v_dual_mov_b32 v187, s8 :: v_dual_add_nc_u32 v146, s3, v4
	v_lshl_or_b32 v206, v140, 16, v157
	v_perm_b32 v140, v103, v104, 0xc0c0004
	v_lshl_or_b32 v205, v169, 16, v168
	v_dual_mov_b32 v188, s9 :: v_dual_mov_b32 v183, s4
	v_mov_b32_e32 v186, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v203, v149, 16, v140
	v_mov_b32_e32 v184, s5
	v_perm_b32 v140, v166, v170, 0xc0c0004
	v_perm_b32 v149, v164, v167, 0xc0c0004
	v_perm_b32 v156, v137, v139, 0xc0c0004
	v_perm_b32 v157, v135, v138, 0xc0c0004
	v_perm_b32 v168, v120, v122, 0xc0c0004
	v_perm_b32 v169, v119, v121, 0xc0c0004
	v_perm_b32 v171, v108, v110, 0xc0c0004
	v_perm_b32 v207, v106, v109, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[199:202], v[203:206], v[183:190] neg_lo:[1,1,0]
	v_lshl_or_b32 v206, v149, 16, v140
	v_lshl_or_b32 v205, v157, 16, v156
	v_lshl_or_b32 v204, v169, 16, v168
	v_lshl_or_b32 v203, v207, 16, v171
	v_perm_b32 v140, v165, v179, 0xc0c0004
	v_perm_b32 v149, v174, v177, 0xc0c0004
	v_perm_b32 v156, v136, v150, 0xc0c0004
	v_perm_b32 v157, v144, v148, 0xc0c0004
	v_perm_b32 v168, v118, v131, 0xc0c0004
	v_perm_b32 v169, v127, v130, 0xc0c0004
	v_perm_b32 v171, v107, v114, 0xc0c0004
	v_perm_b32 v207, v112, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[191:198], v[160:163], v[203:206], v[191:198] neg_lo:[1,1,0]
	v_lshl_or_b32 v206, v149, 16, v140
	v_lshl_or_b32 v205, v157, 16, v156
	v_lshl_or_b32 v204, v169, 16, v168
	v_lshl_or_b32 v203, v207, 16, v171
	v_perm_b32 v140, v175, v182, 0xc0c0004
	v_perm_b32 v149, v180, v181, 0xc0c0004
	v_perm_b32 v156, v145, v159, 0xc0c0004
	v_perm_b32 v157, v155, v158, 0xc0c0004
	v_perm_b32 v168, v128, v134, 0xc0c0004
	v_perm_b32 v169, v132, v133, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[207:210], v146
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[151:154], v[203:206], v[191:198] neg_lo:[1,1,0]
	v_lshl_or_b32 v206, v149, 16, v140
	v_lshl_or_b32 v205, v157, 16, v156
	v_lshl_or_b32 v204, v169, 16, v168
	v_perm_b32 v140, v111, v117, 0xc0c0004
	v_perm_b32 v146, v115, v116, 0xc0c0004
	v_perm_b32 v149, v88, v87, 0xc0c0004
	v_perm_b32 v156, v83, v81, 0xc0c0004
	v_perm_b32 v157, v72, v71, 0xc0c0004
	v_perm_b32 v168, v67, v65, 0xc0c0004
	v_perm_b32 v169, v56, v55, 0xc0c0004
	v_perm_b32 v171, v51, v49, 0xc0c0004
	v_perm_b32 v211, v7, v8, 0xc0c0004
	v_perm_b32 v215, v43, v41, 0xc0c0004
	v_lshl_or_b32 v203, v146, 16, v140
	v_lshl_or_b32 v214, v156, 16, v149
	v_lshl_or_b32 v213, v168, 16, v157
	v_lshl_or_b32 v212, v171, 16, v169
	v_lshl_or_b32 v211, v215, 16, v211
	v_perm_b32 v140, v93, v92, 0xc0c0004
	v_perm_b32 v146, v89, v105, 0xc0c0004
	v_perm_b32 v149, v78, v77, 0xc0c0004
	v_perm_b32 v156, v75, v73, 0xc0c0004
	v_perm_b32 v157, v62, v61, 0xc0c0004
	v_perm_b32 v168, v59, v57, 0xc0c0004
	v_perm_b32 v169, v47, v46, 0xc0c0004
	v_perm_b32 v171, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[183:190], v[199:202], v[211:214], v[183:190] neg_lo:[1,1,0]
	v_lshl_or_b32 v202, v146, 16, v140
	v_lshl_or_b32 v201, v156, 16, v149
	v_lshl_or_b32 v200, v168, 16, v157
	v_lshl_or_b32 v199, v171, 16, v169
	v_perm_b32 v140, v97, v96, 0xc0c0004
	v_perm_b32 v146, v95, v94, 0xc0c0004
	v_perm_b32 v149, v84, v82, 0xc0c0004
	v_perm_b32 v156, v80, v79, 0xc0c0004
	v_perm_b32 v157, v68, v66, 0xc0c0004
	v_perm_b32 v168, v64, v63, 0xc0c0004
	v_perm_b32 v169, v52, v50, 0xc0c0004
	v_perm_b32 v171, v48, v6, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[183:190], v[160:163], v[199:202], v[183:190] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v146, 16, v140
	v_lshl_or_b32 v162, v156, 16, v149
	v_lshl_or_b32 v161, v168, 16, v157
	v_lshl_or_b32 v160, v171, 16, v169
	v_perm_b32 v140, v100, v99, 0xc0c0004
	v_perm_b32 v146, v98, v5, 0xc0c0004
	v_perm_b32 v149, v91, v90, 0xc0c0004
	v_perm_b32 v156, v86, v85, 0xc0c0004
	v_perm_b32 v157, v76, v74, 0xc0c0004
	v_perm_b32 v168, v70, v69, 0xc0c0004
	v_perm_b32 v169, v60, v58, 0xc0c0004
	v_perm_b32 v171, v54, v53, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[183:190], v[151:154], v[160:163], v[183:190] neg_lo:[1,1,0]
	v_lshl_or_b32 v154, v146, 16, v140
	v_lshl_or_b32 v153, v156, 16, v149
	v_lshl_or_b32 v152, v168, 16, v157
	v_lshl_or_b32 v151, v171, 16, v169
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[207:210], v[203:206], v[191:198] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[183:190], v[207:210], v[151:154], v[183:190] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v146, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v152, v194
	v_cvt_f32_i32_e32 v140, v195
	v_cvt_f32_i32_e32 v149, v196
	v_cvt_f32_i32_e32 v151, v197
	v_cvt_f32_i32_e32 v153, v198
	v_cvt_f32_i32_e32 v154, v183
	v_cvt_f32_i32_e32 v156, v184
	v_cvt_f32_i32_e32 v160, v185
	v_cvt_f32_i32_e32 v163, v186
	v_cvt_f32_i32_e32 v157, v187
	v_cvt_f32_i32_e32 v161, v188
	v_cvt_f32_i32_e32 v162, v189
	v_cvt_f32_i32_e32 v169, v190
	v_cvt_f32_i32_e32 v168, v191
	v_cvt_f32_i32_e32 v171, v192
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v195, 0
	v_mov_b32_e32 v197, 0
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
	v_add_nc_u32_e32 v123, s1, v2
	v_add_nc_u32_e32 v184, s1, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v200, s11 :: v_dual_add_nc_u32 v3, s1, v3
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v141, v141, v143, 0xc0c0004
	v_perm_b32 v129, v125, v129, 0xc0c0004
	v_perm_b32 v143, v124, v126, 0xc0c0004
	v_dual_mov_b32 v199, s10 :: v_dual_mov_b32 v196, s7
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[123:126], v123
	ds_load_b128 v[201:204], v184
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v198, s9 :: v_dual_add_nc_u32 v183, s1, v4
	v_perm_b32 v176, v176, v178, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[1:4], v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v172, v172, v173, 0xc0c0004
	v_perm_b32 v142, v142, v147, 0xc0c0004
	v_perm_b32 v103, v103, v104, 0xc0c0004
	v_perm_b32 v101, v101, v102, 0xc0c0004
	v_lshl_or_b32 v206, v143, 16, v129
	v_lshl_or_b32 v208, v172, 16, v176
	v_lshl_or_b32 v207, v141, 16, v142
	v_dual_mov_b32 v197, s8 :: v_dual_mov_b32 v194, s5
	v_lshl_or_b32 v205, v101, 16, v103
	v_mov_b32_e32 v195, s6
	v_mov_b32_e32 v193, s4
	v_perm_b32 v101, v166, v170, 0xc0c0004
	v_perm_b32 v102, v164, v167, 0xc0c0004
	v_perm_b32 v103, v137, v139, 0xc0c0004
	v_perm_b32 v129, v135, v138, 0xc0c0004
	v_perm_b32 v120, v120, v122, 0xc0c0004
	v_perm_b32 v119, v119, v121, 0xc0c0004
	v_perm_b32 v108, v108, v110, 0xc0c0004
	v_perm_b32 v106, v106, v109, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[185:192], v[201:204], v[205:208], v[193:200] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v102, 16, v101
	v_lshl_or_b32 v103, v129, 16, v103
	v_lshl_or_b32 v102, v119, 16, v120
	v_lshl_or_b32 v101, v106, 16, v108
	v_perm_b32 v106, v165, v179, 0xc0c0004
	v_perm_b32 v108, v174, v177, 0xc0c0004
	v_perm_b32 v109, v136, v150, 0xc0c0004
	v_perm_b32 v110, v144, v148, 0xc0c0004
	v_perm_b32 v118, v118, v131, 0xc0c0004
	v_perm_b32 v119, v127, v130, 0xc0c0004
	v_perm_b32 v107, v107, v114, 0xc0c0004
	v_perm_b32 v112, v112, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[185:192], v[123:126], v[101:104], v[185:192] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v108, 16, v106
	v_lshl_or_b32 v103, v110, 16, v109
	v_lshl_or_b32 v102, v119, 16, v118
	v_lshl_or_b32 v101, v112, 16, v107
	v_perm_b32 v110, v175, v182, 0xc0c0004
	v_perm_b32 v112, v180, v181, 0xc0c0004
	v_perm_b32 v113, v145, v159, 0xc0c0004
	v_perm_b32 v114, v155, v158, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[106:109], v183
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[185:192], v[1:4], v[101:104], v[185:192] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v112, 16, v110
	v_perm_b32 v101, v111, v117, 0xc0c0004
	v_perm_b32 v110, v115, v116, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v81, v83, v81, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v65, v67, v65, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v49, v51, v49, 0xc0c0004
	v_perm_b32 v7, v7, v8, 0xc0c0004
	v_perm_b32 v8, v43, v41, 0xc0c0004
	v_lshl_or_b32 v103, v114, 16, v113
	v_lshl_or_b32 v101, v110, 16, v101
	v_lshl_or_b32 v113, v81, 16, v87
	v_lshl_or_b32 v112, v65, 16, v71
	v_lshl_or_b32 v111, v49, 16, v55
	v_lshl_or_b32 v110, v8, 16, v7
	v_perm_b32 v7, v93, v92, 0xc0c0004
	v_perm_b32 v8, v89, v105, 0xc0c0004
	v_perm_b32 v41, v78, v77, 0xc0c0004
	v_perm_b32 v43, v75, v73, 0xc0c0004
	v_perm_b32 v49, v62, v61, 0xc0c0004
	v_perm_b32 v51, v59, v57, 0xc0c0004
	v_perm_b32 v47, v47, v46, 0xc0c0004
	v_perm_b32 v55, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[193:200], v[201:204], v[110:113], v[193:200] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v8, 16, v7
	v_lshl_or_b32 v45, v43, 16, v41
	v_lshl_or_b32 v44, v51, 16, v49
	v_lshl_or_b32 v43, v55, 16, v47
	v_perm_b32 v7, v97, v96, 0xc0c0004
	v_perm_b32 v8, v95, v94, 0xc0c0004
	v_perm_b32 v41, v84, v82, 0xc0c0004
	v_perm_b32 v47, v80, v79, 0xc0c0004
	v_perm_b32 v49, v68, v66, 0xc0c0004
	v_perm_b32 v51, v64, v63, 0xc0c0004
	v_perm_b32 v50, v52, v50, 0xc0c0004
	v_perm_b32 v6, v48, v6, 0xc0c0004
	v_perm_b32 v118, v128, v134, 0xc0c0004
	v_perm_b32 v119, v132, v133, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[193:200], v[123:126], v[43:46], v[193:200] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v8, 16, v7
	v_lshl_or_b32 v45, v47, 16, v41
	v_lshl_or_b32 v44, v51, 16, v49
	v_lshl_or_b32 v43, v6, 16, v50
	v_perm_b32 v6, v100, v99, 0xc0c0004
	v_perm_b32 v5, v98, v5, 0xc0c0004
	v_perm_b32 v7, v91, v90, 0xc0c0004
	v_perm_b32 v8, v86, v85, 0xc0c0004
	v_perm_b32 v41, v76, v74, 0xc0c0004
	v_perm_b32 v47, v70, v69, 0xc0c0004
	v_perm_b32 v48, v60, v58, 0xc0c0004
	v_perm_b32 v49, v54, v53, 0xc0c0004
	v_lshl_or_b32 v102, v119, 16, v118
	v_wmma_i32_16x16x16_iu8 v[193:200], v[1:4], v[43:46], v[193:200] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v5, 16, v6
	v_lshl_or_b32 v3, v8, 16, v7
	v_lshl_or_b32 v2, v47, 16, v41
	v_lshl_or_b32 v1, v49, 16, v48
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[185:192], v[106:109], v[101:104], v[185:192] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[193:200], v[106:109], v[1:4], v[193:200] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v183, v186
	v_cvt_f32_i32_e32 v185, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v184, v189
	v_cvt_f32_i32_e32 v186, v190
	v_cvt_f32_i32_e32 v187, v191
	v_cvt_f32_i32_e32 v189, v192
	v_cvt_f32_i32_e32 v190, v193
	v_cvt_f32_i32_e32 v191, v194
	v_cvt_f32_i32_e32 v193, v195
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v192, v197
	v_cvt_f32_i32_e32 v194, v198
	v_cvt_f32_i32_e32 v195, v199
	v_cvt_f32_i32_e32 v197, v200
.LBB0_16:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt lgkmcnt(62)
	v_lshrrev_b32_e32 v44, 1, v0
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s29, v42
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s28, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s21, s17, 0xffff
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v3, 0x70, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v61, v34, v171 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v45, v1, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s20, s16
	v_or_b32_e32 v1, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt lgkmcnt(49)
	v_dual_add_f32 v65, v39, v154 :: v_dual_add_f32 v66, v40, v156
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v8, s28, v45
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 2, v45
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 6, v45
	v_or_b32_e32 v7, 4, v45
	v_or_b32_e32 v3, 10, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v63, v27, v146 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v41, s0, v45, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v4, 8, v45
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v46, v2, s[20:23], 0 offen
	buffer_load_u16 v47, v1, s[20:23], 0 offen
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v1, s28, v6
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	.loc	1 435 22 is_stmt 0              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v43, s28, v5
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v5, s0, v5, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x2
	buffer_load_u16 v48, v8, s[20:23], 0 offen
	buffer_load_u16 v49, v41, s[20:23], 0 offen
	buffer_load_u16 v50, v6, s[20:23], 0 offen
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s0, v7, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v2, s28, v7
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v7, s0, v3, 1
	v_add_lshl_u32 v8, s0, v4, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v33, v168 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0x4
	buffer_load_u16 v51, v5, s[20:23], 0 offen
	buffer_load_u16 v52, v6, s[20:23], 0 offen
	buffer_load_u16 v53, v7, s[20:23], 0 offen
	buffer_load_u16 v54, v8, s[20:23], 0 offen
	buffer_load_u16 v55, v1, s[20:23], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v62, v28, v152 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v18, v149
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v56, v1, s[20:23], 0 offen
	buffer_load_u16 v57, v2, s[20:23], 0 offen
	.loc	1 435 22 is_stmt 0              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s28, v3
	v_or_b32_e32 v4, s28, v4
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v64, v17, v140 :: v_dual_add_f32 v81, v22, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v82, v21, v192 :: v_dual_lshlrev_b32 v1, 1, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v4
	s_clause 0x1
	buffer_load_u16 v58, v1, s[20:23], 0 offen
	buffer_load_u16 v59, v2, s[20:23], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v75, v20, v186 :: v_dual_add_f32 v76, v19, v184
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v65, s2
	v_cndmask_b32_e64 v65, v21, v82, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v21, 12, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v67, v36, v163 :: v_dual_add_f32 v68, v35, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v66, s2
	v_cndmask_b32_e64 v66, v22, v81, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v22, 14, v45
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v42, s15, v42
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v44, 0x78, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v17, v64, s2
	v_cndmask_b32_e64 v64, v19, v76, s2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v19, s28, v21
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s29, s15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v67, s2
	v_cndmask_b32_e64 v67, v20, v75, s2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v20, s28, v22
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v24, v161 :: v_dual_add_f32 v4, v11, v162
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v77, v37, v190 :: v_dual_add_f32 v78, v38, v191
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v21, s0, v21, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v17, s1, v44, v42
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v42, 1, v19
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v22, s0, v22, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v77, s2
	v_cndmask_b32_e64 v35, v35, v68, s2
	v_cndmask_b32_e64 v24, v24, v69, s2
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0x1
	buffer_load_u16 v68, v21, s[20:23], 0 offen
	buffer_load_u16 v69, v22, s[20:23], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v70, v23, v157 :: v_dual_add_f32 v71, v29, v123
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v61, s2
	v_cndmask_b32_e64 v33, v33, v60, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v12, v169 :: v_dual_add_f32 v72, v30, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v29, v71, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v73, v26, v188 :: v_dual_add_f32 v74, v25, v185
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v78, s2
	v_cndmask_b32_e64 v60, v30, v72, s2
	v_cndmask_b32_e64 v23, v23, v70, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v79, v32, v196 :: v_dual_add_f32 v80, v31, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v74, s2
	v_cndmask_b32_e64 v28, v28, v62, s2
	v_cndmask_b32_e64 v26, v26, v73, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, v32, v79, s2
	v_cndmask_b32_e64 v31, v31, v80, s2
	v_cndmask_b32_e64 v27, v27, v63, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v7, v14, v189 :: v_dual_add_f32 v6, v13, v187
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v43, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v41, v16, v197 :: v_dual_add_f32 v8, v15, v195
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.h, v5.h
	v_mov_b16_e32 v30.h, v5.h
	v_mov_b16_e32 v63.h, v5.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.h, v5.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v13, v6, s2
	v_cndmask_b32_e64 v16, v16, v41, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v2, v9, v151 :: v_dual_add_f32 v1, v10, v153
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v15, v8, s2
	v_cndmask_b32_e64 v3, v12, v3, s2
	v_cndmask_b32_e64 v4, v11, v4, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, v9, v2, s2
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_lshl_b32 s14, s15, 4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, s23
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v19, 16, v47
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v44, 1, v20
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v20, 16, v46
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v21, v42, s[20:23], 0 offen
	buffer_load_u16 v22, v44, s[20:23], 0 offen
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v42, 16, v48
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v48, 16, v51
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v51, 16, v54
	v_lshlrev_b32_e32 v46, 16, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v47, v19, v46
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v37, v37, v47 :: v_dual_mul_f32 v46, v20, v46
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v49, 16, v52
	v_lshlrev_b32_e32 v44, 16, v50
	v_lshlrev_b32_e32 v50, 16, v53
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v52, 16, v55
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v46, v61, v46 :: v_dual_lshlrev_b32 v55, 16, v56
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v56, v19, v49 :: v_dual_lshlrev_b32 v59, 16, v59
	v_mul_f32_e32 v49, v20, v49
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v53, v19, v42
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v47, 16, v57
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v61, v19, v51
	v_dual_mul_f32 v51, v20, v51 :: v_dual_mul_f32 v54, v19, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v44, v20, v44 :: v_dual_mul_f32 v39, v39, v53
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v71, v19, v52
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v57, v19, v48
	v_dual_mul_f32 v48, v20, v48 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v37
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v42, v20, v42
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v38, v38, v54 :: v_dual_mul_f32 v25, v25, v49
	v_mul_f32_e32 v51, v64, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v33, v33, v42
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v70, v19, v50
	v_mul_f32_e32 v50, v20, v50
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v42, v60, v44
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v40, v40, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v46
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v60, v19, v47
	v_mul_f32_e32 v47, v20, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v37 :: v_dual_mul_f32 v50, v67, v50
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v54, v19, v55
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v32, v32, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v53, v53
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v57, v65, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v38
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v31, v31, v56 :: v_dual_lshlrev_b32 v58, 16, v58
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v20, v52
	v_mul_f32_e32 v55, v20, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v26, v26, v48 :: v_dual_mul_f32 v49, v19, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v53, v53, v67
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v28, v28, v47 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v34, v34, v52
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v19, v59
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v27, v27, v55
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v47
	v_mul_f32_e32 v55, 0xbfb8aa3b, v26
	v_dual_mul_f32 v65, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v56, v66, v70
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v35, v35, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s5
	v_mul_f32_e32 v52, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v65
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s4
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v36, v36, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, s9
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v60, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v51
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v60
	v_exp_f32_e32 v55, v55
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v38
	v_ldexp_f32 v47, v47, v76
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v24, v24, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v60, 0, 0x42800000, s1
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v53, v53, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v49
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v32
	v_ldexp_f32 v55, v55, v75
	v_mul_f32_e32 v66, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, s7
	v_mul_f32_e32 v54, 0xbfb8aa3b, v31
	v_exp_f32_e32 v60, v60
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s7
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v66
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	v_exp_f32_e32 v61, v61
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v49, v49
	v_cndmask_b32_e64 v66, 0, 0x42800000, s8
	v_ldexp_f32 v60, v60, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v73, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s3
	v_ldexp_f32 v61, v61, v71
	v_mul_f32_e32 v64, 0xbfb8aa3b, v56
	v_ldexp_f32 v49, v49, v78
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v46
	v_exp_f32_e32 v66, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v102, -v67, v73, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v61, 1.0, v61
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v73, v102, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v52
	v_exp_f32_e32 v65, v65
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s9
	v_ldexp_f32 v66, v66, v79
	v_cndmask_b32_e64 v64, 0, 0x42800000, s6
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v52, 0, 0x42800000, s0
	v_ldexp_f32 v44, v44, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, vcc_lo, v37, v53, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v31
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v65, v65, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v115, v70, v73 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v91, null, v66, v66, v50
	v_div_scale_f32 v75, s1, v38, v61, v38
	v_div_scale_f32 v83, null, v55, v55, v26
	v_rcp_f32_e32 v105, v91
	v_div_scale_f32 v89, null, v49, v49, v57
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v54, v54, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v61, v61, v38
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_waitcnt lgkmcnt(1)
	v_rcp_f32_e32 v99, v83
	v_rcp_f32_e32 v95, v74
	v_fma_f32 v113, -v91, v105, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v103, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v105, v113, v105
	v_div_scale_f32 v79, null, v60, v60, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v52, v52, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v102, -v74, v95, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v97, v79
	v_div_scale_f32 v85, null, v47, v47, v25
	v_fmac_f32_e32 v95, v102, v95
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v64, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v109, -v83, v99, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v112, -v89, v103, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_waitcnt lgkmcnt(0)
	v_rcp_f32_e32 v100, v85
	v_fma_f32 v107, -v79, v97, 1.0
	v_fmac_f32_e32 v99, v109, v99
	v_div_scale_f32 v71, null, v44, v44, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v64, v64, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v97, v107, v97
	v_mul_f32_e32 v107, v75, v95
	v_fmac_f32_e32 v103, v112, v103
	v_div_scale_f32 v81, null, v54, v54, v31
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v76, v71
	v_div_scale_f32 v93, null, v65, v65, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v98, v81
	v_div_scale_f32 v87, null, v64, v64, v56
	v_fma_f32 v110, -v85, v100, 1.0
	v_div_scale_f32 v86, s7, v25, v47, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v101, v87
	v_fma_f32 v104, -v71, v76, 1.0
	v_rcp_f32_e32 v106, v93
	v_fmac_f32_e32 v100, v110, v100
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v108, -v81, v98, 1.0
	v_div_scale_f32 v82, s5, v31, v54, v31
	v_div_scale_f32 v72, s0, v46, v44, v46
	v_dual_fmac_f32 v98, v108, v98 :: v_dual_mul_f32 v113, v86, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v111, -v87, v101, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v76, v104, v76
	v_fma_f32 v114, -v93, v106, 1.0
	v_div_scale_f32 v94, s11, v51, v65, v51
	v_fmac_f32_e32 v101, v111, v101
	v_div_scale_f32 v77, null, v52, v52, v42
	v_div_scale_f32 v78, s3, v42, v52, v42
	v_mul_f32_e32 v111, v82, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v96, v77
	v_div_scale_f32 v90, s9, v57, v49, v57
	v_div_scale_f32 v80, s4, v32, v60, v32
	v_div_scale_f32 v84, s6, v26, v55, v26
	v_fma_f32 v122, -v85, v113, v86
	v_fma_f32 v120, -v81, v111, v82
	v_div_scale_f32 v88, s8, v56, v64, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v104, -v77, v96, 1.0
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v23, v23, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v111, v120, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v104, v96
	v_fma_f32 v104, -v67, v115, v70
	v_dual_fmac_f32 v106, v114, v106 :: v_dual_fmac_f32 v115, v104, v73
	v_fma_f32 v104, -v74, v107, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v118, v94, v106
	v_fma_f32 v67, -v67, v115, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v107, v104, v95
	v_fma_f32 v126, -v93, v118, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v73, v115
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v118, v126, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v67, v53, v37
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v39, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v109, v78, v96
	v_div_scale_f32 v92, s10, v50, v66, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v117, v92, v105
	v_dual_mul_f32 v110, v80, v97 :: v_dual_fmac_f32 v113, v122, v100
	v_fma_f32 v125, -v91, v117, v92
	v_mul_f32_e32 v102, v72, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v119, -v79, v110, v80
	v_fmac_f32_e32 v117, v125, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v108, -v71, v102, v72
	v_fmac_f32_e32 v110, v119, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v102, v108, v76
	v_fma_f32 v108, -v77, v109, v78
	v_mul_f32_e32 v116, v90, v103
	v_fma_f32 v73, -v79, v110, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v71, v102, v72
	v_fmac_f32_e32 v109, v108, v96
	v_fma_f32 v71, -v74, v107, v75
	v_fma_f32 v74, -v81, v111, v82
	v_fma_f32 v124, -v89, v116, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v77, v109, v78
	v_div_fmas_f32 v53, v71, v95, v107
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v77, -v85, v113, v86
	v_div_fmas_f32 v67, v70, v76, v102
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v38, v53, v61, v38
	v_div_fmas_f32 v70, v72, v96, v109
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v44, v67, v44, v46
	v_mul_f32_e32 v112, v84, v99
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v40, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v70, v52, v42
	v_div_fmas_f32 v39, v73, v97, v110
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v33, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v121, -v83, v112, v84
	s_mov_b32 vcc_lo, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v34, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v74, v98, v111
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v32, v39, v60, v32
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v30.l, v38.h
	v_mov_b16_e32 v29.l, v34.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v112, v121, v99
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v33.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v46, v54, v31
	v_mul_f32_e32 v114, v88, v101
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v75, -v83, v112, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v36, v32 :: v_dual_mul_f32 v31, v35, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v123, -v87, v114, v88
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v75, v99, v112
	s_mov_b32 vcc_lo, s7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v63.l, v31.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v77, v100, v113
	v_fmac_f32_e32 v114, v123, v101
	v_div_fixup_f32 v26, v40, v55, v26
	s_mov_b32 vcc_lo, s8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v31, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v39, v47, v25
	v_fma_f32 v78, -v87, v114, v88
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v28, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v28, 1, v5
	v_mov_b16_e32 v5.l, v37.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v27, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v27, 1, v29
	v_add3_u32 v29, v38, v30, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v78, v101, v114
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v5
	v_mov_b16_e32 v5.l, v26.h
	v_add3_u32 v27, v34, v27, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v33, v28, 0x7fff
	v_mov_b16_e32 v62.l, v25.h
	v_and_b32_e32 v34, 1, v5
	v_mov_b16_e32 v5.l, v32.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v116, v124, v103
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v25, v25
	v_cmp_o_f32_e64 s4, v32, v32
	v_cmp_o_f32_e64 s0, v37, v37
	v_and_b32_e32 v35, 1, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v79, -v89, v116, v90
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v38, v38
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v79, v103, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v33, 1, v63
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v20, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v31, v31, v33, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v33, v36, v49, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v37, v30, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s10
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v2, v9
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v19, v21
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v33
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v33, 16, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v62
	v_cmp_o_f32_e64 s6, v26, v26
	v_cndmask_b16 v29.l, 0x7fff, v28.h, s0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v28, v20, v59
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v20, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v25, v30, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v31.h, s5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v31, v20, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v32, v35, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v28, v45, v28 :: v_dual_mul_f32 v15, v19, v33
	v_mul_f32_e32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v18, v18, v31 :: v_dual_lshlrev_b32 v31, 16, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v93, v118, v94
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v8, v8, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v14, v20, v31
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v20, v20, v22
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v6, v6, v13
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v22, v19, v22
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v7, v7, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v26, v34, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v30.h, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v91, v117, v92
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v1, v20
	v_mul_f32_e32 v3, v3, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v30, v30, v105, v117
	s_mov_b32 vcc_lo, s11
	v_div_fmas_f32 v32, v32, v106, v118
	v_div_fixup_f32 v30, v30, v66, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v32, v65, v51
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v30
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v30, v19, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v32
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v42, v64, v56
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v16, v16, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v30.h, v5.h
	v_mov_b16_e32 v30.l, v28.h
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v34, 0xbfb8aa3b, v16 :: v_dual_and_b32 v35, 1, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v15, v24, v32 :: v_dual_and_b32 v30, 1, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v35, v18, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_mul_f32_e32 v18, 0xbfb8aa3b, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v28, v30, 0x7fff
	v_mov_b16_e32 v5.l, v15.h
	v_cndmask_b16 v24.h, 0x7fff, v35.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v23.h
	v_cndmask_b16 v24.l, 0x7fff, v30.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v16 :: v_dual_and_b32 v33, 1, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.h, v5.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v28, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v15, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v32, 1, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v23, v32, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v13, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v28, v30
	v_mul_f32_e32 v18, 0xbfb8aa3b, v7
	v_mul_f32_e32 v30, 0xbfb8aa3b, v6
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, null, v14, v14, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v13, v13, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v28, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v7
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v15, v15
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v31, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v28, v36, v28
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v30, v30, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, vcc_lo, v16, v14, v16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v15, v35, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v18, v18, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v11, -v31, v15, v35
	v_div_scale_f32 v39, null, v30, v30, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v37
	v_fmac_f32_e32 v15, v11, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v31, -v31, v15, v35
	v_fma_f32 v42, -v37, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v31, v28, v15
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s0, v7, v18, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v42, v40
	v_fma_f32 v31, -v37, v35, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v31, v40
	v_div_scale_f32 v34, null, v13, v13, v8
	v_div_scale_f32 v41, s1, v8, v13, v8
	v_fma_f32 v10, -v37, v35, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v34
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v34, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v36, v38
	v_rcp_f32_e32 v36, v39
	v_mul_f32_e32 v12, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v34, v12, v41
	v_fma_f32 v11, -v39, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v12, v43, v38
	v_fmac_f32_e32 v36, v11, v36
	v_div_scale_f32 v11, s3, v6, v30, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v34, v12, v41
	v_mul_f32_e32 v43, v11, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v12, v28, v38, v12
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v34, -v39, v43, v11
	v_div_fmas_f32 v10, v10, v40, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_fmac_f32 v43, v34, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v10, v18, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v11, -v39, v43, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v15, v14, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v11, v11, v36, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v3, v3, v7 :: v_dual_and_b32 v0, 0x540054, v0
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v11, v30, v6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v33.l, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v12, v13, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.h, v5.h
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v8.l, v2.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v6, 1, v5
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v10, 0x5040504, v0
	v_and_b32_e32 v7, 1, v8
	v_mov_b16_e32 v8.l, v4.h
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v4, v4
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v1, v2, v7, 0x7fff
	v_and_b32_e32 v7, 1, v8
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cndmask_b32_e64 v8, v29, v33, s0
	v_add3_u32 v2, v4, v7, 0x7fff
	v_mov_b32_e32 v7, 0x7632
	v_cndmask_b16 v6.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v4, 0x3276, v7, s0
	v_cndmask_b32_e64 v5, v6, v26, s0
	v_cndmask_b32_e64 v6, v26, v6, s0
	v_cndmask_b32_e64 v3, v24, v27, s0
	v_cndmask_b32_e64 v9, v1, v25, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v27, v24, s0
	v_cndmask_b32_e64 v1, v25, v1, s0
	v_cndmask_b32_e64 v7, v33, v29, s0
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v1, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	v_perm_b32 v0, v4, v3, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v2
	v_perm_b32 v2, v6, v5, v10
	v_perm_b32 v1, v4, v3, v11
	v_perm_b32 v3, v6, v5, v11
	v_perm_b32 v4, v8, v7, v10
	v_perm_b32 v5, v8, v7, v11
	v_lshlrev_b32_e32 v8, 1, v17
	v_perm_b32 v6, v12, v9, v10
	v_perm_b32 v7, v12, v9, v11
	v_add_lshl_u32 v9, v17, s14, 1
	s_mov_b32 s14, s22
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 8
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 8
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21532
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 8
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 8
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 1
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
