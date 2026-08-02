	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v26, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v25, 15, v0
	v_lshlrev_b32_e32 v63, 3, v0
	v_or_b32_e32 v65, 0x3f0, v0
	v_or_b32_e32 v66, 0x7f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v26
	v_and_b32_e32 v67, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 24, v63
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v24, 0, v63
	v_and_b32_e32 v68, 32, v0
	v_and_b32_e32 v69, 48, v63
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v17, v25, 4, v4
	v_mad_u64_u32 v[18:19], null, s35, 3, v[17:18]
	v_lshl_add_u32 v64, s35, 1, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s12, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s12
	s_mul_hi_u32 s12, s13, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s12, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s13, s13, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s23, s13, s17
	s_cmp_ge_u32 s13, s17
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s13, s23, s13
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s13, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s12, s19, s12
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s14, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s12, s12, s18
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s12, s12, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s12, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s12, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s3
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s38, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s35, s26
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v19, v1, v2, s38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s15, s34, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s15, v19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v17
	v_add_nc_u32_e32 v4, s12, v64
	v_add_nc_u32_e32 v5, s12, v18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v15, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s17, s35, 6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s17
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s16, s34, 6
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b64 v[4:5], v1, s[4:7], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[7:10], v6, s[20:23], 0 offen
	buffer_load_b128 v[11:14], v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	v_cndmask_b32_e64 v2, 0x80000000, v15, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v15, s12, v64
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v6, s15, s16, v19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v16, s12, v18
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v1, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v2, s[20:23], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v15, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v16, s2
	s_clause 0x1
	buffer_load_b128 v[31:34], v2, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v6, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v17
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v6, s35, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[39:42], v2, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v6, s[20:23], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b64 v[15:16], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x420, v1
	v_and_b32_e32 v1, 14, v0
	v_xor_b32_e32 v6, v2, v3
	v_lshlrev_b32_e32 v2, 6, v0
	v_lshlrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v71, v1, 10, v6
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 16, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v72, 0x90, v71
	v_xor_b32_e32 v73, 0x120, v71
	v_xor_b32_e32 v74, 0x1b0, v71
	v_xor_b32_e32 v75, 0x210, v71
	v_add_nc_u32_e32 v47, 0, v71
	v_xor_b32_e32 v76, 0x330, v71
	v_xor_b32_e32 v77, 0x3a0, v71
	v_add_nc_u32_e32 v48, 0, v72
	v_add_nc_u32_e32 v49, 0, v73
	v_add_nc_u32_e32 v50, 0, v74
	v_add_nc_u32_e32 v51, 0, v75
	v_add_nc_u32_e32 v52, 0, v76
	v_add_nc_u32_e32 v53, 0, v77
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v24, v[4:5] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v4, v11, v7, 0x4000501
	v_perm_b32 v5, v11, v7, 0x6020703
	v_perm_b32 v7, v12, v8, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	v_perm_b32 v11, v13, v9, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	v_perm_b32 v12, v14, v10, 0x4000501
	v_perm_b32 v10, v14, v10, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v13, v27, v20, 0x4000501
	v_perm_b32 v14, v27, v20, 0x6020703
	v_perm_b32 v20, v28, v21, 0x4000501
	v_perm_b32 v21, v28, v21, 0x6020703
	v_perm_b32 v27, v29, v22, 0x4000501
	v_perm_b32 v22, v29, v22, 0x6020703
	v_perm_b32 v28, v30, v23, 0x4000501
	v_perm_b32 v23, v30, v23, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v29, v35, v31, 0x4000501
	v_perm_b32 v30, v35, v31, 0x6020703
	v_perm_b32 v35, v37, v33, 0x4000501
	v_perm_b32 v33, v37, v33, 0x6020703
	v_perm_b32 v37, v4, v13, 0x7060302
	v_perm_b32 v4, v4, v13, 0x5040100
	v_perm_b32 v13, v5, v14, 0x7060302
	v_perm_b32 v5, v5, v14, 0x5040100
	v_perm_b32 v14, v7, v20, 0x7060302
	v_perm_b32 v7, v7, v20, 0x5040100
	v_perm_b32 v20, v8, v21, 0x7060302
	v_perm_b32 v8, v8, v21, 0x5040100
	v_perm_b32 v21, v11, v27, 0x7060302
	v_perm_b32 v11, v11, v27, 0x5040100
	v_perm_b32 v27, v9, v22, 0x7060302
	v_perm_b32 v9, v9, v22, 0x5040100
	v_perm_b32 v22, v12, v28, 0x7060302
	v_perm_b32 v12, v12, v28, 0x5040100
	v_perm_b32 v28, v10, v23, 0x7060302
	v_perm_b32 v10, v10, v23, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v23, v43, v39, 0x4000501
	v_perm_b32 v31, v36, v32, 0x4000501
	v_perm_b32 v32, v36, v32, 0x6020703
	v_perm_b32 v36, v38, v34, 0x4000501
	v_perm_b32 v34, v38, v34, 0x6020703
	v_perm_b32 v38, v43, v39, 0x6020703
	v_perm_b32 v39, v44, v40, 0x4000501
	v_perm_b32 v40, v44, v40, 0x6020703
	v_perm_b32 v43, v45, v41, 0x4000501
	v_perm_b32 v41, v45, v41, 0x6020703
	v_perm_b32 v44, v46, v42, 0x4000501
	v_perm_b32 v42, v46, v42, 0x6020703
	ds_store_2addr_b32 v47, v37, v4 offset1:16
	ds_store_2addr_b32 v48, v13, v5 offset1:16
	ds_store_2addr_b32 v49, v14, v7 offset1:16
	ds_store_2addr_b32 v50, v20, v8 offset1:16
	ds_store_2addr_b32 v51, v21, v11 offset1:16
	ds_store_2addr_b32 v47, v27, v9 offset0:160 offset1:176
	ds_store_2addr_b32 v52, v22, v12 offset1:16
	ds_store_2addr_b32 v53, v28, v10 offset1:16
	v_perm_b32 v4, v29, v23, 0x7060302
	v_perm_b32 v5, v29, v23, 0x5040100
	v_perm_b32 v7, v30, v38, 0x7060302
	v_perm_b32 v8, v30, v38, 0x5040100
	v_perm_b32 v9, v31, v39, 0x7060302
	v_perm_b32 v10, v31, v39, 0x5040100
	v_perm_b32 v11, v32, v40, 0x7060302
	v_perm_b32 v12, v32, v40, 0x5040100
	v_perm_b32 v13, v35, v43, 0x7060302
	v_perm_b32 v14, v35, v43, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v24, v[15:16] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v15, v33, v41, 0x7060302
	v_perm_b32 v16, v33, v41, 0x5040100
	v_perm_b32 v20, v36, v44, 0x7060302
	v_perm_b32 v21, v36, v44, 0x5040100
	v_perm_b32 v22, v34, v42, 0x7060302
	v_perm_b32 v23, v34, v42, 0x5040100
	ds_store_2addr_b32 v54, v4, v5 offset1:16
	ds_store_2addr_b32 v55, v7, v8 offset1:16
	ds_store_2addr_b32 v56, v9, v10 offset1:16
	ds_store_2addr_b32 v57, v11, v12 offset1:16
	ds_store_2addr_b32 v58, v13, v14 offset1:16
	ds_store_2addr_b32 v54, v15, v16 offset0:160 offset1:176
	ds_store_2addr_b32 v59, v20, v21 offset1:16
	ds_store_2addr_b32 v60, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0x1800, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v95, 0x3f0, v0
	v_or_b32_e32 v98, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v4, 48, v63
	v_and_b32_e32 v7, 8, v0
	v_and_b32_e32 v5, 32, v0
	v_and_or_b32 v70, 0x1c0, v2, v8
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr70
.LBB0_3:                                ; %Flow58
	s_load_b64 s[36:37], s[0:1], 0x20
	v_or_b32_e32 v8, s38, v25
	v_or_b32_e32 v6, s38, v6
	s_ashr_i32 s0, s13, 6
	v_and_b32_e32 v9, 1, v0
	v_or_b32_e32 v60, s33, v0
	v_mul_lo_u32 v61, v8, s0
	v_mul_lo_u32 v59, v6, s0
	v_lshlrev_b32_e32 v24, 2, v26
	v_lshlrev_b32_e32 v22, 1, v1
	v_lshlrev_b32_e32 v62, 5, v9
	v_lshlrev_b32_e32 v23, 1, v26
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s1, s26, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 0x1800, v3
	v_and_b32_e32 v1, 0x210, v1
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v9, 0, v24, v62
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v78, s35, v17
	v_and_or_b32 v70, 0x1c0, v2, v3
	v_xor_b32_e32 v1, v1, v69
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v83, v9, v22
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v70, v1
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v84, 0, v23
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, 0
	v_xor_b32_e32 v79, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s27, s0, 3
	s_add_i32 s10, s1, 64
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s11, 1
	s_add_i32 s45, 0, 0x8000
	s_add_i32 s39, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s27, s27, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s12
	s_mov_b32 s12, s26
	s_mov_b32 s26, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s1, s10, s15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s14, v79
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s1, s34, v[19:20]
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v133, s45, v25
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s14, v80
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[20:21], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v133 offset:416
	ds_load_u8 v10, v133 offset:384
	ds_load_u8 v13, v133 offset:480
	ds_load_u8 v14, v133 offset:448
	ds_load_u8 v15, v133 offset:288
	ds_load_u8 v16, v133 offset:256
	ds_load_u8 v85, v133 offset:352
	ds_load_u8 v86, v133 offset:320
	ds_load_u8 v87, v133 offset:160
	ds_load_u8 v88, v133 offset:128
	ds_load_u8 v89, v133 offset:224
	ds_load_u8 v90, v133 offset:192
	ds_load_u8 v91, v133 offset:96
	ds_load_u8 v92, v133 offset:64
	ds_load_u8 v105, v133
	ds_load_u8 v106, v133 offset:32
	ds_load_u8 v107, v133 offset:928
	ds_load_u8 v108, v133 offset:896
	ds_load_u8 v109, v133 offset:992
	ds_load_u8 v110, v133 offset:960
	ds_load_u8 v111, v133 offset:800
	ds_load_u8 v112, v133 offset:768
	ds_load_u8 v113, v133 offset:864
	ds_load_u8 v114, v133 offset:832
	ds_load_u8 v115, v133 offset:672
	ds_load_u8 v116, v133 offset:640
	ds_load_u8 v117, v133 offset:736
	ds_load_u8 v118, v133 offset:704
	ds_load_u8 v119, v133 offset:544
	ds_load_u8 v120, v133 offset:512
	ds_load_u8 v121, v133 offset:608
	ds_load_u8 v122, v133 offset:576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v11 offset:8192
	ds_load_b128 v[101:104], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v11, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v14, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v85, v105, v106, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v110, v109, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[105:108], v12 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v12, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v88, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v89, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v90, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v91, v120, v119, 0xc0c0004
	v_lshl_or_b32 v112, v10, 16, v9
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v122, v121, 0xc0c0004
	v_lshl_or_b32 v111, v11, 16, v13
	v_lshl_or_b32 v110, v15, 16, v14
	v_lshl_or_b32 v109, v16, 16, v85
	v_lshl_or_b32 v116, v87, 16, v86
	v_lshl_or_b32 v115, v88, 16, v12
	v_lshl_or_b32 v114, v90, 16, v89
	v_lshl_or_b32 v113, v92, 16, v91
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[97:100], v[109:112], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v109, v133 offset:496
	ds_load_u8 v110, v133 offset:464
	ds_load_u8 v111, v133 offset:304
	ds_load_u8 v112, v133 offset:272
	ds_load_u8 v123, v133 offset:432
	ds_load_u8 v124, v133 offset:400
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[113:116], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[105:108], v[113:116], v[85:92] neg_lo:[1,1,0]
	ds_load_u8 v114, v133 offset:368
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v133 offset:336
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v112, v109, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v114, 0xc0c0004
	v_lshl_or_b32 v111, v110, 16, v111
	ds_load_u8 v109, v133 offset:176
	ds_load_u8 v110, v133 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v133 offset:240
	ds_load_u8 v113, v133 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v113, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v133 offset:112
	ds_load_u8 v113, v133 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v113, v109, 0xc0c0004
	ds_load_u8 v113, v133 offset:16
	ds_load_u8 v114, v133 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v109, 16, v113
	ds_load_u8 v113, v133 offset:944
	ds_load_u8 v114, v133 offset:912
	v_wmma_i32_16x16x16_iu8 v[125:132], v[97:100], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s45, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v133 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v133 offset:816
	ds_load_u8 v116, v133 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v133 offset:880
	ds_load_u8 v117, v133 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v133 offset:688
	ds_load_u8 v114, v133 offset:656
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v133 offset:752
	ds_load_u8 v117, v133 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v133 offset:560
	ds_load_u8 v117, v133 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v133 offset:624
	ds_load_u8 v118, v133 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	v_wmma_i32_16x16x16_iu8 v[117:124], v[93:96], v[109:112], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v93, v133 offset:1440
	ds_load_u8 v94, v133 offset:1408
	ds_load_u8 v95, v133 offset:1504
	ds_load_u8 v96, v133 offset:1472
	ds_load_u8 v97, v133 offset:1312
	ds_load_u8 v98, v133 offset:1280
	v_wmma_i32_16x16x16_iu8 v[125:132], v[105:108], v[113:116], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[101:104], v[113:116], v[117:124] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v101, s14, v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1376
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v133 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	v_lshl_or_b32 v96, v95, 16, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v95, v94, 16, v97
	ds_load_u8 v93, v133 offset:1184
	ds_load_u8 v94, v133 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1248
	ds_load_u8 v97, v133 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v133 offset:1056
	ds_load_u8 v97, v133 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	ds_load_u8 v97, v133 offset:1120
	ds_load_u8 v98, v133 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v97, 16, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v101
	ds_load_b128 v[101:104], v101 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[93:96], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[101:104], v[93:96], v[85:92] neg_lo:[1,1,0]
	ds_load_u8 v93, v133 offset:1456
	ds_load_u8 v94, v133 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1520
	ds_load_u8 v95, v133 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v133 offset:1328
	ds_load_u8 v96, v133 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v133 offset:1392
	ds_load_u8 v105, v133 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v105, v96, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v133 offset:1200
	ds_load_u8 v94, v133 offset:1168
	v_lshl_or_b32 v95, v105, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1264
	ds_load_u8 v105, v133 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v105, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v133 offset:1072
	ds_load_u8 v105, v133 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v105, v93, 0xc0c0004
	ds_load_u8 v105, v133 offset:1136
	ds_load_u8 v106, v133 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v105, 16, v93
	v_wmma_i32_16x16x16_iu8 v[117:124], v[97:100], v[93:96], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[101:104], v[93:96], v[125:132] neg_lo:[1,1,0]
	ds_load_u8 v93, v133 offset:1952
	ds_load_u8 v94, v133 offset:1920
	ds_load_u8 v95, v133 offset:2016
	ds_load_u8 v96, v133 offset:1984
	ds_load_u8 v97, v133 offset:1824
	ds_load_u8 v98, v133 offset:1792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v101, s14, v82
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s1, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s14, s33
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1888
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v133 offset:1856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	v_lshl_or_b32 v96, v95, 16, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v95, v94, 16, v97
	ds_load_u8 v93, v133 offset:1696
	ds_load_u8 v94, v133 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1760
	ds_load_u8 v97, v133 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v133 offset:1568
	ds_load_u8 v97, v133 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	ds_load_u8 v97, v133 offset:1632
	ds_load_u8 v98, v133 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v97, 16, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v101
	ds_load_b128 v[101:104], v101 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[93:96], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[101:104], v[93:96], v[85:92] neg_lo:[1,1,0]
	ds_load_u8 v93, v133 offset:1968
	ds_load_u8 v94, v133 offset:1936
	v_cvt_f32_i32_e32 v107, v15
	v_cvt_f32_i32_e32 v108, v16
	v_cvt_f32_i32_e32 v109, v85
	v_cvt_f32_i32_e32 v110, v86
	v_cvt_f32_i32_e32 v111, v87
	v_cvt_f32_i32_e32 v112, v88
	v_cvt_f32_i32_e32 v113, v89
	v_cvt_f32_i32_e32 v114, v90
	v_cvt_f32_i32_e32 v115, v91
	v_cvt_f32_i32_e32 v116, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v94, s45, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v94, v94
	ds_load_u8 v95, v133 offset:2000
	s_mov_b32 s45, s39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v133 offset:1840
	ds_load_u8 v96, v133 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v133 offset:1904
	ds_load_u8 v105, v133 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v105, v96, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v133 offset:1712
	ds_load_u8 v94, v133 offset:1680
	v_lshl_or_b32 v95, v105, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:1776
	ds_load_u8 v105, v133 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v105, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v133 offset:1584
	ds_load_u8 v105, v133 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v105, v93, 0xc0c0004
	ds_load_u8 v105, v133 offset:1648
	ds_load_u8 v106, v133 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_cvt_f32_i32_e32 v106, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v93, v105, 16, v93
	v_cvt_f32_i32_e32 v105, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s14, v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[125:132], v[101:104], v[93:96], v[125:132] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v101, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s14, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v102, v10
	v_cvt_f32_i32_e32 v103, v11
	v_cvt_f32_i32_e32 v104, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[117:124], v[97:100], v[93:96], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v91, v125
	v_cvt_f32_i32_e32 v92, v126
	v_cvt_f32_i32_e32 v93, v127
	v_cvt_f32_i32_e32 v94, v128
	v_cvt_f32_i32_e32 v100, v117
	v_cvt_f32_i32_e32 v99, v118
	v_cvt_f32_i32_e32 v85, v119
	v_cvt_f32_i32_e32 v86, v120
	v_cvt_f32_i32_e32 v87, v121
	v_cvt_f32_i32_e32 v88, v122
	v_cvt_f32_i32_e32 v89, v123
	v_cvt_f32_i32_e32 v90, v124
	v_cvt_f32_i32_e32 v95, v129
	v_cvt_f32_i32_e32 v96, v130
	v_cvt_f32_i32_e32 v97, v131
	v_cvt_f32_i32_e32 v98, v132
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v117, v13, v9, 0x4000501
	v_perm_b32 v118, v13, v9, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s14, v64
	v_add_nc_u32_e32 v13, s14, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v119, v14, v10, 0x4000501
	v_perm_b32 v120, v14, v10, 0x6020703
	v_perm_b32 v121, v15, v11, 0x4000501
	v_perm_b32 v122, v15, v11, 0x6020703
	v_perm_b32 v123, v16, v12, 0x4000501
	v_perm_b32 v124, v16, v12, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	s_waitcnt vmcnt(0)
	v_perm_b32 v125, v13, v9, 0x4000501
	v_perm_b32 v13, v13, v9, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v60, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v126, v14, v10, 0x4000501
	v_perm_b32 v14, v14, v10, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v59, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v127, v15, v11, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v15, v15, v11, 0x6020703
	v_perm_b32 v128, v16, v12, 0x4000501
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v16, v16, v12, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v83, v9 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v61, s12, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s12, s11, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x1
	buffer_load_u16 v9, v9, s[28:31], 0 offen
	buffer_load_u16 v10, v10, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s39, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s27
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v130, 16, v10
	v_lshlrev_b32_e32 v129, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v84 offset:36864
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v131, v9, v129
	v_mul_f32_e32 v132, v10, v129
	v_mul_f32_e32 v133, v11, v129
	v_dual_mul_f32 v134, v12, v129 :: v_dual_mul_f32 v135, v9, v130
	v_mul_f32_e32 v136, v10, v130
	v_mul_f32_e32 v137, v11, v130
	v_mul_f32_e32 v138, v12, v130
	ds_load_b128 v[9:12], v84 offset:36880
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v27, v131, v101 :: v_dual_fmac_f32 v44, v136, v99
	v_dual_fmac_f32 v28, v132, v102 :: v_dual_fmac_f32 v29, v133, v103
	v_fmac_f32_e32 v30, v134, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v99, v127, v121, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v138, v86
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v101, v128, v123, 0x7060302
	v_perm_b32 v102, v128, v123, 0x5040100
	v_perm_b32 v103, v16, v124, 0x7060302
	v_perm_b32 v16, v16, v124, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v139, v9, v129
	v_mul_f32_e32 v140, v10, v129
	v_mul_f32_e32 v141, v11, v129
	v_dual_mul_f32 v142, v12, v129 :: v_dual_mul_f32 v143, v9, v130
	v_mul_f32_e32 v144, v10, v130
	v_mul_f32_e32 v145, v11, v130
	v_mul_f32_e32 v146, v12, v130
	ds_load_b128 v[9:12], v84 offset:37376
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v140, v106
	v_fmac_f32_e32 v34, v142, v108
	v_fmac_f32_e32 v48, v144, v88
	v_fmac_f32_e32 v50, v146, v90
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v151, v9, v130
	v_dual_mul_f32 v152, v10, v130 :: v_dual_mul_f32 v147, v9, v129
	v_mul_f32_e32 v148, v10, v129
	v_mul_f32_e32 v149, v11, v129
	v_dual_mul_f32 v150, v12, v129 :: v_dual_mul_f32 v153, v11, v130
	v_mul_f32_e32 v154, v12, v130
	ds_load_b128 v[9:12], v84 offset:37392
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v36, v148, v110
	v_dual_fmac_f32 v38, v150, v112 :: v_dual_fmac_f32 v31, v139, v105
	v_dual_fmac_f32 v43, v135, v100 :: v_dual_fmac_f32 v54, v153, v93
	v_dual_fmac_f32 v45, v137, v85 :: v_dual_fmac_f32 v52, v151, v91
	v_fmac_f32_e32 v53, v152, v92
	v_fmac_f32_e32 v55, v154, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v100, v15, v122, 0x7060302
	v_perm_b32 v15, v15, v122, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v155, v9, v129
	v_mul_f32_e32 v156, v10, v129
	v_mul_f32_e32 v157, v11, v129
	v_mul_f32_e32 v129, v12, v129
	v_mul_f32_e32 v9, v9, v130
	v_mul_f32_e32 v10, v10, v130
	v_mul_f32_e32 v11, v11, v130
	v_mul_f32_e32 v12, v12, v130
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v130, s14, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v40, v156, v114 :: v_dual_fmac_f32 v33, v141, v107
	v_fmac_f32_e32 v39, v155, v113
	v_fmac_f32_e32 v41, v157, v115
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v130, v[20:21] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v20, v125, v117, 0x7060302
	v_perm_b32 v21, v125, v117, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v42, v129, v116 :: v_dual_add_nc_u32 v117, s44, v71
	v_fmac_f32_e32 v47, v143, v87
	v_fmac_f32_e32 v49, v145, v89
	v_fmac_f32_e32 v57, v10, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v117, v20, v21 offset1:16
	v_perm_b32 v20, v13, v118, 0x7060302
	v_perm_b32 v13, v13, v118, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v58, v11, v97 :: v_dual_add_nc_u32 v21, s44, v72
	v_fmac_f32_e32 v51, v12, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v21, v20, v13 offset1:16
	v_perm_b32 v13, v126, v119, 0x7060302
	v_perm_b32 v20, v126, v119, 0x5040100
	v_add_nc_u32_e32 v21, s44, v73
	ds_store_2addr_b32 v21, v13, v20 offset1:16
	v_perm_b32 v13, v14, v120, 0x7060302
	v_perm_b32 v14, v14, v120, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v37, v149, v111 :: v_dual_add_nc_u32 v20, s44, v74
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v21, v127, v121, 0x7060302
	ds_store_2addr_b32 v20, v13, v14 offset1:16
	v_add_nc_u32_e32 v13, s44, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v35, v147, v109 :: v_dual_add_nc_u32 v14, s44, v76
	v_fmac_f32_e32 v56, v9, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v20, s44, v77
	ds_store_2addr_b32 v13, v21, v99 offset1:16
	ds_store_2addr_b32 v117, v100, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v14, v101, v102 offset1:16
	ds_store_2addr_b32 v20, v103, v16 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v95, v65 :: v_dual_mov_b32 v98, v66
	v_dual_mov_b32 v4, v69 :: v_dual_mov_b32 v7, v67
	v_mov_b32_e32 v5, v68
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	s_add_i32 s45, 0, 0x8000
	s_add_i32 s39, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v65, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v4
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_or_b32_e32 v1, v70, v1
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v78, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v18, v1, v2
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_xor_b32_e32 v19, 16, v18
	v_xor_b32_e32 v20, 32, v18
	v_xor_b32_e32 v21, 48, v18
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v93, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	v_add_nc_u32_e32 v5, s12, v21
	v_add_nc_u32_e32 v13, s12, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v94, s23 :: v_dual_add_nc_u32 v79, s45, v25
	v_mov_b32_e32 v92, s21
	v_mov_b32_e32 v90, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:8192
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[9:12], v13 offset:8192
	ds_load_b128 v[13:16], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v68, v79 offset:288
	ds_load_u8 v69, v79 offset:256
	ds_load_u8 v70, v79 offset:352
	ds_load_u8 v72, v79 offset:320
	ds_load_u8 v73, v79 offset:160
	ds_load_u8 v74, v79 offset:128
	ds_load_u8 v75, v79 offset:224
	ds_load_u8 v76, v79 offset:192
	ds_load_u8 v96, v79 offset:464
	ds_load_u8 v97, v79 offset:432
	ds_load_u8 v119, v79 offset:400
	ds_load_u8 v120, v79 offset:368
	ds_load_u8 v80, v79 offset:96
	ds_load_u8 v81, v79 offset:64
	ds_load_u8 v82, v79
	ds_load_u8 v83, v79 offset:32
	ds_load_u8 v121, v79 offset:336
	ds_load_u8 v123, v79 offset:304
	ds_load_u8 v124, v79 offset:272
	ds_load_u8 v125, v79 offset:240
	v_dual_mov_b32 v88, s17 :: v_dual_add_nc_u32 v71, s12, v19
	ds_load_u8 v85, v79 offset:800
	ds_load_u8 v86, v79 offset:768
	ds_load_u8 v103, v79 offset:864
	ds_load_u8 v104, v79 offset:832
	ds_load_u8 v105, v79 offset:672
	ds_load_u8 v106, v79 offset:640
	ds_load_u8 v115, v79 offset:736
	ds_load_u8 v116, v79 offset:704
	ds_load_u8 v134, v79 offset:976
	ds_load_u8 v135, v79 offset:944
	ds_load_u8 v136, v79 offset:912
	ds_load_u8 v137, v79 offset:880
	ds_load_u8 v63, v79 offset:416
	ds_load_u8 v64, v79 offset:384
	ds_load_u8 v65, v79 offset:480
	ds_load_u8 v66, v79 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v67, s12, v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v126, v79 offset:208
	ds_load_u8 v127, v79 offset:176
	ds_load_u8 v128, v79 offset:144
	ds_load_u8 v129, v79 offset:112
	ds_load_u8 v130, v79 offset:80
	ds_load_u8 v131, v79 offset:48
	ds_load_u8 v146, v79 offset:592
	ds_load_u8 v147, v79 offset:560
	ds_load_u8 v148, v79 offset:528
	ds_load_u8 v149, v79 offset:496
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v84, v69, v68, 0xc0c0004
	v_mov_b32_e32 v93, s22
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v72, v72, v70, 0xc0c0004
	ds_load_u8 v142, v79 offset:720
	ds_load_u8 v143, v79 offset:688
	ds_load_u8 v144, v79 offset:656
	ds_load_u8 v145, v79 offset:624
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_lshl_or_b32 v101, v72, 16, v84
	v_perm_b32 v72, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v86, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v104, v116, v115, 0xc0c0004
	v_lshl_or_b32 v100, v74, 16, v73
	v_perm_b32 v73, v82, v83, 0xc0c0004
	ds_load_u8 v80, v79 offset:928
	ds_load_u8 v81, v79 offset:896
	ds_load_u8 v82, v79 offset:992
	ds_load_u8 v83, v79 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v71 offset:8192
	ds_load_b128 v[111:114], v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v115, v79 offset:1440
	ds_load_u8 v116, v79 offset:1408
	v_perm_b32 v103, v106, v105, 0xc0c0004
	v_lshl_or_b32 v105, v86, 16, v85
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v75, s45, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v77, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v78, v66, v65, 0xc0c0004
	v_lshl_or_b32 v104, v104, 16, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v67 offset:8192
	ds_load_b128 v[67:70], v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v132, v79 offset:16
	ds_load_u8 v133, v75
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v84, s45, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v161, v79 offset:1264
	ds_load_u8 v162, v79 offset:1232
	ds_load_u8 v163, v79 offset:1200
	ds_load_u8 v164, v79 offset:1168
	v_lshl_or_b32 v102, v78, 16, v77
	v_lshl_or_b32 v99, v72, 16, v73
	v_mov_b32_e32 v91, s20
	v_mov_b32_e32 v89, s18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v79 offset:544
	ds_load_u8 v117, v79 offset:512
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v79 offset:608
	ds_load_u8 v118, v79 offset:576
	ds_load_u8 v138, v79 offset:848
	ds_load_u8 v139, v79 offset:816
	ds_load_u8 v140, v79 offset:784
	ds_load_u8 v141, v79 offset:752
	v_mov_b32_e32 v87, s16
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v79 offset:1056
	ds_load_u8 v155, v79 offset:1024
	v_lshl_or_b32 v106, v82, 16, v80
	ds_load_u8 v177, v79 offset:1904
	ds_load_u8 v178, v79 offset:1872
	ds_load_u8 v179, v79 offset:1840
	ds_load_u8 v180, v79 offset:1808
	ds_load_u8 v183, v79 offset:1776
	ds_load_u8 v184, v79 offset:1744
	ds_load_u8 v185, v79 offset:1712
	ds_load_u8 v186, v79 offset:1680
	v_perm_b32 v97, v119, v97, 0xc0c0004
	v_perm_b32 v96, v96, v149, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[67:70], v[99:102], v[87:94] neg_lo:[1,1,0]
	v_perm_b32 v119, v130, v129, 0xc0c0004
	v_perm_b32 v129, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v83, v118, v83, 0xc0c0004
	v_perm_b32 v81, v117, v81, 0xc0c0004
	ds_load_u8 v117, v79 offset:1504
	ds_load_u8 v118, v79 offset:1472
	v_lshl_or_b32 v103, v83, 16, v81
	ds_load_u8 v80, v79 offset:1312
	ds_load_u8 v81, v79 offset:1280
	ds_load_u8 v82, v79 offset:1376
	ds_load_u8 v83, v79 offset:1344
	ds_load_u8 v85, v79 offset:1184
	ds_load_u8 v86, v79 offset:1152
	ds_load_u8 v122, v79 offset:1248
	ds_load_u8 v150, v79 offset:1216
	ds_load_u8 v151, v79 offset:1520
	ds_load_u8 v152, v79 offset:1488
	ds_load_u8 v153, v79 offset:1456
	ds_load_u8 v154, v79 offset:1424
	v_wmma_i32_16x16x16_iu8 v[71:78], v[111:114], v[103:106], v[71:78] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v79 offset:1120
	ds_load_u8 v156, v79 offset:1088
	ds_load_u8 v157, v79 offset:1392
	ds_load_u8 v158, v79 offset:1360
	ds_load_u8 v159, v79 offset:1328
	ds_load_u8 v160, v79 offset:1296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v83, v150, v122, 0xc0c0004
	v_perm_b32 v85, v155, v116, 0xc0c0004
	ds_load_u8 v86, v79 offset:1952
	ds_load_u8 v122, v79 offset:1920
	ds_load_u8 v155, v79 offset:2016
	ds_load_u8 v168, v79 offset:1984
	ds_load_u8 v150, v79 offset:1136
	ds_load_u8 v165, v79 offset:1104
	ds_load_u8 v166, v79 offset:1072
	ds_load_u8 v167, v79 offset:1040
	v_lshl_or_b32 v116, v83, 16, v82
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v156, v156, v118, 0xc0c0004
	v_lshl_or_b32 v118, v117, 16, v115
	v_lshl_or_b32 v117, v81, 16, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v115, v156, 16, v85
	ds_load_u8 v80, v79 offset:1824
	ds_load_u8 v81, v79 offset:1792
	ds_load_u8 v82, v79 offset:1888
	ds_load_u8 v83, v79 offset:1856
	ds_load_u8 v85, v79 offset:1696
	ds_load_u8 v156, v79 offset:1664
	ds_load_u8 v169, v79 offset:1760
	ds_load_u8 v170, v79 offset:1728
	ds_load_u8 v171, v84
	ds_load_u8 v172, v79 offset:2000
	ds_load_u8 v173, v79 offset:1968
	ds_load_u8 v174, v79 offset:1936
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v122, v86, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v168, v155, 0xc0c0004
	ds_load_u8 v155, v79 offset:1568
	ds_load_u8 v168, v79 offset:1536
	ds_load_u8 v175, v79 offset:1632
	ds_load_u8 v176, v79 offset:1600
	v_wmma_i32_16x16x16_iu8 v[71:78], v[13:16], v[115:118], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v86, 16, v84
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v182, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v156, v156, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v79 offset:1648
	ds_load_u8 v187, v79 offset:1616
	ds_load_u8 v188, v79 offset:1584
	ds_load_u8 v189, v79 offset:1552
	v_wmma_i32_16x16x16_iu8 v[79:86], v[63:66], v[99:102], v[87:94] neg_lo:[1,1,0]
	v_perm_b32 v99, v124, v123, 0xc0c0004
	v_perm_b32 v100, v121, v120, 0xc0c0004
	v_perm_b32 v101, v128, v127, 0xc0c0004
	v_perm_b32 v102, v126, v125, 0xc0c0004
	v_perm_b32 v120, v132, v131, 0xc0c0004
	v_lshl_or_b32 v126, v96, 16, v97
	v_lshl_or_b32 v125, v100, 16, v99
	v_perm_b32 v96, v136, v135, 0xc0c0004
	v_lshl_or_b32 v124, v102, 16, v101
	v_lshl_or_b32 v123, v119, 16, v120
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v97, v134, v171, 0xc0c0004
	v_perm_b32 v119, v140, v139, 0xc0c0004
	v_perm_b32 v120, v138, v137, 0xc0c0004
	v_perm_b32 v121, v144, v143, 0xc0c0004
	v_perm_b32 v127, v142, v141, 0xc0c0004
	v_perm_b32 v128, v148, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[79:86], v[107:110], v[103:106], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[67:70], v[123:126], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v97, 16, v96
	v_lshl_or_b32 v69, v120, 16, v119
	v_lshl_or_b32 v68, v127, 16, v121
	v_lshl_or_b32 v67, v129, 16, v128
	v_perm_b32 v96, v154, v153, 0xc0c0004
	v_perm_b32 v97, v152, v151, 0xc0c0004
	v_perm_b32 v119, v160, v159, 0xc0c0004
	v_perm_b32 v120, v158, v157, 0xc0c0004
	v_perm_b32 v121, v164, v163, 0xc0c0004
	v_perm_b32 v127, v162, v161, 0xc0c0004
	v_perm_b32 v128, v167, v166, 0xc0c0004
	v_perm_b32 v129, v165, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[111:114], v[67:70], v[99:106] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v97, 16, v96
	v_lshl_or_b32 v113, v120, 16, v119
	v_lshl_or_b32 v112, v127, 16, v121
	v_lshl_or_b32 v111, v129, 16, v128
	v_wmma_i32_16x16x16_iu8 v[87:94], v[63:66], v[123:126], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v155, v168, v155, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v176, v175, 0xc0c0004
	v_perm_b32 v96, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[13:16], v[111:114], v[99:106] neg_lo:[1,1,0]
	v_perm_b32 v13, v174, v173, 0xc0c0004
	v_perm_b32 v14, v172, v133, 0xc0c0004
	v_perm_b32 v15, v180, v179, 0xc0c0004
	v_perm_b32 v63, v186, v185, 0xc0c0004
	v_perm_b32 v64, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v189, v188, 0xc0c0004
	v_perm_b32 v66, v187, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[87:94], v[107:110], v[67:70], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v121, v182, 16, v181
	v_lshl_or_b32 v120, v169, 16, v156
	v_lshl_or_b32 v119, v168, 16, v155
	v_wmma_i32_16x16x16_iu8 v[79:86], v[9:12], v[115:118], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v14, 16, v13
	v_lshl_or_b32 v15, v96, 16, v15
	v_lshl_or_b32 v14, v64, 16, v63
	v_lshl_or_b32 v13, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[87:94], v[9:12], v[111:114], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[5:8], v[119:122], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[1:4], v[119:122], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[5:8], v[13:16], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[1:4], v[13:16], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v67, v76
	v_cvt_f32_i32_e32 v68, v77
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v70, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v99
	v_cvt_f32_i32_e32 v80, v100
	v_cvt_f32_i32_e32 v81, v101
	v_cvt_f32_i32_e32 v82, v102
	v_cvt_f32_i32_e32 v83, v103
	v_cvt_f32_i32_e32 v84, v104
	v_cvt_f32_i32_e32 v85, v105
	v_cvt_f32_i32_e32 v86, v106
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v71, v71
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v61, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v60, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v59, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v97, v1, s[8:11], 0 offen
	buffer_load_u16 v99, v3, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v24, v62
	v_add_nc_u32_e32 v62, 0, v23
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v96, v1, v22
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v126, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v22, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v96, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v62 offset:36864
	ds_load_b128 v[5:8], v62 offset:36880
	ds_load_b128 v[9:12], v62 offset:37376
	ds_load_b128 v[13:16], v62 offset:37392
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v95, s39, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v21, s44, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v127, s19 :: v_dual_add_nc_u32 v108, s39, v25
	v_dual_mov_b32 v125, s17 :: v_dual_add_nc_u32 v100, s44, v20
	v_dual_mov_b32 v124, s16 :: v_dual_add_nc_u32 v105, s44, v19
	v_dual_mov_b32 v123, s15 :: v_dual_add_nc_u32 v106, s44, v18
	v_mov_b32_e32 v126, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v21 offset:8192
	ds_load_b128 v[21:24], v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v107, v108 offset:288
	ds_load_u8 v109, v108 offset:256
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v100 offset:8192
	ds_load_b128 v[136:139], v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v100, v108 offset:352
	ds_load_u8 v110, v108 offset:320
	ds_load_u8 v111, v108 offset:160
	ds_load_u8 v112, v108 offset:128
	ds_load_u8 v113, v108 offset:224
	ds_load_u8 v114, v108 offset:192
	ds_load_u8 v160, v108 offset:464
	ds_load_u8 v161, v108 offset:432
	ds_load_u8 v162, v108 offset:400
	ds_load_u8 v164, v108 offset:368
	ds_load_u8 v101, v108 offset:416
	ds_load_u8 v102, v108 offset:384
	ds_load_u8 v103, v108 offset:480
	ds_load_u8 v104, v108 offset:448
	v_dual_mov_b32 v121, s13 :: v_dual_add_nc_u32 v98, s39, v98
	ds_load_u8 v169, v108 offset:208
	ds_load_u8 v170, v108 offset:176
	ds_load_u8 v171, v108 offset:144
	ds_load_u8 v172, v108 offset:112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[140:143], v106 offset:8192
	ds_load_b128 v[144:147], v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v173, v108 offset:80
	ds_load_u8 v174, v108 offset:48
	ds_load_u8 v188, v108 offset:592
	ds_load_u8 v189, v108 offset:560
	ds_load_u8 v190, v108 offset:528
	ds_load_u8 v191, v108 offset:496
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v108
	ds_load_u8 v115, v108 offset:32
	ds_load_u8 v175, v108 offset:16
	ds_load_u8 v98, v98
	v_mov_b32_e32 v122, s14
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v100, v110, v100, 0xc0c0004
	ds_load_u8 v184, v108 offset:720
	ds_load_u8 v185, v108 offset:688
	ds_load_u8 v186, v108 offset:656
	ds_load_u8 v187, v108 offset:624
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v110, v112, v111, 0xc0c0004
	ds_load_u8 v202, v108 offset:1264
	ds_load_u8 v203, v108 offset:1232
	ds_load_u8 v204, v108 offset:1200
	ds_load_u8 v205, v108 offset:1168
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v111, v114, v113, 0xc0c0004
	v_lshl_or_b32 v130, v100, 16, v107
	ds_load_u8 v206, v108 offset:1136
	ds_load_u8 v207, v108 offset:1104
	ds_load_u8 v208, v108 offset:1072
	ds_load_u8 v209, v108 offset:1040
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_mov_b32_e32 v120, s12
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	v_lshl_or_b32 v129, v111, 16, v110
	ds_load_u8 v103, v108 offset:96
	ds_load_u8 v104, v108 offset:64
	ds_load_u8 v165, v108 offset:336
	ds_load_u8 v166, v108 offset:304
	ds_load_u8 v167, v108 offset:272
	ds_load_u8 v168, v108 offset:240
	ds_load_u8 v218, v108 offset:1904
	ds_load_u8 v219, v108 offset:1872
	ds_load_u8 v220, v108 offset:1840
	ds_load_u8 v221, v108 offset:1808
	ds_load_u8 v224, v108 offset:1776
	ds_load_u8 v225, v108 offset:1744
	ds_load_u8 v226, v108 offset:1712
	ds_load_u8 v227, v108 offset:1680
	v_lshl_or_b32 v131, v102, 16, v101
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v101, v109, v115, 0xc0c0004
	ds_load_u8 v109, v108 offset:928
	ds_load_u8 v110, v108 offset:896
	ds_load_u8 v111, v108 offset:992
	ds_load_u8 v112, v108 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[148:151], v105 offset:8192
	ds_load_b128 v[152:155], v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v113, v108 offset:800
	ds_load_u8 v114, v108 offset:768
	ds_load_u8 v115, v108 offset:864
	ds_load_u8 v132, v108 offset:832
	ds_load_u8 v133, v108 offset:672
	ds_load_u8 v134, v108 offset:640
	ds_load_u8 v135, v108 offset:736
	ds_load_u8 v156, v108 offset:704
	ds_load_u8 v176, v108 offset:976
	ds_load_u8 v177, v108 offset:944
	ds_load_u8 v178, v108 offset:912
	ds_load_u8 v179, v108 offset:880
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v100, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v114, v132, v115, 0xc0c0004
	v_lshl_or_b32 v128, v100, 16, v101
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v115, v134, v133, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v108 offset:544
	ds_load_u8 v157, v108 offset:512
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v108 offset:608
	ds_load_u8 v158, v108 offset:576
	ds_load_u8 v180, v108 offset:848
	ds_load_u8 v181, v108 offset:816
	ds_load_u8 v182, v108 offset:784
	ds_load_u8 v183, v108 offset:752
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v132, v156, v135, 0xc0c0004
	v_lshl_or_b32 v134, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[100:107], v[144:147], v[128:131], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v135, v111, 16, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v133, v132, 16, v115
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v158, v112, 0xc0c0004
	ds_load_u8 v158, v108 offset:1504
	ds_load_u8 v159, v108 offset:1472
	v_perm_b32 v110, v157, v110, 0xc0c0004
	ds_load_u8 v156, v108 offset:1440
	ds_load_u8 v157, v108 offset:1408
	v_lshl_or_b32 v132, v112, 16, v110
	ds_load_u8 v109, v108 offset:1312
	ds_load_u8 v110, v108 offset:1280
	ds_load_u8 v111, v108 offset:1376
	ds_load_u8 v112, v108 offset:1344
	ds_load_u8 v113, v108 offset:1184
	ds_load_u8 v114, v108 offset:1152
	ds_load_u8 v115, v108 offset:1248
	ds_load_u8 v163, v108 offset:1216
	ds_load_u8 v192, v108 offset:1520
	ds_load_u8 v193, v108 offset:1488
	ds_load_u8 v194, v108 offset:1456
	ds_load_u8 v195, v108 offset:1424
	v_wmma_i32_16x16x16_iu8 v[100:107], v[152:155], v[132:135], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v108 offset:1120
	ds_load_u8 v197, v108 offset:1088
	ds_load_u8 v198, v108 offset:1392
	ds_load_u8 v199, v108 offset:1360
	ds_load_u8 v200, v108 offset:1328
	ds_load_u8 v201, v108 offset:1296
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v108 offset:1056
	ds_load_u8 v196, v108 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v112, v163, v115, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v159, 0xc0c0004
	v_lshl_or_b32 v159, v158, 16, v156
	v_lshl_or_b32 v158, v110, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v196, v157, 0xc0c0004
	ds_load_u8 v114, v108 offset:1952
	ds_load_u8 v115, v108 offset:1920
	ds_load_u8 v163, v108 offset:2016
	ds_load_u8 v196, v108 offset:1984
	v_lshl_or_b32 v157, v112, 16, v111
	v_lshl_or_b32 v156, v197, 16, v113
	ds_load_u8 v109, v108 offset:1824
	ds_load_u8 v110, v108 offset:1792
	ds_load_u8 v111, v108 offset:1888
	ds_load_u8 v112, v108 offset:1856
	ds_load_u8 v113, v108 offset:1696
	ds_load_u8 v197, v108 offset:1664
	ds_load_u8 v210, v108 offset:1760
	ds_load_u8 v211, v108 offset:1728
	ds_load_u8 v95, v95
	ds_load_u8 v212, v108 offset:2000
	ds_load_u8 v213, v108 offset:1968
	ds_load_u8 v214, v108 offset:1936
	v_wmma_i32_16x16x16_iu8 v[100:107], v[136:139], v[156:159], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v222, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v223, v112, v111, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v113, 0xc0c0004
	v_perm_b32 v115, v196, v163, 0xc0c0004
	ds_load_u8 v196, v108 offset:1568
	ds_load_u8 v215, v108 offset:1536
	ds_load_u8 v216, v108 offset:1632
	ds_load_u8 v217, v108 offset:1600
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v210, v211, v210, 0xc0c0004
	ds_load_u8 v211, v108 offset:1648
	ds_load_u8 v228, v108 offset:1616
	ds_load_u8 v229, v108 offset:1584
	ds_load_u8 v230, v108 offset:1552
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v95, v176, v95, 0xc0c0004
	v_lshl_or_b32 v163, v115, 16, v114
	v_wmma_i32_16x16x16_iu8 v[108:115], v[140:143], v[128:131], v[120:127] neg_lo:[1,1,0]
	v_perm_b32 v128, v162, v161, 0xc0c0004
	v_perm_b32 v129, v160, v191, 0xc0c0004
	v_perm_b32 v130, v167, v166, 0xc0c0004
	v_perm_b32 v131, v165, v164, 0xc0c0004
	v_perm_b32 v160, v171, v170, 0xc0c0004
	v_perm_b32 v161, v169, v168, 0xc0c0004
	v_perm_b32 v162, v173, v172, 0xc0c0004
	v_perm_b32 v164, v175, v174, 0xc0c0004
	v_lshl_or_b32 v167, v129, 16, v128
	v_lshl_or_b32 v166, v131, 16, v130
	v_lshl_or_b32 v165, v161, 16, v160
	v_perm_b32 v160, v178, v177, 0xc0c0004
	v_lshl_or_b32 v164, v162, 16, v164
	v_perm_b32 v161, v182, v181, 0xc0c0004
	v_perm_b32 v162, v180, v179, 0xc0c0004
	v_perm_b32 v168, v186, v185, 0xc0c0004
	v_perm_b32 v169, v184, v183, 0xc0c0004
	v_perm_b32 v170, v190, v189, 0xc0c0004
	v_perm_b32 v171, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[148:151], v[132:135], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[144:147], v[164:167], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v95, 16, v160
	v_lshl_or_b32 v146, v162, 16, v161
	v_lshl_or_b32 v145, v169, 16, v168
	v_lshl_or_b32 v144, v171, 16, v170
	v_perm_b32 v95, v195, v194, 0xc0c0004
	v_perm_b32 v160, v193, v192, 0xc0c0004
	v_perm_b32 v161, v201, v200, 0xc0c0004
	v_perm_b32 v162, v199, v198, 0xc0c0004
	v_perm_b32 v168, v205, v204, 0xc0c0004
	v_perm_b32 v169, v203, v202, 0xc0c0004
	v_perm_b32 v170, v209, v208, 0xc0c0004
	v_perm_b32 v171, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[128:135], v[152:155], v[144:147], v[128:135] neg_lo:[1,1,0]
	v_lshl_or_b32 v155, v160, 16, v95
	v_lshl_or_b32 v154, v162, 16, v161
	v_lshl_or_b32 v153, v169, 16, v168
	v_lshl_or_b32 v152, v171, 16, v170
	v_wmma_i32_16x16x16_iu8 v[120:127], v[140:143], v[164:167], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v215, v196, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v215, v217, v216, 0xc0c0004
	v_perm_b32 v95, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[152:155], v[128:135] neg_lo:[1,1,0]
	v_perm_b32 v98, v212, v98, 0xc0c0004
	v_perm_b32 v136, v221, v220, 0xc0c0004
	v_perm_b32 v137, v219, v218, 0xc0c0004
	v_perm_b32 v140, v227, v226, 0xc0c0004
	v_perm_b32 v141, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v230, v229, 0xc0c0004
	v_perm_b32 v143, v228, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[120:127], v[148:151], v[144:147], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v223, 16, v222
	v_lshl_or_b32 v161, v210, 16, v197
	v_lshl_or_b32 v160, v215, 16, v196
	v_wmma_i32_16x16x16_iu8 v[108:115], v[116:119], v[156:159], v[108:115] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v98, 16, v95
	v_lshl_or_b32 v138, v137, 16, v136
	v_lshl_or_b32 v137, v141, 16, v140
	v_lshl_or_b32 v136, v143, 16, v142
	v_wmma_i32_16x16x16_iu8 v[120:127], v[116:119], v[152:155], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[21:24], v[160:163], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[17:20], v[160:163], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[21:24], v[136:139], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[17:20], v[136:139], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v100
	v_cvt_f32_i32_e32 v23, v101
	v_cvt_f32_i32_e32 v24, v102
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v101, v104
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v22, v113
	v_cvt_f32_i32_e32 v110, v114
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v112, v128
	v_cvt_f32_i32_e32 v113, v129
	v_cvt_f32_i32_e32 v114, v130
	v_cvt_f32_i32_e32 v115, v131
	v_cvt_f32_i32_e32 v116, v132
	v_cvt_f32_i32_e32 v117, v133
	v_cvt_f32_i32_e32 v118, v134
	v_cvt_f32_i32_e32 v119, v135
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s1, 31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v21.h, v99.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s1, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v18, v61, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v19, v60, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v20, v59, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v95, v15, v21 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v25, s35, v25
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v26, 1, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v60, 0x5410 :: v_dual_and_b32 v59, 16, v0
	v_dual_mov_b32 v61, 0x7632 :: v_dual_mul_f32 v0, v16, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v98, v14, v21
	v_mul_f32_e32 v99, v13, v21
	v_mul_f32_e32 v129, v11, v21
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s0, s38, s35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v94, v51
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v26, s0, s33, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v95, v93, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s31, 0x76543210
	s_and_b32 s37, s37, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v128, v12, v21
	v_mul_f32_e32 v130, v10, v21
	v_mul_f32_e32 v131, v9, v21
	v_mul_f32_e32 v132, v8, v21
	v_mul_f32_e32 v133, v7, v21
	v_mul_f32_e32 v134, v6, v21
	v_mul_f32_e32 v135, v5, v21
	v_mul_f32_e32 v136, v4, v21
	v_mul_f32_e32 v137, v3, v21
	v_mul_f32_e32 v138, v2, v21
	v_mul_f32_e32 v139, v1, v21
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v21.h, v97.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v97, s35, 4, v25
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v99, v91, v56
	v_fma_f32 v89, v129, v89, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v21
	v_mul_f32_e32 v7, v7, v21
	v_mul_f32_e32 v1, v1, v21
	v_mul_f32_e32 v15, v15, v21
	v_mul_f32_e32 v14, v14, v21
	v_mul_f32_e32 v13, v13, v21
	v_mul_f32_e32 v12, v12, v21
	v_mul_f32_e32 v11, v11, v21
	v_mul_f32_e32 v10, v10, v21
	v_mul_f32_e32 v9, v9, v21
	v_mul_f32_e32 v8, v8, v21
	v_mul_f32_e32 v6, v6, v21
	v_mul_f32_e32 v5, v5, v21
	v_mul_f32_e32 v4, v4, v21
	v_mul_f32_e32 v3, v3, v21
	v_mul_f32_e32 v2, v2, v21
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v21, v26, v25, 1
	v_add_lshl_u32 v25, v26, v97, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v51, v0, s3
	v_cndmask_b32_e64 v51, v58, v93, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v16, v78, v42
	v_fma_f32 v58, v7, v68, v33
	v_fma_f32 v68, v1, v71, v27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v6, v67, v32
	v_fma_f32 v66, v5, v66, v31
	v_fma_f32 v65, v4, v65, v30
	v_fma_f32 v64, v3, v64, v29
	v_fma_f32 v63, v2, v63, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v42, v0, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v96, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v62 offset:36864
	ds_load_b128 v[4:7], v62 offset:36880
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v77, v41
	v_fma_f32 v14, v14, v76, v40
	v_fma_f32 v11, v11, v73, v37
	v_fma_f32 v9, v9, v70, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v66, s3
	v_cndmask_b32_e64 v29, v29, v64, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v8, v69, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v15, s3
	v_cndmask_b32_e64 v40, v40, v14, s3
	v_cndmask_b32_e64 v37, v37, v11, s3
	v_cndmask_b32_e64 v35, v35, v9, s3
	v_cndmask_b32_e64 v16, v34, v16, s3
	v_cndmask_b32_e64 v33, v33, v58, s3
	v_cndmask_b32_e64 v27, v27, v68, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v98, v92, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v67, s3
	v_cndmask_b32_e64 v30, v30, v65, s3
	v_cndmask_b32_e64 v28, v28, v63, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v34, v0, v18
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v64, v5, v18
	v_mul_f32_e32 v66, v7, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v75, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v5, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v74, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v72, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v2, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v12, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v62 offset:37392
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v10, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v62 offset:37376
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v135, v83, v47
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v62, v3, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v139, v79, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v1, v18
	v_mul_f32_e32 v63, v4, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v130, v88, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v83, s3
	v_cndmask_b32_e64 v43, v43, v79, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v65, v6, v18 :: v_dual_mul_f32 v0, v0, v20
	v_mul_f32_e32 v1, v1, v20
	v_mul_f32_e32 v3, v3, v20
	v_mul_f32_e32 v4, v4, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v34, v17, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v92, s3
	v_cndmask_b32_e64 v53, v53, v88, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v112, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v71, v12, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v138, v80, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v69, v10, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v132, v86, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v13, v18
	v_mul_f32_e32 v73, v14, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v136, v82, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v80, s3
	v_cndmask_b32_e64 v50, v50, v86, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v8, v18
	v_mul_f32_e32 v68, v9, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v82, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v11, v18
	v_mul_f32_e32 v18, v15, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v72, v22, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v20
	v_mul_f32_e32 v13, v13, v20
	v_mul_f32_e32 v14, v14, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v111, v19
	v_fma_f32 v1, v1, v113, v44
	v_fma_f32 v3, v3, v115, v46
	v_fma_f32 v4, v4, v116, v47
	v_fma_f32 v7, v7, v119, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v27, v17, s2
	v_cndmask_b32_e64 v22, v40, v22, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v121, v53
	v_fma_f32 v13, v13, v125, v57
	v_fma_f32 v14, v14, v126, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	v_cndmask_b32_e64 v0, v43, v0, s2
	v_cndmask_b32_e64 v1, v44, v1, s2
	v_cndmask_b32_e64 v3, v46, v3, s2
	v_cndmask_b32_e64 v4, v47, v4, s2
	v_cndmask_b32_e64 v7, v50, v7, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v19, v17, 16, 1
	v_bfe_u32 v47, v22, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v133, v85, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v53, v9, s2
	v_cndmask_b32_e64 v13, v57, v13, s2
	v_cndmask_b32_e64 v14, v51, v14, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cmp_o_f32_e64 s12, v22, v22
	v_bfe_u32 v50, v0, 16, 1
	v_bfe_u32 v51, v1, 16, 1
	v_bfe_u32 v53, v3, 16, 1
	v_bfe_u32 v57, v7, 16, 1
	v_add3_u32 v17, v17, v19, 0x7fff
	v_add3_u32 v22, v22, v47, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v85, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s15, v0, v0
	v_cmp_o_f32_e64 s16, v1, v1
	v_cmp_o_f32_e64 s18, v3, v3
	v_cmp_o_f32_e64 s22, v7, v7
	v_add3_u32 v0, v0, v50, 0x7fff
	v_add3_u32 v1, v1, v51, 0x7fff
	v_add3_u32 v3, v3, v53, 0x7fff
	v_add3_u32 v7, v7, v57, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s12
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v91, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s15
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s16
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v118, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v128, v90, v55
	v_fma_f32 v87, v131, v87, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v49, v6, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v49, v18, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v124, v56
	v_fma_f32 v84, v134, v84, v48
	v_fma_f32 v81, v137, v81, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s14, v18, v18
	v_cmp_o_f32_e64 s21, v6, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v56, v6, 16, 1
	v_add3_u32 v18, v18, v49, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v90, s3
	v_cndmask_b32_e64 v54, v54, v89, s3
	v_cndmask_b32_e64 v52, v52, v87, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v6, v56, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v84, s3
	v_cndmask_b32_e64 v45, v45, v81, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v20
	v_mul_f32_e32 v11, v11, v20
	v_mul_f32_e32 v15, v15, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v63, v101, v31
	v_fma_f32 v63, v67, v105, v35
	v_fma_f32 v67, v71, v109, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v10, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v42, v23, v28
	v_fma_f32 v23, v58, v24, v29
	v_fma_f32 v24, v62, v100, v30
	v_fma_f32 v42, v64, v102, v32
	v_fma_f32 v58, v65, v103, v33
	v_fma_f32 v62, v66, v104, v16
	v_fma_f32 v64, v68, v106, v36
	v_fma_f32 v65, v69, v107, v37
	v_fma_f32 v66, v70, v108, v38
	v_fma_f32 v68, v73, v110, v41
	v_fma_f32 v2, v2, v114, v45
	v_fma_f32 v5, v5, v117, v48
	v_fma_f32 v8, v8, v120, v52
	v_fma_f32 v10, v10, v122, v54
	v_fma_f32 v11, v11, v123, v55
	v_fma_f32 v15, v15, v127, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v28, v20, s2
	v_cndmask_b32_e64 v23, v29, v23, s2
	v_cndmask_b32_e64 v24, v30, v24, s2
	v_cndmask_b32_e64 v27, v31, v34, s2
	v_cndmask_b32_e64 v28, v32, v42, s2
	v_cndmask_b32_e64 v29, v33, v58, s2
	v_cndmask_b32_e64 v30, v35, v63, s2
	v_cndmask_b32_e64 v31, v36, v64, s2
	v_cndmask_b32_e64 v32, v37, v65, s2
	v_cndmask_b32_e64 v33, v38, v66, s2
	v_cndmask_b32_e64 v34, v39, v67, s2
	v_cndmask_b32_e64 v35, v41, v68, s2
	v_cndmask_b32_e64 v16, v16, v62, s2
	v_cndmask_b32_e64 v2, v45, v2, s2
	v_cndmask_b32_e64 v5, v48, v5, s2
	v_cndmask_b32_e64 v8, v52, v8, s2
	v_cndmask_b32_e64 v10, v54, v10, s2
	v_cndmask_b32_e64 v11, v55, v11, s2
	v_cndmask_b32_e64 v15, v26, v15, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v26, v20, 16, 1
	v_bfe_u32 v36, v23, 16, 1
	v_bfe_u32 v37, v24, 16, 1
	v_bfe_u32 v38, v27, 16, 1
	v_bfe_u32 v39, v28, 16, 1
	v_bfe_u32 v40, v29, 16, 1
	v_bfe_u32 v42, v30, 16, 1
	v_bfe_u32 v43, v31, 16, 1
	v_bfe_u32 v44, v32, 16, 1
	v_bfe_u32 v45, v33, 16, 1
	v_bfe_u32 v46, v34, 16, 1
	v_bfe_u32 v48, v35, 16, 1
	v_cmp_o_f32_e64 s0, v20, v20
	v_cmp_o_f32_e64 s1, v23, v23
	v_cmp_o_f32_e64 s2, v24, v24
	v_cmp_o_f32_e64 s3, v27, v27
	v_cmp_o_f32_e64 s4, v28, v28
	v_cmp_o_f32_e64 s5, v29, v29
	v_bfe_u32 v41, v16, 16, 1
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s13, v35, v35
	v_bfe_u32 v52, v2, 16, 1
	v_bfe_u32 v54, v4, 16, 1
	v_bfe_u32 v55, v5, 16, 1
	v_bfe_u32 v58, v8, 16, 1
	v_bfe_u32 v62, v9, 16, 1
	v_bfe_u32 v63, v10, 16, 1
	v_bfe_u32 v64, v11, 16, 1
	v_bfe_u32 v65, v12, 16, 1
	v_bfe_u32 v66, v13, 16, 1
	v_bfe_u32 v67, v14, 16, 1
	v_bfe_u32 v68, v15, 16, 1
	v_add3_u32 v19, v20, v26, 0x7fff
	v_add3_u32 v20, v23, v36, 0x7fff
	v_add3_u32 v23, v24, v37, 0x7fff
	v_add3_u32 v24, v27, v38, 0x7fff
	v_add3_u32 v26, v28, v39, 0x7fff
	v_add3_u32 v27, v29, v40, 0x7fff
	v_add3_u32 v28, v30, v42, 0x7fff
	v_add3_u32 v29, v31, v43, 0x7fff
	v_add3_u32 v30, v32, v44, 0x7fff
	v_add3_u32 v31, v33, v45, 0x7fff
	v_add3_u32 v32, v34, v46, 0x7fff
	v_add3_u32 v33, v35, v48, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cmp_o_f32_e64 s17, v2, v2
	v_cmp_o_f32_e64 s19, v4, v4
	v_cmp_o_f32_e64 s20, v5, v5
	v_cmp_o_f32_e64 s23, v8, v8
	v_cmp_o_f32_e64 s24, v9, v9
	v_cmp_o_f32_e64 s25, v10, v10
	v_cmp_o_f32_e64 s26, v11, v11
	v_cmp_o_f32_e64 s27, v12, v12
	v_cmp_o_f32_e64 s28, v13, v13
	v_cmp_o_f32_e64 s29, v14, v14
	v_cmp_o_f32_e64 s30, v15, v15
	v_add3_u32 v16, v16, v41, 0x7fff
	v_add3_u32 v2, v2, v52, 0x7fff
	v_add3_u32 v4, v4, v54, 0x7fff
	v_add3_u32 v5, v5, v55, 0x7fff
	v_add3_u32 v8, v8, v58, 0x7fff
	v_add3_u32 v9, v9, v62, 0x7fff
	v_add3_u32 v10, v10, v63, 0x7fff
	v_add3_u32 v11, v11, v64, 0x7fff
	v_add3_u32 v12, v12, v65, 0x7fff
	v_add3_u32 v13, v13, v66, 0x7fff
	v_add3_u32 v14, v14, v67, 0x7fff
	v_add3_u32 v15, v15, v68, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v23.h, s2
	v_cndmask_b16 v20.l, 0x7fff, v24.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v26.h, s4
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s7
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s8
	v_cndmask_b16 v24.l, 0x7fff, v30.h, s9
	v_cndmask_b16 v24.h, 0x7fff, v31.h, s10
	v_cndmask_b16 v22.l, 0x7fff, v32.h, s11
	v_cndmask_b16 v18.l, 0x7fff, v33.h, s13
	v_cndmask_b16 v16.l, 0x7fff, v27.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s17
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s19
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s20
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s23
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s24
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s25
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s26
	v_cndmask_b16 v6.l, 0x7fff, v12.h, s27
	v_cndmask_b16 v6.h, 0x7fff, v13.h, s28
	v_cndmask_b16 v7.l, 0x7fff, v14.h, s29
	v_cndmask_b16 v7.h, 0x7fff, v15.h, s30
	v_dual_cndmask_b32 v8, v20, v17 :: v_dual_cndmask_b32 v9, v17, v20
	v_dual_cndmask_b32 v12, v22, v23 :: v_dual_cndmask_b32 v17, 0x1054, v60
	v_dual_cndmask_b32 v14, v18, v24 :: v_dual_cndmask_b32 v15, v24, v18
	v_cndmask_b32_e32 v18, 0x3276, v61, vcc_lo
	v_dual_cndmask_b32 v10, v16, v19 :: v_dual_cndmask_b32 v11, v19, v16
	v_cndmask_b32_e32 v16, v2, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v2 :: v_dual_cndmask_b32 v19, v3, v1
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_lshl_or_b32 v2, v17, 8, v17
	v_cndmask_b32_e32 v17, v6, v4, vcc_lo
	v_lshl_or_b32 v3, v18, 8, v18
	v_cndmask_b32_e32 v13, v23, v22, vcc_lo
	v_cndmask_b32_e32 v4, v4, v6, vcc_lo
	v_and_b32_e32 v2, 0x540054, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v18, v7, v5 :: v_dual_and_b32 v3, 0x760076, v3
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_permlanex16_b32 v6, v9, s31, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v7, v11, s31, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_permlanex16_b32 v11, v15, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v13, s31, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v2
	v_permlanex16_b32 v13, v0, s31, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 0x7060706, v3
	v_permlanex16_b32 v22, v1, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v4, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v5, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v15
	v_perm_b32 v1, v6, v8, v20
	v_perm_b32 v2, v7, v10, v15
	v_perm_b32 v3, v7, v10, v20
	v_perm_b32 v4, v9, v12, v15
	v_perm_b32 v5, v9, v12, v20
	v_perm_b32 v6, v11, v14, v15
	v_perm_b32 v7, v11, v14, v20
	v_perm_b32 v8, v13, v16, v15
	v_perm_b32 v9, v13, v16, v20
	v_perm_b32 v10, v22, v19, v15
	v_perm_b32 v11, v22, v19, v20
	v_perm_b32 v12, v23, v17, v15
	v_perm_b32 v13, v23, v17, v20
	v_perm_b32 v14, v24, v18, v15
	v_perm_b32 v15, v24, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v21, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v21, s[36:39], 0 offen offset:256
	buffer_store_b128 v[8:11], v25, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v25, s[36:39], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 231
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15608
; TotalNumSgprs: 48
; NumVgprs: 231
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     231
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
