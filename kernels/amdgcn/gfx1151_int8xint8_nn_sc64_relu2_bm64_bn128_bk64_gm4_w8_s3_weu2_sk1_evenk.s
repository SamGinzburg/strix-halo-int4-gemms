	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v13, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v12, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v8, 62, v2
	v_and_b32_e32 v3, 48, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v13, 0x420, v13
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v11, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v15, 48, v10
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v68, 8, v0
	v_and_b32_e32 v69, 32, v0
	v_and_b32_e32 v14, 48, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v70, v6, v15
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v8
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s12, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v8, v13, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v7, v7, 1, v14
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v57, 0, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v71, v12, 10, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 2, v7
	v_or_b32_e32 v14, 4, v7
	v_or_b32_e32 v15, 6, v7
	v_or_b32_e32 v16, 8, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v72, 0x90, v71
	v_xor_b32_e32 v73, 0x120, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v74, 0x1b0, v71
	v_xor_b32_e32 v75, 0x210, v71
	v_xor_b32_e32 v76, 0x330, v71
	v_xor_b32_e32 v77, 0x3a0, v71
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, 0, v71
	v_add_nc_u32_e32 v59, 0, v72
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v17, 10, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_u32_f32 s5, s5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v18, 12, v7
	v_or_b32_e32 v19, 14, v7
	v_or_b32_e32 v20, 64, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_i32 s8, s8, s5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v21, 0x42, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_hi_u32 s8, s5, s8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v22, 0x44, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v23, 0x46, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v24, 0x48, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 0x4a, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cselect_b32 s4, s9, s5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 0x4c, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_xor_b32 s4, s4, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v60, 0, v73
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_sub_i32 s14, s4, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v61, 0, v74
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v62, 0, v75
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, 0, v76
	v_add_nc_u32_e32 v64, 0, v77
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v66, v1, 4, v4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s18, s19
	s_add_i32 s18, s18, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_mov_b64 s[20:21], s[6:7]
	s_cselect_b32 s6, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s6, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, s6, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s6, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s6, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s3
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s35, s26
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s12, s34, s12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v67, v2, v3, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s2, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s35, 6, v2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_mov_b32 s23, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v5, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v4, s[20:23], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s40, s26, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s26, v67
	v_add_nc_u32_e32 v4, s40, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_mov_b32 s12, 0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[33:36], v2, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v5, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b128 v[41:44], v3, s[4:7], 0 offen
	buffer_load_b128 v[45:48], v4, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v9, v5, 16, v2
	v_lshlrev_b32_e32 v5, 3, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 0x4e, v7
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v10, 32, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v49, v29, v25, 0x5010400
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v50, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v51, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v52, v32, v28, 0x5010400
	v_perm_b32 v53, v32, v28, 0x7030602
	v_and_b16 v25.l, 0xff, v49.l
	v_lshrrev_b32_e32 v54, 8, v49
	v_lshrrev_b32_e32 v55, 24, v49
	v_and_b16 v25.h, 0xff, v49.h
	v_and_b16 v26.l, 0xff, v29.l
	v_lshrrev_b32_e32 v49, 8, v29
	v_lshrrev_b32_e32 v56, 24, v29
	v_and_b16 v26.h, 0xff, v29.h
	v_and_b16 v27.l, 0xff, v50.l
	v_lshrrev_b32_e32 v65, 8, v50
	v_lshrrev_b32_e32 v78, 24, v50
	v_and_b16 v27.h, 0xff, v50.h
	v_and_b16 v28.l, 0xff, v30.l
	v_lshrrev_b32_e32 v50, 8, v30
	v_lshrrev_b32_e32 v79, 24, v30
	v_and_b16 v28.h, 0xff, v30.h
	v_and_b16 v29.l, 0xff, v51.l
	v_lshrrev_b32_e32 v80, 8, v51
	v_lshrrev_b32_e32 v81, 24, v51
	v_and_b16 v29.h, 0xff, v51.h
	v_and_b16 v30.l, 0xff, v31.l
	v_lshrrev_b32_e32 v51, 8, v31
	v_lshrrev_b32_e32 v82, 24, v31
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v52.l
	v_lshrrev_b32_e32 v83, 8, v52
	v_lshrrev_b32_e32 v84, 24, v52
	v_and_b16 v31.h, 0xff, v52.h
	v_and_b16 v32.l, 0xff, v53.l
	v_lshrrev_b32_e32 v52, 8, v53
	v_lshrrev_b32_e32 v85, 24, v53
	v_and_b16 v32.h, 0xff, v53.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v53, v37, v33, 0x5010400
	v_perm_b32 v86, v37, v33, 0x7030602
	v_perm_b32 v87, v38, v34, 0x5010400
	v_perm_b32 v88, v38, v34, 0x7030602
	v_perm_b32 v89, v39, v35, 0x5010400
	v_perm_b32 v90, v39, v35, 0x7030602
	v_perm_b32 v91, v40, v36, 0x5010400
	v_perm_b32 v92, v40, v36, 0x7030602
	v_lshlrev_b16 v33.l, 8, v54.l
	v_lshlrev_b16 v35.l, 8, v65.l
	v_lshrrev_b32_e32 v65, 8, v53
	v_lshlrev_b16 v33.h, 8, v55.l
	v_lshlrev_b16 v35.h, 8, v78.l
	v_lshrrev_b32_e32 v78, 24, v53
	v_lshlrev_b16 v34.l, 8, v49.l
	v_lshlrev_b16 v36.h, 8, v79.l
	v_lshrrev_b32_e32 v79, 8, v86
	v_lshlrev_b16 v34.h, 8, v56.l
	v_lshlrev_b16 v37.l, 8, v80.l
	v_lshrrev_b32_e32 v80, 24, v86
	v_lshlrev_b16 v36.l, 8, v50.l
	v_lshlrev_b16 v37.h, 8, v81.l
	v_lshlrev_b16 v38.l, 8, v51.l
	v_lshlrev_b16 v38.h, 8, v82.l
	v_lshlrev_b16 v39.l, 8, v83.l
	v_lshlrev_b16 v39.h, 8, v84.l
	v_lshlrev_b16 v40.l, 8, v52.l
	v_lshlrev_b16 v40.h, 8, v85.l
	v_and_b16 v49.l, 0xff, v53.l
	v_and_b16 v49.h, 0xff, v53.h
	v_and_b16 v50.l, 0xff, v86.l
	v_and_b16 v50.h, 0xff, v86.h
	v_and_b16 v51.l, 0xff, v87.l
	v_lshrrev_b32_e32 v81, 8, v87
	v_lshrrev_b32_e32 v82, 24, v87
	v_and_b16 v51.h, 0xff, v87.h
	v_and_b16 v52.l, 0xff, v88.l
	v_lshrrev_b32_e32 v83, 8, v88
	v_lshrrev_b32_e32 v84, 24, v88
	v_and_b16 v52.h, 0xff, v88.h
	v_and_b16 v53.l, 0xff, v89.l
	v_lshrrev_b32_e32 v85, 8, v89
	v_lshrrev_b32_e32 v86, 24, v89
	v_and_b16 v53.h, 0xff, v89.h
	v_and_b16 v54.l, 0xff, v90.l
	v_lshrrev_b32_e32 v87, 8, v90
	v_lshrrev_b32_e32 v88, 24, v90
	v_and_b16 v54.h, 0xff, v90.h
	v_and_b16 v55.l, 0xff, v91.l
	v_lshrrev_b32_e32 v89, 8, v91
	v_lshrrev_b32_e32 v90, 24, v91
	v_and_b16 v55.h, 0xff, v91.h
	v_lshrrev_b32_e32 v91, 8, v92
	v_lshrrev_b32_e32 v93, 24, v92
	v_or_b16 v25.l, v25.l, v33.l
	v_lshlrev_b16 v33.l, 8, v65.l
	v_or_b16 v25.h, v25.h, v33.h
	v_lshlrev_b16 v33.h, 8, v78.l
	v_or_b16 v26.l, v26.l, v34.l
	v_lshlrev_b16 v34.l, 8, v79.l
	v_or_b16 v26.h, v26.h, v34.h
	v_lshlrev_b16 v34.h, 8, v80.l
	v_and_b16 v56.l, 0xff, v92.l
	v_and_b16 v56.h, 0xff, v92.h
	v_or_b16 v27.l, v27.l, v35.l
	v_or_b16 v27.h, v27.h, v35.h
	v_or_b16 v28.l, v28.l, v36.l
	v_or_b16 v28.h, v28.h, v36.h
	v_or_b16 v29.l, v29.l, v37.l
	v_or_b16 v29.h, v29.h, v37.h
	v_or_b16 v30.l, v30.l, v38.l
	v_or_b16 v30.h, v30.h, v38.h
	v_or_b16 v31.l, v31.l, v39.l
	v_or_b16 v31.h, v31.h, v39.h
	v_or_b16 v32.l, v32.l, v40.l
	v_or_b16 v32.h, v32.h, v40.h
	v_lshlrev_b16 v35.l, 8, v81.l
	v_lshlrev_b16 v35.h, 8, v82.l
	v_lshlrev_b16 v36.l, 8, v83.l
	v_lshlrev_b16 v36.h, 8, v84.l
	v_lshlrev_b16 v37.l, 8, v85.l
	v_lshlrev_b16 v37.h, 8, v86.l
	v_lshlrev_b16 v38.l, 8, v87.l
	v_lshlrev_b16 v38.h, 8, v88.l
	v_lshlrev_b16 v39.l, 8, v89.l
	v_lshlrev_b16 v39.h, 8, v90.l
	v_lshlrev_b16 v40.l, 8, v91.l
	v_lshlrev_b16 v40.h, 8, v93.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v57, v[41:44] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v25
	ds_store_b16_d16_hi v58, v25 offset:64
	ds_store_b16 v59, v26
	ds_store_b16_d16_hi v59, v26 offset:64
	ds_store_b16 v60, v27
	ds_store_b16_d16_hi v60, v27 offset:64
	ds_store_b16 v61, v28
	ds_store_b16_d16_hi v61, v28 offset:64
	ds_store_b16 v62, v29
	ds_store_b16_d16_hi v62, v29 offset:64
	ds_store_b16 v58, v30 offset:640
	ds_store_b16_d16_hi v58, v30 offset:704
	ds_store_b16 v63, v31
	ds_store_b16_d16_hi v63, v31 offset:64
	ds_store_b16 v64, v32
	ds_store_b16_d16_hi v64, v32 offset:64
	v_or_b16 v25.l, v49.l, v33.l
	v_or_b16 v25.h, v49.h, v33.h
	v_or_b16 v26.l, v50.l, v34.l
	v_or_b16 v26.h, v50.h, v34.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.l, v51.l, v35.l
	v_or_b16 v27.h, v51.h, v35.h
	v_or_b16 v28.l, v52.l, v36.l
	v_or_b16 v28.h, v52.h, v36.h
	v_or_b16 v29.l, v53.l, v37.l
	v_or_b16 v29.h, v53.h, v37.h
	v_or_b16 v30.l, v54.l, v38.l
	v_or_b16 v30.h, v54.h, v38.h
	v_or_b16 v31.l, v55.l, v39.l
	v_or_b16 v31.h, v55.h, v39.h
	v_or_b16 v32.l, v56.l, v40.l
	v_or_b16 v32.h, v56.h, v40.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v57, v[45:48] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v25 offset:8192
	ds_store_b16_d16_hi v58, v25 offset:8256
	ds_store_b16 v59, v26 offset:8192
	ds_store_b16_d16_hi v59, v26 offset:8256
	ds_store_b16 v60, v27 offset:8192
	ds_store_b16_d16_hi v60, v27 offset:8256
	ds_store_b16 v61, v28 offset:8192
	ds_store_b16_d16_hi v61, v28 offset:8256
	ds_store_b16 v62, v29 offset:8192
	ds_store_b16_d16_hi v62, v29 offset:8256
	ds_store_b16 v58, v30 offset:8832
	ds_store_b16_d16_hi v58, v30 offset:8896
	ds_store_b16 v63, v31 offset:8192
	ds_store_b16_d16_hi v63, v31 offset:8256
	ds_store_b16 v64, v32 offset:8192
	ds_store_b16_d16_hi v64, v32 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v25, 0x430, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v80, 8, v0
	v_and_b32_e32 v81, 32, v0
	v_and_b32_e32 v78, 0x800, v4
	v_lshl_or_b32 v79, v1, 6, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v62, v2, 6, v25
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
.LBB0_3:                                ; %Flow43
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v25, s34, v9
	v_or_b32_e32 v26, s34, v10
	s_ashr_i32 s41, s13, 6
	v_or_b32_e32 v59, s33, v7
	v_or_b32_e32 v58, s33, v13
	v_mul_lo_u32 v60, v25, s41
	v_mul_lo_u32 v61, v26, s41
	v_or_b32_e32 v57, s33, v14
	v_or_b32_e32 v56, s33, v15
	v_or_b32_e32 v54, s33, v16
	v_or_b32_e32 v51, s33, v17
	v_or_b32_e32 v48, s33, v18
	v_or_b32_e32 v44, s33, v19
	v_or_b32_e32 v37, s33, v20
	v_or_b32_e32 v34, s33, v21
	v_or_b32_e32 v33, s33, v22
	v_or_b32_e32 v31, s33, v23
	v_or_b32_e32 v29, s33, v24
	v_or_b32_e32 v32, s33, v6
	v_or_b32_e32 v30, s33, v8
	v_or_b32_e32 v27, s33, v12
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v6, v0, 5, 1
	v_bfe_i32 v7, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v6, 0x420, v6
	v_lshl_or_b32 v79, v1, 6, v5
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v3, 0x430, v3
	v_and_b32_e32 v78, 0x800, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x210, v7, v6
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v80, s35, v66
	v_lshl_or_b32 v62, v2, 6, v3
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v79
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v81, v1, v78
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v64, 48, v62
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v7, s18
	v_xor_b32_e32 v82, 16, v81
	v_xor_b32_e32 v83, 32, v81
	v_xor_b32_e32 v84, 48, v81
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_mov_b32_e32 v13, 0
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v52, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s27, s41, 3
	s_add_i32 s11, s40, 64
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
	s_add_i32 s27, s27, -3
	s_mov_b32 s44, 1
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s14, s26
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s26, s40
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s40, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v85, s40, v67
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s40, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[117:120], v85, s[4:7], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v85, v60, s14, 1
	v_add_lshl_u32 v88, v61, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v86, s16, v66
	v_add_nc_u32_e32 v87, s16, v80
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v59, s14, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v90, v58, s14, 1
	v_add_lshl_u32 v91, v57, s14, 1
	v_add_lshl_u32 v92, v56, s14, 1
	v_add_lshl_u32 v93, v54, s14, 1
	v_add_lshl_u32 v94, v51, s14, 1
	v_add_lshl_u32 v95, v48, s14, 1
	v_add_lshl_u32 v96, v44, s14, 1
	v_add_lshl_u32 v97, v37, s14, 1
	v_add_lshl_u32 v98, v34, s14, 1
	v_add_lshl_u32 v99, v33, s14, 1
	v_add_lshl_u32 v100, v31, s14, 1
	v_add_lshl_u32 v101, v29, s14, 1
	v_add_lshl_u32 v102, v32, s14, 1
	v_add_lshl_u32 v103, v30, s14, 1
	v_add_lshl_u32 v104, v27, s14, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[121:124], v86, s[20:23], 0 offen
	buffer_load_b128 v[125:128], v87, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v86, 0x80000000, v88 :: v_dual_cndmask_b32 v87, 0x80000000, v89
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v88, 0x80000000, v90 :: v_dual_cndmask_b32 v89, 0x80000000, v91
	v_dual_cndmask_b32 v90, 0x80000000, v92 :: v_dual_cndmask_b32 v91, 0x80000000, v93
	v_dual_cndmask_b32 v92, 0x80000000, v94 :: v_dual_cndmask_b32 v93, 0x80000000, v95
	v_dual_cndmask_b32 v94, 0x80000000, v96 :: v_dual_cndmask_b32 v95, 0x80000000, v97
	v_dual_cndmask_b32 v96, 0x80000000, v98 :: v_dual_cndmask_b32 v97, 0x80000000, v99
	v_dual_cndmask_b32 v98, 0x80000000, v100 :: v_dual_cndmask_b32 v99, 0x80000000, v101
	v_dual_cndmask_b32 v100, 0x80000000, v102 :: v_dual_cndmask_b32 v101, 0x80000000, v103
	v_cndmask_b32_e32 v102, 0x80000000, v104, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v185, v85, s[28:31], 0 offen
	buffer_load_u16 v186, v86, s[28:31], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v187, v87, s[36:39], 0 offen
	buffer_load_u16 v188, v88, s[36:39], 0 offen
	buffer_load_u16 v189, v89, s[36:39], 0 offen
	buffer_load_u16 v190, v90, s[36:39], 0 offen
	buffer_load_u16 v191, v91, s[36:39], 0 offen
	buffer_load_u16 v192, v92, s[36:39], 0 offen
	buffer_load_u16 v193, v93, s[36:39], 0 offen
	buffer_load_u16 v194, v94, s[36:39], 0 offen
	buffer_load_u16 v195, v95, s[36:39], 0 offen
	buffer_load_u16 v196, v96, s[36:39], 0 offen
	buffer_load_u16 v197, v97, s[36:39], 0 offen
	buffer_load_u16 v198, v98, s[36:39], 0 offen
	buffer_load_u16 v199, v99, s[36:39], 0 offen
	buffer_load_u16 v200, v100, s[36:39], 0 offen
	buffer_load_u16 v201, v101, s[36:39], 0 offen
	buffer_load_u16 v202, v102, s[36:39], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v85, s14, v62
	v_add_nc_u32_e32 v86, s14, v63
	v_add_nc_u32_e32 v87, s14, v65
	v_add_nc_u32_e32 v88, s14, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v89, s15, v81
	v_add_nc_u32_e32 v90, s15, v82
	v_add_nc_u32_e32 v91, s15, v83
	v_add_nc_u32_e32 v92, s15, v84
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[101:104], v85
	ds_load_b128 v[129:132], v85 offset:2048
	ds_load_b128 v[133:136], v86
	ds_load_b128 v[137:140], v86 offset:2048
	ds_load_b128 v[141:144], v87
	ds_load_b128 v[145:148], v87 offset:2048
	ds_load_b128 v[149:152], v88
	ds_load_b128 v[153:156], v88 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v89
	ds_load_b128 v[157:160], v89 offset:4096
	ds_load_b128 v[161:164], v90
	ds_load_b128 v[165:168], v90 offset:4096
	ds_load_b128 v[169:172], v91
	ds_load_b128 v[173:176], v91 offset:4096
	ds_load_b128 v[177:180], v92
	ds_load_b128 v[181:184], v92 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s44, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s14, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s44, s14, 0
	s_mov_b32 s12, s43
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s15, s44, 12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s16, s15, 0
	s_mov_b32 s10, s42
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s43, s16, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s42, s16, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[85:92], v[109:112], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[157:160], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[109:112], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[129:132], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[161:164], v[133:136], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[133:136], v[93:100] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[137:140], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[137:140], v[109:116] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[85:92], v[169:172], v[141:144], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[173:176], v[141:144], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[145:148], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[173:176], v[145:148], v[109:116] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	v_wmma_i32_16x16x16_iu8 v[85:92], v[177:180], v[149:152], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[181:184], v[149:152], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[177:180], v[153:156], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[181:184], v[153:156], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v85
	v_cvt_f32_i32_e32 v130, v86
	v_cvt_f32_i32_e32 v131, v87
	v_cvt_f32_i32_e32 v132, v88
	v_cvt_f32_i32_e32 v133, v89
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v137, v93
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v138, v94
	v_cvt_f32_i32_e32 v140, v96
	v_cvt_f32_i32_e32 v144, v100
	v_cvt_f32_i32_e32 v139, v95
	v_cvt_f32_i32_e32 v141, v97
	v_cvt_f32_i32_e32 v142, v98
	v_cvt_f32_i32_e32 v143, v99
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(18)
	v_perm_b32 v86, v125, v121, 0x5010400
	v_perm_b32 v87, v125, v121, 0x7030602
	v_perm_b32 v88, v126, v122, 0x5010400
	v_perm_b32 v89, v126, v122, 0x7030602
	v_perm_b32 v90, v127, v123, 0x5010400
	v_perm_b32 v91, v127, v123, 0x7030602
	v_perm_b32 v93, v128, v124, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v127, 16, v186
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v92, v128, v124, 0x5010400
	v_lshrrev_b32_e32 v94, 8, v86
	v_lshrrev_b32_e32 v96, 8, v87
	v_lshrrev_b32_e32 v100, 8, v89
	v_lshrrev_b32_e32 v124, 8, v93
	v_and_b16 v85.l, 0xff, v86.l
	v_lshrrev_b32_e32 v95, 24, v86
	v_and_b16 v86.l, 0xff, v87.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v157, 16, v200
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v158, 16, v201
	v_lshlrev_b32_e32 v153, 16, v196
	v_lshlrev_b32_e32 v152, 16, v195
	v_lshlrev_b32_e32 v151, 16, v194
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v126, 16, v185
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v203, s16, v70
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v159, 16, v202
	v_lshlrev_b32_e32 v150, 16, v193
	v_lshlrev_b32_e32 v145, 16, v188
	v_lshlrev_b32_e32 v128, 16, v187
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v126, v157
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v203, v[117:120] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v117, 24, v89
	v_lshrrev_b32_e32 v97, 24, v87
	v_and_b16 v87.l, 0xff, v88.l
	v_lshrrev_b32_e32 v98, 8, v88
	v_lshrrev_b32_e32 v99, 24, v88
	v_and_b16 v88.l, 0xff, v89.l
	v_and_b16 v89.l, 0xff, v90.l
	v_lshrrev_b32_e32 v118, 8, v90
	v_lshrrev_b32_e32 v119, 24, v90
	v_and_b16 v90.l, 0xff, v91.l
	v_lshrrev_b32_e32 v120, 8, v91
	v_lshrrev_b32_e32 v121, 24, v91
	v_and_b16 v91.l, 0xff, v92.l
	v_lshrrev_b32_e32 v122, 8, v92
	v_lshrrev_b32_e32 v123, 24, v92
	v_and_b16 v92.l, 0xff, v93.l
	v_lshrrev_b32_e32 v125, 24, v93
	v_lshlrev_b16 v93.l, 8, v94.l
	v_lshlrev_b16 v94.l, 8, v96.l
	v_lshlrev_b16 v96.l, 8, v100.l
	v_lshlrev_b16 v96.h, 8, v117.l
	v_lshlrev_b16 v100.l, 8, v124.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v126, v151
	v_mul_f32_e32 v151, v127, v151
	v_mul_f32_e32 v117, v126, v128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v94.h, 8, v97.l
	v_lshlrev_b16 v97.l, 8, v118.l
	v_lshlrev_b16 v99.h, 8, v123.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v123, v126, v150 :: v_dual_fmac_f32 v12, v117, v129
	v_mul_f32_e32 v150, v127, v150
	v_mul_f32_e32 v118, v126, v145
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v154, 16, v197
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v157, v127, v157 :: v_dual_lshlrev_b32 v156, 16, v199
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v95.h, 8, v99.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v13, v118, v130
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v149, 16, v192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v99.l, 8, v122.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v161, v126, v154
	v_mul_f32_e32 v154, v127, v154
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v148, 16, v191
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v126, v149
	v_mul_f32_e32 v149, v127, v149
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v147, 16, v190
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v163, v126, v156 :: v_dual_add_nc_u32 v206, s43, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v85.h, 0xff, v86.h
	v_and_b16 v86.h, 0xff, v87.h
	v_and_b16 v87.h, 0xff, v88.h
	v_and_b16 v88.h, 0xff, v89.h
	v_and_b16 v89.h, 0xff, v90.h
	v_and_b16 v90.h, 0xff, v91.h
	v_and_b16 v91.h, 0xff, v92.h
	v_and_b16 v92.h, 0xff, v93.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v156, v127, v156 :: v_dual_lshlrev_b32 v155, 16, v198
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v146, 16, v189
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v93.h, 8, v95.l
	v_lshlrev_b16 v95.l, 8, v98.l
	v_lshlrev_b16 v98.l, 8, v120.l
	v_lshlrev_b16 v98.h, 8, v121.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v121, v126, v148
	v_mul_f32_e32 v148, v127, v148
	v_mul_f32_e32 v120, v126, v147
	v_dual_mul_f32 v147, v127, v147 :: v_dual_add_nc_u32 v210, s43, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v97.h, 8, v119.l
	v_lshlrev_b16 v100.h, 8, v125.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v162, v126, v155 :: v_dual_mul_f32 v145, v127, v145
	v_dual_mul_f32 v128, v127, v128 :: v_dual_add_nc_u32 v207, s43, v74
	v_mul_f32_e32 v155, v127, v155
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v209, s43, v76
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v119, v126, v146
	v_dual_mul_f32 v146, v127, v146 :: v_dual_fmac_f32 v15, v120, v132
	v_dual_mul_f32 v165, v126, v158 :: v_dual_add_nc_u32 v208, s43, v75
	v_mul_f32_e32 v158, v127, v158
	v_mul_f32_e32 v160, v126, v153
	v_dual_mul_f32 v153, v127, v153 :: v_dual_add_nc_u32 v204, s43, v71
	v_mul_f32_e32 v125, v126, v152
	v_mul_f32_e32 v152, v127, v152
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v16, v121, v133 :: v_dual_add_nc_u32 v205, s43, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v126, v126, v159
	v_mul_f32_e32 v127, v127, v159
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v85.l, v85.l, v93.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v14, v119, v131 :: v_dual_fmac_f32 v17, v122, v134
	v_dual_fmac_f32 v18, v123, v135 :: v_dual_fmac_f32 v19, v124, v136
	v_dual_fmac_f32 v20, v125, v137 :: v_dual_fmac_f32 v21, v160, v138
	v_dual_fmac_f32 v22, v161, v139 :: v_dual_fmac_f32 v23, v162, v140
	v_dual_fmac_f32 v24, v163, v141 :: v_dual_fmac_f32 v25, v164, v142
	v_fmac_f32_e32 v26, v165, v143
	v_dual_fmac_f32 v28, v126, v144 :: v_dual_fmac_f32 v35, v128, v101
	v_dual_fmac_f32 v36, v145, v102 :: v_dual_fmac_f32 v39, v147, v104
	v_dual_fmac_f32 v38, v146, v103 :: v_dual_fmac_f32 v41, v149, v106
	v_dual_fmac_f32 v40, v148, v105 :: v_dual_fmac_f32 v43, v151, v108
	v_dual_fmac_f32 v42, v150, v107 :: v_dual_fmac_f32 v47, v153, v110
	v_dual_fmac_f32 v46, v152, v109 :: v_dual_fmac_f32 v49, v154, v111
	v_dual_fmac_f32 v50, v155, v112 :: v_dual_fmac_f32 v53, v157, v114
	v_dual_fmac_f32 v52, v156, v113 :: v_dual_fmac_f32 v55, v158, v115
	v_fmac_f32_e32 v45, v127, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v85.h, v85.h, v93.h
	v_or_b16 v86.l, v86.l, v94.l
	v_or_b16 v86.h, v86.h, v94.h
	v_or_b16 v87.l, v87.l, v95.l
	v_or_b16 v87.h, v87.h, v95.h
	v_or_b16 v88.l, v88.l, v96.l
	v_or_b16 v88.h, v88.h, v96.h
	v_or_b16 v89.l, v89.l, v97.l
	v_or_b16 v89.h, v89.h, v97.h
	v_or_b16 v90.l, v90.l, v98.l
	v_or_b16 v90.h, v90.h, v98.h
	v_or_b16 v91.l, v91.l, v99.l
	v_or_b16 v91.h, v91.h, v99.h
	v_or_b16 v92.l, v92.l, v100.l
	v_or_b16 v92.h, v92.h, v100.h
	ds_store_b16 v204, v85
	ds_store_b16_d16_hi v204, v85 offset:64
	ds_store_b16 v205, v86
	ds_store_b16_d16_hi v205, v86 offset:64
	ds_store_b16 v206, v87
	ds_store_b16_d16_hi v206, v87 offset:64
	ds_store_b16 v207, v88
	ds_store_b16_d16_hi v207, v88 offset:64
	ds_store_b16 v208, v89
	ds_store_b16_d16_hi v208, v89 offset:64
	ds_store_b16 v204, v90 offset:640
	ds_store_b16_d16_hi v204, v90 offset:704
	ds_store_b16 v209, v91
	ds_store_b16_d16_hi v209, v91 offset:64
	ds_store_b16 v210, v92
	ds_store_b16_d16_hi v210, v92 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v80, v68 :: v_dual_mov_b32 v81, v69
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v77, 0
	v_xor_b32_e32 v6, v2, v79
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v140, v6, v78
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v78, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_xor_b32_e32 v141, 16, v140
	v_xor_b32_e32 v143, 32, v140
	v_xor_b32_e32 v142, 48, v140
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
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
	v_add_nc_u32_e32 v6, s12, v143
	v_add_nc_u32_e32 v8, s12, v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v90, s23 :: v_dual_add_nc_u32 v7, s12, v142
	v_mov_b32_e32 v89, s22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[99:102], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v83, s16 :: v_dual_add_nc_u32 v6, s10, v62
	v_dual_mov_b32 v85, s18 :: v_dual_add_nc_u32 v66, s12, v141
	v_mov_b32_e32 v87, s20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[103:106], v8 offset:4096
	ds_load_b128 v[107:110], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s10, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v88, s21 :: v_dual_add_nc_u32 v67, s10, v63
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v6 offset:2048
	ds_load_b128 v[91:94], v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v66 offset:4096
	ds_load_b128 v[119:122], v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[123:126], v8 offset:2048
	ds_load_b128 v[127:130], v8
	ds_load_b128 v[131:134], v67 offset:2048
	ds_load_b128 v[135:138], v67
	v_add_nc_u32_e32 v6, s10, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v86, s19
	v_mov_b32_e32 v84, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[148:151], v7
	ds_load_b128 v[152:155], v7 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[156:159], v6 offset:2048
	ds_load_b128 v[144:147], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[107:110], v[91:94], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[91:94], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[107:110], v[111:114], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[111:114], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[119:122], v[135:138], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[115:118], v[135:138], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[119:122], v[131:134], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[115:118], v[131:134], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[99:102], v[127:130], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[2:5], v[127:130], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[123:126], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[2:5], v[123:126], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[148:151], v[144:147], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[152:155], v[144:147], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[148:151], v[156:159], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[152:155], v[156:159], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v68
	v_cvt_f32_i32_e32 v3, v69
	v_cvt_f32_i32_e32 v4, v70
	v_cvt_f32_i32_e32 v5, v71
	v_cvt_f32_i32_e32 v6, v72
	v_cvt_f32_i32_e32 v7, v73
	v_cvt_f32_i32_e32 v8, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v68, v76
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v91
	v_cvt_f32_i32_e32 v76, v92
	v_cvt_f32_i32_e32 v77, v93
	v_cvt_f32_i32_e32 v78, v94
	v_cvt_f32_i32_e32 v79, v95
	v_cvt_f32_i32_e32 v80, v96
	v_cvt_f32_i32_e32 v81, v97
	v_cvt_f32_i32_e32 v82, v98
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v67, v67
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
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v91, v60, s4, 1
	v_add_lshl_u32 v92, v61, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v93, v59, s4, 1
	v_add_lshl_u32 v94, v58, s4, 1
	v_add_lshl_u32 v95, v57, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v96, v56, s4, 1
	v_add_lshl_u32 v97, v54, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_add_lshl_u32 v98, v51, s4, 1
	v_add_lshl_u32 v99, v48, s4, 1
	v_add_lshl_u32 v100, v44, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_add_lshl_u32 v101, v37, s4, 1
	s_and_b32 s25, s25, 0xffff
	v_add_lshl_u32 v102, v34, s4, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v103, v33, s4, 1
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x7
	buffer_load_u16 v119, v93, s[24:27], 0 offen
	buffer_load_u16 v122, v94, s[24:27], 0 offen
	buffer_load_u16 v126, v95, s[24:27], 0 offen
	buffer_load_u16 v127, v96, s[24:27], 0 offen
	buffer_load_u16 v128, v97, s[24:27], 0 offen
	buffer_load_u16 v129, v98, s[24:27], 0 offen
	buffer_load_u16 v130, v99, s[24:27], 0 offen
	buffer_load_u16 v131, v100, s[24:27], 0 offen
	v_add_lshl_u32 v96, v31, s4, 1
	v_add_lshl_u32 v97, v29, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v101 :: v_dual_cndmask_b32 v94, 0x80000000, v102
	v_add_lshl_u32 v98, v32, s4, 1
	v_add_lshl_u32 v99, v30, s4, 1
	v_add_lshl_u32 v100, v27, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v103 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x7
	buffer_load_u16 v132, v93, s[24:27], 0 offen
	buffer_load_u16 v133, v94, s[24:27], 0 offen
	buffer_load_u16 v134, v95, s[24:27], 0 offen
	buffer_load_u16 v135, v96, s[24:27], 0 offen
	buffer_load_u16 v136, v97, s[24:27], 0 offen
	buffer_load_u16 v137, v98, s[24:27], 0 offen
	buffer_load_u16 v138, v99, s[24:27], 0 offen
	buffer_load_u16 v139, v100, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v91, v91, s[8:11], 0 offen
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v125, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
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
	v_add_nc_u32_e32 v1, s43, v143
	v_add_nc_u32_e32 v93, s43, v141
	v_add_nc_u32_e32 v94, s43, v142
	v_add_nc_u32_e32 v95, s43, v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v147, s19 :: v_dual_mov_b32 v146, s18
	v_mov_b32_e32 v144, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[148:151], v1 offset:4096
	ds_load_b128 v[152:155], v1
	ds_load_b128 v[156:159], v93 offset:4096
	ds_load_b128 v[160:163], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v140, s12 :: v_dual_add_nc_u32 v1, s42, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[172:175], v1 offset:2048
	ds_load_b128 v[109:112], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v142, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[164:167], v95 offset:4096
	ds_load_b128 v[168:171], v95
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v95, s42, v63
	v_add_nc_u32_e32 v93, s42, v65
	ds_load_b128 v[180:183], v95 offset:2048
	ds_load_b128 v[184:187], v95
	v_add_nc_u32_e32 v1, s42, v64
	ds_load_b128 v[62:65], v93 offset:2048
	ds_load_b128 v[176:179], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v145, s17
	v_mov_b32_e32 v143, s15
	v_mov_b32_e32 v141, s13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[188:191], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[192:195], v94
	ds_load_b128 v[196:199], v94 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[200:203], v1 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[164:167], v[109:112], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[168:171], v[109:112], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[168:171], v[172:175], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[172:175], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[160:163], v[184:187], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[156:159], v[184:187], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[160:163], v[180:183], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[156:159], v[180:183], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[152:155], v[176:179], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[148:151], v[176:179], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[152:155], v[62:65], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[148:151], v[62:65], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[192:195], v[188:191], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[196:199], v[188:191], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[192:195], v[200:203], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[196:199], v[200:203], v[140:147] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v93
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
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v140
	v_cvt_f32_i32_e32 v117, v141
	v_cvt_f32_i32_e32 v118, v142
	v_cvt_f32_i32_e32 v120, v143
	v_cvt_f32_i32_e32 v121, v144
	v_cvt_f32_i32_e32 v123, v145
	v_cvt_f32_i32_e32 v124, v146
	v_cvt_f32_i32_e32 v125, v147
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s40, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s40, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v63.h, v139.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v64.h, v138.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v60, s4, 1
	v_add_lshl_u32 v61, v61, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v58, v58, s4, 1
	v_add_lshl_u32 v57, v57, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v56, v56, s4, 1
	v_add_lshl_u32 v48, v48, s4, 1
	v_add_lshl_u32 v37, v37, s4, 1
	v_add_lshl_u32 v54, v54, s4, 1
	v_add_lshl_u32 v51, v51, s4, 1
	v_add_lshl_u32 v44, v44, s4, 1
	v_add_lshl_u32 v34, v34, s4, 1
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_add_lshl_u32 v33, v33, s4, 1
	v_add_lshl_u32 v31, v31, s4, 1
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_add_lshl_u32 v29, v29, s4, 1
	v_add_lshl_u32 v32, v32, s4, 1
	v_add_lshl_u32 v30, v30, s4, 1
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	v_add_lshl_u32 v27, v27, s4, 1
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	s_clause 0x7
	buffer_load_u16 v59, v59, s[24:27], 0 offen
	buffer_load_u16 v58, v58, s[24:27], 0 offen
	buffer_load_u16 v57, v57, s[24:27], 0 offen
	buffer_load_u16 v56, v56, s[24:27], 0 offen
	buffer_load_u16 v54, v54, s[24:27], 0 offen
	buffer_load_u16 v51, v51, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_clause 0x7
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v31, v31, s[24:27], 0 offen
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	buffer_load_u16 v62, v27, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	s_clause 0x1
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	buffer_load_u16 v61, v61, s[8:11], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v27.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v27.h, v92.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v65.h, v137.l
	v_mov_b16_e64 v92.h, v136.l
	v_mov_b16_e64 v119.h, v135.l
	v_mov_b16_e64 v122.h, v134.l
	v_mov_b16_e64 v126.h, v133.l
	v_mov_b16_e64 v127.h, v132.l
	v_mov_b16_e64 v128.h, v131.l
	v_mov_b16_e64 v129.h, v130.l
	v_mov_b16_e64 v130.h, v129.l
	v_mov_b16_e64 v131.h, v128.l
	v_mov_b16_e64 v132.h, v127.l
	v_mov_b16_e64 v133.h, v126.l
	v_mov_b16_e64 v134.h, v122.l
	v_mov_b16_e64 v135.h, v119.l
	v_mov_b16_e32 v63.l, v27.l
	v_mov_b16_e32 v64.l, v27.l
	v_mov_b16_e32 v65.l, v27.l
	v_mov_b16_e32 v92.l, v27.l
	v_mov_b16_e32 v119.l, v27.l
	v_mov_b16_e32 v122.l, v27.l
	v_mov_b16_e32 v126.l, v27.l
	v_mov_b16_e32 v127.l, v27.l
	v_mov_b16_e64 v128.l, v27.l
	v_mov_b16_e64 v129.l, v27.l
	v_mov_b16_e64 v130.l, v27.l
	v_mov_b16_e64 v131.l, v27.l
	v_mov_b16_e64 v132.l, v27.l
	v_mov_b16_e64 v133.l, v27.l
	v_mov_b16_e64 v134.l, v27.l
	v_mov_b16_e64 v135.l, v27.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v138, v27, v65 :: v_dual_and_b32 v11, 56, v11
	v_mul_f32_e32 v136, v27, v63
	v_mul_f32_e32 v137, v27, v64
	v_mul_f32_e32 v139, v27, v92
	v_mul_f32_e32 v140, v27, v119
	v_mul_f32_e32 v141, v27, v122
	v_mul_f32_e32 v142, v27, v126
	v_mul_f32_e32 v143, v27, v127
	v_mul_f32_e32 v144, v27, v128
	v_mul_f32_e32 v145, v27, v129
	v_mul_f32_e32 v146, v27, v130
	v_mul_f32_e32 v147, v27, v131
	v_mul_f32_e32 v148, v27, v132
	v_mul_f32_e32 v149, v27, v133
	v_mul_f32_e32 v150, v27, v134
	v_mul_f32_e32 v151, v27, v135
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v27.h, v91.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v138, v88, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v27, v92
	v_mul_f32_e32 v92, v27, v119
	v_mul_f32_e32 v119, v27, v122
	v_mul_f32_e32 v122, v27, v126
	v_mul_f32_e32 v126, v27, v127
	v_mul_f32_e32 v64, v27, v64
	v_mul_f32_e32 v63, v27, v63
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v88, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v127, v27, v128
	v_dual_mul_f32 v128, v27, v129 :: v_dual_lshlrev_b32 v51, 16, v51
	v_dual_mul_f32 v129, v27, v130 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v130, v27, v131
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v131, v27, v132
	v_mul_f32_e32 v132, v27, v133
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v133, v27, v134
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v64, v73, v26
	v_fma_f32 v3, v132, v3, v14
	v_fma_f32 v4, v131, v4, v15
	v_fma_f32 v2, v133, v2, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v64, s2
	v_cndmask_b32_e64 v3, v14, v3, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v13, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v134, v27, v135 :: v_dual_lshlrev_b32 v13, 16, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v15, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v15, 16, v59
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v27, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v64, v13, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v127, v8, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v13, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v128, v7, v18
	v_fma_f32 v81, v145, v81, v42
	v_fma_f32 v76, v150, v76, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v19, 16, v54
	v_lshlrev_b32_e32 v54, 16, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v63, v74, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v18, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v56
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v60, v13, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v119, v69, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v63, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v13, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v130, v5, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v62, v13, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v129, v6, v17
	v_fma_f32 v70, v92, v70, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v69, s2
	v_cndmask_b32_e64 v5, v16, v5, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v16, 16, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v17, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v57
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v13, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v72, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v13, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v122, v68, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v59, v13, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v126, v66, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v13, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v134, v67, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v81, s2
	v_cndmask_b32_e64 v36, v36, v76, s2
	v_cndmask_b32_e64 v25, v25, v65, s2
	v_cndmask_b32_e64 v23, v23, v70, s2
	v_cndmask_b32_e64 v21, v21, v68, s2
	v_cndmask_b32_e64 v20, v20, v66, s2
	v_cndmask_b32_e64 v12, v12, v67, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v13, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v91, v71, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v13, v34
	v_mul_f32_e32 v66, v13, v33
	v_dual_mul_f32 v67, v13, v31 :: v_dual_mul_f32 v16, v14, v16
	v_mul_f32_e32 v68, v13, v29
	v_dual_mul_f32 v70, v13, v30 :: v_dual_mul_f32 v15, v14, v15
	v_dual_mul_f32 v13, v13, v54 :: v_dual_mul_f32 v48, v14, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v71, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v56, v1, v12
	v_fma_f32 v56, v58, v94, v3
	v_fma_f32 v58, v60, v96, v5
	v_fma_f32 v60, v62, v98, v7
	v_fma_f32 v62, v64, v100, v20
	v_fma_f32 v13, v13, v107, v28
	v_fma_f32 v16, v16, v109, v36
	v_fma_f32 v48, v48, v114, v42
	v_fma_f32 v86, v140, v86, v50
	v_fma_f32 v85, v141, v85, v49
	v_fma_f32 v84, v142, v84, v47
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v14, v17
	v_mul_f32_e32 v19, v14, v19
	v_mul_f32_e32 v37, v14, v37
	v_mul_f32_e32 v33, v14, v33
	v_mul_f32_e32 v30, v14, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v66, v102, v22
	v_fma_f32 v66, v68, v104, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v12, v1, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v14, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v56, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v44, v14, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v58, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v14, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v60, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v14, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v20, v62, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v14, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v28, v13, s3
	v_cndmask_b32_e64 v16, v36, v16, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v14, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v42, v48, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v14, v29
	v_mul_f32_e32 v14, v14, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v54, v57, v93, v2
	v_fma_f32 v57, v59, v95, v4
	v_fma_f32 v59, v61, v97, v6
	v_fma_f32 v61, v63, v99, v8
	v_fma_f32 v63, v65, v101, v21
	v_fma_f32 v65, v67, v103, v23
	v_fma_f32 v67, v69, v105, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v50, v86, s2
	v_cndmask_b32_e64 v49, v49, v85, s2
	v_cndmask_b32_e64 v47, v47, v84, s2
	v_cndmask_b32_e64 v20, v21, v63, s3
	v_cndmask_b32_e64 v21, v22, v64, s3
	v_cndmask_b32_e64 v22, v23, v65, s3
	v_cndmask_b32_e64 v23, v24, v66, s3
	v_cndmask_b32_e64 v24, v25, v67, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v136, v90, v45
	v_fma_f32 v87, v139, v87, v52
	v_fma_f32 v68, v70, v106, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v54, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v5, v5, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v34, v117, v47
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v24, v24, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v33, v118, v49
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, v16, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v31, v120, v50
	v_fma_f32 v89, v137, v89, v55
	v_fma_f32 v83, v143, v83, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v90, s2
	v_cndmask_b32_e64 v52, v52, v87, s2
	v_cndmask_b32_e64 v25, v26, v68, s3
	v_cndmask_b32_e64 v34, v47, v34, s3
	v_cndmask_b32_e64 v33, v49, v33, s3
	v_cndmask_b32_e64 v31, v50, v31, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v25, v25, v25
	v_max_f32_e32 v7, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v123, v53
	v_fma_f32 v77, v149, v77, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v89, s2
	v_cndmask_b32_e64 v46, v46, v83, s2
	v_cndmask_b32_e64 v4, v4, v57, s3
	v_cndmask_b32_e64 v6, v6, v59, s3
	v_cndmask_b32_e64 v32, v53, v32, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v12, v12, v12
	v_max_f32_e32 v23, v23, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v125, v45
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v28, v28, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v121, v52
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v2, 0, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v77, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v29, v52, v29, s3
	v_cndmask_b32_e64 v14, v45, v14, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v13, v13, v13
	v_max_f32_e32 v20, v20, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v116, v46
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v21, v21, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v124, v55
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v147, v79, v40
	v_fma_f32 v78, v148, v78, v39
	v_fma_f32 v75, v151, v75, v35
	v_fma_f32 v17, v17, v110, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v61, s3
	v_cndmask_b32_e64 v36, v46, v37, s3
	v_cndmask_b32_e64 v30, v55, v30, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v4, 0, v4
	v_max_f32_e32 v14, v14, v14
	v_dual_max_f32 v32, 0, v32 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v37, s35, v9
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v27.l
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v79, s2
	v_cndmask_b32_e64 v39, v39, v78, s2
	v_cndmask_b32_e64 v35, v35, v75, s2
	v_cndmask_b32_e64 v17, v38, v17, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v14, 0, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v38, s35, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v27.l
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v144, v82, v43
	v_fma_f32 v80, v146, v80, v41
	v_fma_f32 v15, v15, v108, v35
	v_fma_f32 v18, v18, v111, v39
	v_fma_f32 v19, v19, v112, v40
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v20, 0, v20
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v30, 0, v30 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v2, v2, v9, 0x7fff
	v_mov_b16_e32 v9.h, v27.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v82, s2
	v_cndmask_b32_e64 v41, v41, v80, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s2, s34, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v35, v15, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s2, s2, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v39, v18, s3
	v_cndmask_b32_e64 v19, v40, v19, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v15, v15, v15
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v39, s2, v11
	v_add3_u32 v40, s2, v11, 64
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v3.h
	v_mov_b16_e32 v11.h, v27.l
	v_add3_u32 v1, v1, v10, 0x7fff
	v_mov_b16_e32 v9.l, v4.h
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v6, v6, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v1, 1, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v51, v113, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v3, v10, 0x7fff
	v_mov_b16_e32 v9.l, v6.h
	v_mov_b16_e32 v10.l, v5.h
	v_mov_b16_e32 v10.h, v27.l
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v7, 1, v9
	v_and_b32_e32 v3, 1, v10
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v4.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.h, v27.l
	v_and_b32_e32 v7, 1, v9
	v_mov_b16_e32 v6.l, v8.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v20, v20
	v_mul_f32_e32 v10, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v3.h
	v_add3_u32 v4, v4, v7, 0x7fff
	v_and_b32_e32 v3, 1, v6
	v_mov_b16_e32 v6.l, v9.h
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v7.h, v27.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v41, v51, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v21, v21
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v16, 0, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	v_and_b32_e32 v6, 1, v6
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v22, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v8.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v44, v115, v43
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v28, 0, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v10, v4, 0x7fff
	v_add3_u32 v6, v9, v6, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v27.l
	v_and_b32_e32 v10, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v24, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v43, v44, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v26, 0, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v4.h
	v_and_b32_e32 v4, 1, v9
	v_mov_b16_e32 v9.l, v11.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v23, v23
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v36, v36, v36
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v18, 0, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v10.h, v27.l
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v10.l, v12.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v25, v25
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v36, 0, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v8, 1, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v13, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v27.l
	v_add3_u32 v9, v11, v9, 0x7fff
	v_add3_u32 v8, v12, v8, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v27.l
	v_and_b32_e32 v12, 1, v13
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v13, v16, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v16.h, v27.l
	v_and_b32_e32 v8, 1, v11
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v15.h
	v_mov_b16_e32 v12.h, v27.l
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v17, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	v_and_b32_e32 v11, 1, v11
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v34, 0, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v10.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v18, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v15, v7, 0x7fff
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.h, v27.l
	v_and_b32_e32 v15, 1, v16
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v26, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v19, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v10, v15, 0x7fff
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e32 v15.h, v27.l
	v_mov_b16_e32 v17.l, v7.h
	v_mov_b16_e32 v17.h, v27.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v18, v35, v35 :: v_dual_mul_f32 v19, v28, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v12, v13, 0x7fff
	v_and_b32_e32 v13, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v15, 1, v17
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e32 v20.h, v27.l
	v_mov_b16_e32 v12.l, v10.h
	v_add3_u32 v7, v7, v15, 0x7fff
	v_and_b32_e32 v15, 1, v17
	v_add3_u32 v10, v16, v13, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v16, v34, v34 :: v_dual_and_b32 v13, 1, v20
	v_mul_f32_e32 v20, v31, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v15, v18, v15, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v33, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v36, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v21.h, v27.l
	v_mov_b16_e32 v21.l, v18.h
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v13, v19, v13, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v27.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v17, 1, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v20.h
	v_mov_b16_e32 v22.h, v27.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v21, 1, v21
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v15.l, v13.h
	v_add3_u32 v13, v16, v17, 0x7fff
	v_and_b32_e32 v16, 1, v22
	v_add3_u32 v17, v18, v21, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v29, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v21.h, v27.l
	v_add3_u32 v16, v20, v16, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_mov_b16_e32 v20.l, v18.h
	v_mov_b16_e32 v20.h, v27.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v17, v30, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v27.l
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v21.l, v17.h
	v_mov_b16_e32 v22.l, v14.h
	v_mov_b16_e32 v19.l, v7.h
	s_mov_b32 s2, 0x76543210
	v_add3_u32 v18, v18, v20, 0x7fff
	v_and_b32_e32 v21, 1, v21
	v_and_b32_e32 v20, 1, v22
	v_and_b32_e32 v19, 1, v19
	s_mov_b32 s3, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v17, v21, 0x7fff
	v_add3_u32 v0, v14, v20, 0x7fff
	v_cndmask_b32_e32 v14, v5, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v7.l, v18.h
	v_mov_b16_e32 v0.l, v17.h
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_dual_cndmask_b32 v17, v9, v6 :: v_dual_mov_b32 v18, 0x7632
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_cndmask_b32_e32 v9, v8, v4, vcc_lo
	v_dual_cndmask_b32 v4, v4, v8 :: v_dual_cndmask_b32 v19, v10, v11
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v6, 0x1054, v6 :: v_dual_cndmask_b32 v11, v15, v12
	v_cndmask_b32_e32 v10, 0x3276, v18, vcc_lo
	v_dual_cndmask_b32 v12, v12, v15 :: v_dual_cndmask_b32 v15, v7, v13
	v_lshl_or_b32 v6, v6, 8, v6
	v_dual_cndmask_b32 v7, v13, v7 :: v_dual_cndmask_b32 v18, v0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_permlanex16_b32 v13, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x540054, v6
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v16, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v6, 4, v6
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x7060706, v6
	s_mov_b32 s2, s10
	v_perm_b32 v0, v2, v14, v21
	v_perm_b32 v6, v16, v9, v21
	v_perm_b32 v4, v10, v17, v21
	v_perm_b32 v1, v2, v14, v22
	v_perm_b32 v2, v13, v5, v21
	v_perm_b32 v3, v13, v5, v22
	v_perm_b32 v7, v16, v9, v22
	v_add_lshl_u32 v16, v39, v37, 1
	v_perm_b32 v5, v10, v17, v22
	v_add_lshl_u32 v17, v40, v37, 1
	v_perm_b32 v8, v20, v19, v21
	v_perm_b32 v9, v20, v19, v22
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v15, v21
	v_perm_b32 v13, v23, v15, v22
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
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 211
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11044
; TotalNumSgprs: 47
; NumVgprs: 211
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     211
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
