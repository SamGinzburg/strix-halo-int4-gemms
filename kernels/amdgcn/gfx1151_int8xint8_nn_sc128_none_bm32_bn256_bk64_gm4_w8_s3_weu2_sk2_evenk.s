	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v18, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v2, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v20, 1, v0
	v_and_b32_e32 v59, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v5, 2, v18
	v_and_b32_e32 v60, 32, v0
	v_lshlrev_b32_e32 v4, 3, v2
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
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v6, s35, v5
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s12, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
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
	v_and_b32_e32 v1, 15, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v13, v1, 4, v6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v14, s35, 1, v13
	v_add_nc_u32_e32 v15, s33, v13
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_mul_i32 s19, s19, s18
	s_mov_b64 s[28:29], s[10:11]
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s13, s13, s18
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s14, s13, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s13, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 0x7f
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s26, s12
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s2, 25
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v16, v3, v4, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s31, s12
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s30, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v13
	v_add_nc_u32_e32 v6, s12, v14
	v_add_nc_u32_e32 v7, s12, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 7
	v_add_nc_u32_e32 v19, s35, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v7, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s27, s30, 0x80
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[11:12], v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[7:10], v6, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v17, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s12, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v19, s3
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s27, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v19, s12, v15
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v3, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v4, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v17, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v6, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v19, s2
	s_clause 0x1
	buffer_load_b128 v[33:36], v4, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v6, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v19, 14, v0
	s_mov_b32 s12, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x17f
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s35, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[41:44], v4, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v6, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b64 v[49:50], v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v6, 48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v4, 0x420, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v63, v3, v6
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 16, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v64, v19, 10, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v5, 0, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v65, 0x90, v64
	v_xor_b32_e32 v66, 0x120, v64
	v_xor_b32_e32 v67, 0x1b0, v64
	v_xor_b32_e32 v68, 0x210, v64
	v_add_nc_u32_e32 v17, 0, v64
	v_xor_b32_e32 v69, 0x330, v64
	v_xor_b32_e32 v70, 0x3a0, v64
	v_add_nc_u32_e32 v51, 0, v65
	v_add_nc_u32_e32 v52, 0, v66
	v_add_nc_u32_e32 v53, 0, v67
	v_add_nc_u32_e32 v54, 0, v68
	v_add_nc_u32_e32 v55, 0, v69
	v_add_nc_u32_e32 v56, 0, v70
	v_add_nc_u32_e32 v57, 0x4000, v17
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v61, 0x4000, v52
	v_add_nc_u32_e32 v62, 0x4000, v53
	v_add_nc_u32_e32 v71, 0x4000, v54
	v_add_nc_u32_e32 v72, 0x4000, v55
	v_add_nc_u32_e32 v73, 0x4000, v56
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v5, v[11:12] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v11, v21, v7, 0x4000501
	v_perm_b32 v7, v21, v7, 0x6020703
	v_perm_b32 v12, v22, v8, 0x4000501
	v_perm_b32 v8, v22, v8, 0x6020703
	v_perm_b32 v21, v23, v9, 0x4000501
	v_perm_b32 v9, v23, v9, 0x6020703
	v_perm_b32 v22, v24, v10, 0x4000501
	v_perm_b32 v10, v24, v10, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v23, v29, v25, 0x4000501
	v_perm_b32 v24, v29, v25, 0x6020703
	v_perm_b32 v25, v30, v26, 0x4000501
	v_perm_b32 v26, v30, v26, 0x6020703
	v_perm_b32 v29, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v30, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v31, v37, v33, 0x4000501
	v_perm_b32 v32, v37, v33, 0x6020703
	v_perm_b32 v37, v39, v35, 0x4000501
	v_perm_b32 v35, v39, v35, 0x6020703
	v_perm_b32 v39, v11, v23, 0x7060302
	v_perm_b32 v11, v11, v23, 0x5040100
	v_perm_b32 v23, v7, v24, 0x7060302
	v_perm_b32 v7, v7, v24, 0x5040100
	v_perm_b32 v24, v12, v25, 0x7060302
	v_perm_b32 v12, v12, v25, 0x5040100
	v_perm_b32 v25, v8, v26, 0x7060302
	v_perm_b32 v8, v8, v26, 0x5040100
	v_perm_b32 v26, v21, v29, 0x7060302
	v_perm_b32 v21, v21, v29, 0x5040100
	v_perm_b32 v29, v9, v27, 0x7060302
	v_perm_b32 v9, v9, v27, 0x5040100
	v_perm_b32 v27, v22, v30, 0x7060302
	v_perm_b32 v22, v22, v30, 0x5040100
	v_perm_b32 v30, v10, v28, 0x7060302
	v_perm_b32 v10, v10, v28, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v28, v45, v41, 0x4000501
	v_perm_b32 v33, v38, v34, 0x4000501
	v_perm_b32 v34, v38, v34, 0x6020703
	v_perm_b32 v38, v40, v36, 0x4000501
	v_perm_b32 v36, v40, v36, 0x6020703
	v_perm_b32 v40, v45, v41, 0x6020703
	v_perm_b32 v41, v46, v42, 0x4000501
	v_perm_b32 v42, v46, v42, 0x6020703
	v_perm_b32 v45, v47, v43, 0x4000501
	v_perm_b32 v43, v47, v43, 0x6020703
	v_perm_b32 v46, v48, v44, 0x4000501
	v_perm_b32 v44, v48, v44, 0x6020703
	ds_store_2addr_b32 v17, v39, v11 offset1:16
	ds_store_2addr_b32 v51, v23, v7 offset1:16
	ds_store_2addr_b32 v52, v24, v12 offset1:16
	ds_store_2addr_b32 v53, v25, v8 offset1:16
	ds_store_2addr_b32 v54, v26, v21 offset1:16
	ds_store_2addr_b32 v17, v29, v9 offset0:160 offset1:176
	ds_store_2addr_b32 v55, v27, v22 offset1:16
	ds_store_2addr_b32 v56, v30, v10 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[49:50] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v5, v31, v28, 0x7060302
	v_perm_b32 v7, v31, v28, 0x5040100
	v_perm_b32 v8, v32, v40, 0x7060302
	v_perm_b32 v9, v32, v40, 0x5040100
	v_perm_b32 v10, v33, v41, 0x7060302
	v_perm_b32 v11, v33, v41, 0x5040100
	v_perm_b32 v12, v34, v42, 0x7060302
	v_perm_b32 v17, v34, v42, 0x5040100
	v_perm_b32 v21, v37, v45, 0x7060302
	v_perm_b32 v22, v37, v45, 0x5040100
	v_perm_b32 v23, v35, v43, 0x7060302
	v_perm_b32 v24, v35, v43, 0x5040100
	v_perm_b32 v25, v38, v46, 0x7060302
	v_perm_b32 v26, v38, v46, 0x5040100
	v_perm_b32 v27, v36, v44, 0x7060302
	v_perm_b32 v28, v36, v44, 0x5040100
	ds_store_2addr_b32 v57, v5, v7 offset1:16
	ds_store_2addr_b32 v58, v8, v9 offset1:16
	ds_store_2addr_b32 v61, v10, v11 offset1:16
	ds_store_2addr_b32 v62, v12, v17 offset1:16
	ds_store_2addr_b32 v71, v21, v22 offset1:16
	ds_store_2addr_b32 v57, v23, v24 offset0:160 offset1:176
	ds_store_2addr_b32 v72, v25, v26 offset1:16
	ds_store_2addr_b32 v73, v27, v28 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v61, 48, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0x1800, v4
	v_and_b32_e32 v7, 8, v0
	v_and_b32_e32 v5, 32, v0
	s_mov_b32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v55, v1, 6, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v62, v2, 6, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v56, 16, v55
	v_xor_b32_e32 v58, 32, v55
	v_xor_b32_e32 v57, 48, v55
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr62
.LBB0_3:                                ; %Flow58
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v8, s26, v1
	v_or_b32_e32 v6, s26, v6
	s_ashr_i32 s1, s13, 7
	v_cmp_eq_u32_e64 s0, 0, v20
	v_or_b32_e32 v17, s31, v0
	v_mul_lo_u32 v54, v8, s1
	v_mul_lo_u32 v53, v6, s1
	v_lshlrev_b32_e32 v11, 2, v18
	v_lshlrev_b32_e32 v9, 1, v19
	v_lshlrev_b32_e32 v12, 5, v20
	v_lshlrev_b32_e32 v10, 1, v18
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v61, 48, v3
	v_and_b32_e32 v3, 0x1800, v4
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v4, 0x210, v5
	v_bfe_i32 v5, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v55, v1, 6, v61
	v_lshl_or_b32 v62, v2, 6, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v2, v4, v61
	v_add3_u32 v22, 0, v11, v12
	v_and_b32_e32 v3, 0x420, v5
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v71, s35, v13
	v_xor_b32_e32 v56, 16, v55
	v_or_b32_e32 v2, v2, v62
	v_xor_b32_e32 v58, 32, v55
	v_xor_b32_e32 v57, 48, v55
	v_add_nc_u32_e32 v76, v22, v9
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v77, 0, v10
	v_xor_b32_e32 v72, v2, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v73, 16, v72
	v_xor_b32_e32 v74, 32, v72
	v_xor_b32_e32 v75, 48, v72
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v26, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v45, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s46, s1, 3
	s_add_i32 s11, s27, 0x80
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s45, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s34, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s46, s46, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s14, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 7
	s_mov_b32 s30, s27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v78, s27, v16
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s27, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s31
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[182:183], v78, s[4:7], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v78, v54, s14, 1
	v_add_lshl_u32 v83, v53, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v79, s16, v13
	v_add_nc_u32_e32 v80, s16, v71
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v84, v17, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v81, s16, v14
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[110:113], v79, s[20:23], 0 offen
	buffer_load_b128 v[114:117], v80, s[20:23], 0 offen
	buffer_load_b128 v[118:121], v81, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v79, 0x80000000, v83 :: v_dual_cndmask_b32 v80, 0x80000000, v84
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v82, s16, v15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v184, v78, s[36:39], 0 offen
	buffer_load_u16 v185, v79, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v186, v80, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[122:125], v82, s[20:23], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v78, s14, v55
	v_add_nc_u32_e32 v79, s14, v56
	v_add_nc_u32_e32 v80, s14, v58
	v_add_nc_u32_e32 v81, s14, v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v82, s15, v72
	v_add_nc_u32_e32 v83, s15, v73
	v_add_nc_u32_e32 v84, s15, v74
	v_add_nc_u32_e32 v85, s15, v75
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[94:97], v78
	ds_load_b128 v[126:129], v78 offset:1024
	ds_load_b128 v[130:133], v79
	ds_load_b128 v[134:137], v79 offset:1024
	ds_load_b128 v[138:141], v80
	ds_load_b128 v[142:145], v80 offset:1024
	ds_load_b128 v[146:149], v81
	ds_load_b128 v[150:153], v81 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[102:105], v82
	ds_load_b128 v[154:157], v82 offset:8192
	ds_load_b128 v[158:161], v83
	ds_load_b128 v[162:165], v83 offset:8192
	ds_load_b128 v[166:169], v84
	ds_load_b128 v[170:173], v84 offset:8192
	ds_load_b128 v[174:177], v85
	ds_load_b128 v[178:181], v85 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s45, 1
	s_mov_b32 s12, s44
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s10, s34
	s_cselect_b32 s45, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s15, s45, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s45, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s15, s15, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s34, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[102:105], v[94:97], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[154:157], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[102:105], v[126:129], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[158:161], v[130:133], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[162:165], v[130:133], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[154:157], v[126:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[158:161], v[134:137], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[166:169], v[138:141], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[170:173], v[138:141], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[134:137], v[102:109] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	v_wmma_i32_16x16x16_iu8 v[94:101], v[166:169], v[142:145], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[174:177], v[146:149], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[178:181], v[146:149], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[170:173], v[142:145], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[174:177], v[150:153], v[94:101] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v126, v78
	v_cvt_f32_i32_e32 v127, v79
	v_cvt_f32_i32_e32 v128, v80
	v_cvt_f32_i32_e32 v129, v81
	v_cvt_f32_i32_e32 v130, v82
	v_cvt_f32_i32_e32 v131, v83
	v_cvt_f32_i32_e32 v132, v84
	v_cvt_f32_i32_e32 v133, v85
	v_cvt_f32_i32_e32 v134, v86
	v_cvt_f32_i32_e32 v135, v87
	v_cvt_f32_i32_e32 v136, v88
	v_cvt_f32_i32_e32 v137, v89
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v139, v91
	v_cvt_f32_i32_e32 v140, v92
	v_cvt_f32_i32_e32 v141, v93
	v_wmma_i32_16x16x16_iu8 v[102:109], v[178:181], v[150:153], v[102:109] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v78, v114, v110, 0x4000501
	v_perm_b32 v80, v114, v110, 0x6020703
	v_perm_b32 v82, v115, v111, 0x4000501
	v_perm_b32 v84, v115, v111, 0x6020703
	v_perm_b32 v86, v116, v112, 0x4000501
	v_perm_b32 v88, v116, v112, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v79, v122, v118, 0x4000501
	v_perm_b32 v81, v122, v118, 0x6020703
	v_perm_b32 v83, v123, v119, 0x4000501
	v_perm_b32 v85, v123, v119, 0x6020703
	v_perm_b32 v87, v124, v120, 0x4000501
	v_perm_b32 v89, v124, v120, 0x6020703
	v_perm_b32 v90, v117, v113, 0x4000501
	v_perm_b32 v91, v125, v121, 0x4000501
	v_perm_b32 v92, v117, v113, 0x6020703
	v_perm_b32 v93, v125, v121, 0x6020703
	v_perm_b32 v110, v79, v78, 0x7060302
	v_perm_b32 v111, v79, v78, 0x5040100
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v143, 16, v185
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v78, 16, v186
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v112, v81, v80, 0x7060302
	v_perm_b32 v113, v81, v80, 0x5040100
	v_perm_b32 v114, v83, v82, 0x7060302
	v_perm_b32 v115, v83, v82, 0x5040100
	v_perm_b32 v116, v85, v84, 0x7060302
	v_perm_b32 v117, v85, v84, 0x5040100
	v_perm_b32 v118, v87, v86, 0x7060302
	v_perm_b32 v119, v87, v86, 0x5040100
	v_perm_b32 v120, v89, v88, 0x7060302
	v_perm_b32 v121, v89, v88, 0x5040100
	v_perm_b32 v122, v91, v90, 0x7060302
	v_perm_b32 v123, v91, v90, 0x5040100
	v_perm_b32 v124, v93, v92, 0x7060302
	v_perm_b32 v125, v93, v92, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v76, v78 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v77 offset:36864
	ds_load_b128 v[82:85], v77 offset:36880
	ds_load_b128 v[86:89], v77 offset:37376
	ds_load_b128 v[90:93], v77 offset:37392
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v142, 16, v184
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v190, s44, v66
	v_add_nc_u32_e32 v194, s44, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v145, v87, v142
	v_mul_f32_e32 v87, v87, v143
	v_dual_mul_f32 v146, v88, v142 :: v_dual_add_nc_u32 v187, s15, v63
	v_dual_mul_f32 v147, v89, v142 :: v_dual_add_nc_u32 v188, s44, v64
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v148, v90, v142 :: v_dual_add_nc_u32 v189, s44, v65
	v_dual_mul_f32 v150, v92, v142 :: v_dual_add_nc_u32 v191, s44, v67
	v_dual_mul_f32 v149, v91, v142 :: v_dual_add_nc_u32 v192, s44, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v193, s44, v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v187, v[182:183] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v188, v110, v111 offset1:16
	ds_store_2addr_b32 v189, v112, v113 offset1:16
	ds_store_2addr_b32 v190, v114, v115 offset1:16
	ds_store_2addr_b32 v191, v116, v117 offset1:16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v110, v78, v142
	v_mul_f32_e32 v111, v79, v142
	v_mul_f32_e32 v112, v80, v142
	v_mul_f32_e32 v113, v81, v142
	v_mul_f32_e32 v114, v82, v142
	v_mul_f32_e32 v115, v83, v142
	v_mul_f32_e32 v116, v84, v142
	v_mul_f32_e32 v117, v85, v142
	v_mul_f32_e32 v144, v86, v142
	v_mul_f32_e32 v142, v93, v142
	v_mul_f32_e32 v78, v78, v143
	v_mul_f32_e32 v79, v79, v143
	v_dual_mul_f32 v80, v80, v143 :: v_dual_fmac_f32 v21, v110, v126
	v_mul_f32_e32 v81, v81, v143
	v_dual_mul_f32 v82, v82, v143 :: v_dual_fmac_f32 v23, v112, v128
	v_mul_f32_e32 v83, v83, v143
	v_dual_mul_f32 v84, v84, v143 :: v_dual_fmac_f32 v25, v114, v130
	v_mul_f32_e32 v85, v85, v143
	v_dual_mul_f32 v86, v86, v143 :: v_dual_fmac_f32 v27, v116, v132
	v_dual_mul_f32 v88, v88, v143 :: v_dual_fmac_f32 v31, v146, v136
	v_mul_f32_e32 v89, v89, v143
	v_dual_mul_f32 v90, v90, v143 :: v_dual_fmac_f32 v29, v144, v134
	v_dual_mul_f32 v91, v91, v143 :: v_dual_fmac_f32 v24, v113, v129
	v_dual_mul_f32 v92, v92, v143 :: v_dual_fmac_f32 v35, v150, v140
	v_dual_mul_f32 v93, v93, v143 :: v_dual_fmac_f32 v32, v147, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v22, v111, v127 :: v_dual_fmac_f32 v33, v148, v138
	v_dual_fmac_f32 v26, v115, v131 :: v_dual_fmac_f32 v37, v78, v94
	v_dual_fmac_f32 v28, v117, v133 :: v_dual_fmac_f32 v39, v80, v96
	v_dual_fmac_f32 v30, v145, v135 :: v_dual_fmac_f32 v41, v82, v98
	v_dual_fmac_f32 v34, v149, v139 :: v_dual_fmac_f32 v43, v84, v100
	v_dual_fmac_f32 v36, v142, v141 :: v_dual_fmac_f32 v47, v87, v103
	v_dual_fmac_f32 v38, v79, v95 :: v_dual_fmac_f32 v49, v89, v105
	v_dual_fmac_f32 v40, v81, v97 :: v_dual_fmac_f32 v51, v91, v107
	v_dual_fmac_f32 v42, v83, v99 :: v_dual_fmac_f32 v45, v93, v109
	v_fmac_f32_e32 v44, v85, v101
	v_fmac_f32_e32 v46, v86, v102
	v_fmac_f32_e32 v48, v88, v104
	v_fmac_f32_e32 v50, v90, v106
	v_fmac_f32_e32 v52, v92, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v192, v118, v119 offset1:16
	ds_store_2addr_b32 v188, v120, v121 offset0:160 offset1:176
	ds_store_2addr_b32 v193, v122, v123 offset1:16
	ds_store_2addr_b32 v194, v124, v125 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v7, v59
	v_mov_b32_e32 v5, v60
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s34, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v60, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v61
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v63, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_or_b32_e32 v1, v1, v62
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v76, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v127, v1, v2
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_xor_b32_e32 v128, 16, v127
	v_xor_b32_e32 v130, 32, v127
	v_xor_b32_e32 v129, 48, v127
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
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
	v_add_nc_u32_e32 v1, s12, v130
	v_add_nc_u32_e32 v2, s12, v127
	ds_load_b128 v[13:16], v1 offset:8192
	ds_load_b128 v[60:63], v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s10, v55
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s12, v128
	ds_load_b128 v[64:67], v2 offset:8192
	ds_load_b128 v[92:95], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s10, v58
	v_add_nc_u32_e32 v4, s10, v56
	ds_load_b128 v[96:99], v1 offset:1024
	ds_load_b128 v[84:87], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[100:103], v3 offset:8192
	ds_load_b128 v[104:107], v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[108:111], v2 offset:1024
	ds_load_b128 v[112:115], v2
	ds_load_b128 v[116:119], v4 offset:1024
	ds_load_b128 v[120:123], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s16 :: v_dual_add_nc_u32 v68, s12, v129
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v69, s10, v57
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v4, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[131:134], v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v7, s22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[135:138], v68
	ds_load_b128 v[139:142], v68 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[143:146], v69 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[84:87], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[64:67], v[84:87], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[92:95], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[64:67], v[96:99], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[104:107], v[120:123], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[120:123], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[104:107], v[116:119], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[100:103], v[116:119], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[60:63], v[112:115], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[13:16], v[112:115], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[60:63], v[108:111], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[108:111], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[135:138], v[131:134], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[139:142], v[131:134], v[76:83] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[135:138], v[143:146], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[139:142], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v69
	v_cvt_f32_i32_e32 v61, v70
	v_cvt_f32_i32_e32 v62, v71
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v67, v76
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v87
	v_cvt_f32_i32_e32 v80, v88
	v_cvt_f32_i32_e32 v81, v89
	v_cvt_f32_i32_e32 v82, v90
	v_cvt_f32_i32_e32 v83, v91
	v_cvt_f32_i32_e32 v84, v1
	v_cvt_f32_i32_e32 v85, v2
	v_cvt_f32_i32_e32 v86, v3
	v_cvt_f32_i32_e32 v87, v4
	v_cvt_f32_i32_e32 v88, v5
	v_cvt_f32_i32_e32 v89, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v91, v8
	v_cvt_f32_i32_e32 v68, v68
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v54, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v17, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v53, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v92, 0, v10
	s_clause 0x1
	buffer_load_u16 v125, v1, s[8:11], 0 offen
	buffer_load_u16 v126, v3, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v11, v12
	v_mov_b32_e32 v106, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v93, v1, v9
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v105, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v123, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v93, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v92 offset:36864
	ds_load_b128 v[5:8], v92 offset:36880
	ds_load_b128 v[9:12], v92 offset:37376
	ds_load_b128 v[13:16], v92 offset:37392
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v124, s19 :: v_dual_add_nc_u32 v59, s44, v130
	v_dual_mov_b32 v121, s16 :: v_dual_add_nc_u32 v96, s44, v127
	v_dual_mov_b32 v120, s15 :: v_dual_add_nc_u32 v55, s34, v55
	v_dual_mov_b32 v123, s18 :: v_dual_add_nc_u32 v94, s44, v128
	v_dual_mov_b32 v122, s17 :: v_dual_add_nc_u32 v95, s44, v129
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	ds_load_b128 v[110:113], v59 offset:8192
	ds_load_b128 v[135:138], v59
	ds_load_b128 v[139:142], v94 offset:8192
	ds_load_b128 v[143:146], v94
	ds_load_b128 v[147:150], v96 offset:8192
	ds_load_b128 v[151:154], v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v119, s14 :: v_dual_add_nc_u32 v94, s34, v56
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[155:158], v55 offset:1024
	ds_load_b128 v[127:130], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v118, s13 :: v_dual_add_nc_u32 v59, s34, v58
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v94 offset:1024
	ds_load_b128 v[167:170], v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v117, s12 :: v_dual_add_nc_u32 v96, s34, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[55:58], v59 offset:1024
	ds_load_b128 v[159:162], v59
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[175:178], v95
	ds_load_b128 v[179:182], v95 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[183:186], v96 offset:1024
	ds_load_b128 v[171:174], v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[151:154], v[127:130], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[147:150], v[127:130], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[155:158], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[147:150], v[155:158], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[143:146], v[167:170], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[139:142], v[167:170], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[143:146], v[163:166], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[139:142], v[163:166], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[135:138], v[159:162], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[110:113], v[159:162], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[135:138], v[55:58], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[110:113], v[55:58], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[175:178], v[171:174], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[179:182], v[171:174], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[175:178], v[183:186], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[179:182], v[183:186], v[117:124] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v94
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
	v_cvt_f32_i32_e32 v109, v127
	v_cvt_f32_i32_e32 v110, v128
	v_cvt_f32_i32_e32 v111, v129
	v_cvt_f32_i32_e32 v112, v130
	v_cvt_f32_i32_e32 v113, v131
	v_cvt_f32_i32_e32 v114, v132
	v_cvt_f32_i32_e32 v115, v133
	v_cvt_f32_i32_e32 v116, v134
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s27, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s27, s4
	v_mov_b16_e32 v58.l, 0
	s_ashr_i32 s4, s4, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v58.h, v126.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v54, v54, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v55, v17, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v53, v53, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	s_clause 0x1
	buffer_load_u16 v56, v54, s[8:11], 0 offen
	buffer_load_u16 v57, v53, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[53:54], null, s26, s35, v[17:18]
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v17, 0x840, 0, s0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v131, v11, v58 :: v_dual_and_b32 v0, 0x3f8, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v18, 3, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v127, v15, v58 :: v_dual_lshlrev_b32 v54, 2, v19
	v_dual_mul_f32 v129, v13, v58 :: v_dual_lshlrev_b32 v20, 6, v20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v17, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v126, v16, v58
	v_mul_f32_e32 v128, v14, v58
	v_mul_f32_e32 v130, v12, v58
	v_mul_f32_e32 v132, v10, v58
	v_mul_f32_e32 v133, v9, v58
	v_mul_f32_e32 v134, v8, v58
	v_mul_f32_e32 v135, v7, v58
	v_mul_f32_e32 v136, v6, v58
	v_mul_f32_e32 v138, v4, v58
	v_mul_f32_e32 v139, v3, v58
	v_mul_f32_e32 v140, v2, v58
	v_mul_f32_e32 v141, v1, v58
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v19, v19, 11, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v137, v5, v58
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v58.h, v125.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v18, v18, v20, v54
	v_lshlrev_b32_e32 v54, 2, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v126, v91, v45
	v_fma_f32 v84, v133, v84, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v58
	v_mul_f32_e32 v6, v6, v58
	v_mul_f32_e32 v5, v5, v58
	v_mul_f32_e32 v4, v4, v58
	v_mul_f32_e32 v2, v2, v58
	v_mul_f32_e32 v1, v1, v58
	v_mul_f32_e32 v3, v3, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v20, s3
	v_cndmask_b32_e64 v17, v46, v84, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v65, v27
	v_fma_f32 v6, v6, v64, v26
	v_fma_f32 v5, v5, v63, v25
	v_fma_f32 v4, v4, v62, v24
	v_fma_f32 v20, v2, v60, v22
	v_fma_f32 v46, v1, v68, v21
	v_fma_f32 v90, v127, v90, v52
	v_fma_f32 v89, v128, v89, v51
	v_fma_f32 v88, v129, v88, v50
	v_fma_f32 v87, v130, v87, v49
	v_fma_f32 v86, v131, v86, v48
	v_fma_f32 v85, v132, v85, v47
	v_fma_f32 v83, v134, v83, v44
	v_fma_f32 v81, v136, v81, v42
	v_fma_f32 v79, v138, v79, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v58
	v_mul_f32_e32 v15, v15, v58
	v_mul_f32_e32 v14, v14, v58
	v_mul_f32_e32 v13, v13, v58
	v_mul_f32_e32 v12, v12, v58
	v_mul_f32_e32 v11, v11, v58
	v_mul_f32_e32 v10, v10, v58
	v_mul_f32_e32 v9, v9, v58
	v_mul_f32_e32 v8, v8, v58
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v58, 0, v18
	v_xad_u32 v91, 0x840, v18, 0
	v_xad_u32 v126, 0x1008, v18, 0
	v_xad_u32 v127, 0x1848, v18, 0
	v_xad_u32 v128, 0x2010, v18, 0
	v_xad_u32 v129, 0x2850, v18, 0
	v_xad_u32 v130, 0x3018, v18, 0
	v_xad_u32 v131, 0x3858, v18, 0
	v_xad_u32 v132, 0x4020, v18, 0
	v_xad_u32 v133, 0x4860, v18, 0
	v_xad_u32 v134, 0x5028, v18, 0
	v_xad_u32 v136, 0x6030, v18, 0
	v_xad_u32 v138, 0x7038, v18, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v7, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v6, s3
	v_cndmask_b32_e64 v25, v25, v5, s3
	v_cndmask_b32_e64 v24, v24, v4, s3
	v_cndmask_b32_e64 v20, v22, v20, s3
	v_cndmask_b32_e64 v21, v21, v46, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v46, 0, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v137, v80, v41
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v137, 0x6870, v18, 0
	v_xad_u32 v60, v19, 16, 0
	v_xad_u32 v62, v19, 32, 0
	v_xad_u32 v63, v19, 48, 0
	v_xad_u32 v64, v19, 56, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v75, v36
	v_fma_f32 v14, v14, v73, v34
	v_fma_f32 v12, v12, v71, v32
	v_fma_f32 v10, v10, v69, v30
	v_fma_f32 v9, v9, v67, v29
	v_fma_f32 v8, v8, v66, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v16, s3
	v_cndmask_b32_e64 v34, v34, v14, s3
	v_cndmask_b32_e64 v32, v32, v12, s3
	v_cndmask_b32_e64 v30, v30, v10, s3
	v_cndmask_b32_e64 v16, v29, v9, s3
	v_cndmask_b32_e64 v28, v28, v8, s3
	v_cndmask_b32_e64 v47, v47, v85, s3
	v_cndmask_b32_e64 v48, v48, v86, s3
	v_cndmask_b32_e64 v49, v49, v87, s3
	v_cndmask_b32_e64 v40, v40, v79, s3
	v_cndmask_b32_e64 v52, v52, v90, s3
	v_cndmask_b32_e64 v51, v51, v89, s3
	v_cndmask_b32_e64 v50, v50, v88, s3
	v_cndmask_b32_e64 v44, v44, v83, s3
	v_cndmask_b32_e64 v42, v42, v81, s3
	v_cndmask_b32_e64 v41, v41, v80, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v125, v53, s35, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	s_mul_i32 s9, s35, 11
	s_mul_i32 s12, s35, 12
	s_mul_i32 s13, s35, 13
	s_mul_i32 s14, s35, 14
	s_mul_i32 s15, s35, 15
	s_mul_i32 s16, s35, 17
	s_mul_i32 s17, s35, 18
	s_mul_i32 s18, s35, 19
	s_mul_i32 s19, s35, 20
	s_mul_i32 s20, s35, 21
	s_mul_i32 s21, s35, 22
	s_mul_i32 s22, s35, 23
	s_mul_i32 s23, s35, 24
	s_mul_i32 s28, s35, 25
	s_mul_i32 s29, s35, 26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_add_lshl_u32 v142, v53, s33, 2
	s_and_b32 s25, s25, 0xffff
	v_add_lshl_u32 v143, v53, s4, 2
	v_add_lshl_u32 v144, v53, s5, 2
	v_add_lshl_u32 v145, v53, s6, 2
	v_add_lshl_u32 v146, v53, s7, 2
	v_add_lshl_u32 v147, v53, s8, 2
	v_add_lshl_u32 v148, v53, s9, 2
	v_add_lshl_u32 v149, v53, s12, 2
	v_add_lshl_u32 v150, v53, s13, 2
	v_add_lshl_u32 v151, v53, s14, 2
	v_add_lshl_u32 v152, v53, s15, 2
	v_add_lshl_u32 v153, v53, s16, 2
	v_add_lshl_u32 v154, v53, s17, 2
	v_add_lshl_u32 v155, v53, s18, 2
	v_add_lshl_u32 v156, v53, s19, 2
	v_add_lshl_u32 v157, v53, s20, 2
	v_add_lshl_u32 v158, v53, s21, 2
	v_add_lshl_u32 v159, v53, s22, 2
	v_add_lshl_u32 v160, v53, s23, 2
	v_add_lshl_u32 v161, v53, s28, 2
	v_add_lshl_u32 v162, v53, s29, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s30, s35, 27
	s_mul_i32 s31, s35, 28
	s_mul_i32 s34, s35, 29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v163, v53, s30, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s36, s35, 30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v164, v53, s31, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s35, 31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v165, v53, s34, 2
	v_add_lshl_u32 v166, v53, s36, 2
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v139, v78, v39
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v135, v82, v43
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v135, 0x5868, v18, 0
	v_xad_u32 v139, 0x7878, v18, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v3, v61, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v93, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v92 offset:36864
	ds_load_b128 v[4:7], v92 offset:36880
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v55, v19, 8, 0
	v_xad_u32 v61, v19, 24, 0
	v_xad_u32 v56, v19, 40, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v19, 16, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v23, v18, s3
	v_cndmask_b32_e64 v39, v39, v78, s3
	v_cndmask_b32_e64 v43, v43, v82, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v57, v2, v22
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v66, v4, v22
	v_mul_f32_e32 v68, v6, v22
	v_mul_f32_e32 v2, v2, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v74, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v72, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v70, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v15, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v0, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v92 offset:37392
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v11, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v92 offset:37376
	v_mul_f32_e32 v0, v0, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v141, v76, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v1, v22
	v_mul_f32_e32 v65, v3, v22
	v_mul_f32_e32 v67, v5, v22
	v_mul_f32_e32 v69, v7, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v76, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v19
	v_mul_f32_e32 v3, v3, v19
	v_mul_f32_e32 v5, v5, v19
	v_mul_f32_e32 v7, v7, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v2, v111, v39
	v_fma_f32 v80, v4, v113, v41
	v_fma_f32 v79, v3, v112, v40
	v_fma_f32 v81, v5, v114, v42
	v_fma_f32 v82, v6, v115, v43
	v_fma_f32 v83, v7, v116, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v74, v12, v22
	v_mul_f32_e32 v75, v13, v22
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v70, v8, v22
	v_mul_f32_e32 v71, v9, v22
	v_mul_f32_e32 v72, v10, v22
	v_mul_f32_e32 v73, v11, v22
	v_mul_f32_e32 v76, v14, v22
	v_mul_f32_e32 v22, v15, v22
	v_mul_f32_e32 v15, v15, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v140, v77, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v19
	v_mul_f32_e32 v9, v9, v19
	v_mul_f32_e32 v10, v10, v19
	v_mul_f32_e32 v11, v11, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v77, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v19
	v_mul_f32_e32 v13, v13, v19
	v_mul_f32_e32 v14, v14, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v23, v59, v21
	v_fma_f32 v59, v66, v97, v25
	v_fma_f32 v66, v68, v99, v27
	v_fma_f32 v68, v70, v101, v16
	v_fma_f32 v70, v72, v103, v31
	v_fma_f32 v72, v74, v105, v33
	v_fma_f32 v74, v76, v107, v35
	v_fma_f32 v76, v0, v109, v37
	v_fma_f32 v84, v8, v117, v17
	v_fma_f32 v23, v29, v94, v20
	v_fma_f32 v29, v57, v95, v18
	v_fma_f32 v57, v65, v96, v24
	v_fma_f32 v65, v67, v98, v26
	v_fma_f32 v67, v69, v100, v28
	v_fma_f32 v69, v71, v102, v30
	v_fma_f32 v77, v1, v110, v38
	v_fma_f32 v85, v9, v118, v47
	v_fma_f32 v86, v10, v119, v48
	v_fma_f32 v71, v73, v104, v32
	v_fma_f32 v87, v11, v120, v49
	v_fma_f32 v73, v75, v106, v34
	v_fma_f32 v75, v22, v108, v36
	v_fma_f32 v88, v12, v121, v50
	v_fma_f32 v89, v13, v122, v51
	v_fma_f32 v90, v14, v123, v52
	v_fma_f32 v92, v15, v124, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v21, v19, s2
	v_cndmask_b32_e64 v16, v16, v68, s2
	v_cndmask_b32_e64 v1, v37, v76, s2
	v_cndmask_b32_e64 v17, v17, v84, s2
	v_cndmask_b32_e64 v2, v20, v23, s2
	v_cndmask_b32_e64 v4, v18, v29, s2
	v_cndmask_b32_e64 v18, v30, v69, s2
	v_cndmask_b32_e64 v3, v38, v77, s2
	v_cndmask_b32_e64 v19, v47, v85, s2
	v_cndmask_b32_e64 v20, v31, v70, s2
	v_cndmask_b32_e64 v5, v39, v78, s2
	v_cndmask_b32_e64 v21, v48, v86, s2
	v_cndmask_b32_e64 v6, v24, v57, s2
	v_cndmask_b32_e64 v22, v32, v71, s2
	v_cndmask_b32_e64 v7, v40, v79, s2
	v_cndmask_b32_e64 v23, v49, v87, s2
	v_cndmask_b32_e64 v8, v25, v59, s2
	v_cndmask_b32_e64 v10, v26, v65, s2
	v_cndmask_b32_e64 v12, v27, v66, s2
	v_cndmask_b32_e64 v14, v28, v67, s2
	v_cndmask_b32_e64 v24, v33, v72, s2
	v_cndmask_b32_e64 v26, v34, v73, s2
	v_cndmask_b32_e64 v28, v35, v74, s2
	v_cndmask_b32_e64 v30, v36, v75, s2
	v_cndmask_b32_e64 v9, v41, v80, s2
	v_cndmask_b32_e64 v11, v42, v81, s2
	v_cndmask_b32_e64 v13, v43, v82, s2
	v_cndmask_b32_e64 v15, v44, v83, s2
	v_cndmask_b32_e64 v25, v50, v88, s2
	v_cndmask_b32_e64 v27, v51, v89, s2
	v_cndmask_b32_e64 v29, v52, v90, s2
	v_cndmask_b32_e64 v31, v45, v92, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v46, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v55, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v60, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v61, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v62, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v56, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v63, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v64, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v58
	ds_load_b64 v[2:3], v91
	ds_load_b64 v[4:5], v126
	ds_load_b64 v[6:7], v127
	ds_load_b64 v[8:9], v128
	ds_load_b64 v[10:11], v129
	ds_load_b64 v[12:13], v130
	ds_load_b64 v[14:15], v131
	ds_load_b64 v[16:17], v132
	ds_load_b64 v[18:19], v133
	ds_load_b64 v[20:21], v134
	ds_load_b64 v[22:23], v135
	ds_load_b64 v[24:25], v136
	ds_load_b64 v[26:27], v137
	ds_load_b64 v[28:29], v138
	ds_load_b64 v[30:31], v139
	v_lshl_add_u32 v32, s35, 3, v54
	v_lshl_add_u32 v33, s35, 4, v54
	v_lshl_add_u32 v34, s35, 5, v54
	v_lshl_add_u32 v35, s35, 6, v54
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v54, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v125, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v142, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v33, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v143, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v144, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v145, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v16, v34, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v18, v146, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v20, v147, s[24:27], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v22, v148, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v24, v149, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v26, v150, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v28, v151, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v30, v152, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v35, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v153, s[24:27], 0 offen
	buffer_atomic_add_f32 v5, v154, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v155, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v156, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v157, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v158, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v159, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v160, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v161, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v162, s[24:27], 0 offen
	v_add_lshl_u32 v0, v53, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v23, v163, s[24:27], 0 offen
	buffer_atomic_add_f32 v25, v164, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v165, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v166, s[24:27], 0 offen
	buffer_atomic_add_f32 v31, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 195
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8568
; TotalNumSgprs: 49
; NumVgprs: 195
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     195
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
