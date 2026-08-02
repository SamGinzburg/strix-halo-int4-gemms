	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v240, 15, v0
	v_and_b32_e32 v239, 0xf0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v241, 7, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v38, 48, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v143, 14, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v238, 4, v240
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v37, 2, v239
	v_lshlrev_b32_e32 v2, 3, v241
	v_lshlrev_b32_e32 v44, 5, v0
	v_lshlrev_b32_e32 v45, 6, v240
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s13, v1
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
	s_lshl_b32 s40, s35, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s14, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[147:148], null, s40, v37, v[238:239]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s14, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s17, s13, 0x7f
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s33, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s14, s17, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s14, s14, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[148:149], null, s35, 6, v[147:148]
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s12, s13, 63
.Ltmp19:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s34, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s41, s3, 6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v227, v1, v2, s2
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s42, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s13, s17, s14
.Ltmp21:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v228, s35, 2, v147
	s_mul_i32 s18, s40, s41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s12, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s41, v227
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s14, s42, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s14, v228
	v_add_nc_u32_e32 v3, s14, v148
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s14, s35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v11, s15, v228
	v_add_nc_u32_e32 v12, s15, v148
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[35:36], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v2, s[20:23], 0 offen
	buffer_load_b128 v[7:10], v7, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s14, v147
	s_mov_b32 s14, 0
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	v_cndmask_b32_e64 v15, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[11:14], v2, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v15, s[20:23], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v19, s40, v1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v1, s2
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s12, 0x7f
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v23, 0x80000000, v19, s2
	s_clause 0x1
	buffer_load_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v23, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s40, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_b128 v[27:30], v1, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v2, s[20:23], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	v_and_b32_e32 v2, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v2, v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, v1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v38, v143, 10, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v230, 0, v37
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v240
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v37, 0x90, v38
	v_xor_b32_e32 v39, 0x120, v38
	v_xor_b32_e32 v40, 0x1b0, v38
	v_xor_b32_e32 v41, 0x210, v38
	v_add_nc_u32_e32 v231, 0, v38
	v_xor_b32_e32 v42, 0x330, v38
	v_xor_b32_e32 v38, 0x3a0, v38
	v_add_nc_u32_e32 v232, 0, v37
	v_add_nc_u32_e32 v233, 0, v39
	v_add_nc_u32_e32 v234, 0, v40
	v_add_nc_u32_e32 v235, 0, v41
	v_add_nc_u32_e32 v236, 0, v42
	v_add_nc_u32_e32 v237, 0, v38
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v37, 0x4000, v231
	v_add_nc_u32_e32 v38, 0x4000, v232
	v_add_nc_u32_e32 v39, 0x4000, v233
	v_add_nc_u32_e32 v40, 0x4000, v234
	v_add_nc_u32_e32 v41, 0x4000, v235
	v_add_nc_u32_e32 v42, 0x4000, v236
	v_add_nc_u32_e32 v43, 0x4000, v237
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(8)
	ds_store_b64 v230, v[35:36] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(6)
	v_perm_b32 v35, v7, v3, 0x4000501
	v_perm_b32 v3, v7, v3, 0x6020703
	v_perm_b32 v7, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(4)
	v_perm_b32 v10, v15, v11, 0x4000501
	v_perm_b32 v11, v15, v11, 0x6020703
	v_perm_b32 v15, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v18, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	v_perm_b32 v26, v35, v18, 0x7060302
	v_perm_b32 v18, v35, v18, 0x5040100
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
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v231, v26, v18 offset1:16
	ds_store_2addr_b32 v232, v35, v3 offset1:16
	ds_store_2addr_b32 v233, v19, v7 offset1:16
	ds_store_2addr_b32 v234, v23, v4 offset1:16
	ds_store_2addr_b32 v235, v20, v8 offset1:16
	ds_store_2addr_b32 v231, v24, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v236, v21, v9 offset1:16
	ds_store_2addr_b32 v237, v25, v6 offset1:16
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
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 6, v240
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v6, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 0x1800, v3
	v_lshl_or_b32 v9, v241, 6, v7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow469
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v7, s34, v240
	v_or_b32_e32 v2, s34, v2
	s_ashr_i32 s1, s13, 7
	v_and_b32_e32 v8, 1, v0
	v_mov_b32_e32 v156, 0
	v_mul_lo_u32 v223, v7, s1
	v_mul_lo_u32 v224, v2, s1
	v_or_b32_e32 v146, s42, v0
	v_lshlrev_b32_e32 v144, 2, v239
	v_lshlrev_b32_e32 v145, 5, v8
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s12, 6
	s_mov_b32 s12, 0
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v1, 48, v1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 0x1800, v44
	v_and_b32_e32 v2, 0x210, v2
	v_bfe_i32 v4, v0, 5, 1
	v_lshlrev_b32_e32 v9, 1, v143
	v_add3_u32 v10, 0, v144, v145
	v_lshl_or_b32 v5, v241, 6, v3
	v_xor_b32_e32 v2, v2, v1
	v_and_b32_e32 v3, 0x420, v4
	v_or_b32_e32 v1, v45, v1
	v_lshlrev_b32_e32 v11, 1, v239
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:12
	scratch_store_b32 off, v45, off offset:8
	v_or_b32_e32 v2, v2, v5
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v5, 48, v1
.Ltmp23:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v238, s40, v147
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v239, 0, v1
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v3, 16, v1
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v241, 0, v4
	v_add_nc_u32_e32 v242, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, 16, v2
	v_xor_b32_e32 v7, 32, v2
	v_xor_b32_e32 v8, 48, v2
	v_add_nc_u32_e32 v240, 0, v3
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v243, 0, v2
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v244, 0, v6
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v245, 0, v7
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v246, 0, v8
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v247, v10, v9
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v248, 0, v11
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v249, 0x4000, v231
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v156, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v157, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_add_i32 s0, s0, -2
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v144, off
	scratch_store_b32 off, v145, off offset:4
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s13, s12, 1
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s41, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s15, s13, s3
	s_mov_b32 s14, s41
	s_lshl_b32 s41, s15, 6
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s16, 25
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s41, v227
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s41, s40
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s16, s42
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s17, s14, s40
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s16, s15, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[149:150], v9, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v146, s17, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v223, s14, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	v_add_nc_u32_e32 v14, s35, v146
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s15, v147
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v225, v14, s17, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v145, 0x80000000, v10, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v254, v9, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v239 offset:32768
	ds_load_b128 v[77:80], v239 offset:33792
	ds_load_b128 v[29:32], v240 offset:32768
	ds_load_b128 v[81:84], v240 offset:33792
	ds_load_b128 v[117:120], v241 offset:32768
	ds_load_b128 v[113:116], v241 offset:33792
	ds_load_b128 v[109:112], v242 offset:32768
	ds_load_b128 v[105:108], v242 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[9:12], v243
	ds_load_b128 v[33:36], v243 offset:8192
	ds_load_b128 v[37:40], v244
	ds_load_b128 v[49:52], v244 offset:8192
	ds_load_b128 v[85:88], v245
	ds_load_b128 v[250:253], v245 offset:8192
	ds_load_b128 v[133:136], v246
	ds_load_b128 v[121:124], v246 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[89:92], v243 offset:16384
	ds_load_b128 v[97:100], v243 offset:24576
	ds_load_b128 v[93:96], v244 offset:16384
	ds_load_b128 v[151:154], v244 offset:24576
	ds_load_b128 v[137:140], v245 offset:16384
	ds_load_b128 v[141:144], v245 offset:24576
	ds_load_b128 v[125:128], v246 offset:16384
	ds_load_b128 v[129:132], v246 offset:24576
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v155, s16, v148
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	buffer_load_b128 v[73:76], v13, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v221, v224, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v220, s15, v148
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[9:12], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[37:40], v[29:32], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[81:84], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[29:32], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[117:120], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[113:116], v[17:24] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[85:88], v155, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[77:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[93:96], v[29:32], v[65:72] neg_lo:[1,1,0]
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v222, s16, v147
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[77:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[81:84], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[97:100], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v226, s16, v238
	v_add_nc_u32_e32 v229, s16, v228
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[93:96], v[81:84], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[151:154], v[29:32], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[77:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[97:100], v220, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[250:253], v[117:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[250:253], v[113:116], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[151:154], v[81:84], v[25:32] neg_lo:[1,1,0]
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v151, 0x80000000, v221, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[81:84], v222, s[20:23], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v152, 0x80000000, v225, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v251, v145, s[24:27], 0 offen
	buffer_load_u16 v252, v151, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[89:92], v226, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v229, s[20:23], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[137:140], v[117:120], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[113:116], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[137:140], v[113:116], v[33:40] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[133:136], v[109:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[105:108], v[9:16] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[125:128], v[109:112], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[105:108], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[133:136], v[105:108], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[125:128], v[105:108], v[33:40] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v105, v14
	v_cvt_f32_i32_e32 v107, v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v16, v25
	v_cvt_f32_i32_e32 v14, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v59
	v_cvt_f32_i32_e32 v116, v57
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v25, v68
	v_cvt_f32_i32_e32 v31, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v66, v63
	v_cvt_f32_i32_e32 v68, v61
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[141:144], v[117:120], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[109:112], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v108, v9
	v_cvt_f32_i32_e32 v106, v15
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v9, v30
	v_wmma_i32_16x16x16_iu8 v[49:56], v[129:132], v[109:112], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v41
	v_cvt_f32_i32_e32 v109, v46
	v_cvt_f32_i32_e32 v110, v47
	v_cvt_f32_i32_e32 v111, v48
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v41, v54
	v_cvt_f32_i32_e32 v46, v55
	v_cvt_f32_i32_e32 v47, v56
	v_cvt_f32_i32_e32 v15, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v113, v60
	v_cvt_f32_i32_e32 v115, v58
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v30, v67
	v_cvt_f32_i32_e32 v32, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v64
	v_cvt_f32_i32_e32 v67, v62
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
	v_cvt_f32_i32_e32 v121, v24
	v_cvt_f32_i32_e32 v122, v23
	v_cvt_f32_i32_e32 v123, v22
	v_cvt_f32_i32_e32 v124, v21
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v21, v40
	v_cvt_f32_i32_e32 v22, v39
	v_cvt_f32_i32_e32 v23, v38
	v_cvt_f32_i32_e32 v24, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v20
	v_cvt_f32_i32_e32 v118, v19
	v_cvt_f32_i32_e32 v119, v18
	v_cvt_f32_i32_e32 v120, v17
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v17, v36
	v_cvt_f32_i32_e32 v18, v35
	v_cvt_f32_i32_e32 v19, v34
	v_cvt_f32_i32_e32 v20, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v13
	v_cvt_f32_i32_e32 v126, v12
	v_cvt_f32_i32_e32 v127, v11
	v_cvt_f32_i32_e32 v128, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v29
	v_cvt_f32_i32_e32 v11, v28
	v_cvt_f32_i32_e32 v12, v27
	v_cvt_f32_i32_e32 v13, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s12, s0
	s_mov_b32 s12, s13
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v57, v89, v81, 0x4000501
	v_perm_b32 v59, v89, v81, 0x6020703
	v_perm_b32 v61, v90, v82, 0x4000501
	v_perm_b32 v63, v90, v82, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v82, 16, v252
	v_lshlrev_b32_e32 v81, 16, v251
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v101, s15, v238
	v_add_nc_u32_e32 v255, s15, v228
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[101:104], v101, s[20:23], 0 offen
	buffer_load_b128 v[93:96], v255, s[20:23], 0 offen
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v145, 16, v254
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v58, v85, v77, 0x4000501
	v_perm_b32 v60, v85, v77, 0x6020703
	v_perm_b32 v62, v86, v78, 0x4000501
	v_perm_b32 v64, v86, v78, 0x6020703
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v247, v145 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v250, v152, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v77, v92, v84, 0x4000501
	v_perm_b32 v129, v64, v63, 0x7060302
	v_perm_b32 v130, v64, v63, 0x5040100
	v_perm_b32 v78, v88, v80, 0x4000501
	v_perm_b32 v80, v88, v80, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v37, v103, v75, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v38, v99, v95, 0x4000501
	v_perm_b32 v39, v103, v75, 0x6020703
	v_perm_b32 v40, v99, v95, 0x6020703
	v_perm_b32 v50, v104, v76, 0x4000501
	v_perm_b32 v51, v100, v96, 0x4000501
	v_perm_b32 v52, v104, v76, 0x6020703
	v_perm_b32 v53, v100, v96, 0x6020703
	v_perm_b32 v26, v101, v73, 0x4000501
	v_perm_b32 v27, v97, v93, 0x4000501
	v_perm_b32 v28, v101, v73, 0x6020703
	v_perm_b32 v29, v97, v93, 0x6020703
	v_perm_b32 v33, v102, v74, 0x4000501
	v_perm_b32 v34, v98, v94, 0x4000501
	v_perm_b32 v35, v102, v74, 0x6020703
	v_perm_b32 v36, v98, v94, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v73, v91, v83, 0x4000501
	v_perm_b32 v74, v87, v79, 0x4000501
	v_perm_b32 v75, v91, v83, 0x6020703
	v_perm_b32 v76, v87, v79, 0x6020703
	v_perm_b32 v79, v92, v84, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v91, v38, v37, 0x7060302
	v_perm_b32 v92, v38, v37, 0x5040100
	v_perm_b32 v93, v40, v39, 0x7060302
	v_perm_b32 v94, v40, v39, 0x5040100
	v_perm_b32 v95, v51, v50, 0x7060302
	v_perm_b32 v96, v51, v50, 0x5040100
	v_perm_b32 v97, v53, v52, 0x7060302
	v_perm_b32 v98, v53, v52, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v99, v58, v57, 0x7060302
	v_perm_b32 v100, v58, v57, 0x5040100
	v_perm_b32 v101, v60, v59, 0x7060302
	v_perm_b32 v102, v60, v59, 0x5040100
	v_perm_b32 v103, v62, v61, 0x7060302
	v_perm_b32 v104, v62, v61, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[37:40], v248 offset:35328
	ds_load_b128 v[50:53], v248 offset:35344
	ds_load_b128 v[57:60], v248 offset:34816
	ds_load_b128 v[61:64], v248 offset:34832
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v83, v27, v26, 0x7060302
	v_perm_b32 v84, v27, v26, 0x5040100
	v_perm_b32 v87, v34, v33, 0x7060302
	v_perm_b32 v88, v34, v33, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v33, v74, v73, 0x7060302
	v_perm_b32 v34, v74, v73, 0x5040100
	v_perm_b32 v26, v80, v79, 0x7060302
	v_perm_b32 v27, v80, v79, 0x5040100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v85, v29, v28, 0x7060302
	v_perm_b32 v86, v29, v28, 0x5040100
	v_perm_b32 v89, v36, v35, 0x7060302
	v_perm_b32 v90, v36, v35, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v35, v76, v75, 0x7060302
	v_perm_b32 v36, v76, v75, 0x5040100
	v_perm_b32 v28, v78, v77, 0x7060302
	v_perm_b32 v29, v78, v77, 0x5040100
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v58, v81
	v_dual_mul_f32 v58, v58, v82 :: v_dual_mul_f32 v73, v37, v81
	v_dual_mul_f32 v37, v37, v82 :: v_dual_mul_f32 v136, v40, v81
	v_mul_f32_e32 v74, v51, v81
	v_mul_f32_e32 v75, v52, v81
	v_dual_mul_f32 v76, v53, v81 :: v_dual_mul_f32 v51, v51, v82
	v_mul_f32_e32 v138, v38, v81
	v_mul_f32_e32 v52, v52, v82
	v_dual_mul_f32 v53, v53, v82 :: v_dual_fmac_f32 v210, v79, v115
	v_mul_f32_e32 v77, v60, v81
	v_mul_f32_e32 v78, v59, v81
	v_mul_f32_e32 v80, v57, v81
	v_mul_f32_e32 v131, v64, v81
	v_mul_f32_e32 v132, v63, v81
	v_dual_mul_f32 v133, v62, v81 :: v_dual_mul_f32 v64, v64, v82
	v_mul_f32_e32 v134, v61, v81
	v_dual_mul_f32 v135, v50, v81 :: v_dual_mul_f32 v40, v40, v82
	v_dual_mul_f32 v137, v39, v81 :: v_dual_mul_f32 v50, v50, v82
	v_mul_f32_e32 v60, v60, v82
	v_dual_mul_f32 v59, v59, v82 :: v_dual_fmac_f32 v206, v133, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v63, v63, v82 :: v_dual_fmac_f32 v202, v137, v71
	v_mul_f32_e32 v62, v62, v82
	v_dual_mul_f32 v57, v57, v82 :: v_dual_fmac_f32 v204, v131, v65
	v_dual_mul_f32 v61, v61, v82 :: v_dual_fmac_f32 v200, v135, v69
	v_dual_mul_f32 v39, v39, v82 :: v_dual_fmac_f32 v218, v74, v109
	v_dual_mul_f32 v38, v38, v82 :: v_dual_fmac_f32 v211, v80, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v215, v37, v108
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v250
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v205, v132, v66 :: v_dual_fmac_f32 v198, v58, v119
	v_dual_fmac_f32 v219, v73, v112 :: v_dual_fmac_f32 v196, v59, v118
	v_dual_fmac_f32 v203, v138, v72 :: v_dual_fmac_f32 v192, v64, v121
	v_dual_fmac_f32 v201, v136, v70 :: v_dual_fmac_f32 v194, v62, v123
	v_dual_fmac_f32 v217, v75, v110 :: v_dual_fmac_f32 v156, v50, v125
	v_dual_fmac_f32 v199, v57, v120 :: v_dual_fmac_f32 v158, v39, v127
	v_dual_fmac_f32 v197, v60, v117 :: v_dual_fmac_f32 v212, v53, v107
	v_dual_fmac_f32 v195, v61, v124 :: v_dual_fmac_f32 v214, v51, v105
	v_fmac_f32_e32 v193, v63, v122
	v_fmac_f32_e32 v159, v38, v128
	v_fmac_f32_e32 v157, v40, v126
	v_fmac_f32_e32 v213, v52, v106
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v247, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v248 offset:35328
	ds_load_b128 v[50:53], v248 offset:35344
	ds_load_b128 v[57:60], v248 offset:34816
	ds_load_b128 v[61:64], v248 offset:34832
	v_add_nc_u32_e32 v65, 0x4000, v232
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v207, v134, v68 :: v_dual_fmac_f32 v216, v76, v111
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v230, v[149:150] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v231, v83, v84 offset1:16
	ds_store_2addr_b32 v232, v85, v86 offset1:16
	ds_store_2addr_b32 v233, v87, v88 offset1:16
	ds_store_2addr_b32 v234, v89, v90 offset1:16
	ds_store_2addr_b32 v235, v91, v92 offset1:16
	ds_store_2addr_b32 v231, v93, v94 offset0:160 offset1:176
	ds_store_2addr_b32 v236, v95, v96 offset1:16
	ds_store_2addr_b32 v237, v97, v98 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v249, v99, v100 offset1:16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v208, v78, v114 :: v_dual_fmac_f32 v209, v77, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(13)
	v_mul_f32_e32 v78, v40, v81
	s_waitcnt lgkmcnt(12)
	v_mul_f32_e32 v66, v51, v81
	s_waitcnt lgkmcnt(11)
	v_mul_f32_e32 v69, v60, v81
	s_waitcnt lgkmcnt(10)
	v_mul_f32_e32 v76, v61, v81
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v65, v101, v102 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v60, v60, v82 :: v_dual_add_nc_u32 v65, 0x4000, v233
	v_mul_f32_e32 v71, v58, v81
	v_mul_f32_e32 v58, v58, v82
	v_mul_f32_e32 v68, v53, v81
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v65, v103, v104 offset1:16
	v_add_nc_u32_e32 v65, 0x4000, v234
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v52, v81
	v_mul_f32_e32 v52, v52, v82
	v_mul_f32_e32 v70, v59, v81
	v_mul_f32_e32 v72, v57, v81
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v65, v129, v130 offset1:16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v37, v81
	v_mul_f32_e32 v51, v51, v82
	v_dual_mul_f32 v37, v37, v82 :: v_dual_mul_f32 v80, v38, v81
	v_mul_f32_e32 v53, v53, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v164, v65, v48
	v_dual_fmac_f32 v183, v76, v56 :: v_dual_fmac_f32 v182, v51, v9
	v_add_nc_u32_e32 v9, 0x4000, v235
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v73, v64, v81 :: v_dual_mul_f32 v38, v38, v82
	v_mul_f32_e32 v74, v63, v81
	v_dual_mul_f32 v75, v62, v81 :: v_dual_mul_f32 v40, v40, v82
	v_dual_mul_f32 v79, v39, v81 :: v_dual_fmac_f32 v174, v78, v43
	v_dual_mul_f32 v59, v59, v82 :: v_dual_fmac_f32 v190, v66, v41
	v_dual_mul_f32 v57, v57, v82 :: v_dual_fmac_f32 v186, v68, v47
	v_mul_f32_e32 v64, v64, v82
	v_mul_f32_e32 v63, v63, v82
	v_mul_f32_e32 v62, v62, v82
	v_dual_mul_f32 v77, v50, v81 :: v_dual_fmac_f32 v188, v67, v46
	v_dual_mul_f32 v61, v61, v82 :: v_dual_fmac_f32 v170, v60, v17
	v_mul_f32_e32 v50, v50, v82
	v_mul_f32_e32 v39, v39, v82
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v9, v33, v34 offset1:16
	ds_store_2addr_b32 v249, v35, v36 offset0:160 offset1:176
	v_add_nc_u32_e32 v9, 0x4000, v236
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v189, v71, v31 :: v_dual_fmac_f32 v184, v37, v16
	v_dual_fmac_f32 v187, v69, v25 :: v_dual_fmac_f32 v160, v50, v10
	v_dual_fmac_f32 v181, v75, v55 :: v_dual_fmac_f32 v180, v52, v14
	v_fmac_f32_e32 v177, v73, v49
	v_dual_fmac_f32 v176, v80, v45 :: v_dual_fmac_f32 v179, v74, v54
	v_dual_fmac_f32 v178, v53, v15 :: v_dual_fmac_f32 v175, v79, v44
	v_fmac_f32_e32 v173, v77, v42
	v_fmac_f32_e32 v172, v57, v20
	v_dual_fmac_f32 v191, v72, v32 :: v_dual_fmac_f32 v166, v63, v22
	v_fmac_f32_e32 v171, v58, v19
	v_dual_fmac_f32 v169, v59, v18 :: v_dual_fmac_f32 v168, v61, v24
	v_dual_fmac_f32 v185, v70, v30 :: v_dual_fmac_f32 v162, v39, v12
	v_fmac_f32_e32 v167, v62, v23
	v_fmac_f32_e32 v165, v64, v21
	v_fmac_f32_e32 v163, v38, v13
	v_fmac_f32_e32 v161, v40, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_2addr_b32 v9, v28, v29 offset1:16
	v_add_nc_u32_e32 v9, 0x4000, v237
	ds_store_2addr_b32 v9, v26, v27 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v144, off, off
	scratch_load_b32 v145, off, off offset:4
	scratch_load_b32 v4, off, off offset:8
	scratch_load_b32 v9, off, off offset:12
	v_and_b32_e32 v240, 15, v0
	v_and_b32_e32 v239, 0xf0, v0
	v_lshlrev_b32_e32 v236, 5, v0
	v_and_b32_e32 v241, 7, v0
	v_and_b32_e32 v237, 8, v0
	v_lshlrev_b32_e32 v238, 4, v240
	v_and_b32_e32 v143, 14, v0
	v_and_b32_e32 v6, 32, v0
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v236, v3
	v_mov_b32_e32 v237, v5
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v33, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v237
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v3, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v1, 3, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v4, v4, v1
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v2, v1
	v_cndmask_b32_e64 v5, 0x420, 0, vcc_lo
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v2, 0, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v3, v4, 16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v1, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v6, v4, 32, 0
	v_xad_u32 v7, v4, 48, 0
	ds_load_b128 v[29:32], v2 offset:32768
	ds_load_b128 v[21:24], v2 offset:33792
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v55, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v34, v1, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v3 offset:32768
	ds_load_b128 v[17:20], v3 offset:33792
	ds_load_b128 v[9:12], v6 offset:32768
	ds_load_b128 v[1:4], v6 offset:33792
	ds_load_b128 v[13:16], v7 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v7 offset:33792
	v_mov_b32_e32 v74, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_xor_b32_e32 v35, 48, v34
	v_xor_b32_e32 v36, 32, v34
	v_xor_b32_e32 v37, 16, v34
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v101, 0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v98, 0, v35
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v100, 0, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v99, 0, v37
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
	s_mov_b32 s12, 0
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
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v41, s19 :: v_dual_mov_b32 v40, s18
	v_dual_mov_b32 v39, s17 :: v_dual_mov_b32 v38, s16
	v_dual_mov_b32 v37, s15 :: v_dual_mov_b32 v36, s14
	v_dual_mov_b32 v35, s13 :: v_dual_mov_b32 v34, s12
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
	ds_load_b128 v[135:138], v100 offset:16384
	ds_load_b128 v[139:142], v99 offset:24576
	ds_load_b128 v[147:150], v99 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v106, s19 :: v_dual_mov_b32 v105, s18
	v_dual_mov_b32 v104, s17 :: v_dual_mov_b32 v103, s16
	v_dual_mov_b32 v102, s15 :: v_dual_mov_b32 v101, s14
	v_dual_mov_b32 v100, s13 :: v_dual_mov_b32 v99, s12
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[151:154], v98 offset:16384
	ds_load_b128 v[225:228], v98 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[38:41], v[29:32], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[64:67], v[29:32], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[38:41], v[21:24], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[64:67], v[21:24], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[147:150], v[25:28], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[139:142], v[25:28], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[147:150], v[17:20], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[139:142], v[17:20], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[135:138], v[9:12], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[131:134], v[9:12], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[135:138], v[1:4], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[131:134], v[1:4], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[151:154], v[13:16], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[225:228], v[13:16], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[151:154], v[5:8], v[123:130] neg_lo:[1,1,0]
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
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s0, s41, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_mov_b32 s36, s8
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_lshl_add_u32 v19, v239, 1, 0
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	s_waitcnt lgkmcnt(2)
	v_mad_u64_u32 v[1:2], null, s0, s40, v[146:147]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v223, s0, 1
	v_add_lshl_u32 v3, v224, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v33, 10, v33
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v17, v2, s[36:39], 0 offen
	buffer_load_u16 v22, v3, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v144, v145
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_add_u32 v20, v143, 1, v3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v17
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v4, s[36:39], 0 offen
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
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp24:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp25:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v5, v18
	v_mul_f32_e32 v23, v2, v18
	v_dual_mul_f32 v25, v4, v18 :: v_dual_mul_f32 v2, v2, v17
	v_dual_mul_f32 v24, v3, v18 :: v_dual_mul_f32 v5, v5, v17
	v_mul_f32_e32 v3, v3, v17
	v_mul_f32_e32 v4, v4, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v90, v214
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v13, v18
	v_mul_f32_e32 v27, v14, v18
	v_mul_f32_e32 v28, v16, v18
	v_dual_mul_f32 v29, v15, v18 :: v_dual_mul_f32 v14, v14, v17
	v_mul_f32_e32 v98, v12, v18
	v_mul_f32_e32 v99, v6, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v58, v219
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v214, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v18
	v_mul_f32_e32 v13, v13, v17
	v_mul_f32_e32 v16, v16, v17
	v_mul_f32_e32 v15, v15, v17
	v_mul_f32_e32 v9, v9, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v72, v217
	v_fma_f32 v5, v5, v85, v215
	v_fma_f32 v3, v3, v92, v213
	v_fma_f32 v4, v4, v93, v212
	v_fma_f32 v29, v29, v96, v208
	v_fma_f32 v28, v28, v97, v209
	v_fma_f32 v27, v27, v95, v210
	v_fma_f32 v26, v26, v94, v211
	v_fma_f32 v72, v98, v62, v204
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v31, v10, v18 :: v_dual_mul_f32 v12, v12, v17
	v_mul_f32_e32 v32, v11, v18
	v_dual_mul_f32 v101, v8, v18 :: v_dual_mul_f32 v10, v10, v17
	v_mul_f32_e32 v11, v11, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v74, v216
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v74, v32, v57, v205
	v_fma_f32 v15, v15, v86, v196
	v_fma_f32 v86, v16, v87, v197
	v_fma_f32 v14, v14, v81, v198
	v_fma_f32 v13, v13, v77, v199
	v_fma_f32 v77, v12, v55, v192
	v_fma_f32 v81, v11, v50, v193
	v_fma_f32 v87, v10, v46, v194
	v_fma_f32 v90, v9, v43, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v215, v5, s2
	v_cndmask_b32_e64 v57, v213, v3, s2
	v_cndmask_b32_e64 v55, v212, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v101, v76, v201
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v208, v29, s2
	v_cndmask_b32_e64 v50, v210, v27, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v31, v52, v206
	v_fma_f32 v30, v30, v47, v207
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v201, v76, s2
	v_cndmask_b32_e64 v47, v209, v28, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v69, v218
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v206, v31, s2
	v_cndmask_b32_e64 v31, v205, v74, s2
	v_cndmask_b32_e64 v46, v207, v30, s2
	v_cndmask_b32_e64 v30, v204, v72, s2
	v_cndmask_b32_e64 v16, v217, v24, s2
	v_cndmask_b32_e64 v24, v192, v77, s2
	v_cndmask_b32_e64 v69, v219, v22, s2
	v_cndmask_b32_e64 v22, v218, v23, s2
	v_cndmask_b32_e64 v52, v211, v26, s2
	v_cndmask_b32_e64 v23, v193, v81, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v17
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v99, v63, v203
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v216, v25, s2
	v_cndmask_b32_e64 v25, v199, v13, s2
	v_cndmask_b32_e64 v13, v195, v90, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[92:95], v19 offset:34816
	ds_load_b128 v[96:99], v19 offset:34832
	ds_load_b128 v[9:12], v19 offset:35328
	ds_load_b128 v[2:5], v19 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v203, v85, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v1, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v198, v14, s2
	v_cndmask_b32_e64 v14, v197, v86, s2
	v_cndmask_b32_e64 v21, v196, v15, s2
	v_cndmask_b32_e64 v15, v194, v87, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v102, v80, v200
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v200, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v37, v156
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v76, v92, v18
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v85, v96, v18
	v_mul_f32_e32 v90, v99, v18
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v19, v9, v18
	v_mul_f32_e32 v101, v11, v18
	v_mul_f32_e32 v9, v9, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v85, v45, v183
	v_fma_f32 v60, v90, v60, v177
	v_fma_f32 v19, v19, v42, v164
	v_fma_f32 v51, v76, v51, v191
	v_fma_f32 v76, v101, v67, v175
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v183, v45, s2
	v_cndmask_b32_e64 v45, v177, v60, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v102, v12, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v82, v184
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v164, v19, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v99, v99, v17
	v_mul_f32_e32 v92, v92, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v73, v102, v73, v174
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v96, v96, v17
	v_mul_f32_e32 v11, v11, v17
	v_mul_f32_e32 v12, v12, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v75, v92, v75, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v174, v73, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v7, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v74, v5, v18
	v_dual_mul_f32 v5, v5, v17 :: v_dual_mul_f32 v72, v4, v18
	v_mul_f32_e32 v77, v93, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v100, v70, v202
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v86, v97, v18
	v_mul_f32_e32 v93, v93, v17
	v_mul_f32_e32 v97, v97, v17
	v_mul_f32_e32 v81, v94, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v202, v70, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v3, v18
	v_dual_mul_f32 v3, v3, v17 :: v_dual_mul_f32 v100, v10, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v91, v178
	v_fma_f32 v56, v77, v56, v189
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v42, v70, v65, v190
	v_fma_f32 v65, v72, v68, v188
	v_fma_f32 v68, v74, v71, v186
	v_fma_f32 v3, v3, v88, v182
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v184, v9, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v80, v95, v18
	v_mul_f32_e32 v4, v4, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v186, v68, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v87, v98, v18
	v_mul_f32_e32 v18, v2, v18
	v_mul_f32_e32 v94, v94, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v4, v4, v89, v180
	v_fma_f32 v64, v81, v64, v185
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v98, v98, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v74, v18, v78, v173
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v182, v3, s2
	v_cndmask_b32_e64 v3, v178, v5, s2
	v_cndmask_b32_e64 v5, v189, v56, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v77, v94, v83, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v188, v65, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v79, v93, v79, v171
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v180, v4, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v61, v100, v61, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v185, v64, s2
	v_cndmask_b32_e64 v56, v172, v75, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v83
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v81, v98, v53, v166
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v176, v61, s2
	v_cndmask_b32_e64 v61, v175, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v54, v87, v54, v179
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v169, v77, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v80, v66, v187
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v179, v54, s2
	v_cndmask_b32_e64 v54, v171, v79, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v49, v86, v49, v181
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v75
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v48, v97, v48, v167
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v187, v66, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v181, v49, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v95, v95, v17
	v_mul_f32_e32 v10, v10, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v80, v99, v59, v165
	v_fma_f32 v44, v96, v44, v168
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v191, v51, s2
	v_cndmask_b32_e64 v49, v167, v48, s2
	v_cndmask_b32_e64 v48, v166, v81, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v81, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v88, 0xbfb8aa3b, v65
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v82
	v_dual_mul_f32 v89, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v60
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v83
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v77
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v79
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v95, v84, v170
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v168, v44, s2
	v_cndmask_b32_e64 v44, v165, v80, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v70
	v_dual_mul_f32 v86, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v77, 0, 0x42800000, s4
	v_cndmask_b32_e64 v79, 0, 0x42800000, s6
	v_mul_f32_e32 v90, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v81
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v89
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v75, v75
	v_dual_mul_f32 v87, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v94, 0xbfb8aa3b, v64
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v71
	v_mul_f32_e32 v99, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v86
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v84
	v_cndmask_b32_e64 v81, 0, 0x42800000, s11
	v_cndmask_b32_e64 v89, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v88
	v_cndmask_b32_e64 v103, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v190, v42, s2
	v_cndmask_b32_e64 v59, v173, v74, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v98, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v89, 0xbfb8aa3b, v66
	v_dual_mul_f32 v102, 0xbfb8aa3b, v51 :: v_dual_fmac_f32 v81, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v86, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v85
	v_cndmask_b32_e64 v84, 0, 0x42800000, s10
	v_cndmask_b32_e64 v90, 0, 0x42800000, s12
	v_cndmask_b32_e64 v88, 0, 0x42800000, s14
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v87
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v101
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v99
	v_exp_f32_e32 v77, v77
	v_ldexp_f32 v73, v73, v103
	v_ldexp_f32 v75, v75, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v170, v78, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v74, 0xbfb8aa3b, v42 :: v_dual_mul_f32 v93, 0xbfb8aa3b, v61
	v_dual_mul_f32 v78, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v95, 0xbfb8aa3b, v53
	v_dual_mul_f32 v80, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v97, 0xbfb8aa3b, v54
	v_mul_f32_e32 v91, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v85, 0, 0x42800000, s9
	v_cndmask_b32_e64 v87, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v98
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v102
	v_cndmask_b32_e64 v101, 0, 0x42800000, s25
	v_cndmask_b32_e64 v99, 0, 0x42800000, s27
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v4
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v70
	v_dual_fmac_f32 v90, 0xbfb8aa3b, v67 :: v_dual_add_f32 v73, 1.0, v73
	v_dual_fmac_f32 v88, 0xbfb8aa3b, v65 :: v_dual_add_f32 v75, 1.0, v75
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v89, v89
	v_dual_mul_f32 v96, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v85, 0xbfb8aa3b, v5
	v_dual_mul_f32 v100, 0xbfb8aa3b, v48 :: v_dual_fmac_f32 v87, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v74
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v76
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v78
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v80
	v_cndmask_b32_e64 v94, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v91
	v_cndmask_b32_e64 v98, 0, 0x42800000, s20
	v_cndmask_b32_e64 v102, 0, 0x42800000, s24
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s13
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v49
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v44
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v77, v77, v107
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v103, null, v73, v73, v82
	v_div_scale_f32 v107, null, v75, v75, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	v_cndmask_b32_e64 v76, 0, 0x42800000, s3
	v_cndmask_b32_e64 v78, 0, 0x42800000, s5
	v_cndmask_b32_e64 v80, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v93
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v92
	v_cndmask_b32_e64 v91, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v97
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v95
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v100
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s14
	v_dual_fmac_f32 v94, 0xbfb8aa3b, v64 :: v_dual_add_f32 v77, 1.0, v77
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v99, v99
	v_ldexp_f32 v81, v81, v114
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v56
	v_ldexp_f32 v89, v89, v116
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v167, v103
	v_rcp_f32_e32 v169, v107
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, s17
	v_cndmask_b32_e64 v92, 0, 0x42800000, s18
	v_cndmask_b32_e64 v97, 0, 0x42800000, s21
	v_cndmask_b32_e64 v96, 0, 0x42800000, s22
	v_cndmask_b32_e64 v95, 0, 0x42800000, s23
	v_cndmask_b32_e64 v100, 0, 0x42800000, s26
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v42 :: v_dual_fmac_f32 v93, 0xbfb8aa3b, v61
	v_dual_fmac_f32 v76, 0xbfb8aa3b, v72 :: v_dual_fmac_f32 v91, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v78, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v53
	v_dual_fmac_f32 v80, 0xbfb8aa3b, v3 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s25
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s27
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v79, v79, v109
	v_ldexp_f32 v86, v86, v111
	v_ldexp_f32 v84, v84, v113
	v_ldexp_f32 v90, v90, v115
	v_ldexp_f32 v88, v88, v117
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v98, v98
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v102, v102
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s16
	v_dual_fmac_f32 v92, 0xbfb8aa3b, v60 :: v_dual_add_f32 v79, 1.0, v79
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s20
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s24
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v85, v85, v112
	v_fmac_f32_e32 v96, 0xbfb8aa3b, v19
	v_ldexp_f32 v87, v87, v118
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v48
	v_ldexp_f32 v101, v101, v128
	v_ldexp_f32 v99, v99, v130
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	v_add_f32_e32 v86, 1.0, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v195, -v103, v167, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v88, 1.0, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v197, -v107, v169, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v106, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s19
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v95, v95
	v_ldexp_f32 v94, v94, v119
	v_ldexp_f32 v98, v98, v123
	v_ldexp_f32 v102, v102, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v96, v96
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v100, v100
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v99, 1.0, v99
	v_add_f32_e32 v101, 1.0, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v111, null, v77, v77, v71
	v_div_scale_f32 v115, null, v79, v79, v9
	v_div_scale_f32 v119, null, v86, v86, v4
	v_div_scale_f32 v123, null, v84, v84, v70
	v_fmac_f32_e32 v167, v195, v167
	v_div_scale_f32 v131, null, v88, v88, v65
	v_fmac_f32_e32 v169, v197, v169
	v_div_scale_f32 v127, null, v90, v90, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s23
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s26
	v_ldexp_f32 v74, v74, v104
	v_ldexp_f32 v76, v76, v106
	v_ldexp_f32 v78, v78, v108
	v_ldexp_f32 v80, v80, v110
	v_ldexp_f32 v91, v91, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v171, v111
	v_rcp_f32_e32 v173, v115
	v_rcp_f32_e32 v175, v119
	v_rcp_f32_e32 v177, v123
	v_rcp_f32_e32 v179, v127
	v_rcp_f32_e32 v181, v131
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v93, v93, v120
	v_ldexp_f32 v92, v92, v121
	v_ldexp_f32 v97, v97, v124
	v_ldexp_f32 v96, v96, v125
	v_ldexp_f32 v95, v95, v126
	v_ldexp_f32 v100, v100, v129
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v74, 1.0, v74 :: v_dual_add_f32 v91, 1.0, v91
	v_dual_add_f32 v76, 1.0, v76 :: v_dual_add_f32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v78, 1.0, v78 :: v_dual_add_f32 v95, 1.0, v95
	v_dual_add_f32 v80, 1.0, v80 :: v_dual_add_f32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v133, null, v87, v87, v45
	v_div_scale_f32 v105, null, v74, v74, v42
	v_div_scale_f32 v109, null, v76, v76, v72
	v_div_scale_f32 v113, null, v78, v78, v18
	v_div_scale_f32 v117, null, v80, v80, v3
	v_div_scale_f32 v121, null, v85, v85, v5
	v_div_scale_f32 v125, null, v81, v81, v68
	v_div_scale_f32 v129, null, v89, v89, v66
	v_div_scale_f32 v141, null, v91, v91, v59
	v_rcp_f32_e32 v182, v133
	v_fma_f32 v199, -v111, v171, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v201, -v115, v173, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v203, -v119, v175, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v205, -v123, v177, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v98, 1.0, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v207, -v127, v179, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v209, -v131, v181, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v137, null, v93, v93, v61
	v_rcp_f32_e32 v168, v105
	v_rcp_f32_e32 v170, v109
	v_rcp_f32_e32 v172, v113
	v_rcp_f32_e32 v174, v117
	v_rcp_f32_e32 v176, v121
	v_rcp_f32_e32 v178, v125
	v_rcp_f32_e32 v180, v129
	v_rcp_f32_e32 v186, v141
	v_fmac_f32_e32 v171, v199, v171
	v_div_scale_f32 v139, null, v92, v92, v60
	v_fmac_f32_e32 v173, v201, v173
	v_div_scale_f32 v135, null, v94, v94, v64
	v_fmac_f32_e32 v175, v203, v175
	v_div_scale_f32 v147, null, v96, v96, v19
	v_fmac_f32_e32 v177, v205, v177
	v_div_scale_f32 v143, null, v98, v98, v56
	v_fmac_f32_e32 v179, v207, v179
	v_div_scale_f32 v155, null, v100, v100, v48
	v_fmac_f32_e32 v181, v209, v181
	v_div_scale_f32 v151, null, v102, v102, v51
	v_div_scale_f32 v104, vcc_lo, v82, v73, v82
	v_rcp_f32_e32 v183, v135
	v_rcp_f32_e32 v184, v137
	v_rcp_f32_e32 v185, v139
	v_rcp_f32_e32 v187, v143
	v_rcp_f32_e32 v189, v147
	v_rcp_f32_e32 v191, v151
	v_rcp_f32_e32 v193, v155
	v_fma_f32 v210, -v133, v182, 1.0
	v_div_scale_f32 v149, null, v95, v95, v53
	v_div_scale_f32 v108, s27, v83, v75, v83
	v_div_scale_f32 v165, null, v99, v99, v44
	v_fma_f32 v196, -v105, v168, 1.0
	v_fma_f32 v198, -v109, v170, 1.0
	v_fma_f32 v200, -v113, v172, 1.0
	v_fma_f32 v202, -v117, v174, 1.0
	v_fma_f32 v204, -v121, v176, 1.0
	v_fma_f32 v206, -v125, v178, 1.0
	v_fma_f32 v208, -v129, v180, 1.0
	v_fma_f32 v214, -v141, v186, 1.0
	v_dual_fmac_f32 v182, v210, v182 :: v_dual_mul_f32 v195, v104, v167
	v_rcp_f32_e32 v190, v149
	v_div_scale_f32 v106, s26, v42, v74, v42
	v_div_scale_f32 v110, s25, v72, v76, v72
	v_div_scale_f32 v114, s23, v18, v78, v18
	v_div_scale_f32 v118, s21, v3, v80, v3
	v_div_scale_f32 v122, s19, v5, v85, v5
	v_div_scale_f32 v126, s17, v68, v81, v68
	v_div_scale_f32 v130, s15, v66, v89, v66
	v_rcp_f32_e32 v194, v165
	v_fma_f32 v211, -v135, v183, 1.0
	v_fma_f32 v212, -v137, v184, 1.0
	v_fma_f32 v213, -v139, v185, 1.0
	v_fma_f32 v215, -v143, v187, 1.0
	v_fma_f32 v217, -v147, v189, 1.0
	v_fma_f32 v219, -v151, v191, 1.0
	v_fma_f32 v221, -v155, v193, 1.0
	v_dual_fmac_f32 v168, v196, v168 :: v_dual_fmac_f32 v183, v211, v183
	v_dual_fmac_f32 v170, v198, v170 :: v_dual_fmac_f32 v185, v213, v185
	v_dual_fmac_f32 v172, v200, v172 :: v_dual_fmac_f32 v187, v215, v187
	v_dual_fmac_f32 v174, v202, v174 :: v_dual_fmac_f32 v189, v217, v189
	v_dual_fmac_f32 v176, v204, v176 :: v_dual_fmac_f32 v191, v219, v191
	v_dual_fmac_f32 v178, v206, v178 :: v_dual_fmac_f32 v193, v221, v193
	v_dual_fmac_f32 v186, v214, v186 :: v_dual_mul_f32 v197, v108, v169
	v_fma_f32 v223, -v103, v195, v104
	v_fmac_f32_e32 v180, v208, v180
	v_div_scale_f32 v145, null, v97, v97, v54
	v_div_scale_f32 v120, s20, v4, v86, v4
	v_div_scale_f32 v124, s18, v70, v84, v70
	v_div_scale_f32 v128, s16, v67, v90, v67
	v_div_scale_f32 v132, s14, v65, v88, v65
	v_div_scale_f32 v134, s13, v45, v87, v45
	v_div_scale_f32 v136, s12, v64, v94, v64
	v_div_scale_f32 v138, s11, v61, v93, v61
	v_div_scale_f32 v140, s10, v60, v92, v60
	v_div_scale_f32 v142, s9, v59, v91, v59
	v_div_scale_f32 v144, s8, v56, v98, v56
	v_div_scale_f32 v148, s6, v19, v96, v19
	v_div_scale_f32 v152, s4, v51, v102, v51
	v_div_scale_f32 v153, null, v101, v101, v49
	v_div_scale_f32 v164, s1, v48, v100, v48
	v_dual_mul_f32 v196, v106, v168 :: v_dual_mul_f32 v203, v120, v175
	v_dual_mul_f32 v198, v110, v170 :: v_dual_mul_f32 v205, v124, v177
	v_dual_mul_f32 v200, v114, v172 :: v_dual_mul_f32 v207, v128, v179
	v_dual_mul_f32 v202, v118, v174 :: v_dual_mul_f32 v209, v132, v181
	v_dual_mul_f32 v204, v122, v176 :: v_dual_mul_f32 v211, v136, v183
	v_dual_mul_f32 v206, v126, v178 :: v_dual_mul_f32 v213, v140, v185
	v_fma_f32 v225, -v107, v197, v108
	v_dual_fmac_f32 v184, v212, v184 :: v_dual_fmac_f32 v195, v223, v167
	v_dual_mul_f32 v208, v130, v180 :: v_dual_mul_f32 v215, v144, v187
	v_div_scale_f32 v112, s24, v71, v77, v71
	v_rcp_f32_e32 v188, v145
	v_fma_f32 v218, -v149, v190, 1.0
	v_div_scale_f32 v116, s22, v9, v79, v9
	v_rcp_f32_e32 v192, v153
	v_fma_f32 v222, -v165, v194, 1.0
	v_dual_mul_f32 v210, v134, v182 :: v_dual_mul_f32 v217, v148, v189
	v_dual_mul_f32 v214, v142, v186 :: v_dual_mul_f32 v221, v164, v193
	v_mul_f32_e32 v219, v152, v191
	v_fma_f32 v224, -v105, v196, v106
	v_fma_f32 v226, -v109, v198, v110
	v_fma_f32 v228, -v113, v200, v114
	v_fma_f32 v230, -v117, v202, v118
	v_fma_f32 v232, -v121, v204, v122
	v_fma_f32 v234, -v125, v206, v126
	v_fma_f32 v223, -v129, v208, v130
	v_dual_fmac_f32 v197, v225, v169 :: v_dual_mul_f32 v212, v138, v184
	v_dual_fmac_f32 v190, v218, v190 :: v_dual_mul_f32 v199, v112, v171
	v_dual_fmac_f32 v194, v222, v194 :: v_dual_mul_f32 v201, v116, v173
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v208, v223, v180
	v_fma_f32 v223, -v155, v221, v164
	v_fmac_f32_e32 v206, v234, v178
	v_fma_f32 v234, -v151, v219, v152
	v_fmac_f32_e32 v204, v232, v176
	v_fma_f32 v232, -v147, v217, v148
	v_fmac_f32_e32 v202, v230, v174
	v_fma_f32 v230, -v143, v215, v144
	v_fmac_f32_e32 v200, v228, v172
	v_fma_f32 v228, -v139, v213, v140
	v_fmac_f32_e32 v198, v226, v170
	v_fma_f32 v226, -v135, v211, v136
	v_fmac_f32_e32 v196, v224, v168
	v_fma_f32 v216, -v145, v188, 1.0
	v_fma_f32 v227, -v111, v199, v112
	v_fma_f32 v103, -v103, v195, v104
	v_fma_f32 v220, -v153, v192, 1.0
	v_fma_f32 v229, -v115, v201, v116
	v_fmac_f32_e32 v211, v226, v183
	v_fma_f32 v104, -v105, v196, v106
	v_dual_fmac_f32 v188, v216, v188 :: v_dual_fmac_f32 v199, v227, v171
	v_fma_f32 v105, -v107, v197, v108
	v_div_fmas_f32 v103, v103, v167, v195
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v146, s7, v54, v97, v54
	v_fma_f32 v231, -v119, v203, v120
	v_fmac_f32_e32 v213, v228, v185
	v_fma_f32 v106, -v109, v198, v110
	v_dual_fmac_f32 v192, v220, v192 :: v_dual_fmac_f32 v201, v229, v173
	v_div_fmas_f32 v104, v104, v168, v196
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v107, -v111, v199, v112
	v_div_fmas_f32 v105, v105, v169, v197
	s_mov_b32 vcc_lo, s25
	v_div_scale_f32 v150, s5, v53, v95, v53
	v_fma_f32 v233, -v123, v205, v124
	v_fmac_f32_e32 v215, v230, v187
	v_fma_f32 v108, -v113, v200, v114
	v_dual_mul_f32 v216, v146, v188 :: v_dual_fmac_f32 v203, v231, v175
	v_div_fixup_f32 v73, v103, v73, v82
	v_div_fmas_f32 v82, v106, v170, v198
	s_mov_b32 vcc_lo, s24
	v_fma_f32 v109, -v115, v201, v116
	v_div_fmas_f32 v103, v107, v171, v199
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v154, s3, v49, v101, v49
	v_fma_f32 v235, -v127, v207, v128
	v_fmac_f32_e32 v217, v232, v189
	v_fma_f32 v110, -v117, v202, v118
	v_dual_mul_f32 v218, v150, v190 :: v_dual_fmac_f32 v205, v233, v177
	v_div_fixup_f32 v74, v104, v74, v42
	v_div_fixup_f32 v75, v105, v75, v83
	v_div_fmas_f32 v83, v108, v172, v200
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v111, -v119, v203, v120
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v69, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v69, v82, v76, v72
	v_div_fmas_f32 v72, v109, v173, v201
	s_mov_b32 vcc_lo, s21
	v_fmac_f32_e32 v219, v234, v191
	v_fma_f32 v112, -v121, v204, v122
	v_div_fixup_f32 v71, v103, v77, v71
	v_div_scale_f32 v166, s0, v44, v99, v44
	v_dual_mul_f32 v220, v154, v192 :: v_dual_fmac_f32 v207, v235, v179
	v_fma_f32 v224, -v131, v209, v132
	v_div_fmas_f32 v73, v110, v174, v202
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v227, -v137, v212, v138
	v_fma_f32 v113, -v123, v205, v124
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v74, v83, v78, v18
	v_fma_f32 v225, -v133, v210, v134
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v63, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v63, v111, v175, v203
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v221, v223, v193
	v_fma_f32 v114, -v125, v206, v126
	v_div_fixup_f32 v69, v72, v79, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v62, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v112, v176, v204
	s_mov_b32 vcc_lo, s18
	v_dual_mul_f32 v222, v166, v194 :: v_dual_fmac_f32 v209, v224, v181
	v_fma_f32 v115, -v127, v207, v128
	v_fmac_f32_e32 v212, v227, v184
	v_div_fixup_f32 v71, v73, v80, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v58, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v58, v113, v177, v205
	s_mov_b32 vcc_lo, s17
	v_fmac_f32_e32 v210, v225, v182
	v_fma_f32 v116, -v129, v208, v130
	v_div_fixup_f32 v63, v63, v86, v4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v57, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v57, v114, v178, v206
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v229, -v141, v214, v142
	v_fma_f32 v231, -v145, v216, v146
	v_fma_f32 v117, -v131, v209, v132
	v_div_fixup_f32 v62, v62, v85, v5
	v_div_fmas_f32 v69, v115, v179, v207
	s_mov_b32 vcc_lo, s15
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v55, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v133, v210, v134
	v_div_fixup_f32 v58, v58, v84, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v52, v52, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v63, v116, v180, v208
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v119, -v135, v211, v136
	v_div_fixup_f32 v57, v57, v81, v68
	v_dual_fmac_f32 v216, v231, v188 :: v_dual_mul_f32 v55, v50, v62
	v_div_fmas_f32 v62, v117, v181, v209
	v_div_fixup_f32 v67, v69, v90, v67
	v_fmac_f32_e32 v214, v229, v186
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v120, -v137, v212, v138
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v47, v47, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v58, v118, v182, v210
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v233, -v149, v218, v150
	v_fma_f32 v121, -v139, v213, v140
	v_div_fixup_f32 v63, v63, v89, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v43, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v57, v119, v183, v211
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v62, v62, v88, v65
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v46, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v122, -v141, v214, v142
	v_div_fmas_f32 v46, v120, v184, v212
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v123, -v143, v215, v144
	v_div_fixup_f32 v58, v58, v87, v45
	v_dual_fmac_f32 v218, v233, v190 :: v_dual_mul_f32 v45, v32, v63
	v_div_fmas_f32 v32, v121, v185, v213
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v235, -v153, v220, v154
	v_fma_f32 v124, -v145, v216, v146
	v_div_fixup_f32 v57, v57, v94, v64
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v16, v16, v75 :: v_dual_mul_f32 v31, v31, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v122, v186, v214
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v125, -v147, v217, v148
	v_div_fixup_f32 v46, v46, v93, v61
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v58, v123, v187, v215
	s_mov_b32 vcc_lo, s7
	v_dual_fmac_f32 v220, v235, v192 :: v_dual_mul_f32 v29, v29, v57
	v_div_fmas_f32 v57, v124, v188, v216
	s_mov_b32 vcc_lo, s6
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v125, v189, v217
	v_fma_f32 v126, -v149, v218, v150
	v_div_fixup_f32 v32, v32, v92, v60
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v56, v58, v98, v56
	v_div_fixup_f32 v46, v46, v96, v19
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v41, v163
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v32
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v126, v190, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v25, v56 :: v_dual_mul_f32 v14, v14, v46
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v165, v222, v166
	v_div_fixup_f32 v25, v32, v95, v53
	v_fma_f32 v127, -v151, v219, v152
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v163, v10, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v40, v162
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v222, v46, v194
	v_fma_f32 v128, -v153, v220, v154
	s_mov_b32 vcc_lo, s4
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v155, v221, v164
	v_div_fixup_f32 v54, v57, v97, v54
	v_div_fmas_f32 v57, v127, v191, v219
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v10, -v165, v222, v166
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v162, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v39, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v128, v192, v220
	s_mov_b32 vcc_lo, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v2, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v25, v193, v221
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v194, v222
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v161, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v38, v160
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v39
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v99, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v11, 0xbfb8aa3b, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v25, v100, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v24, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v11, v23, v25 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v59, v62, v91, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v25, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v160, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v35, v158
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v40
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v26, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v32, v101, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v2
	v_ldexp_f32 v12, v12, v23
	v_exp_f32_e32 v23, v24
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v158, v7, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v20, v20, v54 :: v_dual_mul_f32 v15, v15, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v25, v24
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v51, v57, v102, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v156, v1, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v32
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_mov_b32 s4, 0x76543210
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v24, v24, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v25, v38
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v25, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, null, v23, v23, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v44, v48, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v53, v32
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v54, s0, v46, v24, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v59, v54, v48
	v_fma_f32 v37, -v32, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v44, v59, v54
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v25, v25, v2
	v_fmac_f32_e32 v53, v37, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v35, v48
	v_div_scale_f32 v37, s1, v40, v23, v40
	v_rcp_f32_e32 v56, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v34, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v60, v37, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v159, v6, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v17, v56, 1.0
	v_fmac_f32_e32 v56, v58, v56
	v_div_scale_f32 v58, s3, v2, v25, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v58, v56
	v_fma_f32 v35, -v17, v61, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v61, v35, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v36, v157
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v17, v61, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v157, v8, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v12, v12, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v49, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v49, v39
	v_div_scale_f32 v49, vcc_lo, v41, v12, v41
	v_mul_f32_e32 v57, v49, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v38, v57, v49
	v_fmac_f32_e32 v57, v36, v39
	v_fma_f32 v36, -v32, v60, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v38, v57, v49
	v_fmac_f32_e32 v60, v36, v53
	v_fma_f32 v36, -v44, v59, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v39, v57
	v_fma_f32 v32, -v32, v60, v37
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v36, v48, v59
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v32, v32, v53, v60
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v17, v17, v56, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v17, v25, v2
	v_div_fixup_f32 v17, v32, v23, v40
	v_div_fixup_f32 v23, v35, v24, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v24, v13, v51 :: v_dual_mul_f32 v13, v8, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v34, v12, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v12, v1, v2 :: v_dual_mul_f32 v17, v7, v23
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v52|, |v55|
	v_max3_f32 v2, |v47|, |v43|, |v45|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v6, v25
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v29|, |v28|, |v27|
	v_max3_f32 v8, |v26|, |v22|, |v16|
	v_max3_f32 v6, |v31|, |v30|, |v42|
	v_max_f32_e64 v25, |v19|, |v20|
	v_max3_f32 v32, |v14|, |v24|, |v15|
	v_max3_f32 v34, |v23|, |v17|, |v13|
	v_max3_f32 v35, |v12|, |v3|, |v4|
	v_max3_f32 v1, v1, |v50|, v2
	v_max3_f32 v2, v7, v8, |v18|
	v_max3_f32 v7, |v11|, |v10|, |v9|
	v_max3_f32 v8, v25, |v21|, v32
	v_max3_f32 v25, v34, v35, |v5|
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v35, v241, 7, 0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v1, v6, v2
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v8, v7, v25
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v25, 4, v241
	v_permlanex16_b32 v6, v2, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v32, 1, v1
	v_permlanex16_b32 v8, v7, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v34, v1, 2, v25
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v25, v25, v32
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v2, v6
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v2, v34, v32
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v7, v7, v8 :: v_dual_lshlrev_b32 v32, 3, v237
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v8, v35, v25, v237
	v_lshrrev_b32_e32 v25, 2, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, 0, v237, v2
	ds_store_b64 v8, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v6
	v_mov_b32_e32 v8, v7
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v6, v2
	v_dual_max_f32 v6, v7, v8 :: v_dual_mov_b32 v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v8, v6
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v7
	v_max_f32_e32 v7, v6, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v8, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v2, v6
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v240
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v8
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v8, 0, v32, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v25, 0, v2
	ds_store_b64 v8, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v25
.Ltmp50:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, 0x2b8cbccc, v6 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v7
	v_rcp_f32_e32 v25, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v8, v25, 1.0
	v_fmac_f32_e32 v25, v32, v25
	v_div_scale_f32 v32, vcc_lo, v6, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v32, v25
	v_fma_f32 v35, -v8, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v25
	v_rcp_f32_e32 v35, v36
	v_fma_f32 v8, -v8, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v8, v8, v25, v34
	v_fma_f32 v25, -v36, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v8, 0x40e00000, v6
	v_fmac_f32_e32 v35, v25, v35
	v_div_scale_f32 v8, vcc_lo, v7, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v25, v6, 16, 1
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v32, v8, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v25, v6, v25, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v36, v32, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, v6, v35 :: v_dual_and_b32 v39, 0xffff0000, v25
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v34, null, v39, v39, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v36, v32, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v37, null, v39, v39, v55
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, null, v39, v39, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v6, v6, v35, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v32, v37
	v_div_scale_f32 v35, vcc_lo, v52, v39, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v38
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v7, v6, 0x40e00000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v46, null, v39, v39, v47
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v6, -v34, v36, 1.0
	v_div_scale_f32 v48, s0, v55, v39, v55
	v_fma_f32 v40, -v37, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v46
	v_fmac_f32_e32 v36, v6, v36
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v41, v7, 16, 1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v54, -v38, v44, 1.0
	v_fmac_f32_e32 v32, v40, v32
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.l, v25.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v40, v35, v36
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v7, v41, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v54, v44
	v_mul_f32_e32 v53, v48, v32
	v_div_scale_f32 v54, s1, v50, v39, v50
	v_fma_f32 v49, -v34, v40, v35
	v_fma_f32 v56, -v46, v51, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v7.l, v41.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v25, 0xffff0000, v41
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v41, s2, v47, v39, v47
	v_fmac_f32_e32 v40, v49, v36
	v_fma_f32 v49, -v37, v53, v48
	v_fmac_f32_e32 v51, v56, v51
	v_div_scale_f32 v56, null, v39, v39, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v40, v35
	v_fmac_f32_e32 v53, v49, v32
	v_mul_f32_e32 v35, v54, v44
	v_div_scale_f32 v49, null, v39, v39, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v36, v40
	v_fma_f32 v36, -v37, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v38, v35, v54
	v_rcp_f32_e32 v40, v49
	v_mul_f32_e32 v48, v41, v51
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v36, v32, v53
	v_fmac_f32_e32 v35, v37, v44
	v_rcp_f32_e32 v37, v56
	v_fma_f32 v53, -v46, v48, v41
	v_div_fixup_f32 v32, v34, v39, v52
	v_div_fixup_f32 v34, v36, v39, v55
	v_fma_f32 v57, -v49, v40, 1.0
	v_fma_f32 v36, -v38, v35, v54
	v_fmac_f32_e32 v48, v53, v51
	v_div_scale_f32 v53, null, v39, v39, v31
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v40, v57, v40
	v_div_scale_f32 v38, s0, v43, v39, v43
	v_fma_f32 v52, -v56, v37, 1.0
	v_div_fmas_f32 v35, v36, v44, v35
	v_rcp_f32_e32 v44, v53
	v_fma_f32 v36, -v46, v48, v41
	v_mul_f32_e32 v41, v38, v40
	v_fmac_f32_e32 v37, v52, v37
	v_div_scale_f32 v46, s1, v45, v39, v45
	v_div_scale_f32 v52, null, v39, v39, v30
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v35, v35, v39, v50
	v_div_fmas_f32 v36, v36, v51, v48
	v_fma_f32 v48, -v49, v41, v38
	v_mul_f32_e32 v51, v46, v37
	v_fma_f32 v54, -v53, v44, 1.0
	v_rcp_f32_e32 v55, v52
	v_div_fixup_f32 v36, v36, v39, v47
	v_fmac_f32_e32 v41, v48, v40
	v_fma_f32 v47, -v56, v51, v46
	v_fmac_f32_e32 v44, v54, v44
	v_div_scale_f32 v48, s2, v31, v39, v31
	v_div_scale_f32 v50, null, v39, v39, v42
	v_fma_f32 v38, -v49, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v52, v55, 1.0
	v_fmac_f32_e32 v51, v47, v37
	v_mul_f32_e32 v47, v48, v44
	v_rcp_f32_e32 v49, v50
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v55, v54, v55
	v_div_scale_f32 v54, s3, v30, v39, v30
	v_div_fmas_f32 v38, v38, v40, v41
	v_fma_f32 v41, -v53, v47, v48
	v_div_scale_f32 v57, null, v39, v39, v29
	v_fma_f32 v40, -v56, v51, v46
	v_mul_f32_e32 v46, v54, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v56, -v50, v49, 1.0
	v_fmac_f32_e32 v47, v41, v44
	v_rcp_f32_e32 v41, v57
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v7.h, v6.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v37, v51
	v_fma_f32 v51, -v52, v46, v54
	v_fmac_f32_e32 v49, v56, v49
	v_div_scale_f32 v56, s0, v42, v39, v42
	v_div_fixup_f32 v37, v38, v39, v43
	v_div_fixup_f32 v38, v40, v39, v45
	v_fma_f32 v40, -v53, v47, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v46, v51, v55 :: v_dual_mul_f32 v43, v56, v49
	v_fma_f32 v45, -v57, v41, 1.0
	v_div_scale_f32 v48, null, v39, v39, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, s1, v29, v39, v29
	v_div_fmas_f32 v40, v40, v44, v47
	v_fma_f32 v44, -v52, v46, v54
	v_fma_f32 v47, -v50, v43, v56
	v_fmac_f32_e32 v41, v45, v41
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v52, null, v39, v39, v27
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v47, v49
	v_div_fmas_f32 v44, v44, v55, v46
	v_rcp_f32_e32 v46, v52
	v_mul_f32_e32 v47, v51, v41
	v_div_scale_f32 v54, null, v39, v39, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v48, v45, 1.0
	v_div_fixup_f32 v30, v44, v39, v30
	v_fma_f32 v44, -v57, v47, v51
	v_div_fixup_f32 v31, v40, v39, v31
	v_fma_f32 v40, -v50, v43, v56
	v_fmac_f32_e32 v45, v53, v45
	v_div_scale_f32 v50, s2, v28, v39, v28
	v_fma_f32 v53, -v52, v46, 1.0
	v_fmac_f32_e32 v47, v44, v41
	v_rcp_f32_e32 v44, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v49, v43
	v_dual_mul_f32 v43, v50, v45 :: v_dual_fmac_f32 v46, v53, v46
	v_div_scale_f32 v49, s0, v27, v39, v27
	v_div_scale_f32 v53, null, v39, v39, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v40, v40, v39, v42
	v_fma_f32 v42, -v57, v47, v51
	v_fma_f32 v51, -v48, v43, v50
	v_mul_f32_e32 v55, v49, v46
	v_rcp_f32_e32 v56, v53
	v_fma_f32 v57, -v54, v44, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v43, v51, v45
	v_div_fmas_f32 v41, v42, v41, v47
	v_fma_f32 v42, -v52, v55, v49
	v_fmac_f32_e32 v44, v57, v44
	v_div_scale_f32 v47, s1, v26, v39, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v41, v39, v29
	v_fma_f32 v51, -v53, v56, 1.0
	v_fma_f32 v41, -v48, v43, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v55, v42, v46 :: v_dual_mul_f32 v42, v47, v44
	v_div_scale_f32 v50, null, v39, v39, v16
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v56, v51, v56
	v_div_scale_f32 v48, s3, v22, v39, v22
	v_div_fmas_f32 v41, v41, v45, v43
	v_fma_f32 v43, -v52, v55, v49
	v_fma_f32 v45, -v54, v42, v47
	v_rcp_f32_e32 v49, v50
	v_div_scale_f32 v52, null, v39, v39, v18
	v_mul_f32_e32 v51, v48, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v45, v44
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v45, v52
	v_div_fmas_f32 v43, v43, v46, v55
	v_fma_f32 v46, -v53, v51, v48
	v_div_fixup_f32 v28, v41, v39, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v50, v49, 1.0
	v_fma_f32 v41, -v54, v42, v47
	v_div_fixup_f32 v27, v43, v39, v27
	v_div_scale_f32 v43, s0, v16, v39, v16
	v_fmac_f32_e32 v49, v55, v49
	v_fmac_f32_e32 v51, v46, v56
	v_fma_f32 v46, -v52, v45, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v47, s1, v18, v39, v18
	v_div_scale_f32 v54, null, v25, v25, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v46, v45
	v_div_fmas_f32 v41, v41, v44, v42
	v_mul_f32_e32 v44, v43, v49
	v_fma_f32 v42, -v53, v51, v48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v53, v47, v45
	v_div_fixup_f32 v26, v41, v39, v26
	v_div_scale_f32 v46, null, v25, v25, v19
	v_div_fmas_f32 v42, v42, v56, v51
	v_fma_f32 v51, -v50, v44, v43
	v_fma_f32 v41, -v52, v53, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v46
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v42, v39, v22
	v_rcp_f32_e32 v42, v54
	v_fmac_f32_e32 v53, v41, v45
	v_div_scale_f32 v41, s2, v19, v25, v19
	v_fmac_f32_e32 v44, v51, v49
	v_div_scale_f32 v56, null, v25, v25, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v46, v48, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v43, -v50, v44, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v54, v42, 1.0
	v_div_scale_f32 v50, null, v25, v25, v21
	v_rcp_f32_e32 v58, v56
	v_div_fmas_f32 v43, v43, v49, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v55, v42
	v_div_scale_f32 v49, s0, v20, v25, v20
	v_fma_f32 v44, -v52, v53, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v43, v39, v16
	v_mul_f32_e32 v57, v49, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v44, v44, v45, v53
	v_fma_f32 v43, -v56, v58, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v45, -v54, v57, v49
	v_fmac_f32_e32 v48, v51, v48
	v_rcp_f32_e32 v51, v50
	v_fmac_f32_e32 v58, v43, v58
	v_div_fixup_f32 v18, v44, v39, v18
	v_fmac_f32_e32 v57, v45, v42
	v_mul_f32_e32 v47, v41, v48
	v_div_scale_f32 v44, null, v25, v25, v24
	v_div_scale_f32 v43, s1, v14, v25, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v55, -v46, v47, v41
	v_fma_f32 v52, -v50, v51, 1.0
	v_fma_f32 v45, -v54, v57, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v47, v55, v48
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, s3, v21, v25, v21
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v46, v47, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v53, v52, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v39, v48, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v50, v53, v52
	v_div_scale_f32 v47, null, v25, v25, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v39, v25, v19
.Ltmp51:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v239
.Ltmp52:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v53, v41, v51
	v_rcp_f32_e32 v41, v44
	v_div_fmas_f32 v42, v45, v42, v57
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v45, -v50, v53, v52
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v42, v25, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v45, v45, v51, v53
	v_fma_f32 v48, -v44, v41, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v42, -v47, v49, 1.0
	v_div_fixup_f32 v21, v45, v25, v21
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s0, v24, v25, v24
	v_mul_f32_e32 v46, v43, v58
	v_div_scale_f32 v45, null, v25, v25, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v48, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v50, -v56, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v51, v45
	v_fmac_f32_e32 v46, v50, v58
	v_fma_f32 v50, -v44, v39, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v56, v46, v43
	v_fmac_f32_e32 v39, v50, v41
	v_div_scale_f32 v50, null, v25, v25, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v43, v58, v46
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v43, v25, v14
	v_fma_f32 v43, -v44, v39, v48
	v_fma_f32 v48, -v45, v51, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v43, v41, v39
	v_div_scale_f32 v41, null, v25, v25, v9
	v_fmac_f32_e32 v51, v48, v51
	v_div_scale_f32 v48, null, v25, v25, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v39, v25, v24
	v_fma_f32 v39, -v50, v52, 1.0
	v_fmac_f32_e32 v49, v42, v49
	v_div_scale_f32 v42, s2, v15, v25, v15
	v_div_scale_f32 v43, s0, v11, v25, v11
	v_fmac_f32_e32 v52, v39, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v42, v49
	v_rcp_f32_e32 v54, v48
	v_div_scale_f32 v39, s1, v10, v25, v10
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v44, -v47, v46, v42
	v_div_scale_f32 v55, s2, v9, v25, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v44, v49
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v56, -v48, v54, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v47, v46, v42
	v_dual_mul_f32 v47, v43, v51 :: v_dual_fmac_f32 v54, v56, v54
	v_div_scale_f32 v56, s3, v23, v25, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v42, v42, v49, v46
	v_fma_f32 v53, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v47, v43
	v_mul_f32_e32 v49, v39, v52
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v15, v42, v25, v15
	v_dual_fmac_f32 v44, v53, v44 :: v_dual_fmac_f32 v47, v46, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v50, v49, v39
	v_div_scale_f32 v53, null, v25, v25, v17
	v_mul_f32_e32 v58, v55, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v45, v47, v43
	v_fmac_f32_e32 v49, v46, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v57, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v43, -v41, v58, v55
	v_div_fmas_f32 v42, v42, v51, v47
	v_fma_f32 v39, -v50, v49, v39
	v_div_scale_f32 v47, null, v25, v25, v13
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v45, v56, v54 :: v_dual_fmac_f32 v58, v43, v44
	v_div_fmas_f32 v39, v39, v52, v49
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v46, -v53, v57, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v48, v45, v56
	v_div_fixup_f32 v11, v42, v25, v11
	v_fma_f32 v41, -v41, v58, v55
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v57, v46, v57
	v_div_scale_f32 v46, s0, v17, v25, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v41, v44, v58
	v_fma_f32 v42, -v47, v49, 1.0
	v_div_fixup_f32 v10, v39, v25, v10
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v51, null, v25, v25, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v42, v49
	v_fmac_f32_e32 v45, v43, v54
	v_mul_f32_e32 v43, v46, v57
	v_div_scale_f32 v42, null, v25, v25, v3
	v_div_fixup_f32 v9, v41, v25, v9
	v_fma_f32 v44, -v48, v45, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v53, v43, v46
	v_div_scale_f32 v41, null, v25, v25, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v44, v44, v54, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v43, v48, v57
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v23, v44, v25, v23
	v_fma_f32 v39, -v53, v43, v46
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v44, null, v25, v25, v4
	v_rcp_f32_e32 v53, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v52, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v39, v39, v57, v43
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v45, vcc_lo, v13, v25, v13
	v_div_scale_f32 v52, s1, v3, v25, v3
	v_div_fixup_f32 v17, v39, v25, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v44, v48, 1.0
	v_fma_f32 v57, -v51, v53, 1.0
	v_mul_f32_e32 v58, v52, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v43, 1.0
	v_mul_f32_e32 v50, v45, v49
	v_fmac_f32_e32 v48, v55, v48
	v_div_scale_f32 v55, s2, v4, v25, v4
	v_fmac_f32_e32 v43, v39, v43
	v_div_scale_f32 v39, s0, v12, v25, v12
	v_fma_f32 v54, -v47, v50, v45
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s3, v5, v25, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v39, v43
	v_fmac_f32_e32 v50, v54, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v54, -v41, v56, v39
	v_mul_f32_e32 v59, v55, v48
	v_fma_f32 v45, -v47, v50, v45
	v_fma_f32 v47, -v42, v58, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v54, v43
	v_fma_f32 v54, -v44, v59, v55
	v_mul_f32_e32 v60, v57, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v58, v47, v46
	v_div_fmas_f32 v45, v45, v49, v50
	v_fma_f32 v39, -v41, v56, v39
	v_fmac_f32_e32 v59, v54, v48
	v_fma_f32 v41, -v51, v60, v57
	v_fma_f32 v42, -v42, v58, v52
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v13, v45, v25, v13
	v_div_fmas_f32 v39, v39, v43, v56
	v_fmac_f32_e32 v60, v41, v53
	v_fma_f32 v41, -v44, v59, v55
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v42, v42, v46, v58
	v_fma_f32 v43, -v51, v60, v57
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v39, v25, v12
	v_div_fmas_f32 v41, v41, v48, v59
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v42, v25, v3
	v_div_fmas_f32 v43, v43, v53, v60
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v41, v25, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v43, v25, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v32
	v_rndne_f32_e32 v32, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v40
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v47, v11
	v_and_b32_e32 v11, 15, v34
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v34, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v46, v15
	v_cvt_i32_f32_e32 v48, v10
	v_cvt_i32_f32_e32 v51, v17
	v_cvt_i32_f32_e32 v53, v12
	v_and_b32_e32 v10, 15, v32
	v_and_b32_e32 v12, 15, v35
	v_and_b32_e32 v15, 15, v31
	v_and_b32_e32 v17, 15, v38
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v31, 1, v0
	v_and_b32_e32 v32, 0x60, v0
	v_and_b32_e32 v35, 0x400, v34
	v_and_b32_e32 v38, 0x60, v236
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v41, v19
	v_cvt_i32_f32_e32 v42, v20
	v_cvt_i32_f32_e32 v44, v14
	v_cvt_i32_f32_e32 v52, v13
	v_and_b32_e32 v13, 15, v36
	v_and_b32_e32 v14, 15, v37
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 0x100, v31
	v_xor_b32_e32 v37, v238, v32
	v_add3_u32 v35, 0, v33, v35
	v_and_or_b32 v38, 0x1b00, v34, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v43, v21
	v_cvt_i32_f32_e32 v49, v9
	v_and_b32_e32 v9, 15, v25
	v_and_b32_e32 v21, 15, v26
	v_and_b32_e32 v25, 15, v41
	v_and_b32_e32 v26, 15, v42
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v35, v36, v37
	v_xad_u32 v42, v38, v239, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v40, v18
	v_and_b32_e32 v18, 15, v29
	v_and_b32_e32 v19, 15, v28
	v_and_b32_e32 v20, 15, v27
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v41, v[9:12]
	ds_store_b128 v41, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v42
	ds_load_b128 v[17:20], v42 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v16
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v50, v23
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v23, 15, v39
	v_and_b32_e32 v38, 15, v3
	v_and_b32_e32 v39, 15, v4
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v4, v17, 4, v9
	v_lshl_or_b32 v3, v18, 4, v10
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v9, v20, 4, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v3.h, 0xff, v4.l
	v_lshlrev_b16 v3.l, 8, v3.l
	.loc	1 85 21 is_stmt 1               ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v30, v30
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v18, s2, v2, v8
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v9.l
	v_or_b16 v9.l, v3.h, v3.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v16, 15, v30
	v_and_b32_e32 v27, 15, v43
	v_and_b32_e32 v28, 15, v44
	v_cvt_i32_f32_e32 v45, v24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v24, 15, v40
	v_and_b32_e32 v31, 15, v49
	v_and_b32_e32 v32, 15, v50
	v_and_b32_e32 v33, 15, v51
	v_and_b32_e32 v34, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[25:28]
	ds_store_b128 v41, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v42
	ds_load_b128 v[33:36], v42 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v6, v7, vcc_lo
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v41, v[13:16]
	ds_store_b128 v41, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v42
	ds_load_b128 v[21:24], v42 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v5, v5
	v_and_b32_e32 v29, 15, v45
	v_and_b32_e32 v30, 15, v46
	v_and_b32_e32 v31, 15, v47
	v_and_b32_e32 v32, 15, v48
	v_and_b32_e32 v37, 15, v53
	v_and_b32_e32 v40, 15, v5
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[29:32]
	ds_store_b128 v41, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v42
	ds_load_b128 v[37:40], v42 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v19, 4, v11
	v_lshl_or_b32 v17, v36, 4, v28
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v12, v23, 4, v15
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v23, s0, 4, v18
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v10.l
	v_lshlrev_b16 v5.l, 8, v11.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v24, 4, v16
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v5.h, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v34, 4, v26
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v21, v39, 4, v31
	v_lshl_or_b32 v22, v40, 4, v32
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v13.l
	v_and_b16 v4.h, 0xff, v12.l
	v_lshlrev_b16 v8.l, 8, v17.l
	v_and_b16 v8.h, 0xff, v16.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v7, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v5, v3, 0, 16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v19, v37, 4, v29
	v_lshl_or_b32 v20, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.h, v2.l
	v_or_b16 v10.h, v4.h, v4.l
	v_or_b16 v4.h, v8.h, v8.l
	v_lshlrev_b16 v2.l, 8, v15.l
	v_and_b16 v0.l, 0xff, v14.l
	v_lshlrev_b16 v0.h, 8, v22.l
	v_and_b16 v2.h, 0xff, v21.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v8, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v3.h, 0xff, v19.l
	v_or_b16 v4.l, v0.l, v2.l
	v_or_b16 v5.h, v2.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v7, s33, 1
	v_cndmask_b32_e32 v2, v8, v6, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[9:10], v18, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v23, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	buffer_store_b16 v2, v0, s[36:39], 0 offen
.Ltmp53:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 20
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
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.private_seg_size, 20
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18444
; TotalNumSgprs: 45
; NumVgprs: 256
; ScratchSize: 20
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 45
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 20
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 4
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
