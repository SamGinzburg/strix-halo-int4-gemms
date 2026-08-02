	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v18, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v17, 15, v0
	v_and_b32_e32 v58, 8, v0
	v_and_b32_e32 v59, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v4, 2, v18
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
	v_mul_lo_u32 v5, s35, v4
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v17, 4, v5
	v_mad_u64_u32 v[10:11], null, s35, 3, v[9:10]
	v_lshl_add_u32 v15, s35, 1, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 7, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v3, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	v_rcp_iflag_f32_e32 v2, s18
	v_readfirstlane_b32 s18, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 3, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s12, v2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	s_mov_b64 s[24:25], s[10:11]
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
	s_lshl_b32 s26, s3, 6
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
	s_add_i32 s13, s12, 63
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s14, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s14, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s35, s26
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s12, s34, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v16, v2, v3, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s3, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s26, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v9
	v_add_nc_u32_e32 v5, s12, v15
	v_add_nc_u32_e32 v6, s12, v10
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 6
	v_add_nc_u32_e32 v23, s35, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s40, s26, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[7:8], v2, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v5, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v6, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s12, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v23, s3
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s40, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v31, s12, v10
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v2, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v6, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v2, 0x80000000, v5, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v31, s2
	s_clause 0x1
	buffer_load_b128 v[31:34], v3, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v5, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v9
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v6, 48, v0
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_b128 v[39:42], v3, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v5, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b64 v[47:48], v2, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	v_and_b32_e32 v3, 14, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 0x420, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v5, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v62, v2, v6
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 16, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v63, v3, 10, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v5, 0, v62
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v64, 0x90, v63
	v_xor_b32_e32 v65, 0x120, v63
	v_xor_b32_e32 v66, 0x1b0, v63
	v_xor_b32_e32 v67, 0x210, v63
	v_add_nc_u32_e32 v49, 0, v63
	v_xor_b32_e32 v68, 0x330, v63
	v_xor_b32_e32 v69, 0x3a0, v63
	v_add_nc_u32_e32 v50, 0, v64
	v_add_nc_u32_e32 v51, 0, v65
	v_add_nc_u32_e32 v52, 0, v66
	v_add_nc_u32_e32 v53, 0, v67
	v_add_nc_u32_e32 v54, 0, v68
	v_add_nc_u32_e32 v55, 0, v69
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v60, 0x4000, v51
	v_add_nc_u32_e32 v61, 0x4000, v52
	v_add_nc_u32_e32 v70, 0x4000, v53
	v_add_nc_u32_e32 v71, 0x4000, v54
	v_add_nc_u32_e32 v72, 0x4000, v55
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v5, v[7:8] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v7, v19, v11, 0x4000501
	v_perm_b32 v8, v19, v11, 0x6020703
	v_perm_b32 v11, v20, v12, 0x4000501
	v_perm_b32 v12, v20, v12, 0x6020703
	v_perm_b32 v19, v21, v13, 0x4000501
	v_perm_b32 v13, v21, v13, 0x6020703
	v_perm_b32 v20, v22, v14, 0x4000501
	v_perm_b32 v14, v22, v14, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v21, v27, v23, 0x4000501
	v_perm_b32 v22, v27, v23, 0x6020703
	v_perm_b32 v23, v28, v24, 0x4000501
	v_perm_b32 v24, v28, v24, 0x6020703
	v_perm_b32 v27, v29, v25, 0x4000501
	v_perm_b32 v25, v29, v25, 0x6020703
	v_perm_b32 v28, v30, v26, 0x4000501
	v_perm_b32 v26, v30, v26, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v29, v35, v31, 0x4000501
	v_perm_b32 v30, v35, v31, 0x6020703
	v_perm_b32 v35, v37, v33, 0x4000501
	v_perm_b32 v33, v37, v33, 0x6020703
	v_perm_b32 v37, v7, v21, 0x7060302
	v_perm_b32 v7, v7, v21, 0x5040100
	v_perm_b32 v21, v8, v22, 0x7060302
	v_perm_b32 v8, v8, v22, 0x5040100
	v_perm_b32 v22, v11, v23, 0x7060302
	v_perm_b32 v11, v11, v23, 0x5040100
	v_perm_b32 v23, v12, v24, 0x7060302
	v_perm_b32 v12, v12, v24, 0x5040100
	v_perm_b32 v24, v19, v27, 0x7060302
	v_perm_b32 v19, v19, v27, 0x5040100
	v_perm_b32 v27, v13, v25, 0x7060302
	v_perm_b32 v13, v13, v25, 0x5040100
	v_perm_b32 v25, v20, v28, 0x7060302
	v_perm_b32 v20, v20, v28, 0x5040100
	v_perm_b32 v28, v14, v26, 0x7060302
	v_perm_b32 v14, v14, v26, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v26, v43, v39, 0x4000501
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
	ds_store_2addr_b32 v49, v37, v7 offset1:16
	ds_store_2addr_b32 v50, v21, v8 offset1:16
	ds_store_2addr_b32 v51, v22, v11 offset1:16
	ds_store_2addr_b32 v52, v23, v12 offset1:16
	ds_store_2addr_b32 v53, v24, v19 offset1:16
	ds_store_2addr_b32 v49, v27, v13 offset0:160 offset1:176
	ds_store_2addr_b32 v54, v25, v20 offset1:16
	ds_store_2addr_b32 v55, v28, v14 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[47:48] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v5, v29, v26, 0x7060302
	v_perm_b32 v7, v29, v26, 0x5040100
	v_perm_b32 v8, v30, v38, 0x7060302
	v_perm_b32 v11, v30, v38, 0x5040100
	v_perm_b32 v12, v31, v39, 0x7060302
	v_perm_b32 v13, v31, v39, 0x5040100
	v_perm_b32 v14, v32, v40, 0x7060302
	v_perm_b32 v19, v32, v40, 0x5040100
	v_perm_b32 v20, v35, v43, 0x7060302
	v_perm_b32 v21, v35, v43, 0x5040100
	v_perm_b32 v22, v33, v41, 0x7060302
	v_perm_b32 v23, v33, v41, 0x5040100
	v_perm_b32 v24, v36, v44, 0x7060302
	v_perm_b32 v25, v36, v44, 0x5040100
	v_perm_b32 v26, v34, v42, 0x7060302
	v_perm_b32 v27, v34, v42, 0x5040100
	ds_store_2addr_b32 v56, v5, v7 offset1:16
	ds_store_2addr_b32 v57, v8, v11 offset1:16
	ds_store_2addr_b32 v60, v12, v13 offset1:16
	ds_store_2addr_b32 v61, v14, v19 offset1:16
	ds_store_2addr_b32 v70, v20, v21 offset1:16
	ds_store_2addr_b32 v56, v22, v23 offset0:160 offset1:176
	ds_store_2addr_b32 v71, v24, v25 offset1:16
	ds_store_2addr_b32 v72, v26, v27 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v60, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0x1800, v4
	v_and_b32_e32 v7, 8, v0
	v_and_b32_e32 v5, 32, v0
	s_mov_b32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v54, v17, 6, v60
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v61, v1, 6, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v55, 16, v54
	v_xor_b32_e32 v57, 32, v54
	v_xor_b32_e32 v56, 48, v54
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr61
.LBB0_3:                                ; %Flow58
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v8, s34, v17
	v_or_b32_e32 v6, s34, v6
	s_ashr_i32 s41, s14, 8
	v_and_b32_e32 v12, 1, v0
	v_or_b32_e32 v52, s33, v0
	v_mul_lo_u32 v53, v8, s41
	v_mul_lo_u32 v51, v6, s41
	v_lshlrev_b32_e32 v13, 2, v18
	v_lshlrev_b32_e32 v11, 1, v3
	v_lshlrev_b32_e32 v14, 5, v12
	v_lshlrev_b32_e32 v12, 1, v18
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v60, 48, v2
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s44, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v2, 0x1800, v4
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	v_lshl_or_b32 v54, v17, 6, v60
	v_add3_u32 v20, 0, v13, v14
	v_lshl_or_b32 v61, v1, 6, v2
	v_xor_b32_e32 v1, v3, v60
	v_and_b32_e32 v2, 0x420, v4
