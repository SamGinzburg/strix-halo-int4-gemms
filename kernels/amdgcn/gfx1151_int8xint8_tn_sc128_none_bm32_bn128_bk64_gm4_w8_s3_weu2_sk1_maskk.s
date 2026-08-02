	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s30, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v6, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v13, 6, v0
	v_or_b32_e32 v38, 0x3f0, v0
	v_or_b32_e32 v39, 0x7f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v4, 62, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v12, 0x70, v10
	v_and_b32_e32 v40, 8, v0
	v_and_b32_e32 v41, 32, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v37, 3, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v60, 0, v37
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
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s6, s6, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s16, s6
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v6
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[7:8], null, s27, v4, v[1:2]
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s17
	s_mul_hi_u32 s4, s17, s10
	s_xor_b32 s10, s2, s6
	s_add_i32 s17, s17, s4
	s_ashr_i32 s18, s10, 31
	s_mul_hi_u32 s4, s5, s17
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s17, s4, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s5, s5, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s17, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s31, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s19, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s30, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s17, s19, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s31, v4
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s20, s17, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s27, s31
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s17, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s33, s16, v7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s4
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s27, v7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s31, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v5, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v2, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s26, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 24, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s31, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s35, s27, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s17, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s35, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, v2, v5, s34
	s_mul_i32 s7, s26, s31
	s_lshl_b32 s44, s26, 6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s30, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s27, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s7, v2
	v_add3_u32 v2, s7, s44, v2
	v_lshlrev_b32_e32 v42, 6, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_mov_b32 s16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x1
	buffer_load_b128 v[28:31], v7, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v9, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v8, v0, 0, 1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[56:57], v7, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s17, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v14, 0x420, v8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v11, 16, v9
	v_lshlrev_b32_e32 v8, 3, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v7
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	buffer_load_b64 v[58:59], v2, s[8:11], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_or_b32 v12, v2, 1, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v14, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v16, 2, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v43, v13, 10, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v17, 4, v12
	v_or_b32_e32 v18, 6, v12
	v_or_b32_e32 v19, 8, v12
	v_or_b32_e32 v13, 10, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v44, 0x90, v43
	v_xor_b32_e32 v45, 0x120, v43
	v_xor_b32_e32 v46, 0x1b0, v43
	v_xor_b32_e32 v47, 0x210, v43
	v_xor_b32_e32 v48, 0x330, v43
	v_xor_b32_e32 v49, 0x3a0, v43
	v_add_nc_u32_e32 v61, 0, v43
	v_add_nc_u32_e32 v62, 0, v44
	v_add_nc_u32_e32 v63, 0, v45
	v_add_nc_u32_e32 v64, 0, v46
	v_add_nc_u32_e32 v65, 0, v47
	v_add_nc_u32_e32 v66, 0, v48
	v_add_nc_u32_e32 v67, 0, v49
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 12, v12
	v_or_b32_e32 v15, 14, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v36, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v51, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v52, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_lshrrev_b32_e32 v53, 8, v36
	v_lshrrev_b32_e32 v54, 24, v36
	v_perm_b32 v50, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_and_b16 v2.l, 0xff, v36.l
	v_and_b16 v2.h, 0xff, v36.h
	v_and_b16 v20.l, 0xff, v24.l
	v_lshrrev_b32_e32 v36, 8, v24
	v_lshrrev_b32_e32 v55, 24, v24
	v_and_b16 v20.h, 0xff, v24.h
	v_and_b16 v24.l, 0xff, v26.l
	v_lshrrev_b32_e32 v74, 8, v26
	v_lshrrev_b32_e32 v75, 24, v26
	v_and_b16 v24.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v27.l
	v_lshrrev_b32_e32 v78, 8, v27
	v_lshrrev_b32_e32 v79, 24, v27
	v_and_b16 v26.h, 0xff, v27.h
	v_lshlrev_b16 v27.l, 8, v53.l
	v_lshlrev_b16 v27.h, 8, v54.l
	v_lshrrev_b32_e32 v68, 8, v50
	v_lshrrev_b32_e32 v69, 24, v50
	v_lshrrev_b32_e32 v70, 8, v25
	v_lshrrev_b32_e32 v71, 24, v25
	v_lshrrev_b32_e32 v72, 8, v51
	v_lshrrev_b32_e32 v73, 24, v51
	v_lshrrev_b32_e32 v76, 8, v52
	v_lshrrev_b32_e32 v77, 24, v52
	v_or_b16 v2.l, v2.l, v27.l
	v_or_b16 v2.h, v2.h, v27.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v27, v32, v28, 0x5010400
	v_lshlrev_b16 v36.l, 8, v36.l
	v_lshlrev_b16 v36.h, 8, v55.l
	v_and_b16 v21.l, 0xff, v50.l
	v_and_b16 v21.h, 0xff, v50.h
	v_lshlrev_b16 v50.l, 8, v68.l
	v_lshlrev_b16 v50.h, 8, v69.l
	v_perm_b32 v28, v32, v28, 0x7030602
	v_and_b16 v22.l, 0xff, v25.l
	v_and_b16 v22.h, 0xff, v25.h
	v_and_b16 v23.l, 0xff, v51.l
	v_and_b16 v23.h, 0xff, v51.h
	v_and_b16 v25.l, 0xff, v52.l
	v_and_b16 v25.h, 0xff, v52.h
	v_lshlrev_b16 v51.l, 8, v70.l
	v_lshlrev_b16 v51.h, 8, v71.l
	v_lshlrev_b16 v52.l, 8, v72.l
	v_lshlrev_b16 v52.h, 8, v73.l
	v_lshlrev_b16 v54.l, 8, v76.l
	v_lshlrev_b16 v54.h, 8, v77.l
	v_lshlrev_b16 v53.l, 8, v74.l
	v_lshlrev_b16 v53.h, 8, v75.l
	v_lshlrev_b16 v55.l, 8, v78.l
	v_lshlrev_b16 v55.h, 8, v79.l
	v_perm_b32 v32, v33, v29, 0x5010400
	v_perm_b32 v29, v33, v29, 0x7030602
	v_perm_b32 v33, v34, v30, 0x5010400
	v_perm_b32 v30, v34, v30, 0x7030602
	v_perm_b32 v34, v35, v31, 0x5010400
	v_perm_b32 v31, v35, v31, 0x7030602
	v_lshrrev_b32_e32 v35, 8, v27
	v_or_b16 v20.l, v20.l, v36.l
	v_or_b16 v20.h, v20.h, v36.h
	v_lshrrev_b32_e32 v36, 24, v27
	v_or_b16 v21.l, v21.l, v50.l
	v_or_b16 v21.h, v21.h, v50.h
	v_lshrrev_b32_e32 v50, 8, v28
	v_or_b16 v22.l, v22.l, v51.l
	v_or_b16 v22.h, v22.h, v51.h
	v_or_b16 v23.l, v23.l, v52.l
	v_or_b16 v23.h, v23.h, v52.h
	v_or_b16 v25.l, v25.l, v54.l
	v_or_b16 v25.h, v25.h, v54.h
	v_lshrrev_b32_e32 v51, 24, v28
	v_or_b16 v24.l, v24.l, v53.l
	v_or_b16 v24.h, v24.h, v53.h
	v_or_b16 v26.l, v26.l, v55.l
	v_or_b16 v26.h, v26.h, v55.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v60, v[56:57] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v2
	ds_store_b16_d16_hi v61, v2 offset:64
	ds_store_b16 v62, v20
	ds_store_b16_d16_hi v62, v20 offset:64
	ds_store_b16 v63, v21
	ds_store_b16_d16_hi v63, v21 offset:64
	ds_store_b16 v64, v22
	ds_store_b16_d16_hi v64, v22 offset:64
	ds_store_b16 v65, v23
	ds_store_b16_d16_hi v65, v23 offset:64
	ds_store_b16 v61, v24 offset:640
	ds_store_b16_d16_hi v61, v24 offset:704
	ds_store_b16 v66, v25
	ds_store_b16_d16_hi v66, v25 offset:64
	ds_store_b16 v67, v26
	ds_store_b16_d16_hi v67, v26 offset:64
	v_and_b16 v21.l, 0xff, v32.l
	v_lshrrev_b32_e32 v52, 8, v32
	v_lshrrev_b32_e32 v53, 24, v32
	v_and_b16 v21.h, 0xff, v32.h
	v_lshrrev_b32_e32 v32, 8, v29
	v_lshrrev_b32_e32 v54, 24, v29
	v_and_b16 v23.l, 0xff, v33.l
	v_lshrrev_b32_e32 v55, 8, v33
	v_lshrrev_b32_e32 v56, 24, v33
	v_and_b16 v23.h, 0xff, v33.h
	v_lshrrev_b32_e32 v33, 8, v30
	v_lshrrev_b32_e32 v57, 24, v30
	v_and_b16 v25.l, 0xff, v34.l
	v_lshrrev_b32_e32 v68, 8, v34
	v_lshrrev_b32_e32 v69, 24, v34
	v_and_b16 v25.h, 0xff, v34.h
	v_lshrrev_b32_e32 v34, 8, v31
	v_lshrrev_b32_e32 v70, 24, v31
	v_and_b16 v2.l, 0xff, v27.l
	v_lshlrev_b16 v27.l, 8, v35.l
	v_and_b16 v2.h, 0xff, v27.h
	v_lshlrev_b16 v27.h, 8, v36.l
	v_and_b16 v20.l, 0xff, v28.l
	v_lshlrev_b16 v28.l, 8, v50.l
	v_and_b16 v20.h, 0xff, v28.h
	v_lshlrev_b16 v28.h, 8, v51.l
	v_and_b16 v22.l, 0xff, v29.l
	v_and_b16 v22.h, 0xff, v29.h
	v_and_b16 v24.l, 0xff, v30.l
	v_and_b16 v24.h, 0xff, v30.h
	v_and_b16 v26.l, 0xff, v31.l
	v_and_b16 v26.h, 0xff, v31.h
	v_lshlrev_b16 v29.l, 8, v52.l
	v_lshlrev_b16 v29.h, 8, v53.l
	v_lshlrev_b16 v30.l, 8, v32.l
	v_lshlrev_b16 v30.h, 8, v54.l
	v_lshlrev_b16 v31.l, 8, v55.l
	v_lshlrev_b16 v31.h, 8, v56.l
	v_lshlrev_b16 v32.l, 8, v33.l
	v_lshlrev_b16 v32.h, 8, v57.l
	v_lshlrev_b16 v33.l, 8, v68.l
	v_lshlrev_b16 v33.h, 8, v69.l
	v_lshlrev_b16 v34.l, 8, v34.l
	v_lshlrev_b16 v34.h, 8, v70.l
	v_or_b16 v2.l, v2.l, v27.l
	v_or_b16 v2.h, v2.h, v27.h
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v21.l, v21.l, v29.l
	v_or_b16 v21.h, v21.h, v29.h
	v_or_b16 v22.l, v22.l, v30.l
	v_or_b16 v22.h, v22.h, v30.h
	v_or_b16 v23.l, v23.l, v31.l
	v_or_b16 v23.h, v23.h, v31.h
	v_or_b16 v24.l, v24.l, v32.l
	v_or_b16 v24.h, v24.h, v32.h
	v_or_b16 v25.l, v25.l, v33.l
	v_or_b16 v25.h, v25.h, v33.h
	v_or_b16 v26.l, v26.l, v34.l
	v_or_b16 v26.h, v26.h, v34.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v60, v[58:59] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v2 offset:8192
	ds_store_b16_d16_hi v61, v2 offset:8256
	ds_store_b16 v62, v20 offset:8192
	ds_store_b16_d16_hi v62, v20 offset:8256
	ds_store_b16 v63, v21 offset:8192
	ds_store_b16_d16_hi v63, v21 offset:8256
	ds_store_b16 v64, v22 offset:8192
	ds_store_b16_d16_hi v64, v22 offset:8256
	ds_store_b16 v65, v23 offset:8192
	ds_store_b16_d16_hi v65, v23 offset:8256
	ds_store_b16 v61, v24 offset:8832
	ds_store_b16_d16_hi v61, v24 offset:8896
	ds_store_b16 v66, v25 offset:8192
	ds_store_b16_d16_hi v66, v25 offset:8256
	ds_store_b16 v67, v26 offset:8192
	ds_store_b16_d16_hi v67, v26 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v51, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v52, 6, v6
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v53, 32, v0
	v_and_or_b32 v50, 0x1800, v7, v8
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr50
.LBB0_3:                                ; %Flow89
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v20, s34, v9
	v_or_b32_e32 v11, s34, v11
	s_ashr_i32 s0, s6, 7
	v_or_b32_e32 v34, s33, v12
	v_or_b32_e32 v33, s33, v16
	v_mul_lo_u32 v35, v20, s0
	v_mul_lo_u32 v36, v11, s0
	v_or_b32_e32 v32, s33, v17
	v_or_b32_e32 v30, s33, v18
	v_or_b32_e32 v28, s33, v19
	v_or_b32_e32 v31, s33, v13
	v_or_b32_e32 v29, s33, v14
	v_or_b32_e32 v27, s33, v15
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 5, 1
	v_bfe_i32 v6, v0, 3, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s14, s19, 7
	s_lshl_b32 s15, s18, 7
	s_mov_b32 s17, s16
	v_and_b32_e32 v2, 0x420, v2
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v11, s31, v4
	v_and_or_b32 v50, 0x1800, v7, v8
	v_and_or_b32 v2, 0x210, v6, v2
	v_add3_u32 v8, s31, v3, 0x80
	v_or_b32_e32 v58, 0x80, v4
	v_add_nc_u32_e32 v7, 0x81, v11
	v_add_nc_u32_e32 v6, 0x80, v11
	v_xor_b32_e32 v2, v2, v50
	v_or_b32_e32 v59, 0x80, v3
	v_mov_b32_e32 v11, 0
	v_mul_lo_u32 v7, s27, v7
	v_mul_lo_u32 v6, s27, v6
	v_or_b32_e32 v51, v2, v42
	v_mul_lo_u32 v2, s26, v8
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_add3_u32 v7, v7, s14, v1
	v_add3_u32 v1, v6, s14, v1
	v_xor_b32_e32 v52, 16, v51
	v_add3_u32 v57, v2, s34, v5
	v_xor_b32_e32 v53, 32, v51
	v_subrev_nc_u32_e32 v55, s15, v7
	v_subrev_nc_u32_e32 v56, s15, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_xor_b32_e32 v54, 48, v51
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v12, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s1, -2
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s26, 0, 0x4800
	s_add_i32 s45, 0, 0x2000
	s_mov_b32 s15, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s31
	s_mov_b32 s19, s1
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v66, s17, v59
	s_mov_b32 s18, s16
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v67, s17, v58
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v60, s19, v9
	v_add_nc_u32_e32 v61, s19, v38
	v_add_nc_u32_e32 v62, s19, v39
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s31, 31
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, s18, v51
	v_add_nc_u32_e32 v64, s18, v52
	v_add_nc_u32_e32 v65, s18, v53
	v_add_nc_u32_e32 v68, s18, v54
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s19, 25
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v66, 0x80000000, v57, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s31, s18
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v67
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s18, 7
	s_mov_b32 s16, s45
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v69, v35, s18, 1
	v_add_lshl_u32 v70, v36, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v67, 0x80000000, v56, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[128:129], v66, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v66, 0x80000000, v55, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v173, v34, s18, 1
	v_add_lshl_u32 v174, v33, s18, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v175, v32, s18, 1
	v_add_lshl_u32 v176, v30, s18, 1
	v_add_lshl_u32 v177, v28, s18, 1
	v_add_lshl_u32 v178, v31, s18, 1
	v_add_lshl_u32 v179, v29, s18, 1
	v_add_lshl_u32 v180, v27, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[76:79], v67, s[36:39], 0 offen
	buffer_load_b128 v[96:99], v66, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v66, 0x80000000, v173 :: v_dual_cndmask_b32 v173, 0x80000000, v174
	v_dual_cndmask_b32 v174, 0x80000000, v175 :: v_dual_cndmask_b32 v175, 0x80000000, v176
	v_dual_cndmask_b32 v176, 0x80000000, v177 :: v_dual_cndmask_b32 v177, 0x80000000, v178
	v_dual_cndmask_b32 v178, 0x80000000, v179 :: v_dual_cndmask_b32 v179, 0x80000000, v180
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v180, v69, s[4:7], 0 offen
	buffer_load_u16 v181, v70, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v173, v173, s[40:43], 0 offen
	buffer_load_u16 v182, v66, s[40:43], 0 offen
	buffer_load_u16 v175, v175, s[40:43], 0 offen
	buffer_load_u16 v174, v174, s[40:43], 0 offen
	buffer_load_u16 v177, v177, s[40:43], 0 offen
	buffer_load_u16 v176, v176, s[40:43], 0 offen
	buffer_load_u16 v179, v179, s[40:43], 0 offen
	buffer_load_u16 v178, v178, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[80:83], v63
	ds_load_b128 v[84:87], v64
	ds_load_b128 v[88:91], v65
	ds_load_b128 v[92:95], v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v63, v60 offset:96
	ds_load_u8 v64, v60 offset:64
	ds_load_u8 v65, v60
	ds_load_u8 v67, v60 offset:16
	ds_load_u8 v68, v60 offset:32
	ds_load_u8 v71, v60 offset:112
	ds_load_u8 v72, v60 offset:80
	ds_load_u8 v73, v60 offset:48
	ds_load_u8 v74, v60 offset:1280
	ds_load_u8 v75, v60 offset:416
	ds_load_u8 v100, v60 offset:384
	ds_load_u8 v101, v60 offset:480
	ds_load_u8 v102, v60 offset:448
	ds_load_u8 v103, v60 offset:496
	ds_load_u8 v104, v60 offset:464
	ds_load_u8 v105, v60 offset:432
	ds_load_u8 v106, v60 offset:400
	ds_load_u8 v107, v60 offset:288
	ds_load_u8 v108, v60 offset:256
	ds_load_u8 v109, v60 offset:352
	ds_load_u8 v110, v60 offset:320
	ds_load_u8 v111, v60 offset:368
	ds_load_u8 v112, v60 offset:336
	ds_load_u8 v113, v60 offset:304
	ds_load_u8 v114, v60 offset:272
	ds_load_u8 v115, v60 offset:160
	ds_load_u8 v116, v60 offset:128
	ds_load_u8 v117, v60 offset:224
	ds_load_u8 v118, v60 offset:192
	ds_load_u8 v119, v60 offset:240
	ds_load_u8 v120, v60 offset:208
	ds_load_u8 v121, v60 offset:176
	ds_load_u8 v122, v60 offset:144
	ds_load_u8 v123, v60 offset:928
	ds_load_u8 v124, v60 offset:896
	ds_load_u8 v125, v60 offset:992
	ds_load_u8 v126, v60 offset:960
	ds_load_u8 v127, v60 offset:1024
	ds_load_u8 v130, v60 offset:976
	ds_load_u8 v131, v60 offset:944
	ds_load_u8 v132, v60 offset:912
	ds_load_u8 v133, v60 offset:800
	ds_load_u8 v134, v60 offset:768
	ds_load_u8 v135, v60 offset:864
	ds_load_u8 v136, v60 offset:832
	ds_load_u8 v137, v60 offset:880
	ds_load_u8 v138, v60 offset:848
	ds_load_u8 v139, v60 offset:816
	ds_load_u8 v140, v60 offset:784
	ds_load_u8 v141, v60 offset:672
	ds_load_u8 v142, v60 offset:640
	ds_load_u8 v143, v60 offset:736
	ds_load_u8 v144, v60 offset:704
	ds_load_u8 v145, v60 offset:752
	ds_load_u8 v146, v60 offset:720
	ds_load_u8 v147, v60 offset:688
	ds_load_u8 v148, v60 offset:656
	ds_load_u8 v149, v60 offset:544
	ds_load_u8 v150, v60 offset:512
	ds_load_u8 v151, v60 offset:608
	ds_load_u8 v152, v60 offset:576
	ds_load_u8 v153, v60 offset:624
	ds_load_u8 v154, v60 offset:592
	ds_load_u8 v155, v60 offset:560
	ds_load_u8 v156, v60 offset:528
	ds_load_u8 v157, v60 offset:1440
	ds_load_u8 v158, v60 offset:1504
	ds_load_u8 v159, v60 offset:1472
	ds_load_u8 v160, v60 offset:1536
	ds_load_u8 v161, v60 offset:1520
	ds_load_u8 v162, v60 offset:1488
	ds_load_u8 v163, v60 offset:1456
	ds_load_u8 v164, v60 offset:1424
	ds_load_u8 v165, v60 offset:1408
	ds_load_u8 v166, v60 offset:1312
	ds_load_u8 v167, v60 offset:1376
	ds_load_u8 v168, v60 offset:1344
	ds_load_u8 v169, v60 offset:1392
	ds_load_u8 v170, v60 offset:1360
	ds_load_u8 v171, v60 offset:1328
	ds_load_u8 v172, v60 offset:1296
	ds_load_u8 v66, v60 offset:1184
	ds_load_u8 v69, v60 offset:1248
	ds_load_u8 v70, v60 offset:1216
	ds_load_u8 v183, v60 offset:1264
	ds_load_u8 v184, v60 offset:1232
	ds_load_u8 v185, v60 offset:1200
	ds_load_u8 v186, v60 offset:1168
	ds_load_u8 v187, v60 offset:1152
	ds_load_u8 v188, v60 offset:1056
	ds_load_u8 v189, v60 offset:1120
	ds_load_u8 v190, v60 offset:1088
	ds_load_u8 v191, v60 offset:1136
	ds_load_u8 v192, v60 offset:1104
	ds_load_u8 v193, v60 offset:1072
	ds_load_u8 v194, v60 offset:1040
	ds_load_u8 v195, v60 offset:1952
	ds_load_u8 v196, v60 offset:2016
	ds_load_u8 v197, v60 offset:1984
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v198, v60 offset:2000
	ds_load_u8 v199, v60 offset:1968
	ds_load_u8 v200, v60 offset:1936
	ds_load_u8 v201, v60 offset:1920
	ds_load_u8 v202, v60 offset:1824
	ds_load_u8 v203, v60 offset:1888
	ds_load_u8 v204, v60 offset:1856
	ds_load_u8 v205, v60 offset:1904
	ds_load_u8 v206, v60 offset:1872
	ds_load_u8 v207, v60 offset:1840
	ds_load_u8 v208, v60 offset:1808
	ds_load_u8 v209, v60 offset:1792
	ds_load_u8 v210, v60 offset:1696
	ds_load_u8 v211, v60 offset:1760
	ds_load_u8 v212, v60 offset:1728
	ds_load_u8 v213, v60 offset:1776
	ds_load_u8 v214, v60 offset:1744
	ds_load_u8 v215, v60 offset:1712
	ds_load_u8 v216, v60 offset:1680
	ds_load_u8 v217, v60 offset:1664
	ds_load_u8 v218, v60 offset:1568
	ds_load_u8 v219, v60 offset:1632
	ds_load_u8 v220, v60 offset:1600
	ds_load_u8 v221, v60 offset:1648
	ds_load_u8 v222, v60 offset:1616
	ds_load_u8 v223, v60 offset:1584
	ds_load_u8 v60, v60 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v75, v100, v75, 0xc0c0004
	v_perm_b32 v100, v102, v101, 0xc0c0004
	v_perm_b32 v101, v108, v107, 0xc0c0004
	v_perm_b32 v102, v110, v109, 0xc0c0004
	v_perm_b32 v107, v116, v115, 0xc0c0004
	v_perm_b32 v108, v118, v117, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v64, v65, v68, 0xc0c0004
	v_perm_b32 v65, v124, v123, 0xc0c0004
	v_perm_b32 v110, v134, v133, 0xc0c0004
	v_perm_b32 v115, v136, v135, 0xc0c0004
	v_perm_b32 v123, v152, v151, 0xc0c0004
	v_perm_b32 v151, v106, v105, 0xc0c0004
	v_perm_b32 v152, v104, v103, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v112, v112, v111, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v72, v72, v71, 0xc0c0004
	v_perm_b32 v67, v67, v73, 0xc0c0004
	v_perm_b32 v109, v126, v125, 0xc0c0004
	v_perm_b32 v116, v142, v141, 0xc0c0004
	v_perm_b32 v117, v144, v143, 0xc0c0004
	v_perm_b32 v118, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v124, v165, v157, 0xc0c0004
	v_perm_b32 v125, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v74, v74, v166, 0xc0c0004
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v126, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v66, v187, v66, 0xc0c0004
	v_perm_b32 v133, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v127, v127, v188, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v134, v190, v189, 0xc0c0004
	v_perm_b32 v73, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v61, v130, v61, 0xc0c0004
	v_perm_b32 v120, v140, v139, 0xc0c0004
	v_perm_b32 v122, v138, v137, 0xc0c0004
	v_perm_b32 v130, v148, v147, 0xc0c0004
	v_perm_b32 v131, v146, v145, 0xc0c0004
	v_perm_b32 v132, v156, v155, 0xc0c0004
	v_perm_b32 v137, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v154, v200, v199, 0xc0c0004
	v_perm_b32 v62, v198, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v60, v223, 0xc0c0004
	v_perm_b32 v159, v222, v221, 0xc0c0004
	v_lshl_or_b32 v71, v100, 16, v75
	v_lshl_or_b32 v70, v102, 16, v101
	v_lshl_or_b32 v69, v108, 16, v107
	v_lshl_or_b32 v68, v63, 16, v64
	v_lshl_or_b32 v102, v115, 16, v110
	v_lshl_or_b32 v115, v152, 16, v151
	v_lshl_or_b32 v114, v112, 16, v113
	v_lshl_or_b32 v113, v119, 16, v121
	v_lshl_or_b32 v112, v72, 16, v67
	v_perm_b32 v138, v164, v163, 0xc0c0004
	v_perm_b32 v139, v162, v161, 0xc0c0004
	v_perm_b32 v140, v172, v171, 0xc0c0004
	v_perm_b32 v145, v170, v169, 0xc0c0004
	v_perm_b32 v146, v186, v185, 0xc0c0004
	v_perm_b32 v147, v184, v183, 0xc0c0004
	v_perm_b32 v148, v194, v193, 0xc0c0004
	v_perm_b32 v153, v192, v191, 0xc0c0004
	v_lshl_or_b32 v103, v109, 16, v65
	v_lshl_or_b32 v101, v117, 16, v116
	v_lshl_or_b32 v100, v123, 16, v118
	v_lshl_or_b32 v107, v125, 16, v124
	v_lshl_or_b32 v106, v126, 16, v74
	v_lshl_or_b32 v105, v133, 16, v66
	v_lshl_or_b32 v104, v134, 16, v127
	v_lshl_or_b32 v119, v61, 16, v73
	v_lshl_or_b32 v118, v122, 16, v120
	v_lshl_or_b32 v117, v131, 16, v130
	v_lshl_or_b32 v116, v137, 16, v132
	v_lshl_or_b32 v127, v62, 16, v154
	v_lshl_or_b32 v124, v159, 16, v60
	v_wmma_i32_16x16x16_iu8 v[60:67], v[80:83], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[80:83], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v135, v201, v195, 0xc0c0004
	v_perm_b32 v136, v197, v196, 0xc0c0004
	v_perm_b32 v141, v209, v202, 0xc0c0004
	v_perm_b32 v142, v204, v203, 0xc0c0004
	v_perm_b32 v143, v217, v210, 0xc0c0004
	v_perm_b32 v144, v212, v211, 0xc0c0004
	v_perm_b32 v149, v160, v218, 0xc0c0004
	v_perm_b32 v150, v220, v219, 0xc0c0004
	v_perm_b32 v155, v208, v207, 0xc0c0004
	v_perm_b32 v156, v206, v205, 0xc0c0004
	v_perm_b32 v157, v216, v215, 0xc0c0004
	v_perm_b32 v158, v214, v213, 0xc0c0004
	v_lshl_or_b32 v123, v139, 16, v138
	v_lshl_or_b32 v122, v145, 16, v140
	v_lshl_or_b32 v121, v147, 16, v146
	v_lshl_or_b32 v120, v153, 16, v148
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[100:103], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[84:87], v[116:119], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v136, 16, v135
	v_lshl_or_b32 v110, v142, 16, v141
	v_lshl_or_b32 v109, v144, 16, v143
	v_lshl_or_b32 v108, v150, 16, v149
	v_lshl_or_b32 v126, v156, 16, v155
	v_lshl_or_b32 v125, v158, 16, v157
	v_wmma_i32_16x16x16_iu8 v[60:67], v[88:91], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[88:91], v[120:123], v[68:75] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	s_mov_b32 s1, s26
	s_cmp_lt_i32 s15, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[60:67], v[92:95], v[108:111], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[124:127], v[68:75] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s15, s15, 0
	s_add_i32 s14, s14, -1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s15, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v85, v65
	v_cvt_f32_i32_e32 v86, v66
	v_cvt_f32_i32_e32 v87, v67
	v_cvt_f32_i32_e32 v88, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s19, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v81, v61
	v_cvt_f32_i32_e32 v82, v62
	v_cvt_f32_i32_e32 v89, v68
	v_cvt_f32_i32_e32 v92, v73
	v_cvt_f32_i32_e32 v83, v63
	v_cvt_f32_i32_e32 v84, v64
	v_cvt_f32_i32_e32 v91, v70
	v_cvt_f32_i32_e32 v93, v72
	v_cvt_f32_i32_e32 v90, v71
	v_cvt_f32_i32_e32 v94, v75
	v_cvt_f32_i32_e32 v95, v74
	v_cvt_f32_i32_e32 v80, v60
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s15, 11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s31, s31, 64
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s18, s18, 0
	s_waitcnt lgkmcnt(0)
	s_add_i32 s26, s18, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s14, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v69, 16, v180
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v65, v98, v78, 0x5010400
	v_perm_b32 v66, v98, v78, 0x7030602
	v_perm_b32 v61, v96, v76, 0x5010400
	v_perm_b32 v62, v96, v76, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v73, 16, v175
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v63, v97, v77, 0x5010400
	v_perm_b32 v64, v97, v77, 0x7030602
	v_perm_b32 v67, v99, v79, 0x5010400
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v78, 16, v178
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v116, v73, v69 :: v_dual_add_nc_u32 v225, s45, v43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v70, 16, v181
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v68, v99, v79, 0x7030602
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v78, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v25, v116, v83 :: v_dual_lshlrev_b32 v76, 16, v176
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v79, 8, v61
	v_lshrrev_b32_e32 v96, 24, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v15, v122, v86
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v119, v76, v69 :: v_dual_lshlrev_b32 v72, 16, v182
	v_dual_mul_f32 v76, v70, v76 :: v_dual_add_nc_u32 v57, s44, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v77, 16, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v19, v119, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v114, v70, v72
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v97, 8, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v16, v76, v93
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v123, v77, v69 :: v_dual_add_nc_u32 v226, s45, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v24, v114, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v117, v70, v73
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v75, 16, v177
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v98, 24, v62
	v_lshrrev_b32_e32 v99, 8, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v77, v70, v77 :: v_dual_add_nc_u32 v228, s45, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v18, v117, v90 :: v_dual_add_nc_u32 v55, s35, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v75, v69
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v74, 16, v174
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v121, v70, v75 :: v_dual_add_nc_u32 v56, s35, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v60.l, 0xff, v61.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v21, v120, v85 :: v_dual_mul_f32 v118, v70, v74
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v71, 16, v173
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v61.l, 0xff, v62.l
	v_and_b16 v62.l, 0xff, v63.l
	v_lshrrev_b32_e32 v100, 24, v63
	v_and_b16 v63.l, 0xff, v64.l
	v_lshrrev_b32_e32 v101, 8, v64
	v_lshrrev_b32_e32 v102, 24, v64
	v_and_b16 v64.l, 0xff, v65.l
	v_lshrrev_b32_e32 v103, 8, v65
	v_lshrrev_b32_e32 v104, 24, v65
	v_and_b16 v65.l, 0xff, v66.l
	v_lshrrev_b32_e32 v105, 8, v66
	v_lshrrev_b32_e32 v106, 24, v66
	v_and_b16 v66.l, 0xff, v67.l
	v_lshrrev_b32_e32 v107, 8, v67
	v_lshrrev_b32_e32 v108, 24, v67
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v109, 8, v68
	v_lshrrev_b32_e32 v110, 24, v68
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v111, v72, v69
	v_mul_f32_e32 v115, v74, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v68.l, 8, v79.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v17, v123, v87
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v78, v70, v78 :: v_dual_add_nc_u32 v227, s45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v20, v118, v91
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v112, v71, v69 :: v_dual_mul_f32 v113, v70, v71
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v60.h, 0xff, v61.h
	v_and_b16 v61.h, 0xff, v62.h
	v_and_b16 v62.h, 0xff, v63.h
	v_and_b16 v63.h, 0xff, v64.h
	v_and_b16 v64.h, 0xff, v65.h
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	v_lshlrev_b16 v68.h, 8, v96.l
	v_lshlrev_b16 v69.l, 8, v97.l
	v_lshlrev_b16 v69.h, 8, v98.l
	v_lshlrev_b16 v70.l, 8, v99.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v11, v111, v80 :: v_dual_add_nc_u32 v224, s18, v37
	v_dual_fmac_f32 v26, v112, v81 :: v_dual_add_nc_u32 v229, s45, v47
	v_dual_fmac_f32 v23, v115, v82 :: v_dual_add_nc_u32 v230, s45, v48
	v_dual_fmac_f32 v22, v113, v88 :: v_dual_add_nc_u32 v231, s45, v49
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v70.h, 8, v100.l
	v_lshlrev_b16 v71.l, 8, v101.l
	v_lshlrev_b16 v71.h, 8, v102.l
	v_lshlrev_b16 v72.l, 8, v103.l
	v_lshlrev_b16 v72.h, 8, v104.l
	v_lshlrev_b16 v73.l, 8, v105.l
	v_lshlrev_b16 v73.h, 8, v106.l
	v_lshlrev_b16 v74.l, 8, v107.l
	v_lshlrev_b16 v74.h, 8, v108.l
	v_lshlrev_b16 v75.l, 8, v109.l
	v_lshlrev_b16 v75.h, 8, v110.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v14, v121, v92 :: v_dual_fmac_f32 v13, v78, v95
	v_fmac_f32_e32 v12, v77, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v60.l, v60.l, v68.l
	v_or_b16 v60.h, v60.h, v68.h
	v_or_b16 v61.l, v61.l, v69.l
	v_or_b16 v61.h, v61.h, v69.h
	v_or_b16 v62.l, v62.l, v70.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v224, v[128:129] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v62.h, v62.h, v70.h
	v_or_b16 v63.l, v63.l, v71.l
	v_or_b16 v63.h, v63.h, v71.h
	v_or_b16 v64.l, v64.l, v72.l
	v_or_b16 v64.h, v64.h, v72.h
	v_or_b16 v65.l, v65.l, v73.l
	v_or_b16 v65.h, v65.h, v73.h
	v_or_b16 v66.l, v66.l, v74.l
	v_or_b16 v66.h, v66.h, v74.h
	v_or_b16 v67.l, v67.l, v75.l
	v_or_b16 v67.h, v67.h, v75.h
	ds_store_b16 v225, v60
	ds_store_b16_d16_hi v225, v60 offset:64
	ds_store_b16 v226, v61
	ds_store_b16_d16_hi v226, v61 offset:64
	ds_store_b16 v227, v62
	ds_store_b16_d16_hi v227, v62 offset:64
	ds_store_b16 v228, v63
	ds_store_b16_d16_hi v228, v63 offset:64
	ds_store_b16 v229, v64
	ds_store_b16_d16_hi v229, v64 offset:64
	ds_store_b16 v225, v65 offset:640
	ds_store_b16_d16_hi v225, v65 offset:704
	ds_store_b16 v230, v66
	ds_store_b16_d16_hi v230, v66 offset:64
	ds_store_b16 v231, v67
	ds_store_b16_d16_hi v231, v67 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v38 :: v_dual_mov_b32 v51, v39
	v_dual_mov_b32 v52, v42 :: v_dual_mov_b32 v53, v41
	v_mov_b32_e32 v6, v40
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s26, 0, 0x4800
	s_add_i32 s45, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v8, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b32_e32 v3, v1, v3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v45, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v3, v50
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v56, v5, v52
	v_mov_b32_e32 v5, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v57, 16, v56
	v_xor_b32_e32 v58, 32, v56
	v_xor_b32_e32 v59, 48, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v7, s1, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v4, v7 offset:416
	ds_load_u8 v5, v7 offset:384
	ds_load_u8 v6, v7 offset:480
	ds_load_u8 v37, v7 offset:448
	ds_load_u8 v40, v7 offset:288
	ds_load_u8 v42, v7 offset:256
	ds_load_u8 v43, v7 offset:352
	ds_load_u8 v44, v7 offset:320
	ds_load_u8 v45, v7 offset:160
	ds_load_u8 v46, v7 offset:128
	ds_load_u8 v47, v7 offset:224
	ds_load_u8 v48, v7 offset:192
	ds_load_u8 v49, v7 offset:96
	ds_load_u8 v50, v7 offset:64
	ds_load_u8 v52, v7
	ds_load_u8 v53, v7 offset:32
	ds_load_u8 v76, v7 offset:464
	ds_load_u8 v77, v7 offset:432
	ds_load_u8 v78, v7 offset:400
	ds_load_u8 v79, v7 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s16, v58
	v_add_nc_u32_e32 v3, s16, v57
	v_add_nc_u32_e32 v38, s16, v56
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v39, s1, v51
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v8, s16, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v42, v42, v40, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v45, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v52, v53, 0xc0c0004
	v_perm_b32 v54, v5, v4, 0xc0c0004
	v_lshl_or_b32 v53, v45, 16, v44
	v_perm_b32 v55, v37, v6, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_lshl_or_b32 v52, v46, 16, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v55, v55, 16, v54
	v_lshl_or_b32 v54, v43, 16, v42
	v_mov_b32_e32 v50, s11
	ds_load_u8 v42, v7 offset:928
	ds_load_u8 v72, v7 offset:896
	v_mov_b32_e32 v48, s9
	ds_load_u8 v73, v7 offset:992
	ds_load_u8 v74, v7 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[68:71], v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v47, s8 :: v_dual_mov_b32 v46, s7
	v_mov_b32_e32 v44, s5
	ds_load_u8 v90, v7 offset:16
	ds_load_u8 v91, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[37:40], v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v49, s10
	v_mov_b32_e32 v45, s6
	v_mov_b32_e32 v43, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v41, s1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v80, v7 offset:336
	ds_load_u8 v81, v7 offset:304
	ds_load_u8 v82, v7 offset:272
	ds_load_u8 v83, v7 offset:240
	ds_load_u8 v84, v7 offset:208
	ds_load_u8 v85, v7 offset:176
	ds_load_u8 v86, v7 offset:144
	ds_load_u8 v87, v7 offset:112
	ds_load_u8 v88, v7 offset:80
	ds_load_u8 v89, v7 offset:48
	ds_load_u8 v105, v7 offset:720
	ds_load_u8 v106, v7 offset:688
	ds_load_u8 v107, v7 offset:656
	ds_load_u8 v108, v7 offset:624
	ds_load_u8 v125, v7 offset:1264
	ds_load_u8 v126, v7 offset:1232
	ds_load_u8 v127, v7 offset:1200
	ds_load_u8 v128, v7 offset:1168
	ds_load_u8 v141, v7 offset:1776
	ds_load_u8 v142, v7 offset:1744
	ds_load_u8 v143, v7 offset:1712
	ds_load_u8 v144, v7 offset:1680
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v42, v72, v42, 0xc0c0004
	ds_load_u8 v72, v7 offset:544
	ds_load_u8 v99, v7 offset:512
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v7 offset:608
	ds_load_u8 v100, v7 offset:576
	ds_load_u8 v101, v7 offset:848
	ds_load_u8 v102, v7 offset:816
	ds_load_u8 v103, v7 offset:784
	ds_load_u8 v104, v7 offset:752
	s_waitcnt lgkmcnt(30)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[37:40], v[52:55], v[43:50] neg_lo:[1,1,0]
	ds_load_u8 v52, v7 offset:800
	ds_load_u8 v53, v7 offset:768
	ds_load_u8 v54, v7 offset:864
	ds_load_u8 v55, v7 offset:832
	ds_load_u8 v75, v7 offset:672
	ds_load_u8 v92, v7 offset:640
	ds_load_u8 v93, v7 offset:736
	ds_load_u8 v94, v7 offset:704
	ds_load_u8 v95, v7 offset:976
	ds_load_u8 v96, v7 offset:944
	ds_load_u8 v97, v7 offset:912
	ds_load_u8 v98, v7 offset:880
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v80, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v78, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v81, v86, v85, 0xc0c0004
	v_perm_b32 v82, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v83, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v84, v90, v89, 0xc0c0004
	v_lshl_or_b32 v78, v80, 16, v78
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v74, v100, v74, 0xc0c0004
	ds_load_u8 v100, v7 offset:1504
	ds_load_u8 v112, v7 offset:1472
	v_perm_b32 v72, v99, v72, 0xc0c0004
	ds_load_u8 v99, v7 offset:1440
	ds_load_u8 v111, v7 offset:1408
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v53, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v92, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v94, v93, 0xc0c0004
	v_lshl_or_b32 v55, v73, 16, v42
	ds_load_u8 v93, v7 offset:592
	ds_load_u8 v94, v7 offset:560
	ds_load_u8 v109, v7 offset:528
	ds_load_u8 v110, v7 offset:496
	v_lshl_or_b32 v54, v53, 16, v52
	v_lshl_or_b32 v52, v74, 16, v72
	v_lshl_or_b32 v53, v92, 16, v75
	ds_load_u8 v42, v7 offset:1312
	ds_load_u8 v72, v7 offset:1280
	ds_load_u8 v73, v7 offset:1376
	ds_load_u8 v74, v7 offset:1344
	ds_load_u8 v75, v7 offset:1184
	ds_load_u8 v92, v7 offset:1152
	ds_load_u8 v113, v7 offset:1248
	ds_load_u8 v114, v7 offset:1216
	ds_load_u8 v115, v7 offset:1520
	ds_load_u8 v116, v7 offset:1488
	ds_load_u8 v117, v7 offset:1456
	ds_load_u8 v118, v7 offset:1424
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v80, v97, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[3:6], v[52:55], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v100, v112, v100, 0xc0c0004
	ds_load_u8 v112, v7 offset:1120
	ds_load_u8 v120, v7 offset:1088
	ds_load_u8 v121, v7 offset:1392
	ds_load_u8 v122, v7 offset:1360
	ds_load_u8 v123, v7 offset:1328
	ds_load_u8 v124, v7 offset:1296
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v99, v111, v99, 0xc0c0004
	ds_load_u8 v111, v7 offset:1056
	ds_load_u8 v119, v7 offset:1024
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v42, v72, v42, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v73, v92, v75, 0xc0c0004
	v_lshl_or_b32 v55, v100, 16, v99
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v114, v113, 0xc0c0004
	ds_load_u8 v92, v7 offset:1136
	ds_load_u8 v113, v7 offset:1104
	ds_load_u8 v114, v7 offset:1072
	ds_load_u8 v129, v7 offset:1040
	v_lshl_or_b32 v54, v72, 16, v42
	v_perm_b32 v76, v76, v110, 0xc0c0004
	v_perm_b32 v85, v109, v94, 0xc0c0004
	v_lshl_or_b32 v53, v74, 16, v73
	v_perm_b32 v86, v93, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v79, v76, 16, v77
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v120, v112, 0xc0c0004
	v_lshl_or_b32 v77, v82, 16, v81
	v_lshl_or_b32 v76, v83, 16, v84
	v_perm_b32 v81, v103, v102, 0xc0c0004
	v_perm_b32 v82, v101, v98, 0xc0c0004
	v_perm_b32 v83, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v119, v111, 0xc0c0004
	ds_load_u8 v111, v7 offset:1952
	ds_load_u8 v119, v7 offset:1920
	ds_load_u8 v130, v7 offset:2016
	ds_load_u8 v131, v7 offset:1984
	v_perm_b32 v84, v105, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[37:40], v[76:79], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v82, 16, v81
	v_lshl_or_b32 v52, v112, 16, v75
	ds_load_u8 v42, v7 offset:1824
	ds_load_u8 v72, v7 offset:1792
	ds_load_u8 v73, v7 offset:1888
	ds_load_u8 v74, v7 offset:1856
	ds_load_u8 v75, v7 offset:1696
	ds_load_u8 v99, v7 offset:1664
	ds_load_u8 v100, v7 offset:1760
	ds_load_u8 v112, v7 offset:1728
	ds_load_u8 v41, v41
	ds_load_u8 v120, v7 offset:2000
	ds_load_u8 v132, v7 offset:1968
	ds_load_u8 v133, v7 offset:1936
	v_lshl_or_b32 v38, v84, 16, v83
	v_lshl_or_b32 v37, v86, 16, v85
	v_perm_b32 v76, v116, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[52:55], v[60:67] neg_lo:[1,1,0]
	v_perm_b32 v77, v124, v123, 0xc0c0004
	v_perm_b32 v78, v122, v121, 0xc0c0004
	v_perm_b32 v79, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v81, v129, v114, 0xc0c0004
	v_perm_b32 v82, v113, v92, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v72, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v140, v74, v73, 0xc0c0004
	v_perm_b32 v111, v119, v111, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v99, v75, 0xc0c0004
	v_perm_b32 v119, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v112, v100, 0xc0c0004
	ds_load_u8 v130, v7 offset:1568
	ds_load_u8 v131, v7 offset:1536
	ds_load_u8 v134, v7 offset:1632
	ds_load_u8 v135, v7 offset:1600
	ds_load_u8 v136, v7 offset:1904
	ds_load_u8 v137, v7 offset:1872
	ds_load_u8 v138, v7 offset:1840
	ds_load_u8 v139, v7 offset:1808
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[72:75], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v54, v140, 16, v42
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v41, v95, v41, 0xc0c0004
	v_lshl_or_b32 v53, v100, 16, v99
	ds_load_u8 v8, v7 offset:1648
	ds_load_u8 v42, v7 offset:1616
	ds_load_u8 v99, v7 offset:1584
	ds_load_u8 v7, v7 offset:1552
	v_lshl_or_b32 v55, v119, 16, v111
	v_lshl_or_b32 v40, v41, 16, v80
	v_perm_b32 v41, v118, v117, 0xc0c0004
	v_perm_b32 v80, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[3:6], v[37:40], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v52, v131, v130, 0xc0c0004
	v_lshl_or_b32 v6, v76, 16, v41
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v100, v135, v134, 0xc0c0004
	v_lshl_or_b32 v5, v78, 16, v77
	v_lshl_or_b32 v4, v80, 16, v79
	v_lshl_or_b32 v3, v82, 16, v81
	v_perm_b32 v37, v133, v132, 0xc0c0004
	v_perm_b32 v38, v120, v91, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v39, v139, v138, 0xc0c0004
	v_perm_b32 v40, v137, v136, 0xc0c0004
	v_perm_b32 v41, v144, v143, 0xc0c0004
	v_perm_b32 v76, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v99, 0xc0c0004
	v_perm_b32 v8, v42, v8, 0xc0c0004
	v_lshl_or_b32 v52, v100, 16, v52
	v_wmma_i32_16x16x16_iu8 v[43:50], v[68:71], v[3:6], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v38, 16, v37
	v_lshl_or_b32 v5, v40, 16, v39
	v_lshl_or_b32 v4, v76, 16, v41
	v_lshl_or_b32 v3, v8, 16, v7
	v_wmma_i32_16x16x16_iu8 v[60:67], v[72:75], v[52:55], v[60:67] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[72:75], v[3:6], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v7, v63
	v_cvt_f32_i32_e32 v4, v64
	v_cvt_f32_i32_e32 v8, v65
	v_cvt_f32_i32_e32 v5, v66
	v_cvt_f32_i32_e32 v37, v67
	v_cvt_f32_i32_e32 v40, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v42, v48
	v_cvt_f32_i32_e32 v41, v49
	v_cvt_f32_i32_e32 v45, v50
	v_cvt_f32_i32_e32 v38, v60
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s31, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s1, s1, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s1, s31, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v47, v35, s1, 1
	v_add_lshl_u32 v48, v36, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v49, v34, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v50, v33, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v54, v47, s[12:15], 0 offen
	buffer_load_u16 v55, v48, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v47, v32, s1, 1
	v_dual_cndmask_b32 v48, 0x80000000, v49 :: v_dual_cndmask_b32 v49, 0x80000000, v50
	v_add_lshl_u32 v50, v30, s1, 1
	v_add_lshl_u32 v52, v28, s1, 1
	v_add_lshl_u32 v53, v31, s1, 1
	v_add_lshl_u32 v60, v29, s1, 1
	v_add_lshl_u32 v61, v27, s1, 1
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v62, 0x80000000, v52 :: v_dual_cndmask_b32 v63, 0x80000000, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v64, 0x80000000, v60 :: v_dual_cndmask_b32 v65, 0x80000000, v61
	s_clause 0x7
	buffer_load_u16 v60, v48, s[28:31], 0 offen
	buffer_load_u16 v61, v49, s[28:31], 0 offen
	buffer_load_u16 v52, v47, s[28:31], 0 offen
	buffer_load_u16 v53, v50, s[28:31], 0 offen
	buffer_load_u16 v49, v62, s[28:31], 0 offen
	buffer_load_u16 v50, v63, s[28:31], 0 offen
	buffer_load_u16 v47, v64, s[28:31], 0 offen
	buffer_load_u16 v48, v65, s[28:31], 0 offen
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v76, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s26, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s26, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s45, v57
	v_add_nc_u32_e32 v62, s45, v59
	v_add_nc_u32_e32 v63, s45, v58
	v_add_nc_u32_e32 v64, s45, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v65, v1 offset:416
	ds_load_u8 v66, v1 offset:384
	ds_load_u8 v67, v1 offset:480
	ds_load_u8 v68, v1 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[56:59], v57
	ds_load_b128 v[81:84], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v64, v1 offset:288
	ds_load_u8 v69, v1 offset:256
	ds_load_u8 v70, v1 offset:352
	ds_load_u8 v71, v1 offset:320
	ds_load_u8 v72, v1 offset:160
	ds_load_u8 v73, v1 offset:128
	ds_load_u8 v74, v1 offset:224
	ds_load_u8 v75, v1 offset:192
	ds_load_u8 v76, v1 offset:96
	ds_load_u8 v77, v1 offset:64
	ds_load_u8 v78, v1
	ds_load_u8 v79, v1 offset:32
	ds_load_u8 v97, v1 offset:464
	ds_load_u8 v98, v1 offset:432
	ds_load_u8 v99, v1 offset:400
	ds_load_u8 v100, v1 offset:368
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v51, s26, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v69, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v69, v75, v74, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v71, v70, 0xc0c0004
	v_perm_b32 v68, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v70, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v78, v79, 0xc0c0004
	v_mov_b32_e32 v80, s11
	ds_load_u8 v93, v1 offset:928
	ds_load_u8 v94, v1 offset:896
	v_mov_b32_e32 v78, s9
	ds_load_u8 v95, v1 offset:992
	ds_load_u8 v96, v1 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[89:92], v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v88, v66, 16, v65
	v_lshl_or_b32 v87, v67, 16, v64
	v_lshl_or_b32 v86, v69, 16, v68
	v_lshl_or_b32 v85, v70, 16, v71
	v_mov_b32_e32 v79, s10
	v_dual_mov_b32 v77, s8 :: v_dual_mov_b32 v76, s7
	v_dual_mov_b32 v75, s6 :: v_dual_mov_b32 v74, s5
	v_mov_b32_e32 v73, s4
	ds_load_u8 v101, v1 offset:336
	ds_load_u8 v102, v1 offset:304
	ds_load_u8 v103, v1 offset:272
	ds_load_u8 v104, v1 offset:240
	ds_load_u8 v105, v1 offset:208
	ds_load_u8 v106, v1 offset:176
	ds_load_u8 v107, v1 offset:144
	ds_load_u8 v108, v1 offset:112
	ds_load_u8 v72, v1 offset:80
	ds_load_u8 v109, v1 offset:48
	ds_load_u8 v110, v1 offset:16
	ds_load_u8 v51, v51
	v_wmma_i32_16x16x16_iu8 v[64:71], v[81:84], v[85:88], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v63, v1 offset:800
	ds_load_u8 v85, v1 offset:768
	ds_load_u8 v86, v1 offset:864
	ds_load_u8 v87, v1 offset:832
	ds_load_u8 v88, v1 offset:672
	ds_load_u8 v111, v1 offset:640
	ds_load_u8 v112, v1 offset:736
	ds_load_u8 v113, v1 offset:704
	ds_load_u8 v114, v1 offset:976
	ds_load_u8 v115, v1 offset:944
	ds_load_u8 v116, v1 offset:912
	ds_load_u8 v117, v1 offset:880
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v1 offset:544
	ds_load_u8 v118, v1 offset:512
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v1 offset:608
	ds_load_u8 v119, v1 offset:576
	ds_load_u8 v120, v1 offset:848
	ds_load_u8 v121, v1 offset:816
	ds_load_u8 v122, v1 offset:784
	ds_load_u8 v123, v1 offset:752
	ds_load_u8 v124, v1 offset:720
	ds_load_u8 v125, v1 offset:688
	ds_load_u8 v126, v1 offset:656
	ds_load_u8 v127, v1 offset:624
	ds_load_u8 v144, v1 offset:1264
	ds_load_u8 v145, v1 offset:1232
	ds_load_u8 v146, v1 offset:1200
	ds_load_u8 v147, v1 offset:1168
	ds_load_u8 v160, v1 offset:1776
	ds_load_u8 v161, v1 offset:1744
	ds_load_u8 v162, v1 offset:1712
	ds_load_u8 v163, v1 offset:1680
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v63, v85, v63, 0xc0c0004
	v_perm_b32 v101, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v85, v87, v86, 0xc0c0004
	v_perm_b32 v99, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v86, v111, v88, 0xc0c0004
	v_lshl_or_b32 v88, v95, 16, v93
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	v_lshl_or_b32 v87, v85, 16, v63
	ds_load_u8 v112, v1 offset:592
	ds_load_u8 v113, v1 offset:560
	ds_load_u8 v128, v1 offset:528
	ds_load_u8 v129, v1 offset:496
	v_perm_b32 v102, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v96, v119, v96, 0xc0c0004
	ds_load_u8 v119, v1 offset:1504
	ds_load_u8 v131, v1 offset:1472
	v_perm_b32 v94, v118, v94, 0xc0c0004
	ds_load_u8 v118, v1 offset:1440
	ds_load_u8 v130, v1 offset:1408
	v_lshl_or_b32 v86, v111, 16, v86
	v_perm_b32 v103, v105, v104, 0xc0c0004
	v_perm_b32 v72, v72, v108, 0xc0c0004
	v_lshl_or_b32 v85, v96, 16, v94
	ds_load_u8 v63, v1 offset:1312
	ds_load_u8 v93, v1 offset:1280
	ds_load_u8 v94, v1 offset:1376
	ds_load_u8 v95, v1 offset:1344
	ds_load_u8 v96, v1 offset:1184
	ds_load_u8 v111, v1 offset:1152
	ds_load_u8 v132, v1 offset:1248
	ds_load_u8 v133, v1 offset:1216
	ds_load_u8 v134, v1 offset:1520
	ds_load_u8 v135, v1 offset:1488
	ds_load_u8 v136, v1 offset:1456
	ds_load_u8 v137, v1 offset:1424
	v_perm_b32 v104, v110, v109, 0xc0c0004
	v_lshl_or_b32 v99, v101, 16, v99
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v101, v122, v121, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[56:59], v[85:88], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v106, v112, v127, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v105, v128, v113, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v93, v63, 0xc0c0004
	v_perm_b32 v97, v97, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v95, v94, 0xc0c0004
	v_perm_b32 v119, v131, v119, 0xc0c0004
	ds_load_u8 v131, v1 offset:1120
	ds_load_u8 v139, v1 offset:1088
	ds_load_u8 v140, v1 offset:1392
	ds_load_u8 v141, v1 offset:1360
	ds_load_u8 v142, v1 offset:1328
	ds_load_u8 v143, v1 offset:1296
	v_perm_b32 v118, v130, v118, 0xc0c0004
	ds_load_u8 v130, v1 offset:1056
	ds_load_u8 v138, v1 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v94, v111, v96, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v133, v132, 0xc0c0004
	v_lshl_or_b32 v87, v93, 16, v63
	v_lshl_or_b32 v88, v119, 16, v118
	ds_load_u8 v111, v1 offset:1136
	ds_load_u8 v132, v1 offset:1104
	ds_load_u8 v133, v1 offset:1072
	ds_load_u8 v148, v1 offset:1040
	v_lshl_or_b32 v100, v97, 16, v98
	v_lshl_or_b32 v86, v95, 16, v94
	v_lshl_or_b32 v98, v103, 16, v102
	v_lshl_or_b32 v97, v72, 16, v104
	v_perm_b32 v72, v116, v115, 0xc0c0004
	v_perm_b32 v102, v120, v117, 0xc0c0004
	v_perm_b32 v103, v126, v125, 0xc0c0004
	v_perm_b32 v104, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v139, v131, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[97:100], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v102, 16, v101
	v_lshl_or_b32 v81, v106, 16, v105
	v_lshl_or_b32 v82, v104, 16, v103
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v138, v130, 0xc0c0004
	ds_load_u8 v130, v1 offset:1952
	ds_load_u8 v138, v1 offset:1920
	ds_load_u8 v149, v1 offset:2016
	ds_load_u8 v150, v1 offset:1984
	v_perm_b32 v98, v141, v140, 0xc0c0004
	v_perm_b32 v99, v147, v146, 0xc0c0004
	v_perm_b32 v100, v145, v144, 0xc0c0004
	v_lshl_or_b32 v85, v131, 16, v96
	ds_load_u8 v63, v1 offset:1824
	ds_load_u8 v93, v1 offset:1792
	ds_load_u8 v94, v1 offset:1888
	ds_load_u8 v95, v1 offset:1856
	ds_load_u8 v96, v1 offset:1696
	ds_load_u8 v118, v1 offset:1664
	ds_load_u8 v119, v1 offset:1760
	ds_load_u8 v131, v1 offset:1728
	ds_load_u8 v2, v2
	ds_load_u8 v139, v1 offset:2000
	ds_load_u8 v151, v1 offset:1968
	ds_load_u8 v152, v1 offset:1936
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v148, v133, 0xc0c0004
	v_perm_b32 v102, v132, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[89:92], v[85:88], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v93, v63, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v159, v95, v94, 0xc0c0004
	v_perm_b32 v130, v138, v130, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v118, v96, 0xc0c0004
	v_perm_b32 v138, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v119, v131, v119, 0xc0c0004
	ds_load_u8 v149, v1 offset:1568
	ds_load_u8 v150, v1 offset:1536
	ds_load_u8 v153, v1 offset:1632
	ds_load_u8 v154, v1 offset:1600
	ds_load_u8 v155, v1 offset:1904
	ds_load_u8 v156, v1 offset:1872
	ds_load_u8 v157, v1 offset:1840
	ds_load_u8 v158, v1 offset:1808
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v87, v159, 16, v63
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v114, v2, 0xc0c0004
	v_lshl_or_b32 v86, v119, 16, v118
	ds_load_u8 v62, v1 offset:1648
	ds_load_u8 v63, v1 offset:1616
	ds_load_u8 v118, v1 offset:1584
	ds_load_u8 v1, v1 offset:1552
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v51, v139, v51, 0xc0c0004
	v_lshl_or_b32 v88, v138, 16, v130
	v_lshl_or_b32 v84, v2, 16, v72
	v_perm_b32 v2, v137, v136, 0xc0c0004
	v_perm_b32 v72, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[56:59], v[81:84], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v85, v150, v149, 0xc0c0004
	v_lshl_or_b32 v59, v72, 16, v2
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v119, v154, v153, 0xc0c0004
	v_lshl_or_b32 v58, v98, 16, v97
	v_lshl_or_b32 v57, v100, 16, v99
	v_lshl_or_b32 v56, v102, 16, v101
	v_perm_b32 v2, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v72, v158, v157, 0xc0c0004
	v_perm_b32 v81, v156, v155, 0xc0c0004
	v_perm_b32 v82, v163, v162, 0xc0c0004
	v_perm_b32 v83, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v118, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_lshl_or_b32 v85, v119, 16, v85
	v_wmma_i32_16x16x16_iu8 v[73:80], v[89:92], v[56:59], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v59, v51, 16, v2
	v_lshl_or_b32 v58, v81, 16, v72
	v_lshl_or_b32 v57, v83, 16, v82
	v_lshl_or_b32 v56, v62, 16, v1
	v_wmma_i32_16x16x16_iu8 v[64:71], v[93:96], v[85:88], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[93:96], v[56:59], v[73:80] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v62, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v63, v68
	v_cvt_f32_i32_e32 v67, v69
	v_cvt_f32_i32_e32 v64, v70
	v_cvt_f32_i32_e32 v68, v71
	v_cvt_f32_i32_e32 v70, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v73, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v72, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v75, v80
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s17, s1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v9, s27, v9
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v47.h, v54.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v35, s1, 1
	v_add_lshl_u32 v35, v36, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v34, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v33, v33, s1, 1
	v_add_lshl_u32 v30, v30, s1, 1
	v_add_lshl_u32 v32, v32, s1, 1
	v_add_lshl_u32 v28, v28, s1, 1
	v_add_lshl_u32 v31, v31, s1, 1
	v_add_lshl_u32 v29, v29, s1, 1
	v_add_lshl_u32 v27, v27, s1, 1
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_clause 0x7
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	buffer_load_u16 v27, v27, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v36.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v36.h, v55.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v48.h, v61.l
	v_mov_b16_e32 v49.h, v60.l
	v_mov_b16_e32 v50.h, v53.l
	v_mov_b16_e32 v51.h, v52.l
	v_mov_b16_e32 v52.h, v50.l
	v_mov_b16_e32 v53.h, v49.l
	v_mov_b16_e32 v54.h, v48.l
	v_mov_b16_e32 v55.h, v47.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v47.l, v36.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v48.l, v36.l
	v_mov_b16_e32 v49.l, v36.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v10, 0x78, v10
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v50.l, v36.l
	v_mov_b16_e32 v51.l, v36.l
	v_mov_b16_e32 v52.l, v36.l
	v_mov_b16_e32 v53.l, v36.l
	v_mov_b16_e32 v54.l, v36.l
	v_mov_b16_e32 v55.l, v36.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s0, s34, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v56, 0x5410
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s0, s0, s33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.h, v36.l
	v_mov_b16_e32 v59.h, v36.l
	v_mov_b16_e32 v60.h, v36.l
	v_mov_b16_e32 v61.h, v36.l
	v_mov_b16_e32 v77.h, v36.l
	v_mov_b16_e32 v78.h, v36.l
	v_mov_b16_e32 v79.h, v36.l
	v_mov_b16_e32 v80.h, v36.l
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v36, v49
	v_dual_mul_f32 v82, v36, v48 :: v_dual_mul_f32 v49, v49, v47
	v_mul_f32_e32 v83, v36, v51
	v_mul_f32_e32 v84, v36, v50
	v_dual_mul_f32 v50, v50, v47 :: v_dual_mul_f32 v85, v36, v53
	v_dual_mul_f32 v51, v51, v47 :: v_dual_mul_f32 v86, v36, v52
	v_mul_f32_e32 v52, v52, v47
	v_mul_f32_e32 v53, v53, v47
	v_mul_f32_e32 v87, v36, v55
	v_mul_f32_e32 v36, v36, v54
	v_mul_f32_e32 v54, v54, v47
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v9, s0, v10, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v48, v47
	v_mul_f32_e32 v47, v55, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v82, v44, v22
	v_fma_f32 v44, v84, v46, v18
	v_fma_f32 v7, v50, v7, v25
	v_fma_f32 v3, v51, v3, v23
	v_fma_f32 v5, v47, v5, v15
	v_fma_f32 v4, v53, v4, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v22, v10, s2
	v_cndmask_b32_e64 v18, v18, v44, s2
	v_cndmask_b32_e64 v7, v25, v7, s2
	v_cndmask_b32_e64 v5, v15, v5, s2
	v_cndmask_b32_e64 v3, v23, v3, s2
	v_cndmask_b32_e64 v4, v19, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v49, v38, v11
	v_fma_f32 v42, v86, v42, v14
	v_fma_f32 v40, v81, v40, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v57, 0x7632 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v38, s2
	v_cndmask_b32_e64 v14, v14, v42, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v24, v24, v40, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_lshl_b32 s1, s27, 4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v85, v39, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s26, s14
	s_mov_b32 s16, 0x76543210
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v39, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v2, 16, v2
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v15, 16, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v33
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v30
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v23, 16, v32
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v25, 16, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v52, v8, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v32, v22, v2 :: v_dual_lshlrev_b32 v27, 16, v27
	v_mul_f32_e32 v22, v15, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v45, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshlrev_b32_e32 v45, 1, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v48, v6, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v21, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v76, v18
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v21, 16, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v19, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v26, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v26, 16, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v22, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v19, v15, v19 :: v_dual_lshlrev_b32 v28, 16, v29
	v_mul_f32_e32 v29, v21, v2
	v_dual_mul_f32 v21, v15, v21 :: v_dual_mul_f32 v34, v25, v2
	v_mul_f32_e32 v33, v26, v2
	v_mul_f32_e32 v25, v15, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.l, v18.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v23, v2
	v_dual_mul_f32 v35, v28, v2 :: v_dual_mul_f32 v28, v15, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v29, v1, v11
	v_fma_f32 v25, v25, v72, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v29, v31, v62, v3
	v_fma_f32 v31, v33, v63, v4
	v_fma_f32 v43, v83, v43, v20
	v_fma_f32 v19, v19, v74, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v25, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v70, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v31, s3
	v_cndmask_b32_e64 v20, v20, v43, s2
	v_cndmask_b32_e64 v1, v11, v1, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v77.l, v14.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v15, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v22, v4, 16, 1
	v_cmp_o_f32_e64 s7, v4, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v24, v21, s3
	v_cndmask_b32_e64 v10, v10, v19, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v54, v37, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v4, v22, 0x7fff
	v_and_b32_e32 v22, 1, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v73, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v11.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v15, v26
	v_mul_f32_e32 v15, v15, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v37, s2
	v_cndmask_b32_e64 v19, v20, v23, s3
	v_cndmask_b32_e64 v12, v12, v36, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v58.l, v10.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v87, v41, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v61.l, v19.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v27, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v30, v65, v6
	v_fma_f32 v30, v32, v66, v7
	v_fma_f32 v15, v15, v75, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add_lshl_u32 v9, v9, s1, 1
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v27, s3
	v_cndmask_b32_e64 v7, v7, v30, s3
	v_cndmask_b32_e64 v12, v12, v15, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v15, v1, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v41, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v34, v67, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v21, v7, 16, 1
	v_cmp_o_f32_e64 s4, v7, v7
	v_add3_u32 v1, v1, v15, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v29, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v71, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v7, v21, 0x7fff
	v_and_b32_e32 v21, 1, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v68, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v32, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v17, v2, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v17, v6, 16, 1
	v_bfe_u32 v20, v3, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v28, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v23, v8, 16, 1
	v_bfe_u32 v25, v2, 16, 1
	v_cmp_o_f32_e64 s12, v2, v2
	v_add3_u32 v6, v6, v17, 0x7fff
	v_and_b32_e32 v17, 1, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v69, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v25, 0x7fff
	v_cmp_o_f32_e64 s2, v11, v11
	v_cmp_o_f32_e64 s5, v18, v18
	v_cmp_o_f32_e64 s6, v19, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v26, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s12
	v_and_b32_e32 v15, 1, v58
	v_cmp_o_f32_e64 s8, v8, v8
	v_mov_b16_e32 v80.l, v13.h
	v_add3_u32 v8, v8, v23, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v6.h, s0
	v_add3_u32 v10, v10, v15, 0x7fff
	v_add3_u32 v6, v11, v17, 0x7fff
	v_mov_b16_e32 v78.l, v16.h
	v_mov_b16_e32 v79.l, v12.h
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s1
	v_cndmask_b32_e32 v10, 0x1054, v56, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v35, v64, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s2
	v_cmp_o_f32_e64 s14, v13, v13
	v_lshl_or_b32 v10, v10, 8, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v3, v3, v20, 0x7fff
	v_and_b32_e32 v20, 1, v60
	v_cmp_o_f32_e64 s9, v14, v14
	v_bfe_u32 v24, v5, 16, 1
	v_cmp_o_f32_e64 s11, v5, v5
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s4
	v_add3_u32 v7, v19, v21, 0x7fff
	v_add3_u32 v5, v5, v24, 0x7fff
	v_add3_u32 v11, v18, v20, 0x7fff
	v_and_b32_e32 v24, 1, v79
	v_cmp_o_f32_e64 s10, v16, v16
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s11
	v_and_b32_e32 v25, 1, v80
	v_cndmask_b16 v6.h, 0x7fff, v11.h, s5
	v_cndmask_b32_e32 v11, 0x3276, v57, vcc_lo
	v_and_b32_e32 v23, 1, v78
	v_cmp_o_f32_e64 s13, v12, v12
	v_add3_u32 v14, v14, v22, 0x7fff
	v_add3_u32 v12, v12, v24, 0x7fff
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b32_e32 v7, v4, v1, vcc_lo
	v_dual_cndmask_b32 v1, v1, v4 :: v_dual_cndmask_b32 v4, v2, v3
	v_cndmask_b32_e32 v2, v3, v2, vcc_lo
	v_add3_u32 v5, v13, v25, 0x7fff
	v_add3_u32 v8, v16, v23, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v8.l, 0x7fff, v5.h, s14
	v_and_b32_e32 v5, 0x540054, v10
	v_and_b32_e32 v10, 0x760076, v11
	v_cndmask_b16 v13.l, 0x7fff, v8.h, s10
	v_cndmask_b16 v8.h, 0x7fff, v12.h, s13
	v_lshl_or_b32 v3, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v10, 4, v10
	v_dual_cndmask_b32 v11, v13, v0 :: v_dual_cndmask_b32 v0, v0, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v10, v8, v6, vcc_lo
	v_cndmask_b32_e32 v6, v6, v8, vcc_lo
	v_and_b32_e32 v8, 0x5040504, v3
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v5
	v_permlanex16_b32 v3, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v0, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v7, v8
	v_perm_b32 v1, v1, v7, v12
	v_perm_b32 v2, v3, v4, v8
	v_perm_b32 v3, v3, v4, v12
	v_perm_b32 v4, v5, v11, v8
	v_perm_b32 v5, v5, v11, v12
	v_perm_b32 v6, v13, v10, v8
	v_perm_b32 v7, v13, v10, v12
	s_clause 0x1
	buffer_store_b128 v[0:3], v45, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v9, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 232
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14344
; TotalNumSgprs: 48
; NumVgprs: 232
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
