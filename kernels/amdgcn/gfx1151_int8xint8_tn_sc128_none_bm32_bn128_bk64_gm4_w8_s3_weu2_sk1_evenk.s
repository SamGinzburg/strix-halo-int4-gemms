	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v6, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v47, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v20, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 6, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v5, 62, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v19, 15, v0
	v_and_b32_e32 v3, 24, v47
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v60, 0, v47
	v_or_b32_e32 v48, 0x3f0, v0
	v_or_b32_e32 v49, 0x7f0, v0
	v_and_b32_e32 v50, 8, v0
	v_and_b32_e32 v51, 32, v0
	v_lshlrev_b32_e32 v52, 6, v6
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s26, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s7, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s26, v4
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s10, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s5
	s_mul_hi_u32 s10, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_hi_u32 s5, s8, s5
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s5, s4
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s5, 1
	s_sub_i32 s12, s8, s4
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s4, s11, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s10
	s_sub_i32 s16, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s17, s16, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s16, s16, s7
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s9, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s21, s4, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s16
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s19, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s4, s19
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v6
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[7:8], null, s27, v5, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s4
	s_mov_b64 s[4:5], s[10:11]
	s_sub_i32 s10, 0, s19
	s_xor_b32 s11, s2, s21
	s_mul_i32 s10, s10, s18
	s_mul_hi_u32 s7, s18, s10
	s_abs_i32 s10, s2
	s_add_i32 s18, s18, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s10, s18
	s_ashr_i32 s18, s11, 31
	s_mul_i32 s16, s7, s19
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s10, s10, s16
	s_add_i32 s16, s7, 1
	s_sub_i32 s20, s10, s19
	s_cmp_ge_u32 s10, s19
	s_cselect_b32 s7, s16, s7
	s_cselect_b32 s10, s20, s10
	s_add_i32 s16, s7, 1
	s_cmp_ge_u32 s10, s19
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s7, s16, s7
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s19, s7, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s20, s6, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s7, s19, s18
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s16, s26, s30
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s7, s21
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s21, s6, 0x7f
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s27, s30
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s7, 7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s21, 31
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s33, s6, v7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s3, 25
.Ltmp19:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s6, s10
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s21, s21, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s20, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s27, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v7, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s31, s27, 6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s7, s11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s31, v7
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v2, v2, v3, s34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v10, s[4:7], 0 offen
	buffer_load_b128 v[25:28], v9, s[4:7], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s35, s26, 6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v10, 0x70, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s27, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s16, v2
	v_add3_u32 v2, s16, s35, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_mov_b32 s16, 0
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[29:32], v7, s[4:7], 0 offen
	buffer_load_b128 v[33:36], v9, s[4:7], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b64 v[43:44], v8, s[8:11], 0 offen
	buffer_load_b64 v[45:46], v2, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v8, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v9, 16, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s20, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v12, 0x420, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v10, v2, 1, v10
	v_lshlrev_b32_e32 v8, 3, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v12, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 2, v10
	v_or_b32_e32 v15, 4, v10
	v_or_b32_e32 v16, 6, v10
	v_or_b32_e32 v17, 8, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v53, v11, 10, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v11, 10, v10
	v_or_b32_e32 v12, 12, v10
	v_or_b32_e32 v13, 14, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v54, 0x90, v53
	v_xor_b32_e32 v55, 0x120, v53
	v_xor_b32_e32 v56, 0x1b0, v53
	v_xor_b32_e32 v57, 0x210, v53
	v_xor_b32_e32 v58, 0x330, v53
	v_xor_b32_e32 v59, 0x3a0, v53
	v_add_nc_u32_e32 v61, 0, v53
	v_add_nc_u32_e32 v62, 0, v54
	v_add_nc_u32_e32 v63, 0, v55
	v_add_nc_u32_e32 v64, 0, v56
	v_add_nc_u32_e32 v65, 0, v57
	v_add_nc_u32_e32 v66, 0, v58
	v_add_nc_u32_e32 v67, 0, v59
	s_waitcnt vmcnt(4)
	v_perm_b32 v18, v25, v21, 0x5010400
	v_perm_b32 v21, v25, v21, 0x7030602
	v_perm_b32 v25, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v37, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v38, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_lshrrev_b32_e32 v68, 8, v25
	v_lshrrev_b32_e32 v69, 24, v25
	v_lshrrev_b32_e32 v39, 8, v18
	v_lshrrev_b32_e32 v70, 8, v26
	v_lshrrev_b32_e32 v71, 24, v26
	v_lshrrev_b32_e32 v40, 24, v18
	v_lshrrev_b32_e32 v72, 8, v37
	v_lshrrev_b32_e32 v73, 24, v37
	v_lshrrev_b32_e32 v41, 8, v21
	v_lshrrev_b32_e32 v74, 8, v27
	v_lshrrev_b32_e32 v75, 24, v27
	v_lshrrev_b32_e32 v42, 24, v21
	v_lshrrev_b32_e32 v76, 8, v38
	v_lshrrev_b32_e32 v77, 24, v38
	v_lshrrev_b32_e32 v78, 8, v28
	v_lshrrev_b32_e32 v79, 24, v28
	v_and_b16 v2.l, 0xff, v18.l
	v_and_b16 v2.h, 0xff, v18.h
	v_and_b16 v18.l, 0xff, v21.l
	v_and_b16 v18.h, 0xff, v21.h
	v_and_b16 v21.l, 0xff, v25.l
	v_and_b16 v21.h, 0xff, v25.h
	v_and_b16 v23.l, 0xff, v37.l
	v_and_b16 v23.h, 0xff, v37.h
	v_lshlrev_b16 v37.l, 8, v68.l
	v_lshlrev_b16 v37.h, 8, v69.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v68, v33, v29, 0x5010400
	v_and_b16 v22.l, 0xff, v26.l
	v_and_b16 v22.h, 0xff, v26.h
	v_and_b16 v24.l, 0xff, v27.l
	v_and_b16 v25.l, 0xff, v38.l
	v_and_b16 v25.h, 0xff, v38.h
	v_lshlrev_b16 v27.l, 8, v39.l
	v_lshlrev_b16 v38.l, 8, v70.l
	v_lshlrev_b16 v38.h, 8, v71.l
	v_and_b16 v24.h, 0xff, v27.h
	v_lshlrev_b16 v27.h, 8, v40.l
	v_lshlrev_b16 v39.l, 8, v72.l
	v_lshlrev_b16 v39.h, 8, v73.l
	v_perm_b32 v29, v33, v29, 0x7030602
	v_and_b16 v26.l, 0xff, v28.l
	v_lshlrev_b16 v28.l, 8, v41.l
	v_lshlrev_b16 v40.l, 8, v74.l
	v_lshlrev_b16 v40.h, 8, v75.l
	v_and_b16 v26.h, 0xff, v28.h
	v_lshlrev_b16 v28.h, 8, v42.l
	v_lshlrev_b16 v41.l, 8, v76.l
	v_lshlrev_b16 v41.h, 8, v77.l
	v_lshlrev_b16 v42.l, 8, v78.l
	v_lshlrev_b16 v42.h, 8, v79.l
	v_perm_b32 v33, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v69, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v70, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_or_b16 v21.l, v21.l, v37.l
	v_or_b16 v21.h, v21.h, v37.h
	v_lshrrev_b32_e32 v37, 8, v68
	v_or_b16 v2.l, v2.l, v27.l
	v_or_b16 v22.l, v22.l, v38.l
	v_or_b16 v22.h, v22.h, v38.h
	v_lshrrev_b32_e32 v38, 24, v68
	v_or_b16 v2.h, v2.h, v27.h
	v_or_b16 v23.l, v23.l, v39.l
	v_or_b16 v23.h, v23.h, v39.h
	v_lshrrev_b32_e32 v39, 8, v29
	v_or_b16 v18.l, v18.l, v28.l
	v_or_b16 v24.l, v24.l, v40.l
	v_or_b16 v24.h, v24.h, v40.h
	v_lshrrev_b32_e32 v40, 24, v29
	v_or_b16 v18.h, v18.h, v28.h
	v_or_b16 v25.l, v25.l, v41.l
	v_or_b16 v25.h, v25.h, v41.h
	v_or_b16 v26.l, v26.l, v42.l
	v_or_b16 v26.h, v26.h, v42.h
	v_and_b16 v27.l, 0xff, v68.l
	v_and_b16 v27.h, 0xff, v68.h
	v_and_b16 v28.l, 0xff, v29.l
	v_and_b16 v28.h, 0xff, v29.h
	v_and_b16 v29.l, 0xff, v33.l
	v_lshrrev_b32_e32 v41, 8, v33
	v_lshrrev_b32_e32 v42, 24, v33
	v_and_b16 v29.h, 0xff, v33.h
	v_lshrrev_b32_e32 v68, 8, v34
	v_lshrrev_b32_e32 v71, 24, v34
	v_and_b16 v31.l, 0xff, v69.l
	v_lshrrev_b32_e32 v72, 8, v69
	v_lshrrev_b32_e32 v73, 24, v69
	v_and_b16 v31.h, 0xff, v69.h
	v_and_b16 v32.l, 0xff, v35.l
	v_lshrrev_b32_e32 v69, 8, v35
	v_lshrrev_b32_e32 v74, 24, v35
	v_and_b16 v32.h, 0xff, v35.h
	v_and_b16 v33.l, 0xff, v70.l
	v_lshrrev_b32_e32 v35, 8, v70
	v_lshrrev_b32_e32 v75, 24, v70
	v_and_b16 v33.h, 0xff, v70.h
	v_lshrrev_b32_e32 v70, 8, v36
	v_lshrrev_b32_e32 v76, 24, v36
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v60, v[43:44] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v2
	ds_store_b16_d16_hi v61, v2 offset:64
	ds_store_b16 v62, v18
	ds_store_b16_d16_hi v62, v18 offset:64
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
	v_lshlrev_b16 v2.l, 8, v37.l
	v_lshlrev_b16 v2.h, 8, v38.l
	v_lshlrev_b16 v18.l, 8, v39.l
	v_lshlrev_b16 v18.h, 8, v40.l
	v_and_b16 v30.l, 0xff, v34.l
	v_and_b16 v30.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v36.l
	v_and_b16 v34.h, 0xff, v36.h
	v_lshlrev_b16 v21.l, 8, v41.l
	v_lshlrev_b16 v21.h, 8, v42.l
	v_lshlrev_b16 v22.l, 8, v68.l
	v_lshlrev_b16 v22.h, 8, v71.l
	v_lshlrev_b16 v23.l, 8, v72.l
	v_lshlrev_b16 v23.h, 8, v73.l
	v_lshlrev_b16 v24.l, 8, v69.l
	v_lshlrev_b16 v24.h, 8, v74.l
	v_lshlrev_b16 v25.l, 8, v35.l
	v_lshlrev_b16 v25.h, 8, v75.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v26.h, 8, v76.l
	v_or_b16 v2.l, v27.l, v2.l
	v_or_b16 v2.h, v27.h, v2.h
	v_or_b16 v18.l, v28.l, v18.l
	v_or_b16 v18.h, v28.h, v18.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v21.l, v29.l, v21.l
	v_or_b16 v21.h, v29.h, v21.h
	v_or_b16 v22.l, v30.l, v22.l
	v_or_b16 v22.h, v30.h, v22.h
	v_or_b16 v23.l, v31.l, v23.l
	v_or_b16 v23.h, v31.h, v23.h
	v_or_b16 v24.l, v32.l, v24.l
	v_or_b16 v24.h, v32.h, v24.h
	v_or_b16 v25.l, v33.l, v25.l
	v_or_b16 v25.h, v33.h, v25.h
	v_or_b16 v26.l, v34.l, v26.l
	v_or_b16 v26.h, v34.h, v26.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v60, v[45:46] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v61, v2 offset:8192
	ds_store_b16_d16_hi v61, v2 offset:8256
	ds_store_b16 v62, v18 offset:8192
	ds_store_b16_d16_hi v62, v18 offset:8256
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
	v_or_b32_e32 v61, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v18, 6, v6
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v62, 32, v0
	v_and_or_b32 v60, 0x1800, v7, v8
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s30, 64
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_mov_b32 s6, -1
                                        ; implicit-def: $sgpr17
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr60
.LBB0_3:                                ; %Flow89
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v21, s34, v19
	v_or_b32_e32 v9, s34, v9
	s_ashr_i32 s0, s21, 7
	v_or_b32_e32 v44, s33, v10
	v_or_b32_e32 v43, s33, v14
	v_mul_lo_u32 v45, v21, s0
	v_mul_lo_u32 v46, v9, s0
	v_or_b32_e32 v42, s33, v15
	v_or_b32_e32 v40, s33, v16
	v_or_b32_e32 v38, s33, v17
	v_or_b32_e32 v41, s33, v11
	v_or_b32_e32 v39, s33, v12
	v_or_b32_e32 v37, s33, v13
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 5, 1
	v_bfe_i32 v6, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s20, 6
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s6, s19, 7
	s_mov_b32 s17, s16
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v2, 0x420, v2
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v5, s30, v5
	v_and_or_b32 v60, 0x1800, v7, v8
	v_and_or_b32 v2, 0x210, v6, v2
	v_add3_u32 v4, s30, v4, 0x80
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_add_nc_u32_e32 v7, 0x81, v5
	v_add_nc_u32_e32 v5, 0x80, v5
	v_xor_b32_e32 v2, v2, v60
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v6, s27, v7
	v_mul_lo_u32 v5, s27, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v61, v2, v52
	v_mul_lo_u32 v2, s26, v4
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v36, 0
	v_xor_b32_e32 v62, 16, v61
	v_add3_u32 v4, v6, s6, v1
	v_add3_u32 v1, v5, s6, v1
	s_lshl_b32 s6, s18, 7
	s_mov_b32 s18, s16
	v_add3_u32 v67, v2, s34, v3
	v_subrev_nc_u32_e32 v65, s6, v4
	v_subrev_nc_u32_e32 v66, s6, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v8, s23
	v_xor_b32_e32 v63, 32, v61
	v_xor_b32_e32 v64, 48, v61
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v34, 0
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v23, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s14, s1, -2
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s26, 0, 0x4800
	s_add_i32 s44, 0, 0x2000
	s_mov_b32 s15, 1
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s19, s1
	s_mov_b32 s18, s16
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v68, s19, v19
	v_add_nc_u32_e32 v69, s19, v48
	v_add_nc_u32_e32 v70, s19, v49
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s30, 31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s18, v61
	v_add_nc_u32_e32 v72, s18, v62
	v_add_nc_u32_e32 v73, s18, v63
	v_add_nc_u32_e32 v74, s18, v64
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s19, 25
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[17:18], v67, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v66, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v65, s[4:7], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s30, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[84:87], v71
	ds_load_b128 v[88:91], v72
	ds_load_b128 v[92:95], v73
	ds_load_b128 v[96:99], v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v71, v68 offset:96
	ds_load_u8 v72, v68 offset:64
	ds_load_u8 v73, v68
	ds_load_u8 v74, v68 offset:16
	ds_load_u8 v75, v68 offset:32
	ds_load_u8 v76, v68 offset:112
	ds_load_u8 v77, v68 offset:80
	ds_load_u8 v78, v68 offset:48
	ds_load_u8 v79, v68 offset:1280
	ds_load_u8 v80, v68 offset:416
	ds_load_u8 v81, v68 offset:384
	ds_load_u8 v82, v68 offset:480
	ds_load_u8 v83, v68 offset:448
	ds_load_u8 v100, v68 offset:496
	ds_load_u8 v101, v68 offset:464
	ds_load_u8 v102, v68 offset:432
	ds_load_u8 v103, v68 offset:400
	ds_load_u8 v104, v68 offset:288
	ds_load_u8 v105, v68 offset:256
	ds_load_u8 v106, v68 offset:352
	ds_load_u8 v107, v68 offset:320
	ds_load_u8 v108, v68 offset:368
	ds_load_u8 v109, v68 offset:336
	ds_load_u8 v110, v68 offset:304
	ds_load_u8 v111, v68 offset:272
	ds_load_u8 v112, v68 offset:160
	ds_load_u8 v113, v68 offset:128
	ds_load_u8 v114, v68 offset:224
	ds_load_u8 v115, v68 offset:192
	ds_load_u8 v116, v68 offset:240
	ds_load_u8 v117, v68 offset:208
	ds_load_u8 v118, v68 offset:176
	ds_load_u8 v119, v68 offset:144
	ds_load_u8 v120, v68 offset:928
	ds_load_u8 v121, v68 offset:896
	ds_load_u8 v122, v68 offset:992
	ds_load_u8 v123, v68 offset:960
	ds_load_u8 v124, v68 offset:1024
	ds_load_u8 v125, v68 offset:976
	ds_load_u8 v126, v68 offset:944
	ds_load_u8 v127, v68 offset:912
	ds_load_u8 v128, v68 offset:800
	ds_load_u8 v129, v68 offset:768
	ds_load_u8 v130, v68 offset:864
	ds_load_u8 v131, v68 offset:832
	ds_load_u8 v132, v68 offset:880
	ds_load_u8 v133, v68 offset:848
	ds_load_u8 v134, v68 offset:816
	ds_load_u8 v135, v68 offset:784
	ds_load_u8 v136, v68 offset:672
	ds_load_u8 v137, v68 offset:640
	ds_load_u8 v138, v68 offset:736
	ds_load_u8 v139, v68 offset:704
	ds_load_u8 v140, v68 offset:752
	ds_load_u8 v141, v68 offset:720
	ds_load_u8 v142, v68 offset:688
	ds_load_u8 v143, v68 offset:656
	ds_load_u8 v144, v68 offset:544
	ds_load_u8 v145, v68 offset:512
	ds_load_u8 v146, v68 offset:608
	ds_load_u8 v147, v68 offset:576
	ds_load_u8 v148, v68 offset:624
	ds_load_u8 v149, v68 offset:592
	ds_load_u8 v150, v68 offset:560
	ds_load_u8 v151, v68 offset:528
	ds_load_u8 v152, v68 offset:1440
	ds_load_u8 v153, v68 offset:1504
	ds_load_u8 v154, v68 offset:1472
	ds_load_u8 v155, v68 offset:1536
	ds_load_u8 v156, v68 offset:1520
	ds_load_u8 v157, v68 offset:1488
	ds_load_u8 v158, v68 offset:1456
	ds_load_u8 v159, v68 offset:1424
	ds_load_u8 v160, v68 offset:1408
	ds_load_u8 v161, v68 offset:1312
	ds_load_u8 v162, v68 offset:1376
	ds_load_u8 v163, v68 offset:1344
	ds_load_u8 v164, v68 offset:1392
	ds_load_u8 v165, v68 offset:1360
	ds_load_u8 v166, v68 offset:1328
	ds_load_u8 v167, v68 offset:1296
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s18, 7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v178, v68 offset:1184
	ds_load_u8 v179, v68 offset:1248
	ds_load_u8 v180, v68 offset:1216
	ds_load_u8 v181, v68 offset:1264
	ds_load_u8 v182, v68 offset:1232
	ds_load_u8 v183, v68 offset:1200
	ds_load_u8 v184, v68 offset:1168
	ds_load_u8 v185, v68 offset:1152
	ds_load_u8 v186, v68 offset:1056
	ds_load_u8 v187, v68 offset:1120
	ds_load_u8 v188, v68 offset:1088
	ds_load_u8 v189, v68 offset:1136
	ds_load_u8 v190, v68 offset:1104
	ds_load_u8 v191, v68 offset:1072
	ds_load_u8 v192, v68 offset:1040
	ds_load_u8 v193, v68 offset:1952
	ds_load_u8 v194, v68 offset:2016
	ds_load_u8 v195, v68 offset:1984
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	ds_load_u8 v196, v68 offset:2000
	ds_load_u8 v197, v68 offset:1968
	ds_load_u8 v198, v68 offset:1936
	ds_load_u8 v199, v68 offset:1920
	ds_load_u8 v200, v68 offset:1824
	ds_load_u8 v201, v68 offset:1888
	ds_load_u8 v202, v68 offset:1856
	ds_load_u8 v203, v68 offset:1904
	ds_load_u8 v204, v68 offset:1872
	ds_load_u8 v205, v68 offset:1840
	ds_load_u8 v206, v68 offset:1808
	ds_load_u8 v207, v68 offset:1792
	ds_load_u8 v208, v68 offset:1696
	ds_load_u8 v209, v68 offset:1760
	ds_load_u8 v210, v68 offset:1728
	ds_load_u8 v211, v68 offset:1776
	ds_load_u8 v212, v68 offset:1744
	ds_load_u8 v213, v68 offset:1712
	ds_load_u8 v214, v68 offset:1680
	ds_load_u8 v215, v68 offset:1664
	ds_load_u8 v216, v68 offset:1568
	ds_load_u8 v217, v68 offset:1632
	ds_load_u8 v218, v68 offset:1600
	ds_load_u8 v219, v68 offset:1648
	ds_load_u8 v220, v68 offset:1616
	ds_load_u8 v221, v68 offset:1584
	ds_load_u8 v68, v68 offset:1552
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v168, v45, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s19, s18, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v169, v46, s18, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v170, v44, s19, 1
	v_add_lshl_u32 v171, v43, s19, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v172, v42, s19, 1
	v_add_lshl_u32 v173, v40, s19, 1
	v_add_lshl_u32 v174, v38, s19, 1
	v_add_lshl_u32 v175, v41, s19, 1
	v_add_lshl_u32 v176, v39, s19, 1
	v_add_lshl_u32 v177, v37, s19, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v168, 0x80000000, v168 :: v_dual_cndmask_b32 v169, 0x80000000, v169
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_cndmask_b32 v171, 0x80000000, v171
	v_dual_cndmask_b32 v172, 0x80000000, v172 :: v_dual_cndmask_b32 v173, 0x80000000, v173
	v_dual_cndmask_b32 v174, 0x80000000, v174 :: v_dual_cndmask_b32 v175, 0x80000000, v175
	v_dual_cndmask_b32 v176, 0x80000000, v176 :: v_dual_cndmask_b32 v177, 0x80000000, v177
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v168, v168, s[36:39], 0 offen
	buffer_load_u16 v169, v169, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v171, v171, s[40:43], 0 offen
	buffer_load_u16 v170, v170, s[40:43], 0 offen
	buffer_load_u16 v173, v173, s[40:43], 0 offen
	buffer_load_u16 v172, v172, s[40:43], 0 offen
	buffer_load_u16 v175, v175, s[40:43], 0 offen
	buffer_load_u16 v174, v174, s[40:43], 0 offen
	buffer_load_u16 v177, v177, s[40:43], 0 offen
	buffer_load_u16 v176, v176, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v83, v82, 0xc0c0004
	v_perm_b32 v82, v105, v104, 0xc0c0004
	v_perm_b32 v83, v107, v106, 0xc0c0004
	v_perm_b32 v104, v113, v112, 0xc0c0004
	v_perm_b32 v105, v115, v114, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v73, v75, 0xc0c0004
	v_perm_b32 v73, v121, v120, 0xc0c0004
	v_perm_b32 v75, v123, v122, 0xc0c0004
	v_perm_b32 v106, v129, v128, 0xc0c0004
	v_perm_b32 v107, v131, v130, 0xc0c0004
	v_perm_b32 v112, v137, v136, 0xc0c0004
	v_perm_b32 v113, v139, v138, 0xc0c0004
	v_perm_b32 v114, v145, v144, 0xc0c0004
	v_perm_b32 v115, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v122, v79, v161, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v124, v124, v186, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v130, v188, v187, 0xc0c0004
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_perm_b32 v117, v77, v76, 0xc0c0004
	v_perm_b32 v74, v74, v78, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v69, v125, v69, 0xc0c0004
	v_perm_b32 v125, v135, v134, 0xc0c0004
	v_perm_b32 v126, v133, v132, 0xc0c0004
	v_perm_b32 v127, v143, v142, 0xc0c0004
	v_perm_b32 v132, v141, v140, 0xc0c0004
	v_perm_b32 v133, v151, v150, 0xc0c0004
	v_perm_b32 v135, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v151, v198, v197, 0xc0c0004
	v_perm_b32 v70, v196, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v221, 0xc0c0004
	v_perm_b32 v159, v220, v219, 0xc0c0004
	v_lshl_or_b32 v79, v81, 16, v80
	v_lshl_or_b32 v78, v83, 16, v82
	v_lshl_or_b32 v77, v105, 16, v104
	v_lshl_or_b32 v76, v71, 16, v72
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v120, v160, v152, 0xc0c0004
	v_perm_b32 v121, v154, v153, 0xc0c0004
	v_perm_b32 v123, v163, v162, 0xc0c0004
	v_perm_b32 v128, v185, v178, 0xc0c0004
	v_perm_b32 v129, v180, v179, 0xc0c0004
	v_perm_b32 v147, v103, v102, 0xc0c0004
	v_perm_b32 v152, v101, v100, 0xc0c0004
	v_perm_b32 v153, v111, v110, 0xc0c0004
	v_perm_b32 v154, v109, v108, 0xc0c0004
	v_lshl_or_b32 v103, v75, 16, v73
	v_lshl_or_b32 v102, v107, 16, v106
	v_lshl_or_b32 v101, v113, 16, v112
	v_lshl_or_b32 v100, v115, 16, v114
	v_lshl_or_b32 v104, v130, 16, v124
	v_lshl_or_b32 v112, v117, 16, v74
	v_lshl_or_b32 v119, v69, 16, v119
	v_lshl_or_b32 v117, v132, 16, v127
	v_lshl_or_b32 v127, v70, 16, v151
	v_lshl_or_b32 v124, v159, 16, v68
	v_wmma_i32_16x16x16_iu8 v[68:75], v[84:87], v[76:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v131, v199, v193, 0xc0c0004
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s15, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v136, v195, v194, 0xc0c0004
	v_perm_b32 v137, v207, v200, 0xc0c0004
	v_perm_b32 v138, v202, v201, 0xc0c0004
	v_perm_b32 v139, v215, v208, 0xc0c0004
	v_perm_b32 v144, v210, v209, 0xc0c0004
	v_perm_b32 v145, v155, v216, 0xc0c0004
	v_perm_b32 v146, v218, v217, 0xc0c0004
	v_perm_b32 v134, v149, v148, 0xc0c0004
	v_lshl_or_b32 v107, v121, 16, v120
	v_lshl_or_b32 v106, v123, 16, v122
	v_lshl_or_b32 v105, v129, 16, v128
	v_lshl_or_b32 v115, v152, 16, v147
	v_lshl_or_b32 v114, v154, 16, v153
	v_lshl_or_b32 v113, v116, 16, v118
	v_wmma_i32_16x16x16_iu8 v[68:75], v[88:91], v[100:103], v[68:75] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s15, 11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v140, v157, v156, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s18, s18, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v141, v167, v166, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v222, s18, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v142, v165, v164, 0xc0c0004
	v_perm_b32 v143, v184, v183, 0xc0c0004
	v_perm_b32 v148, v182, v181, 0xc0c0004
	v_perm_b32 v149, v192, v191, 0xc0c0004
	v_perm_b32 v150, v190, v189, 0xc0c0004
	v_lshl_or_b32 v111, v136, 16, v131
	v_lshl_or_b32 v110, v138, 16, v137
	v_lshl_or_b32 v109, v144, 16, v139
	v_lshl_or_b32 v108, v146, 16, v145
	v_lshl_or_b32 v118, v126, 16, v125
	v_lshl_or_b32 v116, v134, 16, v133
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[104:107], v[68:75] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v155, v206, v205, 0xc0c0004
	v_perm_b32 v156, v204, v203, 0xc0c0004
	v_perm_b32 v157, v214, v213, 0xc0c0004
	v_perm_b32 v158, v212, v211, 0xc0c0004
	v_lshl_or_b32 v123, v140, 16, v135
	v_lshl_or_b32 v122, v142, 16, v141
	v_lshl_or_b32 v121, v148, 16, v143
	v_lshl_or_b32 v120, v150, 16, v149
	v_wmma_i32_16x16x16_iu8 v[76:83], v[88:91], v[116:119], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[96:99], v[108:111], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v156, 16, v155
	v_lshl_or_b32 v125, v158, 16, v157
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s15, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[120:123], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v84, v68
	v_cvt_f32_i32_e32 v85, v69
	v_cvt_f32_i32_e32 v87, v71
	v_cvt_f32_i32_e32 v88, v72
	v_wmma_i32_16x16x16_iu8 v[76:83], v[96:99], v[124:127], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v86, v70
	v_cvt_f32_i32_e32 v89, v73
	s_mov_b32 s16, s44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s19, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v226, s44, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s14, -1
	s_mov_b32 s1, s26
	s_mov_b32 s17, s30
	s_add_i32 s30, s30, 64
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s26, s18, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s14, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(12)
	ds_store_b64 v222, v[17:18] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(10)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v68, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v69, v16, v12, 0x5010400
	v_lshrrev_b32_e32 v71, 8, v17
	v_lshrrev_b32_e32 v72, 24, v17
	v_lshrrev_b32_e32 v93, 8, v14
	v_lshrrev_b32_e32 v94, 24, v14
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v70, v16, v12, 0x7030602
	v_and_b16 v9.l, 0xff, v17.l
	v_and_b16 v9.h, 0xff, v17.h
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v14.l, 0xff, v15.l
	v_lshrrev_b32_e32 v97, 8, v15
	v_lshrrev_b32_e32 v98, 24, v15
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v69.l
	v_lshrrev_b32_e32 v99, 8, v69
	v_lshrrev_b32_e32 v100, 24, v69
	v_and_b16 v15.h, 0xff, v69.h
	v_lshlrev_b16 v17.l, 8, v71.l
	v_lshlrev_b16 v17.h, 8, v72.l
	v_lshlrev_b16 v69.l, 8, v93.l
	v_lshlrev_b16 v69.h, 8, v94.l
	v_lshrrev_b32_e32 v73, 8, v13
	v_lshrrev_b32_e32 v90, 24, v13
	v_lshrrev_b32_e32 v91, 8, v18
	v_lshrrev_b32_e32 v92, 24, v18
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v12.l, v12.l, v69.l
	v_or_b16 v12.h, v12.h, v69.h
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v17, 16, v168
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v176
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.l, 0xff, v18.l
	v_and_b16 v11.h, 0xff, v18.h
	v_lshrrev_b32_e32 v95, 8, v68
	v_lshrrev_b32_e32 v96, 24, v68
	v_lshlrev_b16 v18.l, 8, v73.l
	v_lshlrev_b16 v18.h, 8, v90.l
	v_add_nc_u32_e32 v225, s44, v55
	v_and_b16 v13.l, 0xff, v68.l
	v_and_b16 v13.h, 0xff, v68.h
	v_lshlrev_b16 v68.l, 8, v91.l
	v_lshlrev_b16 v68.h, 8, v92.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v92, v69, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v16.l, 0xff, v70.l
	v_lshrrev_b32_e32 v101, 8, v70
	v_lshrrev_b32_e32 v102, 24, v70
	v_and_b16 v16.h, 0xff, v70.h
	v_lshlrev_b16 v70.l, 8, v95.l
	v_lshlrev_b16 v70.h, 8, v96.l
	v_lshlrev_b16 v71.l, 8, v97.l
	v_lshlrev_b16 v71.h, 8, v98.l
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v18, 16, v169
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v223, s44, v53
	v_or_b16 v11.l, v11.l, v68.l
	v_or_b16 v11.h, v11.h, v68.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v25, v92, v74 :: v_dual_lshlrev_b32 v68, 16, v177
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v224, s44, v54
	v_add_nc_u32_e32 v227, s44, v57
	v_or_b16 v13.l, v13.l, v70.l
	v_or_b16 v13.h, v13.h, v70.h
	v_or_b16 v14.l, v14.l, v71.l
	v_or_b16 v14.h, v14.h, v71.h
	ds_store_b16 v223, v9
	ds_store_b16_d16_hi v223, v9 offset:64
	ds_store_b16 v224, v10
	ds_store_b16_d16_hi v224, v10 offset:64
	ds_store_b16 v225, v11
	ds_store_b16_d16_hi v225, v11 offset:64
	ds_store_b16 v226, v12
	ds_store_b16_d16_hi v226, v12 offset:64
	ds_store_b16 v227, v13
	ds_store_b16_d16_hi v227, v13 offset:64
	ds_store_b16 v223, v14 offset:640
	ds_store_b16_d16_hi v223, v14 offset:704
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v9, 16, v171
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v66, s31, v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v73.l, 8, v101.l
	v_lshlrev_b16 v73.h, 8, v102.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v11, 16, v173
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v71, v9, v17 :: v_dual_lshlrev_b32 v14, 16, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v16.l, v16.l, v73.l
	v_or_b16 v16.h, v16.h, v73.h
	v_lshlrev_b16 v72.l, 8, v99.l
	v_lshlrev_b16 v72.h, 8, v100.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v36, v71, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v73, v11, v17
	v_mul_f32_e32 v90, v14, v17
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v10, 16, v170
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.l, v15.l, v72.l
	v_or_b16 v15.h, v15.h, v72.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v35, v73, v87
	v_fmac_f32_e32 v29, v90, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v65, s31, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v70, v10, v17 :: v_dual_add_nc_u32 v67, s35, v67
	v_mul_f32_e32 v10, v18, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v21, v70, v84 :: v_dual_add_nc_u32 v228, s44, v58
	v_fmac_f32_e32 v34, v10, v76
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v18, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v32, v9, v77 :: v_dual_lshlrev_b32 v13, 16, v175
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v91, v13, v17 :: v_dual_lshlrev_b32 v12, 16, v172
	v_mul_f32_e32 v13, v18, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v31, v91, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v12, v17
	v_dual_mul_f32 v12, v18, v12 :: v_dual_mul_f32 v17, v68, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v68, v18, v68 :: v_dual_fmac_f32 v33, v72, v86
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v30, v12, v78 :: v_dual_mul_f32 v11, v18, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v17, v75 :: v_dual_mul_f32 v14, v18, v14
	v_fmac_f32_e32 v22, v68, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v11, v79
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v18, v18, v69 :: v_dual_add_nc_u32 v229, s44, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v26, v14, v80
	v_fmac_f32_e32 v24, v13, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v228, v15
	ds_store_b16_d16_hi v228, v15 offset:64
	ds_store_b16 v229, v16
	ds_store_b16_d16_hi v229, v16 offset:64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v23, v18, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v48 :: v_dual_mov_b32 v61, v49
	v_mov_b32_e32 v18, v52
	v_mov_b32_e32 v6, v50
	v_mov_b32_e32 v62, v51
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v21, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s26, 0, 0x4800
	s_add_i32 s44, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v8, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v62
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v11, 0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v10, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v3, v1, v3
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v3, v60
	v_mov_b32_e32 v3, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	v_mov_b32_e32 v13, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v55, v5, v18
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v18, 0
	v_xor_b32_e32 v56, 16, v55
	v_xor_b32_e32 v57, 32, v55
	v_xor_b32_e32 v58, 48, v55
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
	v_add_nc_u32_e32 v7, s1, v19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v4, v7 offset:416
	ds_load_u8 v5, v7 offset:384
	ds_load_u8 v6, v7 offset:480
	ds_load_u8 v10, v7 offset:448
	ds_load_u8 v13, v7 offset:288
	ds_load_u8 v14, v7 offset:256
	ds_load_u8 v15, v7 offset:352
	ds_load_u8 v16, v7 offset:320
	ds_load_u8 v17, v7 offset:160
	ds_load_u8 v18, v7 offset:128
	ds_load_u8 v47, v7 offset:224
	ds_load_u8 v48, v7 offset:192
	ds_load_u8 v49, v7 offset:96
	ds_load_u8 v50, v7 offset:64
	ds_load_u8 v51, v7
	ds_load_u8 v52, v7 offset:32
	ds_load_u8 v59, v7 offset:464
	ds_load_u8 v60, v7 offset:432
	ds_load_u8 v78, v7 offset:400
	ds_load_u8 v79, v7 offset:368
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v12, s1, v61
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v89, v7 offset:16
	ds_load_u8 v90, v12
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s16, v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s16, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v18, v17, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s16, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v48, v47, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v8, s16, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v50, v49, 0xc0c0004
	v_lshl_or_b32 v68, v14, 16, v13
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v51, v52, 0xc0c0004
	v_perm_b32 v53, v5, v4, 0xc0c0004
	v_lshl_or_b32 v67, v16, 16, v15
	v_perm_b32 v10, v10, v6, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v60, v78, v60, 0xc0c0004
	v_lshl_or_b32 v66, v17, 16, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v69, v10, 16, v53
	v_mov_b32_e32 v54, s11
	ds_load_u8 v74, v7 offset:928
	ds_load_u8 v75, v7 offset:896
	v_mov_b32_e32 v52, s9
	ds_load_u8 v76, v7 offset:992
	ds_load_u8 v77, v7 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[70:73], v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v50, s7
	v_mov_b32_e32 v48, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[62:65], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v53, s10
	v_mov_b32_e32 v51, s8
	v_mov_b32_e32 v49, s6
	v_mov_b32_e32 v47, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v9, s1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v80, v7 offset:336
	ds_load_u8 v81, v7 offset:304
	ds_load_u8 v82, v7 offset:272
	ds_load_u8 v83, v7 offset:240
	ds_load_u8 v84, v7 offset:208
	ds_load_u8 v85, v7 offset:176
	ds_load_u8 v86, v7 offset:144
	ds_load_u8 v87, v7 offset:112
	ds_load_u8 v18, v7 offset:80
	ds_load_u8 v88, v7 offset:48
	ds_load_u8 v105, v7 offset:720
	ds_load_u8 v106, v7 offset:688
	ds_load_u8 v107, v7 offset:656
	ds_load_u8 v108, v7 offset:624
	ds_load_u8 v125, v7 offset:1264
	ds_load_u8 v126, v7 offset:1232
	ds_load_u8 v127, v7 offset:1200
	ds_load_u8 v128, v7 offset:1168
	ds_load_u8 v142, v7 offset:1776
	ds_load_u8 v143, v7 offset:1744
	ds_load_u8 v144, v7 offset:1712
	ds_load_u8 v145, v7 offset:1680
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v7 offset:544
	ds_load_u8 v99, v7 offset:512
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v7 offset:608
	ds_load_u8 v100, v7 offset:576
	ds_load_u8 v101, v7 offset:848
	ds_load_u8 v102, v7 offset:816
	ds_load_u8 v103, v7 offset:784
	ds_load_u8 v104, v7 offset:752
	s_waitcnt lgkmcnt(30)
	v_wmma_i32_16x16x16_iu8 v[10:17], v[62:65], v[66:69], v[47:54] neg_lo:[1,1,0]
	ds_load_u8 v66, v7 offset:800
	ds_load_u8 v67, v7 offset:768
	ds_load_u8 v68, v7 offset:864
	ds_load_u8 v69, v7 offset:832
	ds_load_u8 v91, v7 offset:672
	ds_load_u8 v92, v7 offset:640
	ds_load_u8 v93, v7 offset:736
	ds_load_u8 v94, v7 offset:704
	ds_load_u8 v95, v7 offset:976
	ds_load_u8 v96, v7 offset:944
	ds_load_u8 v97, v7 offset:912
	ds_load_u8 v98, v7 offset:880
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v78, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v18, v18, v87, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v84, v89, v88, 0xc0c0004
	v_lshl_or_b32 v80, v79, 16, v78
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v79, v83, 16, v82
	v_perm_b32 v77, v100, v77, 0xc0c0004
	ds_load_u8 v100, v7 offset:1504
	ds_load_u8 v112, v7 offset:1472
	v_perm_b32 v75, v99, v75, 0xc0c0004
	ds_load_u8 v99, v7 offset:1440
	ds_load_u8 v111, v7 offset:1408
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v94, v93, 0xc0c0004
	v_lshl_or_b32 v69, v76, 16, v74
	ds_load_u8 v93, v7 offset:592
	ds_load_u8 v94, v7 offset:560
	ds_load_u8 v109, v7 offset:528
	ds_load_u8 v110, v7 offset:496
	v_lshl_or_b32 v68, v67, 16, v66
	v_lshl_or_b32 v66, v77, 16, v75
	v_lshl_or_b32 v67, v92, 16, v91
	ds_load_u8 v74, v7 offset:1312
	ds_load_u8 v75, v7 offset:1280
	ds_load_u8 v76, v7 offset:1376
	ds_load_u8 v77, v7 offset:1344
	ds_load_u8 v91, v7 offset:1184
	ds_load_u8 v92, v7 offset:1152
	ds_load_u8 v113, v7 offset:1248
	ds_load_u8 v114, v7 offset:1216
	ds_load_u8 v115, v7 offset:1520
	ds_load_u8 v116, v7 offset:1488
	ds_load_u8 v117, v7 offset:1456
	ds_load_u8 v118, v7 offset:1424
	v_lshl_or_b32 v78, v18, 16, v84
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v18, v97, v96, 0xc0c0004
	v_perm_b32 v82, v107, v106, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[3:6], v[66:69], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v83, v105, v104, 0xc0c0004
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
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v75, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v76, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v77, v114, v113, 0xc0c0004
	v_lshl_or_b32 v69, v100, 16, v99
	ds_load_u8 v91, v7 offset:1136
	ds_load_u8 v92, v7 offset:1104
	ds_load_u8 v113, v7 offset:1072
	ds_load_u8 v114, v7 offset:1040
	v_lshl_or_b32 v68, v75, 16, v74
	v_perm_b32 v59, v59, v110, 0xc0c0004
	v_lshl_or_b32 v67, v77, 16, v76
	v_perm_b32 v84, v109, v94, 0xc0c0004
	v_perm_b32 v85, v93, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v81, v59, 16, v60
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v120, v112, 0xc0c0004
	v_perm_b32 v59, v103, v102, 0xc0c0004
	v_perm_b32 v60, v101, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[62:65], v[78:81], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v83, 16, v82
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v111, v119, v111, 0xc0c0004
	ds_load_u8 v119, v7 offset:1952
	ds_load_u8 v129, v7 offset:1920
	ds_load_u8 v130, v7 offset:2016
	ds_load_u8 v131, v7 offset:1984
	v_lshl_or_b32 v64, v60, 16, v59
	v_lshl_or_b32 v62, v85, 16, v84
	v_perm_b32 v59, v124, v123, 0xc0c0004
	v_lshl_or_b32 v66, v112, 16, v111
	ds_load_u8 v74, v7 offset:1824
	ds_load_u8 v75, v7 offset:1792
	ds_load_u8 v76, v7 offset:1888
	ds_load_u8 v77, v7 offset:1856
	ds_load_u8 v99, v7 offset:1696
	ds_load_u8 v100, v7 offset:1664
	ds_load_u8 v111, v7 offset:1760
	ds_load_u8 v112, v7 offset:1728
	ds_load_u8 v9, v9
	ds_load_u8 v120, v7 offset:2000
	ds_load_u8 v132, v7 offset:1968
	ds_load_u8 v133, v7 offset:1936
	v_perm_b32 v60, v122, v121, 0xc0c0004
	v_perm_b32 v78, v128, v127, 0xc0c0004
	v_perm_b32 v79, v126, v125, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[70:73], v[66:69], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v80, v114, v113, 0xc0c0004
	v_perm_b32 v81, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v140, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v77, v76, 0xc0c0004
	v_perm_b32 v119, v129, v119, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v129, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v112, v111, 0xc0c0004
	ds_load_u8 v130, v7 offset:1568
	ds_load_u8 v131, v7 offset:1536
	ds_load_u8 v134, v7 offset:1632
	ds_load_u8 v135, v7 offset:1600
	ds_load_u8 v136, v7 offset:1904
	ds_load_u8 v137, v7 offset:1872
	ds_load_u8 v138, v7 offset:1840
	ds_load_u8 v139, v7 offset:1808
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[74:77], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v95, v9, 0xc0c0004
	v_lshl_or_b32 v69, v129, 16, v119
	v_lshl_or_b32 v67, v100, 16, v99
	ds_load_u8 v8, v7 offset:1648
	ds_load_u8 v99, v7 offset:1616
	ds_load_u8 v100, v7 offset:1584
	ds_load_u8 v7, v7 offset:1552
	v_lshl_or_b32 v68, v141, 16, v140
	v_lshl_or_b32 v65, v9, 16, v18
	v_perm_b32 v9, v118, v117, 0xc0c0004
	v_perm_b32 v18, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[3:6], v[62:65], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v60, 16, v59
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v66, v131, v130, 0xc0c0004
	v_lshl_or_b32 v6, v18, 16, v9
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v111, v135, v134, 0xc0c0004
	v_lshl_or_b32 v4, v79, 16, v78
	v_lshl_or_b32 v3, v81, 16, v80
	v_perm_b32 v9, v133, v132, 0xc0c0004
	v_perm_b32 v18, v120, v90, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v59, v139, v138, 0xc0c0004
	v_perm_b32 v60, v137, v136, 0xc0c0004
	v_perm_b32 v62, v145, v144, 0xc0c0004
	v_perm_b32 v63, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v100, 0xc0c0004
	v_perm_b32 v8, v99, v8, 0xc0c0004
	v_lshl_or_b32 v66, v111, 16, v66
	v_wmma_i32_16x16x16_iu8 v[47:54], v[70:73], v[3:6], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v18, 16, v9
	v_lshl_or_b32 v5, v60, 16, v59
	v_lshl_or_b32 v4, v63, 16, v62
	v_lshl_or_b32 v3, v8, 16, v7
	v_wmma_i32_16x16x16_iu8 v[10:17], v[74:77], v[66:69], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[74:77], v[3:6], v[47:54] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v12
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v4, v14
	v_cvt_f32_i32_e32 v8, v15
	v_cvt_f32_i32_e32 v5, v16
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v16, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v18, v50
	v_cvt_f32_i32_e32 v11, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v17, v54
	v_cvt_f32_i32_e32 v10, v10
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s1, s1, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s1, s30, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v47, v45, s1, 1
	v_add_lshl_u32 v48, v46, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v49, v44, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v50, v43, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v53, v47, s[12:15], 0 offen
	buffer_load_u16 v54, v48, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v47, v42, s1, 1
	v_dual_cndmask_b32 v48, 0x80000000, v49 :: v_dual_cndmask_b32 v49, 0x80000000, v50
	v_add_lshl_u32 v50, v40, s1, 1
	v_add_lshl_u32 v51, v38, s1, 1
	v_add_lshl_u32 v52, v41, s1, 1
	v_add_lshl_u32 v59, v39, s1, 1
	v_add_lshl_u32 v60, v37, s1, 1
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v62, 0x80000000, v51 :: v_dual_cndmask_b32 v63, 0x80000000, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v64, 0x80000000, v59 :: v_dual_cndmask_b32 v65, 0x80000000, v60
	s_clause 0x7
	buffer_load_u16 v59, v48, s[28:31], 0 offen
	buffer_load_u16 v60, v49, s[28:31], 0 offen
	buffer_load_u16 v51, v47, s[28:31], 0 offen
	buffer_load_u16 v52, v50, s[28:31], 0 offen
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
	v_add_nc_u32_e32 v1, s26, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, s44, v56
	v_add_nc_u32_e32 v62, s44, v58
	v_add_nc_u32_e32 v63, s44, v57
	v_add_nc_u32_e32 v64, s44, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v65, v1 offset:416
	ds_load_u8 v66, v1 offset:384
	ds_load_u8 v67, v1 offset:480
	ds_load_u8 v68, v1 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[55:58], v56
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
	v_add_nc_u32_e32 v61, s26, v61
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
	ds_load_u8 v61, v61
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
	v_wmma_i32_16x16x16_iu8 v[64:71], v[55:58], v[85:88], v[64:71] neg_lo:[1,1,0]
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
	v_perm_b32 v61, v139, v61, 0xc0c0004
	v_lshl_or_b32 v88, v138, 16, v130
	v_lshl_or_b32 v84, v2, 16, v72
	v_perm_b32 v2, v137, v136, 0xc0c0004
	v_perm_b32 v72, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[55:58], v[81:84], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v85, v150, v149, 0xc0c0004
	v_lshl_or_b32 v58, v72, 16, v2
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v119, v154, v153, 0xc0c0004
	v_lshl_or_b32 v57, v98, 16, v97
	v_lshl_or_b32 v56, v100, 16, v99
	v_lshl_or_b32 v55, v102, 16, v101
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
	v_wmma_i32_16x16x16_iu8 v[73:80], v[89:92], v[55:58], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v61, 16, v2
	v_lshl_or_b32 v57, v81, 16, v72
	v_lshl_or_b32 v56, v83, 16, v82
	v_lshl_or_b32 v55, v62, 16, v1
	v_wmma_i32_16x16x16_iu8 v[64:71], v[93:96], v[85:88], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[93:96], v[55:58], v[73:80] neg_lo:[1,1,0]
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
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v50.h, v52.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v52.h, v50.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v45, s1, 1
	v_add_lshl_u32 v45, v46, s1, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v44, v44, s1, 1
	v_add_lshl_u32 v43, v43, s1, 1
	v_add_lshl_u32 v40, v40, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v42, v42, s1, 1
	v_add_lshl_u32 v38, v38, s1, 1
	v_add_lshl_u32 v41, v41, s1, 1
	v_add_lshl_u32 v39, v39, s1, 1
	v_add_lshl_u32 v37, v37, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v45, v45, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v42, v42, s[28:31], 0 offen
	buffer_load_u16 v41, v41, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v46.h, v54.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v47.h, v53.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v48.h, v60.l
	v_mov_b16_e32 v49.h, v59.l
	v_mov_b16_e32 v52.l, v46.l
	v_mov_b16_e32 v51.h, v51.l
	v_mov_b16_e32 v53.h, v49.l
	v_mov_b16_e32 v54.h, v48.l
	v_mov_b16_e32 v55.h, v47.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v47.l, v46.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v48.l, v46.l
	v_mov_b16_e32 v49.l, v46.l
	v_mov_b16_e32 v50.l, v46.l
	v_mov_b16_e32 v51.l, v46.l
	v_mov_b16_e32 v53.l, v46.l
	v_mov_b16_e32 v54.l, v46.l
	v_mov_b16_e32 v55.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v46, v52
	v_dual_mul_f32 v81, v46, v49 :: v_dual_and_b32 v20, 0x78, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v56, 0x5410 :: v_dual_mul_f32 v49, v49, v47
	v_mov_b16_e32 v58.h, v46.l
	v_mov_b16_e32 v59.h, v46.l
	v_mov_b16_e32 v60.h, v46.l
	v_mov_b16_e32 v61.h, v46.l
	v_mov_b16_e32 v77.h, v46.l
	v_mov_b16_e32 v78.h, v46.l
	v_mov_b16_e32 v79.h, v46.l
	v_mov_b16_e32 v80.h, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v82, v46, v48
	v_dual_mul_f32 v48, v48, v47 :: v_dual_mul_f32 v85, v46, v53
	v_mul_f32_e32 v83, v46, v51
	v_dual_mul_f32 v84, v46, v50 :: v_dual_mul_f32 v53, v53, v47
	v_mul_f32_e32 v50, v50, v47
	v_mul_f32_e32 v51, v51, v47
	v_mul_f32_e32 v52, v52, v47
	v_mul_f32_e32 v87, v46, v55
	v_mul_f32_e32 v46, v46, v54
	v_mul_f32_e32 v54, v54, v47
	v_mul_f32_e32 v47, v55, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v86, v14, v24
	v_fma_f32 v10, v49, v10, v21
	v_fma_f32 v11, v85, v11, v26
	v_fma_f32 v18, v84, v18, v28
	v_fma_f32 v5, v47, v5, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v24, v14, s2
	v_cndmask_b32_e64 v10, v21, v10, s2
	v_cndmask_b32_e64 v11, v26, v11, s2
	v_cndmask_b32_e64 v18, v28, v18, s2
	v_cndmask_b32_e64 v5, v25, v5, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v53, v4, v29
	v_fma_f32 v16, v82, v16, v32
	v_fma_f32 v12, v81, v12, v34
	v_fma_f32 v3, v51, v3, v33
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v19, s27, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v29, v4, s2
	v_cndmask_b32_e64 v16, v32, v16, s2
	v_cndmask_b32_e64 v12, v34, v12, s2
	v_cndmask_b32_e64 v3, v33, v3, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s0, s34, s27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v48, v6, v36
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s0, s0, s33
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v57, 0x7632 :: v_dual_and_b32 v0, 16, v0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v19, s0, v20, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v36, v6, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_lshl_b32 s1, s27, 4
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_mov_b32 s26, s14
	s_mov_b32 s16, 0x76543210
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v24, 16, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v87, v13, v23
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v25, 16, v42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v83, v15, v30
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v21, 16, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v50, v7, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v23, v13, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v44
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v30, v15, s2
	v_cndmask_b32_e64 v7, v35, v7, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v54, v9, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v30, v23, v2 :: v_dual_mul_f32 v23, v21, v23
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v35, v26, v2 :: v_dual_lshlrev_b32 v28, 16, v37
	v_mul_f32_e32 v26, v21, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v27, v9, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v27, 16, v38
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v46, v17, v22
	v_fma_f32 v26, v26, v72, v14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v33, v24, v2 :: v_dual_mul_f32 v24, v21, v24
	v_dual_mul_f32 v34, v27, v2 :: v_dual_mul_f32 v27, v21, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v26, s3
	v_cndmask_b32_e64 v17, v22, v17, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v22, 16, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v70, v12
	v_fma_f32 v8, v52, v8, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v77.l, v14.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v25, v2
	v_mul_f32_e32 v25, v21, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v30, v1, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshlrev_b32_e32 v20, 1, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v31, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v32, v62, v3
	v_fma_f32 v32, v34, v63, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v10, v1, s3
	v_cndmask_b32_e64 v10, v12, v23, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v22, v2
	v_mul_f32_e32 v22, v21, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v32, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v76, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v10.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v73, v15
	v_fma_f32 v22, v22, v74, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v23, v4, 16, 1
	v_cmp_o_f32_e64 s7, v4, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v30, s3
	v_cndmask_b32_e64 v15, v15, v25, s3
	v_cndmask_b32_e64 v12, v16, v22, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v4, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v18, v24, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v69, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v58.l, v12.h
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v29, v2
	v_dual_mul_f32 v2, v28, v2 :: v_dual_mul_f32 v29, v21, v29
	v_mul_f32_e32 v21, v21, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v31, v65, v6
	v_fma_f32 v31, v33, v66, v7
	v_fma_f32 v33, v35, v67, v8
	v_fma_f32 v2, v2, v68, v9
	v_fma_f32 v29, v29, v71, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v28, s3
	v_cndmask_b32_e64 v7, v7, v31, s3
	v_cndmask_b32_e64 v8, v8, v33, s3
	v_cndmask_b32_e64 v2, v9, v2, s3
	v_cndmask_b32_e64 v9, v13, v29, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v18, v6, 16, 1
	v_cmp_o_f32_e64 s0, v6, v6
	v_bfe_u32 v24, v8, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v36, v64, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v22, v7, 16, 1
	v_add3_u32 v6, v6, v18, 0x7fff
	v_and_b32_e32 v18, 1, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v75, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.l, v16.h
	v_mov_b16_e32 v61.l, v15.h
	v_cmp_o_f32_e64 s8, v8, v8
	v_add3_u32 v8, v8, v24, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v17, v21, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v17, v1, 16, 1
	v_bfe_u32 v21, v3, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v27, s3
	v_cndmask_b32_e64 v5, v5, v34, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v1, v1, v17, 0x7fff
	v_cmp_o_f32_e64 s4, v7, v7
	v_add3_u32 v3, v3, v21, 0x7fff
	v_add3_u32 v7, v7, v22, 0x7fff
	v_and_b32_e32 v21, 1, v60
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v17, 1, v58
	v_and_b32_e32 v22, 1, v61
	v_add_lshl_u32 v19, v19, s1, 1
	v_cmp_o_f32_e64 s1, v12, v12
	v_cmp_o_f32_e64 s2, v10, v10
	v_cmp_o_f32_e64 s5, v16, v16
	v_cmp_o_f32_e64 s6, v15, v15
	v_mov_b16_e32 v78.l, v11.h
	v_bfe_u32 v25, v5, 16, 1
	v_bfe_u32 v26, v2, 16, 1
	v_mov_b16_e32 v79.l, v13.h
	v_mov_b16_e32 v80.l, v9.h
	v_add3_u32 v6, v10, v18, 0x7fff
	v_add3_u32 v10, v12, v17, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s4
	v_add3_u32 v7, v15, v22, 0x7fff
	v_add3_u32 v12, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s11, v5, v5
	v_cmp_o_f32_e64 s12, v2, v2
	v_and_b32_e32 v24, 1, v78
	v_add3_u32 v5, v5, v25, 0x7fff
	v_add3_u32 v2, v2, v26, 0x7fff
	v_and_b32_e32 v25, 1, v79
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v12.h, s5
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s6
	v_and_b32_e32 v26, 1, v80
	v_and_b32_e32 v23, 1, v77
	v_cmp_o_f32_e64 s10, v11, v11
	v_cmp_o_f32_e64 s13, v13, v13
	v_cmp_o_f32_e64 s14, v9, v9
	v_add3_u32 v8, v11, v24, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s11
	v_add3_u32 v5, v9, v26, 0x7fff
	v_add3_u32 v9, v13, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s1
	v_cndmask_b32_e32 v10, 0x1054, v56, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v57, vcc_lo
	v_add3_u32 v11, v14, v23, 0x7fff
	v_cmp_o_f32_e64 s9, v14, v14
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s10
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s13
	v_lshl_or_b32 v9, v10, 8, v10
	v_lshl_or_b32 v10, v12, 8, v12
	v_cndmask_b32_e32 v7, v4, v1, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	v_cndmask_b16 v8.l, 0x7fff, v5.h, s14
	v_dual_cndmask_b32 v1, v1, v4 :: v_dual_cndmask_b32 v4, v2, v3
	v_and_b32_e32 v5, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	v_cndmask_b32_e32 v10, v11, v0, vcc_lo
	v_cndmask_b32_e32 v2, v3, v2, vcc_lo
	v_cndmask_b32_e32 v0, v0, v11, vcc_lo
	v_lshl_or_b32 v3, v5, 4, v5
	v_lshl_or_b32 v5, v9, 4, v9
	v_dual_cndmask_b32 v9, v8, v6 :: v_dual_cndmask_b32 v6, v6, v8
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x5040504, v3
	v_and_b32_e32 v11, 0x7060706, v5
	v_permlanex16_b32 v3, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v0, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v6, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v7, v8
	v_perm_b32 v1, v1, v7, v11
	v_perm_b32 v2, v3, v4, v8
	v_perm_b32 v3, v3, v4, v11
	v_perm_b32 v4, v5, v10, v8
	v_perm_b32 v5, v5, v10, v11
	v_perm_b32 v6, v12, v9, v8
	v_perm_b32 v7, v12, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v20, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v19, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 230
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14244
; TotalNumSgprs: 47
; NumVgprs: 230
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
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     230
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
