	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v18, 0xf0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v17, 15, v0
	v_lshlrev_b32_e32 v16, 2, v0
	v_or_b32_e32 v38, 0x3f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v18
	v_and_b32_e32 v40, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, 0, v16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 15
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
	v_mul_lo_u32 v4, s27, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s26, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v17, 4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[10:11], null, s27, 3, v[9:10]
	v_lshl_add_u32 v37, s27, 1, v9
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
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
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 12, v16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
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
	s_sub_i32 s24, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s24, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_addk_i32 s12, 0xff
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s14, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s14, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s12, 31
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s27, s30
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s3, 24
.Ltmp19:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v11, v2, v1, s34
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s15, s26, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s16
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s15, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v9
	v_add_nc_u32_e32 v4, s12, v37
	v_add_nc_u32_e32 v5, s12, v10
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s17, s27, 6
	v_add_nc_u32_e32 v19, s27, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v5, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s17
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s16, s26, 6
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b32 v35, v1, s[4:7], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v4, s[20:23], 0 offen
	buffer_load_b128 v[12:15], v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v27, s12, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v19, s2
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v4, s15, s16, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v28, s12, v10
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v1, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v27, s3
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v28, s3
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v4, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v9
	s_mov_b32 s12, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s27, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[48:51], v2, s[20:23], 0 offen
	buffer_load_b128 v[52:55], v4, s[20:23], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b32 v36, v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	v_lshlrev_b32_e32 v4, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x420, v1
	v_and_b32_e32 v1, 14, v0
	v_xor_b32_e32 v39, v2, v3
	v_lshlrev_b32_e32 v2, 6, v0
	v_lshlrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v1, 10, v39
	v_and_b32_e32 v39, 8, v0
	v_xor_b32_e32 v42, 0x90, v41
	v_xor_b32_e32 v43, 0x120, v41
	v_xor_b32_e32 v44, 0x1b0, v41
	v_xor_b32_e32 v45, 0x210, v41
	v_add_nc_u32_e32 v57, 0, v41
	v_xor_b32_e32 v46, 0x330, v41
	v_xor_b32_e32 v47, 0x3a0, v41
	v_add_nc_u32_e32 v58, 0, v42
	v_add_nc_u32_e32 v59, 0, v43
	v_add_nc_u32_e32 v60, 0, v44
	v_add_nc_u32_e32 v61, 0, v45
	v_add_nc_u32_e32 v62, 0, v46
	v_add_nc_u32_e32 v63, 0, v47
	v_add_nc_u32_e32 v64, 0x4000, v57
	v_add_nc_u32_e32 v65, 0x4000, v58
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	v_add_nc_u32_e32 v69, 0x4000, v62
	v_add_nc_u32_e32 v70, 0x4000, v63
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v56, v35 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v35, v12, v5, 0x4000501
	v_perm_b32 v5, v12, v5, 0x6020703
	v_perm_b32 v12, v13, v6, 0x4000501
	v_perm_b32 v6, v13, v6, 0x6020703
	v_perm_b32 v13, v14, v7, 0x4000501
	v_perm_b32 v7, v14, v7, 0x6020703
	v_perm_b32 v14, v15, v8, 0x4000501
	v_perm_b32 v8, v15, v8, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v15, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	v_perm_b32 v34, v35, v15, 0x7060302
	v_perm_b32 v15, v35, v15, 0x5040100
	v_perm_b32 v35, v5, v19, 0x7060302
	v_perm_b32 v5, v5, v19, 0x5040100
	v_perm_b32 v19, v12, v23, 0x7060302
	v_perm_b32 v12, v12, v23, 0x5040100
	v_perm_b32 v23, v6, v20, 0x7060302
	v_perm_b32 v6, v6, v20, 0x5040100
	v_perm_b32 v20, v13, v24, 0x7060302
	v_perm_b32 v13, v13, v24, 0x5040100
	v_perm_b32 v24, v7, v21, 0x7060302
	v_perm_b32 v7, v7, v21, 0x5040100
	v_perm_b32 v21, v14, v25, 0x7060302
	v_perm_b32 v14, v14, v25, 0x5040100
	v_perm_b32 v25, v8, v22, 0x7060302
	v_perm_b32 v8, v8, v22, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v22, v52, v48, 0x4000501
	v_perm_b32 v48, v52, v48, 0x6020703
	v_perm_b32 v52, v53, v49, 0x4000501
	v_perm_b32 v49, v53, v49, 0x6020703
	v_perm_b32 v53, v54, v50, 0x4000501
	v_perm_b32 v50, v54, v50, 0x6020703
	v_perm_b32 v54, v55, v51, 0x4000501
	v_perm_b32 v51, v55, v51, 0x6020703
	ds_store_2addr_b32 v57, v34, v15 offset1:16
	ds_store_2addr_b32 v58, v35, v5 offset1:16
	ds_store_2addr_b32 v59, v19, v12 offset1:16
	ds_store_2addr_b32 v60, v23, v6 offset1:16
	ds_store_2addr_b32 v61, v20, v13 offset1:16
	ds_store_2addr_b32 v57, v24, v7 offset0:160 offset1:176
	ds_store_2addr_b32 v62, v21, v14 offset1:16
	ds_store_2addr_b32 v63, v25, v8 offset1:16
	v_perm_b32 v5, v26, v22, 0x7060302
	v_perm_b32 v6, v26, v22, 0x5040100
	v_perm_b32 v7, v27, v48, 0x7060302
	v_perm_b32 v8, v27, v48, 0x5040100
	v_perm_b32 v12, v31, v52, 0x7060302
	v_perm_b32 v13, v31, v52, 0x5040100
	v_perm_b32 v14, v28, v49, 0x7060302
	v_perm_b32 v15, v28, v49, 0x5040100
	v_perm_b32 v19, v32, v53, 0x7060302
	v_perm_b32 v20, v32, v53, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v36 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v21, v29, v50, 0x7060302
	v_perm_b32 v22, v29, v50, 0x5040100
	v_perm_b32 v23, v33, v54, 0x7060302
	v_perm_b32 v24, v33, v54, 0x5040100
	v_perm_b32 v25, v30, v51, 0x7060302
	v_perm_b32 v26, v30, v51, 0x5040100
	ds_store_2addr_b32 v64, v5, v6 offset1:16
	ds_store_2addr_b32 v65, v7, v8 offset1:16
	ds_store_2addr_b32 v66, v12, v13 offset1:16
	ds_store_2addr_b32 v67, v14, v15 offset1:16
	ds_store_2addr_b32 v68, v19, v20 offset1:16
	ds_store_2addr_b32 v64, v21, v22 offset0:160 offset1:176
	ds_store_2addr_b32 v69, v23, v24 offset1:16
	ds_store_2addr_b32 v70, v25, v26 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x1800, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v56, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v49, 48, v4
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v5, 32, v0
	v_and_or_b32 v48, 0x1c0, v2, v7
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr48
.LBB0_3:                                ; %Flow42
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v7, s34, v17
	s_ashr_i32 s0, s14, 8
	v_and_b32_e32 v8, 1, v0
	v_or_b32_e32 v35, s33, v0
	v_lshlrev_b32_e32 v13, 2, v18
	v_mul_lo_u32 v36, v7, s0
	v_lshlrev_b32_e32 v14, 1, v1
	v_lshlrev_b32_e32 v15, 5, v8
	v_lshlrev_b32_e32 v12, 1, v18
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s1, s30, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s31, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 0x1800, v3
	v_and_b32_e32 v49, 48, v4
	v_and_b32_e32 v1, 0x210, v1
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v20, 0, v13, v15
	v_and_or_b32 v48, 0x1c0, v2, v3
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v50, s27, v9
	v_xor_b32_e32 v1, v1, v49
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v55, v20, v14
	v_add_nc_u32_e32 v56, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v48, v1
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v26, 0
	v_xor_b32_e32 v51, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v52, 16, v51
	v_xor_b32_e32 v53, 32, v51
	v_xor_b32_e32 v54, 48, v51
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v33, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s11, s1, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s45, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s31, s31, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s14, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s30, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s1, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[57:58], null, s1, s26, v[11:12]
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 24
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s1, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v58, s16, v9
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v62, v36, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s27
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v59, s16, v50
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v133, v57, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v35, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v60, s16, v37
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[73:76], v58, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v59, s[20:23], 0 offen
	buffer_load_b128 v[81:84], v60, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v58, 0x80000000, v62 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v61, s16, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v134, v58, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v135, v57, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[85:88], v61, s[20:23], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v57, s14, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, s15, v51
	v_add_nc_u32_e32 v60, s15, v52
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v59, s14, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v61, s15, v53
	v_add_nc_u32_e32 v62, s15, v54
	ds_load_b128 v[65:68], v58
	ds_load_b128 v[89:92], v58 offset:8192
	ds_load_b128 v[93:96], v60
	ds_load_b128 v[97:100], v60 offset:8192
	ds_load_b128 v[101:104], v61
	ds_load_b128 v[105:108], v61 offset:8192
	ds_load_b128 v[109:112], v62
	ds_load_b128 v[113:116], v62 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v57 offset:208
	ds_load_u8 v60, v57 offset:240
	ds_load_u8 v61, v57 offset:224
	ds_load_u8 v62, v57 offset:192
	ds_load_u8 v63, v57 offset:144
	ds_load_u8 v64, v57 offset:176
	ds_load_u8 v69, v57 offset:160
	ds_load_u8 v70, v57 offset:128
	ds_load_u8 v71, v57 offset:80
	ds_load_u8 v72, v57 offset:112
	ds_load_u8 v117, v57 offset:96
	ds_load_u8 v118, v57 offset:64
	ds_load_u8 v119, v57
	ds_load_u8 v120, v57 offset:16
	ds_load_u8 v121, v57 offset:32
	ds_load_u8 v122, v57 offset:48
	ds_load_u8 v123, v57 offset:464
	ds_load_u8 v124, v57 offset:496
	ds_load_u8 v125, v57 offset:480
	ds_load_u8 v126, v57 offset:448
	ds_load_u8 v127, v57 offset:400
	ds_load_u8 v128, v57 offset:432
	ds_load_u8 v129, v57 offset:416
	ds_load_u8 v130, v57 offset:384
	ds_load_u8 v131, v57 offset:336
	ds_load_u8 v132, v57 offset:368
	ds_load_u8 v136, v57 offset:352
	ds_load_u8 v137, v57 offset:320
	ds_load_u8 v138, v57 offset:272
	ds_load_u8 v139, v57 offset:304
	ds_load_u8 v140, v57 offset:288
	ds_load_u8 v141, v57 offset:256
	ds_load_u8 v142, v57 offset:720
	ds_load_u8 v143, v57 offset:752
	ds_load_u8 v144, v57 offset:736
	ds_load_u8 v145, v57 offset:704
	ds_load_u8 v146, v57 offset:656
	ds_load_u8 v147, v57 offset:688
	ds_load_u8 v148, v57 offset:672
	ds_load_u8 v149, v57 offset:640
	ds_load_u8 v150, v57 offset:592
	ds_load_u8 v151, v57 offset:624
	ds_load_u8 v152, v57 offset:608
	ds_load_u8 v153, v57 offset:576
	ds_load_u8 v154, v57 offset:528
	ds_load_u8 v155, v57 offset:560
	ds_load_u8 v156, v57 offset:544
	ds_load_u8 v157, v57 offset:512
	ds_load_u8 v158, v57 offset:976
	ds_load_u8 v59, v59
	ds_load_u8 v159, v57 offset:992
	ds_load_u8 v160, v57 offset:960
	ds_load_u8 v161, v57 offset:912
	ds_load_u8 v162, v57 offset:944
	ds_load_u8 v163, v57 offset:928
	ds_load_u8 v164, v57 offset:896
	ds_load_u8 v165, v57 offset:848
	ds_load_u8 v166, v57 offset:880
	ds_load_u8 v167, v57 offset:864
	ds_load_u8 v168, v57 offset:832
	ds_load_u8 v169, v57 offset:784
	ds_load_u8 v170, v57 offset:816
	ds_load_u8 v171, v57 offset:800
	ds_load_u8 v57, v57 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v61, v70, v63, 0xc0c0004
	v_perm_b32 v62, v69, v64, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v63, v118, v71, 0xc0c0004
	v_perm_b32 v64, v117, v72, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v69, v119, v120, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v70, v121, v122, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v71, v126, v123, 0xc0c0004
	v_perm_b32 v72, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v121, v130, v127, 0xc0c0004
	v_perm_b32 v122, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v125, v137, v131, 0xc0c0004
	v_perm_b32 v126, v136, v132, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v127, v141, v138, 0xc0c0004
	v_perm_b32 v128, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v129, v145, v142, 0xc0c0004
	v_perm_b32 v130, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v131, v149, v146, 0xc0c0004
	v_perm_b32 v132, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v140, v160, v158, 0xc0c0004
	v_perm_b32 v59, v159, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v169, 0xc0c0004
	v_perm_b32 v145, v171, v170, 0xc0c0004
	v_lshl_or_b32 v120, v60, 16, v58
	v_lshl_or_b32 v119, v62, 16, v61
	v_lshl_or_b32 v118, v64, 16, v63
	v_lshl_or_b32 v117, v70, 16, v69
	v_perm_b32 v136, v153, v150, 0xc0c0004
	v_perm_b32 v137, v152, v151, 0xc0c0004
	v_perm_b32 v138, v157, v154, 0xc0c0004
	v_perm_b32 v139, v156, v155, 0xc0c0004
	v_lshl_or_b32 v124, v72, 16, v71
	v_lshl_or_b32 v123, v122, 16, v121
	v_lshl_or_b32 v122, v126, 16, v125
	v_lshl_or_b32 v121, v128, 16, v127
	v_lshl_or_b32 v128, v130, 16, v129
	v_lshl_or_b32 v127, v132, 16, v131
	v_lshl_or_b32 v132, v59, 16, v140
	v_lshl_or_b32 v129, v145, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v141, v164, v161, 0xc0c0004
	v_perm_b32 v142, v163, v162, 0xc0c0004
	v_perm_b32 v143, v168, v165, 0xc0c0004
	v_perm_b32 v144, v167, v166, 0xc0c0004
	v_lshl_or_b32 v126, v137, 16, v136
	v_lshl_or_b32 v125, v139, 16, v138
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[121:124], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v142, 16, v141
	v_lshl_or_b32 v130, v144, 16, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[97:100], v[121:124], v[65:72] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s45, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[125:128], v[57:64] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s12, s44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[105:108], v[125:128], v[65:72] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s45, s14, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[129:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s15, s45, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s45, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[113:116], v[129:132], v[65:72] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s15, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v89, v57
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s10, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s35, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s31
	s_mov_b32 s13, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v57, v77, v73, 0x4000501
	v_perm_b32 v59, v77, v73, 0x6020703
	v_perm_b32 v61, v78, v74, 0x4000501
	v_perm_b32 v63, v78, v74, 0x6020703
	v_perm_b32 v65, v79, v75, 0x4000501
	v_perm_b32 v67, v79, v75, 0x6020703
	v_perm_b32 v69, v80, v76, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v85, v81, 0x4000501
	v_perm_b32 v60, v85, v81, 0x6020703
	v_perm_b32 v62, v86, v82, 0x4000501
	v_perm_b32 v64, v86, v82, 0x6020703
	v_perm_b32 v66, v87, v83, 0x4000501
	v_perm_b32 v68, v87, v83, 0x6020703
	v_perm_b32 v70, v88, v84, 0x4000501
	v_perm_b32 v71, v80, v76, 0x6020703
	v_perm_b32 v72, v88, v84, 0x6020703
	v_perm_b32 v73, v58, v57, 0x7060302
	v_perm_b32 v74, v58, v57, 0x5040100
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v105, 16, v134
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v57, 16, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v75, v60, v59, 0x7060302
	v_perm_b32 v76, v60, v59, 0x5040100
	v_perm_b32 v77, v62, v61, 0x7060302
	v_perm_b32 v78, v62, v61, 0x5040100
	v_perm_b32 v79, v64, v63, 0x7060302
	v_perm_b32 v80, v64, v63, 0x5040100
	v_perm_b32 v81, v66, v65, 0x7060302
	v_perm_b32 v82, v66, v65, 0x5040100
	v_perm_b32 v83, v68, v67, 0x7060302
	v_perm_b32 v84, v68, v67, 0x5040100
	v_perm_b32 v85, v70, v69, 0x7060302
	v_perm_b32 v86, v70, v69, 0x5040100
	v_perm_b32 v87, v72, v71, 0x7060302
	v_perm_b32 v88, v72, v71, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v55, v57 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v56 offset:34816
	ds_load_b128 v[61:64], v56 offset:34832
	ds_load_b128 v[65:68], v56 offset:35328
	ds_load_b128 v[69:72], v56 offset:35344
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v68, v68, v105
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v30, v68, v100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v63, v63, v105 :: v_dual_add_nc_u32 v172, s15, v16
	v_dual_mul_f32 v65, v65, v105 :: v_dual_add_nc_u32 v174, s44, v42
	v_dual_mul_f32 v64, v64, v105 :: v_dual_add_nc_u32 v175, s44, v43
	v_dual_mul_f32 v67, v67, v105 :: v_dual_add_nc_u32 v176, s44, v44
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v69, v69, v105 :: v_dual_add_nc_u32 v178, s44, v46
	v_dual_mul_f32 v66, v66, v105 :: v_dual_add_nc_u32 v179, s44, v47
	v_mul_f32_e32 v57, v57, v105
	v_mul_f32_e32 v58, v58, v105
	v_mul_f32_e32 v59, v59, v105
	v_mul_f32_e32 v60, v60, v105
	v_mul_f32_e32 v61, v61, v105
	v_mul_f32_e32 v62, v62, v105
	v_dual_mul_f32 v70, v70, v105 :: v_dual_fmac_f32 v29, v67, v99
	v_dual_mul_f32 v71, v71, v105 :: v_dual_fmac_f32 v28, v66, v98
	v_mul_f32_e32 v72, v72, v105
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v24, v62, v94 :: v_dual_add_nc_u32 v173, s44, v41
	v_dual_fmac_f32 v26, v64, v96 :: v_dual_add_nc_u32 v177, s44, v45
	v_dual_fmac_f32 v19, v57, v89 :: v_dual_fmac_f32 v32, v70, v102
	v_dual_fmac_f32 v20, v58, v90 :: v_dual_fmac_f32 v21, v59, v91
	v_dual_fmac_f32 v22, v60, v92 :: v_dual_fmac_f32 v23, v61, v93
	v_fmac_f32_e32 v34, v71, v103
	v_fmac_f32_e32 v25, v63, v95
	v_fmac_f32_e32 v27, v65, v97
	v_fmac_f32_e32 v31, v69, v101
	v_fmac_f32_e32 v33, v72, v104
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v172, v133 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v173, v73, v74 offset1:16
	ds_store_2addr_b32 v174, v75, v76 offset1:16
	ds_store_2addr_b32 v175, v77, v78 offset1:16
	ds_store_2addr_b32 v176, v79, v80 offset1:16
	ds_store_2addr_b32 v177, v81, v82 offset1:16
	ds_store_2addr_b32 v173, v83, v84 offset0:160 offset1:176
	ds_store_2addr_b32 v178, v85, v86 offset1:16
	ds_store_2addr_b32 v179, v87, v88 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v56, v38 :: v_dual_mov_b32 v5, v40
	v_mov_b32_e32 v6, v39
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v49
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v47, 0
	v_or_b32_e32 v1, v48, v1
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v72, v1, v2
	v_mov_b32_e32 v53, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v74, 16, v72
	v_xor_b32_e32 v75, 32, v72
	v_xor_b32_e32 v76, 48, v72
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v9, s10, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v9 offset:208
	ds_load_u8 v2, v9 offset:224
	ds_load_u8 v3, v9 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v10, s12, v75
	ds_load_b128 v[38:41], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v5, v9 offset:240
	ds_load_u8 v6, v9 offset:144
	ds_load_u8 v7, v9 offset:176
	ds_load_u8 v8, v9 offset:160
	ds_load_u8 v16, v9 offset:128
	ds_load_u8 v42, v9 offset:112
	ds_load_u8 v43, v9 offset:80
	ds_load_u8 v44, v9 offset:96
	ds_load_u8 v45, v9 offset:64
	ds_load_u8 v46, v9
	ds_load_u8 v47, v9 offset:16
	ds_load_u8 v48, v9 offset:32
	ds_load_u8 v49, v9 offset:48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s12, v72
	ds_load_b128 v[50:53], v4 offset:8192
	ds_load_b128 v[57:60], v4
	v_add_nc_u32_e32 v11, s12, v76
	v_add_nc_u32_e32 v77, s12, v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v2, v5, 0xc0c0004
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v3, s10, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v45, v43, 0xc0c0004
	v_perm_b32 v5, v44, v42, 0xc0c0004
	v_lshl_or_b32 v64, v2, 16, v1
	v_perm_b32 v1, v16, v6, 0xc0c0004
	v_perm_b32 v2, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v62, v5, 16, v4
	ds_load_u8 v93, v3
	v_lshl_or_b32 v63, v2, 16, v1
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v46, v47, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v48, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v2, 16, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	ds_load_u8 v54, v9 offset:336
	ds_load_u8 v55, v9 offset:352
	ds_load_u8 v69, v9 offset:320
	ds_load_u8 v70, v9 offset:272
	ds_load_u8 v71, v9 offset:304
	ds_load_u8 v73, v9 offset:288
	ds_load_u8 v81, v9 offset:256
	ds_load_u8 v16, v9 offset:464
	ds_load_u8 v42, v9 offset:480
	ds_load_u8 v43, v9 offset:448
	ds_load_u8 v44, v9 offset:496
	ds_load_u8 v45, v9 offset:400
	ds_load_u8 v46, v9 offset:432
	ds_load_u8 v47, v9 offset:416
	ds_load_u8 v48, v9 offset:384
	ds_load_u8 v91, v9 offset:720
	ds_load_u8 v92, v9 offset:736
	ds_load_u8 v94, v9 offset:704
	ds_load_u8 v82, v9 offset:368
	ds_load_u8 v83, v9 offset:592
	ds_load_u8 v84, v9 offset:608
	ds_load_u8 v85, v9 offset:576
	ds_load_u8 v86, v9 offset:528
	ds_load_u8 v87, v9 offset:560
	ds_load_u8 v88, v9 offset:544
	ds_load_u8 v89, v9 offset:512
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v77 offset:8192
	ds_load_b128 v[77:80], v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v100, v9 offset:976
	ds_load_u8 v101, v9 offset:992
	ds_load_u8 v102, v9 offset:960
	ds_load_u8 v103, v9 offset:912
	ds_load_u8 v104, v9 offset:944
	ds_load_u8 v105, v9 offset:928
	ds_load_u8 v106, v9 offset:896
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v54, v69, v54, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v55, v55, v82, 0xc0c0004
	v_perm_b32 v69, v73, v71, 0xc0c0004
	v_perm_b32 v90, v42, v44, 0xc0c0004
	v_perm_b32 v16, v43, v16, 0xc0c0004
	v_perm_b32 v95, v48, v45, 0xc0c0004
	v_perm_b32 v96, v47, v46, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[57:60], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v57, v81, v70, 0xc0c0004
	ds_load_u8 v70, v9 offset:656
	ds_load_u8 v71, v9 offset:688
	ds_load_u8 v73, v9 offset:672
	ds_load_u8 v81, v9 offset:640
	v_lshl_or_b32 v60, v90, 16, v16
	ds_load_u8 v16, v9 offset:752
	v_lshl_or_b32 v59, v96, 16, v95
	v_lshl_or_b32 v58, v55, 16, v54
	v_lshl_or_b32 v57, v69, 16, v57
	v_perm_b32 v54, v94, v91, 0xc0c0004
	ds_load_u8 v55, v9 offset:624
	ds_load_u8 v69, v9 offset:848
	ds_load_u8 v94, v9 offset:864
	ds_load_u8 v95, v9 offset:832
	ds_load_u8 v96, v9 offset:784
	ds_load_u8 v97, v9 offset:816
	ds_load_u8 v98, v9 offset:800
	ds_load_u8 v99, v9 offset:768
	ds_load_u8 v9, v9 offset:880
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v82, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[77:80], v[57:60], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[50:53], v[61:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v71, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v81, v70, 0xc0c0004
	v_perm_b32 v81, v89, v86, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v16, v92, v16, 0xc0c0004
	v_perm_b32 v73, v85, v83, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v84, v55, 0xc0c0004
	v_lshl_or_b32 v79, v71, 16, v70
	v_lshl_or_b32 v77, v82, 16, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v10 offset:8192
	ds_load_b128 v[85:88], v11 offset:8192
	ds_load_b128 v[89:92], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v80, v16, 16, v54
	v_lshl_or_b32 v78, v55, 16, v73
	v_perm_b32 v10, v102, v100, 0xc0c0004
	v_perm_b32 v11, v101, v93, 0xc0c0004
	v_perm_b32 v16, v106, v103, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v94, v9, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[38:41], v[77:80], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v38, v105, v104, 0xc0c0004
	v_perm_b32 v39, v95, v69, 0xc0c0004
	v_perm_b32 v54, v99, v96, 0xc0c0004
	v_perm_b32 v50, v98, v97, 0xc0c0004
	v_lshl_or_b32 v41, v11, 16, v10
	v_lshl_or_b32 v40, v38, 16, v16
	v_lshl_or_b32 v39, v9, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v38, v50, 16, v54
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[89:92], v[38:41], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[38:41], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v38, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v44
	v_cvt_f32_i32_e32 v40, v45
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v44, v48
	v_cvt_f32_i32_e32 v45, v49
	v_cvt_f32_i32_e32 v46, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v48, v3
	v_cvt_f32_i32_e32 v49, v4
	v_cvt_f32_i32_e32 v50, v5
	v_cvt_f32_i32_e32 v51, v6
	v_cvt_f32_i32_e32 v52, v7
	v_cvt_f32_i32_e32 v53, v8
	v_cvt_f32_i32_e32 v42, v42
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
	s_mul_i32 s5, s4, s27
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v36, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v35, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v54, 0, v12
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v73, v1, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v13, v15
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v55, v1, v14
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v55, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v54 offset:34816
	ds_load_b128 v[5:8], v54 offset:34832
	ds_load_b128 v[9:12], v54 offset:35328
	ds_load_b128 v[13:16], v54 offset:35344
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
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v37, s35, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v57, v37 offset:208
	ds_load_u8 v58, v37 offset:224
	ds_load_u8 v59, v37 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v98, s44, v75
	v_add_nc_u32_e32 v106, s44, v76
	v_add_nc_u32_e32 v60, s44, v74
	v_add_nc_u32_e32 v61, s44, v72
	ds_load_b128 v[74:77], v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v37 offset:240
	ds_load_u8 v63, v37 offset:144
	ds_load_u8 v64, v37 offset:176
	ds_load_u8 v65, v37 offset:160
	ds_load_u8 v66, v37 offset:128
	ds_load_u8 v67, v37 offset:112
	ds_load_u8 v68, v37 offset:80
	ds_load_u8 v69, v37 offset:96
	ds_load_u8 v70, v37 offset:64
	ds_load_u8 v71, v37
	ds_load_u8 v72, v37 offset:16
	ds_load_u8 v86, v37 offset:32
	ds_load_u8 v90, v37 offset:48
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, s35, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[78:81], v61 offset:8192
	ds_load_b128 v[82:85], v61
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v110, v56
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v61, v65, v64, 0xc0c0004
	v_perm_b32 v58, v58, v62, 0xc0c0004
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v59, v66, v63, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v56, v71, v72, 0xc0c0004
	v_lshl_or_b32 v89, v58, 16, v57
	v_perm_b32 v57, v70, v68, 0xc0c0004
	v_perm_b32 v58, v69, v67, 0xc0c0004
	v_dual_mov_b32 v71, s19 :: v_dual_mov_b32 v70, s18
	v_lshl_or_b32 v88, v61, 16, v59
	ds_load_u8 v59, v37 offset:464
	ds_load_u8 v61, v37 offset:480
	ds_load_u8 v62, v37 offset:448
	v_lshl_or_b32 v87, v58, 16, v57
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v86, v90, 0xc0c0004
	ds_load_u8 v58, v37 offset:496
	ds_load_u8 v63, v37 offset:400
	ds_load_u8 v72, v37 offset:432
	ds_load_u8 v90, v37 offset:416
	ds_load_u8 v91, v37 offset:384
	ds_load_u8 v99, v37 offset:336
	ds_load_u8 v100, v37 offset:352
	ds_load_u8 v101, v37 offset:320
	ds_load_u8 v102, v37 offset:272
	ds_load_u8 v103, v37 offset:304
	ds_load_u8 v104, v37 offset:288
	ds_load_u8 v105, v37 offset:256
	ds_load_u8 v108, v37 offset:368
	ds_load_u8 v109, v37 offset:592
	ds_load_u8 v111, v37 offset:608
	ds_load_u8 v112, v37 offset:576
	ds_load_u8 v113, v37 offset:528
	ds_load_u8 v114, v37 offset:560
	ds_load_u8 v115, v37 offset:544
	ds_load_u8 v116, v37 offset:512
	ds_load_u8 v118, v37 offset:720
	ds_load_u8 v119, v37 offset:736
	ds_load_u8 v120, v37 offset:704
	v_lshl_or_b32 v86, v57, 16, v56
	v_dual_mov_b32 v69, s17 :: v_dual_mov_b32 v68, s16
	v_dual_mov_b32 v67, s15 :: v_dual_mov_b32 v66, s14
	v_dual_mov_b32 v65, s13 :: v_dual_mov_b32 v64, s12
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v117, v61, v58, 0xc0c0004
	v_perm_b32 v107, v62, v59, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v72, v90, v72, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v121, v91, v63, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[90:93], v60 offset:8192
	ds_load_b128 v[94:97], v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[82:85], v[86:89], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v82, v101, v99, 0xc0c0004
	v_lshl_or_b32 v84, v72, 16, v121
	ds_load_u8 v72, v37 offset:752
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v83, v100, v108, 0xc0c0004
	v_perm_b32 v99, v105, v102, 0xc0c0004
	v_perm_b32 v100, v104, v103, 0xc0c0004
	ds_load_u8 v101, v37 offset:656
	ds_load_u8 v102, v37 offset:688
	ds_load_u8 v103, v37 offset:672
	ds_load_u8 v104, v37 offset:640
	v_lshl_or_b32 v85, v117, 16, v107
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v105, v115, v114, 0xc0c0004
	v_lshl_or_b32 v82, v100, 16, v99
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v99, v120, v118, 0xc0c0004
	ds_load_u8 v100, v37 offset:624
	ds_load_u8 v117, v37 offset:848
	ds_load_u8 v118, v37 offset:864
	ds_load_u8 v120, v37 offset:832
	ds_load_u8 v121, v37 offset:784
	ds_load_u8 v122, v37 offset:816
	ds_load_u8 v123, v37 offset:800
	ds_load_u8 v124, v37 offset:768
	v_wmma_i32_16x16x16_iu8 v[64:71], v[78:81], v[86:89], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[94:97], v[82:85], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[90:93], v[82:85], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v72, v119, v72, 0xc0c0004
	ds_load_u8 v119, v37 offset:976
	ds_load_u8 v125, v37 offset:992
	ds_load_u8 v126, v37 offset:960
	ds_load_u8 v127, v37 offset:912
	ds_load_u8 v128, v37 offset:944
	ds_load_u8 v129, v37 offset:928
	ds_load_u8 v130, v37 offset:896
	ds_load_u8 v37, v37 offset:880
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v104, v101, 0xc0c0004
	v_perm_b32 v103, v112, v109, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v100, v111, v100, 0xc0c0004
	v_perm_b32 v104, v116, v113, 0xc0c0004
	v_lshl_or_b32 v97, v72, 16, v99
	v_lshl_or_b32 v96, v102, 16, v101
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v124, v121, 0xc0c0004
	v_lshl_or_b32 v95, v100, 16, v103
	v_lshl_or_b32 v94, v105, 16, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[98:101], v98 offset:8192
	ds_load_b128 v[102:105], v106 offset:8192
	ds_load_b128 v[106:109], v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v78, v123, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[74:77], v[94:97], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v126, v119, 0xc0c0004
	v_perm_b32 v74, v125, v110, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v76, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v130, v127, 0xc0c0004
	v_perm_b32 v110, v120, v117, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v37, v118, v37, 0xc0c0004
	v_lshl_or_b32 v77, v74, 16, v72
	v_lshl_or_b32 v74, v78, 16, v111
	v_lshl_or_b32 v76, v76, 16, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v75, v37, 16, v110
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[98:101], v[94:97], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[106:109], v[74:77], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[102:105], v[74:77], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v37, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s1, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s1, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v56.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v56.h, v73.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s27
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v36, v36, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v35, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s27, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v73, 0x5410 :: v_dual_and_b32 v72, 16, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v74, 0x7632 :: v_dual_mul_f32 v15, v15, v56
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v16, v56
	v_mul_f32_e32 v1, v1, v56
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v18, 1, v18
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v17, s34, s33, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v52, v34
	v_fma_f32 v42, v1, v42, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v17, v18, 1
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.h, v56.l
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v42, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v83.h, v56.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
	v_mov_b16_e32 v80.h, v56.l
	v_mov_b16_e32 v82.h, v56.l
	v_mov_b16_e32 v86.h, v56.l
	v_mov_b16_e32 v79.h, v56.l
	v_mov_b16_e32 v81.h, v56.l
	v_mov_b16_e32 v85.h, v56.l
	v_mov_b16_e32 v75.h, v56.l
	v_mov_b16_e32 v76.h, v56.l
	v_mov_b16_e32 v78.h, v56.l
	v_mov_b16_e32 v77.h, v56.l
	v_mov_b16_e32 v16.h, v56.l
	v_mov_b16_e32 v87.h, v56.l
	v_mov_b16_e32 v88.h, v56.l
	s_mov_b32 s0, 0x76543210
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_and_b32 s25, s25, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v53, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v55, v1 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v33, v0, s2
	v_cndmask_b32_e64 v33, v34, v15, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v56
	v_mul_f32_e32 v2, v2, v56
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v7, v7, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v3, v39, v21
	v_fma_f32 v38, v2, v38, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[0:3], v54 offset:34816
	v_mul_f32_e32 v6, v6, v56
	v_mul_f32_e32 v5, v5, v56
	v_mul_f32_e32 v4, v4, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v7, v44, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v38, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v6, v43, v24
	v_fma_f32 v41, v5, v41, v23
	v_fma_f32 v40, v4, v40, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v54 offset:34832
	v_mul_f32_e32 v14, v14, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v44, s2
	v_cndmask_b32_e64 v23, v23, v41, s2
	v_cndmask_b32_e64 v22, v22, v40, s2
	v_cndmask_b32_e64 v21, v21, v39, s2
	v_cndmask_b32_e64 v24, v24, v43, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v1, v1, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v51, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, v1, v57, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, v20, v1, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v11, v11, v56 :: v_dual_mul_f32 v2, v2, v34
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v10, v10, v56 :: v_dual_mul_f32 v5, v5, v34
	v_dual_mul_f32 v13, v13, v56 :: v_dual_mul_f32 v0, v0, v34
	v_dual_mul_f32 v12, v12, v56 :: v_dual_mul_f32 v3, v3, v34
	v_dual_mul_f32 v9, v9, v56 :: v_dual_mul_f32 v4, v4, v34
	v_dual_mul_f32 v8, v8, v56 :: v_dual_mul_f32 v7, v7, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v48, v29
	v_fma_f32 v10, v10, v47, v28
	v_fma_f32 v13, v13, v50, v31
	v_fma_f32 v12, v12, v49, v30
	v_fma_f32 v46, v9, v46, v27
	v_fma_f32 v45, v8, v45, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v11, s2
	v_cndmask_b32_e64 v28, v28, v10, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v54 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v13, s2
	v_cndmask_b32_e64 v30, v30, v12, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v54 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v46, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v37, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v45, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v60, v23
	v_fma_f32 v3, v3, v59, v22
	v_fma_f32 v6, v6, v62, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v19, v0, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v63, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v23, v4, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v58, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v25, v6, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v0, v0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v26, v7, s3
	v_cndmask_b32_e64 v3, v22, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v61, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v10, v10, v34
	v_mul_f32_e32 v8, v8, v34
	v_mul_f32_e32 v11, v11, v34
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v13, v13, v34
	v_mul_f32_e32 v12, v12, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v66, v29
	v_fma_f32 v8, v8, v64, v27
	v_fma_f32 v11, v11, v67, v30
	v_fma_f32 v13, v13, v69, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v29, v10, s3
	v_cndmask_b32_e64 v8, v27, v8, s3
	v_cndmask_b32_e64 v11, v30, v11, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v15, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v68, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v32, v13, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v10, v10, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v65, v28
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v11, v11, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v71, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v31, v12, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v10, 0, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v28, v9, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, 0, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v14, v14, v34 :: v_dual_max_f32 v3, v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v18, v15, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v9, v9, v9
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, 0, v13
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v7, v7, v7
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v70, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, 0, v12
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v13, v13, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.l, v10.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v24, v5, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v83.l, v11.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v33, v14, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v28, 1, v84
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_and_b32 v27, 1, v83
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v0, v0, v0
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	v_mul_f32_e32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v80.l, v6.h
	v_mov_b16_e32 v82.l, v8.h
	v_mov_b16_e32 v86.l, v12.h
	v_add3_u32 v10, v10, v28, 0x7fff
	v_mov_b16_e32 v79.l, v7.h
	v_mov_b16_e32 v81.l, v9.h
	v_mov_b16_e32 v85.l, v13.h
	v_add3_u32 v11, v11, v27, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v3.h
	v_and_b32_e32 v26, 1, v82
	v_and_b32_e32 v30, 1, v86
	v_mov_b16_e32 v11.l, v10.h
	v_and_b32_e32 v24, 1, v80
	v_and_b32_e32 v23, 1, v79
	v_and_b32_e32 v25, 1, v81
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v29, 1, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v19, 1, v75
	v_mov_b16_e32 v76.l, v2.h
	v_mov_b16_e32 v78.l, v4.h
	v_add3_u32 v6, v6, v24, 0x7fff
	v_add3_u32 v8, v8, v26, 0x7fff
	v_add3_u32 v12, v12, v30, 0x7fff
	v_mov_b16_e32 v77.l, v5.h
	v_add3_u32 v7, v7, v23, 0x7fff
	v_add3_u32 v9, v9, v25, 0x7fff
	v_add3_u32 v13, v13, v29, 0x7fff
	v_add3_u32 v3, v3, v19, 0x7fff
	v_mov_b16_e32 v7.l, v6.h
	v_and_b32_e32 v20, 1, v76
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v13.l, v12.h
	v_and_b32_e32 v22, 1, v78
	v_dual_cndmask_b32 v6, 0x3276, v74 :: v_dual_and_b32 v21, 1, v77
	v_mov_b16_e32 v56.h, v56.l
	v_mov_b16_e32 v56.l, v0.h
	v_add3_u32 v2, v2, v20, 0x7fff
	v_add3_u32 v4, v4, v22, 0x7fff
	v_mov_b16_e32 v88.l, v14.h
	v_mov_b16_e32 v16.l, v1.h
	v_add3_u32 v5, v5, v21, 0x7fff
	v_mov_b16_e32 v87.l, v15.h
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v3.l, v2.h
	v_and_b32_e32 v18, 1, v56
	v_cndmask_b32_e32 v4, 0x1054, v73, vcc_lo
	v_and_b32_e32 v32, 1, v88
	v_and_b32_e32 v16, 1, v16
	v_dual_cndmask_b32 v8, v9, v13 :: v_dual_and_b32 v31, 1, v87
	v_add3_u32 v0, v0, v18, 0x7fff
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v6, 8, v6
	v_add3_u32 v14, v14, v32, 0x7fff
	v_add3_u32 v1, v1, v16, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_add3_u32 v0, v15, v31, 0x7fff
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_mov_b16_e32 v0.l, v14.h
	v_cndmask_b32_e32 v2, v5, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_cndmask_b32_e32 v5, v7, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e32 v7, v13, v9, vcc_lo
	v_dual_cndmask_b32 v9, v0, v11 :: v_dual_cndmask_b32 v0, v11, v0
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v4
	v_and_b32_e32 v11, 0x7060706, v6
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v2, v10
	v_perm_b32 v1, v1, v2, v11
	v_perm_b32 v2, v3, v5, v10
	v_perm_b32 v3, v3, v5, v11
	v_perm_b32 v4, v6, v7, v10
	v_perm_b32 v5, v6, v7, v11
	v_perm_b32 v6, v8, v9, v10
	v_perm_b32 v7, v8, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v17, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 180
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9776
; TotalNumSgprs: 48
; NumVgprs: 180
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
