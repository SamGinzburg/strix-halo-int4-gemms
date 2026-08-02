	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s26, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v13, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v14, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v12, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 62, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v15, 6, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v11, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v18, 0x420, v14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v17, 48, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 4, v0
	v_and_b32_e32 v66, 8, v0
	v_and_b32_e32 v16, 48, v11
	v_and_b32_e32 v67, 32, v0
	v_lshlrev_b32_e32 v12, 3, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v14, v10, 1, v16
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
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v16, 2, v14
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v19, 8, v14
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v21, 10, v14
	v_or_b32_e32 v22, 12, v14
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v23, 14, v14
	v_or_b32_e32 v24, 64, v14
	v_or_b32_e32 v25, 0x42, v14
	v_or_b32_e32 v26, 0x44, v14
	v_or_b32_e32 v27, 0x46, v14
	v_or_b32_e32 v28, 0x48, v14
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
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v4
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s11
	s_mov_b64 s[24:25], s[14:15]
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
	s_mov_b32 s30, s10
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
	s_lshl_b32 s27, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s19, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s26, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s17, s19, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s27, v2
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s20, s17, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s35, s27
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s17, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s20
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s33, s16, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s26, 63
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s4
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_clause 0x1
	buffer_load_b128 v[29:32], v6, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v5, s[28:31], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v6, s26, v3
	s_mul_i32 s3, s34, s26
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s27, v5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, v6, v5, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s27, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s27, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s41, s35, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s17, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s41, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s26, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s35, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x1
	buffer_load_b128 v[37:40], v7, s[28:31], 0 offen
	buffer_load_b128 v[41:44], v9, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v20, v18, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v9, 3, v0
	v_lshlrev_b32_e32 v8, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v18, 6, v14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[45:48], v7, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s17, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v69, v15, 10, v20
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v15, 0x4c, v14
	v_or_b32_e32 v20, 0x4e, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v70, 0x90, v69
	v_xor_b32_e32 v71, 0x120, v69
	v_xor_b32_e32 v72, 0x1b0, v69
	v_xor_b32_e32 v73, 0x210, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v74, 0x330, v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_xor_b32_e32 v68, v13, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v75, 0x3a0, v69
	v_add_nc_u32_e32 v62, 0, v69
	v_add_nc_u32_e32 v63, 0, v70
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[49:52], v6, s[8:11], 0 offen
	v_add_nc_u32_e32 v61, 0, v68
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, 0, v71
	v_add_nc_u32_e32 v65, 0, v72
	v_add_nc_u32_e32 v76, 0, v73
	v_add_nc_u32_e32 v77, 0, v74
	v_add_nc_u32_e32 v78, 0, v75
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v9, v9, 16, v6
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v17, 4, v14
	v_or_b32_e32 v13, 0x4a, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v10, 32, v9
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
	v_lshl_or_b32 v77, v4, 6, v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v62, v6, 6, v29
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
.LBB0_3:                                ; %Flow49
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v30, s34, v9
	v_or_b32_e32 v31, s34, v10
	s_ashr_i32 s40, s6, 7
	v_or_b32_e32 v43, s33, v14
	v_or_b32_e32 v42, s33, v16
	v_mul_lo_u32 v60, v30, s40
	v_mul_lo_u32 v61, v31, s40
	v_or_b32_e32 v41, s33, v17
	v_or_b32_e32 v40, s33, v18
	v_or_b32_e32 v38, s33, v19
	v_or_b32_e32 v35, s33, v21
	v_or_b32_e32 v32, s33, v22
	v_or_b32_e32 v29, s33, v23
	v_or_b32_e32 v22, s33, v24
	v_or_b32_e32 v19, s33, v25
	v_or_b32_e32 v18, s33, v26
	v_or_b32_e32 v16, s33, v27
	v_or_b32_e32 v14, s33, v28
	v_or_b32_e32 v17, s33, v13
	v_or_b32_e32 v15, s33, v15
	v_or_b32_e32 v13, s33, v20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v20, v0, 5, 1
	v_bfe_i32 v21, v0, 3, 1
	v_and_b32_e32 v7, 0x430, v7
	v_and_b32_e32 v76, 0x800, v8
	v_lshl_or_b32 v77, v4, 6, v12
	v_and_b32_e32 v20, 0x420, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v8, s27, v2
	v_mov_b32_e32 v12, 0
	v_lshl_or_b32 v62, v6, 6, v7
	s_lshl_b32 s15, s19, 7
	v_and_or_b32 v4, 0x210, v21, v20
	v_add_nc_u32_e32 v6, 0x81, v8
	v_add_nc_u32_e32 v7, 0x80, v8
	s_lshl_b32 s16, s18, 7
	v_or_b32_e32 v85, 0x80, v2
	v_xor_b32_e32 v4, v4, v77
	v_or_b32_e32 v86, 0x80, v5
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	v_or_b32_e32 v78, v4, v76
	v_mul_lo_u32 v4, s35, v6
	v_mul_lo_u32 v6, s35, v7
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_add3_u32 v4, v4, s15, v1
	v_add3_u32 v1, v6, s15, v1
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v82, s16, v4
	v_subrev_nc_u32_e32 v83, s16, v1
	s_mov_b32 s16, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v3, s34, v3
	v_mov_b32_e32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v39, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s26, v3
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_add3_u32 v84, v3, v5, 0x80
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v52, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s14, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s14, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
	s_mov_b32 s44, 1
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s27
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s27, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v87, s17, v86
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v88, s17, v85
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v89, s17, v84
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 25
	s_mov_b32 s19, s16
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v87
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s27, s18
	s_mov_b32 s16, s43
	s_ashr_i32 s18, s18, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s40
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v87, 0x80000000, v89, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v88
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v89, v60, s18, 1
	v_add_lshl_u32 v90, v61, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v88, 0x80000000, v83, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[119:122], v87, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v91, v42, s18, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v87, 0x80000000, v82, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[123:126], v88, s[28:31], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[127:130], v87, s[28:31], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v88, v43, s18, 1
	v_add_lshl_u32 v92, v41, s18, 1
	v_add_lshl_u32 v93, v40, s18, 1
	v_add_lshl_u32 v94, v38, s18, 1
	v_add_lshl_u32 v95, v35, s18, 1
	v_add_lshl_u32 v96, v32, s18, 1
	v_add_lshl_u32 v97, v29, s18, 1
	v_add_lshl_u32 v98, v22, s18, 1
	v_add_lshl_u32 v99, v19, s18, 1
	v_add_lshl_u32 v100, v18, s18, 1
	v_add_lshl_u32 v101, v16, s18, 1
	v_add_lshl_u32 v102, v14, s18, 1
	v_add_lshl_u32 v103, v17, s18, 1
	v_add_lshl_u32 v104, v15, s18, 1
	v_add_lshl_u32 v105, v13, s18, 1
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
	buffer_load_u16 v187, v89, s[4:7], 0 offen
	buffer_load_u16 v188, v90, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v189, v87, s[36:39], 0 offen
	buffer_load_u16 v190, v88, s[36:39], 0 offen
	buffer_load_u16 v191, v91, s[36:39], 0 offen
	buffer_load_u16 v192, v92, s[36:39], 0 offen
	buffer_load_u16 v193, v93, s[36:39], 0 offen
	buffer_load_u16 v194, v94, s[36:39], 0 offen
	buffer_load_u16 v195, v95, s[36:39], 0 offen
	buffer_load_u16 v196, v96, s[36:39], 0 offen
	buffer_load_u16 v197, v97, s[36:39], 0 offen
	buffer_load_u16 v198, v98, s[36:39], 0 offen
	buffer_load_u16 v199, v99, s[36:39], 0 offen
	buffer_load_u16 v200, v100, s[36:39], 0 offen
	buffer_load_u16 v201, v101, s[36:39], 0 offen
	buffer_load_u16 v202, v102, s[36:39], 0 offen
	buffer_load_u16 v203, v103, s[36:39], 0 offen
	buffer_load_u16 v204, v104, s[36:39], 0 offen
	s_mov_b32 s18, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v91, s19, v78
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v87, s18, v62
	v_add_nc_u32_e32 v88, s18, v63
	v_add_nc_u32_e32 v89, s18, v65
	v_add_nc_u32_e32 v90, s18, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v92, s19, v79
	v_add_nc_u32_e32 v93, s19, v80
	v_add_nc_u32_e32 v94, s19, v81
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
	s_add_i32 s18, s44, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s18, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s44, s18, 0
	s_add_i32 s15, s15, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s18, s44, 12
	s_mov_b32 s14, s42
	s_add_i32 s19, s18, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s27, s27, 64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s43, s19, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s42, s19, 0x4000
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
	s_cmp_lg_u32 s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[103:110], v[171:174], v[147:150], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[179:182], v[151:154], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[183:186], v[151:154], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[175:178], v[147:150], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[179:182], v[155:158], v[103:110] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v131, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v140, v96
	v_cvt_f32_i32_e32 v142, v98
	v_cvt_f32_i32_e32 v133, v89
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v141, v97
	v_cvt_f32_i32_e32 v132, v88
	v_cvt_f32_i32_e32 v146, v102
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v137, v93
	v_cvt_f32_i32_e32 v143, v99
	v_cvt_f32_i32_e32 v145, v101
	v_cvt_f32_i32_e32 v138, v94
	v_cvt_f32_i32_e32 v139, v95
	v_wmma_i32_16x16x16_iu8 v[111:118], v[183:186], v[155:158], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v144, v100
	v_cvt_f32_i32_e32 v103, v103
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(18)
	v_perm_b32 v90, v128, v124, 0x5010400
	v_perm_b32 v91, v128, v124, 0x7030602
	v_perm_b32 v88, v127, v123, 0x5010400
	v_perm_b32 v89, v127, v123, 0x7030602
	v_perm_b32 v92, v129, v125, 0x5010400
	v_perm_b32 v93, v129, v125, 0x7030602
	v_perm_b32 v94, v130, v126, 0x5010400
	v_perm_b32 v95, v130, v126, 0x7030602
	v_lshrrev_b32_e32 v130, 8, v88
	v_lshrrev_b32_e32 v147, 24, v88
	v_lshrrev_b32_e32 v148, 8, v89
	v_lshrrev_b32_e32 v149, 24, v89
	v_lshrrev_b32_e32 v150, 8, v90
	v_and_b16 v87.l, 0xff, v88.l
	v_and_b16 v88.l, 0xff, v89.l
	v_and_b16 v89.l, 0xff, v90.l
	v_lshrrev_b32_e32 v151, 24, v90
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v96, 16, v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v90.l, 0xff, v91.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v98, 16, v189
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v152, 8, v91
	v_lshrrev_b32_e32 v153, 24, v91
	v_and_b16 v91.l, 0xff, v92.l
	v_lshrrev_b32_e32 v154, 8, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v162, v96, v98 :: v_dual_lshlrev_b32 v97, 16, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v155, 24, v92
	v_and_b16 v92.l, 0xff, v93.l
	v_lshrrev_b32_e32 v156, 8, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v12, v162, v131 :: v_dual_add_nc_u32 v205, s19, v68
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v178, v97, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v157, 24, v93
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v128, 16, v203
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v207, s43, v70
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v123, 16, v198
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v205, v[119:122] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v93.l, 0xff, v94.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v176, v96, v128
	v_mul_f32_e32 v128, v97, v128
	v_dual_mul_f32 v171, v96, v123 :: v_dual_lshlrev_b32 v102, 16, v193
	v_mul_f32_e32 v123, v97, v123
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v209, s43, v72
	v_lshrrev_b32_e32 v158, 8, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v166, v96, v102 :: v_dual_lshlrev_b32 v125, 16, v200
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v159, 24, v94
	v_and_b16 v94.l, 0xff, v95.l
	v_lshrrev_b32_e32 v160, 8, v95
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v24, v166, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v173, v96, v125 :: v_dual_add_nc_u32 v82, s41, v82
	v_dual_mul_f32 v125, v97, v125 :: v_dual_lshlrev_b32 v120, 16, v195
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v99, 16, v190
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v161, 24, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v182, v97, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v168, v96, v120
	v_dual_mul_f32 v120, v97, v120 :: v_dual_mul_f32 v163, v96, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v127, 16, v202
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v26, v168, v137 :: v_dual_lshlrev_b32 v129, 16, v204
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v208, s43, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v20, v163, v132
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v175, v96, v127 :: v_dual_add_nc_u32 v206, s43, v69
	v_dual_mul_f32 v127, v97, v127 :: v_dual_lshlrev_b32 v122, 16, v197
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v101, 16, v192
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v177, v96, v129 :: v_dual_lshlrev_b32 v124, 16, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v170, v96, v122
	v_dual_mul_f32 v122, v97, v122 :: v_dual_mul_f32 v165, v96, v101
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v126, 16, v201
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v97, v129
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v119, 16, v194
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v179, v97, v99 :: v_dual_add_nc_u32 v210, s43, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v23, v165, v134
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v174, v96, v126 :: v_dual_add_nc_u32 v83, s41, v83
	v_dual_mul_f32 v126, v97, v126 :: v_dual_lshlrev_b32 v121, 16, v196
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v100, 16, v191
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v181, v97, v101 :: v_dual_add_nc_u32 v212, s43, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v169, v96, v121
	v_dual_mul_f32 v172, v96, v124 :: v_dual_mul_f32 v121, v97, v121
	v_dual_mul_f32 v180, v97, v100 :: v_dual_add_nc_u32 v211, s43, v74
	v_mul_f32_e32 v164, v96, v100
	v_dual_mul_f32 v124, v97, v124 :: v_dual_mul_f32 v167, v96, v119
	v_mul_f32_e32 v119, v97, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v95.l, 8, v130.l
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
	v_fmac_f32_e32 v21, v164, v133
	v_dual_fmac_f32 v25, v167, v136 :: v_dual_fmac_f32 v28, v170, v139
	v_dual_fmac_f32 v27, v169, v138 :: v_dual_fmac_f32 v30, v171, v140
	v_dual_fmac_f32 v31, v172, v141 :: v_dual_fmac_f32 v34, v174, v143
	v_dual_fmac_f32 v33, v173, v142 :: v_dual_fmac_f32 v36, v175, v144
	v_dual_fmac_f32 v37, v176, v145 :: v_dual_fmac_f32 v44, v178, v103
	v_dual_fmac_f32 v39, v177, v146 :: v_dual_fmac_f32 v46, v180, v105
	v_dual_fmac_f32 v45, v179, v104 :: v_dual_fmac_f32 v48, v182, v107
	v_dual_fmac_f32 v47, v181, v106 :: v_dual_fmac_f32 v50, v120, v109
	v_dual_fmac_f32 v49, v119, v108 :: v_dual_fmac_f32 v56, v125, v114
	v_dual_fmac_f32 v51, v121, v110 :: v_dual_fmac_f32 v54, v123, v112
	v_dual_fmac_f32 v53, v122, v111 :: v_dual_fmac_f32 v58, v127, v116
	v_dual_fmac_f32 v55, v124, v113 :: v_dual_fmac_f32 v52, v129, v118
	v_fmac_f32_e32 v57, v126, v115
	v_fmac_f32_e32 v59, v128, v117
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
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v79, 0
	v_xor_b32_e32 v6, v2, v77
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v140, v6, v76
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v76, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_xor_b32_e32 v141, 16, v140
	v_xor_b32_e32 v143, 32, v140
	v_xor_b32_e32 v142, 48, v140
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s16, v143
	v_add_nc_u32_e32 v8, s16, v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v90, s11 :: v_dual_add_nc_u32 v7, s16, v142
	v_mov_b32_e32 v89, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[99:102], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v83, s4 :: v_dual_add_nc_u32 v6, s14, v62
	v_dual_mov_b32 v85, s6 :: v_dual_add_nc_u32 v66, s16, v141
	v_mov_b32_e32 v87, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[103:106], v8 offset:4096
	ds_load_b128 v[107:110], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s14, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v88, s9 :: v_dual_add_nc_u32 v67, s14, v63
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v6 offset:2048
	ds_load_b128 v[91:94], v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v66 offset:4096
	ds_load_b128 v[119:122], v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[123:126], v8 offset:2048
	ds_load_b128 v[127:130], v8
	ds_load_b128 v[131:134], v67 offset:2048
	ds_load_b128 v[135:138], v67
	v_add_nc_u32_e32 v6, s14, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v86, s7
	v_mov_b32_e32 v84, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[148:151], v7
	ds_load_b128 v[152:155], v7 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[156:159], v6 offset:2048
	ds_load_b128 v[144:147], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[107:110], v[91:94], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[91:94], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[107:110], v[111:114], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[111:114], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[119:122], v[135:138], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[115:118], v[135:138], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[119:122], v[131:134], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[115:118], v[131:134], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[99:102], v[127:130], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[2:5], v[127:130], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[123:126], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[2:5], v[123:126], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[148:151], v[144:147], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[152:155], v[144:147], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[148:151], v[156:159], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[152:155], v[156:159], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v68
	v_cvt_f32_i32_e32 v3, v69
	v_cvt_f32_i32_e32 v4, v70
	v_cvt_f32_i32_e32 v5, v71
	v_cvt_f32_i32_e32 v6, v72
	v_cvt_f32_i32_e32 v7, v73
	v_cvt_f32_i32_e32 v8, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v68, v76
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v91
	v_cvt_f32_i32_e32 v76, v92
	v_cvt_f32_i32_e32 v77, v93
	v_cvt_f32_i32_e32 v78, v94
	v_cvt_f32_i32_e32 v79, v95
	v_cvt_f32_i32_e32 v80, v96
	v_cvt_f32_i32_e32 v81, v97
	v_cvt_f32_i32_e32 v82, v98
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v67, v67
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s27, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s27, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s40
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v91, v60, s4, 1
	v_add_lshl_u32 v92, v61, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v93, v43, s4, 1
	v_add_lshl_u32 v94, v42, s4, 1
	v_add_lshl_u32 v95, v41, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v96, v40, s4, 1
	v_add_lshl_u32 v97, v38, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_add_lshl_u32 v98, v35, s4, 1
	v_add_lshl_u32 v99, v32, s4, 1
	v_add_lshl_u32 v100, v29, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_add_lshl_u32 v101, v22, s4, 1
	s_and_b32 s25, s25, 0xffff
	v_add_lshl_u32 v102, v19, s4, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v103, v18, s4, 1
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x7
	buffer_load_u16 v119, v93, s[24:27], 0 offen
	buffer_load_u16 v122, v94, s[24:27], 0 offen
	buffer_load_u16 v126, v95, s[24:27], 0 offen
	buffer_load_u16 v127, v96, s[24:27], 0 offen
	buffer_load_u16 v128, v97, s[24:27], 0 offen
	buffer_load_u16 v129, v98, s[24:27], 0 offen
	buffer_load_u16 v130, v99, s[24:27], 0 offen
	buffer_load_u16 v131, v100, s[24:27], 0 offen
	v_add_lshl_u32 v96, v16, s4, 1
	v_add_lshl_u32 v97, v14, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v101 :: v_dual_cndmask_b32 v94, 0x80000000, v102
	v_add_lshl_u32 v98, v17, s4, 1
	v_add_lshl_u32 v99, v15, s4, 1
	v_add_lshl_u32 v100, v13, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v103 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x7
	buffer_load_u16 v132, v93, s[24:27], 0 offen
	buffer_load_u16 v133, v94, s[24:27], 0 offen
	buffer_load_u16 v134, v95, s[24:27], 0 offen
	buffer_load_u16 v135, v96, s[24:27], 0 offen
	buffer_load_u16 v136, v97, s[24:27], 0 offen
	buffer_load_u16 v137, v98, s[24:27], 0 offen
	buffer_load_u16 v138, v99, s[24:27], 0 offen
	buffer_load_u16 v139, v100, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v91, v91, s[12:15], 0 offen
	buffer_load_u16 v92, v92, s[12:15], 0 offen
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
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v125, 0
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
	v_add_nc_u32_e32 v1, s43, v143
	v_add_nc_u32_e32 v93, s43, v141
	v_add_nc_u32_e32 v94, s43, v142
	v_add_nc_u32_e32 v95, s43, v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v147, s11 :: v_dual_mov_b32 v146, s10
	v_mov_b32_e32 v144, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[148:151], v1 offset:4096
	ds_load_b128 v[152:155], v1
	ds_load_b128 v[156:159], v93 offset:4096
	ds_load_b128 v[160:163], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v140, s4 :: v_dual_add_nc_u32 v1, s42, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[172:175], v1 offset:2048
	ds_load_b128 v[109:112], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v142, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[164:167], v95 offset:4096
	ds_load_b128 v[168:171], v95
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v95, s42, v63
	v_add_nc_u32_e32 v93, s42, v65
	ds_load_b128 v[180:183], v95 offset:2048
	ds_load_b128 v[184:187], v95
	v_add_nc_u32_e32 v1, s42, v64
	ds_load_b128 v[62:65], v93 offset:2048
	ds_load_b128 v[176:179], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v145, s9
	v_mov_b32_e32 v143, s7
	v_mov_b32_e32 v141, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[188:191], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[192:195], v94
	ds_load_b128 v[196:199], v94 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[200:203], v1 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[164:167], v[109:112], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[168:171], v[109:112], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[168:171], v[172:175], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[172:175], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[160:163], v[184:187], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[156:159], v[184:187], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[160:163], v[180:183], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[156:159], v[180:183], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[152:155], v[176:179], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[148:151], v[176:179], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[152:155], v[62:65], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[148:151], v[62:65], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[192:195], v[188:191], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[196:199], v[188:191], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[192:195], v[200:203], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[196:199], v[200:203], v[140:147] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v140
	v_cvt_f32_i32_e32 v117, v141
	v_cvt_f32_i32_e32 v118, v142
	v_cvt_f32_i32_e32 v120, v143
	v_cvt_f32_i32_e32 v121, v144
	v_cvt_f32_i32_e32 v123, v145
	v_cvt_f32_i32_e32 v124, v146
	v_cvt_f32_i32_e32 v125, v147
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s17, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v63.h, v139.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v64.h, v138.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s40
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v60, s4, 1
	v_add_lshl_u32 v61, v61, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v43, v43, s4, 1
	v_add_lshl_u32 v42, v42, s4, 1
	v_add_lshl_u32 v22, v22, s4, 1
	v_add_lshl_u32 v41, v41, s4, 1
	v_add_lshl_u32 v19, v19, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v40, v40, s4, 1
	v_add_lshl_u32 v18, v18, s4, 1
	v_add_lshl_u32 v38, v38, s4, 1
	v_add_lshl_u32 v35, v35, s4, 1
	v_add_lshl_u32 v32, v32, s4, 1
	v_add_lshl_u32 v29, v29, s4, 1
	v_add_lshl_u32 v16, v16, s4, 1
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	v_add_lshl_u32 v14, v14, s4, 1
	v_add_lshl_u32 v17, v17, s4, 1
	v_add_lshl_u32 v15, v15, s4, 1
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	v_add_lshl_u32 v13, v13, s4, 1
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v15, 0x80000000, v15
	s_clause 0x7
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x7
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	buffer_load_u16 v62, v13, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	s_clause 0x1
	buffer_load_u16 v60, v60, s[12:15], 0 offen
	buffer_load_u16 v61, v61, s[12:15], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v13.h, v92.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v65.h, v137.l
	v_mov_b16_e64 v92.h, v136.l
	v_mov_b16_e64 v119.h, v135.l
	v_mov_b16_e64 v122.h, v134.l
	v_mov_b16_e64 v126.h, v133.l
	v_mov_b16_e64 v127.h, v132.l
	v_mov_b16_e64 v128.h, v131.l
	v_mov_b16_e64 v129.h, v130.l
	v_mov_b16_e64 v130.h, v129.l
	v_mov_b16_e64 v131.h, v128.l
	v_mov_b16_e64 v132.h, v127.l
	v_mov_b16_e64 v133.h, v126.l
	v_mov_b16_e64 v134.h, v122.l
	v_mov_b16_e64 v135.h, v119.l
	v_mov_b16_e32 v63.l, v13.l
	v_mov_b16_e32 v64.l, v13.l
	v_mov_b16_e32 v65.l, v13.l
	v_mov_b16_e32 v92.l, v13.l
	v_mov_b16_e32 v119.l, v13.l
	v_mov_b16_e32 v122.l, v13.l
	v_mov_b16_e32 v126.l, v13.l
	v_mov_b16_e32 v127.l, v13.l
	v_mov_b16_e64 v128.l, v13.l
	v_mov_b16_e64 v129.l, v13.l
	v_mov_b16_e64 v130.l, v13.l
	v_mov_b16_e64 v131.l, v13.l
	v_mov_b16_e64 v132.l, v13.l
	v_mov_b16_e64 v133.l, v13.l
	v_mov_b16_e64 v134.l, v13.l
	v_mov_b16_e64 v135.l, v13.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v138, v13, v65 :: v_dual_and_b32 v11, 56, v11
	v_mul_f32_e32 v136, v13, v63
	v_mul_f32_e32 v137, v13, v64
	v_mul_f32_e32 v139, v13, v92
	v_mul_f32_e32 v140, v13, v119
	v_mul_f32_e32 v141, v13, v122
	v_mul_f32_e32 v142, v13, v126
	v_mul_f32_e32 v143, v13, v127
	v_mul_f32_e32 v144, v13, v128
	v_mul_f32_e32 v145, v13, v129
	v_mul_f32_e32 v146, v13, v130
	v_mul_f32_e32 v147, v13, v131
	v_mul_f32_e32 v148, v13, v132
	v_mul_f32_e32 v149, v13, v133
	v_mul_f32_e32 v150, v13, v134
	v_mul_f32_e32 v151, v13, v135
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v13.h, v91.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v138, v88, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v13, v92
	v_mul_f32_e32 v92, v13, v119
	v_mul_f32_e32 v119, v13, v122
	v_mul_f32_e32 v122, v13, v126
	v_mul_f32_e32 v126, v13, v127
	v_mul_f32_e32 v64, v13, v64
	v_mul_f32_e32 v63, v13, v63
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v58, v88, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v127, v13, v128 :: v_dual_lshlrev_b32 v22, 16, v22
	v_dual_mul_f32 v128, v13, v129 :: v_dual_lshlrev_b32 v35, 16, v35
	v_dual_mul_f32 v129, v13, v130 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v130, v13, v131 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v131, v13, v132 :: v_dual_lshlrev_b32 v18, 16, v18
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v132, v13, v133 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v133, v13, v134
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v64, v73, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v3, v132, v3, v21
	v_fma_f32 v4, v131, v4, v23
	v_fma_f32 v2, v133, v2, v20
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v64, s2
	v_cndmask_b32_e64 v3, v21, v3, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v20, v2, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v20, 16, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v134, v13, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v122, v68, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v23, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v20, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v128, v7, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v20, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v127, v8, v27
	v_fma_f32 v67, v134, v67, v12
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v26, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v26, 16, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v27, v8, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v27, 16, v38
	v_lshlrev_b32_e32 v38, 16, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v63, v74, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v62, v20, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v129, v6, v25
	v_fma_f32 v75, v151, v75, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v20, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v126, v66, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v63, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v41
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v20, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v130, v5, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v65, v13, v65 :: v_dual_mul_f32 v40, v20, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v75, s2
	v_cndmask_b32_e64 v30, v30, v68, s2
	v_cndmask_b32_e64 v28, v28, v66, s2
	v_cndmask_b32_e64 v5, v24, v5, s2
	v_cndmask_b32_e64 v12, v12, v67, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v24, 16, v42
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v20, v25
	v_mul_f32_e32 v60, v20, v27
	v_dual_mul_f32 v68, v20, v14 :: v_dual_mul_f32 v23, v21, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v72, v36
	v_fma_f32 v69, v119, v69, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v20, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v92, v70, v33
	v_fma_f32 v1, v40, v1, v12
	v_fma_f32 v40, v42, v94, v3
	v_fma_f32 v42, v60, v96, v5
	v_fma_f32 v60, v62, v98, v7
	v_fma_f32 v62, v64, v100, v28
	v_fma_f32 v23, v23, v108, v44
	v_fma_f32 v79, v147, v79, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v65, s2
	v_cndmask_b32_e64 v33, v33, v70, s2
	v_cndmask_b32_e64 v31, v31, v69, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v20, v19
	v_mul_f32_e32 v66, v20, v18
	v_mul_f32_e32 v67, v20, v16
	v_dual_mul_f32 v69, v20, v17 :: v_dual_mul_f32 v24, v21, v24
	v_mul_f32_e32 v70, v20, v15
	v_dual_mul_f32 v20, v20, v38 :: v_dual_mul_f32 v25, v21, v25
	v_mul_f32_e32 v27, v21, v27
	v_mul_f32_e32 v35, v21, v35
	v_mul_f32_e32 v29, v21, v29
	v_mul_f32_e32 v22, v21, v22
	v_mul_f32_e32 v19, v21, v19
	v_mul_f32_e32 v16, v21, v16
	v_mul_f32_e32 v14, v21, v14
	v_mul_f32_e32 v15, v21, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v12, v1, s3
	v_cndmask_b32_e64 v3, v3, v40, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v21, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v60, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v21, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v28, v62, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v21, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v44, v23, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v21, v18
	v_mul_f32_e32 v21, v21, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v41, v93, v2
	v_fma_f32 v80, v146, v80, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v79, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v43, v95, v4
	v_fma_f32 v86, v140, v86, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v38, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v141, v85, v55
	v_fma_f32 v83, v143, v83, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v91, v71, v34
	v_fma_f32 v43, v61, v97, v6
	v_fma_f32 v61, v63, v99, v8
	v_fma_f32 v63, v65, v101, v30
	v_fma_f32 v64, v66, v102, v31
	v_fma_f32 v65, v67, v103, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v41, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v2, v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v112, v48
	v_fma_f32 v87, v139, v87, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v86, s2
	v_cndmask_b32_e64 v55, v55, v85, s2
	v_cndmask_b32_e64 v53, v53, v83, s2
	v_cndmask_b32_e64 v34, v34, v71, s2
	v_cndmask_b32_e64 v28, v30, v63, s3
	v_cndmask_b32_e64 v30, v31, v64, s3
	v_cndmask_b32_e64 v31, v33, v65, s3
	v_cndmask_b32_e64 v27, v48, v27, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v35, v113, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v87, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v68, v104, v34
	v_fma_f32 v67, v69, v105, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v42, s3
	v_cndmask_b32_e64 v35, v49, v35, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v31, v31, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v116, v53
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v23, v23, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v118, v55
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v27, v27, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v120, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v34, v66, s3
	v_cndmask_b32_e64 v34, v36, v67, s3
	v_cndmask_b32_e64 v22, v53, v22, s3
	v_cndmask_b32_e64 v18, v55, v18, s3
	v_cndmask_b32_e64 v16, v56, v16, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v35, v35, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v121, v57
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v31, 0, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v142, v84, v54
	v_fma_f32 v81, v145, v81, v50
	v_fma_f32 v68, v70, v106, v37
	v_fma_f32 v20, v20, v107, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v57, v14, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v5, 0, v5
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v2, v2, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v84, s2
	v_cndmask_b32_e64 v50, v50, v81, s2
	v_cndmask_b32_e64 v8, v8, v61, s3
	v_cndmask_b32_e64 v36, v37, v68, s3
	v_cndmask_b32_e64 v20, v39, v20, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v14, v14, v14
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v18, 0, v18
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v37, s35, v9
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v13.l
	.loc	1 444 15 is_stmt 1              ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v149, v77, v46
	v_fma_f32 v76, v150, v76, v45
	v_fma_f32 v32, v32, v114, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v43, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, v8, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v117, v54
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v14, 0, v14 :: v_dual_and_b32 v9, 1, v9
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v38, s35, v10
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v13.l
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v136, v90, v52
	v_fma_f32 v89, v137, v89, v59
	v_fma_f32 v82, v144, v82, v51
	v_fma_f32 v78, v148, v78, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v77, s2
	v_cndmask_b32_e64 v45, v45, v76, s2
	v_cndmask_b32_e64 v32, v50, v32, s3
	v_cndmask_b32_e64 v19, v54, v19, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v16, 0, v16
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v3, v3, v3 :: v_dual_and_b32 v10, 1, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v9, 0x7fff
	v_mov_b16_e32 v9.h, v13.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v90, s2
	v_cndmask_b32_e64 v59, v59, v89, s2
	v_cndmask_b32_e64 v51, v51, v82, s2
	v_cndmask_b32_e64 v47, v47, v78, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s2, s34, s35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v109, v45
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s2, s2, s33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v110, v46
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v23, 0, v23
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v39, s2, v11
	v_add3_u32 v40, s2, v11, 64
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v3.h
	v_mov_b16_e32 v11.h, v13.l
	v_add3_u32 v1, v1, v10, 0x7fff
	v_mov_b16_e32 v9.l, v4.h
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v45, v24, s3
	v_cndmask_b32_e64 v25, v46, v25, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v19, 0, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v6, v6, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v24, v24, v24 :: v_dual_and_b32 v1, 1, v9
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v8, 0, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v3, v10, 0x7fff
	v_mov_b16_e32 v9.l, v6.h
	v_mov_b16_e32 v10.l, v5.h
	v_mov_b16_e32 v10.h, v13.l
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v111, v47
	v_fma_f32 v29, v29, v115, v51
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v25, 0, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v3, 1, v10
	v_and_b32_e32 v7, 1, v9
	v_mov_b16_e32 v9.l, v4.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v47, v26, s3
	v_cndmask_b32_e64 v29, v51, v29, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v27, 0, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.h, v13.l
	v_and_b32_e32 v7, 1, v9
	v_mov_b16_e32 v6.l, v8.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v17, v123, v58
	v_fma_f32 v15, v15, v124, v59
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v30, 0, v30 :: v_dual_mul_f32 v9, v28, v28
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v3, 1, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v58, v17, s3
	v_cndmask_b32_e64 v15, v59, v15, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v29, 0, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v6.l, v9.h
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v7.h, v13.l
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v30, v30
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_and_b32 v6, 1, v6
	v_mul_f32_e32 v7, v31, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v8.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v15, 0, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v10, v4, 0x7fff
	v_add3_u32 v6, v9, v6, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v13.l
	v_and_b32_e32 v10, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v34, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v4.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v125, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v9.l, v11.h
	v_mov_b16_e32 v10.h, v13.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v52, v21, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v36, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v4.l, v8.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v21, v21, v21
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v33, v33
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v21, 0, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v12.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v28.h, v13.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v16, v16
	s_mov_b32 s2, 0x76543210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v20, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v7.h
	v_mov_b16_e32 v20.h, v13.l
	s_mov_b32 s3, s15
	v_add3_u32 v8, v12, v8, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v12, 1, v20
	v_mov_b16_e32 v9.l, v8.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v8, 1, v11
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v23.h
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v25, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.h, v13.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v20, v24, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	v_mov_b16_e32 v24.l, v10.h
	v_mov_b16_e32 v24.h, v13.l
	v_mov_b16_e32 v11.l, v20.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v26, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v23, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v26, v29, v29 :: v_dual_and_b32 v23, 1, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v11, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v24, v35, v35
	v_mul_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v10, v23, 0x7fff
	v_add3_u32 v11, v20, v11, 0x7fff
	v_mov_b16_e32 v20.l, v12.h
	v_mov_b16_e32 v20.h, v13.l
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v27, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e32 v23.h, v13.l
	v_and_b32_e32 v20, 1, v20
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v25.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v27, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v12, v20, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v20, 1, v23
	v_and_b32_e32 v23, 1, v25
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e32 v12.l, v10.h
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v7, v23, 0x7fff
	v_and_b32_e32 v23, 1, v25
	v_add3_u32 v10, v24, v20, 0x7fff
	v_mov_b16_e32 v24.h, v13.l
	v_and_b32_e32 v20, 1, v28
	v_mov_b16_e32 v10.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v22, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v26, v23, 0x7fff
	v_mov_b16_e32 v23.l, v19.h
	v_mov_b16_e32 v23.h, v13.l
	v_mov_b16_e32 v25.l, v18.h
	v_mov_b16_e32 v24.l, v7.h
	v_add3_u32 v20, v27, v20, 0x7fff
	v_mov_b16_e32 v26.l, v16.h
	v_and_b32_e32 v23, 1, v23
	v_mov_b16_e32 v26.h, v13.l
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v25, 1, v25
	v_mov_b16_e32 v22.l, v20.h
	v_add3_u32 v19, v19, v23, 0x7fff
	v_and_b32_e32 v20, 1, v26
	v_add3_u32 v7, v7, v24, 0x7fff
	v_add3_u32 v18, v18, v25, 0x7fff
	v_mov_b16_e32 v23.h, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v16, v20, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v17, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.h, v13.l
	v_mov_b16_e32 v16.l, v18.h
	v_mov_b16_e32 v18.h, v13.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v20, v21, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v15.h
	v_mov_b16_e32 v21.h, v13.l
	v_mov_b16_e32 v23.l, v20.h
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v18.l, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v21
	v_add3_u32 v7, v7, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, v10, v11 :: v_dual_and_b32 v18, 1, v18
	v_add3_u32 v13, v15, v13, 0x7fff
	v_mov_b32_e32 v15, 0x7632
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v14, v18, 0x7fff
	v_and_b32_e32 v18, 1, v23
	v_mov_b16_e32 v7.l, v14.h
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v20, v18, 0x7fff
	v_mov_b16_e32 v0.l, v13.h
	v_dual_cndmask_b32 v13, v5, v2 :: v_dual_cndmask_b32 v2, v2, v5
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_dual_cndmask_b32 v14, v9, v6 :: v_dual_cndmask_b32 v3, v6, v9
	v_dual_mov_b32 v6, 0x5410 :: v_dual_cndmask_b32 v9, v8, v4
	v_cndmask_b32_e32 v18, v0, v16, vcc_lo
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v16, v1, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 8, v6
	v_and_b32_e32 v6, 0x540054, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v6, 4, v6
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v15 :: v_dual_cndmask_b32 v11, v22, v12
	v_dual_cndmask_b32 v12, v12, v22 :: v_dual_cndmask_b32 v15, v7, v19
	v_cndmask_b32_e32 v7, v19, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 8, v10
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_permlanex16_b32 v19, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v13, v21
	v_perm_b32 v8, v20, v17, v21
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 0x7060706, v6
	v_perm_b32 v4, v10, v14, v21
	v_perm_b32 v6, v19, v9, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v1, v2, v13, v22
	v_perm_b32 v2, v16, v5, v21
	v_perm_b32 v3, v16, v5, v22
	v_add_lshl_u32 v16, v39, v37, 1
	v_perm_b32 v5, v10, v14, v22
	v_perm_b32 v7, v19, v9, v22
	v_perm_b32 v9, v20, v17, v22
	v_add_lshl_u32 v17, v40, v37, 1
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v15, v21
	v_perm_b32 v13, v23, v15, v22
	v_perm_b32 v14, v24, v18, v21
	v_perm_b32 v15, v24, v18, v22
	v_add_lshl_u32 v18, v39, v38, 1
	v_add_lshl_u32 v19, v40, v38, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v17, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v18, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v19, s[0:3], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 213
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11280
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
