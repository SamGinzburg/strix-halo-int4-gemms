	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s30, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v13, 4, v0
	v_and_b32_e32 v14, 0x80, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v15, 0x60, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 62, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v16, 1, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v61, 0, v13
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v10, 3, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v11, 1, v15
	v_and_b32_e32 v68, 8, v0
	v_and_b32_e32 v69, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v67, v0, 15, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v28, 32, v67
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
	v_lshlrev_b32_e32 v1, 4, v4
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[5:6], null, s35, v3, v[1:2]
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
	s_lshl_b32 s45, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s19, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s30, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s17, s19, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s45, v3
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s20, s17, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s35, s45
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s17, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s26, s16, v5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 0xff
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s4
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s45, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[29:32], v6, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v5, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v6, s34, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s45, 0x100
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s31, s35, 8
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s17, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s31, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v6, v6, v5, s27
	s_mul_i32 s7, s34, s45
	s_lshl_b32 s44, s34, 8
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s30, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s35, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s7, v6
	v_add3_u32 v6, s7, s44, v6
	s_mov_b32 s16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x1
	buffer_load_b128 v[37:40], v7, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v9, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v8, v0, 0, 1
	v_and_b32_e32 v9, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 0x420, v8
	v_xor_b32_e32 v10, v12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v9, 10, v10
	v_add_nc_u32_e32 v62, 0, v70
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[45:48], v7, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s17, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v71, 0x90, v70
	v_xor_b32_e32 v72, 0x120, v70
	v_xor_b32_e32 v73, 0x1b0, v70
	v_xor_b32_e32 v74, 0x210, v70
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v75, 0x330, v70
	v_xor_b32_e32 v76, 0x3a0, v70
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, 0, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, 0, v72
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v65, 0, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v66, 0, v74
	v_add_nc_u32_e32 v77, 0, v75
	v_add_nc_u32_e32 v78, 0, v76
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[49:52], v6, s[8:11], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v8, v7, 1, v11
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshlrev_b32_e32 v7, 3, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x2ff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 2, v8
	v_or_b32_e32 v17, 4, v8
	v_or_b32_e32 v18, 6, v8
	v_or_b32_e32 v19, 8, v8
	v_or_b32_e32 v20, 10, v8
	v_or_b32_e32 v21, 12, v8
	v_or_b32_e32 v22, 14, v8
	v_or_b32_e32 v23, 64, v8
	v_or_b32_e32 v24, 0x42, v8
	v_or_b32_e32 v25, 0x44, v8
	v_or_b32_e32 v26, 0x46, v8
	v_or_b32_e32 v27, 0x48, v8
	v_or_b32_e32 v9, 0x4a, v8
	v_or_b32_e32 v10, 0x4c, v8
	v_or_b32_e32 v11, 0x4e, v8
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
	s_waitcnt vmcnt(2)
	v_perm_b32 v53, v41, v37, 0x5010400
	v_and_b16 v32.l, 0xff, v34.l
	v_and_b16 v32.h, 0xff, v34.h
	v_and_b16 v33.l, 0xff, v55.l
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	ds_store_b16 v66, v33
	ds_store_b16_d16_hi v66, v33 offset:64
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	ds_store_b16 v66, v33 offset:8192
	ds_store_b16_d16_hi v66, v33 offset:8256
	ds_store_b16 v62, v34 offset:8832
	ds_store_b16_d16_hi v62, v34 offset:8896
	ds_store_b16 v77, v35 offset:8192
	ds_store_b16_d16_hi v77, v35 offset:8256
	ds_store_b16 v78, v36 offset:8192
	ds_store_b16_d16_hi v78, v36 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v79, 8, v0
	v_and_b32_e32 v80, 32, v0
	v_and_b32_e32 v77, 0x800, v6
	v_lshl_or_b32 v78, v4, 6, v7
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
.LBB0_3:                                ; %Flow47
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v29, s27, v67
	v_or_b32_e32 v28, s27, v28
	s_ashr_i32 s1, s6, 6
	v_cmp_eq_u32_e64 s0, 0, v16
	v_or_b32_e32 v64, s26, v8
	v_mul_lo_u32 v65, v29, s1
	v_mul_lo_u32 v66, v28, s1
	v_or_b32_e32 v63, s26, v12
	v_or_b32_e32 v62, s26, v17
	v_or_b32_e32 v61, s26, v18
	v_or_b32_e32 v60, s26, v19
	v_or_b32_e32 v59, s26, v20
	v_or_b32_e32 v58, s26, v21
	v_or_b32_e32 v57, s26, v22
	v_or_b32_e32 v56, s26, v23
	v_or_b32_e32 v55, s26, v24
	v_or_b32_e32 v54, s26, v25
	v_or_b32_e32 v52, s26, v26
	v_or_b32_e32 v50, s26, v27
	v_or_b32_e32 v53, s26, v9
	v_or_b32_e32 v51, s26, v10
	v_or_b32_e32 v49, s26, v11
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v8, v0, 5, 1
	v_bfe_i32 v9, v0, 3, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s15, s19, 7
	s_mov_b32 s17, s16
	s_mov_b32 s19, s16
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v8, 0x420, v8
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, s45, v3
	v_and_b32_e32 v77, 0x800, v6
	v_lshl_or_b32 v78, v4, 6, v7
	v_and_or_b32 v4, 0x210, v9, v8
	v_add3_u32 v8, s45, v2, 0x200
	v_add_nc_u32_e32 v6, 0x201, v10
	v_add_nc_u32_e32 v7, 0x200, v10
	v_or_b32_e32 v86, 0x200, v3
	v_xor_b32_e32 v4, v4, v78
	v_or_b32_e32 v87, 0x200, v2
	v_mul_lo_u32 v6, s35, v6
	v_mul_lo_u32 v7, s35, v7
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_or_b32_e32 v79, v4, v77
	v_mul_lo_u32 v4, s34, v8
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_add3_u32 v6, v6, s15, v1
	v_add3_u32 v1, v7, s15, v1
	s_lshl_b32 s15, s18, 7
	s_mov_b32 s18, s16
	v_xor_b32_e32 v80, 16, v79
	v_subrev_nc_u32_e32 v83, s15, v6
	v_subrev_nc_u32_e32 v84, s15, v1
	v_add3_u32 v85, v4, s27, v5
	v_mov_b32_e32 v1, s16
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v48, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s14, s5, 8
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s14, -2
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s34, 0, 0x5000
	s_add_i32 s33, 0, 0x2000
	s_mov_b32 s15, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s45
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v144, s46, v67
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v9, s17, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v96, s16, v79
	v_add_nc_u32_e32 v97, s16, v80
	s_mov_b32 s46, s34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v9
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v85, vcc_lo
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v88, v144 offset:832
	ds_load_u8 v89, v144 offset:768
	ds_load_u8 v90, v144 offset:960
	ds_load_u8 v91, v144 offset:896
	ds_load_u8 v92, v144 offset:576
	ds_load_u8 v93, v144 offset:512
	ds_load_u8 v94, v144 offset:704
	ds_load_u8 v95, v144 offset:640
	ds_load_u8 v98, v144 offset:320
	ds_load_u8 v99, v144 offset:256
	ds_load_u8 v100, v144 offset:448
	ds_load_u8 v101, v144 offset:384
	ds_load_u8 v102, v144 offset:64
	ds_load_u8 v103, v144
	ds_load_u8 v104, v144 offset:192
	ds_load_u8 v105, v144 offset:128
	ds_load_u8 v106, v144 offset:1856
	ds_load_u8 v107, v144 offset:1792
	ds_load_u8 v108, v144 offset:1984
	ds_load_u8 v109, v144 offset:1920
	ds_load_u8 v110, v144 offset:1600
	ds_load_u8 v111, v144 offset:1536
	ds_load_u8 v112, v144 offset:1728
	ds_load_u8 v113, v144 offset:1664
	ds_load_u8 v114, v144 offset:1344
	ds_load_u8 v115, v144 offset:1280
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v144 offset:1472
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:1408
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v144 offset:1088
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v144 offset:1216
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v144 offset:1152
	ds_load_u8 v95, v144 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v109, v108, 0xc0c0004
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v118, v111, v110, 0xc0c0004
	v_perm_b32 v103, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v113, v112, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[104:107], v96
	ds_load_b128 v[108:111], v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v121, v115, v114, 0xc0c0004
	v_lshl_or_b32 v119, v117, 16, v116
	v_lshl_or_b32 v118, v120, 16, v118
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	v_lshl_or_b32 v115, v90, 16, v88
	v_lshl_or_b32 v114, v94, 16, v92
	v_lshl_or_b32 v113, v100, 16, v98
	v_lshl_or_b32 v112, v103, 16, v102
	v_lshl_or_b32 v117, v89, 16, v121
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[120:123], v96 offset:4096
	ds_load_b128 v[124:127], v97 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v95, v93, 0xc0c0004
	v_perm_b32 v93, v101, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v116, v93, 16, v91
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[104:107], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[108:111], v[116:119], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[120:123], v[112:115], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v112, v144 offset:864
	ds_load_u8 v113, v144 offset:800
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[124:127], v[116:119], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v144 offset:992
	ds_load_u8 v114, v144 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v144 offset:608
	ds_load_u8 v115, v144 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v144 offset:736
	ds_load_u8 v116, v144 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v115, 0xc0c0004
	v_lshl_or_b32 v115, v113, 16, v112
	ds_load_u8 v112, v144 offset:352
	ds_load_u8 v113, v144 offset:288
	v_lshl_or_b32 v114, v116, 16, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v144 offset:480
	ds_load_u8 v116, v144 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v116, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v113, 16, v112
	ds_load_u8 v112, v144 offset:32
	ds_load_u8 v116, v144 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v116, 0xc0c0004
	ds_load_u8 v116, v144 offset:224
	ds_load_u8 v117, v144 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v116, 16, v112
	ds_load_u8 v116, v144 offset:1888
	ds_load_u8 v117, v144 offset:1824
	v_wmma_i32_16x16x16_iu8 v[136:143], v[120:123], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v144 offset:2016
	ds_load_u8 v118, v144 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v144 offset:1632
	ds_load_u8 v119, v144 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v144 offset:1760
	ds_load_u8 v128, v144 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v128, v119, 0xc0c0004
	v_lshl_or_b32 v119, v117, 16, v116
	ds_load_u8 v116, v144 offset:1376
	ds_load_u8 v117, v144 offset:1312
	v_lshl_or_b32 v118, v128, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v144 offset:1504
	ds_load_u8 v128, v144 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v128, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v117, 16, v116
	ds_load_u8 v116, v144 offset:1120
	ds_load_u8 v128, v144 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v128, v116, 0xc0c0004
	ds_load_u8 v128, v144 offset:1248
	ds_load_u8 v129, v144 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v128, 16, v116
	v_wmma_i32_16x16x16_iu8 v[128:135], v[104:107], v[112:115], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:2880
	ds_load_u8 v105, v144 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s16, v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[136:143], v[124:127], v[116:119], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[108:111], v[116:119], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3008
	ds_load_u8 v106, v144 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:2624
	ds_load_u8 v107, v144 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:2752
	ds_load_u8 v108, v144 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:2368
	ds_load_u8 v105, v144 offset:2304
	v_lshl_or_b32 v106, v108, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:2496
	ds_load_u8 v108, v144 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v108, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:2112
	ds_load_u8 v108, v144 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v108, v104, 0xc0c0004
	ds_load_u8 v108, v144 offset:2240
	ds_load_u8 v109, v144 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v108, 16, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v112
	ds_load_b128 v[112:115], v112 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[108:111], v[104:107], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[112:115], v[104:107], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:2912
	ds_load_u8 v105, v144 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3040
	ds_load_u8 v106, v144 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:2656
	ds_load_u8 v107, v144 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:2784
	ds_load_u8 v116, v144 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:2400
	ds_load_u8 v105, v144 offset:2336
	v_lshl_or_b32 v106, v116, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:2528
	ds_load_u8 v116, v144 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v116, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:2144
	ds_load_u8 v116, v144 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v116, v104, 0xc0c0004
	ds_load_u8 v116, v144 offset:2272
	ds_load_u8 v117, v144 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v104, v116, 16, v104
	v_wmma_i32_16x16x16_iu8 v[128:135], v[108:111], v[104:107], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[112:115], v[104:107], v[136:143] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:3904
	ds_load_u8 v105, v144 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s16, v82
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s45, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 26
	s_add_i32 s16, s45, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s16, s16, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v145, v49, s18, 1
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:4032
	ds_load_u8 v106, v144 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:3648
	ds_load_u8 v107, v144 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:3776
	ds_load_u8 v108, v144 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:3392
	ds_load_u8 v105, v144 offset:3328
	v_lshl_or_b32 v106, v108, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3520
	ds_load_u8 v108, v144 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v108, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:3136
	ds_load_u8 v108, v144 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v108, v104, 0xc0c0004
	ds_load_u8 v108, v144 offset:3264
	ds_load_u8 v109, v144 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v108, 16, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v112
	ds_load_b128 v[112:115], v112 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[108:111], v[104:107], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[112:115], v[104:107], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:3936
	ds_load_u8 v105, v144 offset:3872
	v_cvt_f32_i32_e32 v125, v90
	v_cvt_f32_i32_e32 v124, v100
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v100, s17, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v101
	v_cvt_f32_i32_e32 v122, v102
	v_cvt_f32_i32_e32 v121, v103
	v_cvt_f32_i32_e32 v127, v88
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v89
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v100, 0x80000000, v84 :: v_dual_cndmask_b32 v101, 0x80000000, v83
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v145, 0x80000000, v145, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:4064
	ds_load_u8 v106, v144 offset:4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	v_add_nc_u32_e32 v84, s31, v84
	s_cselect_b32 s15, s15, 0
	s_add_i32 s14, s14, -1
	s_addk_i32 s45, 0x100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:3680
	ds_load_u8 v107, v144 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:3808
	ds_load_u8 v116, v144 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:3424
	ds_load_u8 v105, v144 offset:3360
	v_lshl_or_b32 v106, v116, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3552
	ds_load_u8 v116, v144 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v116, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:3168
	ds_load_u8 v116, v144 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v116, v104, 0xc0c0004
	ds_load_u8 v116, v144 offset:3296
	ds_load_u8 v117, v144 offset:3232
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v144, v51, s18, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_lshl_or_b32 v104, v116, 16, v104
	v_cvt_f32_i32_e32 v116, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[108:111], v[104:107], v[128:135] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v96
	v_cvt_f32_i32_e32 v110, v97
	v_cvt_f32_i32_e32 v109, v98
	v_cvt_f32_i32_e32 v108, v99
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v119, v129
	v_cvt_f32_i32_e32 v118, v130
	v_cvt_f32_i32_e32 v117, v131
	v_cvt_f32_i32_e32 v99, v132
	v_cvt_f32_i32_e32 v98, v133
	v_cvt_f32_i32_e32 v97, v134
	v_cvt_f32_i32_e32 v96, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[128:131], v100, s[36:39], 0 offen
	buffer_load_b128 v[132:135], v101, s[36:39], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[136:143], v[112:115], v[104:107], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v115, v92
	v_cvt_f32_i32_e32 v114, v93
	v_cvt_f32_i32_e32 v113, v94
	v_cvt_f32_i32_e32 v112, v95
	v_cvt_f32_i32_e32 v95, v136
	v_cvt_f32_i32_e32 v94, v137
	v_cvt_f32_i32_e32 v93, v138
	v_cvt_f32_i32_e32 v92, v139
	v_cvt_f32_i32_e32 v91, v140
	v_cvt_f32_i32_e32 v90, v141
	v_cvt_f32_i32_e32 v89, v142
	v_cvt_f32_i32_e32 v88, v143
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v136, v58, s18, 1
	v_add_lshl_u32 v137, v57, s18, 1
	v_add_lshl_u32 v138, v56, s18, 1
	v_add_lshl_u32 v139, v55, s18, 1
	v_add_lshl_u32 v140, v54, s18, 1
	v_add_lshl_u32 v141, v52, s18, 1
	v_add_lshl_u32 v142, v50, s18, 1
	v_add_lshl_u32 v143, v53, s18, 1
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_cndmask_b32 v137, 0x80000000, v137
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_cndmask_b32 v143, 0x80000000, v143
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v107, v132, v128, 0x5010400
	v_perm_b32 v106, v132, v128, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v128, v65, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v105, v133, v129, 0x5010400
	v_perm_b32 v104, v133, v129, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v129, v66, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v103, v134, v130, 0x5010400
	v_perm_b32 v102, v134, v130, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v130, v64, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v101, v135, v131, 0x5010400
	v_perm_b32 v100, v135, v131, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v131, v63, s18, 1
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v128, v128, s[4:7], 0 offen
	buffer_load_u16 v129, v129, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v132, v62, s18, 1
	v_add_lshl_u32 v133, v61, s18, 1
	v_add_lshl_u32 v134, v60, s18, 1
	v_add_lshl_u32 v135, v59, s18, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v132, 0x80000000, v132
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_cndmask_b32 v134, 0x80000000, v134
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	s_clause 0xf
	buffer_load_u16 v130, v130, s[40:43], 0 offen
	buffer_load_u16 v131, v131, s[40:43], 0 offen
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	buffer_load_u16 v133, v133, s[40:43], 0 offen
	buffer_load_u16 v134, v134, s[40:43], 0 offen
	buffer_load_u16 v135, v135, s[40:43], 0 offen
	buffer_load_u16 v136, v136, s[40:43], 0 offen
	buffer_load_u16 v137, v137, s[40:43], 0 offen
	buffer_load_u16 v138, v138, s[40:43], 0 offen
	buffer_load_u16 v139, v139, s[40:43], 0 offen
	buffer_load_u16 v140, v140, s[40:43], 0 offen
	buffer_load_u16 v141, v141, s[40:43], 0 offen
	buffer_load_u16 v142, v142, s[40:43], 0 offen
	buffer_load_u16 v143, v143, s[40:43], 0 offen
	buffer_load_u16 v144, v144, s[40:43], 0 offen
	buffer_load_u16 v145, v145, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s15, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s19, s18, 0
	s_barrier
	v_add_nc_u32_e32 v146, s19, v13
	s_mov_b32 s16, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s19, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s34, s19, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s14, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v146, v[9:12] offset:16384
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v11, 16, v128
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v128, 16, v130
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v11, v128 :: v_dual_lshlrev_b32 v12, 16, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v17, v9, v127 :: v_dual_lshlrev_b32 v10, 16, v144
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v127, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v18, v9, v126
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v126, 16, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v19, v9, v125
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v125, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v20, v9, v116
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v116, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v21, v9, v115
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v115, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v22, v9, v114
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v114, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v23, v9, v113
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v113, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v24, v9, v112
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v112, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v25, v9, v111
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v111, 16, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v26, v9, v110
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v110, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v27, v9, v109
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v109, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v28, v9, v108
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v108, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v29, v9, v124
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v30, v9, v123 :: v_dual_mul_f32 v9, v11, v10
	v_fmac_f32_e32 v31, v9, v122
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v11, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v11, v121
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v11, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v112, v11, v112 :: v_dual_add_nc_u32 v83, s31, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v42, v112, v95 :: v_dual_add_nc_u32 v85, s44, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v110, v11, v110
	v_mul_f32_e32 v121, v11, v128
	v_mul_f32_e32 v115, v11, v115
	v_mul_f32_e32 v113, v11, v113
	v_mul_f32_e32 v10, v11, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v44, v110, v93 :: v_dual_fmac_f32 v33, v121, v120
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v11, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v38, v115, v98 :: v_dual_add_nc_u32 v115, s33, v73
	v_fmac_f32_e32 v40, v113, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v96.l, 0xff, v107.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v34, v120, v119 :: v_dual_mul_f32 v119, v11, v126
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v112, 8, v107
	v_and_b16 v95.l, 0xff, v107.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v116, v11, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v110, 24, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v35, v119, v118 :: v_dual_fmac_f32 v48, v10, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v11, v125
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v93.l, 0xff, v106.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v37, v116, v99 :: v_dual_mul_f32 v12, v11, v12
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v114, v11, v114
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v36, v118, v117
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v117, 24, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v107, v11, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v93.h, 0xff, v105.l
	v_lshlrev_b16 v10.h, 8, v112.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v47, v12, v90
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.l, 0xff, v104.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v43, v107, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v94.l, 0xff, v106.l
	v_lshrrev_b32_e32 v107, 8, v106
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v11, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v109, 24, v105
	v_and_b16 v12.h, 0xff, v103.l
	v_lshrrev_b32_e32 v111, 24, v103
	v_and_b16 v10.l, 0xff, v103.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v45, v106, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v106, 8, v105
	v_and_b16 v92.l, 0xff, v105.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v105, v11, v108
	v_mul_f32_e32 v11, v11, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v108, 24, v104
	v_and_b16 v9.l, 0xff, v102.l
	v_lshrrev_b32_e32 v118, 24, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v46, v105, v91 :: v_dual_fmac_f32 v41, v11, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v11.h, 8, v117.l
	v_and_b16 v91.l, 0xff, v104.l
	v_lshrrev_b32_e32 v105, 8, v104
	v_lshrrev_b32_e32 v104, 8, v103
	v_lshrrev_b32_e32 v103, 8, v102
	v_and_b16 v9.h, 0xff, v102.h
	v_or_b16 v10.h, v96.l, v10.h
	v_and_b16 v11.l, 0xff, v101.l
	v_or_b16 v11.h, v95.l, v11.h
	v_lshrrev_b32_e32 v95, 8, v101
	v_lshlrev_b16 v88.l, 8, v107.l
	v_lshrrev_b32_e32 v96, 24, v101
	v_and_b16 v88.h, 0xff, v101.h
	v_lshlrev_b16 v89.l, 8, v110.l
	v_lshlrev_b16 v90.l, 8, v106.l
	v_lshrrev_b32_e32 v101, 8, v100
	v_lshlrev_b16 v90.h, 8, v109.l
	v_lshrrev_b32_e32 v102, 24, v100
	v_add_nc_u32_e32 v99, s33, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v39, v114, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v88.l, v94.l, v88.l
	v_or_b16 v89.l, v93.l, v89.l
	v_and_b16 v89.h, 0xff, v100.l
	v_or_b16 v90.l, v93.h, v90.l
	v_or_b16 v90.h, v92.l, v90.h
	v_and_b16 v91.h, 0xff, v100.h
	v_lshlrev_b16 v92.l, 8, v105.l
	v_lshlrev_b16 v92.h, 8, v108.l
	v_lshlrev_b16 v93.l, 8, v104.l
	v_lshlrev_b16 v93.h, 8, v111.l
	v_lshlrev_b16 v94.l, 8, v103.l
	v_lshlrev_b16 v94.h, 8, v118.l
	v_lshlrev_b16 v95.l, 8, v95.l
	v_lshlrev_b16 v95.h, 8, v96.l
	v_lshlrev_b16 v96.l, 8, v101.l
	v_lshlrev_b16 v96.h, 8, v102.l
	v_add_nc_u32_e32 v116, s33, v71
	v_add_nc_u32_e32 v98, s33, v72
	v_add_nc_u32_e32 v97, s33, v74
	v_add_nc_u32_e32 v114, s33, v75
	v_add_nc_u32_e32 v113, s33, v76
	v_or_b16 v91.l, v91.l, v92.l
	v_or_b16 v12.l, v12.l, v92.h
	v_or_b16 v12.h, v12.h, v93.l
	v_or_b16 v10.l, v10.l, v93.h
	v_or_b16 v9.l, v9.l, v94.l
	v_or_b16 v9.h, v9.h, v94.h
	v_or_b16 v11.l, v11.l, v95.l
	v_or_b16 v88.h, v88.h, v95.h
	v_or_b16 v89.h, v89.h, v96.l
	v_or_b16 v91.h, v91.h, v96.h
	ds_store_b16_d16_hi v99, v10
	ds_store_b16_d16_hi v99, v11 offset:64
	ds_store_b16 v116, v88
	ds_store_b16 v116, v89 offset:64
	ds_store_b16 v98, v90
	ds_store_b16_d16_hi v98, v90 offset:64
	ds_store_b16 v115, v91
	ds_store_b16 v115, v12 offset:64
	ds_store_b16_d16_hi v97, v12
	ds_store_b16 v97, v10 offset:64
	ds_store_b16 v99, v9 offset:640
	ds_store_b16_d16_hi v99, v9 offset:704
	ds_store_b16 v114, v11
	ds_store_b16_d16_hi v114, v88 offset:64
	ds_store_b16_d16_hi v113, v89
	ds_store_b16_d16_hi v113, v91 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v79, v68 :: v_dual_mov_b32 v80, v69
	s_addk_i32 s17, 0x200
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s34, 0, 0x5000
	s_add_i32 s33, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_xor_b32_e32 v6, v2, v78
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v7, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v107, v6, v77
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_xor_b32_e32 v108, 16, v107
	v_xor_b32_e32 v109, 32, v107
	v_xor_b32_e32 v110, 48, v107
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v88, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s16, v110
	v_add_nc_u32_e32 v10, s16, v109
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v11, s46, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[76:79], v10 offset:4096
	ds_load_b128 v[111:114], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v10, v11 offset:832
	ds_load_u8 v12, v11 offset:768
	ds_load_u8 v68, v11 offset:960
	ds_load_u8 v69, v11 offset:896
	ds_load_u8 v72, v11 offset:576
	ds_load_u8 v73, v11 offset:512
	ds_load_u8 v74, v11 offset:704
	ds_load_u8 v75, v11 offset:640
	ds_load_u8 v80, v11 offset:320
	ds_load_u8 v81, v11 offset:256
	ds_load_u8 v82, v11 offset:448
	ds_load_u8 v83, v11 offset:384
	ds_load_u8 v84, v11 offset:64
	ds_load_u8 v85, v11
	ds_load_u8 v86, v11 offset:192
	ds_load_u8 v87, v11 offset:128
	ds_load_u8 v105, v11 offset:992
	ds_load_u8 v106, v11 offset:928
	ds_load_u8 v135, v11 offset:864
	ds_load_u8 v136, v11 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s16, v107
	v_add_nc_u32_e32 v70, s16, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v12, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v68, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v69, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v72, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v73, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v87, v86, 0xc0c0004
	v_lshl_or_b32 v100, v12, 16, v10
	v_mov_b32_e32 v88, s11
	ds_load_u8 v10, v11 offset:1856
	ds_load_u8 v12, v11 offset:1792
	v_lshl_or_b32 v99, v69, 16, v68
	v_mov_b32_e32 v83, s6
	ds_load_u8 v68, v11 offset:1984
	ds_load_u8 v69, v11 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[123:126], v70 offset:4096
	ds_load_b128 v[127:130], v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v98, v73, 16, v72
	v_lshl_or_b32 v97, v75, 16, v74
	v_mov_b32_e32 v86, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v71 offset:4096
	ds_load_b128 v[119:122], v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v11 offset:1600
	ds_load_u8 v71, v11 offset:1536
	ds_load_u8 v72, v11 offset:1728
	ds_load_u8 v73, v11 offset:1664
	ds_load_u8 v74, v11 offset:1344
	ds_load_u8 v75, v11 offset:1280
	ds_load_u8 v101, v11 offset:1472
	ds_load_u8 v102, v11 offset:1408
	ds_load_u8 v149, v11 offset:2016
	ds_load_u8 v150, v11 offset:1952
	ds_load_u8 v151, v11 offset:1888
	ds_load_u8 v152, v11 offset:1824
	ds_load_u8 v131, v11 offset:3008
	ds_load_u8 v132, v11 offset:2944
	ds_load_u8 v137, v11 offset:736
	ds_load_u8 v139, v11 offset:672
	ds_load_u8 v140, v11 offset:608
	ds_load_u8 v141, v11 offset:544
	ds_load_u8 v142, v11 offset:480
	ds_load_u8 v143, v11 offset:416
	ds_load_u8 v144, v11 offset:352
	ds_load_u8 v145, v11 offset:288
	ds_load_u8 v80, v11 offset:224
	ds_load_u8 v146, v11 offset:160
	ds_load_u8 v147, v11 offset:96
	ds_load_u8 v148, v11 offset:32
	ds_load_u8 v157, v11 offset:1504
	ds_load_u8 v158, v11 offset:1440
	ds_load_u8 v159, v11 offset:1376
	ds_load_u8 v160, v11 offset:1312
	ds_load_u8 v161, v11 offset:1248
	ds_load_u8 v162, v11 offset:1184
	ds_load_u8 v163, v11 offset:1120
	ds_load_u8 v164, v11 offset:1056
	ds_load_u8 v173, v11 offset:2528
	ds_load_u8 v174, v11 offset:2464
	ds_load_u8 v175, v11 offset:2400
	ds_load_u8 v176, v11 offset:2336
	ds_load_u8 v177, v11 offset:2272
	ds_load_u8 v178, v11 offset:2208
	ds_load_u8 v179, v11 offset:2144
	ds_load_u8 v180, v11 offset:2080
	v_mov_b32_e32 v87, s10
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_mov_b32_e32 v85, s8
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v11 offset:1088
	ds_load_u8 v103, v11 offset:1024
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v71, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v72, v75, v74, 0xc0c0004
	ds_load_u8 v74, v11 offset:2880
	ds_load_u8 v75, v11 offset:2816
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v11 offset:1216
	ds_load_u8 v104, v11 offset:1152
	ds_load_u8 v153, v11 offset:1760
	ds_load_u8 v154, v11 offset:1696
	ds_load_u8 v155, v11 offset:1632
	ds_load_u8 v156, v11 offset:1568
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v73, v102, v101, 0xc0c0004
	v_dual_mov_b32 v84, s7 :: v_dual_mov_b32 v81, s4
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v11 offset:2240
	ds_load_u8 v134, v11 offset:2176
	ds_load_u8 v169, v11 offset:2784
	ds_load_u8 v170, v11 offset:2720
	ds_load_u8 v171, v11 offset:2656
	ds_load_u8 v172, v11 offset:2592
	v_lshl_or_b32 v102, v73, 16, v72
	v_mov_b32_e32 v82, s5
	ds_load_u8 v189, v11 offset:3808
	ds_load_u8 v190, v11 offset:3744
	ds_load_u8 v191, v11 offset:3680
	ds_load_u8 v192, v11 offset:3616
	ds_load_u8 v193, v11 offset:3552
	ds_load_u8 v194, v11 offset:3488
	ds_load_u8 v195, v11 offset:3424
	ds_load_u8 v196, v11 offset:3360
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v80, v146, v80, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[89:96], v[119:122], v[97:100], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v12, v103, v12, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v69, v104, v69, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v10
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v11 offset:2112
	ds_load_u8 v133, v11 offset:2048
	v_lshl_or_b32 v103, v71, 16, v70
	v_lshl_or_b32 v101, v69, 16, v12
	ds_load_u8 v10, v11 offset:2624
	ds_load_u8 v12, v11 offset:2560
	ds_load_u8 v68, v11 offset:2752
	ds_load_u8 v69, v11 offset:2688
	ds_load_u8 v70, v11 offset:2368
	ds_load_u8 v71, v11 offset:2304
	ds_load_u8 v72, v11 offset:2496
	ds_load_u8 v73, v11 offset:2432
	ds_load_u8 v165, v11 offset:3040
	ds_load_u8 v166, v11 offset:2976
	ds_load_u8 v167, v11 offset:2912
	ds_load_u8 v168, v11 offset:2848
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v138, v134, v132, 0xc0c0004
	v_lshl_or_b32 v134, v131, 16, v74
	v_wmma_i32_16x16x16_iu8 v[89:96], v[127:130], v[101:104], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v73, v72, 0xc0c0004
	v_perm_b32 v70, v133, v75, 0xc0c0004
	ds_load_u8 v71, v11 offset:3904
	ds_load_u8 v72, v11 offset:3840
	ds_load_u8 v73, v11 offset:4032
	ds_load_u8 v75, v11 offset:3968
	v_lshl_or_b32 v133, v12, 16, v10
	v_lshl_or_b32 v132, v69, 16, v68
	v_lshl_or_b32 v131, v138, 16, v70
	ds_load_u8 v10, v11 offset:3648
	ds_load_u8 v12, v11 offset:3584
	ds_load_u8 v68, v11 offset:3776
	ds_load_u8 v69, v11 offset:3712
	ds_load_u8 v70, v11 offset:3392
	ds_load_u8 v74, v11 offset:3328
	ds_load_u8 v181, v11 offset:3520
	ds_load_u8 v182, v11 offset:3456
	ds_load_u8 v183, v11 offset:4064
	ds_load_u8 v184, v11 offset:4000
	ds_load_u8 v185, v11 offset:3936
	ds_load_u8 v186, v11 offset:3872
	v_wmma_i32_16x16x16_iu8 v[89:96], v[111:114], v[131:134], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v69, v68, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v74, v70, 0xc0c0004
	v_perm_b32 v72, v75, v73, 0xc0c0004
	ds_load_u8 v73, v11 offset:3136
	ds_load_u8 v75, v11 offset:3072
	ds_load_u8 v187, v11 offset:3264
	ds_load_u8 v188, v11 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v11 offset:3296
	ds_load_u8 v198, v11 offset:3232
	ds_load_u8 v199, v11 offset:3168
	ds_load_u8 v11, v11 offset:3104
	v_lshl_or_b32 v138, v72, 16, v71
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v200, v75, v73, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[115:118], v[97:100], v[81:88] neg_lo:[1,1,0]
	v_perm_b32 v97, v136, v135, 0xc0c0004
	v_perm_b32 v98, v106, v105, 0xc0c0004
	v_perm_b32 v99, v141, v140, 0xc0c0004
	v_perm_b32 v100, v139, v137, 0xc0c0004
	v_perm_b32 v105, v145, v144, 0xc0c0004
	v_perm_b32 v106, v143, v142, 0xc0c0004
	v_perm_b32 v135, v148, v147, 0xc0c0004
	v_lshl_or_b32 v142, v98, 16, v97
	v_lshl_or_b32 v141, v100, 16, v99
	v_perm_b32 v136, v160, v159, 0xc0c0004
	v_lshl_or_b32 v140, v106, 16, v105
	v_lshl_or_b32 v139, v80, 16, v135
	v_perm_b32 v80, v152, v151, 0xc0c0004
	v_perm_b32 v105, v150, v149, 0xc0c0004
	v_perm_b32 v106, v156, v155, 0xc0c0004
	v_perm_b32 v135, v154, v153, 0xc0c0004
	v_perm_b32 v137, v158, v157, 0xc0c0004
	v_perm_b32 v143, v164, v163, 0xc0c0004
	v_perm_b32 v144, v162, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[123:126], v[101:104], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[119:122], v[139:142], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v105, 16, v80
	v_lshl_or_b32 v121, v135, 16, v106
	v_lshl_or_b32 v120, v137, 16, v136
	v_lshl_or_b32 v119, v144, 16, v143
	v_perm_b32 v80, v168, v167, 0xc0c0004
	v_perm_b32 v105, v166, v165, 0xc0c0004
	v_perm_b32 v106, v172, v171, 0xc0c0004
	v_perm_b32 v135, v170, v169, 0xc0c0004
	v_perm_b32 v136, v176, v175, 0xc0c0004
	v_perm_b32 v137, v174, v173, 0xc0c0004
	v_perm_b32 v143, v180, v179, 0xc0c0004
	v_perm_b32 v144, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[97:104], v[127:130], v[119:122], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v105, 16, v80
	v_lshl_or_b32 v129, v135, 16, v106
	v_lshl_or_b32 v128, v137, 16, v136
	v_lshl_or_b32 v127, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[81:88], v[115:118], v[139:142], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_lshl_or_b32 v137, v12, 16, v10
	v_perm_b32 v10, v186, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[97:104], v[111:114], v[127:130], v[97:104] neg_lo:[1,1,0]
	v_perm_b32 v12, v184, v183, 0xc0c0004
	v_perm_b32 v80, v192, v191, 0xc0c0004
	v_perm_b32 v105, v190, v189, 0xc0c0004
	v_perm_b32 v106, v196, v195, 0xc0c0004
	v_perm_b32 v111, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v199, 0xc0c0004
	v_perm_b32 v115, v198, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[123:126], v[119:122], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v181, 16, v197
	v_lshl_or_b32 v135, v187, 16, v200
	v_wmma_i32_16x16x16_iu8 v[68:75], v[76:79], v[131:134], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v12, 16, v10
	v_lshl_or_b32 v113, v105, 16, v80
	v_lshl_or_b32 v112, v111, 16, v106
	v_lshl_or_b32 v111, v115, 16, v11
	v_wmma_i32_16x16x16_iu8 v[81:88], v[76:79], v[127:130], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[6:9], v[135:138], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[2:5], v[135:138], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[6:9], v[111:114], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[2:5], v[111:114], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v90
	v_cvt_f32_i32_e32 v3, v91
	v_cvt_f32_i32_e32 v4, v92
	v_cvt_f32_i32_e32 v5, v93
	v_cvt_f32_i32_e32 v6, v94
	v_cvt_f32_i32_e32 v7, v95
	v_cvt_f32_i32_e32 v8, v96
	v_cvt_f32_i32_e32 v9, v68
	v_cvt_f32_i32_e32 v11, v69
	v_cvt_f32_i32_e32 v12, v70
	v_cvt_f32_i32_e32 v68, v71
	v_cvt_f32_i32_e32 v69, v72
	v_cvt_f32_i32_e32 v70, v73
	v_cvt_f32_i32_e32 v71, v74
	v_cvt_f32_i32_e32 v72, v75
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v10, v89
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s45, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s45, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v89, v65, s4, 1
	v_add_lshl_u32 v90, v66, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v91, v64, s4, 1
	v_add_lshl_u32 v99, v56, s4, 1
	v_add_lshl_u32 v92, v63, s4, 1
	v_add_lshl_u32 v100, v55, s4, 1
	v_add_lshl_u32 v93, v62, s4, 1
	v_add_lshl_u32 v101, v54, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v94, v61, s4, 1
	v_add_lshl_u32 v102, v52, s4, 1
	v_add_lshl_u32 v95, v60, s4, 1
	v_add_lshl_u32 v96, v59, s4, 1
	v_add_lshl_u32 v97, v58, s4, 1
	v_add_lshl_u32 v98, v57, s4, 1
	v_add_lshl_u32 v103, v50, s4, 1
	v_add_lshl_u32 v104, v53, s4, 1
	v_add_lshl_u32 v105, v51, s4, 1
	v_add_lshl_u32 v106, v49, s4, 1
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	s_clause 0xf
	buffer_load_u16 v91, v91, s[28:31], 0 offen
	buffer_load_u16 v92, v92, s[28:31], 0 offen
	buffer_load_u16 v93, v93, s[28:31], 0 offen
	buffer_load_u16 v94, v94, s[28:31], 0 offen
	buffer_load_u16 v95, v95, s[28:31], 0 offen
	buffer_load_u16 v96, v96, s[28:31], 0 offen
	buffer_load_u16 v97, v97, s[28:31], 0 offen
	buffer_load_u16 v98, v98, s[28:31], 0 offen
	buffer_load_u16 v99, v99, s[28:31], 0 offen
	buffer_load_u16 v100, v100, s[28:31], 0 offen
	buffer_load_u16 v101, v101, s[28:31], 0 offen
	buffer_load_u16 v102, v102, s[28:31], 0 offen
	buffer_load_u16 v103, v103, s[28:31], 0 offen
	buffer_load_u16 v104, v104, s[28:31], 0 offen
	buffer_load_u16 v105, v105, s[28:31], 0 offen
	buffer_load_u16 v106, v106, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v89, v89, s[12:15], 0 offen
	buffer_load_u16 v90, v90, s[12:15], 0 offen
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v141, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v107, s33, v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s33, v110
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v67, s34, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v109, s33, v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v141, s11 :: v_dual_mov_b32 v140, s10
	v_mov_b32_e32 v138, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[142:145], v1 offset:4096
	ds_load_b128 v[146:149], v1
	ds_load_b128 v[150:153], v109 offset:4096
	ds_load_b128 v[154:157], v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v134, s4 :: v_dual_add_nc_u32 v1, s33, v108
	v_mov_b32_e32 v136, s6
	ds_load_u8 v108, v67 offset:832
	ds_load_u8 v109, v67 offset:768
	ds_load_u8 v110, v67 offset:960
	ds_load_u8 v111, v67 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[158:161], v107 offset:4096
	ds_load_b128 v[162:165], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v107, v67 offset:576
	ds_load_u8 v112, v67 offset:512
	ds_load_u8 v113, v67 offset:704
	ds_load_u8 v114, v67 offset:640
	ds_load_u8 v115, v67 offset:320
	ds_load_u8 v116, v67 offset:256
	ds_load_u8 v117, v67 offset:448
	ds_load_u8 v118, v67 offset:384
	ds_load_u8 v119, v67 offset:64
	ds_load_u8 v120, v67
	ds_load_u8 v121, v67 offset:192
	ds_load_u8 v122, v67 offset:128
	ds_load_u8 v178, v67 offset:992
	ds_load_u8 v179, v67 offset:928
	ds_load_u8 v180, v67 offset:864
	ds_load_u8 v182, v67 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	ds_load_u8 v183, v67 offset:736
	ds_load_u8 v184, v67 offset:672
	ds_load_u8 v185, v67 offset:608
	ds_load_u8 v186, v67 offset:544
	ds_load_u8 v187, v67 offset:480
	ds_load_u8 v188, v67 offset:416
	ds_load_u8 v189, v67 offset:352
	ds_load_u8 v190, v67 offset:288
	ds_load_u8 v191, v67 offset:224
	ds_load_u8 v192, v67 offset:160
	ds_load_u8 v193, v67 offset:96
	ds_load_u8 v194, v67 offset:32
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v107, v112, v107, 0xc0c0004
	v_lshl_or_b32 v129, v109, 16, v108
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v110, v114, v113, 0xc0c0004
	ds_load_u8 v203, v67 offset:1504
	ds_load_u8 v204, v67 offset:1440
	ds_load_u8 v205, v67 offset:1376
	ds_load_u8 v206, v67 offset:1312
	ds_load_u8 v207, v67 offset:1248
	ds_load_u8 v208, v67 offset:1184
	ds_load_u8 v209, v67 offset:1120
	ds_load_u8 v210, v67 offset:1056
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v111, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v112, v118, v117, 0xc0c0004
	v_lshl_or_b32 v128, v110, 16, v107
	ds_load_u8 v107, v67 offset:1856
	ds_load_u8 v108, v67 offset:1792
	ds_load_u8 v109, v67 offset:1984
	ds_load_u8 v118, v67 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[166:169], v1 offset:4096
	ds_load_b128 v[170:173], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v113, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v114, v122, v121, 0xc0c0004
	ds_load_u8 v1, v67 offset:1600
	ds_load_u8 v119, v67 offset:1536
	ds_load_u8 v120, v67 offset:1728
	ds_load_u8 v121, v67 offset:1664
	ds_load_u8 v122, v67 offset:1344
	ds_load_u8 v123, v67 offset:1280
	ds_load_u8 v124, v67 offset:1472
	ds_load_u8 v125, v67 offset:1408
	ds_load_u8 v195, v67 offset:2016
	ds_load_u8 v196, v67 offset:1952
	ds_load_u8 v197, v67 offset:1888
	ds_load_u8 v198, v67 offset:1824
	ds_load_u8 v221, v67 offset:2272
	ds_load_u8 v222, v67 offset:2208
	ds_load_u8 v223, v67 offset:2144
	ds_load_u8 v224, v67 offset:2080
	v_lshl_or_b32 v127, v112, 16, v111
	v_mov_b32_e32 v139, s9
	v_lshl_or_b32 v126, v114, 16, v113
	v_mov_b32_e32 v137, s7
	v_mov_b32_e32 v135, s5
	ds_load_u8 v233, v67 offset:3808
	ds_load_u8 v234, v67 offset:3744
	ds_load_u8 v235, v67 offset:3680
	ds_load_u8 v236, v67 offset:3616
	ds_load_u8 v237, v67 offset:3552
	ds_load_u8 v238, v67 offset:3488
	ds_load_u8 v239, v67 offset:3424
	ds_load_u8 v240, v67 offset:3360
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v1, v119, v1, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[162:165], v[126:129], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v120, v123, v122, 0xc0c0004
	ds_load_u8 v122, v67 offset:2880
	ds_load_u8 v123, v67 offset:2816
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v67 offset:1088
	ds_load_u8 v130, v67 offset:1024
	v_perm_b32 v109, v118, v109, 0xc0c0004
	ds_load_u8 v118, v67 offset:1216
	ds_load_u8 v131, v67 offset:1152
	ds_load_u8 v199, v67 offset:1760
	ds_load_u8 v200, v67 offset:1696
	ds_load_u8 v201, v67 offset:1632
	ds_load_u8 v202, v67 offset:1568
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v121, v125, v124, 0xc0c0004
	ds_load_u8 v124, v67 offset:3008
	ds_load_u8 v125, v67 offset:2944
	v_lshl_or_b32 v132, v119, 16, v1
	v_lshl_or_b32 v133, v109, 16, v107
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v108, v130, v108, 0xc0c0004
	ds_load_u8 v123, v67 offset:2112
	ds_load_u8 v174, v67 offset:2048
	v_lshl_or_b32 v131, v121, 16, v120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_lshl_or_b32 v130, v118, 16, v108
	ds_load_u8 v1, v67 offset:2624
	ds_load_u8 v107, v67 offset:2560
	ds_load_u8 v108, v67 offset:2752
	ds_load_u8 v109, v67 offset:2688
	ds_load_u8 v118, v67 offset:2368
	ds_load_u8 v119, v67 offset:2304
	ds_load_u8 v120, v67 offset:2496
	ds_load_u8 v121, v67 offset:2432
	ds_load_u8 v211, v67 offset:3040
	ds_load_u8 v212, v67 offset:2976
	ds_load_u8 v213, v67 offset:2912
	ds_load_u8 v214, v67 offset:2848
	ds_load_u8 v125, v67 offset:2240
	ds_load_u8 v175, v67 offset:2176
	ds_load_u8 v215, v67 offset:2784
	ds_load_u8 v216, v67 offset:2720
	ds_load_u8 v217, v67 offset:2656
	ds_load_u8 v218, v67 offset:2592
	v_lshl_or_b32 v177, v124, 16, v122
	v_wmma_i32_16x16x16_iu8 v[110:117], v[170:173], v[130:133], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v107, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v109, v108, 0xc0c0004
	ds_load_u8 v108, v67 offset:2528
	ds_load_u8 v109, v67 offset:2464
	ds_load_u8 v219, v67 offset:2400
	ds_load_u8 v220, v67 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	v_perm_b32 v120, v174, v123, 0xc0c0004
	ds_load_u8 v121, v67 offset:3904
	ds_load_u8 v123, v67 offset:3840
	ds_load_u8 v181, v67 offset:4032
	ds_load_u8 v225, v67 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v175, v125, 0xc0c0004
	v_lshl_or_b32 v176, v107, 16, v1
	v_lshl_or_b32 v175, v119, 16, v118
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v174, v125, 16, v120
	ds_load_u8 v1, v67 offset:3648
	ds_load_u8 v107, v67 offset:3584
	ds_load_u8 v118, v67 offset:3776
	ds_load_u8 v119, v67 offset:3712
	ds_load_u8 v120, v67 offset:3392
	ds_load_u8 v122, v67 offset:3328
	ds_load_u8 v124, v67 offset:3520
	ds_load_u8 v125, v67 offset:3456
	ds_load_u8 v226, v67 offset:4064
	ds_load_u8 v227, v67 offset:4000
	ds_load_u8 v228, v67 offset:3936
	ds_load_u8 v229, v67 offset:3872
	v_wmma_i32_16x16x16_iu8 v[110:117], v[154:157], v[174:177], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v107, v1, 0xc0c0004
	v_perm_b32 v121, v123, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v119, v118, 0xc0c0004
	v_perm_b32 v123, v225, v181, 0xc0c0004
	ds_load_u8 v225, v67 offset:3136
	ds_load_u8 v230, v67 offset:3072
	ds_load_u8 v231, v67 offset:3264
	ds_load_u8 v232, v67 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v241, v122, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v242, v125, v124, 0xc0c0004
	ds_load_u8 v243, v67 offset:3296
	ds_load_u8 v244, v67 offset:3232
	ds_load_u8 v245, v67 offset:3168
	ds_load_u8 v67, v67 offset:3104
	v_lshl_or_b32 v181, v123, 16, v121
	v_wmma_i32_16x16x16_iu8 v[118:125], v[158:161], v[126:129], v[134:141] neg_lo:[1,1,0]
	v_perm_b32 v126, v182, v180, 0xc0c0004
	v_perm_b32 v127, v179, v178, 0xc0c0004
	v_perm_b32 v128, v186, v185, 0xc0c0004
	v_perm_b32 v129, v184, v183, 0xc0c0004
	v_perm_b32 v178, v190, v189, 0xc0c0004
	v_perm_b32 v179, v188, v187, 0xc0c0004
	v_perm_b32 v180, v194, v193, 0xc0c0004
	v_perm_b32 v182, v192, v191, 0xc0c0004
	v_lshl_or_b32 v185, v127, 16, v126
	v_lshl_or_b32 v184, v129, 16, v128
	v_lshl_or_b32 v183, v179, 16, v178
	v_perm_b32 v178, v198, v197, 0xc0c0004
	v_lshl_or_b32 v182, v182, 16, v180
	v_perm_b32 v179, v196, v195, 0xc0c0004
	v_perm_b32 v180, v202, v201, 0xc0c0004
	v_perm_b32 v186, v200, v199, 0xc0c0004
	v_perm_b32 v187, v206, v205, 0xc0c0004
	v_perm_b32 v188, v204, v203, 0xc0c0004
	v_perm_b32 v189, v210, v209, 0xc0c0004
	v_perm_b32 v190, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[130:133], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[162:165], v[182:185], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v179, 16, v178
	v_lshl_or_b32 v164, v186, 16, v180
	v_lshl_or_b32 v163, v188, 16, v187
	v_lshl_or_b32 v162, v190, 16, v189
	v_perm_b32 v178, v214, v213, 0xc0c0004
	v_perm_b32 v179, v212, v211, 0xc0c0004
	v_perm_b32 v180, v218, v217, 0xc0c0004
	v_perm_b32 v186, v216, v215, 0xc0c0004
	v_perm_b32 v187, v220, v219, 0xc0c0004
	v_perm_b32 v188, v222, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[126:133], v[170:173], v[162:165], v[126:133] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v179, 16, v178
	v_lshl_or_b32 v172, v186, 16, v180
	v_lshl_or_b32 v171, v108, 16, v187
	v_lshl_or_b32 v170, v188, 16, v109
	v_wmma_i32_16x16x16_iu8 v[134:141], v[158:161], v[182:185], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v225, v230, v225, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v230, v232, v231, 0xc0c0004
	v_lshl_or_b32 v180, v107, 16, v1
	v_wmma_i32_16x16x16_iu8 v[126:133], v[154:157], v[170:173], v[126:133] neg_lo:[1,1,0]
	v_perm_b32 v1, v229, v228, 0xc0c0004
	v_perm_b32 v107, v227, v226, 0xc0c0004
	v_perm_b32 v108, v236, v235, 0xc0c0004
	v_perm_b32 v109, v234, v233, 0xc0c0004
	v_perm_b32 v154, v240, v239, 0xc0c0004
	v_perm_b32 v155, v238, v237, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v245, 0xc0c0004
	v_perm_b32 v158, v244, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[134:141], v[166:169], v[162:165], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v179, v242, 16, v241
	v_lshl_or_b32 v178, v230, 16, v225
	v_wmma_i32_16x16x16_iu8 v[118:125], v[150:153], v[174:177], v[118:125] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v107, 16, v1
	v_lshl_or_b32 v156, v109, 16, v108
	v_lshl_or_b32 v155, v155, 16, v154
	v_lshl_or_b32 v154, v158, 16, v67
	v_wmma_i32_16x16x16_iu8 v[134:141], v[150:153], v[170:173], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[146:149], v[178:181], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[142:145], v[178:181], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[146:149], v[154:157], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[142:145], v[154:157], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
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
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s17, s4
	v_mov_b16_e32 v67.l, 0
	s_ashr_i32 s4, s4, 6
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, v90.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v65, v65, s4, 1
	v_add_lshl_u32 v66, v66, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v64, v64, s4, 1
	v_add_lshl_u32 v63, v63, s4, 1
	v_add_lshl_u32 v62, v62, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v61, v61, s4, 1
	v_add_lshl_u32 v60, v60, s4, 1
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v58, v58, s4, 1
	v_add_lshl_u32 v57, v57, s4, 1
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_clause 0x7
	buffer_load_u16 v64, v64, s[28:31], 0 offen
	buffer_load_u16 v63, v63, s[28:31], 0 offen
	buffer_load_u16 v62, v62, s[28:31], 0 offen
	buffer_load_u16 v61, v61, s[28:31], 0 offen
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v56, v56, s4, 1
	v_add_lshl_u32 v55, v55, s4, 1
	v_add_lshl_u32 v54, v54, s4, 1
	v_add_lshl_u32 v52, v52, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v65, v65, s[12:15], 0 offen
	buffer_load_u16 v66, v66, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v50, v50, s4, 1
	v_add_lshl_u32 v53, v53, s4, 1
	v_add_lshl_u32 v51, v51, s4, 1
	v_add_lshl_u32 v49, v49, s4, 1
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	s_clause 0x7
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v54, v54, s[28:31], 0 offen
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	v_mov_b16_e32 v90.h, v106.l
	v_mov_b16_e32 v91.h, v105.l
	v_mov_b16_e32 v92.h, v104.l
	v_mov_b16_e32 v93.h, v103.l
	v_mov_b16_e32 v94.h, v102.l
	v_mov_b16_e32 v95.h, v101.l
	v_mov_b16_e32 v96.h, v100.l
	v_mov_b16_e32 v97.h, v99.l
	v_mov_b16_e32 v98.h, v98.l
	v_mov_b16_e32 v99.h, v97.l
	v_mov_b16_e32 v100.h, v96.l
	v_mov_b16_e32 v101.h, v95.l
	v_mov_b16_e32 v102.h, v94.l
	v_mov_b16_e32 v103.h, v93.l
	v_mov_b16_e32 v104.h, v92.l
	v_mov_b16_e32 v105.h, v91.l
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v107, 7, v14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v90.l, v67.l
	v_mov_b16_e32 v91.l, v67.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v106, 0x7f, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v92.l, v67.l
	v_mov_b16_e32 v93.l, v67.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v108, 14, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v94.l, v67.l
	v_mov_b16_e32 v95.l, v67.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v96.l, v67.l
	v_mov_b16_e32 v97.l, v67.l
	v_mov_b16_e32 v98.l, v67.l
	v_mov_b16_e32 v99.l, v67.l
	v_mov_b16_e32 v100.l, v67.l
	v_mov_b16_e32 v101.l, v67.l
	v_mov_b16_e32 v102.l, v67.l
	v_mov_b16_e32 v103.l, v67.l
	v_mov_b16_e32 v104.l, v67.l
	v_mov_b16_e32 v105.l, v67.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v149, v67, v97 :: v_dual_lshlrev_b32 v110, 6, v16
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v16, s35, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v142, v67, v90
	v_mul_f32_e32 v143, v67, v91
	v_mul_f32_e32 v144, v67, v92
	v_mul_f32_e32 v145, v67, v93
	v_dual_mul_f32 v146, v67, v94 :: v_dual_lshlrev_b32 v107, 11, v108
	v_dual_mul_f32 v147, v67, v95 :: v_dual_and_b32 v0, 0x78, v0
	v_mul_f32_e32 v151, v67, v99
	v_mul_f32_e32 v148, v67, v96
	v_mul_f32_e32 v150, v67, v98
	v_mul_f32_e32 v152, v67, v100
	v_mul_f32_e32 v153, v67, v101
	v_mul_f32_e32 v154, v67, v102
	v_mul_f32_e32 v155, v67, v103
	v_mul_f32_e32 v156, v67, v104
	v_mul_f32_e32 v157, v67, v105
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v67.h, v89.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v15, 3, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v142, v88, v41
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s38, s27, s35
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v109, 0x840, 0, s0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v88, v67, v91
	v_mul_f32_e32 v91, v67, v93
	v_mul_f32_e32 v93, v67, v95
	v_mul_f32_e32 v95, v67, v97
	v_mul_f32_e32 v97, v67, v99
	v_mul_f32_e32 v99, v67, v101
	v_mul_f32_e32 v101, v67, v103
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s38, s26
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v0, v109
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v89, s38, v106, v16
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v143, v87, v48
	v_fma_f32 v3, v101, v3, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v87, v67, v90
	v_mul_f32_e32 v90, v67, v92
	v_mul_f32_e32 v92, v67, v94
	v_mul_f32_e32 v94, v67, v96
	v_mul_f32_e32 v96, v67, v98
	v_mul_f32_e32 v98, v67, v100
	v_mul_f32_e32 v100, v67, v102
	v_mul_f32_e32 v102, v67, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v19, v3, s2
	v_cndmask_b32_e64 v41, v41, v15, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v98, v6, v22
	v_fma_f32 v4, v100, v4, v20
	v_fma_f32 v79, v151, v79, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v16, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v149, v81, v42
	v_fma_f32 v83, v147, v83, v44
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v39, v79, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v145, v85, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v81, s2
	v_cndmask_b32_e64 v44, v44, v83, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v85, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s27, s35, 1
	s_lshl_b32 s37, s35, 2
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s33, s35, 6
	s_lshl_b32 s36, s35, 3
	s_mul_i32 s31, s35, 10
	s_mul_i32 s30, s35, 12
	s_mul_i32 s29, s35, 14
	s_lshl_b32 s34, s35, 4
	s_mul_i32 s28, s35, 18
	s_mul_i32 s23, s35, 20
	s_mul_i32 s22, s35, 22
	s_mul_i32 s21, s35, 24
	s_mul_i32 s20, s35, 26
	s_mul_i32 s19, s35, 28
	s_mul_i32 s18, s35, 30
	s_lshl_b32 s0, s35, 5
	s_mul_i32 s17, s35, 34
	s_mul_i32 s16, s35, 36
	s_mul_i32 s13, s35, 38
	s_mul_i32 s12, s35, 40
	s_mul_i32 s11, s35, 42
	s_mul_i32 s10, s35, 44
	s_mul_i32 s9, s35, 46
	s_mul_i32 s8, s35, 48
	s_mul_i32 s7, s35, 50
	s_mul_i32 s6, s35, 52
	s_mul_i32 s5, s35, 54
	s_mul_i32 s4, s35, 56
	s_mul_i32 s1, s35, 58
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v19, 16, v61
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v67, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v146, v84, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v10, v67, v10, v17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v67, v0, v107, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v84, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, v17, v10, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v10, 16, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v87, v72, v32
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v144, v86, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v15, s2
	v_cndmask_b32_e64 v15, v22, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v22, 16, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v95, v9, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v20, v4, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v4, 16, v65
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v20, 16, v60
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v25, v9, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v97, v7, v23
	v_fma_f32 v12, v93, v12, v27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v156, v74, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v4, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v96, v8, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v23, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v57
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v4, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v92, v68, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v8, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v8, 16, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v73, v157, v73, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v27, v12, s2
	v_cndmask_b32_e64 v28, v28, v68, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v68, 0, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v153, v77, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v33, v73, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v88, v71, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v27, 16, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v154, v76, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v77, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v4, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v33, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v33, 16, v52
	v_lshlrev_b32_e32 v52, 16, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v4, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v94, v11, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v4, v27
	v_mul_f32_e32 v72, v4, v51
	v_mul_f32_e32 v10, v8, v10
	v_mul_f32_e32 v20, v8, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v26, v11, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v26, 16, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v99, v5, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v8, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v152, v78, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v74, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v21, v5, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v21, 16, v59
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v59, v4, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v102, v2, v18
	v_fma_f32 v82, v148, v82, v43
	v_fma_f32 v70, v90, v70, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v54, v4, v17
	v_mul_f32_e32 v56, v4, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v18, v2, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v91, v69, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v82, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v4, v21
	v_mul_f32_e32 v60, v4, v23
	v_mul_f32_e32 v55, v4, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v69, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v62, v4, v26
	v_mul_f32_e32 v17, v8, v17
	v_mul_f32_e32 v22, v8, v22
	v_mul_f32_e32 v26, v8, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v76, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v8, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v53, v1, v0
	v_fma_f32 v53, v55, v112, v3
	v_fma_f32 v55, v57, v114, v5
	v_fma_f32 v57, v59, v116, v7
	v_fma_f32 v59, v61, v118, v9
	v_fma_f32 v61, v63, v120, v12
	v_fma_f32 v63, v65, v122, v29
	v_fma_f32 v65, v72, v124, v31
	v_fma_f32 v72, v10, v126, v39
	v_fma_f32 v20, v20, v130, v37
	v_fma_f32 v77, v25, v134, v42
	v_fma_f32 v75, v155, v75, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v78, s2
	v_cndmask_b32_e64 v30, v30, v70, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v4, v33
	v_mul_f32_e32 v66, v4, v52
	v_mul_f32_e32 v4, v4, v49
	v_mul_f32_e32 v18, v8, v18
	v_mul_f32_e32 v21, v8, v21
	v_mul_f32_e32 v23, v8, v23
	v_mul_f32_e32 v27, v8, v27
	v_mul_f32_e32 v33, v8, v33
	v_mul_f32_e32 v50, v8, v50
	v_mul_f32_e32 v52, v8, v52
	v_mul_f32_e32 v51, v8, v51
	v_mul_f32_e32 v8, v8, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v54, v111, v2
	v_fma_f32 v54, v56, v113, v6
	v_fma_f32 v56, v58, v115, v15
	v_fma_f32 v58, v60, v117, v24
	v_fma_f32 v60, v62, v119, v11
	v_fma_f32 v73, v17, v127, v34
	v_fma_f32 v22, v22, v132, v16
	v_fma_f32 v26, v26, v135, v43
	v_fma_f32 v74, v19, v129, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	v_cndmask_b32_e64 v19, v9, v59, s3
	v_cndmask_b32_e64 v1, v39, v72, s3
	v_cndmask_b32_e64 v9, v37, v20, s3
	v_cndmask_b32_e64 v20, v42, v77, s3
	v_cndmask_b32_e64 v35, v35, v75, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v69, v67, 8, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v64, v121, v28
	v_fma_f32 v64, v66, v123, v30
	v_fma_f32 v66, v4, v125, v32
	v_fma_f32 v75, v21, v131, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v49, s3
	v_cndmask_b32_e64 v4, v3, v53, s3
	v_cndmask_b32_e64 v21, v11, v60, s3
	v_cndmask_b32_e64 v3, v34, v73, s3
	v_cndmask_b32_e64 v16, v16, v22, s3
	v_cndmask_b32_e64 v22, v43, v26, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v150, v80, v40
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v68, v[0:1], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v69, v[2:3], v[21:22] offset1:2
	v_cndmask_b32_e64 v0, 0x840, 0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v86, s2
	v_cndmask_b32_e64 v40, v40, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v128, v35
	v_fma_f32 v78, v27, v136, v44
	v_fma_f32 v79, v33, v137, v45
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v1, 0x700, v13
	v_lshlrev_b32_e32 v2, 2, v108
	v_xor_b32_e32 v0, v0, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v50, v138, v46
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v70, v67, 16, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v23, v133, v40
	v_fma_f32 v52, v52, v139, v47
	v_fma_f32 v80, v8, v141, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v5, v55, s3
	v_cndmask_b32_e64 v17, v24, v58, s3
	v_cndmask_b32_e64 v23, v12, v61, s3
	v_cndmask_b32_e64 v5, v35, v18, s3
	v_cndmask_b32_e64 v24, v44, v78, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v71, v67, 24, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v51, v140, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v54, s3
	v_cndmask_b32_e64 v10, v15, v56, s3
	v_cndmask_b32_e64 v15, v7, v57, s3
	v_cndmask_b32_e64 v25, v28, v62, s3
	v_cndmask_b32_e64 v7, v36, v74, s3
	v_cndmask_b32_e64 v26, v45, v79, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v19, v1, v2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v29, v63, s3
	v_cndmask_b32_e64 v28, v46, v50, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v3, v67, 32, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v30, v64, s3
	v_cndmask_b32_e64 v11, v38, v75, s3
	v_cndmask_b32_e64 v30, v47, v52, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v70, v[4:5], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v71, v[6:7], v[25:26] offset1:2
	v_xad_u32 v4, v67, 40, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v65, s3
	v_cndmask_b32_e64 v33, v32, v66, s3
	v_cndmask_b32_e64 v32, v48, v51, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v5, v67, 48, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v40, v76, s3
	v_cndmask_b32_e64 v34, v41, v80, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v6, v67, 56, 0
	v_add_nc_u32_e32 v0, 0, v19
	ds_store_2addr_stride64_b64 v3, v[8:9], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v4, v[10:11], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v5, v[15:16], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v6, v[17:18], v[33:34] offset1:2
	v_xad_u32 v4, 0x1008, v19, 0
	s_waitcnt lgkmcnt(0)
	v_xad_u32 v8, 0x2010, v19, 0
	s_barrier
	ds_load_2addr_b64 v[0:3], v0 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	v_xad_u32 v16, 0x4020, v19, 0
	v_xad_u32 v12, 0x3018, v19, 0
	v_xad_u32 v20, 0x5028, v19, 0
	v_xad_u32 v24, 0x6030, v19, 0
	ds_load_2addr_b64 v[8:11], v8 offset1:16
	v_xad_u32 v28, 0x7038, v19, 0
	ds_load_2addr_b64 v[16:19], v16 offset1:16
	ds_load_2addr_b64 v[20:23], v20 offset1:16
	ds_load_2addr_b64 v[24:27], v24 offset1:16
	ds_load_2addr_b64 v[12:15], v12 offset1:16
	v_lshlrev_b32_e32 v32, 2, v89
	v_add_lshl_u32 v33, v89, s27, 2
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	s_mov_b32 s27, s15
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s37, 2
	v_add_lshl_u32 v4, v89, s33, 2
	v_add_lshl_u32 v32, v89, s36, 2
	v_add_lshl_u32 v33, v89, s31, 2
	v_add_lshl_u32 v34, v89, s30, 2
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v16, v32, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v33, s[24:27], 0 offen
	buffer_atomic_add_f32 v24, v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s29, 2
	v_add_lshl_u32 v4, v89, s34, 2
	v_add_lshl_u32 v8, v89, s28, 2
	v_add_lshl_u32 v12, v89, s23, 2
	v_add_lshl_u32 v16, v89, s22, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v12, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v16, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s21, 2
	v_add_lshl_u32 v2, v89, s20, 2
	v_add_lshl_u32 v4, v89, s19, 2
	v_add_lshl_u32 v6, v89, s18, 2
	v_add_lshl_u32 v8, v89, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v6, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v8, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s17, 2
	v_add_lshl_u32 v1, v89, s16, 2
	v_add_lshl_u32 v2, v89, s13, 2
	v_add_lshl_u32 v4, v89, s12, 2
	v_add_lshl_u32 v6, v89, s11, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v6, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s10, 2
	v_add_lshl_u32 v1, v89, s9, 2
	v_add_lshl_u32 v2, v89, s8, 2
	v_add_lshl_u32 v4, v89, s7, 2
	v_add_lshl_u32 v5, v89, s6, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s5, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s35, 60
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v89, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s35, 62
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v89, s1, 2
	v_add_lshl_u32 v3, v89, s2, 2
	v_add_lshl_u32 v4, v89, s3, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v23, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v31, v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 246
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 246
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16956
; TotalNumSgprs: 49
; NumVgprs: 246
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 246
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     246
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
