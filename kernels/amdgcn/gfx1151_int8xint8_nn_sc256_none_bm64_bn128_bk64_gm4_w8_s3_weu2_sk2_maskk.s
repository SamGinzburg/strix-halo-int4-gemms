	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v9, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v15, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v14, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 62, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v16, 6, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v11, 0x60, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v20, 0x420, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v14, 48, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v13, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v12, 1, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v19, 1, v11
	v_and_b32_e32 v67, 8, v0
	v_and_b32_e32 v68, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v15, v13, 1, v19
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
	v_lshlrev_b32_e32 v13, 3, v16
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v19, 2, v15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v21, 6, v15
	v_or_b32_e32 v22, 8, v15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v23, 10, v15
	v_or_b32_e32 v24, 12, v15
	v_or_b32_e32 v25, 14, v15
	v_or_b32_e32 v26, 64, v15
	v_or_b32_e32 v27, 0x42, v15
	v_or_b32_e32 v28, 0x44, v15
	v_or_b32_e32 v29, 0x46, v15
	v_or_b32_e32 v30, 0x48, v15
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
	v_mad_u64_u32 v[5:6], null, s35, v2, v[1:2]
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
	s_add_i32 s3, s30, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s17, s19, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s31, v2
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s20, s17, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s35, s31
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s17, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s20
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s26, s16, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 0x7f
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s4
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_clause 0x1
	buffer_load_b128 v[32:35], v6, s[36:39], 0 offen
	buffer_load_b128 v[36:39], v5, s[36:39], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v6, s30, v3
	s_mul_i32 s3, s27, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s31, v5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, v6, v5, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s31, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0xff
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s31, 0x80
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s33, s35, 7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v10, s17, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s33, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s30, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s35, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	s_clause 0x1
	buffer_load_b128 v[40:43], v7, s[36:39], 0 offen
	buffer_load_b128 v[44:47], v10, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v10, 0x80, v0
	v_lshlrev_b32_e32 v8, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[48:51], v7, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s17, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v17, 3, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v7
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_xor_b32_e32 v69, v9, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 0x4a, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[52:55], v6, s[8:11], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v64, 0, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v18, v17, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v17, v20, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v20, 4, v15
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v31, 32, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v70, v16, 10, v17
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v16, 0x4c, v15
	v_or_b32_e32 v17, 0x4e, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v71, 0x90, v70
	v_xor_b32_e32 v72, 0x120, v70
	v_xor_b32_e32 v73, 0x1b0, v70
	v_xor_b32_e32 v74, 0x210, v70
	v_xor_b32_e32 v75, 0x330, v70
	v_xor_b32_e32 v76, 0x3a0, v70
	v_add_nc_u32_e32 v65, 0, v70
	v_add_nc_u32_e32 v66, 0, v71
	v_add_nc_u32_e32 v77, 0, v72
	v_add_nc_u32_e32 v78, 0, v73
	v_add_nc_u32_e32 v79, 0, v74
	v_add_nc_u32_e32 v80, 0, v75
	v_add_nc_u32_e32 v81, 0, v76
	s_waitcnt vmcnt(4)
	v_perm_b32 v56, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v57, v37, v33, 0x5010400
	v_perm_b32 v37, v37, v33, 0x7030602
	v_perm_b32 v58, v38, v34, 0x5010400
	v_lshrrev_b32_e32 v61, 8, v56
	v_lshrrev_b32_e32 v62, 24, v56
	v_perm_b32 v38, v38, v34, 0x7030602
	v_perm_b32 v59, v39, v35, 0x5010400
	v_perm_b32 v60, v39, v35, 0x7030602
	v_lshrrev_b32_e32 v63, 8, v36
	v_and_b16 v32.l, 0xff, v56.l
	v_and_b16 v32.h, 0xff, v56.h
	v_lshrrev_b32_e32 v82, 24, v36
	v_lshlrev_b16 v56.l, 8, v61.l
	v_lshlrev_b16 v56.h, 8, v62.l
	v_lshrrev_b32_e32 v83, 8, v57
	v_lshrrev_b32_e32 v84, 24, v57
	v_lshrrev_b32_e32 v85, 8, v37
	v_lshrrev_b32_e32 v86, 24, v37
	v_lshrrev_b32_e32 v87, 8, v58
	v_lshrrev_b32_e32 v88, 24, v58
	v_lshrrev_b32_e32 v89, 8, v38
	v_lshrrev_b32_e32 v90, 24, v38
	v_lshrrev_b32_e32 v91, 8, v59
	v_lshrrev_b32_e32 v92, 24, v59
	v_lshrrev_b32_e32 v93, 8, v60
	v_lshrrev_b32_e32 v94, 24, v60
	v_and_b16 v33.l, 0xff, v36.l
	v_and_b16 v34.l, 0xff, v57.l
	v_lshlrev_b16 v57.l, 8, v63.l
	v_and_b16 v33.h, 0xff, v36.h
	v_and_b16 v34.h, 0xff, v57.h
	v_lshlrev_b16 v57.h, 8, v82.l
	v_or_b16 v32.l, v32.l, v56.l
	v_or_b16 v32.h, v32.h, v56.h
	v_and_b16 v35.l, 0xff, v37.l
	v_and_b16 v35.h, 0xff, v37.h
	v_and_b16 v36.l, 0xff, v58.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v56, v44, v40, 0x5010400
	v_and_b16 v36.h, 0xff, v58.h
	v_and_b16 v37.l, 0xff, v38.l
	v_and_b16 v37.h, 0xff, v38.h
	v_and_b16 v38.l, 0xff, v59.l
	v_and_b16 v38.h, 0xff, v59.h
	v_and_b16 v39.l, 0xff, v60.l
	v_and_b16 v39.h, 0xff, v60.h
	v_lshlrev_b16 v58.l, 8, v83.l
	v_lshlrev_b16 v58.h, 8, v84.l
	v_lshlrev_b16 v59.l, 8, v85.l
	v_lshlrev_b16 v59.h, 8, v86.l
	v_lshlrev_b16 v60.l, 8, v87.l
	v_lshlrev_b16 v60.h, 8, v88.l
	v_lshlrev_b16 v61.l, 8, v89.l
	v_lshlrev_b16 v61.h, 8, v90.l
	v_lshlrev_b16 v62.l, 8, v91.l
	v_lshlrev_b16 v62.h, 8, v92.l
	v_lshlrev_b16 v63.l, 8, v93.l
	v_lshlrev_b16 v63.h, 8, v94.l
	v_perm_b32 v40, v44, v40, 0x7030602
	v_or_b16 v33.l, v33.l, v57.l
	v_perm_b32 v44, v45, v41, 0x5010400
	v_perm_b32 v41, v45, v41, 0x7030602
	v_perm_b32 v45, v46, v42, 0x5010400
	v_perm_b32 v42, v46, v42, 0x7030602
	v_perm_b32 v46, v47, v43, 0x5010400
	v_perm_b32 v43, v47, v43, 0x7030602
	v_or_b16 v33.h, v33.h, v57.h
	v_lshrrev_b32_e32 v47, 8, v56
	v_or_b16 v34.l, v34.l, v58.l
	v_or_b16 v34.h, v34.h, v58.h
	v_or_b16 v35.l, v35.l, v59.l
	v_or_b16 v35.h, v35.h, v59.h
	v_or_b16 v36.l, v36.l, v60.l
	v_or_b16 v36.h, v36.h, v60.h
	v_or_b16 v37.l, v37.l, v61.l
	v_or_b16 v37.h, v37.h, v61.h
	v_or_b16 v38.l, v38.l, v62.l
	v_or_b16 v38.h, v38.h, v62.h
	v_or_b16 v39.l, v39.l, v63.l
	v_or_b16 v39.h, v39.h, v63.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v64, v[48:51] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v32
	ds_store_b16_d16_hi v65, v32 offset:64
	ds_store_b16 v66, v33
	ds_store_b16_d16_hi v66, v33 offset:64
	ds_store_b16 v77, v34
	ds_store_b16_d16_hi v77, v34 offset:64
	ds_store_b16 v78, v35
	ds_store_b16_d16_hi v78, v35 offset:64
	ds_store_b16 v79, v36
	ds_store_b16_d16_hi v79, v36 offset:64
	ds_store_b16 v65, v37 offset:640
	ds_store_b16_d16_hi v65, v37 offset:704
	ds_store_b16 v80, v38
	ds_store_b16_d16_hi v80, v38 offset:64
	ds_store_b16 v81, v39
	ds_store_b16_d16_hi v81, v39 offset:64
	v_lshrrev_b32_e32 v48, 24, v56
	v_lshrrev_b32_e32 v49, 8, v40
	v_lshrrev_b32_e32 v50, 24, v40
	v_and_b16 v32.l, 0xff, v56.l
	v_and_b16 v32.h, 0xff, v56.h
	v_and_b16 v34.l, 0xff, v44.l
	v_lshrrev_b32_e32 v51, 8, v44
	v_lshrrev_b32_e32 v56, 24, v44
	v_and_b16 v34.h, 0xff, v44.h
	v_lshrrev_b32_e32 v44, 8, v41
	v_lshrrev_b32_e32 v57, 24, v41
	v_and_b16 v36.l, 0xff, v45.l
	v_lshrrev_b32_e32 v58, 8, v45
	v_lshrrev_b32_e32 v59, 24, v45
	v_and_b16 v36.h, 0xff, v45.h
	v_lshrrev_b32_e32 v45, 8, v42
	v_lshrrev_b32_e32 v60, 24, v42
	v_lshrrev_b32_e32 v61, 8, v46
	v_lshrrev_b32_e32 v62, 24, v46
	v_lshrrev_b32_e32 v63, 8, v43
	v_lshrrev_b32_e32 v82, 24, v43
	v_and_b16 v33.l, 0xff, v40.l
	v_lshlrev_b16 v40.l, 8, v47.l
	v_and_b16 v33.h, 0xff, v40.h
	v_lshlrev_b16 v40.h, 8, v48.l
	v_and_b16 v35.l, 0xff, v41.l
	v_lshlrev_b16 v41.l, 8, v49.l
	v_and_b16 v35.h, 0xff, v41.h
	v_lshlrev_b16 v41.h, 8, v50.l
	v_and_b16 v37.l, 0xff, v42.l
	v_and_b16 v37.h, 0xff, v42.h
	v_and_b16 v38.l, 0xff, v46.l
	v_and_b16 v38.h, 0xff, v46.h
	v_and_b16 v39.l, 0xff, v43.l
	v_and_b16 v39.h, 0xff, v43.h
	v_lshlrev_b16 v42.l, 8, v51.l
	v_lshlrev_b16 v42.h, 8, v56.l
	v_lshlrev_b16 v43.l, 8, v44.l
	v_lshlrev_b16 v43.h, 8, v57.l
	v_lshlrev_b16 v44.l, 8, v58.l
	v_lshlrev_b16 v44.h, 8, v59.l
	v_lshlrev_b16 v45.l, 8, v45.l
	v_lshlrev_b16 v45.h, 8, v60.l
	v_lshlrev_b16 v46.l, 8, v61.l
	v_lshlrev_b16 v46.h, 8, v62.l
	v_lshlrev_b16 v47.l, 8, v63.l
	v_lshlrev_b16 v47.h, 8, v82.l
	v_or_b16 v32.l, v32.l, v40.l
	v_or_b16 v32.h, v32.h, v40.h
	v_or_b16 v33.l, v33.l, v41.l
	v_or_b16 v33.h, v33.h, v41.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v34.l, v34.l, v42.l
	v_or_b16 v34.h, v34.h, v42.h
	v_or_b16 v35.l, v35.l, v43.l
	v_or_b16 v35.h, v35.h, v43.h
	v_or_b16 v36.l, v36.l, v44.l
	v_or_b16 v36.h, v36.h, v44.h
	v_or_b16 v37.l, v37.l, v45.l
	v_or_b16 v37.h, v37.h, v45.h
	v_or_b16 v38.l, v38.l, v46.l
	v_or_b16 v38.h, v38.h, v46.h
	v_or_b16 v39.l, v39.l, v47.l
	v_or_b16 v39.h, v39.h, v47.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[52:55] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v32 offset:8192
	ds_store_b16_d16_hi v65, v32 offset:8256
	ds_store_b16 v66, v33 offset:8192
	ds_store_b16_d16_hi v66, v33 offset:8256
	ds_store_b16 v77, v34 offset:8192
	ds_store_b16_d16_hi v77, v34 offset:8256
	ds_store_b16 v78, v35 offset:8192
	ds_store_b16_d16_hi v78, v35 offset:8256
	ds_store_b16 v79, v36 offset:8192
	ds_store_b16_d16_hi v79, v36 offset:8256
	ds_store_b16 v65, v37 offset:8832
	ds_store_b16_d16_hi v65, v37 offset:8896
	ds_store_b16 v80, v38 offset:8192
	ds_store_b16_d16_hi v80, v38 offset:8256
	ds_store_b16 v81, v39 offset:8192
	ds_store_b16_d16_hi v81, v39 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v32, 0x430, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v79, 8, v0
	v_and_b32_e32 v80, 32, v0
	v_and_b32_e32 v77, 0x800, v8
	v_lshl_or_b32 v78, v4, 6, v13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v63, v6, 6, v32
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v64, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v65, 48, v63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
.LBB0_3:                                ; %Flow45
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v18, s27, v18
	v_or_b32_e32 v31, s27, v31
	s_ashr_i32 s1, s6, 8
	v_cmp_eq_u32_e64 s0, 0, v12
	v_or_b32_e32 v60, s26, v15
	v_mul_lo_u32 v61, v18, s1
	v_mul_lo_u32 v62, v31, s1
	v_or_b32_e32 v59, s26, v19
	v_or_b32_e32 v58, s26, v20
	v_or_b32_e32 v57, s26, v21
	v_or_b32_e32 v56, s26, v22
	v_or_b32_e32 v55, s26, v23
	v_or_b32_e32 v54, s26, v24
	v_or_b32_e32 v53, s26, v25
	v_or_b32_e32 v52, s26, v26
	v_or_b32_e32 v51, s26, v27
	v_or_b32_e32 v50, s26, v28
	v_or_b32_e32 v48, s26, v29
	v_or_b32_e32 v46, s26, v30
	v_or_b32_e32 v49, s26, v14
	v_or_b32_e32 v47, s26, v16
	v_or_b32_e32 v45, s26, v17
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v14, v0, 5, 1
	v_bfe_i32 v15, v0, 3, 1
	v_and_b32_e32 v7, 0x430, v7
	v_and_b32_e32 v77, 0x800, v8
	v_lshl_or_b32 v78, v4, 6, v13
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v14, 0x420, v14
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v8, s31, v2
	v_lshl_or_b32 v63, v6, 6, v7
	s_lshl_b32 s15, s19, 7
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v4, 0x210, v15, v14
	s_lshl_b32 s16, s18, 7
	v_add_nc_u32_e32 v6, 0x101, v8
	v_add_nc_u32_e32 v7, 0x100, v8
	v_or_b32_e32 v86, 0x100, v2
	v_xor_b32_e32 v4, v4, v78
	v_or_b32_e32 v87, 0x100, v5
	v_xor_b32_e32 v64, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v65, 48, v63
	v_or_b32_e32 v79, v4, v77
	v_mul_lo_u32 v4, s35, v6
	v_mul_lo_u32 v6, s35, v7
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_add3_u32 v4, v4, s15, v1
	v_add3_u32 v1, v6, s15, v1
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v83, s16, v4
	v_subrev_nc_u32_e32 v84, s16, v1
	s_mov_b32 s16, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v3, s27, v3
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v28, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s30, v3
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_add3_u32 v85, v3, v5, 0x100
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v37, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s14, s5, 7
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s14, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s34, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_mov_b32 s45, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s31
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s31, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v88, s17, v87
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v89, s17, v86
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v90, s17, v85
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 24
	s_mov_b32 s19, s16
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v88
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s31, s18
	s_mov_b32 s16, s44
	s_ashr_i32 s18, s18, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v88, 0x80000000, v90, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v89
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v90, v61, s18, 1
	v_add_lshl_u32 v91, v62, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v89, 0x80000000, v84, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[120:123], v88, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v92, v59, s18, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v88, 0x80000000, v83, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[124:127], v89, s[36:39], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[128:131], v88, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v60, s18, 1
	v_add_lshl_u32 v93, v58, s18, 1
	v_add_lshl_u32 v94, v57, s18, 1
	v_add_lshl_u32 v95, v56, s18, 1
	v_add_lshl_u32 v96, v55, s18, 1
	v_add_lshl_u32 v97, v54, s18, 1
	v_add_lshl_u32 v98, v53, s18, 1
	v_add_lshl_u32 v99, v52, s18, 1
	v_add_lshl_u32 v100, v51, s18, 1
	v_add_lshl_u32 v101, v50, s18, 1
	v_add_lshl_u32 v102, v48, s18, 1
	v_add_lshl_u32 v103, v46, s18, 1
	v_add_lshl_u32 v104, v49, s18, 1
	v_add_lshl_u32 v105, v47, s18, 1
	v_add_lshl_u32 v106, v45, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v88, 0x80000000, v89 :: v_dual_cndmask_b32 v89, 0x80000000, v92
	v_dual_cndmask_b32 v92, 0x80000000, v93 :: v_dual_cndmask_b32 v93, 0x80000000, v94
	v_dual_cndmask_b32 v94, 0x80000000, v95 :: v_dual_cndmask_b32 v95, 0x80000000, v96
	v_dual_cndmask_b32 v96, 0x80000000, v97 :: v_dual_cndmask_b32 v97, 0x80000000, v98
	v_dual_cndmask_b32 v98, 0x80000000, v99 :: v_dual_cndmask_b32 v99, 0x80000000, v100
	v_dual_cndmask_b32 v100, 0x80000000, v101 :: v_dual_cndmask_b32 v101, 0x80000000, v102
	v_dual_cndmask_b32 v102, 0x80000000, v103 :: v_dual_cndmask_b32 v103, 0x80000000, v104
	v_dual_cndmask_b32 v104, 0x80000000, v105 :: v_dual_cndmask_b32 v105, 0x80000000, v106
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v188, v90, s[4:7], 0 offen
	buffer_load_u16 v189, v91, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v190, v88, s[40:43], 0 offen
	buffer_load_u16 v191, v89, s[40:43], 0 offen
	buffer_load_u16 v192, v92, s[40:43], 0 offen
	buffer_load_u16 v193, v93, s[40:43], 0 offen
	buffer_load_u16 v194, v94, s[40:43], 0 offen
	buffer_load_u16 v195, v95, s[40:43], 0 offen
	buffer_load_u16 v196, v96, s[40:43], 0 offen
	buffer_load_u16 v197, v97, s[40:43], 0 offen
	buffer_load_u16 v198, v98, s[40:43], 0 offen
	buffer_load_u16 v199, v99, s[40:43], 0 offen
	buffer_load_u16 v200, v100, s[40:43], 0 offen
	buffer_load_u16 v201, v101, s[40:43], 0 offen
	buffer_load_u16 v202, v102, s[40:43], 0 offen
	buffer_load_u16 v203, v103, s[40:43], 0 offen
	buffer_load_u16 v204, v104, s[40:43], 0 offen
	buffer_load_u16 v205, v105, s[40:43], 0 offen
	s_mov_b32 s18, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v92, s19, v79
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v88, s18, v63
	v_add_nc_u32_e32 v89, s18, v64
	v_add_nc_u32_e32 v90, s18, v66
	v_add_nc_u32_e32 v91, s18, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v93, s19, v80
	v_add_nc_u32_e32 v94, s19, v81
	v_add_nc_u32_e32 v95, s19, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[104:107], v88
	ds_load_b128 v[132:135], v88 offset:2048
	ds_load_b128 v[136:139], v89
	ds_load_b128 v[140:143], v89 offset:2048
	ds_load_b128 v[144:147], v90
	ds_load_b128 v[148:151], v90 offset:2048
	ds_load_b128 v[152:155], v91
	ds_load_b128 v[156:159], v91 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v92
	ds_load_b128 v[160:163], v92 offset:4096
	ds_load_b128 v[164:167], v93
	ds_load_b128 v[168:171], v93 offset:4096
	ds_load_b128 v[172:175], v94
	ds_load_b128 v[176:179], v94 offset:4096
	ds_load_b128 v[180:183], v95
	ds_load_b128 v[184:187], v95 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s45, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s18, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s45, s18, 0
	s_add_i32 s15, s15, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s18, s45, 12
	s_mov_b32 s14, s34
	s_add_i32 s19, s18, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_addk_i32 s31, 0x80
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s19, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s34, s19, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[88:95], v[112:115], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[160:163], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[112:115], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[164:167], v[136:139], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[168:171], v[136:139], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[160:163], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[164:167], v[140:143], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[172:175], v[144:147], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[176:179], v[144:147], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[168:171], v[140:143], v[112:119] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[104:111], v[172:175], v[148:151], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[180:183], v[152:155], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[184:187], v[152:155], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[176:179], v[148:151], v[112:119] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[180:183], v[156:159], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v132, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v141, v97
	v_cvt_f32_i32_e32 v143, v99
	v_cvt_f32_i32_e32 v133, v89
	v_cvt_f32_i32_e32 v139, v95
	v_cvt_f32_i32_e32 v140, v96
	v_cvt_f32_i32_e32 v142, v98
	v_cvt_f32_i32_e32 v145, v101
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v137, v93
	v_cvt_f32_i32_e32 v138, v94
	v_cvt_f32_i32_e32 v147, v103
	v_wmma_i32_16x16x16_iu8 v[112:119], v[184:187], v[156:159], v[112:119] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v144, v100
	v_cvt_f32_i32_e32 v146, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(18)
	v_perm_b32 v95, v131, v127, 0x5010400
	v_perm_b32 v96, v131, v127, 0x7030602
	v_perm_b32 v91, v129, v125, 0x5010400
	v_perm_b32 v92, v129, v125, 0x7030602
	v_perm_b32 v89, v128, v124, 0x5010400
	v_perm_b32 v90, v128, v124, 0x7030602
	v_perm_b32 v93, v130, v126, 0x5010400
	v_perm_b32 v94, v130, v126, 0x7030602
	v_lshrrev_b32_e32 v151, 8, v91
	v_lshrrev_b32_e32 v131, 8, v89
	v_lshrrev_b32_e32 v148, 24, v89
	v_lshrrev_b32_e32 v149, 8, v90
	v_lshrrev_b32_e32 v150, 24, v90
	v_and_b16 v88.l, 0xff, v89.l
	v_and_b16 v89.l, 0xff, v90.l
	v_and_b16 v90.l, 0xff, v91.l
	v_lshrrev_b32_e32 v152, 24, v91
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v97, 16, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v91.l, 0xff, v92.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v99, 16, v190
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v153, 8, v92
	v_lshrrev_b32_e32 v154, 24, v92
	v_and_b16 v92.l, 0xff, v93.l
	v_lshrrev_b32_e32 v155, 8, v93
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v163, v97, v99 :: v_dual_lshlrev_b32 v98, 16, v189
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v156, 24, v93
	v_and_b16 v93.l, 0xff, v94.l
	v_lshrrev_b32_e32 v157, 8, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v13, v163, v132 :: v_dual_add_nc_u32 v206, s19, v69
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v179, v98, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v202
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v84, s33, v84
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v129, 16, v204
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v206, v[120:123] offset:16384
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v175, v97, v127 :: v_dual_lshlrev_b32 v122, 16, v197
	v_mul_f32_e32 v127, v98, v127
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v101, 16, v192
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v177, v97, v129 :: v_dual_add_nc_u32 v208, s44, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v170, v97, v122
	v_dual_mul_f32 v122, v98, v122 :: v_dual_mul_f32 v165, v97, v101
	v_dual_mul_f32 v129, v98, v129 :: v_dual_lshlrev_b32 v124, 16, v199
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v103, 16, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v15, v165, v134 :: v_dual_lshlrev_b32 v126, 16, v201
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v121, 16, v196
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v172, v97, v124 :: v_dual_add_nc_u32 v83, s33, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v174, v97, v126
	v_dual_mul_f32 v124, v98, v124 :: v_dual_mul_f32 v167, v97, v103
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v128, 16, v203
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v126, v98, v126 :: v_dual_mul_f32 v169, v97, v121
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v130, 16, v205
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v121, v98, v121 :: v_dual_lshlrev_b32 v100, 16, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v17, v167, v136
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v176, v97, v128 :: v_dual_add_nc_u32 v207, s44, v70
	v_dual_mul_f32 v128, v98, v128 :: v_dual_lshlrev_b32 v123, 16, v198
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v19, v169, v138 :: v_dual_lshlrev_b32 v102, 16, v193
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v178, v97, v130 :: v_dual_add_nc_u32 v209, s44, v72
	v_dual_mul_f32 v130, v98, v130 :: v_dual_lshlrev_b32 v125, 16, v200
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v120, 16, v195
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v183, v98, v103 :: v_dual_add_nc_u32 v210, s44, v73
	v_dual_mul_f32 v180, v98, v100 :: v_dual_add_nc_u32 v211, s44, v74
	v_dual_mul_f32 v181, v98, v101 :: v_dual_add_nc_u32 v212, s44, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v158, 24, v94
	v_and_b16 v94.l, 0xff, v95.l
	v_lshrrev_b32_e32 v159, 8, v95
	v_lshrrev_b32_e32 v160, 24, v95
	v_and_b16 v95.l, 0xff, v96.l
	v_lshrrev_b32_e32 v161, 8, v96
	v_lshrrev_b32_e32 v162, 24, v96
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v97, v100
	v_mul_f32_e32 v171, v97, v123
	v_mul_f32_e32 v173, v97, v125
	v_mul_f32_e32 v123, v98, v123
	v_dual_mul_f32 v182, v98, v102 :: v_dual_add_nc_u32 v213, s44, v76
	v_dual_mul_f32 v166, v97, v102 :: v_dual_mul_f32 v125, v98, v125
	v_mul_f32_e32 v168, v97, v120
	v_mul_f32_e32 v120, v98, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v96.l, 8, v131.l
	v_and_b16 v88.h, 0xff, v89.h
	v_and_b16 v89.h, 0xff, v90.h
	v_and_b16 v90.h, 0xff, v91.h
	v_and_b16 v91.h, 0xff, v92.h
	v_and_b16 v92.h, 0xff, v93.h
	v_and_b16 v93.h, 0xff, v94.h
	v_and_b16 v94.h, 0xff, v95.h
	v_and_b16 v95.h, 0xff, v96.h
	v_lshlrev_b16 v96.h, 8, v148.l
	v_lshlrev_b16 v97.l, 8, v149.l
	v_lshlrev_b16 v97.h, 8, v150.l
	v_lshlrev_b16 v98.l, 8, v151.l
	v_lshlrev_b16 v98.h, 8, v152.l
	v_lshlrev_b16 v99.l, 8, v153.l
	v_lshlrev_b16 v99.h, 8, v154.l
	v_lshlrev_b16 v100.l, 8, v155.l
	v_lshlrev_b16 v100.h, 8, v156.l
	v_lshlrev_b16 v101.l, 8, v157.l
	v_lshlrev_b16 v101.h, 8, v158.l
	v_lshlrev_b16 v102.l, 8, v159.l
	v_lshlrev_b16 v102.h, 8, v160.l
	v_lshlrev_b16 v103.l, 8, v161.l
	v_lshlrev_b16 v103.h, 8, v162.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v14, v164, v133
	v_fmac_f32_e32 v16, v166, v135
	v_dual_fmac_f32 v18, v168, v137 :: v_dual_fmac_f32 v21, v171, v140
	v_dual_fmac_f32 v20, v170, v139 :: v_dual_fmac_f32 v23, v173, v142
	v_dual_fmac_f32 v22, v172, v141 :: v_dual_fmac_f32 v25, v175, v144
	v_dual_fmac_f32 v24, v174, v143 :: v_dual_fmac_f32 v27, v177, v146
	v_dual_fmac_f32 v26, v176, v145 :: v_dual_fmac_f32 v29, v179, v104
	v_dual_fmac_f32 v28, v178, v147 :: v_dual_fmac_f32 v31, v181, v106
	v_dual_fmac_f32 v30, v180, v105 :: v_dual_fmac_f32 v33, v183, v108
	v_dual_fmac_f32 v32, v182, v107 :: v_dual_fmac_f32 v35, v121, v110
	v_dual_fmac_f32 v34, v120, v109 :: v_dual_fmac_f32 v41, v126, v115
	v_dual_fmac_f32 v36, v122, v111 :: v_dual_fmac_f32 v39, v124, v113
	v_dual_fmac_f32 v38, v123, v112 :: v_dual_fmac_f32 v43, v128, v117
	v_dual_fmac_f32 v40, v125, v114 :: v_dual_fmac_f32 v37, v130, v119
	v_fmac_f32_e32 v42, v127, v116
	v_fmac_f32_e32 v44, v129, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	v_or_b16 v95.l, v95.l, v103.l
	v_or_b16 v95.h, v95.h, v103.h
	ds_store_b16 v207, v88
	ds_store_b16_d16_hi v207, v88 offset:64
	ds_store_b16 v208, v89
	ds_store_b16_d16_hi v208, v89 offset:64
	ds_store_b16 v209, v90
	ds_store_b16_d16_hi v209, v90 offset:64
	ds_store_b16 v210, v91
	ds_store_b16_d16_hi v210, v91 offset:64
	ds_store_b16 v211, v92
	ds_store_b16_d16_hi v211, v92 offset:64
	ds_store_b16 v207, v93 offset:640
	ds_store_b16_d16_hi v207, v93 offset:704
	ds_store_b16 v212, v94
	ds_store_b16_d16_hi v212, v94 offset:64
	ds_store_b16 v213, v95
	ds_store_b16_d16_hi v213, v95 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v79, v67 :: v_dual_mov_b32 v80, v68
	s_addk_i32 s17, 0x100
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
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
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s34, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v67, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_xor_b32_e32 v6, v2, v78
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v141, v6, v77
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_xor_b32_e32 v142, 16, v141
	v_xor_b32_e32 v144, 32, v141
	v_xor_b32_e32 v143, 48, v141
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v91, s11 :: v_dual_add_nc_u32 v6, s16, v144
	v_dual_mov_b32 v89, s9 :: v_dual_add_nc_u32 v8, s16, v141
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[100:103], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v87, s7 :: v_dual_add_nc_u32 v6, s14, v63
	v_dual_mov_b32 v88, s8 :: v_dual_add_nc_u32 v67, s16, v142
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[104:107], v8 offset:4096
	ds_load_b128 v[108:111], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v85, s5 :: v_dual_add_nc_u32 v8, s14, v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v68, s14, v64
	ds_load_b128 v[112:115], v6 offset:2048
	ds_load_b128 v[92:95], v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v67 offset:4096
	ds_load_b128 v[120:123], v67
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[124:127], v8 offset:2048
	ds_load_b128 v[128:131], v8
	ds_load_b128 v[132:135], v68 offset:2048
	ds_load_b128 v[136:139], v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v90, s10 :: v_dual_add_nc_u32 v7, s16, v143
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v6, s14, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v86, s6
	v_mov_b32_e32 v84, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[149:152], v7
	ds_load_b128 v[153:156], v7 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[157:160], v6 offset:2048
	ds_load_b128 v[145:148], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[108:111], v[92:95], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[104:107], v[92:95], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[108:111], v[112:115], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[104:107], v[112:115], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[120:123], v[136:139], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[116:119], v[136:139], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[120:123], v[132:135], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[116:119], v[132:135], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[100:103], v[128:131], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[2:5], v[128:131], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[124:127], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[2:5], v[124:127], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[149:152], v[145:148], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[153:156], v[145:148], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[149:152], v[157:160], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[153:156], v[157:160], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v69
	v_cvt_f32_i32_e32 v3, v70
	v_cvt_f32_i32_e32 v4, v71
	v_cvt_f32_i32_e32 v5, v72
	v_cvt_f32_i32_e32 v6, v73
	v_cvt_f32_i32_e32 v7, v74
	v_cvt_f32_i32_e32 v8, v75
	v_cvt_f32_i32_e32 v67, v76
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v92
	v_cvt_f32_i32_e32 v77, v93
	v_cvt_f32_i32_e32 v78, v94
	v_cvt_f32_i32_e32 v79, v95
	v_cvt_f32_i32_e32 v80, v96
	v_cvt_f32_i32_e32 v81, v97
	v_cvt_f32_i32_e32 v82, v98
	v_cvt_f32_i32_e32 v83, v99
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v68, v68
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s31, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s31, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v92, v61, s4, 1
	v_add_lshl_u32 v93, v62, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v94, v60, s4, 1
	v_add_lshl_u32 v95, v59, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v92, v92, s[12:15], 0 offen
	buffer_load_u16 v124, v93, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v93, v58, s4, 1
	v_add_lshl_u32 v96, v57, s4, 1
	v_add_lshl_u32 v97, v56, s4, 1
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	v_add_lshl_u32 v98, v55, s4, 1
	v_add_lshl_u32 v99, v54, s4, 1
	v_add_lshl_u32 v100, v53, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_add_lshl_u32 v101, v52, s4, 1
	s_and_b32 s29, s29, 0xffff
	v_add_lshl_u32 v102, v51, s4, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v103, v50, s4, 1
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x7
	buffer_load_u16 v125, v94, s[28:31], 0 offen
	buffer_load_u16 v126, v95, s[28:31], 0 offen
	buffer_load_u16 v127, v93, s[28:31], 0 offen
	buffer_load_u16 v128, v96, s[28:31], 0 offen
	buffer_load_u16 v129, v97, s[28:31], 0 offen
	buffer_load_u16 v130, v98, s[28:31], 0 offen
	buffer_load_u16 v131, v99, s[28:31], 0 offen
	buffer_load_u16 v132, v100, s[28:31], 0 offen
	v_add_lshl_u32 v96, v48, s4, 1
	v_add_lshl_u32 v97, v46, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v101 :: v_dual_cndmask_b32 v94, 0x80000000, v102
	v_add_lshl_u32 v98, v49, s4, 1
	v_add_lshl_u32 v99, v47, s4, 1
	v_add_lshl_u32 v100, v45, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v103 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x7
	buffer_load_u16 v133, v93, s[28:31], 0 offen
	buffer_load_u16 v134, v94, s[28:31], 0 offen
	buffer_load_u16 v135, v95, s[28:31], 0 offen
	buffer_load_u16 v136, v96, s[28:31], 0 offen
	buffer_load_u16 v137, v97, s[28:31], 0 offen
	buffer_load_u16 v138, v98, s[28:31], 0 offen
	buffer_load_u16 v139, v99, s[28:31], 0 offen
	buffer_load_u16 v140, v100, s[28:31], 0 offen
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v123, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s44, v144
	v_add_nc_u32_e32 v93, s44, v142
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v123, s11 :: v_dual_add_nc_u32 v94, s44, v143
	v_dual_mov_b32 v118, s6 :: v_dual_add_nc_u32 v95, s44, v141
	v_mov_b32_e32 v122, s10
	v_mov_b32_e32 v120, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v1 offset:4096
	ds_load_b128 v[149:152], v1
	ds_load_b128 v[153:156], v93 offset:4096
	ds_load_b128 v[157:160], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v116, s4 :: v_dual_add_nc_u32 v1, s34, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[161:164], v95 offset:4096
	ds_load_b128 v[165:168], v95
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v95, s34, v64
	ds_load_b128 v[169:172], v1 offset:2048
	ds_load_b128 v[141:144], v1
	v_add_nc_u32_e32 v93, s34, v66
	ds_load_b128 v[177:180], v95 offset:2048
	ds_load_b128 v[181:184], v95
	v_add_nc_u32_e32 v1, s34, v65
	ds_load_b128 v[63:66], v93 offset:2048
	ds_load_b128 v[173:176], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v121, s9
	v_mov_b32_e32 v119, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[185:188], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v117, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[189:192], v94
	ds_load_b128 v[193:196], v94 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[197:200], v1 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[141:144], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[141:144], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[169:172], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[161:164], v[169:172], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[157:160], v[181:184], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[153:156], v[181:184], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[157:160], v[177:180], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[153:156], v[177:180], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[149:152], v[173:176], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[109:112], v[173:176], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[63:66], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[109:112], v[63:66], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[189:192], v[185:188], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[193:196], v[185:188], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[189:192], v[197:200], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[193:196], v[197:200], v[116:123] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v94, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v141
	v_cvt_f32_i32_e32 v109, v142
	v_cvt_f32_i32_e32 v110, v143
	v_cvt_f32_i32_e32 v111, v144
	v_cvt_f32_i32_e32 v112, v145
	v_cvt_f32_i32_e32 v113, v146
	v_cvt_f32_i32_e32 v114, v147
	v_cvt_f32_i32_e32 v115, v148
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s17, s4
	v_mov_b16_e32 v63.l, 0
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v66.h, v138.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v61, v61, s4, 1
	v_add_lshl_u32 v62, v62, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v52, v52, s4, 1
	v_add_lshl_u32 v51, v51, s4, 1
	v_add_lshl_u32 v50, v50, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v48, v48, s4, 1
	v_add_lshl_u32 v46, v46, s4, 1
	v_add_lshl_u32 v49, v49, s4, 1
	v_add_lshl_u32 v47, v47, s4, 1
	v_add_lshl_u32 v45, v45, s4, 1
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	v_add_lshl_u32 v60, v60, s4, 1
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v47, 0x80000000, v47
	v_add_lshl_u32 v59, v59, s4, 1
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	v_add_lshl_u32 v58, v58, s4, 1
	s_clause 0x7
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	v_add_lshl_u32 v57, v57, s4, 1
	v_add_lshl_u32 v56, v56, s4, 1
	v_add_lshl_u32 v55, v55, s4, 1
	v_add_lshl_u32 v54, v54, s4, 1
	v_add_lshl_u32 v53, v53, s4, 1
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	s_clause 0x7
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v54, v54, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	s_clause 0x1
	buffer_load_u16 v61, v61, s[12:15], 0 offen
	buffer_load_u16 v62, v62, s[12:15], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v138, 7, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v63.h, v124.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v64.h, v140.l
	v_mov_b16_e64 v65.h, v139.l
	v_mov_b16_e64 v124.h, v137.l
	v_mov_b16_e64 v125.h, v136.l
	v_mov_b16_e64 v126.h, v135.l
	v_mov_b16_e64 v127.h, v134.l
	v_mov_b16_e64 v128.h, v133.l
	v_mov_b16_e64 v129.h, v132.l
	v_mov_b16_e64 v130.h, v131.l
	v_mov_b16_e64 v131.h, v130.l
	v_mov_b16_e64 v132.h, v129.l
	v_mov_b16_e64 v133.h, v128.l
	v_mov_b16_e64 v134.h, v127.l
	v_mov_b16_e64 v135.h, v126.l
	v_mov_b16_e64 v136.h, v125.l
	v_mov_b16_e32 v64.l, v63.l
	v_mov_b16_e32 v65.l, v63.l
	v_mov_b16_e32 v66.l, v63.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v137, 0x7f, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v124.l, v63.l
	v_mov_b16_e32 v125.l, v63.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v139, 14, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v143, v63, v65 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v126.l, v63.l
	v_mov_b16_e32 v127.l, v63.l
	v_mov_b16_e64 v128.l, v63.l
	v_mov_b16_e64 v129.l, v63.l
	v_mov_b16_e64 v130.l, v63.l
	v_mov_b16_e64 v131.l, v63.l
	v_mov_b16_e64 v132.l, v63.l
	v_mov_b16_e64 v133.l, v63.l
	v_mov_b16_e64 v134.l, v63.l
	v_mov_b16_e64 v135.l, v63.l
	v_mov_b16_e64 v136.l, v63.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v148, v63, v127 :: v_dual_lshlrev_b32 v141, 6, v12
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v12, s35, v138
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v147, v63, v126 :: v_dual_and_b32 v0, 0x78, v0
	v_mul_f32_e32 v142, v63, v64
	v_mul_f32_e32 v144, v63, v66
	v_mul_f32_e32 v145, v63, v124
	v_mul_f32_e32 v146, v63, v125
	v_dual_mul_f32 v149, v63, v128 :: v_dual_lshlrev_b32 v138, 11, v139
	v_mul_f32_e32 v150, v63, v129
	v_mul_f32_e32 v151, v63, v130
	v_mul_f32_e32 v152, v63, v131
	v_mul_f32_e32 v153, v63, v132
	v_mul_f32_e32 v154, v63, v133
	v_mul_f32_e32 v155, v63, v134
	v_mul_f32_e32 v156, v63, v135
	v_mul_f32_e32 v157, v63, v136
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v63.h, v92.l
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s38, s27, s35
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v11, 3, v0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s38, s26
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v142, v91, v37
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v92, s38, v137, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v143, v90, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v90, v63, v124
	v_mul_f32_e32 v124, v63, v126
	v_mul_f32_e32 v126, v63, v128
	v_mul_f32_e32 v128, v63, v130
	v_mul_f32_e32 v130, v63, v132
	v_mul_f32_e32 v132, v63, v134
	v_mul_f32_e32 v65, v63, v65
	v_mul_f32_e32 v66, v63, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v12, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v140, 0x840, 0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v63, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v11, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v148, v85, v39
	v_fma_f32 v86, v147, v86, v40
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v0, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v146, v87, v41
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v85, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v145, v88, v42
	v_fma_f32 v89, v144, v89, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v86, s2
	v_cndmask_b32_e64 v41, v41, v87, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v88, s2
	v_cndmask_b32_e64 v43, v43, v89, s2
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
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v155, v78, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v130, v5, v17
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v132, v3, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v31, v78, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v66, v73, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v17, v5, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v15, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v128, v7, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v15, 16, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v63, v125
	v_mul_f32_e32 v125, v63, v127
	v_mul_f32_e32 v127, v63, v129
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v17, 16, v56
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v63, v131
	v_mul_f32_e32 v131, v63, v133
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v31, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v127, v8, v20
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v31, 16, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v129, v6, v18
	v_fma_f32 v4, v131, v4, v16
	v_fma_f32 v66, v125, v69, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v20, v8, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v157, v76, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v6, s2
	v_cndmask_b32_e64 v6, v16, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v16, 16, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v153, v80, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v29, v76, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v65, v74, v27
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v19, v7, s2
	v_cndmask_b32_e64 v12, v33, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v90, v72, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v27, v29, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v29, 16, v52
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v133, v63, v135
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v19, 16, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v25, v33, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v33, 16, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v63, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v64, v75, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v4, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v133, v2, v14
	v_fma_f32 v84, v149, v84, v38
	v_fma_f32 v63, v63, v68, v13
	v_fma_f32 v79, v154, v79, v32
	v_fma_f32 v65, v124, v70, v23
	v_fma_f32 v67, v126, v67, v21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v68, v0, v138, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v11, s2
	v_cndmask_b32_e64 v2, v14, v2, s2
	v_cndmask_b32_e64 v0, v13, v63, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v62
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v13, 16, v60
	v_lshlrev_b32_e32 v14, 16, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v151, v82, v35
	v_fma_f32 v77, v156, v77, v30
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v152, v81, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v84, s2
	v_cndmask_b32_e64 v35, v35, v82, s2
	v_cndmask_b32_e64 v32, v32, v79, s2
	v_cndmask_b32_e64 v23, v23, v65, s2
	v_cndmask_b32_e64 v21, v21, v67, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v50, v4, v13
	v_mul_f32_e32 v51, v4, v14
	v_mul_f32_e32 v52, v4, v15
	v_dual_mul_f32 v53, v4, v16 :: v_dual_mul_f32 v14, v11, v14
	v_mul_f32_e32 v54, v4, v17
	v_mul_f32_e32 v55, v4, v19
	v_mul_f32_e32 v56, v4, v20
	v_mul_f32_e32 v60, v4, v33
	v_mul_f32_e32 v62, v4, v46
	v_dual_mul_f32 v70, v4, v47 :: v_dual_mul_f32 v13, v11, v13
	v_mul_f32_e32 v16, v11, v16
	v_mul_f32_e32 v20, v11, v20
	v_mul_f32_e32 v29, v11, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v77, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v91, v71, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v66, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v4, v25
	v_dual_mul_f32 v59, v4, v31 :: v_dual_mul_f32 v46, v11, v46
	v_mul_f32_e32 v31, v11, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v81, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v4, v48
	v_mul_f32_e32 v67, v4, v49
	v_dual_mul_f32 v4, v4, v45 :: v_dual_mul_f32 v15, v11, v15
	v_mul_f32_e32 v19, v11, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v50, v1, v0
	v_fma_f32 v50, v52, v94, v3
	v_fma_f32 v52, v54, v96, v5
	v_fma_f32 v54, v56, v98, v7
	v_fma_f32 v56, v58, v100, v21
	v_fma_f32 v58, v60, v102, v23
	v_fma_f32 v60, v62, v104, v27
	v_fma_f32 v62, v70, v106, v69
	v_fma_f32 v70, v13, v108, v76
	v_fma_f32 v16, v16, v111, v32
	v_fma_f32 v20, v20, v114, v35
	v_fma_f32 v75, v29, v116, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v64, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v11, v17
	v_mul_f32_e32 v25, v11, v25
	v_mul_f32_e32 v33, v11, v33
	v_mul_f32_e32 v48, v11, v48
	v_mul_f32_e32 v49, v11, v49
	v_mul_f32_e32 v47, v11, v47
	v_mul_f32_e32 v11, v11, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v51, v93, v2
	v_fma_f32 v51, v53, v95, v6
	v_fma_f32 v53, v55, v97, v18
	v_fma_f32 v55, v57, v99, v8
	v_fma_f32 v57, v59, v101, v22
	v_fma_f32 v14, v14, v109, v30
	v_fma_f32 v77, v31, v117, v39
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v63, 0, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v15, v110, v78
	v_fma_f32 v73, v19, v113, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	v_cndmask_b32_e64 v15, v7, v54, s3
	v_cndmask_b32_e64 v19, v21, v56, s3
	v_cndmask_b32_e64 v1, v76, v70, s3
	v_cndmask_b32_e64 v7, v32, v16, s3
	v_cndmask_b32_e64 v16, v35, v20, s3
	v_cndmask_b32_e64 v20, v38, v75, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v64, v68, 8, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v61, v103, v24
	v_fma_f32 v61, v67, v105, v26
	v_fma_f32 v67, v4, v107, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v45, s3
	v_cndmask_b32_e64 v4, v3, v50, s3
	v_cndmask_b32_e64 v21, v22, v57, s3
	v_cndmask_b32_e64 v3, v30, v14, s3
	v_cndmask_b32_e64 v22, v39, v77, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v150, v83, v36
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v63, v[0:1], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v64, v[2:3], v[21:22] offset1:2
	v_cndmask_b32_e64 v0, 0x840, 0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v83, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v33, v118, v40
	v_fma_f32 v48, v48, v119, v41
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v1, 0x700, v9
	v_lshlrev_b32_e32 v2, 2, v139
	v_xor_b32_e32 v0, v0, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v17, v112, v12
	v_fma_f32 v46, v46, v120, v42
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v65, v68, 16, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v25, v115, v36
	v_fma_f32 v49, v49, v121, v43
	v_fma_f32 v80, v11, v123, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v5, v52, s3
	v_cndmask_b32_e64 v23, v23, v58, s3
	v_cndmask_b32_e64 v25, v24, v59, s3
	v_cndmask_b32_e64 v5, v78, v71, s3
	v_cndmask_b32_e64 v24, v40, v79, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v66, v68, 24, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v122, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v51, s3
	v_cndmask_b32_e64 v29, v26, v61, s3
	v_cndmask_b32_e64 v26, v41, v48, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v19, v1, v2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v60, s3
	v_cndmask_b32_e64 v33, v28, v67, s3
	v_cndmask_b32_e64 v12, v12, v72, s3
	v_cndmask_b32_e64 v28, v42, v46, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v3, v68, 32, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v18, v53, s3
	v_cndmask_b32_e64 v14, v34, v73, s3
	v_cndmask_b32_e64 v30, v43, v49, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v65, v[4:5], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v66, v[6:7], v[25:26] offset1:2
	v_xad_u32 v4, v68, 40, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v69, v62, s3
	v_cndmask_b32_e64 v32, v44, v47, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v5, v68, 48, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v8, v55, s3
	v_cndmask_b32_e64 v18, v36, v74, s3
	v_cndmask_b32_e64 v34, v37, v80, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v6, v68, 56, 0
	v_add_nc_u32_e32 v0, 0, v19
	ds_store_2addr_stride64_b64 v3, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v4, v[13:14], v[29:30] offset1:2
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
	v_lshlrev_b32_e32 v32, 2, v92
	v_add_lshl_u32 v33, v92, s27, 2
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	s_mov_b32 s27, s15
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v92, s37, 2
	v_add_lshl_u32 v4, v92, s33, 2
	v_add_lshl_u32 v32, v92, s36, 2
	v_add_lshl_u32 v33, v92, s31, 2
	v_add_lshl_u32 v34, v92, s30, 2
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v16, v32, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v33, s[24:27], 0 offen
	buffer_atomic_add_f32 v24, v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v92, s29, 2
	v_add_lshl_u32 v4, v92, s34, 2
	v_add_lshl_u32 v8, v92, s28, 2
	v_add_lshl_u32 v12, v92, s23, 2
	v_add_lshl_u32 v16, v92, s22, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v12, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v16, s[24:27], 0 offen
	v_add_lshl_u32 v0, v92, s21, 2
	v_add_lshl_u32 v2, v92, s20, 2
	v_add_lshl_u32 v4, v92, s19, 2
	v_add_lshl_u32 v6, v92, s18, 2
	v_add_lshl_u32 v8, v92, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v6, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v8, s[24:27], 0 offen
	v_add_lshl_u32 v0, v92, s17, 2
	v_add_lshl_u32 v1, v92, s16, 2
	v_add_lshl_u32 v2, v92, s13, 2
	v_add_lshl_u32 v4, v92, s12, 2
	v_add_lshl_u32 v6, v92, s11, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v6, s[24:27], 0 offen
	v_add_lshl_u32 v0, v92, s10, 2
	v_add_lshl_u32 v1, v92, s9, 2
	v_add_lshl_u32 v2, v92, s8, 2
	v_add_lshl_u32 v4, v92, s7, 2
	v_add_lshl_u32 v5, v92, s6, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, v92, s5, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s35, 60
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v92, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s35, 62
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v92, s1, 2
	v_add_lshl_u32 v3, v92, s2, 2
	v_add_lshl_u32 v4, v92, s3, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 214
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10664
; TotalNumSgprs: 48
; NumVgprs: 214
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
