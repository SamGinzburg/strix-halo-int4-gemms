	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s42, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_mov_b32_e32 v235, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v240, 7, v235
	v_lshlrev_b32_e32 v0, 3, v240
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v236, 0xf0, v235
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v135, 14, v235
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v37, 48, v235
	v_lshlrev_b32_e32 v45, 5, v235
	v_and_b32_e32 v46, 8, v235
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v215, 2, v236
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 31
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
	v_and_b32_e32 v48, 32, v235
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
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v235
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s42, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s4, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s4, s10, s4
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s41, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s16, s42, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s4, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s41, v215
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s33, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s18, s16, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s18, 24
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s42, 63
.Ltmp19:
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s40, s35, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s43, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s16, s4
.Ltmp21:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s42, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s40, s41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s43, s19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v239, 15, v235
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s41, v0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s34, s42
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v224, v1, v0, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v237, 4, v239
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s41, v224
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[139:140], null, s40, v215, v[237:238]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[140:141], null, s35, 6, v[139:140]
	v_lshl_add_u32 v221, s35, 2, v139
	v_add_nc_u32_e32 v27, s7, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, s7, v221
	v_add_nc_u32_e32 v4, s7, v140
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s7, s7, s35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s40, v27
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s7, v221
	v_add_nc_u32_e32 v11, s7, v140
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v19, 0x80000000, v27, vcc_lo
	v_cndmask_b32_e32 v7, 0x80000000, v4, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v15, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[11:14], v1, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v2, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v20, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[35:36], v1, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v19, s[24:27], 0 offen
	buffer_load_b128 v[23:26], v2, s[24:27], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s35, v27
	v_lshlrev_b32_e32 v47, 6, v239
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, s40, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b128 v[27:30], v1, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v2, s[24:27], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v235, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 3, v235
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v2, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, v1, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v38, v135, 10, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v243, 0, v37
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v239
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v40, 0x1b0, v38
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_xor_b32_e32 v37, 0x90, v38
	v_xor_b32_e32 v39, 0x120, v38
	v_xor_b32_e32 v41, 0x210, v38
	v_add_nc_u32_e32 v228, 0, v40
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[7:10], v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v225, 0, v38
	v_xor_b32_e32 v42, 0x330, v38
	v_xor_b32_e32 v38, 0x3a0, v38
	v_add_nc_u32_e32 v226, 0, v37
	v_add_nc_u32_e32 v227, 0, v39
	v_add_nc_u32_e32 v229, 0, v41
	v_add_nc_u32_e32 v230, 0, v42
	v_add_nc_u32_e32 v231, 0, v38
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v37, 0x4000, v225
	v_add_nc_u32_e32 v38, 0x4000, v226
	v_add_nc_u32_e32 v39, 0x4000, v227
	v_add_nc_u32_e32 v40, 0x4000, v228
	v_add_nc_u32_e32 v41, 0x4000, v229
	v_add_nc_u32_e32 v42, 0x4000, v230
	v_add_nc_u32_e32 v43, 0x4000, v231
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(6)
	ds_store_b64 v243, v[35:36] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v7, v3, 0x4000501
	v_perm_b32 v3, v7, v3, 0x6020703
	v_perm_b32 v7, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v10, v15, v11, 0x4000501
	v_perm_b32 v11, v15, v11, 0x6020703
	v_perm_b32 v15, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v18, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	v_perm_b32 v26, v44, v18, 0x7060302
	v_perm_b32 v18, v44, v18, 0x5040100
	v_perm_b32 v35, v3, v19, 0x7060302
	v_perm_b32 v3, v3, v19, 0x5040100
	v_perm_b32 v19, v7, v23, 0x7060302
	v_perm_b32 v7, v7, v23, 0x5040100
	v_perm_b32 v23, v4, v20, 0x7060302
	v_perm_b32 v4, v4, v20, 0x5040100
	v_perm_b32 v20, v8, v24, 0x7060302
	v_perm_b32 v8, v8, v24, 0x5040100
	v_perm_b32 v24, v5, v21, 0x7060302
	v_perm_b32 v5, v5, v21, 0x5040100
	v_perm_b32 v21, v9, v25, 0x7060302
	v_perm_b32 v9, v9, v25, 0x5040100
	v_perm_b32 v25, v6, v22, 0x7060302
	v_perm_b32 v6, v6, v22, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v22, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v225, v26, v18 offset1:16
	ds_store_2addr_b32 v226, v35, v3 offset1:16
	ds_store_2addr_b32 v227, v19, v7 offset1:16
	ds_store_2addr_b32 v228, v23, v4 offset1:16
	ds_store_2addr_b32 v229, v20, v8 offset1:16
	ds_store_2addr_b32 v225, v24, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v230, v21, v9 offset1:16
	ds_store_2addr_b32 v231, v25, v6 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v3, v10, v22, 0x7060302
	v_perm_b32 v4, v10, v22, 0x5040100
	v_perm_b32 v5, v11, v27, 0x7060302
	v_perm_b32 v6, v11, v27, 0x5040100
	v_perm_b32 v7, v15, v31, 0x7060302
	v_perm_b32 v8, v15, v31, 0x5040100
	v_perm_b32 v9, v12, v28, 0x7060302
	v_perm_b32 v10, v12, v28, 0x5040100
	v_perm_b32 v11, v16, v32, 0x7060302
	v_perm_b32 v12, v16, v32, 0x5040100
	v_perm_b32 v15, v13, v29, 0x7060302
	v_perm_b32 v13, v13, v29, 0x5040100
	v_perm_b32 v16, v17, v33, 0x7060302
	v_perm_b32 v17, v17, v33, 0x5040100
	v_perm_b32 v18, v14, v30, 0x7060302
	v_perm_b32 v14, v14, v30, 0x5040100
	ds_store_2addr_b32 v37, v3, v4 offset1:16
	ds_store_2addr_b32 v38, v5, v6 offset1:16
	ds_store_2addr_b32 v39, v7, v8 offset1:16
	ds_store_2addr_b32 v40, v9, v10 offset1:16
	ds_store_2addr_b32 v41, v11, v12 offset1:16
	ds_store_2addr_b32 v37, v15, v13 offset0:160 offset1:176
	ds_store_2addr_b32 v42, v16, v17 offset1:16
	ds_store_2addr_b32 v43, v18, v14 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v3, 5, v235
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 6, v239
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 8, v235
	v_and_b32_e32 v6, 32, v235
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 0x1800, v3
	v_lshl_or_b32 v9, v240, 6, v7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow469
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v7, s34, v239
	v_or_b32_e32 v2, s34, v2
	s_ashr_i32 s1, s6, 8
	v_and_b32_e32 v8, 1, v235
	v_mov_b32_e32 v148, 0
	v_mul_lo_u32 v216, v7, s1
	v_mul_lo_u32 v212, v2, s1
	v_or_b32_e32 v138, s43, v235
	v_lshlrev_b32_e32 v136, 2, v236
	v_lshlrev_b32_e32 v137, 5, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v235, 3, 1
	s_mov_b32 s16, 0
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v1, 48, v1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v3, 0x1800, v45
	v_and_b32_e32 v2, 0x210, v2
	v_bfe_i32 v4, v235, 5, 1
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v235, off
	scratch_store_b32 off, v45, off offset:8
	scratch_store_b32 off, v240, off offset:16
	scratch_store_b32 off, v236, off offset:4
	scratch_store_b32 off, v47, off offset:36
	scratch_store_b32 off, v135, off offset:24
	v_lshl_or_b32 v5, v240, 6, v3
	v_xor_b32_e32 v2, v2, v1
	v_and_b32_e32 v3, 0x420, v4
	v_or_b32_e32 v1, v47, v1
	v_lshlrev_b32_e32 v9, 1, v135
	scratch_store_b32 off, v5, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v2, v2, v5
	v_add3_u32 v10, 0, v136, v137
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v5, 48, v1
	v_lshlrev_b32_e32 v11, 1, v236
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v3, 16, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v48, off offset:40
	scratch_store_b32 off, v46, off offset:20
	scratch_store_b32 off, v239, off offset:12
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v232, s40, v139
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v233, 0, v1
	v_xor_b32_e32 v6, 16, v2
	v_xor_b32_e32 v7, 32, v2
	v_xor_b32_e32 v8, 48, v2
	v_add_nc_u32_e32 v234, 0, v3
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v235, 0, v4
	v_add_nc_u32_e32 v236, 0, v5
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v237, 0, v2
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v238, 0, v6
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v239, 0, v7
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v240, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v241, v10, v9
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v242, 0, v11
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v149, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s44, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_add_i32 s44, s44, -2
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v136, off offset:28
	scratch_store_b32 off, v137, off offset:32
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s17, s16, 1
	s_mov_b32 s0, s41
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s18, s17, s3
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s41, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_lshl_b32 s41, s18, 6
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s19, 24
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s41, v0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s0, s18
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s41, v224
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s41, s40
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s42, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s18, s19, s43
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s20, s0, s40
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s19, s18, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v10, v138, s20, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v11, v216, s0, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s18, v221
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[141:142], v9, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s18, v139
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v244, v9, s[36:39], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s41, v215
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s18, v232
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v15, v212, s0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v233 offset:32768
	ds_load_b128 v[77:80], v233 offset:33792
	ds_load_b128 v[29:32], v234 offset:32768
	ds_load_b128 v[81:84], v234 offset:33792
	ds_load_b128 v[117:120], v235 offset:32768
	ds_load_b128 v[113:116], v235 offset:33792
	ds_load_b128 v[109:112], v236 offset:32768
	ds_load_b128 v[105:108], v236 offset:33792
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s18, v140
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s42, v9
	v_add_nc_u32_e32 v9, s35, v138
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v16, s19, v139
	v_add_nc_u32_e32 v17, s19, v232
	v_add_nc_u32_e32 v18, s19, v221
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v10, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v20, v9, s20, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v101, 0x80000000, v11, s0
	v_cndmask_b32_e64 v214, 0x80000000, v12, s0
	ds_load_b128 v[9:12], v237
	ds_load_b128 v[33:36], v237 offset:8192
	ds_load_b128 v[37:40], v238
	ds_load_b128 v[49:52], v238 offset:8192
	ds_load_b128 v[89:92], v239
	ds_load_b128 v[247:250], v239 offset:8192
	ds_load_b128 v[133:136], v240
	ds_load_b128 v[121:124], v240 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[85:88], v237 offset:16384
	ds_load_b128 v[93:96], v237 offset:24576
	ds_load_b128 v[97:100], v238 offset:16384
	ds_load_b128 v[251:254], v238 offset:24576
	ds_load_b128 v[143:146], v239 offset:16384
	ds_load_b128 v[217:220], v239 offset:24576
	ds_load_b128 v[125:128], v240 offset:16384
	ds_load_b128 v[129:132], v240 offset:24576
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v19, s19, v140
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v213, 0x80000000, v14, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v223, 0x80000000, v16, s0
	v_cndmask_b32_e64 v147, 0x80000000, v17, s0
	v_cndmask_b32_e64 v255, 0x80000000, v18, s0
	v_cndmask_b32_e64 v222, 0x80000000, v19, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v137, 0x80000000, v20, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[73:76], v21, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v245, v13, s[4:7], 0 offen
	buffer_load_u16 v246, v15, s[4:7], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[9:12], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[37:40], v[29:32], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[81:84], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[85:88], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[29:32], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[81:84], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[77:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[101:104], v101, s[24:27], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[97:100], v[29:32], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[251:254], v[29:32], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[97:100], v[81:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[77:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[93:96], v214, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v213, s[24:27], 0 offen
	buffer_load_b128 v[85:88], v223, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[117:120], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[113:116], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[251:254], v[81:84], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[247:250], v[117:120], v[41:48] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[217:220], v[117:120], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[143:146], v[113:116], v[33:40] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[247:250], v[113:116], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[65:72], v[143:146], v[117:120], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[217:220], v[113:116], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[133:136], v[109:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[109:112], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[133:136], v[105:108], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[129:132], v[109:112], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[125:128], v[105:108], v[33:40] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[89:92], v147, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[105:108], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[65:72], v[125:128], v[109:112], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[105:108], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v113, v64
	v_cvt_f32_i32_e32 v114, v63
	v_cvt_f32_i32_e32 v115, v62
	v_cvt_f32_i32_e32 v116, v61
	v_cvt_f32_i32_e32 v117, v45
	v_cvt_f32_i32_e32 v118, v44
	v_cvt_f32_i32_e32 v119, v43
	v_cvt_f32_i32_e32 v120, v42
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v42, v53
	v_cvt_f32_i32_e32 v43, v52
	v_cvt_f32_i32_e32 v44, v51
	v_cvt_f32_i32_e32 v45, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v19
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v19, v34
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[77:80], v255, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v41
	v_cvt_f32_i32_e32 v109, v46
	v_cvt_f32_i32_e32 v110, v47
	v_cvt_f32_i32_e32 v111, v48
	v_cvt_f32_i32_e32 v108, v9
	v_cvt_f32_i32_e32 v105, v14
	v_cvt_f32_i32_e32 v106, v15
	v_cvt_f32_i32_e32 v107, v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v41, v54
	v_cvt_f32_i32_e32 v46, v55
	v_cvt_f32_i32_e32 v47, v56
	v_cvt_f32_i32_e32 v16, v25
	v_cvt_f32_i32_e32 v9, v30
	v_cvt_f32_i32_e32 v14, v31
	v_cvt_f32_i32_e32 v15, v32
	v_cvt_f32_i32_e32 v25, v68
	v_cvt_f32_i32_e32 v30, v67
	v_cvt_f32_i32_e32 v31, v66
	v_cvt_f32_i32_e32 v32, v65
	v_cvt_f32_i32_e32 v49, v72
	v_cvt_f32_i32_e32 v54, v71
	v_cvt_f32_i32_e32 v55, v70
	v_cvt_f32_i32_e32 v56, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v121, v20
	v_cvt_f32_i32_e32 v123, v18
	v_cvt_f32_i32_e32 v124, v17
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v17, v36
	v_cvt_f32_i32_e32 v18, v35
	v_cvt_f32_i32_e32 v20, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v24
	v_cvt_f32_i32_e32 v126, v23
	v_cvt_f32_i32_e32 v127, v22
	v_cvt_f32_i32_e32 v128, v21
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v21, v40
	v_cvt_f32_i32_e32 v22, v39
	v_cvt_f32_i32_e32 v23, v38
	v_cvt_f32_i32_e32 v24, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v39, v13
	v_cvt_f32_i32_e32 v40, v12
	v_cvt_f32_i32_e32 v130, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v29
	v_cvt_f32_i32_e32 v12, v27
	v_cvt_f32_i32_e32 v13, v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v129, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s16, s44
	s_mov_b32 s16, s17
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v34, 16, v245
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v81, 16, v244
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v28, 16, v246
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v241, v81 offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[81:84], v222, s[24:27], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(6)
	v_perm_b32 v50, v103, v75, 0x4000501
	v_perm_b32 v52, v103, v75, 0x6020703
	v_perm_b32 v61, v104, v76, 0x4000501
	v_perm_b32 v63, v104, v76, 0x6020703
	v_perm_b32 v26, v101, v73, 0x4000501
	s_waitcnt vmcnt(4)
	v_perm_b32 v51, v99, v95, 0x4000501
	v_perm_b32 v53, v99, v95, 0x6020703
	v_perm_b32 v62, v100, v96, 0x4000501
	v_perm_b32 v64, v100, v96, 0x6020703
	v_perm_b32 v27, v97, v93, 0x4000501
	v_perm_b32 v29, v101, v73, 0x6020703
	v_perm_b32 v33, v97, v93, 0x6020703
	v_perm_b32 v35, v102, v74, 0x4000501
	v_perm_b32 v36, v98, v94, 0x4000501
	v_perm_b32 v37, v102, v74, 0x6020703
	v_perm_b32 v38, v98, v94, 0x6020703
	v_perm_b32 v97, v51, v50, 0x7060302
	v_perm_b32 v98, v51, v50, 0x5040100
	v_perm_b32 v99, v53, v52, 0x7060302
	v_perm_b32 v100, v53, v52, 0x5040100
	v_perm_b32 v101, v62, v61, 0x7060302
	v_perm_b32 v102, v62, v61, 0x5040100
	v_perm_b32 v103, v64, v63, 0x7060302
	v_perm_b32 v104, v64, v63, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[50:53], v242 offset:34816
	ds_load_b128 v[61:64], v242 offset:34832
	ds_load_b128 v[65:68], v242 offset:35328
	ds_load_b128 v[69:72], v242 offset:35344
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v73, v89, v85, 0x4000501
	v_perm_b32 v75, v89, v85, 0x6020703
	v_perm_b32 v85, v90, v86, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v93, v36, v35, 0x7060302
	v_perm_b32 v94, v36, v35, 0x5040100
	v_perm_b32 v95, v38, v37, 0x7060302
	v_perm_b32 v96, v38, v37, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v132, v63, v34
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v244, v137, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v133, v62, v34
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v135, v69, v34
	v_mul_f32_e32 v134, v61, v34
	v_mul_f32_e32 v136, v68, v34
	v_dual_mul_f32 v137, v67, v34 :: v_dual_mul_f32 v62, v62, v28
	v_dual_mul_f32 v143, v66, v34 :: v_dual_mul_f32 v68, v68, v28
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v186, v62, v127 :: v_dual_fmac_f32 v195, v143, v120
	v_fmac_f32_e32 v149, v68, v40
	v_dual_fmac_f32 v199, v134, v116 :: v_dual_fmac_f32 v194, v137, v119
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v74, v81, v77, 0x4000501
	v_perm_b32 v76, v81, v77, 0x6020703
	v_perm_b32 v77, v90, v86, 0x4000501
	v_perm_b32 v81, v82, v78, 0x4000501
	v_perm_b32 v78, v82, v78, 0x6020703
	v_perm_b32 v82, v91, v87, 0x4000501
	v_perm_b32 v86, v83, v79, 0x4000501
	v_perm_b32 v79, v83, v79, 0x6020703
	v_perm_b32 v83, v92, v88, 0x4000501
	v_perm_b32 v89, v84, v80, 0x4000501
	v_perm_b32 v87, v91, v87, 0x6020703
	v_perm_b32 v88, v92, v88, 0x6020703
	v_perm_b32 v80, v84, v80, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v91, v33, v29, 0x7060302
	v_perm_b32 v92, v33, v29, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v35, v86, v82, 0x7060302
	v_perm_b32 v36, v86, v82, 0x5040100
	v_perm_b32 v29, v89, v83, 0x7060302
	v_perm_b32 v33, v89, v83, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v52, v34
	v_mul_f32_e32 v89, v64, v34
	v_mul_f32_e32 v52, v52, v28
	v_mul_f32_e32 v64, v64, v28
	v_dual_mul_f32 v63, v63, v28 :: v_dual_fmac_f32 v198, v133, v115
	v_dual_mul_f32 v69, v69, v28 :: v_dual_fmac_f32 v192, v135, v117
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v84, v27, v26, 0x7060302
	v_perm_b32 v90, v27, v26, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v131, v74, v73, 0x7060302
	v_perm_b32 v73, v74, v73, 0x5040100
	v_perm_b32 v74, v76, v75, 0x7060302
	v_perm_b32 v75, v76, v75, 0x5040100
	v_perm_b32 v76, v81, v77, 0x7060302
	v_perm_b32 v77, v81, v77, 0x5040100
	v_perm_b32 v81, v78, v85, 0x7060302
	v_perm_b32 v78, v78, v85, 0x5040100
	v_perm_b32 v37, v79, v87, 0x7060302
	v_perm_b32 v38, v79, v87, 0x5040100
	v_perm_b32 v26, v80, v88, 0x7060302
	v_perm_b32 v27, v80, v88, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v65, v34
	v_dual_mul_f32 v82, v71, v34 :: v_dual_mul_f32 v65, v65, v28
	v_mul_f32_e32 v85, v53, v34
	v_mul_f32_e32 v87, v51, v34
	v_dual_mul_f32 v88, v50, v34 :: v_dual_mul_f32 v53, v53, v28
	v_dual_mul_f32 v51, v51, v28 :: v_dual_fmac_f32 v200, v86, v59
	v_mul_f32_e32 v50, v50, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v61, v61, v28 :: v_dual_fmac_f32 v202, v87, v58
	v_dual_mul_f32 v67, v67, v28 :: v_dual_fmac_f32 v196, v89, v113
	v_dual_mul_f32 v66, v66, v28 :: v_dual_fmac_f32 v203, v88, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v185, v63, v126 :: v_dual_fmac_f32 v148, v69, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v80, v70, v34 :: v_dual_lshlrev_b32 v39, 16, v244
	v_dual_mul_f32 v83, v72, v34 :: v_dual_mul_f32 v70, v70, v28
	v_mul_f32_e32 v72, v72, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v201, v85, v60 :: v_dual_fmac_f32 v210, v80, v109
	v_dual_fmac_f32 v211, v79, v112 :: v_dual_fmac_f32 v188, v52, v122
	v_dual_fmac_f32 v193, v136, v118 :: v_dual_fmac_f32 v190, v51, v123
	v_dual_fmac_f32 v209, v82, v110 :: v_dual_fmac_f32 v184, v64, v125
	v_dual_fmac_f32 v191, v50, v124 :: v_dual_fmac_f32 v150, v67, v129
	v_dual_fmac_f32 v189, v53, v121 :: v_dual_fmac_f32 v204, v72, v107
	v_dual_fmac_f32 v187, v61, v128 :: v_dual_fmac_f32 v206, v70, v105
	v_fmac_f32_e32 v207, v65, v108
	v_fmac_f32_e32 v151, v66, v130
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v241, v39 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v242 offset:35328
	ds_load_b128 v[57:60], v242 offset:35344
	ds_load_b128 v[61:64], v242 offset:34816
	ds_load_b128 v[65:68], v242 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v71, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v197, v132, v114 :: v_dual_fmac_f32 v208, v83, v111
	v_add_nc_u32_e32 v83, 0x4000, v225
	v_add_nc_u32_e32 v39, 0x4000, v226
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v205, v71, v106
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v243, v[141:142] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v225, v84, v90 offset1:16
	ds_store_2addr_b32 v226, v91, v92 offset1:16
	ds_store_2addr_b32 v227, v93, v94 offset1:16
	ds_store_2addr_b32 v228, v95, v96 offset1:16
	ds_store_2addr_b32 v229, v97, v98 offset1:16
	ds_store_2addr_b32 v225, v99, v100 offset0:160 offset1:176
	ds_store_2addr_b32 v230, v101, v102 offset1:16
	ds_store_2addr_b32 v231, v103, v104 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(12)
	v_mul_f32_e32 v80, v53, v34
	s_waitcnt lgkmcnt(11)
	v_mul_f32_e32 v40, v58, v34
	v_mul_f32_e32 v58, v58, v28
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v83, v131, v73 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(11)
	v_mul_f32_e32 v71, v64, v34
	v_mul_f32_e32 v64, v64, v28
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v39, v74, v75 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v74, v61, v34 :: v_dual_add_nc_u32 v39, 0x4000, v227
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v174, v58, v9
	v_add_nc_u32_e32 v9, 0x4000, v229
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v59, v34
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v39, v76, v77 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(12)
	v_dual_mul_f32 v76, v67, v34 :: v_dual_add_nc_u32 v39, 0x4000, v228
	v_dual_mul_f32 v70, v60, v34 :: v_dual_mul_f32 v59, v59, v28
	v_mul_f32_e32 v60, v60, v28
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v39, v81, v78 offset1:16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v171, v76, v54
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v50, v34
	v_mul_f32_e32 v50, v50, v28
	v_mul_f32_e32 v72, v63, v34
	v_mul_f32_e32 v73, v62, v34
	v_mul_f32_e32 v75, v68, v34
	v_mul_f32_e32 v78, v65, v34
	v_mul_f32_e32 v79, v57, v34
	v_dual_mul_f32 v81, v52, v34 :: v_dual_fmac_f32 v178, v70, v47
	v_mul_f32_e32 v63, v63, v28
	v_mul_f32_e32 v62, v62, v28
	v_mul_f32_e32 v61, v61, v28
	v_dual_mul_f32 v68, v68, v28 :: v_dual_mul_f32 v77, v66, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v156, v39, v48
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v51, v34
	v_dual_mul_f32 v67, v67, v28 :: v_dual_fmac_f32 v166, v80, v43
	v_mul_f32_e32 v66, v66, v28
	v_dual_mul_f32 v65, v65, v28 :: v_dual_fmac_f32 v182, v40, v41
	v_dual_mul_f32 v57, v57, v28 :: v_dual_fmac_f32 v162, v64, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v53, v53, v28 :: v_dual_fmac_f32 v158, v67, v22
	v_mul_f32_e32 v52, v52, v28
	v_mul_f32_e32 v28, v51, v28
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v9, v35, v36 offset1:16
	ds_store_2addr_b32 v83, v37, v38 offset0:160 offset1:176
	v_add_nc_u32_e32 v9, 0x4000, v230
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v183, v74, v32 :: v_dual_fmac_f32 v180, v69, v46
	v_dual_fmac_f32 v181, v73, v31 :: v_dual_fmac_f32 v176, v50, v16
	v_dual_fmac_f32 v177, v72, v30 :: v_dual_fmac_f32 v164, v61, v20
	v_dual_fmac_f32 v179, v71, v25 :: v_dual_fmac_f32 v160, v65, v24
	v_dual_fmac_f32 v175, v78, v56 :: v_dual_fmac_f32 v152, v57, v10
	v_dual_fmac_f32 v173, v77, v55 :: v_dual_fmac_f32 v154, v52, v12
	v_dual_fmac_f32 v169, v75, v49 :: v_dual_fmac_f32 v170, v60, v15
	v_dual_fmac_f32 v168, v34, v45 :: v_dual_fmac_f32 v167, v81, v44
	v_fmac_f32_e32 v172, v59, v14
	v_fmac_f32_e32 v165, v79, v42
	v_fmac_f32_e32 v163, v62, v19
	v_fmac_f32_e32 v161, v63, v18
	v_fmac_f32_e32 v159, v66, v23
	v_fmac_f32_e32 v157, v68, v21
	v_fmac_f32_e32 v155, v28, v13
	v_fmac_f32_e32 v153, v53, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v9, v29, v33 offset1:16
	v_add_nc_u32_e32 v9, 0x4000, v231
	ds_store_2addr_b32 v9, v26, v27 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v238, off, off offset:8
	scratch_load_b32 v240, off, off offset:16
	scratch_load_b32 v241, off, off offset:20
	scratch_load_b32 v135, off, off offset:24
	scratch_load_b32 v136, off, off offset:28
	scratch_load_b32 v137, off, off offset:32
	scratch_load_b32 v4, off, off offset:36
	scratch_load_b32 v6, off, off offset:40
	scratch_load_b32 v9, off, off offset:44
	scratch_load_b32 v235, off, off
	scratch_load_b32 v236, off, off offset:4
	scratch_load_b32 v239, off, off offset:12
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v237, 4, v239
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v238, v3
	v_mov_b32_e32 v241, v5
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v33, 6, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v241
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v0, 3, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v3, v4, v0
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v1, v0
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v1, 0, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v2, v3, 16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v0, v0, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v5, v3, 32, 0
	v_xad_u32 v6, v3, 48, 0
	ds_load_b128 v[29:32], v1 offset:32768
	ds_load_b128 v[21:24], v1 offset:33792
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v55, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v0, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v2 offset:32768
	ds_load_b128 v[17:20], v2 offset:33792
	ds_load_b128 v[9:12], v5 offset:32768
	ds_load_b128 v[1:4], v5 offset:33792
	ds_load_b128 v[13:16], v6 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v6 offset:33792
	v_mov_b32_e32 v74, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_xor_b32_e32 v34, 48, v0
	v_xor_b32_e32 v35, 32, v0
	v_xor_b32_e32 v36, 16, v0
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v101, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v98, 0, v34
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v100, 0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v99, 0, v36
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v36, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_mov_b32 s4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[43:46], v101
	ds_load_b128 v[47:50], v101 offset:8192
	ds_load_b128 v[51:54], v100 offset:8192
	ds_load_b128 v[55:58], v100
	ds_load_b128 v[59:62], v99 offset:8192
	ds_load_b128 v[72:75], v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v41, s11 :: v_dual_mov_b32 v40, s10
	v_dual_mov_b32 v39, s9 :: v_dual_mov_b32 v38, s8
	v_dual_mov_b32 v37, s7 :: v_dual_mov_b32 v36, s6
	v_dual_mov_b32 v35, s5 :: v_dual_mov_b32 v34, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v98
	ds_load_b128 v[102:105], v98 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[43:46], v[29:32], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[47:50], v[29:32], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[43:46], v[21:24], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[47:50], v[21:24], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[72:75], v[25:28], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[59:62], v[25:28], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[72:75], v[17:20], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[59:62], v[17:20], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[55:58], v[9:12], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[51:54], v[9:12], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[55:58], v[1:4], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[51:54], v[1:4], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[13:16], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[102:105], v[13:16], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[92:95], v[5:8], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[102:105], v[5:8], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v68
	v_cvt_f32_i32_e32 v52, v69
	v_cvt_f32_i32_e32 v57, v70
	v_cvt_f32_i32_e32 v62, v71
	v_cvt_f32_i32_e32 v58, v76
	v_cvt_f32_i32_e32 v63, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v76, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v69, v81
	v_cvt_f32_i32_e32 v72, v82
	v_cvt_f32_i32_e32 v74, v83
	v_cvt_f32_i32_e32 v77, v84
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v43, v88
	v_cvt_f32_i32_e32 v46, v89
	v_cvt_f32_i32_e32 v50, v90
	v_cvt_f32_i32_e32 v55, v91
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v90, v39
	v_cvt_f32_i32_e32 v92, v40
	v_cvt_f32_i32_e32 v93, v41
	v_cvt_f32_i32_e32 v94, v64
	v_cvt_f32_i32_e32 v95, v65
	v_cvt_f32_i32_e32 v96, v66
	v_cvt_f32_i32_e32 v97, v67
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[38:41], v101 offset:16384
	ds_load_b128 v[64:67], v101 offset:24576
	ds_load_b128 v[131:134], v100 offset:24576
	ds_load_b128 v[139:142], v100 offset:16384
	ds_load_b128 v[143:146], v99 offset:24576
	ds_load_b128 v[217:220], v99 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v106, s11 :: v_dual_mov_b32 v105, s10
	v_dual_mov_b32 v104, s9 :: v_dual_mov_b32 v103, s8
	v_dual_mov_b32 v102, s7 :: v_dual_mov_b32 v101, s6
	v_dual_mov_b32 v100, s5 :: v_dual_mov_b32 v99, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[221:224], v98 offset:16384
	ds_load_b128 v[225:228], v98 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[38:41], v[29:32], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[64:67], v[29:32], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[38:41], v[21:24], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[64:67], v[21:24], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[217:220], v[25:28], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[143:146], v[25:28], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[217:220], v[17:20], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[143:146], v[17:20], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[139:142], v[9:12], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[131:134], v[9:12], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[139:142], v[1:4], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[131:134], v[1:4], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[221:224], v[13:16], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[225:228], v[13:16], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[221:224], v[5:8], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[225:228], v[5:8], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v51, v107
	v_cvt_f32_i32_e32 v56, v108
	v_cvt_f32_i32_e32 v64, v109
	v_cvt_f32_i32_e32 v66, v110
	v_cvt_f32_i32_e32 v45, v111
	v_cvt_f32_i32_e32 v49, v112
	v_cvt_f32_i32_e32 v54, v113
	v_cvt_f32_i32_e32 v60, v114
	v_cvt_f32_i32_e32 v42, v115
	v_cvt_f32_i32_e32 v61, v116
	v_cvt_f32_i32_e32 v67, v117
	v_cvt_f32_i32_e32 v73, v118
	v_cvt_f32_i32_e32 v78, v119
	v_cvt_f32_i32_e32 v65, v120
	v_cvt_f32_i32_e32 v68, v121
	v_cvt_f32_i32_e32 v71, v122
	v_cvt_f32_i32_e32 v75, v123
	v_cvt_f32_i32_e32 v79, v124
	v_cvt_f32_i32_e32 v83, v125
	v_cvt_f32_i32_e32 v84, v126
	v_cvt_f32_i32_e32 v44, v127
	v_cvt_f32_i32_e32 v48, v128
	v_cvt_f32_i32_e32 v53, v129
	v_cvt_f32_i32_e32 v59, v130
	v_cvt_f32_i32_e32 v82, v99
	v_cvt_f32_i32_e32 v41, v100
	v_cvt_f32_i32_e32 v40, v101
	v_cvt_f32_i32_e32 v39, v102
	v_cvt_f32_i32_e32 v38, v103
	v_cvt_f32_i32_e32 v88, v104
	v_cvt_f32_i32_e32 v89, v105
	v_cvt_f32_i32_e32 v91, v106
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s41, 31
	s_mov_b32 s39, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s0, s41, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_mov_b32 s36, s12
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_lshl_add_u32 v19, v236, 1, 0
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	s_waitcnt lgkmcnt(2)
	v_mad_u64_u32 v[1:2], null, s0, s40, v[138:139]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v216, s0, 1
	v_add_lshl_u32 v2, v212, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_lshlrev_b32 v3, 1, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
.Ltmp24:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v33, 10, v33
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v0, v0, s[36:39], 0 offen
	buffer_load_u16 v17, v2, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v3, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v136, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_add_u32 v20, v135, 1, v3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v21, v1, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v19 offset:35328
	ds_load_b128 v[1:4], v19 offset:35344
	ds_load_b128 v[13:16], v19 offset:34816
	ds_load_b128 v[9:12], v19 offset:34832
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v17, 16, v17
	v_lshlrev_b32_e32 v18, 16, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp27:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v5, v18
	v_mul_f32_e32 v5, v5, v17
	v_mul_f32_e32 v23, v2, v18
	v_dual_mul_f32 v25, v4, v18 :: v_dual_mul_f32 v2, v2, v17
	v_mul_f32_e32 v24, v3, v18
	v_dual_mul_f32 v3, v3, v17 :: v_dual_mul_f32 v0, v13, v18
	v_mul_f32_e32 v4, v4, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v90, v206
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v14, v18
	v_dual_mul_f32 v27, v16, v18 :: v_dual_mul_f32 v14, v14, v17
	v_mul_f32_e32 v28, v15, v18
	v_dual_mul_f32 v29, v9, v18 :: v_dual_mul_f32 v16, v16, v17
	v_mul_f32_e32 v30, v10, v18
	v_dual_mul_f32 v31, v11, v18 :: v_dual_mul_f32 v10, v10, v17
	v_mul_f32_e32 v32, v12, v18
	v_dual_mul_f32 v99, v7, v18 :: v_dual_mul_f32 v12, v12, v17
	v_mul_f32_e32 v101, v1, v18
	v_mul_f32_e32 v13, v13, v17
	v_mul_f32_e32 v15, v15, v17
	v_mul_f32_e32 v9, v9, v17
	v_mul_f32_e32 v11, v11, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v58, v211
	v_fma_f32 v5, v5, v85, v207
	v_fma_f32 v3, v3, v92, v205
	v_fma_f32 v4, v4, v93, v204
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v206, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v72, v209
	v_fma_f32 v72, v32, v62, v196
	v_fma_f32 v31, v31, v57, v197
	v_fma_f32 v15, v15, v86, v188
	v_fma_f32 v85, v16, v87, v189
	v_fma_f32 v14, v14, v81, v190
	v_fma_f32 v13, v13, v77, v191
	v_fma_f32 v77, v12, v55, v184
	v_fma_f32 v81, v11, v50, v185
	v_fma_f32 v86, v10, v46, v186
	v_fma_f32 v87, v9, v43, v187
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v207, v5, s2
	v_cndmask_b32_e64 v57, v205, v3, s2
	v_cndmask_b32_e64 v55, v204, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v74, v208
	v_fma_f32 v28, v28, v96, v200
	v_fma_f32 v27, v27, v97, v201
	v_fma_f32 v26, v26, v95, v202
	v_fma_f32 v0, v0, v94, v203
	v_fma_f32 v70, v99, v70, v194
	v_fma_f32 v30, v30, v52, v198
	v_fma_f32 v23, v23, v69, v210
	v_fma_f32 v29, v29, v47, v199
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v203, v0, s2
	v_cndmask_b32_e64 v43, v200, v28, s2
	v_cndmask_b32_e64 v32, v198, v30, s2
	v_cndmask_b32_e64 v30, v196, v72, s2
	v_cndmask_b32_e64 v28, v194, v70, s2
	v_cndmask_b32_e64 v69, v211, v22, s2
	v_cndmask_b32_e64 v22, v210, v23, s2
	v_cndmask_b32_e64 v16, v209, v24, s2
	v_cndmask_b32_e64 v46, v199, v29, s2
	v_cndmask_b32_e64 v23, v185, v81, s2
	v_cndmask_b32_e64 v24, v184, v77, s2
	v_cndmask_b32_e64 v50, v202, v26, s2
	v_cndmask_b32_e64 v47, v201, v27, s2
	v_cndmask_b32_e64 v31, v197, v31, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v17
	v_mul_f32_e32 v1, v1, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v35, v150
	v_fma_f32 v1, v1, v37, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v150, v7, s2
	v_cndmask_b32_e64 v1, v148, v1, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v101, v80, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v188, v15, s2
	v_cndmask_b32_e64 v15, v186, v86, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v19 offset:35328
	ds_load_b128 v[2:5], v19 offset:35344
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v98, v6, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[92:95], v19 offset:34816
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v8, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v192, v74, s2
	v_cndmask_b32_e64 v20, v190, v14, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v98, v63, v195
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[96:99], v19 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v208, v25, s2
	v_cndmask_b32_e64 v25, v191, v13, s2
	v_cndmask_b32_e64 v13, v187, v87, s2
	v_cndmask_b32_e64 v29, v195, v80, s2
	v_cndmask_b32_e64 v14, v189, v85, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v0, v9, v18
	v_mul_f32_e32 v9, v9, v17
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v19, v3, v18
	v_mul_f32_e32 v70, v4, v18
	v_mul_f32_e32 v72, v5, v18
	v_mul_f32_e32 v4, v4, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v82, v176
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v77, v95, v18
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v81, v96, v18
	v_mul_f32_e32 v87, v99, v18
	v_mul_f32_e32 v99, v99, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v65, v182
	v_fma_f32 v65, v72, v71, v178
	v_fma_f32 v4, v4, v89, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v176, v9, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v80, v94, v18
	v_mul_f32_e32 v94, v94, v17
	v_mul_f32_e32 v74, v92, v18
	v_mul_f32_e32 v92, v92, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v77, v66, v179
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v172, v4, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v86, v98, v18
	v_mul_f32_e32 v98, v98, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v77, v94, v83, v161
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v5, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v100, v76, v193
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v85, v97, v18 :: v_dual_mul_f32 v96, v96, v17
	v_mul_f32_e32 v95, v95, v17
	v_mul_f32_e32 v97, v97, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v42, v156
	v_fma_f32 v51, v74, v51, v183
	v_fma_f32 v54, v86, v54, v171
	v_fma_f32 v45, v81, v45, v175
	v_fma_f32 v81, v98, v53, v158
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v161, v77, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v80, v64, v177
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v101, v12, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v193, v76, s2
	v_cndmask_b32_e64 v0, v156, v0, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v76, v93, v18
	v_mul_f32_e32 v93, v93, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v42, v70, v68, v180
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v178, v65, s2
	v_cndmask_b32_e64 v4, v183, v51, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v100, v11, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v177, v64, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v90, v10, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v171, v54, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v18, v2, v18 :: v_dual_mul_f32 v3, v3, v17
	v_mul_f32_e32 v10, v10, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v60, v87, v60, v169
	v_fma_f32 v73, v101, v73, v166
	v_fma_f32 v49, v85, v49, v173
	v_fma_f32 v48, v97, v48, v159
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v182, v19, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v65
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v74, v18, v78, v165
	v_fma_f32 v3, v3, v88, v174
	v_fma_f32 v5, v5, v91, v170
	v_fma_f32 v56, v76, v56, v181
	v_fma_f32 v75, v92, v75, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v180, v42, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v100, v67, v167
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v175, v45, s2
	v_cndmask_b32_e64 v45, v169, v60, s2
	v_cndmask_b32_e64 v60, v166, v73, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v179, v66, s2
	v_cndmask_b32_e64 v66, v173, v49, s2
	v_cndmask_b32_e64 v49, v159, v48, s2
	v_cndmask_b32_e64 v48, v158, v81, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v68
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v61, v90, v61, v168
	v_fma_f32 v79, v93, v79, v163
	v_fma_f32 v80, v99, v59, v157
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v165, v74, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v74, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v89, 0xbfb8aa3b, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v174, v3, s2
	v_cndmask_b32_e64 v3, v170, v5, s2
	v_cndmask_b32_e64 v5, v181, v56, s2
	v_cndmask_b32_e64 v56, v164, v75, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v44, v96, v44, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v168, v61, s2
	v_cndmask_b32_e64 v61, v167, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v95, v84, v162
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v163, v79, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v74
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v75
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v160, v44, s2
	v_cndmask_b32_e64 v44, v157, v80, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v80, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v83, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v162, v78, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v78, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v91, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v77
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v79
	v_cndmask_b32_e64 v75, 0, 0x42800000, s1
	v_dual_mul_f32 v94, 0xbfb8aa3b, v53 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v76, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v83
	v_cndmask_b32_e64 v77, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v78
	v_cndmask_b32_e64 v79, 0, 0x42800000, s6
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v82
	v_dual_mul_f32 v84, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v93, 0xbfb8aa3b, v64
	v_dual_mul_f32 v98, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v85
	v_exp_f32_e32 v73, v73
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v80
	v_cndmask_b32_e64 v83, 0, 0x42800000, s10
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v72
	v_dual_mul_f32 v96, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v78, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v81
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v9
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v84
	v_cndmask_b32_e64 v85, 0, 0x42800000, s8
	v_mul_f32_e32 v100, 0xbfb8aa3b, v49
	v_exp_f32_e32 v75, v75
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v98
	v_cndmask_b32_e64 v102, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v87
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v70
	v_exp_f32_e32 v76, v76
	v_cndmask_b32_e64 v81, 0, 0x42800000, s11
	v_cndmask_b32_e64 v103, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v18
	v_exp_f32_e32 v77, v77
	v_dual_mul_f32 v88, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v97, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v84, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v89
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v100
	v_dual_mul_f32 v86, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v95, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v98, 0, 0x42800000, s27
	v_ldexp_f32 v73, v73, v102
	v_cndmask_b32_e64 v87, 0, 0x42800000, s14
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v3
	v_exp_f32_e32 v79, v79
	v_dual_mul_f32 v92, 0xbfb8aa3b, v61 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v106, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v68
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v74, v74, v103
	v_cndmask_b32_e64 v89, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v88
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v93
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v100, 0, 0x42800000, s25
	v_ldexp_f32 v75, v75, v104
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v86
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v91
	v_dual_fmac_f32 v98, 0xbfb8aa3b, v44 :: v_dual_add_f32 v73, 1.0, v73
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v65
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v76, v76, v105
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v92
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v97
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, s5
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v77, v77, v106
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v88, 0, 0x42800000, s13
	v_cndmask_b32_e64 v93, 0, 0x42800000, s16
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v67
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v84, v84
	v_dual_fmac_f32 v100, 0xbfb8aa3b, v49 :: v_dual_add_f32 v75, 1.0, v75
	v_cndmask_b32_e64 v86, 0, 0x42800000, s15
	v_cndmask_b32_e64 v91, 0, 0x42800000, s18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v102, null, v73, v73, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s7
	v_exp_f32_e32 v83, v83
	v_ldexp_f32 v79, v79, v108
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v92, 0, 0x42800000, s17
	v_cndmask_b32_e64 v97, 0, 0x42800000, s20
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v95
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s11
	v_ldexp_f32 v78, v78, v107
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v104, null, v74, v74, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v88, 0xbfb8aa3b, v66 :: v_dual_fmac_f32 v93, 0xbfb8aa3b, v64
	v_dual_mul_f32 v90, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v99, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v101
	v_exp_f32_e32 v89, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v106, null, v75, v75, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v86, 0xbfb8aa3b, v45 :: v_dual_fmac_f32 v91, 0xbfb8aa3b, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v166, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s10
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v80, v80, v109
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v108, null, v76, v76, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v96, 0, 0x42800000, s21
	v_cndmask_b32_e64 v95, 0, 0x42800000, s22
	v_dual_fmac_f32 v92, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v56
	v_ldexp_f32 v81, v81, v113
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v167, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v85, v85, v110
	v_ldexp_f32 v84, v84, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v110, null, v77, v77, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v90
	v_cndmask_b32_e64 v94, 0, 0x42800000, s23
	v_cndmask_b32_e64 v101, 0, 0x42800000, s24
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v99
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s12
	v_exp_f32_e32 v88, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v168, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v91, v91
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s14
	v_ldexp_f32 v83, v83, v112
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v169, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v19
	v_exp_f32_e32 v97, v97
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v112, null, v78, v78, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v84, 1.0, v84 :: v_dual_add_f32 v85, 1.0, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v170, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v90, 0, 0x42800000, s19
	v_cndmask_b32_e64 v99, 0, 0x42800000, s26
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s13
	v_dual_fmac_f32 v94, 0xbfb8aa3b, v53 :: v_dual_fmac_f32 v101, 0xbfb8aa3b, v51
	v_exp_f32_e32 v86, v86
	v_ldexp_f32 v89, v89, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v114, null, v79, v79, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v194, -v102, v166, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v87, v87, v116
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v116, null, v80, v80, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s20
	v_exp_f32_e32 v95, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v171, v112
	v_fma_f32 v195, -v104, v167, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v93, v93, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, null, v85, v85, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s15
	v_dual_fmac_f32 v90, 0xbfb8aa3b, v59 :: v_dual_fmac_f32 v99, 0xbfb8aa3b, v48
	v_exp_f32_e32 v101, v101
	v_ldexp_f32 v88, v88, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v172, v114
	v_fma_f32 v196, -v106, v168, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v92, v92
	v_ldexp_f32 v91, v91, v120
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v103, vcc_lo, v0, v73, v0
	v_div_scale_f32 v120, null, v84, v84, v5
	v_dual_fmac_f32 v166, v194, v166 :: v_dual_fmac_f32 v167, v195, v167
	v_rcp_f32_e32 v173, v116
	v_fma_f32 v197, -v108, v169, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s26
	v_ldexp_f32 v97, v97, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v105, s26, v82, v74, v82
	v_div_scale_f32 v122, null, v83, v83, v70
	v_rcp_f32_e32 v174, v118
	v_fma_f32 v198, -v110, v170, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s24
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s27
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v99, v99
	v_ldexp_f32 v86, v86, v117
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v88, 1.0, v88 :: v_dual_add_f32 v89, 1.0, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v107, s27, v42, v75, v42
	v_dual_fmac_f32 v168, v196, v168 :: v_dual_fmac_f32 v169, v197, v169
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v175, v120
	v_dual_mul_f32 v194, v103, v166 :: v_dual_mul_f32 v195, v105, v167
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s25
	v_exp_f32_e32 v98, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v109, s25, v72, v76, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v95, v95, v124
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v124, null, v81, v81, v68
	v_rcp_f32_e32 v176, v122
	v_fma_f32 v199, -v112, v171, 1.0
	v_div_scale_f32 v111, s24, v71, v77, v71
	v_fmac_f32_e32 v170, v198, v170
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s19
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v101, v101, v126
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v86, 1.0, v86 :: v_dual_add_f32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, null, v89, v89, v67
	v_fma_f32 v200, -v114, v172, 1.0
	v_dual_mul_f32 v196, v107, v168 :: v_dual_mul_f32 v197, v109, v169
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v92, v92, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v222, -v102, v194, v103
	v_fma_f32 v201, -v116, v173, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v113, s23, v18, v78, v18
	v_rcp_f32_e32 v177, v124
	v_fmac_f32_e32 v171, v199, v171
	v_fma_f32 v223, -v104, v195, v105
	v_fma_f32 v202, -v118, v174, 1.0
	v_mul_f32_e32 v198, v111, v170
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s21
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v90, v90, v121
	v_ldexp_f32 v99, v99, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v115, s22, v9, v79, v9
	v_div_scale_f32 v128, null, v88, v88, v66
	v_div_scale_f32 v130, null, v87, v87, v65
	v_div_scale_f32 v132, null, v86, v86, v45
	v_rcp_f32_e32 v178, v126
	v_dual_fmac_f32 v172, v200, v172 :: v_dual_fmac_f32 v173, v201, v173
	v_fma_f32 v224, -v106, v196, v107
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v92, 1.0, v92 :: v_dual_add_f32 v93, 1.0, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v203, -v120, v175, 1.0
	v_dual_fmac_f32 v194, v222, v166 :: v_dual_fmac_f32 v195, v223, v167
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v98, v98, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, s21, v3, v80, v3
	v_fma_f32 v225, -v108, v197, v109
	v_fma_f32 v204, -v122, v176, 1.0
	v_mul_f32_e32 v199, v113, v171
	v_div_scale_f32 v119, s20, v4, v85, v4
	v_dual_fmac_f32 v174, v202, v174 :: v_dual_fmac_f32 v175, v203, v175
	v_fma_f32 v226, -v110, v198, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v100, v100
	v_ldexp_f32 v96, v96, v123
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v90, 1.0, v90 :: v_dual_add_f32 v91, 1.0, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v179, v128
	v_rcp_f32_e32 v180, v130
	v_rcp_f32_e32 v181, v132
	v_dual_mul_f32 v200, v115, v172 :: v_dual_mul_f32 v201, v117, v173
	v_dual_fmac_f32 v196, v224, v168 :: v_dual_fmac_f32 v197, v225, v169
	v_div_scale_f32 v121, s19, v5, v84, v5
	v_div_scale_f32 v134, null, v93, v93, v64
	v_fma_f32 v102, -v102, v194, v103
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v98, 1.0, v98 :: v_dual_add_f32 v99, 1.0, v99
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v123, s18, v70, v83, v70
	v_div_scale_f32 v136, null, v92, v92, v61
	v_fma_f32 v205, -v124, v177, 1.0
	v_fmac_f32_e32 v176, v204, v176
	v_fma_f32 v227, -v112, v199, v113
	v_fma_f32 v103, -v104, v195, v105
	v_dual_mul_f32 v202, v119, v174 :: v_dual_mul_f32 v203, v121, v175
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v198, v226, v170 :: v_dual_fmac_f32 v199, v227, v171
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v94, v94, v125
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v96, 1.0, v96 :: v_dual_add_f32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v138, null, v91, v91, v60
	v_fma_f32 v206, -v126, v178, 1.0
	v_fma_f32 v228, -v114, v200, v115
	v_fma_f32 v104, -v106, v196, v107
	v_rcp_f32_e32 v182, v134
	v_div_fmas_f32 v102, v102, v166, v194
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v162, null, v99, v99, v48
	v_fma_f32 v229, -v116, v201, v117
	v_fma_f32 v105, -v108, v197, v109
	v_div_scale_f32 v125, s17, v68, v81, v68
	v_div_scale_f32 v140, null, v90, v90, v59
	v_rcp_f32_e32 v183, v136
	v_dual_fmac_f32 v177, v205, v177 :: v_dual_mul_f32 v204, v123, v176
	v_div_fmas_f32 v103, v103, v167, v195
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v230, -v118, v202, v119
	v_fma_f32 v106, -v110, v198, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v100, v100, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v94, 1.0, v94 :: v_dual_add_f32 v95, 1.0, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v127, s16, v67, v89, v67
	v_div_scale_f32 v142, null, v97, v97, v56
	v_rcp_f32_e32 v184, v138
	v_fma_f32 v207, -v128, v179, 1.0
	v_fma_f32 v208, -v130, v180, 1.0
	v_fma_f32 v209, -v132, v181, 1.0
	v_fmac_f32_e32 v178, v206, v178
	v_dual_fmac_f32 v200, v228, v172 :: v_dual_fmac_f32 v201, v229, v173
	v_div_fmas_f32 v104, v104, v168, v196
	s_mov_b32 vcc_lo, s25
	v_fma_f32 v231, -v120, v203, v121
	v_div_scale_f32 v164, null, v98, v98, v44
	v_rcp_f32_e32 v192, v162
	v_div_fixup_f32 v0, v102, v73, v0
	v_div_fmas_f32 v73, v105, v169, v197
	s_mov_b32 vcc_lo, s24
	v_div_scale_f32 v144, null, v96, v96, v54
	v_rcp_f32_e32 v185, v140
	v_mul_f32_e32 v205, v125, v177
	v_fma_f32 v232, -v122, v204, v123
	v_fma_f32 v107, -v112, v199, v113
	v_dual_fmac_f32 v202, v230, v174 :: v_dual_fmac_f32 v203, v231, v175
	v_div_fixup_f32 v74, v103, v74, v82
	v_div_fmas_f32 v82, v106, v170, v198
	v_div_scale_f32 v129, s15, v66, v88, v66
	v_div_scale_f32 v131, s14, v65, v87, v65
	v_div_scale_f32 v133, s13, v45, v86, v45
	v_div_scale_f32 v146, null, v95, v95, v19
	v_rcp_f32_e32 v186, v142
	v_dual_fmac_f32 v179, v207, v179 :: v_dual_fmac_f32 v180, v208, v180
	v_dual_fmac_f32 v181, v209, v181 :: v_dual_mul_f32 v206, v127, v178
	v_fma_f32 v108, -v114, v200, v115
	v_fma_f32 v210, -v134, v182, 1.0
	s_mov_b32 vcc_lo, s23
	v_rcp_f32_e32 v193, v164
	v_fma_f32 v109, -v116, v201, v117
	v_rcp_f32_e32 v187, v144
	v_fma_f32 v211, -v136, v183, 1.0
	v_fma_f32 v233, -v124, v205, v125
	v_fmac_f32_e32 v204, v232, v176
	v_div_fmas_f32 v102, v107, v171, v199
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v110, -v118, v202, v119
	v_div_fixup_f32 v75, v104, v75, v42
	v_div_fixup_f32 v71, v82, v77, v71
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v69, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v73, v76, v72
	v_div_scale_f32 v156, null, v94, v94, v53
	v_rcp_f32_e32 v188, v146
	v_fma_f32 v212, -v138, v184, 1.0
	v_dual_mul_f32 v207, v129, v179 :: v_dual_mul_f32 v208, v131, v180
	v_mul_f32_e32 v209, v133, v181
	v_fma_f32 v234, -v126, v206, v127
	v_div_fmas_f32 v69, v108, v172, v200
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v135, s12, v64, v93, v64
	v_dual_fmac_f32 v182, v210, v182 :: v_dual_fmac_f32 v183, v211, v183
	v_fma_f32 v111, -v120, v203, v121
	v_fma_f32 v220, -v162, v192, 1.0
	v_div_fmas_f32 v72, v109, v173, v201
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v137, s11, v61, v92, v61
	v_fma_f32 v213, -v140, v185, 1.0
	v_fmac_f32_e32 v205, v233, v177
	v_fma_f32 v112, -v122, v204, v123
	v_div_fixup_f32 v73, v102, v78, v18
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v63, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v110, v174, v202
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v139, s10, v60, v91, v60
	v_rcp_f32_e32 v189, v156
	v_fma_f32 v214, -v142, v186, 1.0
	v_dual_fmac_f32 v184, v212, v184 :: v_dual_fmac_f32 v185, v213, v185
	v_fma_f32 v222, -v128, v207, v129
	v_fma_f32 v224, -v132, v209, v133
	v_fmac_f32_e32 v206, v234, v178
	v_dual_mul_f32 v210, v135, v182 :: v_dual_mul_f32 v211, v137, v183
	v_div_fixup_f32 v63, v69, v79, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v62, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v111, v175, v203
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v163, s1, v48, v99, v48
	v_fma_f32 v221, -v164, v193, 1.0
	v_fmac_f32_e32 v192, v220, v192
	v_fma_f32 v223, -v130, v208, v131
	v_div_scale_f32 v141, s9, v59, v90, v59
	v_fma_f32 v215, -v144, v187, 1.0
	v_fma_f32 v113, -v124, v205, v125
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v69, v72, v80, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v58, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v58, v112, v176, v204
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v100, 1.0, v100 :: v_dual_add_f32 v101, 1.0, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v143, s8, v56, v97, v56
	v_fma_f32 v216, -v146, v188, 1.0
	v_dual_fmac_f32 v186, v214, v186 :: v_dual_fmac_f32 v187, v215, v187
	v_dual_mul_f32 v212, v139, v184 :: v_dual_mul_f32 v213, v141, v185
	v_dual_fmac_f32 v207, v222, v179 :: v_dual_fmac_f32 v208, v223, v180
	v_fmac_f32_e32 v209, v224, v181
	v_fma_f32 v114, -v126, v206, v127
	v_fma_f32 v225, -v134, v210, v135
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v165, s0, v44, v98, v44
	v_dual_fmac_f32 v193, v221, v193 :: v_dual_mul_f32 v220, v163, v192
	v_div_scale_f32 v145, s7, v54, v96, v54
	v_fma_f32 v226, -v136, v211, v137
	v_div_fixup_f32 v0, v0, v85, v4
	v_div_fixup_f32 v58, v58, v83, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v57, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v57, v113, v177, v205
	s_mov_b32 vcc_lo, s16
	v_div_scale_f32 v158, null, v101, v101, v51
	v_div_scale_f32 v147, s6, v19, v95, v19
	v_fma_f32 v217, -v156, v189, 1.0
	v_fmac_f32_e32 v188, v216, v188
	v_dual_mul_f32 v214, v143, v186 :: v_dual_mul_f32 v215, v145, v187
	v_fma_f32 v227, -v138, v212, v139
	v_fma_f32 v115, -v128, v207, v129
	v_div_fmas_f32 v63, v114, v178, v206
	v_div_scale_f32 v160, null, v100, v100, v49
	v_dual_fmac_f32 v210, v225, v182 :: v_dual_fmac_f32 v211, v226, v183
	v_mul_f32_e32 v221, v165, v193
	v_fma_f32 v222, -v162, v220, v163
	v_fma_f32 v116, -v130, v208, v131
	v_div_fixup_f32 v62, v62, v84, v5
	v_fma_f32 v228, -v140, v213, v141
	s_mov_b32 vcc_lo, s15
	v_rcp_f32_e32 v190, v158
	v_fma_f32 v117, -v132, v209, v133
	v_div_scale_f32 v157, s5, v53, v94, v53
	v_dual_fmac_f32 v189, v217, v189 :: v_dual_mul_f32 v216, v147, v188
	v_fma_f32 v229, -v142, v214, v143
	v_dual_fmac_f32 v212, v227, v184 :: v_dual_fmac_f32 v213, v228, v185
	v_div_fixup_f32 v63, v63, v89, v67
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v52, v52, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v115, v179, v207
	s_mov_b32 vcc_lo, s14
	v_rcp_f32_e32 v191, v160
	v_fma_f32 v118, -v134, v210, v135
	v_div_fixup_f32 v57, v57, v81, v68
	v_dual_fmac_f32 v220, v222, v192 :: v_dual_mul_f32 v5, v55, v69
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v55, v50, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v116, v180, v208
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v230, -v144, v215, v145
	v_fma_f32 v119, -v136, v211, v137
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v47, v47, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v58, v117, v181, v209
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v217, v157, v189
	v_fma_f32 v231, -v146, v216, v147
	v_dual_fmac_f32 v214, v229, v186 :: v_dual_fmac_f32 v215, v230, v187
	v_fma_f32 v120, -v138, v212, v139
	v_div_fixup_f32 v0, v0, v88, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v43, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v57, v118, v182, v210
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v121, -v140, v213, v141
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v46, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v119, v183, v211
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v218, -v158, v190, 1.0
	v_fma_f32 v232, -v156, v217, v157
	v_fmac_f32_e32 v216, v231, v188
	v_fma_f32 v122, -v142, v214, v143
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v58, v58, v86, v45
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v32, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v120, v184, v212
	v_fma_f32 v219, -v160, v191, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v123, -v144, v215, v145
	v_div_fixup_f32 v32, v57, v93, v64
	v_div_fmas_f32 v57, v121, v185, v213
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v159, s4, v51, v101, v51
	v_dual_fmac_f32 v190, v218, v190 :: v_dual_fmac_f32 v191, v219, v191
	v_fmac_f32_e32 v217, v232, v189
	v_fma_f32 v124, -v146, v216, v147
	v_div_fixup_f32 v46, v46, v92, v61
	v_div_fixup_f32 v0, v0, v91, v60
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v58, v122, v186, v214
	v_div_scale_f32 v161, s3, v49, v100, v49
	s_mov_b32 vcc_lo, s7
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v29, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v123, v187, v215
	s_mov_b32 vcc_lo, s6
	v_dual_mul_f32 v218, v159, v190 :: v_dual_mul_f32 v219, v161, v191
	v_fma_f32 v125, -v156, v217, v157
	v_div_fixup_f32 v56, v58, v97, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v124, v188, v216
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v233, -v158, v218, v159
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v125, v189, v217
	v_div_fixup_f32 v46, v46, v95, v19
	v_fma_f32 v234, -v160, v219, v161
	v_fmac_f32_e32 v218, v233, v190
	v_div_fixup_f32 v32, v32, v96, v54
	v_div_fixup_f32 v0, v0, v94, v53
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v164, v221, v165
	v_fmac_f32_e32 v219, v234, v191
	v_fma_f32 v126, -v158, v218, v159
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v32
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v41, v155
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v221, v46, v193
	v_fma_f32 v127, -v160, v219, v161
	s_mov_b32 vcc_lo, s4
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v162, v220, v163
	v_div_fmas_f32 v54, v126, v190, v218
	s_mov_b32 vcc_lo, s3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v155, v10, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v164, v221, v165
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v25, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v127, v191, v219
	s_mov_b32 vcc_lo, s1
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v2, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v0, v192, v220
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v25, v25, v100, v49
	v_div_fmas_f32 v10, v10, v193, v221
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v38, v152
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v99, v48
	v_div_fixup_f32 v32, v54, v101, v51
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v98, v44
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v11, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v152, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v57, v57, v90, v59
	v_div_fixup_f32 v62, v62, v87, v65
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v24, v10
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v40, v154
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v26, v26, v57 :: v_dual_mul_f32 v31, v31, v62
	s_mov_b32 s4, 0x76543210
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v154, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v39, v153
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v39
	v_mul_f32_e32 v39, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v153, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v40 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v46
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v23, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v23, v38
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v0, v12, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v12, v24
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v24
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v2
	v_ldexp_f32 v12, v12, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v0, v0, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v23, v23, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v39, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v12, v12, v40
	v_rcp_f32_e32 v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v51, v25
	v_fma_f32 v49, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v6, v6, v17 :: v_dual_fmac_f32 v39, v49, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, vcc_lo, v41, v0, v41
	v_fma_f32 v53, -v44, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v25, v51, 1.0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v34, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v53, v48
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v37, s1, v40, v12, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, s0, v46, v23, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v37, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v151, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v36, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v58, v53, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v149, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v49, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v44, v58, v53
	v_fma_f32 v36, -v38, v56, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v35, v48
	v_fmac_f32_e32 v56, v36, v39
	v_fma_f32 v36, -v25, v59, v37
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v38, v56, v49
	v_fmac_f32_e32 v59, v36, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v17, null, v24, v24, v2
	v_fma_f32 v36, -v44, v58, v53
	v_div_fmas_f32 v34, v34, v39, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v25, v59, v37
	v_rcp_f32_e32 v54, v17
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v34, v0, v41
	v_fma_f32 v57, -v17, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v57, s3, v2, v24, v2
	v_mul_f32_e32 v60, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v17, v60, v57
	v_fmac_f32_e32 v60, v35, v54
	v_div_fmas_f32 v35, v36, v48, v58
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v25, v25, v51, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v60, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v35, v23, v46
	v_div_fmas_f32 v17, v17, v54, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v17, v24, v2
	v_div_fixup_f32 v17, v25, v12, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v13, v32
	v_dual_mul_f32 v12, v1, v2 :: v_dual_mul_f32 v13, v8, v17
	v_mul_f32_e32 v17, v7, v23
	v_mul_f32_e32 v23, v6, v0
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v0, |v52|, |v55|
	v_max3_f32 v1, |v47|, |v43|, |v45|
	v_max3_f32 v6, |v29|, |v28|, |v27|
	v_max3_f32 v7, |v26|, |v22|, |v16|
	v_max3_f32 v2, |v31|, |v30|, |v42|
	v_max_f32_e64 v8, |v19|, |v20|
	v_max3_f32 v25, |v14|, |v24|, |v15|
	v_max3_f32 v32, |v23|, |v17|, |v13|
	v_max3_f32 v34, |v12|, |v3|, |v4|
	v_max3_f32 v0, v0, |v50|, v1
	v_max3_f32 v1, v6, v7, |v18|
	v_max3_f32 v6, |v11|, |v10|, |v9|
	v_max3_f32 v7, v8, |v21|, v25
	v_max3_f32 v8, v32, v34, |v5|
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v34, v240, 7, 0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v0, v0, v2, v1
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 0xe0, v235
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v7, v6, v8
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v8, 4, v240
	v_permlanex16_b32 v6, v0, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v25, 1, v1
	v_permlanex16_b32 v7, v2, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v1, 2, v8
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v8, v8, v25
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v6, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v0, v32, v25
	v_lshrrev_b32_e32 v25, 2, v1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v2, v7
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, v34, v8, v241
	v_lshlrev_b32_e32 v32, 3, v241
	v_add3_u32 v0, 0, v241, v0
	ds_store_b64 v2, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v0, v6
	v_mov_b32_e32 v2, v7
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v0, v6, v0
	v_max_f32_e32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v0, v0, v6 :: v_dual_max_f32 v7, v2, v7
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v6, v7
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v8, v6, v6
	v_max_f32_e32 v6, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v7, v7, v8 :: v_dual_lshlrev_b32 v2, 3, v239
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v0, 0, v32, v25
	v_add_nc_u32_e32 v8, 0, v2
	ds_store_b64 v0, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v8
.Ltmp48:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v0, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v0, 0x2b8cbccc, v0 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v35, null, 0x40e00000, 0x40e00000, v7
	v_rcp_f32_e32 v8, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v6, v8, 1.0
	v_fmac_f32_e32 v8, v25, v8
	v_div_scale_f32 v25, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v25, v8
	v_fma_f32 v34, -v6, v32, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v34, v8
	v_rcp_f32_e32 v34, v35
	v_fma_f32 v6, -v6, v32, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v6, v6, v8, v32
	v_fma_f32 v8, -v35, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v6, 0x40e00000, v0
	v_fmac_f32_e32 v34, v8, v34
	v_div_scale_f32 v6, vcc_lo, v7, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v8, v0, 16, 1
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v25, v6, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v0, v0, v8, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v8, -v35, v25, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 0xffff0000, v0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v25, v8, v34
.Ltmp49:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v32, null, v39, v39, v52
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v35, v25, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v36, null, v39, v39, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v32
	v_div_scale_f32 v38, null, v39, v39, v50
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v6, v6, v34, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v34, v36
	v_div_scale_f32 v37, vcc_lo, v52, v39, v52
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v7, v6, 0x40e00000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v46, null, v39, v39, v47
	v_fma_f32 v6, -v32, v35, 1.0
	v_div_scale_f32 v48, s0, v55, v39, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v36, v34, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v40, v7, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v35, v6, v35
	v_rcp_f32_e32 v49, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v38, v41, 1.0
	v_fmac_f32_e32 v34, v25, v34
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v25, v7, v40, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v44, v37, v35
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.l, v0.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v53, v41
	v_mul_f32_e32 v51, v48, v34
	v_div_scale_f32 v54, null, v39, v39, v45
	v_fma_f32 v40, -v32, v44, v37
	v_fma_f32 v53, -v46, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v36, v51, v48
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v7.l, v25.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v44, v40, v35 :: v_dual_and_b32 v25, 0xffff0000, v25
	v_div_scale_f32 v40, s1, v50, v39, v50
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, null, v39, v39, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v32, v44, v37
	v_fmac_f32_e32 v51, v0, v34
	v_mul_f32_e32 v0, v40, v41
	v_div_scale_f32 v37, s2, v47, v39, v47
	v_div_fmas_f32 v32, v32, v35, v44
	v_rcp_f32_e32 v44, v53
	v_fma_f32 v35, -v36, v51, v48
	v_fma_f32 v36, -v38, v0, v40
	v_mul_f32_e32 v48, v37, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v32, v32, v39, v52
	v_div_fmas_f32 v34, v35, v34, v51
	v_fmac_f32_e32 v0, v36, v41
	v_rcp_f32_e32 v51, v54
	v_fma_f32 v35, -v46, v48, v37
	v_fma_f32 v36, -v53, v44, 1.0
	v_div_scale_f32 v52, null, v39, v39, v31
	v_fma_f32 v38, -v38, v0, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v35, v49
	v_fmac_f32_e32 v44, v36, v44
	v_div_scale_f32 v40, s0, v43, v39, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v54, v51, 1.0
	v_div_fmas_f32 v0, v38, v41, v0
	v_fma_f32 v36, -v46, v48, v37
	v_mul_f32_e32 v37, v40, v44
	v_rcp_f32_e32 v41, v52
	v_div_scale_f32 v46, null, v39, v39, v30
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v35, v51
	v_div_scale_f32 v38, s1, v45, v39, v45
	v_div_fmas_f32 v36, v36, v49, v48
	v_fma_f32 v48, -v53, v37, v40
	v_rcp_f32_e32 v56, v46
	v_div_fixup_f32 v34, v34, v39, v55
	v_mul_f32_e32 v49, v38, v51
	v_fma_f32 v55, -v52, v41, 1.0
	v_fmac_f32_e32 v37, v48, v44
	v_div_scale_f32 v48, null, v39, v39, v42
	v_div_fixup_f32 v35, v0, v39, v50
	v_div_fixup_f32 v36, v36, v39, v47
	v_fma_f32 v0, -v54, v49, v38
	v_fmac_f32_e32 v41, v55, v41
	v_div_scale_f32 v47, s2, v31, v39, v31
	v_fma_f32 v50, -v46, v56, 1.0
	v_fma_f32 v40, -v53, v37, v40
	v_rcp_f32_e32 v53, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, v0, v51 :: v_dual_mul_f32 v0, v47, v41
	v_fmac_f32_e32 v56, v50, v56
	v_div_scale_f32 v50, s3, v30, v39, v30
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v54, v49, v38
	v_div_fmas_f32 v37, v40, v44, v37
	v_fma_f32 v40, -v52, v0, v47
	v_mul_f32_e32 v44, v50, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v48, v53, 1.0
	v_div_scale_f32 v55, null, v39, v39, v29
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v0, v40, v41
	v_div_fmas_f32 v38, v38, v51, v49
	v_rcp_f32_e32 v40, v55
	v_fma_f32 v49, -v46, v44, v50
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v51, s0, v42, v39, v42
	v_div_fixup_f32 v37, v37, v39, v43
	v_div_fixup_f32 v38, v38, v39, v45
	v_fma_f32 v43, -v52, v0, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v44, v49, v56 :: v_dual_mul_f32 v45, v51, v53
	v_div_scale_f32 v49, null, v39, v39, v28
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v47, -v55, v40, 1.0
	v_div_fmas_f32 v0, v43, v41, v0
	v_fma_f32 v41, -v46, v44, v50
	v_fma_f32 v43, -v48, v45, v51
	v_rcp_f32_e32 v46, v49
	v_div_scale_f32 v50, null, v39, v39, v27
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s1, v29, v39, v29
	v_fmac_f32_e32 v45, v43, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v50
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v0, v0, v39, v31
	v_div_fmas_f32 v41, v41, v56, v44
	v_mul_f32_e32 v44, v47, v40
	v_fma_f32 v52, -v49, v46, 1.0
	v_fma_f32 v31, -v48, v45, v51
	v_div_scale_f32 v48, s2, v28, v39, v28
	v_div_fixup_f32 v30, v41, v39, v30
	v_fma_f32 v41, -v55, v44, v47
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v51, -v50, v43, 1.0
	v_div_scale_f32 v52, null, v39, v39, v26
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v44, v41, v40
	v_div_fmas_f32 v31, v31, v53, v45
	v_mul_f32_e32 v41, v48, v46
	v_fmac_f32_e32 v43, v51, v43
	v_rcp_f32_e32 v45, v52
	v_div_scale_f32 v51, s0, v27, v39, v27
	v_div_scale_f32 v53, null, v39, v39, v22
	v_div_fixup_f32 v31, v31, v39, v42
	v_fma_f32 v42, -v55, v44, v47
	v_fma_f32 v47, -v49, v41, v48
	v_mul_f32_e32 v54, v51, v43
	v_rcp_f32_e32 v55, v53
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v56, -v52, v45, 1.0
	v_div_fmas_f32 v40, v42, v40, v44
	v_fmac_f32_e32 v41, v47, v46
	v_fma_f32 v42, -v50, v54, v51
	v_div_scale_f32 v44, s1, v26, v39, v26
	v_fmac_f32_e32 v45, v56, v45
	v_div_fixup_f32 v29, v40, v39, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v53, v55, 1.0
	v_fma_f32 v40, -v49, v41, v48
	v_fmac_f32_e32 v54, v42, v43
	v_div_scale_f32 v48, null, v39, v39, v16
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v42, v44, v45 :: v_dual_fmac_f32 v55, v47, v55
	v_div_scale_f32 v47, s3, v22, v39, v22
	v_div_fmas_f32 v40, v40, v46, v41
	v_fma_f32 v41, -v50, v54, v51
	v_rcp_f32_e32 v49, v48
	v_div_scale_f32 v51, null, v39, v39, v18
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v46, -v52, v42, v44
	v_mul_f32_e32 v50, v47, v55
	v_div_fmas_f32 v41, v41, v43, v54
	v_rcp_f32_e32 v43, v51
	v_div_fixup_f32 v28, v40, v39, v28
	v_fmac_f32_e32 v42, v46, v45
	v_fma_f32 v46, -v53, v50, v47
	v_fma_f32 v54, -v48, v49, 1.0
	v_div_fixup_f32 v27, v41, v39, v27
	v_div_scale_f32 v41, s0, v16, v39, v16
	v_fma_f32 v40, -v52, v42, v44
	v_fmac_f32_e32 v50, v46, v55
	v_fmac_f32_e32 v49, v54, v49
	v_fma_f32 v44, -v51, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s1, v18, v39, v18
	v_div_fmas_f32 v40, v40, v45, v42
	v_fma_f32 v42, -v53, v50, v47
	v_mul_f32_e32 v45, v41, v49
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, null, v25, v25, v19
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v53, null, v25, v25, v20
	v_div_fmas_f32 v42, v42, v55, v50
	v_rcp_f32_e32 v47, v44
	v_fma_f32 v50, -v48, v45, v41
	v_mul_f32_e32 v52, v46, v43
	v_div_fixup_f32 v26, v40, v39, v26
	v_div_fixup_f32 v22, v42, v39, v22
	v_rcp_f32_e32 v42, v53
	v_fmac_f32_e32 v45, v50, v49
	v_fma_f32 v40, -v51, v52, v46
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v55, null, v25, v25, v14
	v_fma_f32 v50, -v44, v47, 1.0
	v_fma_f32 v41, -v48, v45, v41
	v_div_scale_f32 v48, null, v25, v25, v21
	v_fmac_f32_e32 v52, v40, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v40, s2, v19, v25, v19
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v54, -v53, v42, 1.0
	v_div_fmas_f32 v41, v41, v49, v45
	v_fma_f32 v45, -v51, v52, v46
	v_mul_f32_e32 v46, v40, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v54, v42
	v_div_scale_f32 v49, s0, v20, v25, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v44, v46, v40
	v_fma_f32 v51, -v48, v50, 1.0
	v_rcp_f32_e32 v57, v55
	v_div_fmas_f32 v43, v45, v43, v52
	v_mul_f32_e32 v56, v49, v42
	v_fmac_f32_e32 v46, v54, v47
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, s3, v21, v25, v21
	v_div_fixup_f32 v16, v41, v39, v16
	v_div_fixup_f32 v18, v43, v39, v18
	v_fma_f32 v39, -v44, v46, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v51, v50
	v_div_scale_f32 v43, null, v25, v25, v24
	v_fma_f32 v45, -v53, v56, v49
	v_fma_f32 v41, -v55, v57, 1.0
	v_fma_f32 v40, -v48, v52, v51
	s_mov_b32 vcc_lo, s2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v45, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v57, v41, v57 :: v_dual_fmac_f32 v52, v40, v50
	v_rcp_f32_e32 v40, v43
	v_div_scale_f32 v41, s1, v14, v25, v14
	v_div_fmas_f32 v39, v39, v47, v46
	v_fma_f32 v44, -v53, v56, v49
	v_div_scale_f32 v46, null, v25, v25, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v45, v41, v57
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v19, v39, v25, v19
	v_fma_f32 v47, -v43, v40, 1.0
	v_div_fmas_f32 v42, v44, v42, v56
	v_fma_f32 v44, -v48, v52, v51
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v55, v45, v41
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s0, v24, v25, v24
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v49, v57
	v_div_fmas_f32 v44, v44, v50, v52
	v_mul_f32_e32 v39, v47, v40
	v_div_fixup_f32 v20, v42, v25, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v46, v48, 1.0
	v_fma_f32 v41, -v55, v45, v41
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v43, v39, v47
	v_div_fixup_f32 v21, v44, v25, v21
	v_div_scale_f32 v44, null, v25, v25, v11
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s2, v15, v25, v15
	v_div_fmas_f32 v41, v41, v57, v45
	v_fmac_f32_e32 v39, v49, v40
	v_rcp_f32_e32 v50, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v42, v48
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v14, v41, v25, v14
	v_fma_f32 v41, -v43, v39, v47
	v_div_scale_f32 v49, null, v25, v25, v10
	v_fma_f32 v43, -v46, v45, v42
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v7.h, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v41, v40, v39
	v_div_scale_f32 v40, null, v25, v25, v9
	v_fma_f32 v47, -v44, v50, 1.0
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, s0, v11, v25, v11
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v47, null, v25, v25, v23
	v_div_fixup_f32 v24, v39, v25, v24
	v_fma_f32 v42, -v46, v45, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v40, v43, 1.0
	v_mul_f32_e32 v46, v41, v50
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s1, v10, v25, v10
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v25, v25, v17
	v_div_fmas_f32 v42, v42, v48, v45
	v_fma_f32 v45, -v44, v46, v41
	v_mul_f32_e32 v48, v39, v51
	v_div_scale_f32 v54, s2, v9, v25, v9
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_mul_f32_e32 v57, v54, v43
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s3, v23, v25, v23
	v_div_fixup_f32 v15, v42, v25, v15
	v_fma_f32 v41, -v44, v46, v41
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	v_mul_f32_e32 v44, v55, v53
	v_fma_f32 v45, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v49, v48, v39
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s0, v17, v25, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v40, v57, v54
	v_fmac_f32_e32 v44, v42, v53
	v_div_fmas_f32 v41, v41, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v45, v56
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v25, v25, v13
	v_div_fmas_f32 v39, v39, v51, v48
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v41, v25, v11
	v_div_fmas_f32 v40, v40, v43, v57
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v10, v39, v25, v10
	v_div_fixup_f32 v9, v40, v25, v9
	v_div_scale_f32 v40, null, v25, v25, v12
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, null, v25, v25, v5
	v_div_fmas_f32 v43, v43, v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v52, v42, v45
	v_fma_f32 v41, -v46, v48, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v23, v43, v25, v23
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, null, v25, v25, v3
	v_div_scale_f32 v43, null, v25, v25, v4
	v_div_scale_f32 v44, vcc_lo, v13, v25, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v47, v43
	v_div_fixup_f32 v17, v39, v25, v17
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s0, v12, v25, v12
	v_fma_f32 v51, -v41, v45, 1.0
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v53, -v46, v49, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v42 :: v_dual_fmac_f32 v52, v56, v52
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s1, v3, v25, v3
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s2, v4, v25, v4
	v_fmac_f32_e32 v49, v53, v48
	v_fma_f32 v53, -v40, v55, v39
	v_div_scale_f32 v56, s3, v5, v25, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v51, v45 :: v_dual_mul_f32 v58, v54, v47
	v_fmac_f32_e32 v55, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fma_f32 v53, -v43, v58, v54
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_div_fmas_f32 v44, v44, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v46, v45 :: v_dual_fmac_f32 v58, v53, v47
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v59, v40, v52
	v_div_fmas_f32 v39, v39, v42, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v41, v57, v51
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v41, v41, v45, v57
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v44, v25, v13
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v39, v25, v12
	v_div_fmas_f32 v42, v42, v52, v59
	v_div_fixup_f32 v3, v41, v25, v3
	v_div_fixup_f32 v4, v40, v25, v4
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v42, v25, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v32
	v_rndne_f32_e32 v32, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v17, v17
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v15
	v_and_b32_e32 v15, 15, v0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v0, 6, v235
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v43, v14
	v_cvt_i32_f32_e32 v46, v11
	v_cvt_i32_f32_e32 v47, v10
	v_cvt_i32_f32_e32 v50, v17
	v_and_b32_e32 v10, 15, v32
	v_and_b32_e32 v11, 15, v34
	v_and_b32_e32 v14, 15, v37
	v_and_b32_e32 v17, 15, v31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v31, 1, v235
	v_and_b32_e32 v32, 0x60, v235
	v_and_b32_e32 v34, 0x400, v0
	v_and_b32_e32 v37, 0x60, v238
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v23, v23
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v41, v20
	v_cvt_i32_f32_e32 v51, v13
	v_cvt_i32_f32_e32 v52, v12
	v_and_b32_e32 v12, 15, v35
	v_and_b32_e32 v13, 15, v36
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v35, 0x100, v31
	v_xor_b32_e32 v36, v237, v32
	v_add3_u32 v34, 0, v33, v34
	v_and_or_b32 v0, 0x1b00, v0, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v40, v19
	v_cvt_i32_f32_e32 v42, v21
	v_cvt_i32_f32_e32 v48, v9
	v_and_b32_e32 v9, 15, v25
	v_and_b32_e32 v21, 15, v26
	v_and_b32_e32 v26, 15, v41
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v34, v35, v36
	v_xad_u32 v0, v0, v236, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v38, v16
	v_cvt_i32_f32_e32 v39, v18
	v_cvt_i32_f32_e32 v49, v23
	v_and_b32_e32 v18, 15, v29
	v_and_b32_e32 v19, 15, v28
	v_and_b32_e32 v20, 15, v27
	v_and_b32_e32 v16, 15, v30
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v41, v[9:12]
	ds_store_b128 v41, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v0
	ds_load_b128 v[17:20], v0 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v44, v24
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v24, 15, v39
	v_and_b32_e32 v31, 15, v48
	v_and_b32_e32 v32, 15, v49
	v_and_b32_e32 v33, 15, v50
	v_and_b32_e32 v34, 15, v51
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[25:28]
	ds_store_b128 v41, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v0
	ds_load_b128 v[33:36], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[13:16]
	ds_store_b128 v41, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[21:24], v0 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_and_b32_e32 v29, 15, v44
	v_and_b32_e32 v30, 15, v45
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	v_and_b32_e32 v31, 15, v46
	v_and_b32_e32 v32, 15, v47
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v52
	v_and_b32_e32 v38, 15, v3
	v_and_b32_e32 v39, 15, v4
	v_and_b32_e32 v40, 15, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v41, v[29:32]
	ds_store_b128 v41, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[37:40], v0 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v0, v17, 4, v9
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v3, v18, 4, v10
	v_lshl_or_b32 v5, v20, 4, v12
	v_lshl_or_b32 v9, v21, 4, v13
	v_lshl_or_b32 v10, v22, 4, v14
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v3.h, 0xff, v0.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 16, v235
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v9.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v17, s2, v2, v8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v5.l
	v_lshlrev_b16 v5.l, 8, v10.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v22, s0, 4, v17
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v19, 4, v11
	v_lshl_or_b32 v11, v23, 4, v15
	v_lshl_or_b32 v12, v24, 4, v16
	v_lshl_or_b32 v15, v35, 4, v27
	v_lshl_or_b32 v16, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v5.h, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v5, v6, v7, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v3.h, v3.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v235, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v33, 4, v25
	v_lshl_or_b32 v14, v34, 4, v26
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v2.h, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v11.l
	v_lshlrev_b16 v8.l, 8, v16.l
	v_and_b16 v8.h, 0xff, v15.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v5, v5, 0, 16
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v7, v3, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.h, v2.l
	v_or_b16 v10.h, v4.h, v4.l
	v_or_b16 v4.h, v8.h, v8.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v0.l, 0xff, v13.l
	v_lshlrev_b16 v0.h, 8, v21.l
	v_and_b16 v2.h, 0xff, v20.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v8, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v19.l
	v_and_b16 v3.h, 0xff, v18.l
	v_or_b16 v4.l, v0.l, v2.l
	v_or_b16 v5.h, v2.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v7, s33, 1
	v_cndmask_b32_e32 v2, v8, v6, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[9:10], v17, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v22, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	buffer_store_b16 v2, v0, s[36:39], 0 offen
.Ltmp51:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 52
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18560
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 52
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x9b DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x75 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x75:0x2f DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x21 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp28                         ; DW_AT_low_pc
	.long	.Ltmp48-.Ltmp28                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x96:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 52
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 12
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