.Ltmp23:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v70, s35, v9
	v_xor_b32_e32 v55, 16, v54
	v_xor_b32_e32 v57, 32, v54
	v_or_b32_e32 v1, v1, v61
	v_xor_b32_e32 v56, 48, v54
	v_add_nc_u32_e32 v75, v20, v11
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v76, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v71, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_mov_b32_e32 v7, s18
	v_xor_b32_e32 v72, 16, v71
	v_xor_b32_e32 v73, 32, v71
	v_xor_b32_e32 v74, 48, v71
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s11, s40, 64
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_mov_b32 s27, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s42, 0, 0x8800
	s_add_i32 s43, 0, 0x4000
	s_add_i32 s44, s44, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_mov_b32 s14, s26
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s26, s40
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s40, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v77, s40, v16
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 24
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s40, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[181:182], v77, s[4:7], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v77, v53, s14, 1
	v_add_lshl_u32 v82, v51, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s16, v9
	v_add_nc_u32_e32 v79, s16, v70
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v83, v52, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v80, s16, v15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[109:112], v78, s[20:23], 0 offen
	buffer_load_b128 v[113:116], v79, s[20:23], 0 offen
	buffer_load_b128 v[117:120], v80, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v78, 0x80000000, v82 :: v_dual_cndmask_b32 v79, 0x80000000, v83
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v81, s16, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v183, v77, s[28:31], 0 offen
	buffer_load_u16 v184, v78, s[28:31], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v185, v79, s[36:39], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[121:124], v81, s[20:23], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v77, s14, v54
	v_add_nc_u32_e32 v78, s14, v55
	v_add_nc_u32_e32 v79, s14, v57
	v_add_nc_u32_e32 v80, s14, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v81, s15, v71
	v_add_nc_u32_e32 v82, s15, v72
	v_add_nc_u32_e32 v83, s15, v73
	v_add_nc_u32_e32 v84, s15, v74
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[93:96], v77
	ds_load_b128 v[125:128], v77 offset:1024
	ds_load_b128 v[129:132], v78
	ds_load_b128 v[133:136], v78 offset:1024
	ds_load_b128 v[137:140], v79
	ds_load_b128 v[141:144], v79 offset:1024
	ds_load_b128 v[145:148], v80
	ds_load_b128 v[149:152], v80 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[101:104], v81
	ds_load_b128 v[153:156], v81 offset:8192
	ds_load_b128 v[157:160], v82
	ds_load_b128 v[161:164], v82 offset:8192
	ds_load_b128 v[165:168], v83
	ds_load_b128 v[169:172], v83 offset:8192
	ds_load_b128 v[173:176], v84
	ds_load_b128 v[177:180], v84 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s27, 1
	s_mov_b32 s12, s43
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s10, s42
	s_cselect_b32 s27, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s15, s27, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s27, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s15, s15, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s43, s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s42, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[101:104], v[93:96], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[153:156], v[93:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[101:104], v[125:128], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[157:160], v[129:132], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[161:164], v[129:132], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[153:156], v[125:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[157:160], v[133:136], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[165:168], v[137:140], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[169:172], v[137:140], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[133:136], v[101:108] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[141:144], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[173:176], v[145:148], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[177:180], v[145:148], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[141:144], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[173:176], v[149:152], v[93:100] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v125, v77
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
	v_wmma_i32_16x16x16_iu8 v[101:108], v[177:180], v[149:152], v[101:108] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v77, v113, v109, 0x4000501
	v_perm_b32 v79, v113, v109, 0x6020703
	v_perm_b32 v81, v114, v110, 0x4000501
	v_perm_b32 v83, v114, v110, 0x6020703
	v_perm_b32 v85, v115, v111, 0x4000501
	v_perm_b32 v87, v115, v111, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v78, v121, v117, 0x4000501
	v_perm_b32 v80, v121, v117, 0x6020703
	v_perm_b32 v82, v122, v118, 0x4000501
	v_perm_b32 v84, v122, v118, 0x6020703
	v_perm_b32 v86, v123, v119, 0x4000501
	v_perm_b32 v88, v123, v119, 0x6020703
	v_perm_b32 v89, v116, v112, 0x4000501
	v_perm_b32 v90, v124, v120, 0x4000501
	v_perm_b32 v91, v116, v112, 0x6020703
	v_perm_b32 v92, v124, v120, 0x6020703
	v_perm_b32 v109, v78, v77, 0x7060302
	v_perm_b32 v110, v78, v77, 0x5040100
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v142, 16, v184
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v77, 16, v185
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v111, v80, v79, 0x7060302
	v_perm_b32 v112, v80, v79, 0x5040100
	v_perm_b32 v113, v82, v81, 0x7060302
	v_perm_b32 v114, v82, v81, 0x5040100
	v_perm_b32 v115, v84, v83, 0x7060302
	v_perm_b32 v116, v84, v83, 0x5040100
	v_perm_b32 v117, v86, v85, 0x7060302
	v_perm_b32 v118, v86, v85, 0x5040100
	v_perm_b32 v119, v88, v87, 0x7060302
	v_perm_b32 v120, v88, v87, 0x5040100
	v_perm_b32 v121, v90, v89, 0x7060302
	v_perm_b32 v122, v90, v89, 0x5040100
	v_perm_b32 v123, v92, v91, 0x7060302
	v_perm_b32 v124, v92, v91, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v75, v77 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v76 offset:36864
	ds_load_b128 v[81:84], v76 offset:36880
	ds_load_b128 v[85:88], v76 offset:37376
	ds_load_b128 v[89:92], v76 offset:37392
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v141, 16, v183
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v189, s43, v65
	v_add_nc_u32_e32 v193, s43, v69
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v144, v86, v141
	v_mul_f32_e32 v86, v86, v142
	v_dual_mul_f32 v145, v87, v141 :: v_dual_add_nc_u32 v186, s15, v62
	v_dual_mul_f32 v146, v88, v141 :: v_dual_add_nc_u32 v187, s43, v63
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v147, v89, v141 :: v_dual_add_nc_u32 v188, s43, v64
	v_dual_mul_f32 v149, v91, v141 :: v_dual_add_nc_u32 v190, s43, v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v186, v[181:182] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v187, v109, v110 offset1:16
	ds_store_2addr_b32 v188, v111, v112 offset1:16
	ds_store_2addr_b32 v189, v113, v114 offset1:16
	ds_store_2addr_b32 v190, v115, v116 offset1:16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v80, v141
	v_dual_mul_f32 v80, v80, v142 :: v_dual_add_nc_u32 v191, s43, v67
	v_mul_f32_e32 v148, v90, v141
	v_dual_mul_f32 v109, v77, v141 :: v_dual_add_nc_u32 v192, s43, v68
	v_mul_f32_e32 v110, v78, v141
	v_mul_f32_e32 v111, v79, v141
	v_mul_f32_e32 v113, v81, v141
	v_mul_f32_e32 v114, v82, v141
	v_mul_f32_e32 v115, v83, v141
	v_mul_f32_e32 v116, v84, v141
	v_mul_f32_e32 v143, v85, v141
	v_mul_f32_e32 v141, v92, v141
	v_mul_f32_e32 v77, v77, v142
	v_mul_f32_e32 v78, v78, v142
	v_dual_mul_f32 v79, v79, v142 :: v_dual_fmac_f32 v22, v112, v128
	v_dual_mul_f32 v81, v81, v142 :: v_dual_fmac_f32 v26, v116, v132
	v_mul_f32_e32 v82, v82, v142
	v_dual_mul_f32 v83, v83, v142 :: v_dual_fmac_f32 v30, v146, v136
	v_mul_f32_e32 v84, v84, v142
	v_dual_mul_f32 v85, v85, v142 :: v_dual_fmac_f32 v38, v80, v96
	v_dual_mul_f32 v87, v87, v142 :: v_dual_fmac_f32 v34, v141, v140
	v_mul_f32_e32 v88, v88, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v89, v89, v142 :: v_dual_fmac_f32 v42, v84, v100
	v_dual_mul_f32 v90, v90, v142 :: v_dual_fmac_f32 v19, v109, v125
	v_dual_mul_f32 v91, v91, v142 :: v_dual_fmac_f32 v44, v85, v101
	v_dual_mul_f32 v92, v92, v142 :: v_dual_fmac_f32 v21, v111, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v20, v110, v126 :: v_dual_fmac_f32 v23, v113, v129
	v_dual_fmac_f32 v24, v114, v130 :: v_dual_fmac_f32 v25, v115, v131
	v_dual_fmac_f32 v27, v143, v133 :: v_dual_fmac_f32 v28, v144, v134
	v_dual_fmac_f32 v29, v145, v135 :: v_dual_fmac_f32 v32, v148, v138
	v_dual_fmac_f32 v31, v147, v137 :: v_dual_fmac_f32 v36, v78, v94
	v_dual_fmac_f32 v33, v149, v139 :: v_dual_fmac_f32 v40, v82, v98
	v_dual_fmac_f32 v35, v77, v93 :: v_dual_fmac_f32 v46, v87, v103
	v_dual_fmac_f32 v37, v79, v95 :: v_dual_fmac_f32 v48, v89, v105
	v_dual_fmac_f32 v39, v81, v97 :: v_dual_fmac_f32 v50, v91, v107
	v_fmac_f32_e32 v41, v83, v99
	v_fmac_f32_e32 v45, v86, v102
	v_fmac_f32_e32 v47, v88, v104
	v_fmac_f32_e32 v49, v90, v106
	v_fmac_f32_e32 v43, v92, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v191, v117, v118 offset1:16
	ds_store_2addr_b32 v187, v119, v120 offset0:160 offset1:176
	ds_store_2addr_b32 v192, v121, v122 offset1:16
	ds_store_2addr_b32 v193, v123, v124 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v7, v58
	v_mov_b32_e32 v5, v59
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
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
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s42, 0, 0x8800
	s_add_i32 s43, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v59, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v60
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v62, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_or_b32_e32 v1, v1, v61
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v75, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v126, v1, v2
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_xor_b32_e32 v127, 16, v126
	v_xor_b32_e32 v129, 32, v126
	v_xor_b32_e32 v128, 48, v126
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
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
	v_add_nc_u32_e32 v1, s12, v129
	v_add_nc_u32_e32 v2, s12, v126
	ds_load_b128 v[59:62], v1 offset:8192
	ds_load_b128 v[63:66], v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s10, v54
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s12, v127
	ds_load_b128 v[91:94], v2 offset:8192
	ds_load_b128 v[95:98], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s10, v57
	v_add_nc_u32_e32 v4, s10, v55
	ds_load_b128 v[99:102], v1 offset:1024
	ds_load_b128 v[83:86], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[103:106], v3 offset:8192
	ds_load_b128 v[107:110], v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v2 offset:1024
	ds_load_b128 v[115:118], v2
	ds_load_b128 v[119:122], v4 offset:1024
	ds_load_b128 v[130:133], v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s12, v128
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s16 :: v_dual_add_nc_u32 v10, s10, v56
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v4, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[134:137], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[138:141], v9
	ds_load_b128 v[142:145], v9 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[146:149], v10 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[95:98], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[95:98], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[91:94], v[99:102], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[107:110], v[130:133], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[130:133], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[107:110], v[119:122], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[103:106], v[119:122], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[63:66], v[115:118], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[59:62], v[115:118], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[63:66], v[111:114], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[59:62], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[138:141], v[134:137], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[142:145], v[134:137], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[146:149], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[142:145], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v59, v68
	v_cvt_f32_i32_e32 v60, v69
	v_cvt_f32_i32_e32 v61, v70
	v_cvt_f32_i32_e32 v62, v71
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v68, v76
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
	v_cvt_f32_i32_e32 v83, v1
	v_cvt_f32_i32_e32 v84, v2
	v_cvt_f32_i32_e32 v85, v3
	v_cvt_f32_i32_e32 v86, v4
	v_cvt_f32_i32_e32 v87, v5
	v_cvt_f32_i32_e32 v88, v6
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v90, v8
	v_cvt_f32_i32_e32 v67, v67
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v53, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v52, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v51, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v94, 0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x1
	buffer_load_u16 v124, v1, s[8:11], 0 offen
	buffer_load_u16 v125, v3, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v13, v14
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v91, 0, v12
	v_mov_b32_e32 v101, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v92, v1, v11
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v123, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v92, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v91 offset:36864
	ds_load_b128 v[5:8], v91 offset:36880
	ds_load_b128 v[9:12], v91 offset:37376
	ds_load_b128 v[13:16], v91 offset:37392
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
	v_dual_mov_b32 v123, s19 :: v_dual_add_nc_u32 v58, s43, v129
	v_dual_mov_b32 v120, s16 :: v_dual_add_nc_u32 v95, s43, v126
	v_dual_mov_b32 v119, s15 :: v_dual_add_nc_u32 v54, s42, v54
	v_dual_mov_b32 v122, s18 :: v_dual_add_nc_u32 v93, s43, v127
	v_dual_mov_b32 v121, s17 :: v_dual_add_nc_u32 v94, s43, v128
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v58 offset:8192
	ds_load_b128 v[134:137], v58
	ds_load_b128 v[138:141], v93 offset:8192
	ds_load_b128 v[142:145], v93
	ds_load_b128 v[146:149], v95 offset:8192
	ds_load_b128 v[150:153], v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v118, s14 :: v_dual_add_nc_u32 v93, s42, v55
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[154:157], v54 offset:1024
	ds_load_b128 v[126:129], v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v117, s13 :: v_dual_add_nc_u32 v58, s42, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[162:165], v93 offset:1024
	ds_load_b128 v[166:169], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v116, s12 :: v_dual_add_nc_u32 v95, s42, v56
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[54:57], v58 offset:1024
	ds_load_b128 v[158:161], v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[174:177], v94
	ds_load_b128 v[178:181], v94 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v95 offset:1024
	ds_load_b128 v[170:173], v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[150:153], v[126:129], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[146:149], v[126:129], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[150:153], v[154:157], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[146:149], v[154:157], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[142:145], v[166:169], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[138:141], v[166:169], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[142:145], v[162:165], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[138:141], v[162:165], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[134:137], v[158:161], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[109:112], v[158:161], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[134:137], v[54:57], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[109:112], v[54:57], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[174:177], v[170:173], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[178:181], v[170:173], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[174:177], v[182:185], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[178:181], v[182:185], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v93
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
	v_cvt_f32_i32_e32 v108, v126
	v_cvt_f32_i32_e32 v109, v127
	v_cvt_f32_i32_e32 v110, v128
	v_cvt_f32_i32_e32 v111, v129
	v_cvt_f32_i32_e32 v112, v130
	v_cvt_f32_i32_e32 v113, v131
	v_cvt_f32_i32_e32 v114, v132
	v_cvt_f32_i32_e32 v115, v133
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s40, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s40, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s35, v17
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v53, v53, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v52, v52, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v51, v51, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v18, 1, v18
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	s_clause 0x1
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v55, v51, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v54, v52, s[24:27], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v51.h, v125.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e64 v139.h, v51.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v16, v51
	v_mul_f32_e32 v126, v13, v51
	v_mul_f32_e32 v135, v4, v51
	v_mul_f32_e32 v137, v2, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.h, v51.l
	v_mov_b16_e64 v155.h, v51.l
	v_mov_b16_e64 v140.h, v51.l
	v_mov_b16_e64 v154.h, v51.l
	v_mov_b16_e64 v145.h, v51.l
	v_mov_b16_e64 v144.h, v51.l
	v_mov_b16_e64 v143.h, v51.l
	v_mov_b16_e64 v156.h, v51.l
	v_mov_b16_e32 v124.h, v51.l
	v_mov_b16_e64 v142.h, v51.l
	v_mov_b16_e64 v157.h, v51.l
	v_mov_b16_e64 v158.h, v51.l
	v_mov_b16_e64 v159.h, v51.l
	v_mov_b16_e64 v149.h, v51.l
	v_mov_b16_e64 v147.h, v51.l
	v_mov_b16_e64 v151.h, v51.l
	v_mov_b16_e64 v146.h, v51.l
	v_mov_b16_e64 v152.h, v51.l
	v_mov_b16_e64 v153.h, v51.l
	v_mov_b16_e64 v150.h, v51.l
	v_mov_b16_e64 v148.h, v51.l
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s35
	v_lshl_add_u32 v52, s35, 4, v17
	v_add3_u32 v18, s34, s33, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v15, v51
	v_mul_f32_e32 v125, v14, v51
	v_mul_f32_e32 v127, v12, v51
	v_mul_f32_e32 v128, v11, v51
	v_mul_f32_e32 v129, v10, v51
	v_mul_f32_e32 v130, v9, v51
	v_mul_f32_e32 v131, v8, v51
	v_mul_f32_e32 v132, v7, v51
	v_mul_f32_e32 v133, v6, v51
	v_mul_f32_e32 v134, v5, v51
	v_mul_f32_e32 v136, v3, v51
	v_mul_f32_e32 v138, v1, v51
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v51.h, v124.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v57, v89, v50
	v_fma_f32 v87, v126, v87, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v51
	v_mul_f32_e32 v1, v1, v51
	v_mul_f32_e32 v3, v3, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v50, v57, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v10, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v7, v64, v25
	v_fma_f32 v64, v1, v67, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v54
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v54, 16, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v51
	v_mul_f32_e32 v2, v2, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v3, v60, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v92, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v4, v61, v22
	v_fma_f32 v59, v2, v59, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_barrier
	ds_load_b128 v[1:4], v91 offset:36864
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v56, v90, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v51
	v_mul_f32_e32 v6, v6, v51
	v_mul_f32_e32 v5, v5, v51
	v_mul_f32_e32 v11, v11, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v56, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v8, v65, v26
	v_fma_f32 v63, v6, v63, v24
	v_fma_f32 v62, v5, v62, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v91 offset:36880
	v_mul_f32_e32 v12, v12, v51
	v_mul_f32_e32 v9, v9, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v69, v29
	v_fma_f32 v10, v10, v68, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v51
	v_mul_f32_e32 v15, v15, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v66, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v13, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v11, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v55, v1, v53
	v_mul_f32_e32 v1, v1, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v70, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v10, s3
	v_cndmask_b32_e64 v27, v27, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v74, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v63, s3
	v_cndmask_b32_e64 v30, v30, v12, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v91 offset:37376
	v_mul_f32_e32 v14, v14, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v61, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v61, v6, v53
	v_dual_mul_f32 v63, v8, v53 :: v_dual_mul_f32 v6, v6, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v73, v33
	v_fma_f32 v14, v14, v72, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v71, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v16, s3
	v_cndmask_b32_e64 v33, v33, v15, s3
	v_cndmask_b32_e64 v32, v32, v14, s3
	v_cndmask_b32_e64 v19, v19, v64, s3
	v_cndmask_b32_e64 v31, v31, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v91 offset:37392
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v56, s3
	v_cndmask_b32_e64 v25, v25, v57, s3
	v_cndmask_b32_e64 v21, v21, v60, s3
	v_cndmask_b32_e64 v20, v20, v59, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v65, v10, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v138, v75, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v2, v53
	v_mul_f32_e32 v57, v3, v53
	v_mul_f32_e32 v59, v4, v53
	v_mul_f32_e32 v4, v4, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v137, v76, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v75, s3
	v_cndmask_b32_e64 v23, v23, v62, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v60, v5, v53
	v_mul_f32_e32 v62, v7, v53
	v_mul_f32_e32 v64, v9, v53
	v_mul_f32_e32 v66, v11, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v129, v84, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v12, v53
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v68, v13, v53
	v_mul_f32_e32 v69, v14, v53
	v_mul_f32_e32 v70, v15, v53
	v_dual_mul_f32 v53, v16, v53 :: v_dual_mul_f32 v2, v2, v54
	v_mul_f32_e32 v3, v3, v54
	v_mul_f32_e32 v5, v5, v54
	v_mul_f32_e32 v7, v7, v54
	v_mul_f32_e32 v9, v9, v54
	v_mul_f32_e32 v10, v10, v54
	v_mul_f32_e32 v11, v11, v54
	v_mul_f32_e32 v12, v12, v54
	v_mul_f32_e32 v13, v13, v54
	v_mul_f32_e32 v14, v14, v54
	v_mul_f32_e32 v15, v15, v54
	v_mul_f32_e32 v16, v16, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v54, v55, v58, v19
	v_fma_f32 v85, v128, v85, v46
	v_fma_f32 v55, v56, v93, v20
	v_fma_f32 v56, v57, v94, v21
	v_fma_f32 v57, v59, v95, v22
	v_fma_f32 v59, v61, v97, v24
	v_fma_f32 v77, v136, v77, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v76, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v135, v78, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v84, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v63, v99, v26
	v_fma_f32 v63, v65, v101, v28
	v_fma_f32 v1, v1, v108, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v54, s2
	v_cndmask_b32_e64 v46, v46, v85, s3
	v_cndmask_b32_e64 v24, v24, v59, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v127, v86, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v77, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v60, v96, v23
	v_fma_f32 v60, v62, v98, v25
	v_fma_f32 v62, v64, v100, v27
	v_fma_f32 v65, v67, v103, v30
	v_fma_f32 v67, v69, v105, v32
	v_fma_f32 v2, v2, v109, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v56, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v132, v81, v41
	v_fma_f32 v80, v133, v80, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v78, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v117, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v61, s2
	v_cndmask_b32_e64 v28, v28, v63, s2
	v_cndmask_b32_e64 v1, v35, v1, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v57, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v24, v24, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v118, v46
	v_fma_f32 v83, v130, v83, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v86, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v110, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v58, s2
	v_cndmask_b32_e64 v27, v27, v62, s2
	v_cndmask_b32_e64 v30, v30, v65, s2
	v_cndmask_b32_e64 v32, v32, v67, s2
	v_cndmask_b32_e64 v2, v36, v2, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v21, v21, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v131, v82, v42
	v_fma_f32 v79, v134, v79, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v87, s3
	v_cndmask_b32_e64 v41, v41, v81, s3
	v_cndmask_b32_e64 v40, v40, v80, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v66, v102, v29
	v_fma_f32 v53, v53, v107, v34
	v_fma_f32 v4, v4, v111, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v60, s2
	v_cndmask_b32_e64 v10, v45, v10, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v26, v26, v26
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v19, 0, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v46, v11, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v22, v22, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v83, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v119, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v37, v3, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v32, v32, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v122, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v30, 0, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v125, v88, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v82, s3
	v_cndmask_b32_e64 v39, v39, v79, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v68, v104, v31
	v_fma_f32 v6, v6, v113, v40
	v_fma_f32 v7, v7, v114, v41
	v_fma_f32 v13, v13, v120, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v64, s2
	v_cndmask_b32_e64 v34, v34, v53, s2
	v_cndmask_b32_e64 v4, v38, v4, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v1, 0, v1
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v19, v19, v19
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v22, 0, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v116, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v55, s2
	v_cndmask_b32_e64 v12, v47, v12, s2
	v_cndmask_b32_e64 v15, v50, v15, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v2, 0, v2
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v21, v21, v21 :: v_dual_mul_f32 v30, v30, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v88, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v70, v106, v33
	v_fma_f32 v5, v5, v112, v39
	v_fma_f32 v8, v8, v115, v42
	v_fma_f32 v16, v16, v123, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v66, s2
	v_cndmask_b32_e64 v6, v40, v6, s2
	v_cndmask_b32_e64 v7, v41, v7, s2
	v_cndmask_b32_e64 v13, v48, v13, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v25, 0, v25
	v_max_f32_e32 v10, 0, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v28, v28, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v139.l, v19.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v22, v22, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v44, v9, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v15, v15, v15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v3, 0, v3
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.l, v21.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v121, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v68, s2
	v_cndmask_b32_e64 v5, v39, v5, s2
	v_cndmask_b32_e64 v8, v42, v8, s2
	v_cndmask_b32_e64 v16, v43, v16, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v6, v6, v6
	v_max_f32_e32 v7, v7, v7
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v34, 0, v34 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v139
	v_mov_b16_e64 v155.l, v1.h
	v_mov_b16_e64 v140.l, v22.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v15, 0, v15
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 1, v141
	v_mov_b16_e64 v154.l, v2.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v49, v14, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v8, v8, v8
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v16, v16, v16
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v7, 0, v7
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v24, v24, v24
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_mul_f32 v32, v32, v32
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v4, v4, v4
	v_mul_f32_e32 v34, v34, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.l, v25.h
	v_and_b32_e32 v54, 1, v155
	v_and_b32_e32 v37, 1, v140
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v20, v20, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.l, v26.h
	v_and_b32_e32 v53, 1, v154
	v_add3_u32 v21, v21, v38, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v31, v31, v31
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v145
	v_mov_b16_e64 v143.l, v23.h
	v_mov_b16_e64 v156.l, v4.h
	v_add3_u32 v1, v1, v54, 0x7fff
	v_add3_u32 v22, v22, v37, 0x7fff
	v_mov_b16_e32 v124.l, v20.h
	v_mov_b16_e64 v142.l, v24.h
	v_add3_u32 v2, v2, v53, 0x7fff
	v_mov_b16_e32 v22.l, v21.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_and_b32 v41, 1, v144
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v8, v8, v8
	v_dual_mul_f32 v5, v5, v5 :: v_dual_and_b32 v40, 1, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v157.l, v3.h
	v_mov_b16_e64 v158.l, v6.h
	v_add3_u32 v25, v25, v42, 0x7fff
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v55, 1, v156
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v35, 1, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v39, 1, v142
	v_add3_u32 v26, v26, v41, 0x7fff
	v_mov_b16_e64 v159.l, v5.h
	v_add3_u32 v19, v19, v36, 0x7fff
	v_add3_u32 v23, v23, v40, 0x7fff
	v_mov_b16_e32 v26.l, v25.h
	v_and_b32_e32 v56, 1, v157
	v_add3_u32 v1, v4, v55, 0x7fff
	v_and_b32_e32 v4, 1, v158
	v_mov_b16_e32 v21.l, v8.h
	v_mov_b16_e32 v21.h, v51.l
	v_add3_u32 v20, v20, v35, 0x7fff
	v_add3_u32 v24, v24, v39, 0x7fff
	v_add3_u32 v3, v3, v56, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e32 v23.l, v7.h
	v_mov_b16_e32 v23.h, v51.l
	v_add3_u32 v4, v6, v4, 0x7fff
	v_and_b32_e32 v19, 1, v159
	v_and_b32_e32 v6, 1, v21
	v_mov_b16_e64 v149.l, v29.h
	v_mov_b16_e32 v1.l, v3.h
	v_mov_b16_e64 v147.l, v27.h
	v_add3_u32 v3, v5, v19, 0x7fff
	v_add3_u32 v6, v8, v6, 0x7fff
	v_and_b32_e32 v5, 1, v23
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v11, v11
	v_dual_mul_f32 v11, v12, v12 :: v_dual_and_b32 v46, 1, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.h, v51.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v7, v5, 0x7fff
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v7.h, v51.l
	v_mov_b16_e32 v12.l, v8.h
	v_mov_b16_e32 v19.l, v11.h
	v_mov_b16_e32 v19.h, v51.l
	v_and_b32_e32 v44, 1, v147
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v4.l, v3.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v3, v9, v9 :: v_dual_and_b32 v12, 1, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v10, v7, 0x7fff
	v_and_b32_e32 v7, 1, v19
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v9.h, v51.l
	v_add3_u32 v8, v8, v12, 0x7fff
	v_mov_b16_e64 v151.l, v31.h
	v_add3_u32 v7, v11, v7, 0x7fff
	v_mov_b16_e64 v146.l, v28.h
	v_mov_b16_e32 v11.h, v51.l
	v_mov_b16_e32 v7.l, v8.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v15, v15 :: v_dual_mov_b32 v15, 0x5410
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v48, 1, v151
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v16, v16 :: v_dual_and_b32 v43, 1, v146
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v152.l, v34.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v3, v9, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v13, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v8.h
	v_mov_b16_e32 v13.h, v51.l
	v_mov_b16_e32 v10.h, v51.l
	v_mov_b16_e32 v5.l, v3.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v14, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e64 v153.l, v33.h
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v14.h, v51.l
	v_mov_b16_e32 v10.l, v3.h
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v13, 1, v13
	v_dual_mov_b32 v16, 0x7632 :: v_dual_and_b32 v49, 1, v152
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v50, 1, v153
	v_add3_u32 v9, v9, v11, 0x7fff
	v_and_b32_e32 v11, 1, v14
	v_mov_b16_e64 v150.l, v32.h
	v_add3_u32 v8, v8, v13, 0x7fff
	v_add3_u32 v3, v3, v10, 0x7fff
	v_mov_b16_e64 v148.l, v30.h
	v_mov_b16_e32 v3.l, v9.h
	v_add3_u32 v0, v12, v11, 0x7fff
	v_cndmask_b32_e32 v9, v20, v24, vcc_lo
	v_add3_u32 v33, v33, v50, 0x7fff
	v_and_b32_e32 v47, 1, v150
	v_mov_b16_e32 v0.l, v8.h
	v_cndmask_b32_e32 v8, v24, v20, vcc_lo
	v_cndmask_b32_e32 v20, v4, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v4, vcc_lo
	v_cndmask_b32_e32 v4, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v16, vcc_lo
	v_add3_u32 v34, v34, v49, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_and_b32_e32 v45, 1, v148
	v_add3_u32 v29, v29, v46, 0x7fff
	v_dual_cndmask_b32 v16, v6, v1 :: v_dual_cndmask_b32 v1, v1, v6
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v15, 8, v15
	v_add3_u32 v27, v27, v44, 0x7fff
	v_add3_u32 v31, v31, v48, 0x7fff
	v_add3_u32 v30, v30, v45, 0x7fff
	v_add3_u32 v28, v28, v43, 0x7fff
	v_add3_u32 v32, v32, v47, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	v_dual_cndmask_b32 v21, v3, v5 :: v_dual_and_b32 v4, 0x540054, v4
	v_cndmask_b32_e32 v3, v5, v3, vcc_lo
	v_and_b32_e32 v5, 0x760076, v6
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v32.l, v31.h
	v_cndmask_b32_e32 v11, v22, v26, vcc_lo
	v_cndmask_b32_e32 v19, v30, v34, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e32 v13, v28, v32, vcc_lo
	v_cndmask_b32_e32 v15, v0, v7, vcc_lo
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_cndmask_b32_e32 v10, v26, v22, vcc_lo
	v_cndmask_b32_e32 v14, v34, v30, vcc_lo
	v_permlanex16_b32 v6, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v4
	v_and_b32_e32 v22, 0x7060706, v5
	v_permlanex16_b32 v23, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v12, v32, v28, vcc_lo
	v_permlanex16_b32 v9, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v19
	v_perm_b32 v1, v6, v8, v22
	v_perm_b32 v2, v7, v10, v19
	v_perm_b32 v3, v7, v10, v22
	v_perm_b32 v6, v11, v14, v19
	v_perm_b32 v7, v11, v14, v22
	v_perm_b32 v10, v23, v16, v19
	v_perm_b32 v11, v23, v16, v22
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v18, v17, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v4, v9, v12, v19
	v_perm_b32 v5, v9, v12, v22
	v_perm_b32 v8, v13, v20, v19
	v_perm_b32 v9, v13, v20, v22
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v18, v52, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v12, v24, v21, v19
	v_perm_b32 v13, v24, v21, v22
	v_perm_b32 v14, v25, v15, v19
	v_perm_b32 v15, v25, v15, v22
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v16, s[0:3], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v17, s[0:3], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 194
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9260
; TotalNumSgprs: 47
; NumVgprs: 194
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
