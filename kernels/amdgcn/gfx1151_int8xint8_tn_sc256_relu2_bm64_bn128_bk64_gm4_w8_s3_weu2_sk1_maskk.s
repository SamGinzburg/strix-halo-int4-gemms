	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v66, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v15, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v11, v0, 0, 1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 62, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 6, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v59, 0, v66
	v_and_b32_e32 v67, 8, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 0x420, v11
	v_and_b32_e32 v68, 32, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v12, 48, v15
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
	s_lshl_b32 s44, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s19, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s26, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s17, s19, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s44, v3
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s20, s17, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s35, s44
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s17, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s33, s16, v5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
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
	s_lshl_b32 s40, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s44, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[27:30], v6, s[28:31], 0 offen
	buffer_load_b128 v[31:34], v5, s[28:31], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v6, s34, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s44, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s27, s35, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s17, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s27, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v6, v6, v5, s40
	s_mul_i32 s7, s34, s44
	s_lshl_b32 s43, s34, 6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s26, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s35, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s7, v6
	v_add3_u32 v6, s7, s43, v6
	s_mov_b32 s16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x1
	buffer_load_b128 v[35:38], v7, s[28:31], 0 offen
	buffer_load_b128 v[39:42], v9, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[43:46], v7, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s17, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v7
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v7, 15, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v13, v8, 16, v7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v8, v9, 1, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v9, v11, v3
	v_lshlrev_b32_e32 v7, 3, v10
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v14, 32, v13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[47:50], v6, s[8:11], 0 offen
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v69, v10, 10, v9
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 2, v8
	v_or_b32_e32 v16, 4, v8
	v_or_b32_e32 v17, 6, v8
	v_or_b32_e32 v18, 8, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v70, 0x90, v69
	v_xor_b32_e32 v71, 0x120, v69
	v_xor_b32_e32 v72, 0x1b0, v69
	v_xor_b32_e32 v73, 0x210, v69
	v_xor_b32_e32 v74, 0x330, v69
	v_xor_b32_e32 v75, 0x3a0, v69
	v_add_nc_u32_e32 v60, 0, v69
	v_add_nc_u32_e32 v61, 0, v70
	v_add_nc_u32_e32 v62, 0, v71
	v_add_nc_u32_e32 v63, 0, v72
	v_add_nc_u32_e32 v64, 0, v73
	v_add_nc_u32_e32 v65, 0, v74
	v_add_nc_u32_e32 v76, 0, v75
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v19, 10, v8
	v_or_b32_e32 v20, 12, v8
	v_or_b32_e32 v21, 14, v8
	v_or_b32_e32 v22, 64, v8
	v_or_b32_e32 v23, 0x42, v8
	v_or_b32_e32 v24, 0x44, v8
	v_or_b32_e32 v25, 0x46, v8
	v_or_b32_e32 v26, 0x48, v8
	v_or_b32_e32 v9, 0x4a, v8
	v_or_b32_e32 v10, 0x4c, v8
	v_or_b32_e32 v11, 0x4e, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v51, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v52, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v53, v33, v29, 0x5010400
	v_lshrrev_b32_e32 v56, 8, v51
	v_lshrrev_b32_e32 v57, 24, v51
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v54, v34, v30, 0x5010400
	v_perm_b32 v55, v34, v30, 0x7030602
	v_lshrrev_b32_e32 v58, 8, v31
	v_and_b16 v27.l, 0xff, v51.l
	v_and_b16 v27.h, 0xff, v51.h
	v_lshrrev_b32_e32 v77, 24, v31
	v_lshlrev_b16 v51.l, 8, v56.l
	v_lshlrev_b16 v51.h, 8, v57.l
	v_lshrrev_b32_e32 v78, 8, v52
	v_lshrrev_b32_e32 v79, 24, v52
	v_lshrrev_b32_e32 v80, 8, v32
	v_lshrrev_b32_e32 v81, 24, v32
	v_lshrrev_b32_e32 v82, 8, v53
	v_lshrrev_b32_e32 v83, 24, v53
	v_lshrrev_b32_e32 v84, 8, v33
	v_lshrrev_b32_e32 v85, 24, v33
	v_lshrrev_b32_e32 v86, 8, v54
	v_lshrrev_b32_e32 v87, 24, v54
	v_lshrrev_b32_e32 v88, 8, v55
	v_lshrrev_b32_e32 v89, 24, v55
	v_and_b16 v28.l, 0xff, v31.l
	v_and_b16 v29.l, 0xff, v52.l
	v_lshlrev_b16 v52.l, 8, v58.l
	v_and_b16 v28.h, 0xff, v31.h
	v_and_b16 v29.h, 0xff, v52.h
	v_lshlrev_b16 v52.h, 8, v77.l
	v_or_b16 v27.l, v27.l, v51.l
	v_or_b16 v27.h, v27.h, v51.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v51, v39, v35, 0x5010400
	v_and_b16 v30.l, 0xff, v32.l
	v_and_b16 v30.h, 0xff, v32.h
	v_and_b16 v31.l, 0xff, v53.l
	v_and_b16 v31.h, 0xff, v53.h
	v_and_b16 v32.l, 0xff, v33.l
	v_and_b16 v32.h, 0xff, v33.h
	v_and_b16 v33.l, 0xff, v54.l
	v_and_b16 v33.h, 0xff, v54.h
	v_and_b16 v34.l, 0xff, v55.l
	v_and_b16 v34.h, 0xff, v55.h
	v_lshlrev_b16 v53.l, 8, v78.l
	v_lshlrev_b16 v53.h, 8, v79.l
	v_lshlrev_b16 v54.l, 8, v80.l
	v_lshlrev_b16 v54.h, 8, v81.l
	v_lshlrev_b16 v55.l, 8, v82.l
	v_lshlrev_b16 v55.h, 8, v83.l
	v_lshlrev_b16 v56.l, 8, v84.l
	v_lshlrev_b16 v56.h, 8, v85.l
	v_lshlrev_b16 v57.l, 8, v86.l
	v_lshlrev_b16 v57.h, 8, v87.l
	v_lshlrev_b16 v58.l, 8, v88.l
	v_lshlrev_b16 v58.h, 8, v89.l
	v_perm_b32 v35, v39, v35, 0x7030602
	v_or_b16 v28.l, v28.l, v52.l
	v_perm_b32 v39, v40, v36, 0x5010400
	v_perm_b32 v36, v40, v36, 0x7030602
	v_perm_b32 v40, v41, v37, 0x5010400
	v_perm_b32 v37, v41, v37, 0x7030602
	v_perm_b32 v41, v42, v38, 0x5010400
	v_perm_b32 v38, v42, v38, 0x7030602
	v_or_b16 v28.h, v28.h, v52.h
	v_lshrrev_b32_e32 v42, 8, v51
	v_or_b16 v29.l, v29.l, v53.l
	v_or_b16 v29.h, v29.h, v53.h
	v_or_b16 v30.l, v30.l, v54.l
	v_or_b16 v30.h, v30.h, v54.h
	v_or_b16 v31.l, v31.l, v55.l
	v_or_b16 v31.h, v31.h, v55.h
	v_or_b16 v32.l, v32.l, v56.l
	v_or_b16 v32.h, v32.h, v56.h
	v_or_b16 v33.l, v33.l, v57.l
	v_or_b16 v33.h, v33.h, v57.h
	v_or_b16 v34.l, v34.l, v58.l
	v_or_b16 v34.h, v34.h, v58.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v59, v[43:46] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v27
	ds_store_b16_d16_hi v60, v27 offset:64
	ds_store_b16 v61, v28
	ds_store_b16_d16_hi v61, v28 offset:64
	ds_store_b16 v62, v29
	ds_store_b16_d16_hi v62, v29 offset:64
	ds_store_b16 v63, v30
	ds_store_b16_d16_hi v63, v30 offset:64
	ds_store_b16 v64, v31
	ds_store_b16_d16_hi v64, v31 offset:64
	ds_store_b16 v60, v32 offset:640
	ds_store_b16_d16_hi v60, v32 offset:704
	ds_store_b16 v65, v33
	ds_store_b16_d16_hi v65, v33 offset:64
	ds_store_b16 v76, v34
	ds_store_b16_d16_hi v76, v34 offset:64
	v_lshrrev_b32_e32 v43, 24, v51
	v_lshrrev_b32_e32 v44, 8, v35
	v_lshrrev_b32_e32 v45, 24, v35
	v_and_b16 v27.l, 0xff, v51.l
	v_and_b16 v27.h, 0xff, v51.h
	v_and_b16 v29.l, 0xff, v39.l
	v_lshrrev_b32_e32 v46, 8, v39
	v_lshrrev_b32_e32 v51, 24, v39
	v_and_b16 v29.h, 0xff, v39.h
	v_lshrrev_b32_e32 v39, 8, v36
	v_lshrrev_b32_e32 v52, 24, v36
	v_and_b16 v31.l, 0xff, v40.l
	v_lshrrev_b32_e32 v53, 8, v40
	v_lshrrev_b32_e32 v54, 24, v40
	v_and_b16 v31.h, 0xff, v40.h
	v_lshrrev_b32_e32 v40, 8, v37
	v_lshrrev_b32_e32 v55, 24, v37
	v_lshrrev_b32_e32 v56, 8, v41
	v_lshrrev_b32_e32 v57, 24, v41
	v_lshrrev_b32_e32 v58, 8, v38
	v_lshrrev_b32_e32 v77, 24, v38
	v_and_b16 v28.l, 0xff, v35.l
	v_lshlrev_b16 v35.l, 8, v42.l
	v_and_b16 v28.h, 0xff, v35.h
	v_lshlrev_b16 v35.h, 8, v43.l
	v_and_b16 v30.l, 0xff, v36.l
	v_lshlrev_b16 v36.l, 8, v44.l
	v_and_b16 v30.h, 0xff, v36.h
	v_lshlrev_b16 v36.h, 8, v45.l
	v_and_b16 v32.l, 0xff, v37.l
	v_and_b16 v32.h, 0xff, v37.h
	v_and_b16 v33.l, 0xff, v41.l
	v_and_b16 v33.h, 0xff, v41.h
	v_and_b16 v34.l, 0xff, v38.l
	v_and_b16 v34.h, 0xff, v38.h
	v_lshlrev_b16 v37.l, 8, v46.l
	v_lshlrev_b16 v37.h, 8, v51.l
	v_lshlrev_b16 v38.l, 8, v39.l
	v_lshlrev_b16 v38.h, 8, v52.l
	v_lshlrev_b16 v39.l, 8, v53.l
	v_lshlrev_b16 v39.h, 8, v54.l
	v_lshlrev_b16 v40.l, 8, v40.l
	v_lshlrev_b16 v40.h, 8, v55.l
	v_lshlrev_b16 v41.l, 8, v56.l
	v_lshlrev_b16 v41.h, 8, v57.l
	v_lshlrev_b16 v42.l, 8, v58.l
	v_lshlrev_b16 v42.h, 8, v77.l
	v_or_b16 v27.l, v27.l, v35.l
	v_or_b16 v27.h, v27.h, v35.h
	v_or_b16 v28.l, v28.l, v36.l
	v_or_b16 v28.h, v28.h, v36.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v29.l, v29.l, v37.l
	v_or_b16 v29.h, v29.h, v37.h
	v_or_b16 v30.l, v30.l, v38.l
	v_or_b16 v30.h, v30.h, v38.h
	v_or_b16 v31.l, v31.l, v39.l
	v_or_b16 v31.h, v31.h, v39.h
	v_or_b16 v32.l, v32.l, v40.l
	v_or_b16 v32.h, v32.h, v40.h
	v_or_b16 v33.l, v33.l, v41.l
	v_or_b16 v33.h, v33.h, v41.h
	v_or_b16 v34.l, v34.l, v42.l
	v_or_b16 v34.h, v34.h, v42.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v59, v[47:50] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v27 offset:8192
	ds_store_b16_d16_hi v60, v27 offset:8256
	ds_store_b16 v61, v28 offset:8192
	ds_store_b16_d16_hi v61, v28 offset:8256
	ds_store_b16 v62, v29 offset:8192
	ds_store_b16_d16_hi v62, v29 offset:8256
	ds_store_b16 v63, v30 offset:8192
	ds_store_b16_d16_hi v63, v30 offset:8256
	ds_store_b16 v64, v31 offset:8192
	ds_store_b16_d16_hi v64, v31 offset:8256
	ds_store_b16 v60, v32 offset:8832
	ds_store_b16_d16_hi v60, v32 offset:8896
	ds_store_b16 v65, v33 offset:8192
	ds_store_b16_d16_hi v65, v33 offset:8256
	ds_store_b16 v76, v34 offset:8192
	ds_store_b16_d16_hi v76, v34 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v78, 8, v0
	v_and_b32_e32 v79, 32, v0
	v_and_b32_e32 v76, 0x800, v6
	v_lshl_or_b32 v77, v4, 6, v7
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
.LBB0_3:                                ; %Flow51
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v28, s40, v13
	v_or_b32_e32 v29, s40, v14
	s_ashr_i32 s41, s6, 8
	v_or_b32_e32 v51, s33, v8
	v_or_b32_e32 v46, s33, v12
	v_mul_lo_u32 v64, v28, s41
	v_mul_lo_u32 v65, v29, s41
	v_or_b32_e32 v45, s33, v16
	v_or_b32_e32 v44, s33, v17
	v_or_b32_e32 v43, s33, v18
	v_or_b32_e32 v42, s33, v19
	v_or_b32_e32 v41, s33, v20
	v_or_b32_e32 v40, s33, v21
	v_or_b32_e32 v33, s33, v22
	v_or_b32_e32 v30, s33, v23
	v_or_b32_e32 v27, s33, v24
	v_or_b32_e32 v20, s33, v25
	v_or_b32_e32 v18, s33, v26
	v_or_b32_e32 v21, s33, v9
	v_or_b32_e32 v19, s33, v10
	v_or_b32_e32 v17, s33, v11
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s15, s19, 7
	s_mov_b32 s17, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, s44, v3
	v_and_b32_e32 v76, 0x800, v6
	v_lshl_or_b32 v77, v4, 6, v7
	v_mov_b32_e32 v16, 0
	v_bfe_i32 v8, v0, 5, 1
	v_add_nc_u32_e32 v6, 0x81, v10
	v_add_nc_u32_e32 v7, 0x80, v10
	v_bfe_i32 v9, v0, 3, 1
	v_or_b32_e32 v85, 0x80, v3
	v_or_b32_e32 v86, 0x80, v2
	v_mul_lo_u32 v6, s35, v6
	v_mul_lo_u32 v7, s35, v7
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v39, 0
	v_add3_u32 v6, v6, s15, v1
	v_add3_u32 v1, v7, s15, v1
	s_lshl_b32 s15, s18, 7
	s_mov_b32 s18, s16
	v_and_b32_e32 v8, 0x420, v8
	v_subrev_nc_u32_e32 v82, s15, v6
	v_subrev_nc_u32_e32 v83, s15, v1
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v4, 0x210, v9, v8
	v_add3_u32 v8, s44, v2, 0x80
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v53, 0
	v_xor_b32_e32 v4, v4, v77
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v25, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v78, v4, v76
	v_mul_lo_u32 v4, s34, v8
	v_mov_b32_e32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v57, 0
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	v_add3_u32 v84, v4, s40, v5
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v56, 0
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
	s_add_i32 s14, s14, -2
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s34, 0, 0x2000
	s_mov_b32 s15, 1
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s44
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v143, s45, v13
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v9, s17, v86
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v95, s16, v78
	v_add_nc_u32_e32 v96, s16, v79
	s_mov_b32 s45, s42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v9
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v84, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v84, s43, v84
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v87, v143 offset:832
	ds_load_u8 v88, v143 offset:768
	ds_load_u8 v89, v143 offset:960
	ds_load_u8 v90, v143 offset:896
	ds_load_u8 v91, v143 offset:576
	ds_load_u8 v92, v143 offset:512
	ds_load_u8 v93, v143 offset:704
	ds_load_u8 v94, v143 offset:640
	ds_load_u8 v97, v143 offset:320
	ds_load_u8 v98, v143 offset:256
	ds_load_u8 v99, v143 offset:448
	ds_load_u8 v100, v143 offset:384
	ds_load_u8 v101, v143 offset:64
	ds_load_u8 v102, v143
	ds_load_u8 v103, v143 offset:192
	ds_load_u8 v104, v143 offset:128
	ds_load_u8 v105, v143 offset:1856
	ds_load_u8 v106, v143 offset:1792
	ds_load_u8 v107, v143 offset:1984
	ds_load_u8 v108, v143 offset:1920
	ds_load_u8 v109, v143 offset:1600
	ds_load_u8 v110, v143 offset:1536
	ds_load_u8 v111, v143 offset:1728
	ds_load_u8 v112, v143 offset:1664
	ds_load_u8 v113, v143 offset:1344
	ds_load_u8 v114, v143 offset:1280
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v143 offset:1472
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v143 offset:1408
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v143 offset:1088
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v143 offset:1216
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v143 offset:1152
	ds_load_u8 v94, v143 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v115, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v116, v108, v107, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v117, v110, v109, 0xc0c0004
	v_perm_b32 v102, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v119, v112, v111, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[103:106], v95
	ds_load_b128 v[107:110], v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v114, v113, 0xc0c0004
	v_lshl_or_b32 v118, v116, 16, v115
	v_lshl_or_b32 v117, v119, 16, v117
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	v_lshl_or_b32 v114, v89, 16, v87
	v_lshl_or_b32 v113, v93, 16, v91
	v_lshl_or_b32 v112, v99, 16, v97
	v_lshl_or_b32 v111, v102, 16, v101
	v_lshl_or_b32 v116, v88, 16, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[119:122], v95 offset:4096
	ds_load_b128 v[123:126], v96 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v90, v94, v92, 0xc0c0004
	v_perm_b32 v92, v100, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v92, 16, v90
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[107:110], v[115:118], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[119:122], v[111:114], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v111, v143 offset:864
	ds_load_u8 v112, v143 offset:800
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[123:126], v[115:118], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v143 offset:992
	ds_load_u8 v113, v143 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v143 offset:608
	ds_load_u8 v114, v143 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v143 offset:736
	ds_load_u8 v115, v143 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v143 offset:352
	ds_load_u8 v112, v143 offset:288
	v_lshl_or_b32 v113, v115, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v143 offset:480
	ds_load_u8 v115, v143 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v143 offset:32
	ds_load_u8 v115, v143 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v115, 0xc0c0004
	ds_load_u8 v115, v143 offset:224
	ds_load_u8 v116, v143 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v115, 16, v111
	ds_load_u8 v115, v143 offset:1888
	ds_load_u8 v116, v143 offset:1824
	v_wmma_i32_16x16x16_iu8 v[135:142], v[119:122], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v143 offset:2016
	ds_load_u8 v117, v143 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v143 offset:1632
	ds_load_u8 v118, v143 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v143 offset:1760
	ds_load_u8 v127, v143 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v127, v118, 0xc0c0004
	v_lshl_or_b32 v118, v116, 16, v115
	ds_load_u8 v115, v143 offset:1376
	ds_load_u8 v116, v143 offset:1312
	v_lshl_or_b32 v117, v127, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v143 offset:1504
	ds_load_u8 v127, v143 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v127, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v116, 16, v115
	ds_load_u8 v115, v143 offset:1120
	ds_load_u8 v127, v143 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v127, v115, 0xc0c0004
	ds_load_u8 v127, v143 offset:1248
	ds_load_u8 v128, v143 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v127, 16, v115
	v_wmma_i32_16x16x16_iu8 v[127:134], v[103:106], v[111:114], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:2880
	ds_load_u8 v104, v143 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v111, s16, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[135:142], v[123:126], v[115:118], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[107:110], v[115:118], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3008
	ds_load_u8 v105, v143 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:2624
	ds_load_u8 v106, v143 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:2752
	ds_load_u8 v107, v143 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:2368
	ds_load_u8 v104, v143 offset:2304
	v_lshl_or_b32 v105, v107, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:2496
	ds_load_u8 v107, v143 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:2112
	ds_load_u8 v107, v143 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v143 offset:2240
	ds_load_u8 v108, v143 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v107, 16, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v111
	ds_load_b128 v[111:114], v111 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[107:110], v[103:106], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[103:106], v[95:102] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:2912
	ds_load_u8 v104, v143 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3040
	ds_load_u8 v105, v143 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:2656
	ds_load_u8 v106, v143 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:2784
	ds_load_u8 v115, v143 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:2400
	ds_load_u8 v104, v143 offset:2336
	v_lshl_or_b32 v105, v115, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:2528
	ds_load_u8 v115, v143 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v115, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:2144
	ds_load_u8 v115, v143 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v115, v103, 0xc0c0004
	ds_load_u8 v115, v143 offset:2272
	ds_load_u8 v116, v143 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v115, 16, v103
	v_wmma_i32_16x16x16_iu8 v[127:134], v[107:110], v[103:106], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[111:114], v[103:106], v[135:142] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:3904
	ds_load_u8 v104, v143 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v111, s16, v81
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s44, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 24
	s_add_i32 s16, s44, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s16, s16, 8
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s41
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v144, v17, s18, 1
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:4032
	ds_load_u8 v105, v143 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:3648
	ds_load_u8 v106, v143 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:3776
	ds_load_u8 v107, v143 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:3392
	ds_load_u8 v104, v143 offset:3328
	v_lshl_or_b32 v105, v107, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3520
	ds_load_u8 v107, v143 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:3136
	ds_load_u8 v107, v143 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v143 offset:3264
	ds_load_u8 v108, v143 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v107, 16, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v111
	ds_load_b128 v[111:114], v111 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[107:110], v[103:106], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[103:106], v[95:102] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:3936
	ds_load_u8 v104, v143 offset:3872
	v_cvt_f32_i32_e32 v126, v87
	v_cvt_f32_i32_e32 v123, v99
	v_cvt_f32_i32_e32 v122, v100
	v_cvt_f32_i32_e32 v121, v101
	v_cvt_f32_i32_e32 v120, v102
	v_cvt_f32_i32_e32 v125, v88
	v_cvt_f32_i32_e32 v124, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:4064
	ds_load_u8 v105, v143 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:3680
	ds_load_u8 v106, v143 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:3808
	ds_load_u8 v115, v143 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:3424
	ds_load_u8 v104, v143 offset:3360
	v_lshl_or_b32 v105, v115, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3552
	ds_load_u8 v115, v143 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v115, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:3168
	ds_load_u8 v115, v143 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v115, v103, 0xc0c0004
	ds_load_u8 v115, v143 offset:3296
	ds_load_u8 v116, v143 offset:3232
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v143, v19, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v115, 16, v103
	v_cvt_f32_i32_e32 v115, v90
	v_wmma_i32_16x16x16_iu8 v[127:134], v[107:110], v[103:106], v[127:134] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v108, v97
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v99, s17, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v110, v95
	v_cvt_f32_i32_e32 v109, v96
	v_cvt_f32_i32_e32 v107, v98
	v_cvt_f32_i32_e32 v119, v127
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v118, v128
	v_cvt_f32_i32_e32 v117, v129
	v_cvt_f32_i32_e32 v116, v130
	v_cvt_f32_i32_e32 v98, v131
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v99, 0x80000000, v83 :: v_dual_cndmask_b32 v100, 0x80000000, v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v132
	v_cvt_f32_i32_e32 v96, v133
	v_cvt_f32_i32_e32 v95, v134
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[127:130], v99, s[28:31], 0 offen
	buffer_load_b128 v[131:134], v100, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[135:142], v[111:114], v[103:106], v[135:142] neg_lo:[1,1,0]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v91
	v_cvt_f32_i32_e32 v113, v92
	v_cvt_f32_i32_e32 v112, v93
	v_cvt_f32_i32_e32 v111, v94
	v_cvt_f32_i32_e32 v94, v135
	v_cvt_f32_i32_e32 v93, v136
	v_cvt_f32_i32_e32 v92, v137
	v_cvt_f32_i32_e32 v91, v138
	v_cvt_f32_i32_e32 v90, v139
	v_cvt_f32_i32_e32 v89, v140
	v_cvt_f32_i32_e32 v88, v141
	v_cvt_f32_i32_e32 v87, v142
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v135, v41, s18, 1
	v_add_lshl_u32 v136, v40, s18, 1
	v_add_lshl_u32 v137, v33, s18, 1
	v_add_lshl_u32 v138, v30, s18, 1
	v_add_lshl_u32 v139, v27, s18, 1
	v_add_lshl_u32 v140, v20, s18, 1
	v_add_lshl_u32 v141, v18, s18, 1
	v_add_lshl_u32 v142, v21, s18, 1
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_cndmask_b32 v137, 0x80000000, v137
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	v_dual_cndmask_b32 v144, 0x80000000, v144 :: v_dual_cndmask_b32 v143, 0x80000000, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	v_add_nc_u32_e32 v82, s27, v82
	s_cmp_lt_i32 s15, 2
	v_add_nc_u32_e32 v83, s27, v83
	s_cselect_b32 s15, s15, 0
	s_add_i32 s14, s14, -1
	s_add_i32 s44, s44, 64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v106, v131, v127, 0x5010400
	v_perm_b32 v105, v131, v127, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v127, v64, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v104, v132, v128, 0x5010400
	v_perm_b32 v103, v132, v128, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v128, v65, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v100, v134, v130, 0x5010400
	v_perm_b32 v99, v134, v130, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v130, v46, s18, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v102, v133, v129, 0x5010400
	v_perm_b32 v101, v133, v129, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v127, v127, s[4:7], 0 offen
	buffer_load_u16 v128, v128, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v129, v51, s18, 1
	v_add_lshl_u32 v131, v45, s18, 1
	v_add_lshl_u32 v132, v44, s18, 1
	v_add_lshl_u32 v133, v43, s18, 1
	v_add_lshl_u32 v134, v42, s18, 1
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v132, 0x80000000, v132
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_cndmask_b32 v134, 0x80000000, v134
	s_clause 0xf
	buffer_load_u16 v129, v129, s[36:39], 0 offen
	buffer_load_u16 v130, v130, s[36:39], 0 offen
	buffer_load_u16 v131, v131, s[36:39], 0 offen
	buffer_load_u16 v132, v132, s[36:39], 0 offen
	buffer_load_u16 v133, v133, s[36:39], 0 offen
	buffer_load_u16 v134, v134, s[36:39], 0 offen
	buffer_load_u16 v135, v135, s[36:39], 0 offen
	buffer_load_u16 v136, v136, s[36:39], 0 offen
	buffer_load_u16 v137, v137, s[36:39], 0 offen
	buffer_load_u16 v138, v138, s[36:39], 0 offen
	buffer_load_u16 v139, v139, s[36:39], 0 offen
	buffer_load_u16 v140, v140, s[36:39], 0 offen
	buffer_load_u16 v141, v141, s[36:39], 0 offen
	buffer_load_u16 v142, v142, s[36:39], 0 offen
	buffer_load_u16 v143, v143, s[36:39], 0 offen
	buffer_load_u16 v144, v144, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s15, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s19, s18, 0
	s_barrier
	v_add_nc_u32_e32 v145, s19, v66
	s_mov_b32 s16, s34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s34, s19, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s42, s19, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s14, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v145, v[9:12] offset:16384
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v11, 16, v127
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v127, 16, v129
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v11, v127 :: v_dual_lshlrev_b32 v12, 16, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v16, v9, v126
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v126, 16, v130
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v11, v126 :: v_dual_lshlrev_b32 v10, 16, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v22, v9, v125 :: v_dual_lshlrev_b32 v125, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v23, v9, v124
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v124, 16, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v124
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v24, v9, v115 :: v_dual_lshlrev_b32 v115, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v25, v9, v114
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v114, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v26, v9, v113 :: v_dual_lshlrev_b32 v113, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v28, v9, v112
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v112, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v29, v9, v111
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v111, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v31, v9, v110
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v110, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v32, v9, v109 :: v_dual_lshlrev_b32 v109, 16, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v34, v9, v108
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v108, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v35, v9, v107
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v107, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v36, v9, v123 :: v_dual_mul_f32 v9, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v9, v122
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v11, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v38, v9, v121 :: v_dual_lshlrev_b32 v9, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v11, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v39, v11, v120
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v11, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v11, v127
	v_mul_f32_e32 v112, v11, v112
	v_mul_f32_e32 v114, v11, v114
	v_mul_f32_e32 v109, v11, v109
	v_dual_mul_f32 v12, v11, v12 :: v_dual_fmac_f32 v47, v120, v119
	v_mul_f32_e32 v119, v11, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v55, v112, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v95.l, 0xff, v106.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v59, v109, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v109, 24, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v48, v119, v118
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v11, v125
	v_mul_f32_e32 v115, v11, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v92.l, 0xff, v105.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v113, v11, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v92.h, 0xff, v104.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v49, v118, v117
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v117, v11, v124
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v52, v115, v98
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v111, v11, v111
	v_mul_f32_e32 v10, v11, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v62, v12, v89
	v_fmac_f32_e32 v50, v117, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v116, 24, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v57, v111, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v111, 8, v106
	v_and_b16 v94.l, 0xff, v106.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v106, v11, v110 :: v_dual_fmac_f32 v63, v10, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.l, 0xff, v103.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v10.h, 8, v111.l
	v_and_b16 v12.h, 0xff, v102.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v58, v106, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v93.l, 0xff, v105.l
	v_lshrrev_b32_e32 v106, 8, v105
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v105, v11, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v108, 24, v104
	v_lshrrev_b32_e32 v110, 24, v102
	v_and_b16 v10.l, 0xff, v102.h
	v_lshrrev_b32_e32 v117, 24, v101
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v60, v105, v91
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v105, 8, v104
	v_and_b16 v91.l, 0xff, v104.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v104, v11, v107
	v_mul_f32_e32 v11, v11, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v107, 24, v103
	v_and_b16 v9.l, 0xff, v101.l
	v_and_b16 v9.h, 0xff, v101.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v61, v104, v90 :: v_dual_fmac_f32 v56, v11, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v11.h, 8, v116.l
	v_and_b16 v90.l, 0xff, v103.l
	v_lshrrev_b32_e32 v104, 8, v103
	v_lshrrev_b32_e32 v103, 8, v102
	v_lshrrev_b32_e32 v102, 8, v101
	v_or_b16 v10.h, v95.l, v10.h
	v_and_b16 v11.l, 0xff, v100.l
	v_or_b16 v11.h, v94.l, v11.h
	v_lshrrev_b32_e32 v94, 8, v100
	v_lshlrev_b16 v87.l, 8, v106.l
	v_lshrrev_b32_e32 v95, 24, v100
	v_and_b16 v87.h, 0xff, v100.h
	v_lshlrev_b16 v88.l, 8, v109.l
	v_lshlrev_b16 v89.l, 8, v105.l
	v_lshrrev_b32_e32 v100, 8, v99
	v_lshlrev_b16 v89.h, 8, v108.l
	v_lshrrev_b32_e32 v101, 24, v99
	v_add_nc_u32_e32 v98, s34, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v53, v114, v97 :: v_dual_fmac_f32 v54, v113, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v87.l, v93.l, v87.l
	v_or_b16 v88.l, v92.l, v88.l
	v_and_b16 v88.h, 0xff, v99.l
	v_or_b16 v89.l, v92.h, v89.l
	v_or_b16 v89.h, v91.l, v89.h
	v_and_b16 v90.h, 0xff, v99.h
	v_lshlrev_b16 v91.l, 8, v104.l
	v_lshlrev_b16 v91.h, 8, v107.l
	v_lshlrev_b16 v92.l, 8, v103.l
	v_lshlrev_b16 v92.h, 8, v110.l
	v_lshlrev_b16 v93.l, 8, v102.l
	v_lshlrev_b16 v93.h, 8, v117.l
	v_lshlrev_b16 v94.l, 8, v94.l
	v_lshlrev_b16 v94.h, 8, v95.l
	v_lshlrev_b16 v95.l, 8, v100.l
	v_lshlrev_b16 v95.h, 8, v101.l
	v_add_nc_u32_e32 v115, s34, v70
	v_add_nc_u32_e32 v97, s34, v71
	v_add_nc_u32_e32 v114, s34, v72
	v_add_nc_u32_e32 v96, s34, v73
	v_add_nc_u32_e32 v113, s34, v74
	v_add_nc_u32_e32 v112, s34, v75
	v_or_b16 v90.l, v90.l, v91.l
	v_or_b16 v12.l, v12.l, v91.h
	v_or_b16 v12.h, v12.h, v92.l
	v_or_b16 v10.l, v10.l, v92.h
	v_or_b16 v9.l, v9.l, v93.l
	v_or_b16 v9.h, v9.h, v93.h
	v_or_b16 v11.l, v11.l, v94.l
	v_or_b16 v87.h, v87.h, v94.h
	v_or_b16 v88.h, v88.h, v95.l
	v_or_b16 v90.h, v90.h, v95.h
	ds_store_b16_d16_hi v98, v10
	ds_store_b16_d16_hi v98, v11 offset:64
	ds_store_b16 v115, v87
	ds_store_b16 v115, v88 offset:64
	ds_store_b16 v97, v89
	ds_store_b16_d16_hi v97, v89 offset:64
	ds_store_b16 v114, v90
	ds_store_b16 v114, v12 offset:64
	ds_store_b16_d16_hi v96, v12
	ds_store_b16 v96, v10 offset:64
	ds_store_b16 v98, v9 offset:640
	ds_store_b16_d16_hi v98, v9 offset:704
	ds_store_b16 v113, v11
	ds_store_b16_d16_hi v113, v87 offset:64
	ds_store_b16_d16_hi v112, v88
	ds_store_b16_d16_hi v112, v90 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v78, v67 :: v_dual_mov_b32 v79, v68
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v16, 0
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_xor_b32_e32 v6, v2, v77
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v105, v6, v76
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_xor_b32_e32 v106, 16, v105
	v_xor_b32_e32 v107, 32, v105
	v_xor_b32_e32 v108, 48, v105
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v86, 0
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
	v_add_nc_u32_e32 v6, s16, v108
	v_add_nc_u32_e32 v10, s16, v107
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v11, s45, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[74:77], v10 offset:4096
	ds_load_b128 v[109:112], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v10, v11 offset:832
	ds_load_u8 v12, v11 offset:768
	ds_load_u8 v66, v11 offset:960
	ds_load_u8 v67, v11 offset:896
	ds_load_u8 v70, v11 offset:576
	ds_load_u8 v71, v11 offset:512
	ds_load_u8 v72, v11 offset:704
	ds_load_u8 v73, v11 offset:640
	ds_load_u8 v78, v11 offset:320
	ds_load_u8 v79, v11 offset:256
	ds_load_u8 v80, v11 offset:448
	ds_load_u8 v81, v11 offset:384
	ds_load_u8 v82, v11 offset:64
	ds_load_u8 v83, v11
	ds_load_u8 v84, v11 offset:192
	ds_load_u8 v85, v11 offset:128
	ds_load_u8 v103, v11 offset:992
	ds_load_u8 v104, v11 offset:928
	ds_load_u8 v133, v11 offset:864
	ds_load_u8 v134, v11 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v69, s16, v105
	v_add_nc_u32_e32 v68, s16, v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v12, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v66, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v71, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v85, v84, 0xc0c0004
	v_lshl_or_b32 v98, v12, 16, v10
	v_mov_b32_e32 v86, s11
	ds_load_u8 v10, v11 offset:1856
	ds_load_u8 v12, v11 offset:1792
	v_lshl_or_b32 v97, v67, 16, v66
	v_mov_b32_e32 v81, s6
	ds_load_u8 v66, v11 offset:1984
	ds_load_u8 v67, v11 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[121:124], v68 offset:4096
	ds_load_b128 v[125:128], v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v96, v71, 16, v70
	v_lshl_or_b32 v95, v73, 16, v72
	v_mov_b32_e32 v84, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v69 offset:4096
	ds_load_b128 v[117:120], v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v68, v11 offset:1600
	ds_load_u8 v69, v11 offset:1536
	ds_load_u8 v70, v11 offset:1728
	ds_load_u8 v71, v11 offset:1664
	ds_load_u8 v72, v11 offset:1344
	ds_load_u8 v73, v11 offset:1280
	ds_load_u8 v99, v11 offset:1472
	ds_load_u8 v100, v11 offset:1408
	ds_load_u8 v147, v11 offset:2016
	ds_load_u8 v148, v11 offset:1952
	ds_load_u8 v149, v11 offset:1888
	ds_load_u8 v150, v11 offset:1824
	ds_load_u8 v129, v11 offset:3008
	ds_load_u8 v130, v11 offset:2944
	ds_load_u8 v135, v11 offset:736
	ds_load_u8 v137, v11 offset:672
	ds_load_u8 v138, v11 offset:608
	ds_load_u8 v139, v11 offset:544
	ds_load_u8 v140, v11 offset:480
	ds_load_u8 v141, v11 offset:416
	ds_load_u8 v142, v11 offset:352
	ds_load_u8 v143, v11 offset:288
	ds_load_u8 v78, v11 offset:224
	ds_load_u8 v144, v11 offset:160
	ds_load_u8 v145, v11 offset:96
	ds_load_u8 v146, v11 offset:32
	ds_load_u8 v155, v11 offset:1504
	ds_load_u8 v156, v11 offset:1440
	ds_load_u8 v157, v11 offset:1376
	ds_load_u8 v158, v11 offset:1312
	ds_load_u8 v159, v11 offset:1248
	ds_load_u8 v160, v11 offset:1184
	ds_load_u8 v161, v11 offset:1120
	ds_load_u8 v162, v11 offset:1056
	ds_load_u8 v171, v11 offset:2528
	ds_load_u8 v172, v11 offset:2464
	ds_load_u8 v173, v11 offset:2400
	ds_load_u8 v174, v11 offset:2336
	ds_load_u8 v175, v11 offset:2272
	ds_load_u8 v176, v11 offset:2208
	ds_load_u8 v177, v11 offset:2144
	ds_load_u8 v178, v11 offset:2080
	v_mov_b32_e32 v85, s10
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_mov_b32_e32 v83, s8
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v11 offset:1088
	ds_load_u8 v101, v11 offset:1024
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v69, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v70, v73, v72, 0xc0c0004
	ds_load_u8 v72, v11 offset:2880
	ds_load_u8 v73, v11 offset:2816
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v11 offset:1216
	ds_load_u8 v102, v11 offset:1152
	ds_load_u8 v151, v11 offset:1760
	ds_load_u8 v152, v11 offset:1696
	ds_load_u8 v153, v11 offset:1632
	ds_load_u8 v154, v11 offset:1568
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v71, v100, v99, 0xc0c0004
	v_dual_mov_b32 v82, s7 :: v_dual_mov_b32 v79, s4
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v11 offset:2240
	ds_load_u8 v132, v11 offset:2176
	ds_load_u8 v167, v11 offset:2784
	ds_load_u8 v168, v11 offset:2720
	ds_load_u8 v169, v11 offset:2656
	ds_load_u8 v170, v11 offset:2592
	v_lshl_or_b32 v100, v71, 16, v70
	v_mov_b32_e32 v80, s5
	ds_load_u8 v187, v11 offset:3808
	ds_load_u8 v188, v11 offset:3744
	ds_load_u8 v189, v11 offset:3680
	ds_load_u8 v190, v11 offset:3616
	ds_load_u8 v191, v11 offset:3552
	ds_load_u8 v192, v11 offset:3488
	ds_load_u8 v193, v11 offset:3424
	ds_load_u8 v194, v11 offset:3360
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v78, v144, v78, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[87:94], v[117:120], v[95:98], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v12, v101, v12, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v67, v102, v67, 0xc0c0004
	v_lshl_or_b32 v102, v66, 16, v10
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v11 offset:2112
	ds_load_u8 v131, v11 offset:2048
	v_lshl_or_b32 v101, v69, 16, v68
	v_lshl_or_b32 v99, v67, 16, v12
	ds_load_u8 v10, v11 offset:2624
	ds_load_u8 v12, v11 offset:2560
	ds_load_u8 v66, v11 offset:2752
	ds_load_u8 v67, v11 offset:2688
	ds_load_u8 v68, v11 offset:2368
	ds_load_u8 v69, v11 offset:2304
	ds_load_u8 v70, v11 offset:2496
	ds_load_u8 v71, v11 offset:2432
	ds_load_u8 v163, v11 offset:3040
	ds_load_u8 v164, v11 offset:2976
	ds_load_u8 v165, v11 offset:2912
	ds_load_u8 v166, v11 offset:2848
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v136, v132, v130, 0xc0c0004
	v_lshl_or_b32 v132, v129, 16, v72
	v_wmma_i32_16x16x16_iu8 v[87:94], v[125:128], v[99:102], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v71, v70, 0xc0c0004
	v_perm_b32 v68, v131, v73, 0xc0c0004
	ds_load_u8 v69, v11 offset:3904
	ds_load_u8 v70, v11 offset:3840
	ds_load_u8 v71, v11 offset:4032
	ds_load_u8 v73, v11 offset:3968
	v_lshl_or_b32 v131, v12, 16, v10
	v_lshl_or_b32 v130, v67, 16, v66
	v_lshl_or_b32 v129, v136, 16, v68
	ds_load_u8 v10, v11 offset:3648
	ds_load_u8 v12, v11 offset:3584
	ds_load_u8 v66, v11 offset:3776
	ds_load_u8 v67, v11 offset:3712
	ds_load_u8 v68, v11 offset:3392
	ds_load_u8 v72, v11 offset:3328
	ds_load_u8 v179, v11 offset:3520
	ds_load_u8 v180, v11 offset:3456
	ds_load_u8 v181, v11 offset:4064
	ds_load_u8 v182, v11 offset:4000
	ds_load_u8 v183, v11 offset:3936
	ds_load_u8 v184, v11 offset:3872
	v_wmma_i32_16x16x16_iu8 v[87:94], v[109:112], v[129:132], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v67, v66, 0xc0c0004
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v195, v72, v68, 0xc0c0004
	v_perm_b32 v70, v73, v71, 0xc0c0004
	ds_load_u8 v71, v11 offset:3136
	ds_load_u8 v73, v11 offset:3072
	ds_load_u8 v185, v11 offset:3264
	ds_load_u8 v186, v11 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v11 offset:3296
	ds_load_u8 v196, v11 offset:3232
	ds_load_u8 v197, v11 offset:3168
	ds_load_u8 v11, v11 offset:3104
	v_lshl_or_b32 v136, v70, 16, v69
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v198, v73, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[113:116], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_perm_b32 v95, v134, v133, 0xc0c0004
	v_perm_b32 v96, v104, v103, 0xc0c0004
	v_perm_b32 v97, v139, v138, 0xc0c0004
	v_perm_b32 v98, v137, v135, 0xc0c0004
	v_perm_b32 v103, v143, v142, 0xc0c0004
	v_perm_b32 v104, v141, v140, 0xc0c0004
	v_perm_b32 v133, v146, v145, 0xc0c0004
	v_lshl_or_b32 v140, v96, 16, v95
	v_lshl_or_b32 v139, v98, 16, v97
	v_perm_b32 v134, v158, v157, 0xc0c0004
	v_lshl_or_b32 v138, v104, 16, v103
	v_lshl_or_b32 v137, v78, 16, v133
	v_perm_b32 v78, v150, v149, 0xc0c0004
	v_perm_b32 v103, v148, v147, 0xc0c0004
	v_perm_b32 v104, v154, v153, 0xc0c0004
	v_perm_b32 v133, v152, v151, 0xc0c0004
	v_perm_b32 v135, v156, v155, 0xc0c0004
	v_perm_b32 v141, v162, v161, 0xc0c0004
	v_perm_b32 v142, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[121:124], v[99:102], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[117:120], v[137:140], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v103, 16, v78
	v_lshl_or_b32 v119, v133, 16, v104
	v_lshl_or_b32 v118, v135, 16, v134
	v_lshl_or_b32 v117, v142, 16, v141
	v_perm_b32 v78, v166, v165, 0xc0c0004
	v_perm_b32 v103, v164, v163, 0xc0c0004
	v_perm_b32 v104, v170, v169, 0xc0c0004
	v_perm_b32 v133, v168, v167, 0xc0c0004
	v_perm_b32 v134, v174, v173, 0xc0c0004
	v_perm_b32 v135, v172, v171, 0xc0c0004
	v_perm_b32 v141, v178, v177, 0xc0c0004
	v_perm_b32 v142, v176, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[125:128], v[117:120], v[95:102] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v103, 16, v78
	v_lshl_or_b32 v127, v133, 16, v104
	v_lshl_or_b32 v126, v135, 16, v134
	v_lshl_or_b32 v125, v142, 16, v141
	v_wmma_i32_16x16x16_iu8 v[79:86], v[113:116], v[137:140], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	v_lshl_or_b32 v135, v12, 16, v10
	v_perm_b32 v10, v184, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[109:112], v[125:128], v[95:102] neg_lo:[1,1,0]
	v_perm_b32 v12, v182, v181, 0xc0c0004
	v_perm_b32 v78, v190, v189, 0xc0c0004
	v_perm_b32 v103, v188, v187, 0xc0c0004
	v_perm_b32 v104, v194, v193, 0xc0c0004
	v_perm_b32 v109, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v197, 0xc0c0004
	v_perm_b32 v113, v196, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[79:86], v[121:124], v[117:120], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v179, 16, v195
	v_lshl_or_b32 v133, v185, 16, v198
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[129:132], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v12, 16, v10
	v_lshl_or_b32 v111, v103, 16, v78
	v_lshl_or_b32 v110, v109, 16, v104
	v_lshl_or_b32 v109, v113, 16, v11
	v_wmma_i32_16x16x16_iu8 v[79:86], v[74:77], v[125:128], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[6:9], v[133:136], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[2:5], v[133:136], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[6:9], v[109:112], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[2:5], v[109:112], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v88
	v_cvt_f32_i32_e32 v3, v89
	v_cvt_f32_i32_e32 v4, v90
	v_cvt_f32_i32_e32 v5, v91
	v_cvt_f32_i32_e32 v6, v92
	v_cvt_f32_i32_e32 v7, v93
	v_cvt_f32_i32_e32 v8, v94
	v_cvt_f32_i32_e32 v9, v66
	v_cvt_f32_i32_e32 v11, v67
	v_cvt_f32_i32_e32 v12, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v68, v71
	v_cvt_f32_i32_e32 v69, v72
	v_cvt_f32_i32_e32 v70, v73
	v_cvt_f32_i32_e32 v71, v95
	v_cvt_f32_i32_e32 v72, v96
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v10, v87
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s44, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s44, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v87, v64, s4, 1
	v_add_lshl_u32 v88, v65, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v51, s4, 1
	v_add_lshl_u32 v97, v33, s4, 1
	v_add_lshl_u32 v90, v46, s4, 1
	v_add_lshl_u32 v98, v30, s4, 1
	v_add_lshl_u32 v91, v45, s4, 1
	v_add_lshl_u32 v99, v27, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v92, v44, s4, 1
	v_add_lshl_u32 v100, v20, s4, 1
	v_add_lshl_u32 v93, v43, s4, 1
	v_add_lshl_u32 v94, v42, s4, 1
	v_add_lshl_u32 v95, v41, s4, 1
	v_add_lshl_u32 v96, v40, s4, 1
	v_add_lshl_u32 v101, v18, s4, 1
	v_add_lshl_u32 v102, v21, s4, 1
	v_add_lshl_u32 v103, v19, s4, 1
	v_add_lshl_u32 v104, v17, s4, 1
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_and_b32 s25, s25, 0xffff
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	s_clause 0xf
	buffer_load_u16 v89, v89, s[24:27], 0 offen
	buffer_load_u16 v90, v90, s[24:27], 0 offen
	buffer_load_u16 v91, v91, s[24:27], 0 offen
	buffer_load_u16 v92, v92, s[24:27], 0 offen
	buffer_load_u16 v93, v93, s[24:27], 0 offen
	buffer_load_u16 v94, v94, s[24:27], 0 offen
	buffer_load_u16 v95, v95, s[24:27], 0 offen
	buffer_load_u16 v96, v96, s[24:27], 0 offen
	buffer_load_u16 v97, v97, s[24:27], 0 offen
	buffer_load_u16 v98, v98, s[24:27], 0 offen
	buffer_load_u16 v99, v99, s[24:27], 0 offen
	buffer_load_u16 v100, v100, s[24:27], 0 offen
	buffer_load_u16 v101, v101, s[24:27], 0 offen
	buffer_load_u16 v102, v102, s[24:27], 0 offen
	buffer_load_u16 v103, v103, s[24:27], 0 offen
	buffer_load_u16 v104, v104, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v87, v87, s[12:15], 0 offen
	buffer_load_u16 v88, v88, s[12:15], 0 offen
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
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
	v_mov_b32_e32 v139, 0
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
	v_add_nc_u32_e32 v1, s34, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v139, s11 :: v_dual_add_nc_u32 v116, s42, v13
	v_dual_mov_b32 v136, s8 :: v_dual_add_nc_u32 v107, s34, v107
	v_dual_mov_b32 v132, s4 :: v_dual_add_nc_u32 v105, s34, v105
	v_mov_b32_e32 v138, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[140:143], v1 offset:4096
	ds_load_b128 v[144:147], v1
	ds_load_b128 v[148:151], v107 offset:4096
	ds_load_b128 v[152:155], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v134, s6 :: v_dual_add_nc_u32 v1, s34, v106
	ds_load_u8 v106, v116 offset:832
	ds_load_u8 v107, v116 offset:768
	ds_load_u8 v108, v116 offset:960
	ds_load_u8 v109, v116 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[156:159], v105 offset:4096
	ds_load_b128 v[160:163], v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v105, v116 offset:576
	ds_load_u8 v110, v116 offset:512
	ds_load_u8 v111, v116 offset:704
	ds_load_u8 v112, v116 offset:640
	ds_load_u8 v113, v116 offset:320
	ds_load_u8 v114, v116 offset:256
	ds_load_u8 v115, v116 offset:448
	ds_load_u8 v117, v116 offset:384
	ds_load_u8 v118, v116 offset:64
	ds_load_u8 v119, v116
	ds_load_u8 v120, v116 offset:192
	ds_load_u8 v121, v116 offset:128
	ds_load_u8 v176, v116 offset:992
	ds_load_u8 v177, v116 offset:928
	ds_load_u8 v178, v116 offset:864
	ds_load_u8 v180, v116 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v107, v109, v108, 0xc0c0004
	ds_load_u8 v181, v116 offset:736
	ds_load_u8 v182, v116 offset:672
	ds_load_u8 v183, v116 offset:608
	ds_load_u8 v184, v116 offset:544
	ds_load_u8 v185, v116 offset:480
	ds_load_u8 v186, v116 offset:416
	ds_load_u8 v187, v116 offset:352
	ds_load_u8 v188, v116 offset:288
	ds_load_u8 v189, v116 offset:224
	ds_load_u8 v190, v116 offset:160
	ds_load_u8 v191, v116 offset:96
	ds_load_u8 v192, v116 offset:32
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v105, v110, v105, 0xc0c0004
	v_lshl_or_b32 v127, v107, 16, v106
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v108, v112, v111, 0xc0c0004
	ds_load_u8 v201, v116 offset:1504
	ds_load_u8 v202, v116 offset:1440
	ds_load_u8 v203, v116 offset:1376
	ds_load_u8 v204, v116 offset:1312
	ds_load_u8 v205, v116 offset:1248
	ds_load_u8 v206, v116 offset:1184
	ds_load_u8 v207, v116 offset:1120
	ds_load_u8 v208, v116 offset:1056
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v109, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v110, v117, v115, 0xc0c0004
	v_lshl_or_b32 v126, v108, 16, v105
	ds_load_u8 v105, v116 offset:1856
	ds_load_u8 v106, v116 offset:1792
	ds_load_u8 v107, v116 offset:1984
	ds_load_u8 v117, v116 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[164:167], v1 offset:4096
	ds_load_b128 v[168:171], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v112, v121, v120, 0xc0c0004
	ds_load_u8 v1, v116 offset:1600
	ds_load_u8 v118, v116 offset:1536
	ds_load_u8 v119, v116 offset:1728
	ds_load_u8 v120, v116 offset:1664
	ds_load_u8 v121, v116 offset:1344
	ds_load_u8 v122, v116 offset:1280
	ds_load_u8 v123, v116 offset:1472
	ds_load_u8 v128, v116 offset:1408
	ds_load_u8 v193, v116 offset:2016
	ds_load_u8 v194, v116 offset:1952
	ds_load_u8 v195, v116 offset:1888
	ds_load_u8 v196, v116 offset:1824
	ds_load_u8 v219, v116 offset:2272
	ds_load_u8 v220, v116 offset:2208
	ds_load_u8 v221, v116 offset:2144
	ds_load_u8 v222, v116 offset:2080
	v_lshl_or_b32 v125, v110, 16, v109
	v_mov_b32_e32 v137, s9
	v_lshl_or_b32 v124, v112, 16, v111
	v_mov_b32_e32 v135, s7
	v_mov_b32_e32 v133, s5
	ds_load_u8 v232, v116 offset:3808
	ds_load_u8 v233, v116 offset:3744
	ds_load_u8 v234, v116 offset:3680
	ds_load_u8 v235, v116 offset:3616
	ds_load_u8 v236, v116 offset:3552
	ds_load_u8 v237, v116 offset:3488
	ds_load_u8 v238, v116 offset:3424
	ds_load_u8 v239, v116 offset:3360
	ds_load_u8 v241, v116 offset:3296
	ds_load_u8 v242, v116 offset:3232
	ds_load_u8 v243, v116 offset:3168
	ds_load_u8 v244, v116 offset:3104
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v1, v118, v1, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[160:163], v[124:127], v[132:139] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v119, v122, v121, 0xc0c0004
	ds_load_u8 v121, v116 offset:2880
	ds_load_u8 v122, v116 offset:2816
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v116 offset:1088
	ds_load_u8 v129, v116 offset:1024
	v_perm_b32 v107, v117, v107, 0xc0c0004
	ds_load_u8 v117, v116 offset:1216
	ds_load_u8 v130, v116 offset:1152
	ds_load_u8 v197, v116 offset:1760
	ds_load_u8 v198, v116 offset:1696
	ds_load_u8 v199, v116 offset:1632
	ds_load_u8 v200, v116 offset:1568
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v120, v128, v123, 0xc0c0004
	ds_load_u8 v123, v116 offset:3008
	ds_load_u8 v172, v116 offset:2944
	v_lshl_or_b32 v131, v107, 16, v105
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v130, v117, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v106, v129, v106, 0xc0c0004
	ds_load_u8 v122, v116 offset:2112
	ds_load_u8 v173, v116 offset:2048
	v_lshl_or_b32 v130, v118, 16, v1
	v_lshl_or_b32 v129, v120, 16, v119
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v172, v123, 0xc0c0004
	v_lshl_or_b32 v128, v117, 16, v106
	ds_load_u8 v1, v116 offset:2624
	ds_load_u8 v105, v116 offset:2560
	ds_load_u8 v106, v116 offset:2752
	ds_load_u8 v107, v116 offset:2688
	ds_load_u8 v117, v116 offset:2368
	ds_load_u8 v118, v116 offset:2304
	ds_load_u8 v119, v116 offset:2496
	ds_load_u8 v120, v116 offset:2432
	ds_load_u8 v209, v116 offset:3040
	ds_load_u8 v210, v116 offset:2976
	ds_load_u8 v211, v116 offset:2912
	ds_load_u8 v212, v116 offset:2848
	ds_load_u8 v172, v116 offset:2240
	ds_load_u8 v174, v116 offset:2176
	ds_load_u8 v213, v116 offset:2784
	ds_load_u8 v214, v116 offset:2720
	ds_load_u8 v215, v116 offset:2656
	ds_load_u8 v216, v116 offset:2592
	v_lshl_or_b32 v175, v123, 16, v121
	v_wmma_i32_16x16x16_iu8 v[108:115], v[168:171], v[128:131], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v105, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v107, v106, 0xc0c0004
	ds_load_u8 v106, v116 offset:2528
	ds_load_u8 v107, v116 offset:2464
	ds_load_u8 v217, v116 offset:2400
	ds_load_u8 v218, v116 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	v_perm_b32 v119, v173, v122, 0xc0c0004
	ds_load_u8 v120, v116 offset:3904
	ds_load_u8 v122, v116 offset:3840
	ds_load_u8 v179, v116 offset:4032
	ds_load_u8 v223, v116 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v174, v172, 0xc0c0004
	v_lshl_or_b32 v174, v105, 16, v1
	v_lshl_or_b32 v173, v118, 16, v117
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v172, v172, 16, v119
	ds_load_u8 v1, v116 offset:3648
	ds_load_u8 v105, v116 offset:3584
	ds_load_u8 v117, v116 offset:3776
	ds_load_u8 v118, v116 offset:3712
	ds_load_u8 v119, v116 offset:3392
	ds_load_u8 v121, v116 offset:3328
	ds_load_u8 v123, v116 offset:3520
	ds_load_u8 v224, v116 offset:3456
	ds_load_u8 v225, v116 offset:4064
	ds_load_u8 v226, v116 offset:4000
	ds_load_u8 v227, v116 offset:3936
	ds_load_u8 v228, v116 offset:3872
	v_wmma_i32_16x16x16_iu8 v[108:115], v[152:155], v[172:175], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v107, v222, v221, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v105, v1, 0xc0c0004
	v_perm_b32 v120, v122, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v118, v117, 0xc0c0004
	v_perm_b32 v122, v223, v179, 0xc0c0004
	ds_load_u8 v223, v116 offset:3136
	ds_load_u8 v229, v116 offset:3072
	ds_load_u8 v230, v116 offset:3264
	ds_load_u8 v231, v116 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v240, v121, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v224, v224, v123, 0xc0c0004
	v_lshl_or_b32 v179, v122, 16, v120
	v_wmma_i32_16x16x16_iu8 v[116:123], v[156:159], v[124:127], v[132:139] neg_lo:[1,1,0]
	v_perm_b32 v124, v180, v178, 0xc0c0004
	v_perm_b32 v125, v177, v176, 0xc0c0004
	v_perm_b32 v126, v184, v183, 0xc0c0004
	v_perm_b32 v127, v182, v181, 0xc0c0004
	v_perm_b32 v176, v188, v187, 0xc0c0004
	v_perm_b32 v177, v186, v185, 0xc0c0004
	v_perm_b32 v178, v192, v191, 0xc0c0004
	v_perm_b32 v180, v190, v189, 0xc0c0004
	v_lshl_or_b32 v183, v125, 16, v124
	v_lshl_or_b32 v182, v127, 16, v126
	v_lshl_or_b32 v181, v177, 16, v176
	v_perm_b32 v176, v196, v195, 0xc0c0004
	v_lshl_or_b32 v180, v180, 16, v178
	v_perm_b32 v177, v194, v193, 0xc0c0004
	v_perm_b32 v178, v200, v199, 0xc0c0004
	v_perm_b32 v184, v198, v197, 0xc0c0004
	v_perm_b32 v185, v204, v203, 0xc0c0004
	v_perm_b32 v186, v202, v201, 0xc0c0004
	v_perm_b32 v187, v208, v207, 0xc0c0004
	v_perm_b32 v188, v206, v205, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[164:167], v[128:131], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[160:163], v[180:183], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v177, 16, v176
	v_lshl_or_b32 v162, v184, 16, v178
	v_lshl_or_b32 v161, v186, 16, v185
	v_lshl_or_b32 v160, v188, 16, v187
	v_perm_b32 v176, v212, v211, 0xc0c0004
	v_perm_b32 v177, v210, v209, 0xc0c0004
	v_perm_b32 v178, v216, v215, 0xc0c0004
	v_perm_b32 v184, v214, v213, 0xc0c0004
	v_perm_b32 v185, v218, v217, 0xc0c0004
	v_perm_b32 v186, v220, v219, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[160:163], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v177, 16, v176
	v_lshl_or_b32 v170, v184, 16, v178
	v_lshl_or_b32 v169, v106, 16, v185
	v_lshl_or_b32 v168, v186, 16, v107
	v_wmma_i32_16x16x16_iu8 v[132:139], v[156:159], v[180:183], v[132:139] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v223, v229, v223, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v231, v230, 0xc0c0004
	v_lshl_or_b32 v178, v105, 16, v1
	v_wmma_i32_16x16x16_iu8 v[124:131], v[152:155], v[168:171], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v1, v228, v227, 0xc0c0004
	v_perm_b32 v105, v226, v225, 0xc0c0004
	v_perm_b32 v106, v235, v234, 0xc0c0004
	v_perm_b32 v107, v233, v232, 0xc0c0004
	v_perm_b32 v152, v239, v238, 0xc0c0004
	v_perm_b32 v153, v237, v236, 0xc0c0004
	v_perm_b32 v156, v244, v243, 0xc0c0004
	v_perm_b32 v157, v242, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[132:139], v[164:167], v[160:163], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v224, 16, v240
	v_lshl_or_b32 v176, v229, 16, v223
	v_wmma_i32_16x16x16_iu8 v[116:123], v[148:151], v[172:175], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v155, v105, 16, v1
	v_lshl_or_b32 v154, v107, 16, v106
	v_lshl_or_b32 v153, v153, 16, v152
	v_lshl_or_b32 v152, v157, 16, v156
	v_wmma_i32_16x16x16_iu8 v[132:139], v[148:151], v[168:171], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[144:147], v[176:179], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[140:143], v[176:179], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[144:147], v[152:155], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[140:143], v[152:155], v[132:139] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v108
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
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s17, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v88.h, v104.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v89.h, v103.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v64, v64, s4, 1
	v_add_lshl_u32 v65, v65, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v33, v33, s4, 1
	v_add_lshl_u32 v30, v30, s4, 1
	v_add_lshl_u32 v27, v27, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v20, v20, s4, 1
	v_add_lshl_u32 v18, v18, s4, 1
	v_add_lshl_u32 v21, v21, s4, 1
	v_add_lshl_u32 v19, v19, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_add_lshl_u32 v17, v17, s4, 1
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v64, v64, s[12:15], 0 offen
	buffer_load_u16 v65, v65, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x7
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	buffer_load_u16 v105, v17, s[24:27], 0 offen
	v_add_lshl_u32 v51, v51, s4, 1
	v_add_lshl_u32 v46, v46, s4, 1
	v_add_lshl_u32 v45, v45, s4, 1
	v_add_lshl_u32 v44, v44, s4, 1
	v_add_lshl_u32 v43, v43, s4, 1
	v_add_lshl_u32 v42, v42, s4, 1
	v_add_lshl_u32 v41, v41, s4, 1
	v_add_lshl_u32 v40, v40, s4, 1
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x7
	buffer_load_u16 v51, v51, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v17.h, v88.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v90.h, v102.l
	v_mov_b16_e32 v91.h, v101.l
	v_mov_b16_e32 v92.h, v100.l
	v_mov_b16_e32 v93.h, v99.l
	v_mov_b16_e32 v94.h, v98.l
	v_mov_b16_e32 v95.h, v97.l
	v_mov_b16_e32 v96.h, v96.l
	v_mov_b16_e32 v97.h, v95.l
	v_mov_b16_e32 v98.h, v94.l
	v_mov_b16_e32 v99.h, v93.l
	v_mov_b16_e32 v100.h, v92.l
	v_mov_b16_e32 v101.h, v91.l
	v_mov_b16_e32 v102.h, v90.l
	v_mov_b16_e32 v103.h, v89.l
	v_mov_b16_e32 v88.l, v17.l
	v_mov_b16_e32 v89.l, v17.l
	v_mov_b16_e32 v90.l, v17.l
	v_mov_b16_e32 v91.l, v17.l
	v_mov_b16_e32 v92.l, v17.l
	v_mov_b16_e32 v93.l, v17.l
	v_mov_b16_e32 v94.l, v17.l
	v_mov_b16_e32 v95.l, v17.l
	v_mov_b16_e32 v96.l, v17.l
	v_mov_b16_e32 v97.l, v17.l
	v_mov_b16_e32 v98.l, v17.l
	v_mov_b16_e32 v99.l, v17.l
	v_mov_b16_e32 v100.l, v17.l
	v_mov_b16_e32 v101.l, v17.l
	v_mov_b16_e32 v102.l, v17.l
	v_mov_b16_e32 v103.l, v17.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v106, v17, v89 :: v_dual_and_b32 v15, 56, v15
	v_mul_f32_e32 v104, v17, v88
	v_mul_f32_e32 v107, v17, v90
	v_mul_f32_e32 v108, v17, v91
	v_mul_f32_e32 v140, v17, v92
	v_mul_f32_e32 v141, v17, v93
	v_mul_f32_e32 v142, v17, v94
	v_mul_f32_e32 v143, v17, v95
	v_mul_f32_e32 v144, v17, v96
	v_mul_f32_e32 v145, v17, v97
	v_mul_f32_e32 v146, v17, v98
	v_mul_f32_e32 v147, v17, v99
	v_mul_f32_e32 v148, v17, v100
	v_mul_f32_e32 v149, v17, v101
	v_mul_f32_e32 v150, v17, v102
	v_mul_f32_e32 v151, v17, v103
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v17.h, v87.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v104, v86, v56
	v_fma_f32 v85, v106, v85, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s1, s1, 0xffff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v87, v17, v88
	v_mul_f32_e32 v88, v17, v89
	v_mul_f32_e32 v89, v17, v90
	v_mul_f32_e32 v90, v17, v91
	v_mul_f32_e32 v91, v17, v92
	v_mul_f32_e32 v92, v17, v93
	v_mul_f32_e32 v93, v17, v94
	v_mul_f32_e32 v94, v17, v95
	v_mul_f32_e32 v95, v17, v96
	v_mul_f32_e32 v96, v17, v97
	v_mul_f32_e32 v97, v17, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v86, s2
	v_cndmask_b32_e64 v63, v63, v85, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v95, v8, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v97, v6, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v29, v8, s2
	v_cndmask_b32_e64 v6, v26, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v98, v17, v99
	v_mul_f32_e32 v99, v17, v100
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v17, v101
	v_mul_f32_e32 v101, v17, v102
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v102, v17, v103 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v151, v71, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v101, v2, v22
	v_fma_f32 v70, v87, v70, v39
	v_fma_f32 v10, v102, v10, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v88, v69, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v22, v2, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v22, 16, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v16, v10, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v16, 16, v64
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v26, 16, v44
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v148, v74, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v71, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v16, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v99, v4, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v16, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v98, v5, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v70, s2
	v_cndmask_b32_e64 v38, v38, v69, s2
	v_cndmask_b32_e64 v4, v24, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v24, 16, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v25, v5, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v16, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v94, v9, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v16, v21
	v_mul_f32_e32 v70, v16, v19
	v_mul_f32_e32 v42, v16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v93, v11, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v31, v9, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v41
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v16, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v90, v67, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v32, v11, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v147, v75, v52
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v16, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v67, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v16, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v100, v3, v23
	v_fma_f32 v78, v144, v78, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v75, s2
	v_cndmask_b32_e64 v50, v50, v74, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v22, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v23, v3, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v51
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v16, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v96, v7, v28
	v_fma_f32 v79, v143, v79, v57
	v_fma_f32 v73, v149, v73, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v16, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v91, v66, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v28, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v28, 16, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v16, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v92, v12, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v66, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v16, v27
	v_dual_mul_f32 v44, v16, v28 :: v_dual_mul_f32 v23, v22, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v34, v12, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v34, 16, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v89, v68, v37
	v_fma_f32 v1, v40, v1, v10
	v_fma_f32 v40, v42, v110, v3
	v_fma_f32 v42, v44, v112, v5
	v_fma_f32 v44, v46, v114, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v68, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v16, v18
	v_mul_f32_e32 v16, v16, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v64, v116, v9
	v_fma_f32 v23, v23, v124, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v40, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v22, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v123, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v42, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v22, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v78, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v22, v25
	v_mul_f32_e32 v31, v22, v31
	v_mul_f32_e32 v33, v22, v33
	v_mul_f32_e32 v27, v22, v27
	v_mul_f32_e32 v20, v22, v20
	v_mul_f32_e32 v18, v22, v18
	v_mul_f32_e32 v21, v22, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v10, v1, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v22, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v44, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v22, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v46, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v22, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v39, v16, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v22, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v47, v23, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v22, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v41, v109, v2
	v_fma_f32 v41, v43, v111, v4
	v_fma_f32 v43, v45, v113, v6
	v_fma_f32 v45, v51, v115, v8
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v127, v50
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v5, v5, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v128, v52
	v_fma_f32 v82, v140, v82, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v79, s2
	v_cndmask_b32_e64 v49, v49, v73, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v65, v117, v11
	v_fma_f32 v64, v66, v118, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v45, s3
	v_cndmask_b32_e64 v26, v50, v26, s3
	v_cndmask_b32_e64 v28, v52, v28, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v7, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v131, v55
	v_fma_f32 v84, v107, v84, v62
	v_fma_f32 v80, v142, v80, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v60, v82, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v67, v119, v35
	v_fma_f32 v66, v68, v120, v36
	v_fma_f32 v67, v69, v121, v37
	v_fma_f32 v68, v70, v122, v38
	v_fma_f32 v25, v25, v126, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v34, s3
	v_cndmask_b32_e64 v10, v11, v51, s3
	v_cndmask_b32_e64 v11, v12, v64, s3
	v_cndmask_b32_e64 v32, v55, v32, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, v8, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v33, v132, v57
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v3, 0, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v84, s2
	v_cndmask_b32_e64 v58, v58, v80, s2
	v_cndmask_b32_e64 v12, v35, v65, s3
	v_cndmask_b32_e64 v34, v36, v66, s3
	v_cndmask_b32_e64 v35, v37, v67, s3
	v_cndmask_b32_e64 v36, v38, v68, s3
	v_cndmask_b32_e64 v25, v49, v25, s3
	v_cndmask_b32_e64 v33, v57, v33, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v11, v11, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v135, v60
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v28, 0, v28 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v108, v83, v61
	v_fma_f32 v81, v141, v81, v59
	v_fma_f32 v77, v145, v77, v54
	v_fma_f32 v76, v146, v76, v53
	v_fma_f32 v72, v150, v72, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v41, s3
	v_cndmask_b32_e64 v20, v60, v20, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, v9, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v133, v58
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v12, v12, v12
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v36, v36, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v137, v62
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v23, v23, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v139, v56
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v32, 0, v32
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v38, s35, v14
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v1.h
	v_mov_b16_e32 v14.h, v17.l
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v83, s2
	v_cndmask_b32_e64 v59, v59, v81, s2
	v_cndmask_b32_e64 v54, v54, v77, s2
	v_cndmask_b32_e64 v53, v53, v76, s2
	v_cndmask_b32_e64 v48, v48, v72, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s2, s40, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v58, v30, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s2, s2, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v62, v21, s3
	v_cndmask_b32_e64 v22, v56, v22, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v33, 0, v33
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v2, v2, v2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v39, s2, v15
	v_add3_u32 v40, s2, v15, 64
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v14
	v_mov_b16_e32 v15.l, v3.h
	v_mov_b16_e32 v15.h, v17.l
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v129, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v43, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v22, v22, v22 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v37, s35, v13
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.h, v17.l
	v_add3_u32 v1, v1, v14, 0x7fff
	.loc	1 444 15 is_stmt 1              ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v9, v9, v9 :: v_dual_and_b32 v14, 1, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v53, v29, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v30, 0, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v3, v14, 0x7fff
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v14.l, v5.h
	v_mov_b16_e32 v14.h, v17.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v136, v61
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v25, 0, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v13, 0x7fff
	v_mov_b16_e32 v13.l, v4.h
	v_mov_b16_e32 v13.h, v17.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v61, v18, s3
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v6, v6, v6
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v20, 0, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v18, v18, v18 :: v_dual_and_b32 v1, 1, v13
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v29, 0, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v6.h
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v125, v48
	v_fma_f32 v31, v31, v130, v54
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v18, 0, v18
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v3, 1, v14
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v7, 1, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v134, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v48, v24, s3
	v_cndmask_b32_e64 v31, v54, v31, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v10, v10, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_mov_b16_e32 v6.h, v17.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v59, v27, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v31, v31, v31
	v_max_f32_e32 v10, 0, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v3, 1, v6
	v_mov_b16_e32 v13.l, v4.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v24, 0, v24
	v_max_f32_e32 v21, 0, v21
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v22, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v7, 1, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v17.l
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v6.l, v10.h
	v_mov_b16_e32 v7.l, v9.h
	v_mov_b16_e32 v7.h, v17.l
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v6, 1, v6
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v27, 0, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v7
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v12, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v10, v6, 0x7fff
	v_and_b32_e32 v10, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v35, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v9, v4, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v17.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, v16, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v138, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v4.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v14, v23, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v9
	v_mov_b16_e32 v9.l, v11.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v63, v19, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, 0, v16
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v23, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v10.h, v17.l
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v36, v36
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.h, v17.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v34, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v4.l, v8.h
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v19, 0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v12.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v20, v20, v20
	s_mov_b32 s2, 0x76543210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s3, s15
	v_and_b32_e32 v8, 1, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v16, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.h, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v8, v12, v8, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_and_b32_e32 v12, 1, v13
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v13, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v8.h
	v_and_b32_e32 v8, 1, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v14.h
	v_mov_b16_e32 v12.h, v17.l
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v25, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v25.h, v17.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v26, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v10.h
	v_add3_u32 v7, v14, v7, 0x7fff
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.h, v17.l
	v_mov_b16_e32 v13.l, v12.h
	v_and_b32_e32 v14, 1, v15
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v15, v29, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v28, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v10, v10, v14, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v17.l
	v_mov_b16_e32 v16.l, v7.h
	v_add3_u32 v12, v12, v13, 0x7fff
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e32 v26.h, v17.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v24, v31, v31 :: v_dual_and_b32 v13, 1, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v23.h
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v25.l, v24.h
	v_add3_u32 v10, v15, v13, 0x7fff
	v_add3_u32 v7, v7, v14, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v15, v30, v30 :: v_dual_and_b32 v14, 1, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v10.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v33, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v23, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v13, v24, v13, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v23, v27, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.h, v17.l
	v_mov_b16_e32 v24.l, v7.h
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e32 v25.l, v23.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v7, v7, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v15, v16, 0x7fff
	v_and_b32_e32 v15, 1, v26
	v_add3_u32 v16, v23, v25, 0x7fff
	v_mov_b16_e32 v23.h, v17.l
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v21, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v15, v20, v15, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v19, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v17.l
	v_mov_b16_e32 v19.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v18, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.h, v17.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v21, v22, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v16.h
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v20.l, v18.h
	v_mov_b16_e32 v22.h, v17.l
	v_mov_b16_e32 v23.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v7, v19, 0x7fff
	v_dual_cndmask_b32 v19, v10, v11 :: v_dual_and_b32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v17, 1, v22
	v_add3_u32 v18, v18, v20, 0x7fff
	v_and_b32_e32 v20, 1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v16, v17, 0x7fff
	v_cndmask_b32_e32 v17, v9, v6, vcc_lo
	v_mov_b16_e32 v7.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v21, v20, 0x7fff
	v_mov_b16_e32 v0.l, v16.h
	v_cndmask_b32_e32 v16, v5, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v9, v8, v4
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v11, v14, v12
	v_cndmask_b32_e32 v12, v12, v14, vcc_lo
	v_cndmask_b32_e32 v14, v7, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v7, v13, v7, vcc_lo
	v_permlanex16_b32 v13, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v18, v0, v15, vcc_lo
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v6, 4, v6
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_and_b32_e32 v22, 0x7060706, v6
	v_permlanex16_b32 v23, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s14
	v_perm_b32 v0, v2, v16, v21
	v_perm_b32 v1, v2, v16, v22
	v_perm_b32 v2, v13, v5, v21
	v_perm_b32 v3, v13, v5, v22
	v_add_lshl_u32 v16, v39, v37, 1
	v_perm_b32 v4, v10, v17, v21
	v_perm_b32 v5, v10, v17, v22
	v_perm_b32 v6, v15, v9, v21
	v_perm_b32 v7, v15, v9, v22
	v_add_lshl_u32 v17, v40, v37, 1
	v_perm_b32 v8, v20, v19, v21
	v_perm_b32 v9, v20, v19, v22
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v14, v21
	v_perm_b32 v13, v23, v14, v22
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 245
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17588
; TotalNumSgprs: 48
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 245
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
