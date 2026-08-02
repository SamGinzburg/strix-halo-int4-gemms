	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 0xf0, v0
	v_and_b32_e32 v39, 8, v0
	v_and_b32_e32 v40, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v5, 2, v2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v6, s35, v5
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v4, 2, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v1, 4, v6
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v10, s35, 1, v9
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_i32 s8, s8, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s33, v9
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
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
	s_mul_i32 s14, s14, s13
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v3, s18
	v_readfirstlane_b32 s18, v3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 4, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s12, v3
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s22, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s22, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s12, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s13, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 0x7f
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s14, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s14, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s35, s30
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s12, s26, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v3, v4, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s3, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s31, s15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s30, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v9
	v_add_nc_u32_e32 v6, s12, v10
	v_add_nc_u32_e32 v7, s12, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 7
	v_add_nc_u32_e32 v8, s35, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s27, s30, 0x80
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v37, v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v6, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v7, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s12, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v8, s2
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s27, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s12, v11
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v3, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v4, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v7, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v6, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v8, s3
	s_clause 0x1
	buffer_load_b128 v[29:32], v4, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v6, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v9
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v8, 2, v0
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x17f
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s35, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	s_clause 0x1
	buffer_load_b128 v[49:52], v4, s[20:23], 0 offen
	buffer_load_b128 v[53:56], v6, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b32 v6, v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v4, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x420, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v4, 48, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v7, v7, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v41, v8, v4
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v42, v3, 10, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, 0, v41
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v43, 0x90, v42
	v_xor_b32_e32 v44, 0x120, v42
	v_xor_b32_e32 v45, 0x1b0, v42
	v_xor_b32_e32 v46, 0x210, v42
	v_add_nc_u32_e32 v8, 0, v42
	v_xor_b32_e32 v47, 0x330, v42
	v_xor_b32_e32 v48, 0x3a0, v42
	v_add_nc_u32_e32 v38, 0, v43
	v_add_nc_u32_e32 v57, 0, v44
	v_add_nc_u32_e32 v58, 0, v45
	v_add_nc_u32_e32 v59, 0, v46
	v_add_nc_u32_e32 v60, 0, v47
	v_add_nc_u32_e32 v61, 0, v48
	v_add_nc_u32_e32 v62, 0x4000, v8
	v_add_nc_u32_e32 v63, 0x4000, v38
	v_add_nc_u32_e32 v64, 0x4000, v57
	v_add_nc_u32_e32 v65, 0x4000, v58
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v7, v37 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v37, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	v_perm_b32 v19, v20, v16, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v20, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	v_perm_b32 v26, v27, v23, 0x4000501
	v_perm_b32 v23, v27, v23, 0x6020703
	v_perm_b32 v27, v28, v24, 0x4000501
	v_perm_b32 v24, v28, v24, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v28, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	v_perm_b32 v34, v35, v31, 0x4000501
	v_perm_b32 v31, v35, v31, 0x6020703
	v_perm_b32 v35, v36, v32, 0x4000501
	v_perm_b32 v32, v36, v32, 0x6020703
	v_perm_b32 v36, v37, v20, 0x7060302
	v_perm_b32 v20, v37, v20, 0x5040100
	v_perm_b32 v37, v13, v21, 0x7060302
	v_perm_b32 v13, v13, v21, 0x5040100
	v_perm_b32 v21, v17, v25, 0x7060302
	v_perm_b32 v17, v17, v25, 0x5040100
	v_perm_b32 v25, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v18, v26, 0x7060302
	v_perm_b32 v18, v18, v26, 0x5040100
	v_perm_b32 v26, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v19, v27, 0x7060302
	v_perm_b32 v19, v19, v27, 0x5040100
	v_perm_b32 v27, v16, v24, 0x7060302
	v_perm_b32 v16, v16, v24, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v24, v53, v49, 0x4000501
	v_perm_b32 v49, v53, v49, 0x6020703
	v_perm_b32 v53, v54, v50, 0x4000501
	v_perm_b32 v50, v54, v50, 0x6020703
	v_perm_b32 v54, v55, v51, 0x4000501
	v_perm_b32 v51, v55, v51, 0x6020703
	v_perm_b32 v55, v56, v52, 0x4000501
	v_perm_b32 v52, v56, v52, 0x6020703
	ds_store_2addr_b32 v8, v36, v20 offset1:16
	ds_store_2addr_b32 v38, v37, v13 offset1:16
	ds_store_2addr_b32 v57, v21, v17 offset1:16
	ds_store_2addr_b32 v58, v25, v14 offset1:16
	ds_store_2addr_b32 v59, v22, v18 offset1:16
	ds_store_2addr_b32 v8, v26, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v60, v23, v19 offset1:16
	ds_store_2addr_b32 v61, v27, v16 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v7, v6 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v6, v28, v24, 0x7060302
	v_perm_b32 v7, v28, v24, 0x5040100
	v_perm_b32 v8, v29, v49, 0x7060302
	v_perm_b32 v13, v29, v49, 0x5040100
	v_perm_b32 v14, v33, v53, 0x7060302
	v_perm_b32 v15, v33, v53, 0x5040100
	v_perm_b32 v16, v30, v50, 0x7060302
	v_perm_b32 v17, v30, v50, 0x5040100
	v_perm_b32 v18, v34, v54, 0x7060302
	v_perm_b32 v19, v34, v54, 0x5040100
	v_perm_b32 v20, v31, v51, 0x7060302
	v_perm_b32 v21, v31, v51, 0x5040100
	v_perm_b32 v22, v35, v55, 0x7060302
	v_perm_b32 v23, v35, v55, 0x5040100
	v_perm_b32 v24, v32, v52, 0x7060302
	v_perm_b32 v25, v32, v52, 0x5040100
	ds_store_2addr_b32 v62, v6, v7 offset1:16
	ds_store_2addr_b32 v63, v8, v13 offset1:16
	ds_store_2addr_b32 v64, v14, v15 offset1:16
	ds_store_2addr_b32 v65, v16, v17 offset1:16
	ds_store_2addr_b32 v66, v18, v19 offset1:16
	ds_store_2addr_b32 v62, v20, v21 offset0:160 offset1:176
	ds_store_2addr_b32 v67, v22, v23 offset1:16
	ds_store_2addr_b32 v68, v24, v25 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v49, 48, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v50, 0x1800, v4
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v7, 32, v0
	s_mov_b32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v35, v1, 6, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v38, 16, v35
	v_xor_b32_e32 v37, 32, v35
	v_xor_b32_e32 v36, 48, v35
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow43
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v8, s26, v1
	s_ashr_i32 s1, s14, 8
	v_and_b32_e32 v15, 1, v0
	v_or_b32_e32 v16, s31, v0
	v_lshlrev_b32_e32 v13, 2, v2
	v_mul_lo_u32 v34, v8, s1
	v_lshlrev_b32_e32 v14, 1, v3
	v_lshlrev_b32_e32 v15, 5, v15
	v_lshlrev_b32_e32 v30, 1, v2
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s45, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 0x210, v2
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v49, 48, v5
	v_lshlrev_b32_e32 v3, 6, v0
	v_and_b32_e32 v50, 0x1800, v4
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v18, 0, v13, v15
	v_xor_b32_e32 v2, v2, v49
	v_and_b32_e32 v3, 0x1c0, v3
	v_lshl_or_b32 v35, v1, 6, v49
	v_and_b32_e32 v4, 0x420, v4
