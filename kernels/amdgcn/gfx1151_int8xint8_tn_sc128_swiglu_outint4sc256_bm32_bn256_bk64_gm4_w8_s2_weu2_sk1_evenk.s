	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
	v_mov_b32_e32 v44, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v46, 15, v44
	v_and_b32_e32 v1, 3, v44
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v4, 4, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v3, v4
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 3, v1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v45, 0xf0, v44
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	scratch_store_b64 off, v[3:4], off offset:24 ; 8-byte Folded Spill
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v2, 2, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v48, 14, v44
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v0, s5
	v_or_b32_e32 v113, 0x3f0, v44
	v_or_b32_e32 v245, 0x7f0, v44
	v_and_b32_e32 v47, 8, v44
	v_and_b32_e32 v49, 32, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v0, 2, v44
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v0, s34, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s23, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s14, s23, s14
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s14, s19, s12
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s41, s35, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s14, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[143:144], null, s41, v2, v[4:5]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s14, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s12, s13, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s14, s33, s16
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_addk_i32 s13, 0x7f
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s17, s13, 31
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v228, s35, 2, v143
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s40, s2, 5
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s17, 25
.Ltmp19:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v227, v0, v1, s40
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[145:146], null, s35, 6, v[143:144]
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s42, s3, 6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s43, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s13, s13, s16
.Ltmp21:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s41, s42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s12, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[0:1], null, s34, s42, v[227:228]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s14, s43, s19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s14, v228
	v_add_nc_u32_e32 v3, s14, v145
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s14, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s15, v228
	v_add_nc_u32_e32 v13, s15, v145
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[36:37], v0, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v1, s[20:23], 0 offen
	buffer_load_b128 v[8:11], v3, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v0, s14, v143
	s_mov_b32 s14, 0
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v12, s2
	v_cndmask_b32_e64 v3, 0x80000000, v13, s2
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v3, s[20:23], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s41, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v0, s2
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s12, 0x7f
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v20, s2
	s_clause 0x1
	buffer_load_b128 v[20:23], v1, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v3, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s41, v0
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x1
	buffer_load_b128 v[28:31], v0, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v1, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v0, v44, 0, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v1, 3, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v0, 0x420, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v80, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v0, v2
	v_lshlrev_b32_e32 v2, 5, v44
	v_lshl_or_b32 v0, v48, 10, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v38, 0x90, v0
	v_xor_b32_e32 v39, 0x120, v0
	v_xor_b32_e32 v40, 0x1b0, v0
	v_xor_b32_e32 v41, 0x210, v0
	v_add_nc_u32_e32 v229, 0, v0
	v_xor_b32_e32 v42, 0x330, v0
	v_xor_b32_e32 v0, 0x3a0, v0
	v_add_nc_u32_e32 v230, 0, v38
	v_add_nc_u32_e32 v231, 0, v39
	v_add_nc_u32_e32 v232, 0, v40
	v_add_nc_u32_e32 v233, 0, v41
	v_add_nc_u32_e32 v234, 0, v42
	v_add_nc_u32_e32 v235, 0, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, 0x4000, v229
	v_add_nc_u32_e32 v38, 0x4000, v230
	v_add_nc_u32_e32 v39, 0x4000, v231
	v_add_nc_u32_e32 v40, 0x4000, v232
	v_add_nc_u32_e32 v41, 0x4000, v233
	v_add_nc_u32_e32 v42, 0x4000, v234
	v_add_nc_u32_e32 v43, 0x4000, v235
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(8)
	ds_store_b64 v80, v[36:37] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(6)
	v_perm_b32 v36, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	v_perm_b32 v10, v11, v7, 0x4000501
	v_perm_b32 v7, v11, v7, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(4)
	v_perm_b32 v11, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	v_perm_b32 v26, v27, v23, 0x4000501
	v_perm_b32 v23, v27, v23, 0x6020703
	v_perm_b32 v27, v36, v19, 0x7060302
	v_perm_b32 v19, v36, v19, 0x5040100
	v_perm_b32 v36, v4, v20, 0x7060302
	v_perm_b32 v4, v4, v20, 0x5040100
	v_perm_b32 v20, v8, v24, 0x7060302
	v_perm_b32 v8, v8, v24, 0x5040100
	v_perm_b32 v24, v5, v21, 0x7060302
	v_perm_b32 v5, v5, v21, 0x5040100
	v_perm_b32 v21, v9, v25, 0x7060302
	v_perm_b32 v9, v9, v25, 0x5040100
	v_perm_b32 v25, v6, v22, 0x7060302
	v_perm_b32 v6, v6, v22, 0x5040100
	v_perm_b32 v22, v10, v26, 0x7060302
	v_perm_b32 v10, v10, v26, 0x5040100
	v_perm_b32 v26, v7, v23, 0x7060302
	v_perm_b32 v7, v7, v23, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	v_perm_b32 v34, v35, v31, 0x4000501
	v_perm_b32 v31, v35, v31, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v229, v27, v19 offset1:16
	ds_store_2addr_b32 v230, v36, v4 offset1:16
	ds_store_2addr_b32 v231, v20, v8 offset1:16
	ds_store_2addr_b32 v232, v24, v5 offset1:16
	ds_store_2addr_b32 v233, v21, v9 offset1:16
	ds_store_2addr_b32 v229, v25, v6 offset0:160 offset1:176
	ds_store_2addr_b32 v234, v22, v10 offset1:16
	ds_store_2addr_b32 v235, v26, v7 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v4, v11, v23, 0x7060302
	v_perm_b32 v5, v11, v23, 0x5040100
	v_perm_b32 v6, v12, v28, 0x7060302
	v_perm_b32 v7, v12, v28, 0x5040100
	v_perm_b32 v8, v16, v32, 0x7060302
	v_perm_b32 v9, v16, v32, 0x5040100
	v_perm_b32 v10, v13, v29, 0x7060302
	v_perm_b32 v11, v13, v29, 0x5040100
	v_perm_b32 v12, v17, v33, 0x7060302
	v_perm_b32 v13, v17, v33, 0x5040100
	v_perm_b32 v16, v14, v30, 0x7060302
	v_perm_b32 v14, v14, v30, 0x5040100
	v_perm_b32 v17, v18, v34, 0x7060302
	v_perm_b32 v18, v18, v34, 0x5040100
	v_perm_b32 v19, v15, v31, 0x7060302
	v_perm_b32 v15, v15, v31, 0x5040100
	ds_store_2addr_b32 v0, v4, v5 offset1:16
	ds_store_2addr_b32 v38, v6, v7 offset1:16
	ds_store_2addr_b32 v39, v8, v9 offset1:16
	ds_store_2addr_b32 v40, v10, v11 offset1:16
	ds_store_2addr_b32 v41, v12, v13 offset1:16
	ds_store_2addr_b32 v0, v16, v14 offset0:160 offset1:176
	ds_store_2addr_b32 v42, v17, v18 offset1:16
	ds_store_2addr_b32 v43, v19, v15 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v4, 0x3f0, v44
	v_or_b32_e32 v5, 0x7f0, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v26, 0x1800, v2
	v_and_b32_e32 v6, 8, v44
	v_and_b32_e32 v7, 32, v44
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow568
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v0, s40, v46
	s_ashr_i32 s1, s13, 7
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v8, 1, v44
	v_or_b32_e32 v3, s40, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v253, v0, s1
	v_or_b32_e32 v142, s43, v44
	v_lshlrev_b32_e32 v9, 6, v44
	v_lshlrev_b32_e32 v0, 2, v45
	v_lshlrev_b32_e32 v8, 5, v8
	v_add_nc_u32_e32 v225, 0, v46
	s_and_not1_b32 vcc_lo, exec_lo, s14
	v_mul_lo_u32 v144, v3, s1
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v44, off offset:8
	scratch_store_b32 off, v45, off offset:16
	scratch_store_b32 off, v9, off offset:32
	scratch_store_b32 off, v46, off offset:36
	scratch_store_b32 off, v48, off offset:40
	scratch_store_b32 off, v0, off offset:44
	scratch_store_b32 off, v8, off offset:48
	scratch_store_b32 off, v253, off offset:52
	scratch_store_b32 off, v144, off
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v44, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s12, 6
	s_mov_b32 s12, 0
	v_add3_u32 v10, 0, v0, v8
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 48, v1
	v_and_b32_e32 v3, 0x210, v3
	v_and_b32_e32 v4, 0x1c0, v9
	v_and_b32_e32 v5, 0x1800, v2
	v_bfe_i32 v2, v44, 5, 1
	v_lshlrev_b32_e32 v9, 1, v48
	v_xor_b32_e32 v1, v3, v1
	v_dual_mov_b32 v216, 0 :: v_dual_lshlrev_b32 v11, 1, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 0x420, v2
	scratch_store_b32 off, v5, off offset:56 ; 4-byte Folded Spill
	v_or3_b32 v1, v4, v1, v5
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v236, s41, v143
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v242, 0, v11
	v_xor_b32_e32 v1, v1, v2
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v162, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v237, 0, v1
	v_add_nc_u32_e32 v238, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v239, 0, v3
	v_add_nc_u32_e32 v240, 0, v4
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v241, v10, v9
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v155, 0
	v_mov_b32_e32 v153, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s22, s6
	s_add_i32 s0, s0, -2
	s_mov_b32 s23, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v49, off offset:12
	scratch_store_b32 off, v47, off offset:4
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s13, s12, 1
	s_mov_b32 s14, s42
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s15, s13, s3
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s42, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_lshl_b32 s42, s15, 6
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s16, 25
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s42, s34, v[227:228]
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	v_add_nc_u32_e32 v10, s35, v142
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s42, s41
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s16, s43
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s16, s14, s41
	v_dual_mov_b32 v144, v80 :: v_dual_add_nc_u32 v95, s15, v143
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v244, v10, s16, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[146:147], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v240
	ds_load_b128 v[73:76], v240 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v15, v225 offset:32864
	ds_load_u8 v16, v225 offset:32832
	ds_load_u8 v17, v225 offset:32768
	ds_load_u8 v18, v225 offset:32784
	ds_load_u8 v19, v225 offset:32800
	ds_load_u8 v20, v225 offset:32880
	ds_load_u8 v21, v225 offset:32848
	ds_load_u8 v22, v225 offset:32816
	ds_load_u8 v108, v225 offset:34048
	ds_load_u8 v107, v225 offset:33952
	ds_load_u8 v105, v225 offset:34016
	ds_load_u8 v106, v225 offset:33984
	ds_load_u8 v96, v225 offset:34720
	ds_load_u8 v97, v225 offset:34784
	ds_load_u8 v98, v225 offset:34752
	ds_load_u8 v103, v225 offset:34688
	ds_load_u8 v99, v225 offset:34592
	ds_load_u8 v100, v225 offset:34656
	ds_load_u8 v101, v225 offset:34624
	ds_load_u8 v109, v225 offset:34560
	ds_load_u8 v104, v225 offset:34464
	ds_load_u8 v102, v225 offset:34528
	ds_load_u8 v125, v225 offset:34496
	ds_load_u8 v110, v225 offset:34432
	ds_load_u8 v126, v225 offset:34336
	ds_load_u8 v127, v225 offset:34400
	ds_load_u8 v128, v225 offset:34368
	ds_load_u8 v23, v225 offset:33184
	ds_load_u8 v24, v225 offset:33152
	ds_load_u8 v37, v225 offset:33248
	ds_load_u8 v38, v225 offset:33216
	ds_load_u8 v39, v225 offset:33264
	ds_load_u8 v40, v225 offset:33232
	ds_load_u8 v41, v225 offset:33200
	ds_load_u8 v42, v225 offset:33168
	ds_load_u8 v43, v225 offset:33056
	ds_load_u8 v44, v225 offset:33024
	ds_load_u8 v45, v225 offset:33120
	ds_load_u8 v46, v225 offset:33088
	ds_load_u8 v47, v225 offset:33136
	ds_load_u8 v48, v225 offset:33104
	ds_load_u8 v49, v225 offset:33072
	ds_load_u8 v50, v225 offset:33040
	ds_load_u8 v51, v225 offset:32928
	ds_load_u8 v52, v225 offset:32896
	ds_load_u8 v53, v225 offset:32992
	ds_load_u8 v54, v225 offset:32960
	ds_load_u8 v55, v225 offset:33008
	ds_load_u8 v56, v225 offset:32976
	ds_load_u8 v57, v225 offset:32944
	ds_load_u8 v58, v225 offset:32912
	ds_load_u8 v59, v225 offset:33568
	ds_load_u8 v60, v225 offset:33536
	ds_load_u8 v61, v225 offset:33632
	ds_load_u8 v62, v225 offset:33600
	ds_load_u8 v63, v225 offset:33648
	ds_load_u8 v64, v225 offset:33616
	ds_load_u8 v65, v225 offset:33584
	ds_load_u8 v66, v225 offset:33552
	ds_load_u8 v67, v225 offset:33440
	ds_load_u8 v68, v225 offset:33408
	ds_load_u8 v69, v225 offset:33504
	ds_load_u8 v70, v225 offset:33472
	ds_load_u8 v71, v225 offset:33520
	ds_load_u8 v72, v225 offset:33488
	ds_load_u8 v124, v225 offset:33456
	ds_load_u8 v217, v225 offset:33424
	ds_load_u8 v141, v225 offset:33312
	ds_load_u8 v148, v225 offset:33280
	ds_load_u8 v149, v225 offset:33376
	ds_load_u8 v150, v225 offset:33344
	ds_load_u8 v218, v225 offset:33392
	ds_load_u8 v219, v225 offset:33360
	ds_load_u8 v220, v225 offset:33328
	ds_load_u8 v221, v225 offset:33296
	ds_load_u8 v137, v225 offset:33696
	ds_load_u8 v138, v225 offset:33664
	ds_load_u8 v139, v225 offset:33760
	ds_load_u8 v140, v225 offset:33728
	ds_load_u8 v111, v225 offset:33792
	ds_load_u8 v222, v225 offset:33744
	ds_load_u8 v223, v225 offset:33712
	ds_load_u8 v224, v225 offset:33680
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[9:12], v237
	v_dual_mov_b32 v243, v113 :: v_dual_add_nc_u32 v94, s15, v236
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v90, s15, v145
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v13, v253, s14, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v14, v142, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v24, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_dual_mov_b32 v226, v245 :: v_dual_add_nc_u32 v43, 0, v245
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v92, s15, v228
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s15, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v44, v54, v53, 0xc0c0004
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	v_add_nc_u32_e32 v112, 0, v113
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v53, v148, v141, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v16, v17, v19, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[133:136], v237 offset:16384
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v140, v139, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[137:140], v237 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[33:36], v237 offset:8192
	ds_load_b128 v[29:32], v238
	ds_load_b128 v[25:28], v238 offset:8192
	ds_load_b128 v[85:88], v239
	ds_load_b128 v[81:84], v239 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v54, v150, v149, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[149:152], v238 offset:16384
	ds_load_b128 v[245:248], v238 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v254, v225 offset:34128
	ds_load_u8 v255, v225 offset:34096
	ds_load_u8 v131, v43 offset:32768
	v_perm_b32 v38, v46, v45, 0xc0c0004
	v_perm_b32 v43, v52, v51, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v42, v40, v39, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_perm_b32 v18, v18, v22, 0xc0c0004
	v_perm_b32 v45, v60, v59, 0xc0c0004
	v_perm_b32 v46, v62, v61, 0xc0c0004
	v_perm_b32 v51, v68, v67, 0xc0c0004
	v_perm_b32 v52, v70, v69, 0xc0c0004
	v_perm_b32 v21, v66, v65, 0xc0c0004
	v_perm_b32 v22, v64, v63, 0xc0c0004
	v_perm_b32 v48, v217, v124, 0xc0c0004
	v_perm_b32 v50, v72, v71, 0xc0c0004
	v_lshl_or_b32 v40, v24, 16, v23
	v_lshl_or_b32 v39, v38, 16, v37
	v_lshl_or_b32 v37, v15, 16, v16
	v_lshl_or_b32 v217, v20, 16, v18
	ds_load_u8 v113, v225 offset:34256
	ds_load_u8 v114, v225 offset:34224
	ds_load_u8 v118, v225 offset:34192
	ds_load_u8 v123, v225 offset:34176
	ds_load_u8 v119, v225 offset:34080
	ds_load_u8 v115, v225 offset:34144
	ds_load_u8 v116, v225 offset:34112
	ds_load_u8 v117, v225 offset:34160
	v_lshl_or_b32 v252, v19, 16, v17
	v_lshl_or_b32 v251, v46, 16, v45
	v_perm_b32 v105, v106, v105, 0xc0c0004
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v89, s15, v143
	v_add_nc_u32_e32 v93, s15, v236
	v_add_nc_u32_e32 v129, s15, v228
	v_add_nc_u32_e32 v132, s15, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s12, s0
	s_mov_b32 s12, s13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v38, v44, 16, v43
	v_lshl_or_b32 v250, v52, 16, v51
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(19)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[133:136], v[37:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v108, v108, v119, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v254, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v115, v115, 16, v108
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v91, v0, s14, 1
	v_cndmask_b32_e32 v141, 0x80000000, v13, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v249, v112 offset:32768
	ds_load_u8 v122, v225 offset:34208
	ds_load_u8 v120, v225 offset:34272
	ds_load_u8 v121, v225 offset:34240
	ds_load_u8 v130, v225 offset:34304
	ds_load_u8 v112, v225 offset:34288
	ds_load_u8 v0, v225 offset:34064
	v_perm_b32 v14, v56, v55, 0xc0c0004
	v_perm_b32 v55, v221, v220, 0xc0c0004
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v148, v13, s[36:39], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v13, v58, v57, 0xc0c0004
	v_perm_b32 v56, v219, v218, 0xc0c0004
	v_perm_b32 v57, v224, v223, 0xc0c0004
	v_lshl_or_b32 v220, v42, 16, v41
	v_lshl_or_b32 v219, v47, 16, v49
	v_lshl_or_b32 v218, v14, 16, v13
	v_lshl_or_b32 v223, v22, 16, v21
	v_lshl_or_b32 v221, v56, 16, v55
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v222, v249, 0xc0c0004
	v_lshl_or_b32 v249, v54, 16, v53
	v_lshl_or_b32 v222, v50, 16, v48
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[217:220], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v224, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[9:12], v[37:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[37:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[217:220], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[137:140], v[37:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[133:136], v[217:220], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[29:32], v[249:252], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[221:224], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[25:28], v[249:252], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[221:224], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[65:72], v[149:152], v[249:252], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[149:152], v[221:224], v[33:40] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v124, v225 offset:34032
	ds_load_u8 v133, v225 offset:34000
	ds_load_u8 v134, v225 offset:33968
	ds_load_u8 v135, v225 offset:33936
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[137:140], v[217:220], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v136, v225 offset:33920
	ds_load_u8 v137, v225 offset:33824
	ds_load_u8 v138, v225 offset:33888
	ds_load_u8 v139, v225 offset:33856
	ds_load_u8 v149, v225 offset:33904
	ds_load_u8 v150, v225 offset:33872
	ds_load_u8 v140, v225 offset:33840
	ds_load_u8 v151, v225 offset:33808
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[245:248], v[249:252], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v217, v225 offset:34672
	ds_load_u8 v249, v225 offset:34768
	ds_load_u8 v250, v225 offset:34736
	ds_load_u8 v251, v225 offset:34704
	ds_load_u8 v218, v225 offset:34640
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v219, v225 offset:34608
	ds_load_u8 v220, v225 offset:34576
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v0, v0, v255, 0xc0c0004
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[245:248], v[221:224], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v221, v225 offset:34544
	ds_load_u8 v222, v225 offset:34512
	ds_load_u8 v223, v225 offset:34480
	ds_load_u8 v224, v225 offset:34448
	ds_load_u8 v245, v225 offset:34416
	ds_load_u8 v246, v225 offset:34384
	ds_load_u8 v247, v225 offset:34352
	ds_load_u8 v248, v225 offset:34320
	v_lshl_or_b32 v116, v120, 16, v122
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v107, v136, v107, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v106, v111, v137, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v108, v139, v138, 0xc0c0004
	v_perm_b32 v111, v118, v114, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v118, v135, v134, 0xc0c0004
	v_perm_b32 v119, v133, v124, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v120, v151, v140, 0xc0c0004
	v_lshl_or_b32 v135, v117, 16, v0
	v_perm_b32 v0, v150, v149, 0xc0c0004
	v_lshl_or_b32 v114, v105, 16, v107
	v_lshl_or_b32 v113, v108, 16, v106
	v_lshl_or_b32 v136, v112, 16, v111
	v_lshl_or_b32 v134, v119, 16, v118
	v_lshl_or_b32 v133, v0, 16, v120
	v_perm_b32 v0, v103, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[113:116], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[113:116], v[41:48] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[105:108], v95, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[133:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[133:136], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v84, v110, v104, 0xc0c0004
	v_perm_b32 v85, v125, v102, 0xc0c0004
	v_perm_b32 v81, v98, v97, 0xc0c0004
	v_perm_b32 v82, v109, v99, 0xc0c0004
	v_perm_b32 v83, v101, v100, 0xc0c0004
	v_perm_b32 v86, v130, v126, 0xc0c0004
	v_perm_b32 v87, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v220, v219, 0xc0c0004
	v_perm_b32 v130, v218, v217, 0xc0c0004
	v_lshl_or_b32 v126, v85, 16, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[109:112], v94, s[20:23], 0 offen
	buffer_load_b128 v[97:100], v92, s[20:23], 0 offen
	buffer_load_b128 v[101:104], v90, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v218, 0x80000000, v91, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v219, v222, v221, 0xc0c0004
	v_lshl_or_b32 v128, v81, 16, v0
	v_lshl_or_b32 v127, v83, 16, v82
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[89:92], v89, s[20:23], 0 offen
	buffer_load_b128 v[93:96], v93, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v222, v249, v131, 0xc0c0004
	v_lshl_or_b32 v125, v87, 16, v86
	v_lshl_or_b32 v131, v130, 16, v88
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[81:84], v129, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v221, v246, v245, 0xc0c0004
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v245, v141, s[24:27], 0 offen
	buffer_load_u16 v246, v218, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[137:140], v239 offset:16384
	ds_load_b128 v[149:152], v239 offset:24576
	ds_load_b128 v[117:120], v240 offset:16384
	ds_load_b128 v[121:124], v240 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v217, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v220, v248, v247, 0xc0c0004
	v_perm_b32 v0, v251, v250, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[125:128], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[125:128], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v219, 16, v217
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[137:140], v[113:116], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[149:152], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[137:140], v[133:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[149:152], v[133:136], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v113, v59
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[117:120], v[125:128], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[121:124], v[125:128], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v58
	v_cvt_f32_i32_e32 v115, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v85, 16, v148
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v241, v85 offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[85:88], v132, s[20:23], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v132, 0x80000000, v244, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v129, v221, 16, v220
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v244, v132, s[36:39], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v132, v222, 16, v0
	v_cvt_f32_i32_e32 v0, v60
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[129:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[129:132], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[129:132], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[129:132], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v80, v41
	v_cvt_f32_i32_e32 v77, v46
	v_cvt_f32_i32_e32 v78, v47
	v_cvt_f32_i32_e32 v79, v48
	v_cvt_f32_i32_e32 v76, v9
	v_cvt_f32_i32_e32 v73, v14
	v_cvt_f32_i32_e32 v74, v15
	v_cvt_f32_i32_e32 v75, v16
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
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v64
	v_cvt_f32_i32_e32 v66, v63
	v_cvt_f32_i32_e32 v67, v62
	v_cvt_f32_i32_e32 v68, v61
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v49, v72
	v_cvt_f32_i32_e32 v54, v71
	v_cvt_f32_i32_e32 v55, v70
	v_cvt_f32_i32_e32 v56, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v69, v45
	v_cvt_f32_i32_e32 v70, v44
	v_cvt_f32_i32_e32 v71, v43
	v_cvt_f32_i32_e32 v72, v42
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v42, v53
	v_cvt_f32_i32_e32 v43, v52
	v_cvt_f32_i32_e32 v44, v51
	v_cvt_f32_i32_e32 v45, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v120, v24
	v_cvt_f32_i32_e32 v121, v23
	v_cvt_f32_i32_e32 v122, v22
	v_cvt_f32_i32_e32 v123, v21
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v21, v40
	v_cvt_f32_i32_e32 v22, v39
	v_cvt_f32_i32_e32 v23, v38
	v_cvt_f32_i32_e32 v24, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v20
	v_cvt_f32_i32_e32 v117, v19
	v_cvt_f32_i32_e32 v118, v18
	v_cvt_f32_i32_e32 v119, v17
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v17, v36
	v_cvt_f32_i32_e32 v18, v35
	v_cvt_f32_i32_e32 v19, v34
	v_cvt_f32_i32_e32 v20, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v13
	v_cvt_f32_i32_e32 v125, v12
	v_cvt_f32_i32_e32 v126, v11
	v_cvt_f32_i32_e32 v127, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v29
	v_cvt_f32_i32_e32 v11, v28
	v_cvt_f32_i32_e32 v12, v27
	v_cvt_f32_i32_e32 v13, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v37, v111, v107, 0x4000501
	v_perm_b32 v39, v111, v107, 0x6020703
	s_waitcnt vmcnt(7)
	v_perm_b32 v38, v103, v99, 0x4000501
	v_perm_b32 v40, v103, v99, 0x6020703
	v_perm_b32 v50, v112, v108, 0x4000501
	v_perm_b32 v51, v104, v100, 0x4000501
	v_perm_b32 v52, v112, v108, 0x6020703
	v_perm_b32 v53, v104, v100, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(5)
	v_perm_b32 v57, v93, v89, 0x4000501
	v_perm_b32 v59, v93, v89, 0x6020703
	v_perm_b32 v61, v94, v90, 0x4000501
	v_perm_b32 v63, v94, v90, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v26, v109, v105, 0x4000501
	v_perm_b32 v27, v101, v97, 0x4000501
	v_perm_b32 v28, v109, v105, 0x6020703
	v_perm_b32 v29, v101, v97, 0x6020703
	v_perm_b32 v33, v110, v106, 0x4000501
	v_perm_b32 v34, v102, v98, 0x4000501
	v_perm_b32 v35, v110, v106, 0x6020703
	v_perm_b32 v36, v102, v98, 0x6020703
	v_perm_b32 v99, v38, v37, 0x7060302
	v_perm_b32 v100, v38, v37, 0x5040100
	v_perm_b32 v101, v40, v39, 0x7060302
	v_perm_b32 v102, v40, v39, 0x5040100
	v_perm_b32 v103, v51, v50, 0x7060302
	v_perm_b32 v104, v51, v50, 0x5040100
	v_perm_b32 v105, v53, v52, 0x7060302
	v_perm_b32 v106, v53, v52, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v89, v96, v92, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v93, v29, v28, 0x7060302
	v_perm_b32 v94, v29, v28, 0x5040100
	v_perm_b32 v97, v36, v35, 0x7060302
	v_perm_b32 v98, v36, v35, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v58, v85, v81, 0x4000501
	v_perm_b32 v60, v85, v81, 0x6020703
	v_perm_b32 v62, v86, v82, 0x4000501
	v_perm_b32 v64, v86, v82, 0x6020703
	v_perm_b32 v81, v95, v91, 0x4000501
	v_perm_b32 v107, v58, v57, 0x7060302
	v_perm_b32 v108, v58, v57, 0x5040100
	v_perm_b32 v109, v60, v59, 0x7060302
	v_perm_b32 v110, v60, v59, 0x5040100
	v_perm_b32 v111, v62, v61, 0x7060302
	v_perm_b32 v112, v62, v61, 0x5040100
	v_perm_b32 v128, v64, v63, 0x7060302
	v_perm_b32 v129, v64, v63, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[37:40], v242 offset:35328
	ds_load_b128 v[50:53], v242 offset:35344
	ds_load_b128 v[57:60], v242 offset:34816
	ds_load_b128 v[61:64], v242 offset:34832
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v82, v87, v83, 0x4000501
	v_perm_b32 v85, v95, v91, 0x6020703
	v_perm_b32 v83, v87, v83, 0x6020703
	v_perm_b32 v86, v96, v92, 0x4000501
	v_perm_b32 v87, v88, v84, 0x4000501
	v_perm_b32 v84, v88, v84, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v90, 16, v246
	v_lshlrev_b32_e32 v88, 16, v245
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v95, v34, v33, 0x7060302
	v_perm_b32 v96, v34, v33, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v33, v82, v81, 0x7060302
	v_perm_b32 v34, v82, v81, 0x5040100
	v_perm_b32 v35, v83, v85, 0x7060302
	v_perm_b32 v36, v83, v85, 0x5040100
	v_perm_b32 v28, v87, v86, 0x7060302
	v_perm_b32 v29, v87, v86, 0x5040100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v91, v27, v26, 0x7060302
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v82, v51, v88
	v_mul_f32_e32 v51, v51, v90
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v85, v60, v88
	v_mul_f32_e32 v87, v58, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v92, v27, v26, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v26, v84, v89, 0x7060302
	v_perm_b32 v27, v84, v89, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v37, v88
	v_mul_f32_e32 v83, v52, v88
	v_mul_f32_e32 v84, v53, v88
	v_mul_f32_e32 v37, v37, v90
	v_mul_f32_e32 v52, v52, v90
	v_dual_mul_f32 v53, v53, v90 :: v_dual_mul_f32 v86, v59, v88
	v_mul_f32_e32 v89, v57, v88
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v130, v64, v88 :: v_dual_mul_f32 v57, v57, v90
	v_mul_f32_e32 v131, v63, v88
	v_dual_mul_f32 v132, v62, v88 :: v_dual_mul_f32 v63, v63, v90
	v_mul_f32_e32 v133, v61, v88
	v_dual_mul_f32 v134, v50, v88 :: v_dual_mul_f32 v61, v61, v90
	v_mul_f32_e32 v135, v40, v88
	v_dual_mul_f32 v136, v39, v88 :: v_dual_fmac_f32 v205, v86, v113
	v_dual_mul_f32 v137, v38, v88 :: v_dual_mul_f32 v40, v40, v90
	v_mul_f32_e32 v60, v60, v90
	v_mul_f32_e32 v59, v59, v90
	v_mul_f32_e32 v58, v58, v90
	v_mul_f32_e32 v64, v64, v90
	v_mul_f32_e32 v62, v62, v90
	v_mul_f32_e32 v50, v50, v90
	v_dual_mul_f32 v39, v39, v90 :: v_dual_fmac_f32 v208, v89, v115
	v_mul_f32_e32 v38, v38, v90
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v207, v87, v114 :: v_dual_fmac_f32 v206, v85, v0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v244
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v196, v57, v119 :: v_dual_fmac_f32 v195, v58, v118
	v_dual_fmac_f32 v193, v59, v117 :: v_dual_fmac_f32 v194, v60, v116
	v_dual_fmac_f32 v192, v61, v123 :: v_dual_fmac_f32 v191, v62, v122
	v_dual_fmac_f32 v190, v63, v121 :: v_dual_fmac_f32 v189, v64, v120
	v_dual_fmac_f32 v212, v37, v76 :: v_dual_fmac_f32 v155, v39, v126
	v_dual_fmac_f32 v156, v38, v127 :: v_dual_fmac_f32 v211, v51, v73
	v_dual_fmac_f32 v154, v40, v125 :: v_dual_fmac_f32 v153, v50, v124
	v_dual_fmac_f32 v210, v52, v74 :: v_dual_fmac_f32 v209, v53, v75
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v241, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v242 offset:35328
	ds_load_b128 v[50:53], v242 offset:35344
	ds_load_b128 v[57:60], v242 offset:34816
	ds_load_b128 v[61:64], v242 offset:34832
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v201, v130, v65 :: v_dual_fmac_f32 v216, v81, v80
	v_add_nc_u32_e32 v81, 0x4000, v229
	v_add_nc_u32_e32 v0, 0x4000, v230
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v144, v[146:147] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v229, v91, v92 offset1:16
	ds_store_2addr_b32 v230, v93, v94 offset1:16
	ds_store_2addr_b32 v231, v95, v96 offset1:16
	ds_store_2addr_b32 v232, v97, v98 offset1:16
	ds_store_2addr_b32 v233, v99, v100 offset1:16
	ds_store_2addr_b32 v229, v101, v102 offset0:160 offset1:176
	ds_store_2addr_b32 v234, v103, v104 offset1:16
	ds_store_2addr_b32 v235, v105, v106 offset1:16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v203, v132, v67 :: v_dual_fmac_f32 v202, v131, v66
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v81, v107, v108 offset1:16
	v_dual_mov_b32 v113, v243 :: v_dual_fmac_f32 v204, v133, v68
	v_dual_mov_b32 v80, v144 :: v_dual_fmac_f32 v197, v134, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v200, v137, v72 :: v_dual_fmac_f32 v199, v136, v71
	v_dual_fmac_f32 v198, v135, v70 :: v_dual_fmac_f32 v215, v82, v77
	v_dual_fmac_f32 v214, v83, v78 :: v_dual_fmac_f32 v213, v84, v79
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(12)
	v_mul_f32_e32 v65, v51, v88
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v0, v109, v110 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v67, v53, v88 :: v_dual_add_nc_u32 v0, 0x4000, v231
	v_dual_mul_f32 v51, v51, v90 :: v_dual_mul_f32 v76, v50, v88
	v_dual_mul_f32 v66, v52, v88 :: v_dual_mul_f32 v53, v53, v90
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v0, v111, v112 offset1:16
	v_add_nc_u32_e32 v0, 0x4000, v232
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(13)
	v_dual_mul_f32 v52, v52, v90 :: v_dual_mul_f32 v69, v59, v88
	v_dual_mul_f32 v68, v60, v88 :: v_dual_mul_f32 v59, v59, v90
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v0, v128, v129 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v37, v88
	v_mul_f32_e32 v50, v50, v90
	v_dual_mul_f32 v37, v37, v90 :: v_dual_mul_f32 v70, v58, v88
	v_dual_mul_f32 v71, v57, v88 :: v_dual_mul_f32 v60, v60, v90
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v161, v0, v48 :: v_dual_add_nc_u32 v0, 0x4000, v233
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(13)
	v_mul_f32_e32 v72, v64, v88
	v_dual_mul_f32 v73, v63, v88 :: v_dual_mul_f32 v58, v58, v90
	v_mul_f32_e32 v74, v62, v88
	v_dual_mul_f32 v75, v61, v88 :: v_dual_mul_f32 v64, v64, v90
	v_dual_mul_f32 v77, v40, v88 :: v_dual_mul_f32 v62, v62, v90
	v_mul_f32_e32 v78, v39, v88
	v_dual_mul_f32 v79, v38, v88 :: v_dual_mul_f32 v40, v40, v90
	v_mul_f32_e32 v57, v57, v90
	v_mul_f32_e32 v63, v63, v90
	v_mul_f32_e32 v61, v61, v90
	v_mul_f32_e32 v39, v39, v90
	v_dual_mul_f32 v38, v38, v90 :: v_dual_fmac_f32 v173, v79, v45
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v0, v33, v34 offset1:16
	ds_store_2addr_b32 v81, v35, v36 offset0:160 offset1:176
	v_dual_mov_b32 v245, v226 :: v_dual_add_nc_u32 v0, 0x4000, v234
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v188, v71, v32 :: v_dual_fmac_f32 v187, v65, v41
	v_dual_fmac_f32 v186, v70, v31 :: v_dual_fmac_f32 v169, v57, v20
	v_dual_fmac_f32 v182, v69, v30 :: v_dual_fmac_f32 v183, v67, v47
	v_dual_fmac_f32 v184, v68, v25 :: v_dual_fmac_f32 v185, v66, v46
	v_dual_fmac_f32 v180, v75, v56 :: v_dual_fmac_f32 v167, v60, v17
	v_dual_fmac_f32 v178, v74, v55 :: v_dual_fmac_f32 v165, v61, v24
	v_dual_fmac_f32 v176, v73, v54 :: v_dual_fmac_f32 v159, v39, v12
	v_dual_fmac_f32 v174, v72, v49 :: v_dual_fmac_f32 v163, v63, v22
	v_dual_fmac_f32 v171, v77, v43 :: v_dual_fmac_f32 v172, v78, v44
	v_dual_fmac_f32 v179, v51, v9 :: v_dual_fmac_f32 v170, v76, v42
	v_dual_fmac_f32 v181, v37, v16 :: v_dual_fmac_f32 v168, v58, v19
	v_fmac_f32_e32 v177, v52, v14
	v_dual_fmac_f32 v166, v59, v18 :: v_dual_fmac_f32 v175, v53, v15
	v_fmac_f32_e32 v164, v62, v23
	v_dual_fmac_f32 v162, v64, v21 :: v_dual_fmac_f32 v157, v50, v10
	v_fmac_f32_e32 v160, v38, v13
	v_fmac_f32_e32 v158, v40, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v0, v28, v29 offset1:16
	v_add_nc_u32_e32 v0, 0x4000, v235
	ds_store_2addr_b32 v0, v26, v27 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v44, off, off offset:8
	scratch_load_b32 v23, off, off offset:4
	scratch_load_b32 v25, off, off offset:12
	scratch_load_b32 v26, off, off offset:56
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v113, v4
	v_mov_b32_e32 v245, v5
	v_mov_b32_e32 v23, v6
	v_mov_b32_e32 v25, v7
.LBB0_8:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v227, v225 offset:32864
	ds_load_u8_d16 v232, v225 offset:32896
	ds_load_u8_d16 v233, v225 offset:32928
	ds_load_u8_d16 v234, v225 offset:32960
	ds_load_u8_d16 v10, v225 offset:32976
	ds_load_u8_d16 v12, v225 offset:32944
	ds_load_u8_d16 v13, v225 offset:32912
	ds_load_u8_d16 v11, v225 offset:32880
	ds_load_u8_d16 v221, v225 offset:32992
	ds_load_u8_d16 v218, v225 offset:33024
	ds_load_u8_d16 v217, v225 offset:33056
	ds_load_u8_d16 v150, v225 offset:33088
	ds_load_u8_d16 v93, v225 offset:33104
	ds_load_u8_d16 v94, v225 offset:33072
	ds_load_u8_d16 v95, v225 offset:33040
	ds_load_u8_d16 v92, v225 offset:33008
	ds_load_u8_d16 v17, v225 offset:33120
	ds_load_u8_d16 v152, v225 offset:33152
	ds_load_u8_d16 v19, v225 offset:33184
	ds_load_u8_d16 v18, v225 offset:33216
	ds_load_u8_d16 v101, v225 offset:33232
	ds_load_u8_d16 v103, v225 offset:33200
	ds_load_u8_d16 v104, v225 offset:33168
	ds_load_u8_d16 v102, v225 offset:33136
	ds_load_u8_d16 v21, v225 offset:33248
	ds_load_u8_d16 v242, v225 offset:33280
	ds_load_u8_d16 v243, v225 offset:33312
	ds_load_u8_d16 v244, v225 offset:33344
	ds_load_u8_d16 v1, v225 offset:33360
	ds_load_u8_d16 v3, v225 offset:33328
	ds_load_u8_d16 v4, v225 offset:33296
	ds_load_u8_d16 v111, v225 offset:33264
	ds_load_u8_d16 v248, v225 offset:33376
	ds_load_u8_d16 v249, v225 offset:33408
	ds_load_u8_d16 v250, v225 offset:33440
	ds_load_u8_d16 v251, v225 offset:33472
	ds_load_u8_d16 v28, v225 offset:33488
	ds_load_u8_d16 v86, v225 offset:33456
	ds_load_u8_d16 v89, v225 offset:33424
	ds_load_u8_d16 v14, v225 offset:33392
	ds_load_u8_d16 v252, v225 offset:33504
	ds_load_u8_d16 v255, v225 offset:33536
	ds_load_u8_d16 v149, v225 offset:33568
	ds_load_u8_d16 v254, v225 offset:33600
	ds_load_u8_d16 v99, v225 offset:33616
	ds_load_u8_d16 v105, v225 offset:33584
	ds_load_u8_d16 v107, v225 offset:33552
	ds_load_u8_d16 v97, v225 offset:33520
	ds_load_u8_d16 v141, v225 offset:33632
	ds_load_u8_d16 v151, v225 offset:33664
	ds_load_u8_d16 v219, v225 offset:33696
	ds_load_u8_d16 v148, v225 offset:33728
	ds_load_u8_d16 v112, v225 offset:33744
	ds_load_u8_d16 v115, v225 offset:33712
	ds_load_u8_d16 v117, v225 offset:33680
	ds_load_u8_d16 v109, v225 offset:33648
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v0, 0, v113
	ds_load_u8_d16 v20, v225 offset:33760
	ds_load_u8_d16 v127, v225 offset:33792
	ds_load_u8_d16 v128, v225 offset:33824
	ds_load_u8_d16 v129, v225 offset:33856
	ds_load_u8_d16 v130, v225 offset:33888
	ds_load_u8_d16 v2, v225 offset:33872
	ds_load_u8_d16 v5, v225 offset:33840
	ds_load_u8_d16 v6, v225 offset:33808
	ds_load_u8_d16 v135, v225 offset:33920
	ds_load_u8_d16 v136, v225 offset:33952
	ds_load_u8_d16 v137, v225 offset:33984
	ds_load_u8_d16 v138, v225 offset:34016
	ds_load_u8_d16 v16, v225 offset:34000
	ds_load_u8_d16 v87, v225 offset:33968
	ds_load_u8_d16 v90, v225 offset:33936
	ds_load_u8_d16 v15, v225 offset:33904
	ds_load_u8_d16 v139, v225 offset:34048
	ds_load_u8_d16 v140, v225 offset:34080
	ds_load_u8_d16 v143, v225 offset:34112
	ds_load_u8_d16 v144, v225 offset:34144
	ds_load_u8_d16 v100, v225 offset:34128
	ds_load_u8_d16 v106, v225 offset:34096
	ds_load_u8_d16 v108, v225 offset:34064
	ds_load_u8_d16 v96, v225 offset:34032
	ds_load_u8_d16 v145, v225 offset:34176
	ds_load_u8_d16 v146, v225 offset:34208
	ds_load_u8_d16 v147, v225 offset:34240
	ds_load_u8_d16 v226, v225 offset:34272
	ds_load_u8_d16 v113, v225 offset:34256
	ds_load_u8_d16 v116, v225 offset:34224
	ds_load_u8_d16 v118, v225 offset:34192
	ds_load_u8_d16 v110, v225 offset:34160
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v253, 6, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v23
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v24, 7, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v22, 3, v253
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v23, off offset:4
	scratch_store_b32 off, v24, off offset:56
	scratch_store_b32 off, v30, off offset:12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v23, 0x210, 0, vcc_lo
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v24, 6, v24
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v133, v225 offset:34304
	ds_load_u8_d16 v134, v225 offset:34336
	ds_load_u8_d16 v131, v225 offset:34368
	ds_load_u8_d16 v132, v225 offset:34400
	ds_load_u8_d16 v7, v225 offset:34384
	ds_load_u8_d16 v8, v225 offset:34352
	ds_load_u8_d16 v9, v225 offset:34320
	ds_load_u8_d16 v125, v225 offset:34288
	ds_load_u8_d16 v228, v225 offset:34432
	ds_load_u8_d16 v229, v225 offset:34464
	ds_load_u8_d16 v230, v225 offset:34496
	ds_load_u8_d16 v231, v225 offset:34528
	ds_load_u8_d16 v84, v225 offset:34512
	ds_load_u8_d16 v88, v225 offset:34480
	ds_load_u8_d16 v91, v225 offset:34448
	ds_load_u8_d16 v85, v225 offset:34416
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v22, v23, v22
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v235, v225 offset:34560
	ds_load_u8_d16 v236, v225 offset:34592
	ds_load_u8_d16 v237, v225 offset:34624
	ds_load_u8_d16 v238, v225 offset:34656
	ds_load_u8_d16 v114, v225 offset:34640
	ds_load_u8_d16 v119, v225 offset:34608
	ds_load_u8_d16 v120, v225 offset:34576
	ds_load_u8_d16 v98, v225 offset:34544
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v220, v225 offset:34688
	ds_load_u8_d16 v239, v225 offset:34720
	ds_load_u8_d16 v240, v225 offset:34752
	ds_load_u8_d16 v241, v225 offset:34784
	ds_load_u8_d16 v122, v225 offset:34768
	ds_load_u8_d16 v123, v225 offset:34736
	ds_load_u8_d16 v124, v225 offset:34704
	ds_load_u8_d16 v121, v225 offset:34672
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v27, 0, v245
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_or3_b32 v22, v24, v26, v22
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v24, v225 offset:32768
	ds_load_u8_d16 v245, v225 offset:32784
	ds_load_u8_d16 v26, v225 offset:32800
	ds_load_u8_d16 v246, v225 offset:32816
	ds_load_u8_d16 v25, v225 offset:32832
	ds_load_u8_d16 v247, v225 offset:32848
	ds_load_u8_d16 v225, v0 offset:32768
	ds_load_u8_d16 v126, v27 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v23, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_mov_b32_e32 v46, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v23, v22, v23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v22, 48, v23
	v_xor_b32_e32 v27, 32, v23
	v_xor_b32_e32 v29, 16, v23
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v23, 0, v23
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v222, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v223, 0, v27
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v22, 0, v29
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v30, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_mov_b32 s12, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v152, v19, 0xc0c0004
	v_perm_b32 v27, v18, v21, 0xc0c0004
	v_perm_b32 v29, v218, v217, 0xc0c0004
	v_perm_b32 v30, v150, v17, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[70:73], v23
	ds_load_b128 v[74:77], v23 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v33, v95, v94, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v232, v233, 0xc0c0004
	v_perm_b32 v27, v234, v221, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v29
	v_perm_b32 v34, v93, v102, 0xc0c0004
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	v_lshl_or_b32 v30, v27, 16, v0
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v24, v26, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v27, v25, v227, 0xc0c0004
	v_lshl_or_b32 v35, v34, 16, v33
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_lshl_or_b32 v29, v27, 16, v0
	v_perm_b32 v0, v104, v103, 0xc0c0004
	v_perm_b32 v27, v101, v111, 0xc0c0004
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v53, s19 :: v_dual_mov_b32 v52, s18
	v_lshl_or_b32 v36, v27, 16, v0
	v_perm_b32 v0, v13, v12, 0xc0c0004
	v_perm_b32 v27, v10, v92, 0xc0c0004
	v_dual_mov_b32 v51, s17 :: v_dual_mov_b32 v50, s16
	v_dual_mov_b32 v49, s15 :: v_dual_mov_b32 v48, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v34, v27, 16, v0
	v_perm_b32 v0, v245, v246, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v247, v11, 0xc0c0004
	v_dual_mov_b32 v47, s13 :: v_dual_mov_b32 v46, s12
	v_lshl_or_b32 v33, v27, 16, v0
	v_perm_b32 v0, v151, v219, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[70:73], v[29:32], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[74:77], v[29:32], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[70:73], v[33:36], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[74:77], v[33:36], v[46:53] neg_lo:[1,1,0]
	v_perm_b32 v27, v148, v20, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[33:36], v22
	ds_load_b128 v[70:73], v22 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v29, v255, v149, 0xc0c0004
	v_perm_b32 v30, v254, v141, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v249, v250, 0xc0c0004
	v_perm_b32 v27, v251, v252, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v29
	v_lshl_or_b32 v30, v27, 16, v0
	v_perm_b32 v0, v242, v243, 0xc0c0004
	v_perm_b32 v27, v244, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v27, 16, v0
	v_perm_b32 v0, v117, v115, 0xc0c0004
	v_perm_b32 v27, v112, v225, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[33:36], v[29:32], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[70:73], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v29, v107, v105, 0xc0c0004
	v_perm_b32 v30, v99, v109, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v89, v86, 0xc0c0004
	v_perm_b32 v27, v28, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v29
	v_lshl_or_b32 v30, v27, 16, v0
	v_perm_b32 v0, v4, v3, 0xc0c0004
	v_perm_b32 v27, v1, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v27, 16, v0
	v_perm_b32 v0, v145, v146, 0xc0c0004
	v_perm_b32 v27, v147, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[33:36], v[29:32], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[29:32], v[46:53] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[33:36], v223
	ds_load_b128 v[70:73], v223 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v29, v139, v140, 0xc0c0004
	v_perm_b32 v30, v143, v144, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v135, v136, 0xc0c0004
	v_perm_b32 v27, v137, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v29
	v_lshl_or_b32 v30, v27, 16, v0
	v_perm_b32 v0, v127, v128, 0xc0c0004
	v_perm_b32 v27, v129, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v27, 16, v0
	v_perm_b32 v0, v118, v116, 0xc0c0004
	v_perm_b32 v27, v113, v125, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[33:36], v[29:32], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[70:73], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v29, v108, v106, 0xc0c0004
	v_perm_b32 v30, v100, v110, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v90, v87, 0xc0c0004
	v_perm_b32 v27, v16, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v29
	v_lshl_or_b32 v30, v27, 16, v0
	v_perm_b32 v0, v6, v5, 0xc0c0004
	v_perm_b32 v27, v2, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v27, 16, v0
	v_perm_b32 v0, v220, v239, 0xc0c0004
	v_perm_b32 v27, v240, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[33:36], v[29:32], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[29:32], v[46:53] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[33:36], v222
	ds_load_b128 v[70:73], v222 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v29, v235, v236, 0xc0c0004
	v_perm_b32 v30, v237, v238, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v228, v229, 0xc0c0004
	v_perm_b32 v27, v230, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v29
	v_lshl_or_b32 v30, v27, 16, v0
	v_perm_b32 v0, v133, v134, 0xc0c0004
	v_perm_b32 v27, v131, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v27, 16, v0
	v_perm_b32 v0, v124, v123, 0xc0c0004
	v_perm_b32 v27, v122, v126, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[33:36], v[29:32], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[70:73], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v29, v120, v119, 0xc0c0004
	v_perm_b32 v30, v114, v121, 0xc0c0004
	v_lshl_or_b32 v32, v27, 16, v0
	v_perm_b32 v0, v91, v88, 0xc0c0004
	v_perm_b32 v27, v84, v98, 0xc0c0004
	v_cvt_f32_i32_e32 v41, v41
	v_lshl_or_b32 v31, v30, 16, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v27, 16, v0
	v_perm_b32 v0, v9, v8, 0xc0c0004
	v_perm_b32 v27, v7, v85, 0xc0c0004
	v_lshl_or_b32 v29, v27, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[33:36], v[29:32], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[29:32], v[46:53] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v34, v38
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v35, v42
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v38, v44
	v_cvt_f32_i32_e32 v40, v62
	v_cvt_f32_i32_e32 v42, v63
	v_cvt_f32_i32_e32 v44, v64
	v_cvt_f32_i32_e32 v45, v65
	v_cvt_f32_i32_e32 v224, v66
	v_cvt_f32_i32_e32 v27, v67
	v_cvt_f32_i32_e32 v32, v68
	v_cvt_f32_i32_e32 v62, v69
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v0, v47
	v_cvt_f32_i32_e32 v29, v48
	v_cvt_f32_i32_e32 v30, v49
	v_cvt_f32_i32_e32 v31, v50
	v_cvt_f32_i32_e32 v46, v51
	v_cvt_f32_i32_e32 v48, v52
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v47, v58
	v_cvt_f32_i32_e32 v50, v59
	v_cvt_f32_i32_e32 v51, v60
	v_cvt_f32_i32_e32 v52, v61
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v62, off offset:80
	scratch_store_b32 off, v32, off offset:76
	scratch_store_b32 off, v31, off offset:72
	scratch_store_b32 off, v30, off offset:68
	scratch_store_b32 off, v29, off offset:64
	scratch_store_b32 off, v0, off offset:60
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v29, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v152, v19, 0xc0c0004
	v_perm_b32 v18, v18, v21, 0xc0c0004
	v_perm_b32 v19, v218, v217, 0xc0c0004
	v_perm_b32 v17, v150, v17, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[75:78], v23 offset:16384
	ds_load_b128 v[79:82], v22 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s19, s12
	v_lshl_or_b32 v60, v18, 16, v0
	v_perm_b32 v0, v232, v233, 0xc0c0004
	v_lshl_or_b32 v59, v17, 16, v19
	v_perm_b32 v17, v234, v221, 0xc0c0004
	v_perm_b32 v18, v255, v149, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshl_or_b32 v58, v17, 16, v0
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v24, v26, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v17, v25, v227, 0xc0c0004
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_perm_b32 v19, v254, v141, 0xc0c0004
	v_lshl_or_b32 v57, v17, 16, v0
	v_perm_b32 v0, v151, v219, 0xc0c0004
	v_perm_b32 v17, v148, v20, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[148:151], v23 offset:24576
	ds_load_b128 v[29:32], v22 offset:24576
	v_mov_b32_e32 v141, v253
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v25, v147, v226, 0xc0c0004
	v_lshl_or_b32 v63, v19, 16, v18
	v_lshl_or_b32 v64, v17, 16, v0
	v_perm_b32 v0, v249, v250, 0xc0c0004
	v_perm_b32 v17, v251, v252, 0xc0c0004
	v_perm_b32 v26, v139, v140, 0xc0c0004
	v_perm_b32 v10, v10, v92, 0xc0c0004
	v_perm_b32 v99, v99, v109, 0xc0c0004
	v_perm_b32 v86, v89, v86, 0xc0c0004
	v_lshl_or_b32 v62, v17, 16, v0
	v_perm_b32 v0, v242, v243, 0xc0c0004
	v_perm_b32 v17, v244, v248, 0xc0c0004
	v_dual_mov_b32 v255, s19 :: v_dual_mov_b32 v252, s16
	v_dual_mov_b32 v254, s18 :: v_dual_mov_b32 v253, s17
	v_mov_b32_e32 v250, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v61, v17, 16, v0
	v_dual_mov_b32 v251, s15 :: v_dual_mov_b32 v248, s12
	v_mov_b32_e32 v249, s13
	v_perm_b32 v0, v145, v146, 0xc0c0004
	v_perm_b32 v28, v28, v97, 0xc0c0004
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v1, v1, v14, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[57:60], v[248:255] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[148:151], v[57:60], v[248:255] neg_lo:[1,1,0]
	v_lshl_or_b32 v60, v25, 16, v0
	v_perm_b32 v0, v135, v136, 0xc0c0004
	v_perm_b32 v25, v137, v138, 0xc0c0004
	v_perm_b32 v57, v143, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[61:64], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[61:64], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v61, v93, v102, 0xc0c0004
	v_lshl_or_b32 v58, v25, 16, v0
	v_perm_b32 v0, v127, v128, 0xc0c0004
	v_perm_b32 v25, v129, v130, 0xc0c0004
	v_lshl_or_b32 v59, v57, 16, v26
	v_perm_b32 v26, v95, v94, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[92:95], v223 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v102, v112, v225, 0xc0c0004
	v_lshl_or_b32 v57, v25, 16, v0
	v_perm_b32 v0, v104, v103, 0xc0c0004
	v_perm_b32 v25, v101, v111, 0xc0c0004
	v_lshl_or_b32 v63, v61, 16, v26
	v_perm_b32 v101, v117, v115, 0xc0c0004
	v_perm_b32 v103, v107, v105, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[135:138], v222 offset:24576
	ds_load_b128 v[143:146], v222 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v64, v25, 16, v0
	v_perm_b32 v0, v13, v12, 0xc0c0004
	v_perm_b32 v25, v240, v241, 0xc0c0004
	v_lshl_or_b32 v130, v102, 16, v101
	v_lshl_or_b32 v129, v99, 16, v103
	v_lshl_or_b32 v128, v28, 16, v86
	v_lshl_or_b32 v62, v10, 16, v0
	v_perm_b32 v0, v245, v246, 0xc0c0004
	v_perm_b32 v10, v247, v11, 0xc0c0004
	v_lshl_or_b32 v127, v1, 16, v3
	v_perm_b32 v3, v118, v116, 0xc0c0004
	v_perm_b32 v28, v113, v125, 0xc0c0004
	v_perm_b32 v86, v108, v106, 0xc0c0004
	v_lshl_or_b32 v61, v10, 16, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[10:13], v223 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v0, v220, v239, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v2, v2, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[101:108], v[75:78], v[61:64], v[248:255] neg_lo:[1,1,0]
	v_perm_b32 v75, v100, v110, 0xc0c0004
	v_perm_b32 v76, v90, v87, 0xc0c0004
	v_lshl_or_b32 v4, v25, 16, v0
	v_perm_b32 v0, v16, v96, 0xc0c0004
	v_perm_b32 v26, v235, v236, 0xc0c0004
	v_perm_b32 v65, v237, v238, 0xc0c0004
	v_perm_b32 v66, v228, v229, 0xc0c0004
	v_perm_b32 v83, v230, v231, 0xc0c0004
	v_perm_b32 v14, v133, v134, 0xc0c0004
	v_perm_b32 v1, v131, v132, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[101:108], v[79:82], v[127:130], v[101:108] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v28, 16, v3
	v_lshl_or_b32 v77, v75, 16, v86
	v_lshl_or_b32 v76, v0, 16, v76
	v_lshl_or_b32 v75, v2, 16, v5
	v_wmma_i32_16x16x16_iu8 v[248:255], v[148:151], v[61:64], v[248:255] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[10:13], v[57:60], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v65, 16, v26
	v_lshl_or_b32 v2, v83, 16, v66
	v_lshl_or_b32 v1, v1, 16, v14
	v_wmma_i32_16x16x16_iu8 v[17:24], v[92:95], v[57:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[10:13], v[75:78], v[101:108] neg_lo:[1,1,0]
	v_perm_b32 v0, v124, v123, 0xc0c0004
	v_perm_b32 v5, v122, v126, 0xc0c0004
	v_perm_b32 v6, v120, v119, 0xc0c0004
	v_perm_b32 v10, v114, v121, 0xc0c0004
	v_perm_b32 v11, v91, v88, 0xc0c0004
	v_perm_b32 v12, v84, v98, 0xc0c0004
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_perm_b32 v13, v7, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[248:255], v[29:32], v[127:130], v[248:255] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v5, 16, v0
	v_lshl_or_b32 v7, v10, 16, v6
	v_lshl_or_b32 v6, v12, 16, v11
	v_lshl_or_b32 v5, v13, 16, v9
	v_wmma_i32_16x16x16_iu8 v[248:255], v[92:95], v[75:78], v[248:255] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[135:138], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[143:146], v[1:4], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[143:146], v[5:8], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[135:138], v[5:8], v[248:255] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v17
	v_cvt_f32_i32_e32 v61, v67
	v_cvt_f32_i32_e32 v64, v68
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v58, v71
	v_cvt_f32_i32_e32 v60, v72
	v_cvt_f32_i32_e32 v63, v73
	v_cvt_f32_i32_e32 v66, v74
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v18
	v_cvt_f32_i32_e32 v71, v19
	v_cvt_f32_i32_e32 v74, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v69, v22
	v_cvt_f32_i32_e32 v72, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v75, v101
	v_cvt_f32_i32_e32 v77, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v57, v105
	v_cvt_f32_i32_e32 v59, v106
	v_cvt_f32_i32_e32 v62, v107
	v_cvt_f32_i32_e32 v65, v108
	v_cvt_f32_i32_e32 v78, v248
	v_cvt_f32_i32_e32 v31, v249
	v_cvt_f32_i32_e32 v30, v250
	v_cvt_f32_i32_e32 v29, v251
	v_cvt_f32_i32_e32 v0, v252
	v_cvt_f32_i32_e32 v81, v253
	v_mov_b32_e32 v253, v141
	v_cvt_f32_i32_e32 v82, v254
	v_cvt_f32_i32_e32 v83, v255
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s42, 31
	s_mov_b32 s39, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s0, s42, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_mov_b32 s36, s8
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	s_waitcnt lgkmcnt(31)
	v_mov_b32_e32 v228, v30
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	v_mad_u64_u32 v[1:2], null, s0, s41, v[142:143]
	v_mov_b32_e32 v226, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:52
	scratch_load_b32 v2, off, off
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	v_mov_b32_e32 v227, v29
	s_waitcnt lgkmcnt(30)
	v_mov_b32_e32 v229, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v3, 1, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, v0, s0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, v2, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x1
	buffer_load_u16 v0, v0, s[36:39], 0 offen
	buffer_load_u16 v21, v2, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	buffer_load_u16 v2, v3, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:44
	scratch_load_b32 v4, off, off offset:48
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v0
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v21
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_add3_u32 v3, 0, v3, v4
	scratch_load_b32 v4, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v19, v4, 1, v3
	ds_store_b32 v19, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v225, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v20, v1, s[36:39], 0 offen
.Ltmp24:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp25:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v18, v225, 1, 0
	ds_load_b128 v[5:8], v18 offset:35328
	ds_load_b128 v[1:4], v18 offset:35344
	ds_load_b128 v[13:16], v18 offset:34816
	ds_load_b128 v[9:12], v18 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v85, v6, v17
	v_mul_f32_e32 v23, v3, v17
	v_mul_f32_e32 v0, v13, v17
	v_dual_mul_f32 v24, v14, v17 :: v_dual_mul_f32 v13, v13, v28
	v_dual_mul_f32 v25, v16, v17 :: v_dual_mul_f32 v14, v14, v28
	v_dual_mul_f32 v31, v11, v17 :: v_dual_mul_f32 v16, v16, v28
	v_mul_f32_e32 v22, v2, v17
	v_mul_f32_e32 v2, v2, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v37, v214
	v_fma_f32 v37, v24, v54, v207
	v_fma_f32 v54, v16, v45, v194
	scratch_load_b32 v16, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v15, v17
	v_dual_mul_f32 v32, v12, v17 :: v_dual_mul_f32 v11, v11, v28
	v_mul_f32_e32 v12, v12, v28
	v_dual_mul_f32 v84, v4, v17 :: v_dual_mul_f32 v3, v3, v28
	v_dual_mul_f32 v4, v4, v28 :: v_dual_mul_f32 v29, v9, v17
	v_mul_f32_e32 v9, v9, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v55, v205
	v_fma_f32 v2, v2, v46, v211
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v5, v17
	v_dual_mul_f32 v5, v5, v28 :: v_dual_mul_f32 v30, v10, v17
	v_mul_f32_e32 v15, v15, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v211, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v87, v8, v17 :: v_dual_lshlrev_b32 v2, 16, v20
	v_mul_f32_e32 v10, v10, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v43, v212
	v_fma_f32 v3, v3, v48, v210
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v19, v2 offset:34816
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v49, v209
	v_fma_f32 v21, v21, v33, v216
	v_fma_f32 v22, v22, v35, v215
	v_fma_f32 v33, v84, v38, v213
	v_fma_f32 v35, v25, v56, v206
	v_fma_f32 v15, v15, v44, v193
	v_fma_f32 v27, v10, v27, v191
	v_fma_f32 v84, v9, v224, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v212, v5, s2
	v_cndmask_b32_e64 v44, v210, v3, s2
	v_cndmask_b32_e64 v43, v209, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v53, v208
	v_fma_f32 v32, v32, v52, v201
	v_fma_f32 v31, v31, v51, v202
	v_fma_f32 v30, v30, v50, v203
	v_fma_f32 v29, v29, v47, v204
	v_fma_f32 v50, v87, v39, v198
	v_fma_f32 v47, v85, v34, v200
	v_fma_f32 v14, v14, v42, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v208, v0, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v40, v196
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v206, v35, s2
	v_cndmask_b32_e64 v35, v202, v31, s2
	v_cndmask_b32_e64 v34, v201, v32, s2
	v_cndmask_b32_e64 v31, v198, v50, s2
	v_cndmask_b32_e64 v25, v216, v21, s2
	v_cndmask_b32_e64 v21, v215, v22, s2
	v_cndmask_b32_e64 v19, v193, v15, s2
	v_cndmask_b32_e64 v15, v191, v27, s2
	v_cndmask_b32_e64 v39, v204, v29, s2
	v_cndmask_b32_e64 v29, v196, v13, s2
	v_cndmask_b32_e64 v13, v192, v84, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v12, v16, v189
	scratch_load_b32 v12, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v92, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v214, v23, s2
	v_cndmask_b32_e64 v23, v213, v33, s2
	v_cndmask_b32_e64 v33, v200, v47, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[50:53], v18 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v189, v55, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v56, v11, v12, v190
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[9:12], v18 offset:35328
	ds_load_b128 v[2:5], v18 offset:35344
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v7, v17
	v_dual_mul_f32 v88, v1, v17 :: v_dual_mul_f32 v7, v7, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v190, v56, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v88, v41, v197
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v207, v37, s2
	v_cndmask_b32_e64 v37, v205, v26, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v9, v17
	v_mul_f32_e32 v9, v9, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v86, v36, v199
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v203, v30, s2
	v_cndmask_b32_e64 v30, v197, v38, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v26, v3, v17
	v_mul_f32_e32 v38, v5, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v199, v46, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[46:49], v18 offset:34816
	v_mul_f32_e32 v3, v3, v28
	v_mul_f32_e32 v5, v5, v28
	v_mul_f32_e32 v27, v4, v17
	v_mul_f32_e32 v4, v4, v28
	v_mul_f32_e32 v87, v52, v17
	v_dual_mul_f32 v89, v10, v17 :: v_dual_mul_f32 v52, v52, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v81, v179
	v_fma_f32 v5, v5, v83, v175
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v195, v14, s2
	v_cndmask_b32_e64 v14, v194, v54, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v85, v50, v17
	v_mul_f32_e32 v86, v51, v17
	v_dual_mul_f32 v91, v12, v17 :: v_dual_mul_f32 v50, v50, v28
	v_mul_f32_e32 v51, v51, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v69, v187
	v_fma_f32 v38, v38, v73, v183
	v_fma_f32 v73, v52, v62, v163
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v55, v47, v17
	v_mul_f32_e32 v47, v47, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v92, v161
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v54, v46, v17
	v_mul_f32_e32 v56, v49, v17
	v_mul_f32_e32 v84, v48, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v179, v3, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v88, v53, v17
	v_mul_f32_e32 v53, v53, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v161, v0, s2
	v_cndmask_b32_e64 v3, v175, v5, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v90, v11, v17
	v_mul_f32_e32 v17, v2, v17
	v_mul_f32_e32 v49, v49, v28
	v_mul_f32_e32 v48, v48, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v55, v55, v64, v186
	v_fma_f32 v65, v53, v65, v162
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v183, v38, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v76, v170
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v187, v26, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v46, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v27, v27, v72, v185
	v_fma_f32 v69, v87, v63, v176
	v_fma_f32 v58, v85, v58, v180
	v_fma_f32 v67, v89, v67, v173
	v_fma_f32 v48, v48, v79, v166
	v_fma_f32 v49, v49, v80, v167
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v162, v65, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v76
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v56, v56, v70, v184
	v_fma_f32 v9, v9, v78, v181
	v_fma_f32 v4, v4, v82, v177
	v_fma_f32 v54, v54, v61, v188
	v_fma_f32 v72, v91, v74, v171
	v_fma_f32 v46, v46, v75, v169
	v_fma_f32 v75, v50, v57, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v185, v27, s2
	v_cndmask_b32_e64 v57, v176, v69, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v62
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v88, v66, v174
	v_fma_f32 v47, v47, v77, v168
	v_fma_f32 v74, v51, v59, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v186, v55, s2
	v_cndmask_b32_e64 v61, v184, v56, s2
	v_cndmask_b32_e64 v59, v180, v58, s2
	v_cndmask_b32_e64 v55, v173, v67, s2
	v_cndmask_b32_e64 v52, v170, v17, s2
	v_cndmask_b32_e64 v17, v167, v49, s2
	v_cndmask_b32_e64 v49, v166, v48, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v65
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v68, v84, v68, v182
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v181, v9, s2
	v_cndmask_b32_e64 v9, v177, v4, s2
	v_cndmask_b32_e64 v4, v188, v54, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v64
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v70, v86, v60, v178
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v174, v66, s2
	v_cndmask_b32_e64 v53, v171, v72, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v27
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v169, v46, s2
	v_cndmask_b32_e64 v50, v168, v47, s2
	v_cndmask_b32_e64 v47, v164, v74, s2
	v_cndmask_b32_e64 v46, v163, v73, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v78, 0xbfb8aa3b, v57 :: v_dual_mul_f32 v87, 0xbfb8aa3b, v50
	v_dual_mul_f32 v80, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v85, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s0
	v_mul_f32_e32 v84, 0xbfb8aa3b, v55
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v71, v90, v71, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v182, v68, s2
	v_cndmask_b32_e64 v58, v178, v70, s2
	v_cndmask_b32_e64 v48, v165, v75, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v68, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v77, 0xbfb8aa3b, v56
	v_dual_mul_f32 v75, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v82, 0xbfb8aa3b, v53
	v_mul_f32_e32 v89, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v66
	v_dual_mul_f32 v86, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v91, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v73
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v78
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v85
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v172, v71, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v70, 0xbfb8aa3b, v9 :: v_dual_mul_f32 v79, 0xbfb8aa3b, v58
	v_mul_f32_e32 v71, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v68
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v69
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v75
	v_cndmask_b32_e64 v66, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v82
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v89
	v_dual_mul_f32 v72, 0xbfb8aa3b, v60 :: v_dual_mul_f32 v83, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v73, 0, 0x42800000, s10
	v_cndmask_b32_e64 v78, 0, 0x42800000, s14
	v_cndmask_b32_e64 v84, 0, 0x42800000, s16
	v_cndmask_b32_e64 v85, 0, 0x42800000, s23
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v91
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v0 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v70
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v71
	v_dual_mul_f32 v74, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v81, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v68, 0, 0x42800000, s4
	v_cndmask_b32_e64 v69, 0, 0x42800000, s5
	v_cndmask_b32_e64 v75, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v80
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v79
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v77
	v_cndmask_b32_e64 v82, 0, 0x42800000, s18
	v_cndmask_b32_e64 v89, 0, 0x42800000, s27
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v72
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v87
	v_cndmask_b32_e64 v91, 0, 0x42800000, s25
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v57
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v85, 0xbfb8aa3b, v49
	v_exp_f32_e32 v38, v38
	v_dual_mul_f32 v88, 0xbfb8aa3b, v51 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v70, 0, 0x42800000, s6
	v_cndmask_b32_e64 v71, 0, 0x42800000, s7
	v_dual_mul_f32 v92, 0xbfb8aa3b, v48 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v74
	v_cndmask_b32_e64 v80, 0, 0x42800000, s12
	v_cndmask_b32_e64 v79, 0, 0x42800000, s13
	v_cndmask_b32_e64 v77, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v81
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v63
	v_exp_f32_e32 v65, v65
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v53 :: v_dual_fmac_f32 v89, 0xbfb8aa3b, v26
	v_exp_f32_e32 v66, v66
	v_cndmask_b32_e64 v72, 0, 0x42800000, s11
	v_cndmask_b32_e64 v87, 0, 0x42800000, s21
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v47
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v85, v85
	v_dual_mul_f32 v90, 0xbfb8aa3b, v46 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v88
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v9 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v56
	v_exp_f32_e32 v67, v67
	v_cndmask_b32_e64 v74, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v83
	v_cndmask_b32_e64 v81, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v92
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v80, 0xbfb8aa3b, v59 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v58
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v75, v75
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, s1
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v89, v89
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v86
	v_cndmask_b32_e64 v103, 0, 0xffffffc0, s10
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v87, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s23
	v_ldexp_f32 v38, v38, v93
	v_cndmask_b32_e64 v88, 0, 0x42800000, s20
	v_cndmask_b32_e64 v96, 0, 0xffffffc0, s3
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	v_cndmask_b32_e64 v83, 0, 0x42800000, s17
	v_cndmask_b32_e64 v92, 0, 0x42800000, s24
	v_cndmask_b32_e64 v97, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v98, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v101, 0, 0xffffffc0, s8
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v83, 0xbfb8aa3b, v54
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v52
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v77, v77
	v_ldexp_f32 v65, v65, v94
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s27
	v_ldexp_f32 v66, v66, v95
	v_cndmask_b32_e64 v86, 0, 0x42800000, s22
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v73, v73, v103
	v_ldexp_f32 v78, v78, v107
	v_ldexp_f32 v85, v85, v116
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v90
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v100, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v88, 0xbfb8aa3b, v51 :: v_dual_add_f32 v65, 1.0, v65
	v_exp_f32_e32 v79, v79
	v_ldexp_f32 v67, v67, v96
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s15
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v68, v68, v97
	v_ldexp_f32 v69, v69, v98
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v48
	v_ldexp_f32 v75, v75, v101
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v82, v82, v111
	v_ldexp_f32 v89, v89, v120
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_add_f32 v75, 1.0, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s21
	v_dual_fmac_f32 v86, 0xbfb8aa3b, v17 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v73, 1.0, v73 :: v_dual_add_f32 v78, 1.0, v78
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v93, null, v38, v38, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v90, 0, 0x42800000, s26
	v_cndmask_b32_e64 v106, 0, 0xffffffc0, s13
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v70, v70, v99
	v_ldexp_f32 v71, v71, v100
	v_cndmask_b32_e64 v102, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s16
	v_exp_f32_e32 v83, v83
	v_ldexp_f32 v80, v80, v105
	v_ldexp_f32 v77, v77, v108
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v68, 1.0, v68 :: v_dual_add_f32 v69, 1.0, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v92, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v95, null, v65, v65, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s25
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v82, 1.0, v82 :: v_dual_add_f32 v89, 1.0, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v97, null, v66, v66, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v86, v86
	v_ldexp_f32 v87, v87, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v85, v85, v49
	v_rcp_f32_e32 v149, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s20
	v_dual_fmac_f32 v90, 0xbfb8aa3b, v46 :: v_dual_add_f32 v71, 1.0, v71
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v79, v79, v106
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v99, null, v67, v67, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s24
	v_ldexp_f32 v74, v74, v102
	v_ldexp_f32 v84, v84, v109
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v77, 1.0, v77 :: v_dual_add_f32 v80, 1.0, v80
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v101, null, v68, v68, v63
	v_div_scale_f32 v103, null, v69, v69, v62
	v_div_scale_f32 v109, null, v75, v75, v4
	v_rcp_f32_e32 v150, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v91, v91, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v147, null, v89, v89, v26
	v_rcp_f32_e32 v151, v97
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v180, v139
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s19
	v_ldexp_f32 v72, v72, v104
	v_ldexp_f32 v88, v88, v113
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v105, null, v70, v70, v9
	v_div_scale_f32 v107, null, v71, v71, v3
	v_div_scale_f32 v113, null, v73, v73, v61
	v_rcp_f32_e32 v152, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v83, v83, v110
	v_ldexp_f32 v92, v92, v117
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, null, v80, v80, v59
	v_rcp_f32_e32 v161, v101
	v_rcp_f32_e32 v162, v103
	v_rcp_f32_e32 v165, v109
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v84, 1.0, v84 :: v_dual_add_f32 v91, 1.0, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v184, v147
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v86, v86, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v87, v87, v50
	v_fma_f32 v185, -v93, v149, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v81, v81, v112
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v121, null, v78, v78, v57
	v_rcp_f32_e32 v163, v105
	v_rcp_f32_e32 v164, v107
	v_rcp_f32_e32 v167, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s26
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v111, null, v74, v74, v5
	v_rcp_f32_e32 v169, v117
	v_fma_f32 v186, -v95, v150, 1.0
	v_div_scale_f32 v143, null, v91, v91, v47
	v_fma_f32 v187, -v97, v151, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v86, 1.0, v86 :: v_dual_fmac_f32 v149, v185, v149
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v94, vcc_lo, v0, v38, v0
	v_rcp_f32_e32 v178, v135
	v_fma_f32 v208, -v139, v180, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v115, null, v72, v72, v60
	v_rcp_f32_e32 v171, v121
	v_fma_f32 v188, -v99, v152, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v90, v90, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v96, s26, v76, v65, v76
	v_div_scale_f32 v125, null, v84, v84, v55
	v_rcp_f32_e32 v166, v111
	v_fma_f32 v189, -v101, v161, 1.0
	v_fma_f32 v190, -v103, v162, 1.0
	v_fma_f32 v193, -v109, v165, 1.0
	v_fmac_f32_e32 v150, v186, v150
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v88, 1.0, v88 :: v_dual_fmac_f32 v151, v187, v151
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v119, null, v79, v79, v58
	v_rcp_f32_e32 v182, v143
	v_div_scale_f32 v98, s27, v27, v66, v27
	v_fma_f32 v212, -v147, v184, 1.0
	v_dual_fmac_f32 v180, v208, v180 :: v_dual_mul_f32 v185, v94, v149
	v_div_scale_f32 v100, s25, v64, v67, v64
	v_div_scale_f32 v129, null, v82, v82, v53
	v_rcp_f32_e32 v168, v115
	v_fma_f32 v191, -v105, v163, 1.0
	v_fma_f32 v192, -v107, v164, 1.0
	v_fma_f32 v195, -v113, v167, 1.0
	v_fmac_f32_e32 v152, v188, v152
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v90, 1.0, v90 :: v_dual_fmac_f32 v161, v189, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v102, s24, v63, v68, v63
	v_div_scale_f32 v104, s23, v62, v69, v62
	v_div_scale_f32 v110, s20, v4, v75, v4
	v_rcp_f32_e32 v173, v125
	v_fma_f32 v197, -v117, v169, 1.0
	v_dual_fmac_f32 v162, v190, v162 :: v_dual_fmac_f32 v165, v193, v165
	v_dual_mul_f32 v186, v96, v150 :: v_dual_mul_f32 v189, v102, v161
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v92, 1.0, v92 :: v_dual_fmac_f32 v163, v191, v163
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v127, null, v83, v83, v54
	v_div_scale_f32 v133, null, v88, v88, v51
	v_rcp_f32_e32 v170, v119
	v_dual_fmac_f32 v184, v212, v184 :: v_dual_mul_f32 v187, v98, v151
	v_div_scale_f32 v123, null, v77, v77, v56
	v_fma_f32 v206, -v135, v178, 1.0
	v_fma_f32 v213, -v93, v185, v94
	v_div_scale_f32 v106, s22, v9, v70, v9
	v_div_scale_f32 v108, s21, v3, v71, v3
	v_div_scale_f32 v114, s18, v61, v73, v61
	v_rcp_f32_e32 v175, v129
	v_fma_f32 v199, -v121, v171, 1.0
	v_dual_fmac_f32 v164, v192, v164 :: v_dual_fmac_f32 v167, v195, v167
	v_dual_mul_f32 v188, v100, v152 :: v_dual_mul_f32 v191, v106, v163
	v_fma_f32 v194, -v111, v166, 1.0
	v_dual_fmac_f32 v169, v197, v169 :: v_dual_mul_f32 v190, v104, v162
	v_mul_f32_e32 v193, v110, v165
	v_fma_f32 v214, -v95, v186, v96
	v_div_scale_f32 v141, null, v92, v92, v48
	v_rcp_f32_e32 v174, v127
	v_rcp_f32_e32 v177, v133
	v_fma_f32 v210, -v143, v182, 1.0
	v_fma_f32 v215, -v97, v187, v98
	v_div_scale_f32 v137, null, v86, v86, v17
	v_rcp_f32_e32 v172, v123
	v_dual_fmac_f32 v178, v206, v178 :: v_dual_fmac_f32 v185, v213, v149
	v_fma_f32 v196, -v115, v168, 1.0
	v_dual_fmac_f32 v171, v199, v171 :: v_dual_mul_f32 v192, v108, v164
	v_mul_f32_e32 v195, v114, v167
	v_fma_f32 v216, -v99, v188, v100
	v_div_scale_f32 v112, s19, v5, v74, v5
	v_div_scale_f32 v118, s16, v59, v80, v59
	v_fma_f32 v201, -v125, v173, 1.0
	v_fmac_f32_e32 v166, v194, v166
	v_fma_f32 v221, -v109, v193, v110
	v_fmac_f32_e32 v186, v214, v150
	v_div_scale_f32 v131, null, v81, v81, v52
	v_div_scale_f32 v144, s3, v47, v91, v47
	v_div_scale_f32 v145, null, v90, v90, v46
	v_rcp_f32_e32 v181, v141
	v_fma_f32 v198, -v119, v170, 1.0
	v_dual_fmac_f32 v182, v210, v182 :: v_dual_fmac_f32 v187, v215, v151
	v_fma_f32 v217, -v101, v189, v102
	v_rcp_f32_e32 v179, v137
	v_fma_f32 v93, -v93, v185, v94
	v_div_scale_f32 v116, s17, v60, v72, v60
	v_div_scale_f32 v122, s14, v57, v78, v57
	v_fma_f32 v203, -v129, v175, 1.0
	v_fmac_f32_e32 v168, v196, v168
	v_fma_f32 v223, -v113, v195, v114
	v_dual_fmac_f32 v188, v216, v152 :: v_dual_fmac_f32 v173, v201, v173
	v_dual_mul_f32 v194, v112, v166 :: v_dual_mul_f32 v197, v118, v169
	v_fma_f32 v218, -v103, v190, v104
	v_fmac_f32_e32 v193, v221, v165
	v_fma_f32 v94, -v95, v186, v96
	v_div_scale_f32 v120, s15, v58, v79, v58
	v_rcp_f32_e32 v176, v131
	v_rcp_f32_e32 v183, v145
	v_fma_f32 v202, -v127, v174, 1.0
	v_fma_f32 v205, -v133, v177, 1.0
	v_fmac_f32_e32 v170, v198, v170
	v_dual_mul_f32 v210, v144, v182 :: v_dual_fmac_f32 v189, v217, v161
	v_div_scale_f32 v148, s0, v26, v89, v26
	v_fma_f32 v219, -v105, v191, v106
	v_fma_f32 v95, -v97, v187, v98
	v_div_scale_f32 v126, s12, v55, v84, v55
	v_fma_f32 v200, -v123, v172, 1.0
	v_div_fmas_f32 v93, v93, v149, v185
	s_mov_b32 vcc_lo, s26
	v_dual_fmac_f32 v175, v203, v175 :: v_dual_mul_f32 v196, v116, v168
	v_mul_f32_e32 v199, v122, v171
	v_fma_f32 v220, -v107, v192, v108
	v_fmac_f32_e32 v195, v223, v167
	v_fma_f32 v96, -v99, v188, v100
	v_fma_f32 v213, -v117, v197, v118
	v_fmac_f32_e32 v190, v218, v162
	v_div_fmas_f32 v94, v94, v150, v186
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v128, s11, v54, v83, v54
	v_div_scale_f32 v134, s8, v51, v88, v51
	v_fma_f32 v209, -v141, v181, 1.0
	v_dual_fmac_f32 v174, v202, v174 :: v_dual_fmac_f32 v177, v205, v177
	v_dual_mul_f32 v198, v120, v170 :: v_dual_mul_f32 v201, v126, v173
	v_fma_f32 v97, -v101, v189, v102
	v_dual_mul_f32 v212, v148, v184 :: v_dual_fmac_f32 v191, v219, v163
	v_div_fmas_f32 v95, v95, v151, v187
	s_mov_b32 vcc_lo, s25
	v_div_scale_f32 v124, s13, v56, v77, v56
	v_div_scale_f32 v130, s10, v53, v82, v53
	v_fma_f32 v207, -v137, v179, 1.0
	v_fmac_f32_e32 v172, v200, v172
	v_fma_f32 v222, -v111, v194, v112
	v_fma_f32 v215, -v121, v199, v122
	v_fmac_f32_e32 v192, v220, v164
	v_div_fixup_f32 v0, v93, v38, v0
	v_div_fmas_f32 v93, v96, v152, v188
	s_mov_b32 vcc_lo, s24
	v_fmac_f32_e32 v197, v213, v169
	v_fma_f32 v98, -v103, v190, v104
	v_div_scale_f32 v140, s5, v49, v85, v49
	v_fma_f32 v204, -v131, v176, 1.0
	v_fma_f32 v211, -v145, v183, 1.0
	v_dual_fmac_f32 v181, v209, v181 :: v_dual_mul_f32 v202, v128, v174
	v_mul_f32_e32 v205, v134, v177
	v_fma_f32 v214, -v119, v198, v120
	v_div_fixup_f32 v65, v94, v65, v76
	v_div_fmas_f32 v76, v97, v161, v189
	v_fma_f32 v99, -v105, v191, v106
	v_dual_fmac_f32 v179, v207, v179 :: v_dual_mul_f32 v200, v124, v172
	v_mul_f32_e32 v203, v130, v175
	v_fma_f32 v224, -v115, v196, v116
	v_fma_f32 v217, -v125, v201, v126
	v_fmac_f32_e32 v194, v222, v166
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v199, v215, v171
	v_fma_f32 v100, -v107, v192, v108
	v_div_fixup_f32 v27, v95, v66, v27
	v_div_fmas_f32 v66, v98, v162, v190
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v146, s1, v46, v90, v46
	v_dual_fmac_f32 v176, v204, v176 :: v_dual_fmac_f32 v183, v211, v183
	v_mul_f32_e32 v208, v140, v180
	v_fma_f32 v221, -v133, v205, v134
	v_fmac_f32_e32 v198, v214, v170
	v_fma_f32 v214, -v143, v210, v144
	v_fma_f32 v101, -v109, v193, v110
	v_div_fixup_f32 v63, v76, v68, v63
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v25, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v93, v67, v64
	v_div_scale_f32 v132, s9, v52, v81, v52
	v_div_scale_f32 v138, s6, v17, v86, v17
	v_div_fmas_f32 v25, v99, v163, v191
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v219, -v129, v203, v130
	v_dual_fmac_f32 v196, v224, v168 :: v_dual_fmac_f32 v201, v217, v173
	v_fma_f32 v102, -v111, v194, v112
	v_div_fmas_f32 v64, v100, v164, v192
	s_mov_b32 vcc_lo, s20
	v_mul_f32_e32 v211, v146, v183
	v_fma_f32 v224, -v139, v208, v140
	v_dual_fmac_f32 v210, v214, v182 :: v_dual_mul_f32 v23, v23, v0
	v_fma_f32 v103, -v113, v195, v114
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v66, v69, v62
	v_div_fmas_f32 v0, v101, v165, v193
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v136, s7, v50, v87, v50
	v_div_scale_f32 v142, s4, v48, v92, v48
	v_dual_mul_f32 v204, v132, v176 :: v_dual_mul_f32 v207, v138, v179
	v_fma_f32 v216, -v123, v200, v124
	v_fmac_f32_e32 v203, v219, v175
	v_fma_f32 v104, -v115, v196, v116
	v_div_fixup_f32 v25, v25, v70, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v24, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v102, v166, v194
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v208, v224, v180
	v_fma_f32 v105, -v117, v197, v118
	v_div_fixup_f32 v62, v64, v71, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v45, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v103, v167, v195
	s_mov_b32 vcc_lo, s17
	v_dual_mul_f32 v206, v136, v178 :: v_dual_mul_f32 v209, v142, v181
	v_fma_f32 v218, -v127, v202, v128
	v_fma_f32 v223, -v137, v207, v138
	v_dual_fmac_f32 v200, v216, v172 :: v_dual_fmac_f32 v205, v221, v177
	v_fma_f32 v106, -v119, v198, v120
	v_div_fixup_f32 v0, v0, v75, v4
	v_div_fixup_f32 v24, v24, v74, v5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v44, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v104, v168, v196
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v107, -v121, v199, v122
	v_fma_f32 v220, -v131, v204, v132
	v_div_fmas_f32 v44, v105, v169, v197
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v213, -v141, v209, v142
	v_dual_fmac_f32 v202, v218, v174 :: v_dual_fmac_f32 v207, v223, v179
	v_fma_f32 v108, -v123, v200, v124
	v_div_fixup_f32 v27, v27, v73, v61
	v_div_fixup_f32 v25, v25, v72, v60
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v106, v170, v198
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v109, -v125, v201, v126
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v43, v62
	v_mul_f32_e32 v43, v41, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v107, v171, v199
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v215, -v145, v211, v146
	v_dual_fmac_f32 v204, v220, v176 :: v_dual_fmac_f32 v209, v213, v181
	v_fma_f32 v110, -v127, v202, v128
	v_div_fixup_f32 v44, v44, v80, v59
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v108, v172, v200
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v111, -v129, v203, v130
	v_div_fixup_f32 v0, v0, v79, v58
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v37, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v109, v173, v201
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v211, v215, v183
	v_fma_f32 v112, -v131, v204, v132
	v_div_fixup_f32 v24, v24, v78, v57
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v39, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v110, v174, v202
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v113, -v133, v205, v134
	v_div_fixup_f32 v27, v27, v77, v56
	v_div_fixup_f32 v25, v25, v84, v55
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v36, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v111, v175, v203
	s_mov_b32 vcc_lo, s9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v35, v35, v24 :: v_dual_mul_f32 v34, v34, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v112, v176, v204
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v39, v83, v54
	v_div_fmas_f32 v27, v113, v177, v205
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:68
	scratch_load_b32 v57, off, off offset:64
	scratch_load_b32 v59, off, off offset:60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v222, -v135, v206, v136
	v_div_fixup_f32 v27, v27, v88, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v51, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v65
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v115, -v137, v207, v138
	v_fmac_f32_e32 v206, v222, v178
	s_mov_b32 vcc_lo, s7
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v33, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v82, v53
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v114, -v135, v206, v136
	v_fma_f32 v116, -v139, v208, v140
	v_div_fixup_f32 v24, v24, v81, v52
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v0
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v229, v160
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v114, v178, v206
	s_mov_b32 vcc_lo, s6
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v115, v179, v207
	s_mov_b32 vcc_lo, s5
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v11, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v116, v180, v208
	v_div_fixup_f32 v33, v33, v87, v50
	v_div_fixup_f32 v39, v39, v86, v17
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v29, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v147, v212, v148
	v_div_fixup_f32 v0, v0, v85, v49
	v_fma_f32 v117, -v141, v209, v142
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v39
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v228, v159
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v212, v29, v184
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v160, v10, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v143, v210, v144
	s_mov_b32 vcc_lo, s4
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v18, v18, v33 :: v_dual_mul_f32 v19, v19, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v145, v211, v146
	v_div_fmas_f32 v24, v117, v181, v209
	s_mov_b32 vcc_lo, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v147, v212, v148
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v159, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v12, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v118, v182, v210
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v24, v92, v48
	v_div_fmas_f32 v0, v0, v183, v211
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v27, v91, v47
	v_div_fmas_f32 v10, v10, v184, v212
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_mul_f32_e32 v33, 0xbfb8aa3b, v39
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v227, v158
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v90, v46
	v_div_fixup_f32 v10, v10, v89, v26
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v158, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v2, v28
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v10, v22, v10 :: v_dual_mul_f32 v15, v15, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s0
	v_dual_mul_f32 v11, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v12, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v226, v157
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v24, v13, v24 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_exp_f32_e32 v12, v12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v20, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v33
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v157, v2, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	s_mov_b32 s4, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v26
	v_ldexp_f32 v0, v12, v0
	v_mul_f32_e32 v44, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v12, v22
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v20, v20, v22
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v12, v12, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v20, v20, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, s0, v39, v20, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v55, v49, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v0, v0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v33
	v_fma_f32 v47, -v33, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v47, v44
	v_div_scale_f32 v47, vcc_lo, v29, v0, v29
	v_mul_f32_e32 v52, v47, v44
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v57, v155
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v6, v59, v156
	scratch_load_b32 v59, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v22, v22, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v51, v153
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v156, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v54, v154
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v50, v28
	v_fma_f32 v54, -v33, v52, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v155, v7, s2
	v_cndmask_b32_e64 v1, v153, v1, s2
	v_cndmask_b32_e64 v8, v154, v8, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v52, v54, v44
	v_fma_f32 v54, -v45, v55, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v27, null, v12, v12, v26
	v_fma_f32 v53, -v28, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v52, v47
	v_fmac_f32_e32 v55, v54, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v27
	v_fmac_f32_e32 v50, v53, v50
	v_div_scale_f32 v53, s3, v2, v22, v2
	v_div_fmas_f32 v33, v33, v44, v52
	v_fma_f32 v44, -v45, v55, v49
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v58, v53, v50
	v_fma_f32 v51, -v27, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v44, v44, v46, v55
	v_div_fixup_f32 v0, v33, v0, v29
	v_fma_f32 v47, -v28, v58, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v51, v48
	v_div_scale_f32 v51, s1, v26, v12, v26
	v_fmac_f32_e32 v58, v47, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v44, v20, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v51, v48
	v_fma_f32 v28, -v28, v58, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v7, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v27, v56, v51
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v30|, |v21|, |v16|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v57, v48
	v_fma_f32 v27, -v27, v56, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v48, v56
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v28, v28, v50, v58
	v_div_fixup_f32 v2, v28, v22, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v27, v12, v26
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v26, |v14|, |v24|, |v15|
.Ltmp29:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v1, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v13, v8, v22 :: v_dual_mul_f32 v22, v6, v0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v0, |v42|, |v43|
	v_max3_f32 v1, |v40|, |v37|, |v36|
	v_max3_f32 v6, |v25|, |v32|, |v31|
	v_max_f32_e64 v8, |v17|, |v18|
	v_max3_f32 v27, |v22|, |v20|, |v13|
	v_max3_f32 v28, |v12|, |v3|, |v4|
	v_max3_f32 v0, v0, |v41|, v1
	v_max3_f32 v1, v6, v7, |v23|
	v_max3_f32 v7, v8, |v19|, v26
	v_max3_f32 v2, |v35|, |v34|, |v38|
	v_max3_f32 v8, v27, v28, |v5|
	scratch_load_b32 v28, off, off offset:56 ; 4-byte Folded Reload
	v_max3_f32 v6, |v11|, |v10|, |v9|
	v_max3_f32 v0, v0, v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v7, v6, v8
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v0, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v7, v2, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, v0, v6 :: v_dual_max_f32 v7, v2, v7
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v1, 0xe0, v59
	v_lshrrev_b32_e32 v26, 1, v1
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 4, v28
	v_lshl_add_u32 v28, v28, 7, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v27, v1, 2, v8
	v_xor_b32_e32 v8, v8, v26
	v_xor_b32_e32 v0, v27, v26
	scratch_load_b32 v27, off, off offset:4 ; 4-byte Folded Reload
	v_lshrrev_b32_e32 v26, 2, v1
	s_waitcnt vmcnt(0)
	v_add3_u32 v2, v28, v8, v27
	v_add3_u32 v0, 0, v27, v0
	v_lshlrev_b32_e32 v27, 3, v27
	ds_store_b64 v2, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, v6
	v_mov_b32_e32 v2, v7
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v0, v6, v0
	v_max_f32_e32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v0, v0, v6 :: v_dual_max_f32 v7, v2, v7
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v6, v7
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v8, v6, v6
	v_max_f32_e32 v6, v0, v2
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v8
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 3, v0
	v_add3_u32 v0, 0, v27, v26
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v8, 0, v2
	ds_store_b64 v0, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v8
.Ltmp44:
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v0, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v0, 0x2b8cbccc, v0 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v29, null, 0x40e00000, 0x40e00000, v7
	v_rcp_f32_e32 v8, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v6, v8, 1.0
	v_fmac_f32_e32 v8, v26, v8
	v_div_scale_f32 v26, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v8
	v_fma_f32 v28, -v6, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v8
	v_rcp_f32_e32 v28, v29
	v_fma_f32 v6, -v6, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v6, v6, v8, v27
	v_fma_f32 v8, -v29, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v6, 0x40e00000, v0
	v_fmac_f32_e32 v28, v8, v28
	v_div_scale_f32 v6, vcc_lo, v7, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v8, v0, 16, 1
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v26, v6, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v0, v0, v8, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v8, -v29, v26, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 0xffff0000, v0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v26, v8, v28
.Ltmp45:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v27, null, v39, v39, v42
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v29, v26, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v33, null, v39, v39, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v29, v27
	v_div_scale_f32 v45, null, v39, v39, v41
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v6, v6, v28, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v28, v33
	v_div_scale_f32 v44, vcc_lo, v42, v39, v42
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v7, v6, 0x40e00000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v49, null, v39, v39, v40
	v_fma_f32 v6, -v27, v29, 1.0
	v_div_scale_f32 v50, s0, v43, v39, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v33, v28, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v46, v7, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v29, v6, v29
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v45, v47, 1.0
	v_fmac_f32_e32 v28, v26, v28
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v26, v7, v46, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v48, v44, v29
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.l, v0.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v47, v53, v47 :: v_dual_mul_f32 v52, v50, v28
	v_div_scale_f32 v54, null, v39, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v46, -v27, v48, v44
	v_fma_f32 v53, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v33, v52, v50
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v7.l, v26.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 0xffff0000, v26
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v48, v46, v29
	v_div_scale_f32 v46, s1, v41, v39, v41
	v_dual_fmac_f32 v52, v0, v28 :: v_dual_fmac_f32 v51, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v27, v48, v44
	v_mul_f32_e32 v0, v46, v47
	v_div_scale_f32 v44, s2, v40, v39, v40
	v_div_scale_f32 v53, null, v39, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v29, v48
	v_fma_f32 v29, -v33, v52, v50
	v_fma_f32 v33, -v45, v0, v46
	v_rcp_f32_e32 v48, v53
	v_mul_f32_e32 v50, v44, v51
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v27, v39, v42
	v_div_fmas_f32 v28, v29, v28, v52
	v_fmac_f32_e32 v0, v33, v47
	v_rcp_f32_e32 v52, v54
	v_fma_f32 v29, -v49, v50, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v28, v39, v43
	v_fma_f32 v33, -v53, v48, 1.0
	v_fma_f32 v42, -v45, v0, v46
	v_fmac_f32_e32 v50, v29, v51
	v_div_scale_f32 v45, null, v39, v39, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v33, v48
	v_div_scale_f32 v43, s0, v37, v39, v37
	v_fma_f32 v29, -v54, v52, 1.0
	v_fma_f32 v33, -v49, v50, v44
	v_rcp_f32_e32 v44, v45
	v_div_fmas_f32 v0, v42, v47, v0
	v_mul_f32_e32 v42, v43, v48
	v_fmac_f32_e32 v52, v29, v52
	v_div_scale_f32 v46, s1, v36, v39, v36
	v_div_scale_f32 v47, null, v39, v39, v34
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v49, -v53, v42, v43
	v_div_fmas_f32 v33, v33, v51, v50
	v_mul_f32_e32 v50, v46, v52
	v_fma_f32 v51, -v45, v44, 1.0
	v_rcp_f32_e32 v55, v47
	v_div_fixup_f32 v29, v0, v39, v41
	v_div_fixup_f32 v33, v33, v39, v40
	v_fmac_f32_e32 v42, v49, v48
	v_fma_f32 v0, -v54, v50, v46
	v_fmac_f32_e32 v44, v51, v44
	v_div_scale_f32 v40, s2, v35, v39, v35
	v_div_scale_f32 v41, null, v39, v39, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v55, 1.0
	v_fma_f32 v43, -v53, v42, v43
	v_fmac_f32_e32 v50, v0, v52
	v_mul_f32_e32 v0, v40, v44
	v_rcp_f32_e32 v51, v41
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v55, v49, v55
	v_div_scale_f32 v49, s3, v34, v39, v34
	v_div_fmas_f32 v42, v43, v48, v42
	v_fma_f32 v43, -v54, v50, v46
	v_fma_f32 v46, -v45, v0, v40
	v_div_scale_f32 v54, null, v39, v39, v25
	v_mul_f32_e32 v48, v49, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v41, v51, 1.0
	v_fmac_f32_e32 v0, v46, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v46, v54
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v37, v42, v39, v37
	v_div_fmas_f32 v43, v43, v52, v50
	v_fma_f32 v50, -v47, v48, v49
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v52, s0, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v36, v43, v39, v36
	v_fma_f32 v40, -v45, v0, v40
	v_fmac_f32_e32 v48, v50, v55
	v_mul_f32_e32 v42, v52, v51
	v_fma_f32 v43, -v54, v46, 1.0
	v_div_scale_f32 v45, null, v39, v39, v32
	s_mov_b32 vcc_lo, s2
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v0, v40, v44, v0
	v_fma_f32 v40, -v47, v48, v49
	v_fma_f32 v44, -v41, v42, v52
	v_fmac_f32_e32 v46, v43, v46
	v_rcp_f32_e32 v43, v45
	v_div_scale_f32 v49, null, v39, v39, v31
	v_div_scale_f32 v47, s1, v25, v39, v25
	v_fmac_f32_e32 v42, v44, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v0, v0, v39, v35
	v_div_fmas_f32 v40, v40, v55, v48
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v50, -v45, v43, 1.0
	v_fma_f32 v35, -v41, v42, v52
	v_div_scale_f32 v52, null, v39, v39, v30
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v34, v40, v39, v34
	v_fma_f32 v40, -v54, v48, v47
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v41, s2, v32, v39, v32
	v_fma_f32 v50, -v49, v44, 1.0
	v_div_fmas_f32 v35, v35, v51, v42
	v_rcp_f32_e32 v42, v52
	v_fmac_f32_e32 v48, v40, v46
	v_mul_f32_e32 v40, v41, v43
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s0, v31, v39, v31
	v_div_scale_f32 v51, null, v39, v39, v21
	v_div_fixup_f32 v35, v35, v39, v38
	v_fma_f32 v38, -v54, v48, v47
	v_fma_f32 v47, -v45, v40, v41
	v_mul_f32_e32 v53, v50, v44
	v_rcp_f32_e32 v54, v51
	v_fma_f32 v55, -v52, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v40, v47, v43
	v_div_fmas_f32 v38, v38, v46, v48
	v_fma_f32 v46, -v49, v53, v50
	v_fmac_f32_e32 v42, v55, v42
	v_div_scale_f32 v47, s1, v30, v39, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v25, v38, v39, v25
	v_fma_f32 v48, -v51, v54, 1.0
	v_fma_f32 v38, -v45, v40, v41
	v_fmac_f32_e32 v53, v46, v44
	v_mul_f32_e32 v41, v47, v42
	v_div_scale_f32 v46, null, v39, v39, v16
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v54, v48, v54
	v_div_scale_f32 v45, s3, v21, v39, v21
	v_div_fmas_f32 v38, v38, v43, v40
	v_fma_f32 v40, -v49, v53, v50
	v_fma_f32 v43, -v52, v41, v47
	v_rcp_f32_e32 v48, v46
	v_div_scale_f32 v50, null, v39, v39, v23
	v_mul_f32_e32 v49, v45, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v42
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v43, v50
	v_div_fmas_f32 v40, v40, v44, v53
	v_fma_f32 v44, -v51, v49, v45
	v_div_fixup_f32 v32, v38, v39, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v46, v48, 1.0
	v_fma_f32 v38, -v52, v41, v47
	v_div_fixup_f32 v31, v40, v39, v31
	v_fmac_f32_e32 v49, v44, v54
	v_div_scale_f32 v40, s0, v16, v39, v16
	v_fmac_f32_e32 v48, v53, v48
	v_fma_f32 v44, -v50, v43, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v7.h, v6.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v42, v41
	v_fma_f32 v41, -v51, v49, v45
	v_mul_f32_e32 v42, v40, v48
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, null, v26, v26, v17
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, s1, v23, v39, v23
	v_div_fmas_f32 v41, v41, v54, v49
	v_rcp_f32_e32 v47, v44
	v_fma_f32 v49, -v46, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v43
	v_div_scale_f32 v52, null, v26, v26, v18
	v_div_fixup_f32 v30, v38, v39, v30
	v_fmac_f32_e32 v42, v49, v48
	v_div_fixup_f32 v21, v41, v39, v21
	v_fma_f32 v38, -v50, v51, v45
	v_rcp_f32_e32 v41, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v44, v47, 1.0
	v_fma_f32 v40, -v46, v42, v40
	v_div_scale_f32 v46, null, v26, v26, v19
	v_fmac_f32_e32 v51, v38, v43
	v_fmac_f32_e32 v47, v49, v47
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v49, v46
	v_div_fmas_f32 v40, v40, v48, v42
	v_fma_f32 v53, -v52, v41, 1.0
	v_fma_f32 v42, -v50, v51, v45
	v_div_scale_f32 v38, s2, v17, v26, v17
	v_div_scale_f32 v48, s0, v18, v26, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v53, v41
	v_div_scale_f32 v54, null, v26, v26, v14
	v_fma_f32 v50, -v46, v49, 1.0
	v_mul_f32_e32 v45, v38, v47
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v55, v48, v41
	v_rcp_f32_e32 v56, v54
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, s3, v19, v26, v19
	v_div_fmas_f32 v42, v42, v43, v51
	v_fma_f32 v53, -v44, v45, v38
	v_fma_f32 v43, -v52, v55, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v50, v49
	v_div_fixup_f32 v16, v40, v39, v16
	v_div_fixup_f32 v23, v42, v39, v23
	v_div_scale_f32 v42, null, v26, v26, v24
	v_fma_f32 v39, -v46, v51, v50
	v_fmac_f32_e32 v45, v53, v47
	v_fmac_f32_e32 v55, v43, v41
	v_fma_f32 v40, -v54, v56, 1.0
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v39, v49
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v38, -v44, v45, v38
	v_fma_f32 v43, -v52, v55, v48
	v_fmac_f32_e32 v56, v40, v56
	v_div_scale_f32 v40, s1, v14, v26, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v47, v45
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v45, null, v26, v26, v15
	v_div_fmas_f32 v41, v43, v41, v55
	v_fma_f32 v43, -v46, v51, v50
	v_mul_f32_e32 v44, v40, v56
	v_fma_f32 v46, -v42, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v47, v45
	v_div_fmas_f32 v43, v43, v49, v51
	v_fma_f32 v48, -v54, v44, v40
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s0, v24, v26, v24
	v_div_fixup_f32 v17, v38, v26, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v48, v56
	v_div_fixup_f32 v19, v43, v26, v19
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v43, null, v26, v26, v11
	v_div_fixup_f32 v18, v41, v26, v18
	v_fma_f32 v41, -v45, v47, 1.0
	v_fma_f32 v40, -v54, v44, v40
	v_fma_f32 v48, -v42, v38, v46
	v_rcp_f32_e32 v49, v43
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s2, v15, v26, v15
	v_div_fmas_f32 v40, v40, v56, v44
	v_fmac_f32_e32 v38, v48, v39
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v14, v40, v26, v14
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	v_fma_f32 v42, -v45, v44, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v40, v39, v38
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v26, v26, v22
	v_fmac_f32_e32 v44, v42, v47
	v_div_scale_f32 v40, s0, v11, v26, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v46
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v45, v44, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v45, v40, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v44, -v43, v45, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v46, v52, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v44, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s3, v22, v26, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v45, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v43, v54, v52
	v_div_scale_f32 v48, null, v26, v26, v10
	v_div_scale_f32 v39, null, v26, v26, v9
	v_div_fixup_f32 v24, v38, v26, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v48
	v_div_scale_f32 v53, s2, v9, v26, v9
	v_rcp_f32_e32 v42, v39
	v_div_fixup_f32 v15, v41, v26, v15
	v_div_fmas_f32 v40, v40, v49, v45
	v_div_scale_f32 v45, null, v26, v26, v13
	v_div_scale_f32 v49, null, v26, v26, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v50, 1.0
	v_div_fixup_f32 v11, v40, v26, v11
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v51, -v39, v42, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s1, v10, v26, v10
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, null, v26, v26, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v56, v53, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v55, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v44, -v48, v47, v38
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v39, v56, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v47, v44, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v44, -v51, v55, 1.0
	v_fma_f32 v41, -v46, v43, v54
	v_fma_f32 v38, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s0, v20, v26, v20
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v44, v55
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_fixup_f32 v10, v38, v26, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v39, v26, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v45, v47, 1.0
	v_fmac_f32_e32 v41, v46, v55
	v_div_scale_f32 v39, null, v26, v26, v12
	v_div_fmas_f32 v42, v42, v52, v43
	v_fmac_f32_e32 v47, v40, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v51, v41, v44
	v_div_scale_f32 v40, null, v26, v26, v3
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v42, v26, v22
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_rcp_f32_e32 v44, v40
	v_div_scale_f32 v43, vcc_lo, v13, v26, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v38, v26, v20
	v_div_scale_f32 v42, null, v26, v26, v4
	v_mul_f32_e32 v48, v43, v47
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v39, v41, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v52, -v45, v48, v43
	v_rcp_f32_e32 v46, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s0, v12, v26, v12
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s1, v3, v26, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	v_fma_f32 v53, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v50, v44
	v_fma_f32 v55, -v49, v51, 1.0
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v45, -v40, v56, v50
	v_div_scale_f32 v53, s2, v4, v26, v4
	v_fmac_f32_e32 v54, v52, v41
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v56, v45, v44
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v38, -v39, v54, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v40, v56, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v44, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v38, v26, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v38, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v3, v40, v26, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v40, v17
	v_and_b32_e32 v16, 15, v34
	v_and_b32_e32 v17, 15, v35
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b64 v[34:35], off, off offset:24 ; 8-byte Folded Reload
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s3, v5, v26, v5
	v_mul_f32_e32 v57, v53, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v58, v55, v51
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v52, -v42, v57, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v49, v58, v55
	v_div_fixup_f32 v13, v43, v26, v13
	v_fmac_f32_e32 v57, v52, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v50, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v58, v39, v51
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v20, 15, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v42, v57, v53
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v31, 0x60, v59
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v49, v58, v55
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v49, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v39, v26, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v41, v26, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v33
	v_rndne_f32_e32 v33, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v37, v21
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v37
	scratch_load_b32 v37, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v42, v19
	v_cvt_i32_f32_e32 v45, v15
	v_cvt_i32_f32_e32 v51, v13
	v_and_b32_e32 v13, 15, v33
	v_and_b32_e32 v15, 15, v0
	v_and_b32_e32 v19, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v0, 1, v59
	v_lshlrev_b32_e32 v32, 10, v253
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v41, v18
	v_cvt_i32_f32_e32 v43, v14
	v_and_b32_e32 v14, 15, v36
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0x100, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v46, v11
	v_cvt_i32_f32_e32 v47, v10
	v_cvt_i32_f32_e32 v48, v9
	v_cvt_i32_f32_e32 v52, v12
	v_and_b32_e32 v9, 15, v26
	v_and_b32_e32 v10, 15, v27
	v_and_b32_e32 v11, 15, v28
	v_and_b32_e32 v12, 15, v29
	v_and_b32_e32 v26, 15, v41
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_and_b32_e32 v18, 15, v25
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v39, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v44, v24
	v_and_b32_e32 v21, 15, v30
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v24, 15, v39
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v44
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 15, v45
	v_and_b32_e32 v38, 15, v3
	v_and_b32_e32 v39, 15, v4
	v_and_b32_e32 v40, 15, v5
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s40, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(1)
	v_xor_b32_e32 v34, v34, v31
	scratch_load_b32 v31, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v33, 0x400, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, 0, v32, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 15, v49
	v_and_b32_e32 v33, 15, v50
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v0, v36, v0, v34
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v34, 15, v51
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 5, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v31, 15, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v35, 0x1b00, v37, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v41, v35, v225, 0
	ds_load_b128 v[9:12], v41
	ds_load_b128 v[17:20], v41 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[25:28]
	ds_store_b128 v0, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v41
	ds_load_b128 v[33:36], v41 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[13:16]
	ds_store_b128 v0, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v41
	ds_load_b128 v[21:24], v41 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v31, 15, v46
	v_and_b32_e32 v32, 15, v47
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[29:32]
	ds_store_b128 v0, v[37:40] offset:512
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v3, v17, 4, v9
	v_lshl_or_b32 v4, v18, 4, v10
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v41
	ds_load_b128 v[37:40], v41 offset:1024
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v17, s2, v2, v8
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v4.l
	v_and_b16 v2.h, 0xff, v3.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v19, 4, v11
	v_lshl_or_b32 v0, v20, 4, v12
	v_lshl_or_b32 v9, v21, 4, v13
	v_lshl_or_b32 v10, v22, 4, v14
	v_lshl_or_b32 v11, v23, 4, v15
	v_lshl_or_b32 v12, v24, 4, v16
	v_lshl_or_b32 v15, v35, 4, v27
	v_lshl_or_b32 v16, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 16, v59
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v0.h, 0xff, v5.l
	v_lshlrev_b16 v4.l, 8, v10.l
	v_and_b16 v4.h, 0xff, v9.l
	v_lshlrev_b16 v5.l, 8, v16.l
	v_and_b16 v5.h, 0xff, v15.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v12.l
	v_and_b16 v3.h, 0xff, v11.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v22, s0, 4, v17
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v33, 4, v25
	v_lshl_or_b32 v14, v34, 4, v26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v9.l, v4.h, v4.l
	v_or_b16 v4.h, v5.h, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v5, v6, v7, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v3.h, v3.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v59, 31, s40
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v0.h, v0.l
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
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
	v_lshlrev_b16 v2.l, 8, v21.l
	v_and_b16 v2.h, 0xff, v20.l
	v_or_b16 v4.l, v0.h, v0.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v0, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v19.l
	v_and_b16 v3.h, 0xff, v18.l
	v_or_b16 v5.h, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v2, v7, s33, 1
	v_cndmask_b32_e32 v0, v0, v6, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[8:9], v17, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v22, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	buffer_store_b16 v0, v1, s[36:39], 0 offen
.Ltmp47:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 88
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.private_seg_size, 88
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23972
; TotalNumSgprs: 46
; NumVgprs: 256
; ScratchSize: 88
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 46
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
	.byte	1                               ; Abbrev [1] 0xb:0x93 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6d DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x75:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
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
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 88
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 25
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