.Ltmp23:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v51, s35, v9
	v_add_nc_u32_e32 v56, v18, v14
	v_or3_b32 v2, v3, v2, v50
	v_xor_b32_e32 v38, 16, v35
	v_xor_b32_e32 v37, 32, v35
	v_xor_b32_e32 v36, 48, v35
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v57, 0, v30
	v_xor_b32_e32 v52, v2, v4
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v53, 16, v52
	v_xor_b32_e32 v54, 32, v52
	v_xor_b32_e32 v55, 48, v52
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v33, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s0, s27, 0x80
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s11, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s34, 0, 0x8400
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s45, s45, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_mov_b32 s14, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 7
	s_mov_b32 s30, s27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s0, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v58, s27, v12
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 24
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s27, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s31
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v134, v58, s[4:7], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v58, v34, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v59, s16, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v63, v16, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v60, s16, v51
	v_add_nc_u32_e32 v61, s16, v10
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[74:77], v59, s[20:23], 0 offen
	buffer_load_b128 v[78:81], v60, s[20:23], 0 offen
	buffer_load_b128 v[82:85], v61, s[20:23], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v59, 0x80000000, v63, vcc_lo
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v62, s16, v11
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v135, v58, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v136, v59, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[86:89], v62, s[20:23], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v58, s14, v35
	v_add_nc_u32_e32 v59, s14, v38
	v_add_nc_u32_e32 v60, s14, v37
	v_add_nc_u32_e32 v61, s14, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v62, s15, v52
	v_add_nc_u32_e32 v63, s15, v53
	v_add_nc_u32_e32 v64, s15, v54
	v_add_nc_u32_e32 v65, s15, v55
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[90:93], v58
	ds_load_b128 v[94:97], v59
	ds_load_b128 v[98:101], v60
	ds_load_b128 v[102:105], v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[66:69], v62
	ds_load_b128 v[106:109], v62 offset:8192
	ds_load_b128 v[110:113], v63
	ds_load_b128 v[114:117], v63 offset:8192
	ds_load_b128 v[118:121], v64
	ds_load_b128 v[122:125], v64 offset:8192
	ds_load_b128 v[126:129], v65
	ds_load_b128 v[130:133], v65 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_mov_b32 s12, s44
	s_cmp_lt_i32 s11, 2
	s_mov_b32 s10, s34
	s_cselect_b32 s11, s11, 0
	s_add_i32 s14, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s15, s11, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s11, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s15, s15, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s34, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[66:69], v[90:93], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[106:109], v[90:93], v[1:8] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[110:113], v[94:97], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[114:117], v[94:97], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[118:121], v[98:101], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[122:125], v[98:101], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[126:129], v[102:105], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[130:133], v[102:105], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v98, v66
	v_cvt_f32_i32_e32 v99, v67
	v_cvt_f32_i32_e32 v100, v68
	v_cvt_f32_i32_e32 v101, v69
	v_cvt_f32_i32_e32 v102, v70
	v_cvt_f32_i32_e32 v103, v71
	v_cvt_f32_i32_e32 v104, v72
	v_cvt_f32_i32_e32 v105, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v58, v78, v74, 0x4000501
	v_perm_b32 v60, v78, v74, 0x6020703
	v_perm_b32 v62, v79, v75, 0x4000501
	v_perm_b32 v64, v79, v75, 0x6020703
	v_perm_b32 v66, v80, v76, 0x4000501
	v_perm_b32 v68, v80, v76, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v59, v86, v82, 0x4000501
	v_perm_b32 v61, v86, v82, 0x6020703
	v_perm_b32 v63, v87, v83, 0x4000501
	v_perm_b32 v65, v87, v83, 0x6020703
	v_perm_b32 v67, v88, v84, 0x4000501
	v_perm_b32 v69, v88, v84, 0x6020703
	v_perm_b32 v70, v81, v77, 0x4000501
	v_perm_b32 v71, v89, v85, 0x4000501
	v_perm_b32 v72, v81, v77, 0x6020703
	v_perm_b32 v73, v89, v85, 0x6020703
	v_perm_b32 v74, v59, v58, 0x7060302
	v_perm_b32 v75, v59, v58, 0x5040100
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v58, 16, v136
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v76, v61, v60, 0x7060302
	v_perm_b32 v77, v61, v60, 0x5040100
	v_perm_b32 v78, v63, v62, 0x7060302
	v_perm_b32 v79, v63, v62, 0x5040100
	v_perm_b32 v80, v65, v64, 0x7060302
	v_perm_b32 v81, v65, v64, 0x5040100
	v_perm_b32 v82, v67, v66, 0x7060302
	v_perm_b32 v83, v67, v66, 0x5040100
	v_perm_b32 v84, v69, v68, 0x7060302
	v_perm_b32 v85, v69, v68, 0x5040100
	v_perm_b32 v86, v71, v70, 0x7060302
	v_perm_b32 v87, v71, v70, 0x5040100
	v_perm_b32 v88, v73, v72, 0x7060302
	v_perm_b32 v89, v73, v72, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v56, v58 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v57 offset:34816
	ds_load_b128 v[62:65], v57 offset:34832
	ds_load_b128 v[66:69], v57 offset:35328
	ds_load_b128 v[70:73], v57 offset:35344
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v106, 16, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v58, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v17, v58, v90
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v66, v66, v106 :: v_dual_add_nc_u32 v137, s15, v41
	v_dual_mul_f32 v68, v68, v106 :: v_dual_add_nc_u32 v139, s44, v43
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v71, v71, v106 :: v_dual_add_nc_u32 v140, s44, v44
	v_dual_mul_f32 v70, v70, v106 :: v_dual_add_nc_u32 v141, s44, v45
	v_dual_mul_f32 v72, v72, v106 :: v_dual_add_nc_u32 v143, s44, v47
	v_dual_mul_f32 v73, v73, v106 :: v_dual_add_nc_u32 v144, s44, v48
	v_mul_f32_e32 v59, v59, v106
	v_mul_f32_e32 v60, v60, v106
	v_mul_f32_e32 v61, v61, v106
	v_mul_f32_e32 v62, v62, v106
	v_mul_f32_e32 v63, v63, v106
	v_mul_f32_e32 v64, v64, v106
	v_mul_f32_e32 v65, v65, v106
	v_mul_f32_e32 v67, v67, v106
	v_mul_f32_e32 v69, v69, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v23, v64, v96 :: v_dual_add_nc_u32 v138, s44, v42
	v_dual_fmac_f32 v27, v67, v99 :: v_dual_add_nc_u32 v142, s44, v46
	v_dual_fmac_f32 v18, v59, v91 :: v_dual_fmac_f32 v19, v60, v92
	v_dual_fmac_f32 v20, v61, v93 :: v_dual_fmac_f32 v21, v62, v94
	v_dual_fmac_f32 v22, v63, v95 :: v_dual_fmac_f32 v25, v66, v98
	v_dual_fmac_f32 v24, v65, v97 :: v_dual_fmac_f32 v31, v70, v102
	v_dual_fmac_f32 v28, v68, v100 :: v_dual_fmac_f32 v29, v69, v101
	v_dual_fmac_f32 v32, v71, v103 :: v_dual_fmac_f32 v33, v72, v104
	v_fmac_f32_e32 v26, v73, v105
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v137, v134 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v138, v74, v75 offset1:16
	ds_store_2addr_b32 v139, v76, v77 offset1:16
	ds_store_2addr_b32 v140, v78, v79 offset1:16
	ds_store_2addr_b32 v141, v80, v81 offset1:16
	ds_store_2addr_b32 v142, v82, v83 offset1:16
	ds_store_2addr_b32 v138, v84, v85 offset0:160 offset1:176
	ds_store_2addr_b32 v143, v86, v87 offset1:16
	ds_store_2addr_b32 v144, v88, v89 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v6, v39 :: v_dual_mov_b32 v7, v40
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s34, 0, 0x8400
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v6
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v39, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x210, 0, s0
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v1, 6, v39
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v49
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_or3_b32 v0, v1, v50, v0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v76, v0, v2
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v77, 16, v76
	v_xor_b32_e32 v78, 32, v76
	v_xor_b32_e32 v79, 48, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s12, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s10, v38
	v_add_nc_u32_e32 v4, s10, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[8:11], v0 offset:8192
	ds_load_b128 v[41:44], v0
	v_add_nc_u32_e32 v1, s12, v78
	v_add_nc_u32_e32 v2, s12, v77
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[53:56], v3
	ds_load_b128 v[57:60], v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[61:64], v1 offset:8192
	ds_load_b128 v[65:68], v1
	ds_load_b128 v[69:72], v2 offset:8192
	ds_load_b128 v[80:83], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v0, s10, v37
	v_add_nc_u32_e32 v1, s10, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s12, v79
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[84:87], v0
	ds_load_b128 v[88:91], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v6, s22 :: v_dual_mov_b32 v7, s23
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v12
	ds_load_b128 v[96:99], v12 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[41:44], v[57:60], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[8:11], v[57:60], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[80:83], v[53:56], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[69:72], v[53:56], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[84:87], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[61:64], v[84:87], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[92:95], v[88:91], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[96:99], v[88:91], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v43, v48
	v_cvt_f32_i32_e32 v44, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v50, v0
	v_cvt_f32_i32_e32 v51, v1
	v_cvt_f32_i32_e32 v52, v2
	v_cvt_f32_i32_e32 v53, v3
	v_cvt_f32_i32_e32 v54, v4
	v_cvt_f32_i32_e32 v55, v5
	v_cvt_f32_i32_e32 v56, v6
	v_cvt_f32_i32_e32 v57, v7
	v_cvt_f32_i32_e32 v45, v45
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v34, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v16, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_or3_b32 v74, v13, v15, v14
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v58, 0, v30
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v75, v0, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v48, 0, v74
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v72, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v0, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v48, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v58 offset:34816
	ds_load_b128 v[4:7], v58 offset:34832
	ds_load_b128 v[8:11], v58 offset:35328
	ds_load_b128 v[12:15], v58 offset:35344
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, s44, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, s34, v38
	v_add_nc_u32_e32 v35, s34, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v73, s19 :: v_dual_add_nc_u32 v40, s44, v78
	v_dual_mov_b32 v71, s17 :: v_dual_add_nc_u32 v64, s44, v77
	v_mov_b32_e32 v70, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[88:91], v65 offset:8192
	ds_load_b128 v[92:95], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v69, s15 :: v_dual_mov_b32 v68, s14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[96:99], v38
	ds_load_b128 v[100:103], v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[104:107], v64 offset:8192
	ds_load_b128 v[108:111], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v66, s12 :: v_dual_add_nc_u32 v37, s34, v37
	v_dual_mov_b32 v72, s18 :: v_dual_add_nc_u32 v63, s44, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[59:62], v40 offset:8192
	ds_load_b128 v[84:87], v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v67, s13 :: v_dual_add_nc_u32 v40, s34, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[35:38], v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v63
	ds_load_b128 v[120:123], v63 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[100:103], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[88:91], v[100:103], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[108:111], v[96:99], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[104:107], v[96:99], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[35:38], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[59:62], v[35:38], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[116:119], v[112:115], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[120:123], v[112:115], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v76
	v_cvt_f32_i32_e32 v59, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v78
	v_cvt_f32_i32_e32 v61, v79
	v_cvt_f32_i32_e32 v62, v80
	v_cvt_f32_i32_e32 v63, v81
	v_cvt_f32_i32_e32 v64, v82
	v_cvt_f32_i32_e32 v65, v83
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s27, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s27, s4
	v_mov_b16_e32 v38.l, 0
	s_ashr_i32 s4, s4, 8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v38.h, v75.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v34, v34, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v16, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v30, v39, 2, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v75, 0x808, v74, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v76, 0xc0c, v74, 0
	v_xad_u32 v77, 0x1010, v74, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v36, v35, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v37, v34, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v15, v15, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[34:35], null, s26, s35, v[16:17]
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v16, 0x2040, 0, s0
	v_xad_u32 v35, 0x404, v74, 0
	v_xad_u32 v78, 0x1414, v74, 0
	v_xad_u32 v79, 0x1818, v74, 0
	v_xad_u32 v80, 0x1c1c, v74, 0
	v_xor_b32_e32 v16, v30, v16
	v_xad_u32 v81, 0x2040, v74, 0
	v_xad_u32 v82, 0x2444, v74, 0
	v_xad_u32 v83, 0x2848, v74, 0
	v_xad_u32 v84, 0x2c4c, v74, 0
	v_lshl_or_b32 v16, v39, 10, v16
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v13, v38
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v85, 0x3050, v74, 0
	v_xad_u32 v86, 0x3454, v74, 0
	v_xad_u32 v87, 0x3858, v74, 0
	v_xad_u32 v39, v16, 4, 0
	v_xad_u32 v74, 0x3c5c, v74, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_add_lshl_u32 v88, v34, s33, 2
	s_and_b32 s25, s25, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s35, 11
	s_mul_i32 s12, s35, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v89, v34, s4, 2
	v_add_lshl_u32 v90, v34, s5, 2
	v_add_lshl_u32 v91, v34, s6, 2
	v_add_lshl_u32 v92, v34, s7, 2
	v_add_lshl_u32 v93, v34, s8, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s13, s35, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v94, v34, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s14, s35, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v95, v34, s12, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s35, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v96, v34, s13, 2
	v_add_lshl_u32 v97, v34, s14, 2
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v38
	v_mul_f32_e32 v6, v6, v38
	v_mul_f32_e32 v5, v5, v38
	v_mul_f32_e32 v4, v4, v38
	v_mul_f32_e32 v0, v0, v38
	v_mul_f32_e32 v3, v3, v38
	v_mul_f32_e32 v2, v2, v38
	v_mul_f32_e32 v1, v1, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v49, v24
	v_fma_f32 v6, v6, v47, v23
	v_fma_f32 v5, v5, v46, v22
	v_fma_f32 v4, v4, v44, v21
	v_fma_f32 v44, v0, v45, v17
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v0, 16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v3, v43, v20
	v_fma_f32 v42, v2, v42, v19
	v_fma_f32 v41, v1, v41, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v7, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v48, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v58 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v6, s2
	v_cndmask_b32_e64 v22, v22, v5, s2
	v_cndmask_b32_e64 v21, v21, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v58 offset:34832
	v_mul_f32_e32 v11, v11, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v9, v9, v38
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v12, v12, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v57, v26
	v_fma_f32 v14, v14, v56, v33
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v36, 0, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v55, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v44, s2
	v_cndmask_b32_e64 v26, v26, v15, s2
	v_cndmask_b32_e64 v33, v33, v14, s2
	v_cndmask_b32_e64 v18, v18, v41, s2
	v_cndmask_b32_e64 v32, v32, v13, s2
	v_cndmask_b32_e64 v19, v19, v42, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v53, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v51, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v52, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v5, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v50, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v54, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v11, s2
	v_cndmask_b32_e64 v28, v28, v10, s2
	v_cndmask_b32_e64 v27, v27, v9, s2
	v_cndmask_b32_e64 v25, v25, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v58 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v12, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v58 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v43, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v37
	v_mul_f32_e32 v6, v6, v37
	v_dual_mul_f32 v7, v7, v37 :: v_dual_lshlrev_b32 v30, 2, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v40, v17
	v_fma_f32 v1, v1, v59, v18
	v_fma_f32 v2, v2, v60, v19
	v_fma_f32 v3, v3, v61, v20
	v_fma_f32 v4, v4, v62, v21
	v_fma_f32 v5, v5, v63, v22
	v_fma_f32 v6, v6, v64, v23
	v_fma_f32 v7, v7, v65, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v17, v0, s3
	v_cndmask_b32_e64 v1, v18, v1, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v41, v16, 8, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v19, v2, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v8, v8, v37
	v_mul_f32_e32 v9, v9, v37
	v_mul_f32_e32 v10, v10, v37
	v_mul_f32_e32 v11, v11, v37
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v12, v12, v37
	v_mul_f32_e32 v13, v13, v37
	v_mul_f32_e32 v14, v14, v37
	v_mul_f32_e32 v15, v15, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v66, v25
	v_fma_f32 v9, v9, v67, v27
	v_fma_f32 v10, v10, v68, v28
	v_fma_f32 v11, v11, v69, v29
	v_fma_f32 v12, v12, v70, v31
	v_fma_f32 v13, v13, v71, v32
	v_fma_f32 v14, v14, v72, v33
	v_fma_f32 v15, v15, v73, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v25, v8, s3
	v_cndmask_b32_e64 v9, v27, v9, s3
	v_cndmask_b32_e64 v10, v28, v10, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v42, v16, 12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v20, v3, s3
	v_cndmask_b32_e64 v11, v29, v11, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v43, v16, 16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v21, v4, s3
	v_cndmask_b32_e64 v5, v22, v5, s3
	v_cndmask_b32_e64 v6, v23, v6, s3
	v_cndmask_b32_e64 v7, v24, v7, s3
	v_cndmask_b32_e64 v12, v31, v12, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v44, v16, 20, 0
	v_xad_u32 v45, v16, 24, 0
	v_xad_u32 v16, v16, 28, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v32, v13, s3
	v_cndmask_b32_e64 v14, v33, v14, s3
	v_cndmask_b32_e64 v15, v26, v15, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v36, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v39, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v41, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v42, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v43, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v44, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v45, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v16, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v48
	ds_load_b32 v1, v35
	ds_load_b32 v2, v75
	ds_load_b32 v3, v76
	ds_load_b32 v4, v77
	ds_load_b32 v5, v78
	ds_load_b32 v6, v79
	ds_load_b32 v7, v80
	ds_load_b32 v8, v81
	ds_load_b32 v9, v82
	ds_load_b32 v10, v83
	ds_load_b32 v11, v84
	ds_load_b32 v12, v85
	ds_load_b32 v13, v86
	ds_load_b32 v14, v87
	ds_load_b32 v15, v74
	v_add_lshl_u32 v38, v34, s35, 2
	v_lshl_add_u32 v16, s35, 3, v30
	v_lshl_add_u32 v17, s35, 4, v30
	v_lshl_add_u32 v18, s35, 5, v30
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v30, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v38, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v16, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v88, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v89, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v90, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v91, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v92, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v93, s[24:27], 0 offen
	v_add_lshl_u32 v0, v34, s1, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v11, v94, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v12, v95, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v96, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v14, v97, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 145
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6648
; TotalNumSgprs: 48
; NumVgprs: 145
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     145
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
