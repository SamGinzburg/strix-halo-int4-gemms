	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 0xf8, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v75, 6, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v46, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v45, 15, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v5, 2, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v10, 16, v45
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s12, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
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
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_xor_b32 s13, s2, s16
	s_cvt_f32_u32 s18, s17
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v4, 3, v1
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s18
	s_mul_hi_u32 s6, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s6
	s_mul_hi_u32 s6, s7, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s14, s6, s17
	s_add_i32 s18, s6, 1
	s_sub_i32 s14, s7, s14
	s_mov_b32 s7, 0x31027000
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s18, s18, s6
	s_cselect_b32 s6, s19, s14
	s_add_i32 s14, s18, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s14, s18
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s17, s14, s13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s34, v5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s13, s17, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s13, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s13, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v11, v1, 4, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s34, s30
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s33, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v2, v4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s26, s15, v11
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 26
.Ltmp17:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s34, v2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s27, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v7, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v8, s34, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v7, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v4, s[20:23], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	v_cndmask_b32_e64 v6, 0x80000000, v8, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s27, 7, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s30, 64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[29:32], v4, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v6, s[20:23], 0 offen
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s35, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s34, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s30, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v7, 0x70, v46
	s_mov_b32 s12, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v55, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v2, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	s_clause 0x1
	buffer_load_b128 v[37:40], v4, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v6, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s34, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_b64 v[73:74], v55, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[47:50], v2, s[20:23], 0 offen
	buffer_load_b128 v[51:54], v4, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[71:72], v3, s[4:7], 0 offen
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v4, 48, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v13, v3, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0x420, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v2, v2, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v76, 0, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v9, 8, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v14, v75, 10, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v15, 0x90, v14
	v_xor_b32_e32 v16, 0x120, v14
	v_add_nc_u32_e32 v77, 0, v14
	v_xor_b32_e32 v17, 0x1b0, v14
	v_xor_b32_e32 v18, 0x210, v14
	v_add_nc_u32_e32 v78, 0, v15
	v_xor_b32_e32 v19, 0x330, v14
	v_xor_b32_e32 v20, 0x3a0, v14
	v_add_nc_u32_e32 v79, 0, v16
	v_add_nc_u32_e32 v80, 0, v17
	v_add_nc_u32_e32 v81, 0, v18
	v_add_nc_u32_e32 v82, 0, v19
	v_add_nc_u32_e32 v83, 0, v20
	s_waitcnt vmcnt(8)
	v_perm_b32 v55, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v56, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v57, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v58, v28, v24, 0x5010400
	v_perm_b32 v59, v28, v24, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v60, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v61, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v62, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v63, v36, v32, 0x5010400
	v_perm_b32 v64, v36, v32, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v21.l, 0xff, v55.l
	v_lshrrev_b32_e32 v65, 8, v55
	v_lshrrev_b32_e32 v66, 24, v55
	v_and_b16 v21.h, 0xff, v55.h
	v_and_b16 v22.l, 0xff, v25.l
	v_lshrrev_b32_e32 v55, 8, v25
	v_lshrrev_b32_e32 v67, 24, v25
	v_and_b16 v22.h, 0xff, v25.h
	v_and_b16 v23.l, 0xff, v56.l
	v_lshrrev_b32_e32 v68, 8, v56
	v_lshrrev_b32_e32 v69, 24, v56
	v_and_b16 v23.h, 0xff, v56.h
	v_and_b16 v24.l, 0xff, v26.l
	v_lshrrev_b32_e32 v56, 8, v26
	v_lshrrev_b32_e32 v70, 24, v26
	v_and_b16 v24.h, 0xff, v26.h
	v_and_b16 v25.l, 0xff, v57.l
	v_lshrrev_b32_e32 v84, 8, v57
	v_lshrrev_b32_e32 v85, 24, v57
	v_and_b16 v25.h, 0xff, v57.h
	v_and_b16 v26.l, 0xff, v27.l
	v_lshrrev_b32_e32 v57, 8, v27
	v_lshrrev_b32_e32 v86, 24, v27
	v_and_b16 v26.h, 0xff, v27.h
	v_and_b16 v27.l, 0xff, v58.l
	v_lshrrev_b32_e32 v87, 8, v58
	v_lshrrev_b32_e32 v88, 24, v58
	v_and_b16 v27.h, 0xff, v58.h
	v_and_b16 v28.l, 0xff, v59.l
	v_lshrrev_b32_e32 v58, 8, v59
	v_lshrrev_b32_e32 v89, 24, v59
	v_and_b16 v28.h, 0xff, v59.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v59, v41, v37, 0x5010400
	v_perm_b32 v90, v41, v37, 0x7030602
	v_perm_b32 v91, v42, v38, 0x5010400
	v_perm_b32 v92, v42, v38, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v29.l, 0xff, v60.l
	v_lshrrev_b32_e32 v97, 8, v60
	v_lshrrev_b32_e32 v98, 24, v60
	v_and_b16 v29.h, 0xff, v60.h
	v_lshrrev_b32_e32 v60, 8, v33
	v_lshrrev_b32_e32 v99, 24, v33
	v_lshrrev_b32_e32 v100, 8, v61
	v_lshrrev_b32_e32 v101, 24, v61
	s_waitcnt vmcnt(1)
	v_perm_b32 v109, v51, v47, 0x7030602
	v_perm_b32 v110, v52, v48, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v93, v43, v39, 0x5010400
	v_perm_b32 v94, v43, v39, 0x7030602
	v_perm_b32 v95, v44, v40, 0x5010400
	v_perm_b32 v96, v44, v40, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v30.l, 0xff, v33.l
	v_and_b16 v30.h, 0xff, v33.h
	v_and_b16 v31.l, 0xff, v61.l
	v_and_b16 v31.h, 0xff, v61.h
	v_and_b16 v32.l, 0xff, v34.l
	v_lshrrev_b32_e32 v61, 8, v34
	v_lshrrev_b32_e32 v102, 24, v34
	v_and_b16 v32.h, 0xff, v34.h
	v_and_b16 v33.l, 0xff, v62.l
	v_lshrrev_b32_e32 v103, 8, v62
	v_lshrrev_b32_e32 v104, 24, v62
	v_and_b16 v33.h, 0xff, v62.h
	v_and_b16 v34.l, 0xff, v35.l
	v_lshrrev_b32_e32 v62, 8, v35
	v_lshrrev_b32_e32 v105, 24, v35
	v_and_b16 v34.h, 0xff, v35.h
	v_and_b16 v35.l, 0xff, v63.l
	v_lshrrev_b32_e32 v106, 8, v63
	v_lshrrev_b32_e32 v107, 24, v63
	v_and_b16 v35.h, 0xff, v63.h
	v_and_b16 v36.l, 0xff, v64.l
	v_lshrrev_b32_e32 v63, 8, v64
	v_lshrrev_b32_e32 v108, 24, v64
	v_and_b16 v36.h, 0xff, v64.h
	v_perm_b32 v64, v51, v47, 0x5010400
	v_perm_b32 v111, v52, v48, 0x7030602
	v_perm_b32 v112, v53, v49, 0x5010400
	v_perm_b32 v113, v53, v49, 0x7030602
	v_perm_b32 v114, v54, v50, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v37.l, 8, v65.l
	v_lshlrev_b16 v41.l, 8, v84.l
	v_lshrrev_b32_e32 v84, 8, v59
	v_lshlrev_b16 v37.h, 8, v66.l
	v_lshlrev_b16 v41.h, 8, v85.l
	v_lshrrev_b32_e32 v85, 24, v59
	v_lshlrev_b16 v38.l, 8, v55.l
	v_lshlrev_b16 v42.h, 8, v86.l
	v_lshrrev_b32_e32 v86, 8, v90
	v_lshlrev_b16 v38.h, 8, v67.l
	v_lshlrev_b16 v43.l, 8, v87.l
	v_lshrrev_b32_e32 v87, 24, v90
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v115, v54, v50, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v39.l, 8, v68.l
	v_lshlrev_b16 v39.h, 8, v69.l
	v_lshlrev_b16 v40.l, 8, v56.l
	v_lshlrev_b16 v40.h, 8, v70.l
	v_lshlrev_b16 v42.l, 8, v57.l
	v_lshlrev_b16 v43.h, 8, v88.l
	v_lshlrev_b16 v44.h, 8, v89.l
	v_and_b16 v48.l, 0xff, v90.l
	v_and_b16 v48.h, 0xff, v90.h
	v_and_b16 v49.l, 0xff, v91.l
	v_lshrrev_b32_e32 v88, 8, v91
	v_lshrrev_b32_e32 v89, 24, v91
	v_and_b16 v49.h, 0xff, v91.h
	v_lshrrev_b32_e32 v90, 8, v92
	v_lshrrev_b32_e32 v91, 24, v92
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v55.h, 8, v98.l
	v_lshlrev_b16 v56.l, 8, v60.l
	v_lshlrev_b16 v56.h, 8, v99.l
	v_lshlrev_b16 v57.l, 8, v100.l
	v_lshlrev_b16 v57.h, 8, v101.l
	v_lshrrev_b32_e32 v98, 8, v109
	v_lshrrev_b32_e32 v99, 24, v109
	v_lshrrev_b32_e32 v100, 8, v110
	v_lshrrev_b32_e32 v101, 24, v110
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v44.l, 8, v58.l
	v_and_b16 v47.l, 0xff, v59.l
	v_and_b16 v47.h, 0xff, v59.h
	v_and_b16 v50.l, 0xff, v92.l
	v_and_b16 v50.h, 0xff, v92.h
	v_and_b16 v51.l, 0xff, v93.l
	v_lshrrev_b32_e32 v92, 8, v93
	v_lshrrev_b32_e32 v116, 24, v93
	v_and_b16 v51.h, 0xff, v93.h
	v_and_b16 v52.l, 0xff, v94.l
	v_lshrrev_b32_e32 v93, 8, v94
	v_lshrrev_b32_e32 v117, 24, v94
	v_and_b16 v52.h, 0xff, v94.h
	v_and_b16 v53.l, 0xff, v95.l
	v_lshrrev_b32_e32 v94, 8, v95
	v_lshrrev_b32_e32 v118, 24, v95
	v_and_b16 v53.h, 0xff, v95.h
	v_and_b16 v54.l, 0xff, v96.l
	v_lshrrev_b32_e32 v95, 8, v96
	v_lshrrev_b32_e32 v119, 24, v96
	v_and_b16 v54.h, 0xff, v96.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v55.l, 8, v97.l
	v_lshlrev_b16 v58.l, 8, v61.l
	v_lshlrev_b16 v58.h, 8, v102.l
	v_lshlrev_b16 v59.l, 8, v103.l
	v_lshlrev_b16 v59.h, 8, v104.l
	v_lshlrev_b16 v60.l, 8, v62.l
	v_lshlrev_b16 v60.h, 8, v105.l
	v_lshlrev_b16 v61.l, 8, v106.l
	v_lshlrev_b16 v61.h, 8, v107.l
	v_lshlrev_b16 v62.h, 8, v108.l
	v_lshrrev_b32_e32 v96, 8, v64
	v_lshrrev_b32_e32 v97, 24, v64
	v_lshrrev_b32_e32 v102, 8, v111
	v_lshrrev_b32_e32 v103, 24, v111
	v_lshrrev_b32_e32 v104, 8, v112
	v_lshrrev_b32_e32 v105, 24, v112
	v_lshrrev_b32_e32 v106, 8, v113
	v_lshrrev_b32_e32 v107, 24, v113
	v_lshrrev_b32_e32 v108, 8, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v21.l, v21.l, v37.l
	v_lshlrev_b16 v37.l, 8, v84.l
	v_or_b16 v21.h, v21.h, v37.h
	v_lshlrev_b16 v37.h, 8, v85.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v62.l, 8, v63.l
	v_and_b16 v63.l, 0xff, v64.l
	v_and_b16 v63.h, 0xff, v64.h
	v_and_b16 v64.l, 0xff, v109.l
	v_and_b16 v64.h, 0xff, v109.h
	v_lshrrev_b32_e32 v109, 24, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.l, v22.l, v38.l
	v_lshlrev_b16 v38.l, 8, v86.l
	v_or_b16 v22.h, v22.h, v38.h
	v_lshlrev_b16 v38.h, 8, v87.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v65.l, 0xff, v110.l
	v_and_b16 v65.h, 0xff, v110.h
	v_lshrrev_b32_e32 v110, 8, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v23.l, v23.l, v39.l
	v_or_b16 v23.h, v23.h, v39.h
	v_or_b16 v24.l, v24.l, v40.l
	v_or_b16 v24.h, v24.h, v40.h
	v_lshlrev_b16 v39.l, 8, v88.l
	v_lshlrev_b16 v39.h, 8, v89.l
	v_lshlrev_b16 v40.l, 8, v90.l
	v_lshlrev_b16 v40.h, 8, v91.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v30.l, v30.l, v56.l
	v_or_b16 v30.h, v30.h, v56.h
	v_or_b16 v31.l, v31.l, v57.l
	v_or_b16 v31.h, v31.h, v57.h
	v_lshlrev_b16 v56.l, 8, v98.l
	v_lshlrev_b16 v56.h, 8, v99.l
	v_lshlrev_b16 v57.l, 8, v100.l
	v_lshlrev_b16 v57.h, 8, v101.l
	v_and_b16 v66.l, 0xff, v111.l
	v_and_b16 v66.h, 0xff, v111.h
	v_and_b16 v67.l, 0xff, v112.l
	v_and_b16 v67.h, 0xff, v112.h
	v_and_b16 v68.l, 0xff, v113.l
	v_and_b16 v68.h, 0xff, v113.h
	v_and_b16 v69.l, 0xff, v114.l
	v_lshrrev_b32_e32 v111, 24, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v25.l, v25.l, v41.l
	v_or_b16 v25.h, v25.h, v41.h
	v_or_b16 v26.l, v26.l, v42.l
	v_or_b16 v26.h, v26.h, v42.h
	v_or_b16 v27.l, v27.l, v43.l
	v_or_b16 v27.h, v27.h, v43.h
	v_lshlrev_b16 v41.l, 8, v92.l
	v_lshlrev_b16 v41.h, 8, v116.l
	v_lshlrev_b16 v42.l, 8, v93.l
	v_lshlrev_b16 v42.h, 8, v117.l
	v_lshlrev_b16 v43.l, 8, v94.l
	v_lshlrev_b16 v43.h, 8, v118.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v29.l, v29.l, v55.l
	v_or_b16 v29.h, v29.h, v55.h
	v_or_b16 v32.l, v32.l, v58.l
	v_or_b16 v32.h, v32.h, v58.h
	v_or_b16 v33.l, v33.l, v59.l
	v_or_b16 v33.h, v33.h, v59.h
	v_or_b16 v34.l, v34.l, v60.l
	v_or_b16 v34.h, v34.h, v60.h
	v_or_b16 v35.l, v35.l, v61.l
	v_lshlrev_b16 v55.l, 8, v96.l
	v_lshlrev_b16 v55.h, 8, v97.l
	v_lshlrev_b16 v58.l, 8, v102.l
	v_lshlrev_b16 v58.h, 8, v103.l
	v_lshlrev_b16 v59.l, 8, v104.l
	v_lshlrev_b16 v59.h, 8, v105.l
	v_lshlrev_b16 v60.l, 8, v106.l
	v_lshlrev_b16 v60.h, 8, v107.l
	v_lshlrev_b16 v61.l, 8, v108.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v21
	ds_store_b16_d16_hi v77, v21 offset:64
	ds_store_b16 v78, v22
	ds_store_b16_d16_hi v78, v22 offset:64
	ds_store_b16 v79, v23
	ds_store_b16_d16_hi v79, v23 offset:64
	ds_store_b16 v80, v24
	ds_store_b16_d16_hi v80, v24 offset:64
	ds_store_b16 v81, v25
	ds_store_b16_d16_hi v81, v25 offset:64
	v_or_b16 v21.l, v47.l, v37.l
	v_or_b16 v28.l, v28.l, v44.l
	v_lshlrev_b16 v44.l, 8, v95.l
	v_or_b16 v21.h, v47.h, v37.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v69.h, 0xff, v114.h
	v_or_b16 v35.h, v35.h, v61.h
	v_lshlrev_b16 v61.h, 8, v109.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.l, v48.l, v38.l
	v_or_b16 v28.h, v28.h, v44.h
	v_lshlrev_b16 v44.h, 8, v119.l
	v_or_b16 v22.h, v48.h, v38.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v70.l, 0xff, v115.l
	v_or_b16 v36.l, v36.l, v62.l
	v_or_b16 v36.h, v36.h, v62.h
	v_lshlrev_b16 v62.l, 8, v110.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v23.l, v49.l, v39.l
	v_or_b16 v23.h, v49.h, v39.h
	v_or_b16 v24.l, v50.l, v40.l
	v_or_b16 v24.h, v50.h, v40.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v76, v[71:72] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v29 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v26 offset:640
	ds_store_b16_d16_hi v77, v26 offset:704
	ds_store_b16 v82, v27
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v77, v29 offset:16448
	ds_store_b16 v78, v30 offset:16384
	ds_store_b16_d16_hi v78, v30 offset:16448
	ds_store_b16 v79, v31 offset:16384
	ds_store_b16_d16_hi v79, v31 offset:16448
	ds_store_b16 v80, v32 offset:16384
	ds_store_b16_d16_hi v80, v32 offset:16448
	ds_store_b16 v81, v33 offset:16384
	ds_store_b16_d16_hi v81, v33 offset:16448
	ds_store_b16 v77, v34 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v82, v27 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v77, v34 offset:17088
	ds_store_b16 v82, v35 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v83, v28
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v82, v35 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v83, v28 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v83, v36 offset:16384
	ds_store_b16_d16_hi v83, v36 offset:16448
	v_or_b16 v27.l, v64.l, v56.l
	v_or_b16 v27.h, v64.h, v56.h
	v_or_b16 v28.l, v65.l, v57.l
	v_or_b16 v28.h, v65.h, v57.h
	v_and_b16 v70.h, 0xff, v115.h
	v_lshlrev_b16 v62.h, 8, v111.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v25.l, v51.l, v41.l
	v_or_b16 v25.h, v51.h, v41.h
	v_or_b16 v37.l, v52.l, v42.l
	v_or_b16 v37.h, v52.h, v42.h
	v_or_b16 v38.l, v53.l, v43.l
	v_or_b16 v38.h, v53.h, v43.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.l, v63.l, v55.l
	v_or_b16 v26.h, v63.h, v55.h
	v_or_b16 v29.l, v66.l, v58.l
	v_or_b16 v29.h, v66.h, v58.h
	v_or_b16 v30.l, v67.l, v59.l
	v_or_b16 v30.h, v67.h, v59.h
	v_or_b16 v31.l, v68.l, v60.l
	v_or_b16 v31.h, v68.h, v60.h
	v_or_b16 v32.l, v69.l, v61.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v21 offset:8192
	ds_store_b16_d16_hi v77, v21 offset:8256
	ds_store_b16 v78, v22 offset:8192
	ds_store_b16_d16_hi v78, v22 offset:8256
	ds_store_b16 v79, v23 offset:8192
	ds_store_b16_d16_hi v79, v23 offset:8256
	ds_store_b16 v80, v24 offset:8192
	ds_store_b16_d16_hi v80, v24 offset:8256
	ds_store_b16 v81, v25 offset:8192
	ds_store_b16_d16_hi v81, v25 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v76, v[73:74] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v26 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v37 offset:8832
	ds_store_b16_d16_hi v77, v37 offset:8896
	ds_store_b16 v82, v38 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v77, v26 offset:24640
	ds_store_b16 v78, v27 offset:24576
	ds_store_b16_d16_hi v78, v27 offset:24640
	ds_store_b16 v79, v28 offset:24576
	ds_store_b16_d16_hi v79, v28 offset:24640
	ds_store_b16 v80, v29 offset:24576
	ds_store_b16_d16_hi v80, v29 offset:24640
	ds_store_b16 v81, v30 offset:24576
	ds_store_b16_d16_hi v81, v30 offset:24640
	ds_store_b16 v77, v31 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v82, v38 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v77, v31 offset:25280
	v_lshlrev_b32_e32 v27, 3, v75
	v_lshlrev_b32_e32 v22, 6, v1
	v_lshlrev_b32_e32 v28, 5, v0
	v_and_b32_e32 v23, 8, v0
	v_and_b32_e32 v24, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v39.l, v54.l, v44.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v32.h, v69.h, v61.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v39.h, v54.h, v44.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v33.l, v70.l, v62.l
	v_or_b16 v21.l, v70.h, v62.h
	ds_store_b16 v82, v32 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v83, v39 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v82, v32 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v83, v39 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v83, v33 offset:24576
	ds_store_b16 v83, v21 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v90, v45, 6, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v25, 6, v1
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v26, 32, v0
	v_and_or_b32 v21, 0x1800, v28, v27
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v94, 16, v90
	v_xor_b32_e32 v92, 32, v90
	v_xor_b32_e32 v93, 48, v90
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr21
.LBB0_3:                                ; %Flow322
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v29, s33, v45
	v_or_b32_e32 v10, s33, v10
	s_ashr_i32 s1, s13, 6
	v_or_b32_e32 v82, s26, v2
	v_or_b32_e32 v81, s26, v6
	v_mul_lo_u32 v83, v29, s1
	v_mul_lo_u32 v84, v10, s1
	v_or_b32_e32 v80, s26, v7
	v_or_b32_e32 v79, s26, v8
	v_or_b32_e32 v55, s26, v9
	v_or_b32_e32 v56, s26, v3
	v_or_b32_e32 v57, s26, v4
	v_or_b32_e32 v58, s26, v5
	v_add_nc_u32_e32 v78, s27, v2
	v_add_nc_u32_e32 v77, s27, v6
	v_add_nc_u32_e32 v76, s27, v7
	v_add_nc_u32_e32 v74, s27, v8
	v_add_nc_u32_e32 v73, s27, v9
	v_add_nc_u32_e32 v75, s27, v3
	v_add_nc_u32_e32 v47, s27, v4
	v_add_nc_u32_e32 v48, s27, v5
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v2, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v21, 0x1800, v28, v27
	v_lshl_or_b32 v90, v45, 6, v27
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s34, v11
	v_mov_b32_e32 v49, 0
	v_and_or_b32 v1, 0x210, v2, v1
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v42, 0
	v_xor_b32_e32 v94, 16, v90
	v_xor_b32_e32 v92, 32, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v21
	v_xor_b32_e32 v93, 48, v90
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v50, 0
	v_or_b32_e32 v26, v1, v22
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v27, 16, v26
	v_xor_b32_e32 v28, 32, v26
	v_xor_b32_e32 v29, 48, v26
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v35, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s31, s1, 3
	s_add_i32 s11, s35, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8800
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s31, s31, -3
	s_mov_b32 s47, 1
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s14, s0
	s_mov_b32 s17, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s13, 6
	s_mov_b32 s15, s12
	s_mov_b32 s30, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s11, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v30, s14, v90
	v_add_nc_u32_e32 v31, s14, v94
	v_add_nc_u32_e32 v32, s14, v92
	v_add_nc_u32_e32 v89, s14, v93
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s17, 31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v91, s15, v26
	v_add_nc_u32_e32 v95, s15, v27
	v_add_nc_u32_e32 v96, s15, v28
	v_add_nc_u32_e32 v97, s15, v29
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s35, s34
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 26
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s35, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s15, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s17, s17, s14
	s_mov_b32 s16, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v102, s15, v11
	v_add_nc_u32_e32 v103, s15, v25
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s15, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s17, 6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v98, s16, v26
	v_add_nc_u32_e32 v99, s16, v27
	v_add_nc_u32_e32 v100, s16, v28
	v_add_nc_u32_e32 v101, s16, v29
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[9:10], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v30
	ds_load_b128 v[119:122], v30 offset:1024
	ds_load_b128 v[127:130], v31
	ds_load_b128 v[131:134], v31 offset:1024
	ds_load_b128 v[135:138], v32
	ds_load_b128 v[139:142], v32 offset:1024
	ds_load_b128 v[143:146], v89
	ds_load_b128 v[147:150], v89 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v91
	ds_load_b128 v[151:154], v95
	ds_load_b128 v[155:158], v96
	ds_load_b128 v[159:162], v97
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[163:166], v98
	ds_load_b128 v[167:170], v99
	ds_load_b128 v[171:174], v100
	ds_load_b128 v[175:178], v101
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v30, s15, v11
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v32, v83, s14, 1
	v_add_lshl_u32 v89, v84, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s34
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v31, s15, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v91, v82, s14, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v95, v81, s14, 1
	v_add_lshl_u32 v96, v80, s14, 1
	v_add_lshl_u32 v97, v79, s14, 1
	v_add_lshl_u32 v98, v55, s14, 1
	v_add_lshl_u32 v99, v56, s14, 1
	v_add_lshl_u32 v100, v57, s14, 1
	v_add_lshl_u32 v101, v58, s14, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s14, s14, s26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[179:182], v102, s[20:23], 0 offen
	buffer_load_b128 v[183:186], v103, s[20:23], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v102, v78, s14, 1
	v_add_lshl_u32 v103, v77, s14, 1
	v_add_lshl_u32 v104, v76, s14, 1
	v_add_lshl_u32 v105, v74, s14, 1
	v_add_lshl_u32 v106, v73, s14, 1
	v_add_lshl_u32 v107, v75, s14, 1
	v_add_lshl_u32 v108, v47, s14, 1
	v_add_lshl_u32 v109, v48, s14, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[187:190], v30, s[20:23], 0 offen
	buffer_load_b128 v[191:194], v31, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v30, 0x80000000, v32 :: v_dual_cndmask_b32 v31, 0x80000000, v89
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v32, 0x80000000, v91 :: v_dual_cndmask_b32 v91, 0x80000000, v96
	v_dual_cndmask_b32 v89, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v98
	v_dual_cndmask_b32 v95, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v100
	v_dual_cndmask_b32 v97, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v102
	v_dual_cndmask_b32 v99, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v104
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v101, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v106
	v_dual_cndmask_b32 v103, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v108
	v_cndmask_b32_e32 v105, 0x80000000, v107, vcc_lo
	v_cndmask_b32_e32 v107, 0x80000000, v109, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v195, v30, s[36:39], 0 offen
	buffer_load_u16 v196, v31, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v197, v32, s[40:43], 0 offen
	buffer_load_u16 v198, v89, s[40:43], 0 offen
	buffer_load_u16 v199, v91, s[40:43], 0 offen
	buffer_load_u16 v200, v95, s[40:43], 0 offen
	buffer_load_u16 v201, v96, s[40:43], 0 offen
	buffer_load_u16 v202, v97, s[40:43], 0 offen
	buffer_load_u16 v203, v98, s[40:43], 0 offen
	buffer_load_u16 v204, v99, s[40:43], 0 offen
	buffer_load_u16 v205, v100, s[40:43], 0 offen
	buffer_load_u16 v206, v101, s[40:43], 0 offen
	buffer_load_u16 v207, v102, s[40:43], 0 offen
	buffer_load_u16 v208, v103, s[40:43], 0 offen
	buffer_load_u16 v209, v104, s[40:43], 0 offen
	buffer_load_u16 v210, v105, s[40:43], 0 offen
	buffer_load_u16 v211, v106, s[40:43], 0 offen
	buffer_load_u16 v212, v107, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[111:114], v[119:122], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[163:166], v[119:122], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[127:130], v[95:102] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[85:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[103:110], v[151:154], v[131:134], v[103:110] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[167:170], v[131:134], v[111:118] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[135:138], v[95:102] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[127:130], v[119:126] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s47, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[103:110], v[155:158], v[139:142], v[103:110] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[171:174], v[139:142], v[111:118] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[159:162], v[143:146], v[95:102] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[119:126], v[171:174], v[135:138], v[119:126] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[103:110], v[159:162], v[147:150], v[103:110] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s47, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v131, v96
	v_cvt_f32_i32_e32 v132, v95
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[175:178], v[147:150], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[175:178], v[143:146], v[119:126] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v134, v105
	v_cvt_f32_i32_e32 v137, v98
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s15, s47, 11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v130, v111
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s15, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v144, v110
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v138, v97
	v_cvt_f32_i32_e32 v127, v104
	v_cvt_f32_i32_e32 v128, v103
	v_cvt_f32_i32_e32 v140, v107
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v141, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v142, v100
	v_cvt_f32_i32_e32 v143, v99
	v_cvt_f32_i32_e32 v145, v109
	v_cvt_f32_i32_e32 v147, v101
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v129, v112
	v_cvt_f32_i32_e32 v136, v113
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v133, v106
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v135, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v139, v108
	v_cvt_f32_i32_e32 v146, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s47, 13
	s_mov_b32 s12, s45
	s_add_i32 s45, s16, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s0, s46
	s_mov_b32 s10, s44
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s46, s15, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s31
	s_mov_b32 s13, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(20)
	v_perm_b32 v85, v185, v181, 0x5010400
	v_perm_b32 v86, v185, v181, 0x7030602
	v_perm_b32 v31, v184, v180, 0x5010400
	v_perm_b32 v32, v184, v180, 0x7030602
	v_perm_b32 v88, v186, v182, 0x7030602
	v_lshrrev_b32_e32 v110, 24, v85
	v_lshrrev_b32_e32 v111, 8, v86
	v_perm_b32 v87, v186, v182, 0x5010400
	v_lshrrev_b32_e32 v107, 8, v32
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(18)
	v_perm_b32 v95, v192, v188, 0x5010400
	v_perm_b32 v96, v192, v188, 0x7030602
	v_perm_b32 v91, v191, v187, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v150, 16, v196
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v97, v193, v189, 0x5010400
	v_lshrrev_b32_e32 v156, 24, v95
	v_lshrrev_b32_e32 v158, 24, v96
	v_perm_b32 v98, v193, v189, 0x7030602
	v_perm_b32 v89, v191, v187, 0x5010400
	v_perm_b32 v99, v194, v190, 0x5010400
	v_lshlrev_b16 v110.h, 8, v156.l
	v_lshlrev_b16 v111.h, 8, v158.l
	v_perm_b32 v100, v194, v190, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v109, 8, v85
	v_lshrrev_b32_e32 v115, 8, v88
	v_lshrrev_b32_e32 v148, 24, v88
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v178, 16, v209
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v174, 16, v204
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v180, 16, v211
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v149, 16, v195
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v181, 16, v212
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v169, 16, v199
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v153, 8, v91
	v_lshrrev_b32_e32 v160, 24, v97
	v_lshrrev_b32_e32 v162, 24, v98
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v168, 16, v198
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v150, v169
	v_dual_mul_f32 v158, v149, v169 :: v_dual_mul_f32 v169, v150, v178
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v30, s15, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v171, 16, v201
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v112, 24, v86
	v_lshrrev_b32_e32 v113, 8, v87
	v_lshrrev_b32_e32 v105, 8, v31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v30, v[9:10] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v10, v183, v179, 0x5010400
	v_perm_b32 v30, v183, v179, 0x7030602
	v_lshrrev_b32_e32 v106, 24, v31
	v_lshrrev_b32_e32 v108, 24, v32
	v_lshrrev_b32_e32 v114, 24, v87
	v_lshrrev_b32_e32 v101, 8, v10
	v_lshrrev_b32_e32 v103, 8, v30
	v_lshrrev_b32_e32 v104, 24, v30
	v_and_b16 v9.l, 0xff, v10.l
	v_lshrrev_b32_e32 v102, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v30.l
	v_and_b16 v10.h, 0xff, v30.h
	v_and_b16 v30.l, 0xff, v31.l
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v32.l
	v_and_b16 v31.h, 0xff, v32.h
	v_and_b16 v32.l, 0xff, v85.l
	v_and_b16 v32.h, 0xff, v85.h
	v_and_b16 v85.l, 0xff, v86.l
	v_and_b16 v85.h, 0xff, v86.h
	v_and_b16 v86.l, 0xff, v87.l
	v_and_b16 v86.h, 0xff, v87.h
	v_and_b16 v87.l, 0xff, v88.l
	v_and_b16 v87.h, 0xff, v88.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v88.l, 0xff, v89.l
	v_lshrrev_b32_e32 v151, 8, v89
	v_lshrrev_b32_e32 v152, 24, v89
	v_and_b16 v89.l, 0xff, v91.l
	v_lshrrev_b32_e32 v154, 24, v91
	v_and_b16 v91.l, 0xff, v95.l
	v_lshrrev_b32_e32 v155, 8, v95
	v_and_b16 v95.l, 0xff, v96.l
	v_lshrrev_b32_e32 v157, 8, v96
	v_and_b16 v96.l, 0xff, v97.l
	v_lshrrev_b32_e32 v159, 8, v97
	v_and_b16 v97.l, 0xff, v98.l
	v_lshrrev_b32_e32 v161, 8, v98
	v_and_b16 v98.l, 0xff, v99.l
	v_lshrrev_b32_e32 v163, 8, v99
	v_lshrrev_b32_e32 v164, 24, v99
	v_and_b16 v99.l, 0xff, v100.l
	v_lshrrev_b32_e32 v165, 8, v100
	v_lshrrev_b32_e32 v166, 24, v100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v100.l, 8, v101.l
	v_lshlrev_b16 v101.l, 8, v103.l
	v_lshlrev_b16 v101.h, 8, v104.l
	v_lshlrev_b16 v103.l, 8, v107.l
	v_lshlrev_b16 v104.l, 8, v109.l
	v_lshlrev_b16 v107.l, 8, v115.l
	v_lshlrev_b16 v107.h, 8, v148.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v109.l, 8, v153.l
	v_lshlrev_b16 v112.h, 8, v160.l
	v_lshlrev_b16 v113.h, 8, v162.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v153, v149, v168 :: v_dual_fmac_f32 v54, v158, v138
	v_mul_f32_e32 v160, v150, v171
	v_mul_f32_e32 v162, v149, v171
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v62, v156, v134
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v171, v150, v181 :: v_dual_lshlrev_b32 v176, 16, v207
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v172, 16, v202
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v88.h, 0xff, v89.h
	v_and_b16 v89.h, 0xff, v91.h
	v_and_b16 v91.h, 0xff, v95.h
	v_and_b16 v95.h, 0xff, v96.h
	v_and_b16 v96.h, 0xff, v97.h
	v_and_b16 v97.h, 0xff, v98.h
	v_and_b16 v98.h, 0xff, v99.h
	v_and_b16 v99.h, 0xff, v100.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v167, 16, v197
	v_lshlrev_b32_e32 v173, 16, v203
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v100.h, 8, v102.l
	v_lshlrev_b16 v102.l, 8, v105.l
	v_lshlrev_b16 v102.h, 8, v106.l
	v_lshlrev_b16 v103.h, 8, v108.l
	v_lshlrev_b16 v105.h, 8, v112.l
	v_lshlrev_b16 v106.l, 8, v113.l
	v_lshlrev_b16 v106.h, 8, v114.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v148, 16, v205
	v_lshlrev_b32_e32 v177, 16, v208
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v108.l, 8, v151.l
	v_lshlrev_b16 v112.l, 8, v159.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v151, v150, v168
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v175, 16, v206
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v87.l, v87.l, v107.l
	v_or_b16 v87.h, v87.h, v107.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v107, v150, v176
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v159, v150, v172
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v179, 16, v210
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v67, v153, v131 :: v_dual_lshlrev_b32 v170, 16, v200
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v215, s45, v16
	v_add_nc_u32_e32 v216, s45, v17
	v_lshlrev_b16 v104.h, 8, v110.l
	v_lshlrev_b16 v105.l, 8, v111.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v108.h, 8, v152.l
	v_lshlrev_b16 v109.h, 8, v154.l
	v_lshlrev_b16 v110.l, 8, v155.l
	v_lshlrev_b16 v111.l, 8, v157.l
	v_lshlrev_b16 v113.l, 8, v161.l
	v_lshlrev_b16 v114.l, 8, v163.l
	v_lshlrev_b16 v114.h, 8, v164.l
	v_lshlrev_b16 v115.l, 8, v165.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v152, v150, v167
	v_mul_f32_e32 v155, v150, v170
	v_mul_f32_e32 v163, v150, v174
	v_mul_f32_e32 v164, v150, v173
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v30.l, v30.l, v102.l
	v_or_b16 v30.h, v30.h, v102.h
	v_or_b16 v31.l, v31.l, v103.l
	v_or_b16 v31.h, v31.h, v103.h
	v_or_b16 v86.l, v86.l, v106.l
	v_or_b16 v86.h, v86.h, v106.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v103, v150, v148
	v_mul_f32_e32 v106, v150, v177
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v70, v151, v127
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v102, v150, v175
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v44, v159, v139 :: v_dual_add_nc_u32 v219, s45, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v168, v150, v179
	v_mul_f32_e32 v150, v150, v180
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v149, v167
	v_mul_f32_e32 v161, v149, v172
	v_mul_f32_e32 v165, v149, v174
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v167, v149, v178
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v157, v149, v170 :: v_dual_add_nc_u32 v214, s45, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v217, s45, v18
	v_add_nc_u32_e32 v218, s45, v19
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v115.h, 8, v166.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v100.l
	v_or_b16 v9.h, v9.h, v100.h
	v_or_b16 v10.l, v10.l, v101.l
	v_or_b16 v10.h, v10.h, v101.h
	v_or_b16 v32.l, v32.l, v104.l
	v_or_b16 v32.h, v32.h, v104.h
	v_or_b16 v85.l, v85.l, v105.l
	v_or_b16 v85.h, v85.h, v105.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v100, v149, v175
	v_mul_f32_e32 v101, v149, v148
	v_mul_f32_e32 v105, v149, v176
	v_mul_f32_e32 v148, v149, v179
	v_mul_f32_e32 v170, v149, v181
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v59, v157, v137
	v_fmac_f32_e32 v42, v161, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v166, v149, v173
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v34, v165, v146
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v104, v149, v177 :: v_dual_add_nc_u32 v213, s45, v14
	v_mul_f32_e32 v149, v149, v180
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v88.l, v88.l, v108.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v66, v154, v132
	v_dual_fmac_f32 v41, v162, v143 :: v_dual_fmac_f32 v36, v163, v144
	v_dual_fmac_f32 v33, v166, v147 :: v_dual_fmac_f32 v68, v100, v120
	v_dual_fmac_f32 v69, v152, v128 :: v_dual_fmac_f32 v60, v105, v121
	v_dual_fmac_f32 v63, v155, v133 :: v_dual_fmac_f32 v38, v170, v126
	v_dual_fmac_f32 v43, v160, v140 :: v_dual_fmac_f32 v50, v167, v123
	v_dual_fmac_f32 v35, v164, v145 :: v_dual_fmac_f32 v64, v107, v136
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v49, v101, v119 :: v_dual_fmac_f32 v72, v102, v129
	v_dual_fmac_f32 v61, v104, v122 :: v_dual_fmac_f32 v52, v169, v141
	v_dual_fmac_f32 v51, v148, v124 :: v_dual_fmac_f32 v40, v171, v118
	v_fmac_f32_e32 v37, v149, v125
	v_fmac_f32_e32 v71, v103, v130
	v_fmac_f32_e32 v65, v106, v135
	v_fmac_f32_e32 v53, v168, v116
	v_fmac_f32_e32 v39, v150, v117
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v88.h, v88.h, v108.h
	v_or_b16 v89.l, v89.l, v109.l
	v_or_b16 v89.h, v89.h, v109.h
	v_or_b16 v91.l, v91.l, v110.l
	v_or_b16 v91.h, v91.h, v110.h
	v_or_b16 v95.l, v95.l, v111.l
	v_or_b16 v95.h, v95.h, v111.h
	v_or_b16 v96.l, v96.l, v112.l
	v_or_b16 v96.h, v96.h, v112.h
	v_or_b16 v97.l, v97.l, v113.l
	v_or_b16 v97.h, v97.h, v113.h
	v_or_b16 v98.l, v98.l, v114.l
	v_or_b16 v98.h, v98.h, v114.h
	v_or_b16 v99.l, v99.l, v115.l
	v_or_b16 v99.h, v99.h, v115.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v213, v9
	ds_store_b16_d16_hi v213, v9 offset:64
	ds_store_b16 v214, v10
	ds_store_b16_d16_hi v214, v10 offset:64
	ds_store_b16 v215, v30
	ds_store_b16_d16_hi v215, v30 offset:64
	ds_store_b16 v216, v31
	ds_store_b16_d16_hi v216, v31 offset:64
	ds_store_b16 v217, v32
	ds_store_b16_d16_hi v217, v32 offset:64
	ds_store_b16 v213, v85 offset:640
	ds_store_b16_d16_hi v213, v85 offset:704
	ds_store_b16 v218, v86
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v213, v88 offset:16384
	ds_store_b16_d16_hi v213, v88 offset:16448
	ds_store_b16 v214, v89 offset:16384
	ds_store_b16_d16_hi v214, v89 offset:16448
	ds_store_b16 v215, v91 offset:16384
	ds_store_b16_d16_hi v215, v91 offset:16448
	ds_store_b16 v216, v95 offset:16384
	ds_store_b16_d16_hi v216, v95 offset:16448
	ds_store_b16 v217, v96 offset:16384
	ds_store_b16_d16_hi v217, v96 offset:16448
	ds_store_b16 v213, v97 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v218, v86 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v213, v97 offset:17088
	ds_store_b16 v218, v98 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v219, v87
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v218, v98 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v219, v87 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v219, v99 offset:16384
	ds_store_b16_d16_hi v219, v99 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v25, v22 :: v_dual_mov_b32 v26, v24
	v_mov_b32_e32 v1, v23
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8800
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v6, s0, v94
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v7, s0, v92
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v26
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v3, s0, v90
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v8, s0, v93
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v85, 0, 1, s2
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v112, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v5, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[1:4], v3 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v85
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v86, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v5, v21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[21:24], v6
	ds_load_b128 v[9:12], v6 offset:1024
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v161, v5, v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v7
	ds_load_b128 v[13:16], v7 offset:1024
	ds_load_b128 v[17:20], v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v8 offset:1024
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v88, 0
	v_xor_b32_e32 v164, 16, v161
	v_xor_b32_e32 v162, 32, v161
	v_xor_b32_e32 v163, 48, v161
	v_mov_b32_e32 v87, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v104, s23 :: v_dual_add_nc_u32 v85, s12, v161
	v_dual_mov_b32 v102, s21 :: v_dual_add_nc_u32 v89, s12, v164
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[85:88], v85
	ds_load_b128 v[105:108], v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v98, s17 :: v_dual_add_nc_u32 v91, s12, v162
	v_dual_mov_b32 v100, s19 :: v_dual_add_nc_u32 v89, s12, v163
	v_mov_b32_e32 v103, s22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v101, s20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v99, s18
	v_mov_b32_e32 v97, s16
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[85:88], v[29:32], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[85:88], v[1:4], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[105:108], v[21:24], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[9:12], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[109:112], v[25:28], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[109:112], v[13:16], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[117:120], v[17:20], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[117:120], v[5:8], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v125
	v_cvt_f32_i32_e32 v95, v126
	v_cvt_f32_i32_e32 v96, v127
	v_cvt_f32_i32_e32 v85, v128
	v_cvt_f32_i32_e32 v86, v129
	v_cvt_f32_i32_e32 v120, v97
	v_cvt_f32_i32_e32 v121, v98
	v_cvt_f32_i32_e32 v118, v99
	v_cvt_f32_i32_e32 v119, v100
	v_cvt_f32_i32_e32 v113, v101
	v_cvt_f32_i32_e32 v114, v102
	v_cvt_f32_i32_e32 v87, v103
	v_cvt_f32_i32_e32 v88, v104
	v_cvt_f32_i32_e32 v115, v122
	v_cvt_f32_i32_e32 v117, v123
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v97, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v104, s19 :: v_dual_add_nc_u32 v89, s10, v161
	v_dual_mov_b32 v102, s17 :: v_dual_add_nc_u32 v91, s10, v164
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	ds_load_b128 v[105:108], v89
	ds_load_b128 v[122:125], v91
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v98, s13 :: v_dual_add_nc_u32 v91, s10, v162
	v_dual_mov_b32 v100, s15 :: v_dual_add_nc_u32 v89, s10, v163
	v_mov_b32_e32 v103, s18
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[126:129], v91
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v101, s16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[141:144], v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v99, s14
	v_mov_b32_e32 v97, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[105:108], v[29:32], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[1:4], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[122:125], v[21:24], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[122:125], v[9:12], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[126:129], v[25:28], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[126:129], v[13:16], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[141:144], v[17:20], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[141:144], v[5:8], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v124, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v125, v136
	v_cvt_f32_i32_e32 v122, v137
	v_cvt_f32_i32_e32 v123, v138
	v_cvt_f32_i32_e32 v89, v139
	v_cvt_f32_i32_e32 v91, v140
	v_cvt_f32_i32_e32 v131, v97
	v_cvt_f32_i32_e32 v132, v98
	v_cvt_f32_i32_e32 v129, v99
	v_cvt_f32_i32_e32 v130, v100
	v_cvt_f32_i32_e32 v126, v101
	v_cvt_f32_i32_e32 v127, v102
	v_cvt_f32_i32_e32 v97, v103
	v_cvt_f32_i32_e32 v98, v104
	v_cvt_f32_i32_e32 v116, v133
	v_cvt_f32_i32_e32 v128, v134
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(6)
	v_add_lshl_u32 v1, v83, s0, 1
	v_add_lshl_u32 v2, v84, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v82, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v81, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v165, v1, s[8:11], 0 offen
	buffer_load_u16 v166, v2, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v80, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v3 :: v_dual_cndmask_b32 v3, 0x80000000, v4
	v_add_lshl_u32 v4, v79, s0, 1
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v5, v55, s0, 1
	v_add_lshl_u32 v6, v56, s0, 1
	v_add_lshl_u32 v7, v57, s0, 1
	v_add_lshl_u32 v8, v58, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v9, s0, v78, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v10, s0, v77, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v11, s0, v76, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_clause 0x7
	buffer_load_u16 v168, v2, s[28:31], 0 offen
	buffer_load_u16 v167, v3, s[28:31], 0 offen
	buffer_load_u16 v158, v1, s[28:31], 0 offen
	buffer_load_u16 v157, v4, s[28:31], 0 offen
	buffer_load_u16 v143, v5, s[28:31], 0 offen
	buffer_load_u16 v142, v6, s[28:31], 0 offen
	buffer_load_u16 v99, v7, s[28:31], 0 offen
	buffer_load_u16 v100, v8, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v4, s0, v74, 1
	v_add_lshl_u32 v5, s0, v73, 1
	v_dual_cndmask_b32 v1, 0x80000000, v9 :: v_dual_cndmask_b32 v2, 0x80000000, v10
	v_add_lshl_u32 v6, s0, v75, 1
	v_add_lshl_u32 v7, s0, v47, 1
	v_add_lshl_u32 v8, s0, v48, 1
	v_dual_cndmask_b32 v3, 0x80000000, v11 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_clause 0x7
	buffer_load_u16 v170, v1, s[28:31], 0 offen
	buffer_load_u16 v169, v2, s[28:31], 0 offen
	buffer_load_u16 v160, v3, s[28:31], 0 offen
	buffer_load_u16 v159, v4, s[28:31], 0 offen
	buffer_load_u16 v156, v5, s[28:31], 0 offen
	buffer_load_u16 v155, v6, s[28:31], 0 offen
	buffer_load_u16 v101, v7, s[28:31], 0 offen
	buffer_load_u16 v102, v8, s[28:31], 0 offen
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v17, s46, v92
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v1, s46, v90
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v5, s46, v94
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v18, s46, v93
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[29:32], v17
	ds_load_b128 v[21:24], v17 offset:1024
	ds_load_b128 v[25:28], v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[17:20], v18 offset:1024
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[1:4], v1 offset:1024
	ds_load_b128 v[9:12], v5
	ds_load_b128 v[5:8], v5 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v90, 0, 1, s3
	v_mov_b32_e32 v137, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v90
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v151, s19 :: v_dual_add_nc_u32 v90, s45, v161
	v_dual_mov_b32 v149, s17 :: v_dual_add_nc_u32 v92, s45, v164
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[134:137], v90
	ds_load_b128 v[138:141], v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v145, s13 :: v_dual_add_nc_u32 v92, s45, v162
	v_dual_mov_b32 v147, s15 :: v_dual_add_nc_u32 v90, s45, v163
	v_mov_b32_e32 v150, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[171:174], v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v148, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[175:178], v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v146, s14
	v_mov_b32_e32 v144, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[134:137], v[13:16], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[134:137], v[1:4], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[138:141], v[9:12], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[138:141], v[5:8], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[171:174], v[29:32], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[171:174], v[21:24], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[175:178], v[25:28], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[175:178], v[17:20], v[144:151] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v134, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v135, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v90, v109
	v_cvt_f32_i32_e32 v92, v110
	v_cvt_f32_i32_e32 v138, v144
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v140, v146
	v_cvt_f32_i32_e32 v141, v147
	v_cvt_f32_i32_e32 v107, v148
	v_cvt_f32_i32_e32 v108, v149
	v_cvt_f32_i32_e32 v94, v150
	v_cvt_f32_i32_e32 v93, v151
	v_cvt_f32_i32_e32 v136, v103
	v_cvt_f32_i32_e32 v137, v104
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v110, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v178, s19 :: v_dual_add_nc_u32 v103, s44, v161
	v_dual_mov_b32 v177, s18 :: v_dual_add_nc_u32 v104, s44, v164
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[179:182], v103
	ds_load_b128 v[183:186], v104
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v175, s16 :: v_dual_add_nc_u32 v104, s44, v162
	v_dual_mov_b32 v176, s17 :: v_dual_add_nc_u32 v103, s44, v163
	v_dual_mov_b32 v174, s15 :: v_dual_mov_b32 v173, s14
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[161:164], v104
	ds_load_b128 v[187:190], v103
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v172, s13 :: v_dual_mov_b32 v171, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[179:182], v[13:16], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[179:182], v[1:4], v[171:178] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[183:186], v[9:12], v[145:152] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[183:186], v[5:8], v[171:178] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[161:164], v[29:32], v[145:152] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[161:164], v[21:24], v[171:178] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[187:190], v[25:28], v[145:152] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[187:190], v[17:20], v[171:178] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v144, v149
	v_cvt_f32_i32_e32 v145, v150
	v_cvt_f32_i32_e32 v103, v151
	v_cvt_f32_i32_e32 v104, v152
	v_cvt_f32_i32_e32 v151, v171
	v_cvt_f32_i32_e32 v152, v172
	v_cvt_f32_i32_e32 v153, v173
	v_cvt_f32_i32_e32 v154, v174
	v_cvt_f32_i32_e32 v149, v175
	v_cvt_f32_i32_e32 v150, v176
	v_cvt_f32_i32_e32 v109, v177
	v_cvt_f32_i32_e32 v110, v178
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s35, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15) lgkmcnt(6)
	v_mov_b16_e64 v21.h, v168.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(6) lgkmcnt(4)
	v_mov_b16_e64 v20.h, v169.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v1, v83, s0, 1
	v_add_lshl_u32 v2, v84, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v82, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v6, v81, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v7, v80, s1, 1
	v_add_lshl_u32 v8, v79, s1, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v4, v1, s[8:11], 0 offen
	buffer_load_u16 v5, v2, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v1, 0x80000000, v6 :: v_dual_cndmask_b32 v2, 0x80000000, v7
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	s_clause 0x3
	buffer_load_u16 v8, v3, s[28:31], 0 offen
	buffer_load_u16 v9, v1, s[28:31], 0 offen
	buffer_load_u16 v10, v2, s[28:31], 0 offen
	buffer_load_u16 v11, v6, s[28:31], 0 offen
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s1, s26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v25.h, v158.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v7, s0, v78, 1
	v_add_lshl_u32 v2, s0, v77, 1
	v_add_lshl_u32 v3, s0, v76, 1
	v_add_lshl_u32 v6, s0, v74, 1
	v_add_lshl_u32 v12, s0, v75, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v1, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v7, s0, v73, 1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v17, 0x80000000, v12, vcc_lo
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v28.h, v155.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x5
	buffer_load_u16 v12, v1, s[28:31], 0 offen
	buffer_load_u16 v13, v2, s[28:31], 0 offen
	buffer_load_u16 v14, v3, s[28:31], 0 offen
	buffer_load_u16 v15, v6, s[28:31], 0 offen
	buffer_load_u16 v16, v7, s[28:31], 0 offen
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v6, s27, v45
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v1.h, v166.l
	v_mov_b16_e64 v2.h, v165.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v7.h, v170.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v18.h, v143.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v7.l, v1.l
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v3, 0x78, v46
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v21.l, v1.l
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v28.l, v1.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v18.l, v1.l
	v_add_lshl_u32 v55, v55, s1, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s4, s33, s27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v19.h, v142.l
	v_mov_b16_e32 v19.l, v1.l
	v_add_lshl_u32 v56, v56, s1, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v23.h, v160.l
	v_mov_b16_e32 v23.l, v1.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v57, s1, 1
	v_add_lshl_u32 v58, v58, s1, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s4, s4, s26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v22.h, v167.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v27.h, v156.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v22.l, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v27.l, v1.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v1, v20
	v_mul_f32_e32 v76, v1, v7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v78, v1, v21
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v2, v20
	v_dual_mul_f32 v7, v2, v7 :: v_dual_mul_f32 v82, v1, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v25, v2, v25 :: v_dual_mul_f32 v84, v1, v27
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v83, v1, v28
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v48, s0, v48, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v143, v1, v18
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v3, s4, v3, v6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v6, 0x80000000, v55, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v142, v1, v19 :: v_dual_cndmask_b32 v55, 0x80000000, v56
	v_dual_mul_f32 v21, v2, v21 :: v_dual_mul_f32 v80, v1, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v23, v2, v23 :: v_dual_cndmask_b32 v56, 0x80000000, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v57, 0x80000000, v58, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v58, v76, v131, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v78, v120, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v7, v116, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v111, v54
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v143, v113, v43
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v24.h, v159.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v26.h, v157.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v24.l, v1.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v27, v2, v27
	v_mul_f32_e32 v28, v2, v28
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v47, s0, v47, 1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v79, v1, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v1, v26
	v_mul_f32_e32 v26, v2, v26
	v_dual_mul_f32 v77, v1, v22 :: v_dual_mul_f32 v24, v2, v24
	v_mul_f32_e32 v22, v2, v22
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v128, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v112, v59
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v28, v28, v123, v51
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v115, v66
	v_fma_f32 v22, v22, v117, v67
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v80, v80, v129, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v81, v119, v63
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v124, v60
	v_fma_f32 v24, v24, v125, v61
	v_fma_f32 v83, v83, v127, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v68, v20, s2
	v_cndmask_b32_e64 v26, v59, v26, s2
	v_cndmask_b32_e64 v25, v54, v25, s2
	v_cndmask_b32_e64 v28, v51, v28, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v75, v75, v132, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v77, v121, v70
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v79, v79, v130, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v82, v118, v62
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v84, v84, v126, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v78, s2
	v_cndmask_b32_e64 v22, v67, v22, s2
	v_cndmask_b32_e64 v21, v66, v21, s2
	v_cndmask_b32_e64 v64, v64, v80, s2
	v_cndmask_b32_e64 v63, v63, v81, s2
	v_cndmask_b32_e64 v24, v61, v24, s2
	v_cndmask_b32_e64 v23, v60, v23, s2
	v_cndmask_b32_e64 v53, v53, v83, s2
	v_cndmask_b32_e64 v65, v65, v79, s2
	v_cndmask_b32_e64 v62, v62, v82, s2
	v_cndmask_b32_e64 v52, v52, v84, s2
	v_cndmask_b32_e64 v69, v69, v76, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v112, v142, v114, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v73.h, v1.l
	v_mov_b16_e32 v74.h, v1.l
	v_mov_b16_e32 v29.h, v1.l
	v_mov_b16_e32 v31.h, v1.l
	v_mov_b16_e32 v32.h, v1.l
	v_mov_b16_e32 v30.h, v1.l
	v_mov_b16_e32 v46.h, v1.l
	v_mov_b16_e32 v45.h, v1.l
	v_and_b32_e32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_lshl_b32 s12, s27, 4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v2, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v96, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v42, v19, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v27, v27, v122, v50
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v8, 16, v8
	s_clause 0x3
	buffer_load_u16 v113, v6, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v7, v56, s[28:31], 0 offen
	buffer_load_u16 v6, v57, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v50, v27, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x1
	buffer_load_u16 v20, v47, s[28:31], 0 offen
	buffer_load_u16 v47, v48, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v50, v5, v8
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v8, v4, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	v_mul_f32_e32 v48, v5, v9
	v_dual_mul_f32 v9, v4, v9 :: v_dual_mul_f32 v54, v5, v10
	v_mul_f32_e32 v10, v4, v10
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v51, v5, v11 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v60, v5, v12 :: v_dual_lshlrev_b32 v17, 16, v17
	v_dual_mul_f32 v59, v5, v13 :: v_dual_mul_f32 v12, v4, v12
	v_dual_mul_f32 v13, v4, v13 :: v_dual_mul_f32 v66, v5, v14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v11, v4, v11 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v61, v5, v15 :: v_dual_mul_f32 v14, v4, v14
	v_mul_f32_e32 v67, v5, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v13, v13, v146, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v72, v75, s2
	v_cndmask_b32_e64 v57, v71, v58, s2
	v_cndmask_b32_e64 v58, v70, v77, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v15, v4, v15 :: v_dual_mul_f32 v70, v5, v16
	v_mul_f32_e32 v16, v4, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v136, v21
	v_fma_f32 v51, v51, v141, v63
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v12, v12, v133, v49
	v_fma_f32 v66, v66, v153, v64
	v_fma_f32 v14, v14, v147, v23
	v_fma_f32 v67, v67, v150, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v68, v13, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v137, v22
	v_fma_f32 v54, v54, v140, v62
	v_fma_f32 v10, v10, v134, v25
	v_fma_f32 v11, v11, v135, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v60, v60, v151, v57
	v_fma_f32 v59, v59, v152, v56
	v_fma_f32 v61, v61, v154, v65
	v_fma_f32 v15, v15, v148, v24
	v_fma_f32 v70, v70, v149, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v21, v8, s3
	v_cndmask_b32_e64 v21, v63, v51, s3
	v_cndmask_b32_e64 v12, v49, v12, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v4, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v64, v66, s3
	v_cndmask_b32_e64 v14, v23, v14, s3
	v_cndmask_b32_e64 v23, v53, v67, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v144, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v22, v9, s3
	v_cndmask_b32_e64 v22, v62, v54, s3
	v_cndmask_b32_e64 v11, v26, v11, s3
	v_cndmask_b32_e64 v10, v25, v10, s3
	v_cndmask_b32_e64 v25, v56, v59, s3
	v_cndmask_b32_e64 v26, v57, v60, s3
	v_cndmask_b32_e64 v49, v65, v61, s3
	v_cndmask_b32_e64 v15, v24, v15, s3
	v_cndmask_b32_e64 v24, v52, v70, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v145, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v139, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v27, v16, s3
	v_cndmask_b32_e64 v17, v28, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v27, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v25
	v_dual_mul_f32 v56, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v53, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v58, v48, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v58, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v52, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v57
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v59
	v_cndmask_b32_e64 v56, 0, 0x42800000, s5
	v_cndmask_b32_e64 v57, 0, 0x42800000, s8
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v12
	v_exp_f32_e32 v53, v53
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v54
	v_cndmask_b32_e64 v59, 0, 0x42800000, s10
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v54, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v58
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v53, v53, v65
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_cndmask_b32_e64 v58, 0, 0x42800000, s7
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v51 :: v_dual_add_f32 v53, 1.0, v53
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s8
	v_dual_mul_f32 v62, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v56, v56, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v53, v53, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v57, v57, v70
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v15
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v50, v138, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v27, v27
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v58, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v84, v67
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v69, v50, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s7
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s6
	v_ldexp_f32 v28, v28, v63
	v_ldexp_f32 v27, v27, v64
	v_ldexp_f32 v58, v58, v69
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v123, -v67, v84, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v60, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_add_f32 v28, 1.0, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v54, v54, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, s1, v13, v53, v13
	v_fmac_f32_e32 v84, v123, v84
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v63, null, v28, v28, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v123, v68, v84
	v_div_scale_f32 v78, null, v58, v58, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v64, vcc_lo, v25, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v117, v78
	v_div_scale_f32 v79, s7, v15, v58, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v27, v27, v26
	v_fma_f32 v121, -v63, v82, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v83, v65
	v_fma_f32 v127, -v78, v117, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v131, -v67, v123, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v52, v52, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, s0, v26, v27, v26
	v_dual_fmac_f32 v117, v127, v117 :: v_dual_fmac_f32 v82, v121, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v60, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v122, -v65, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_mul_f32 v127, v79, v117
	v_dual_add_f32 v56, 1.0, v56 :: v_dual_mul_f32 v121, v64, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v83, v122, v83
	v_div_scale_f32 v69, null, v52, v52, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v75, s5, v49, v56, v49
	v_fma_f32 v129, -v63, v121, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v60, v60, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v56, v56, v49
	v_rcp_f32_e32 v114, v69
	v_fmac_f32_e32 v121, v129, v82
	v_fmac_f32_e32 v123, v131, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v115, v71
	v_div_scale_f32 v70, s4, v12, v52, v12
	v_fma_f32 v63, -v63, v121, v64
	v_div_scale_f32 v80, null, v57, v57, v14
	v_fma_f32 v135, -v78, v127, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v124, -v69, v114, 1.0
	v_div_fmas_f32 v63, v63, v82, v121
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v125, -v71, v115, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v114, v124, v114
	v_div_fixup_f32 v25, v63, v28, v25
	v_mul_f32_e32 v122, v66, v83
	v_fmac_f32_e32 v115, v125, v115
	v_div_scale_f32 v76, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v48, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v130, -v65, v122, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v60, 1.0, v60 :: v_dual_mul_f32 v125, v75, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v116, v76
	v_div_scale_f32 v77, s6, v51, v54, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v122, v130, v83
	v_fma_f32 v133, -v71, v125, v75
	v_rcp_f32_e32 v118, v80
	v_fmac_f32_e32 v127, v135, v117
	v_div_scale_f32 v119, s8, v14, v57, v14
	v_fma_f32 v64, -v65, v122, v66
	v_fma_f32 v65, -v67, v123, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v126, -v76, v116, 1.0
	v_fmac_f32_e32 v125, v133, v115
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v31.l, v25.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v64, v64, v83, v122
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v116, v126, v116
	v_div_fmas_f32 v65, v65, v84, v123
	v_fma_f32 v128, -v80, v118, 1.0
	v_fma_f32 v67, -v71, v125, v75
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v126, v77, v116
	v_div_fixup_f32 v13, v65, v53, v13
	v_mul_f32_e32 v124, v70, v114
	v_fmac_f32_e32 v118, v128, v118
	v_div_fixup_f32 v26, v64, v27, v26
	v_fma_f32 v134, -v76, v126, v77
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v132, -v69, v124, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v62
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v50, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v126, v134, v116
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.l, v9.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v124, v132, v114
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v59, v59
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v26.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v76, v126, v77
	v_div_scale_f32 v81, null, v60, v60, v23
	v_fma_f32 v66, -v69, v124, v70
	v_fma_f32 v69, -v78, v127, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s11
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v66, v114, v124
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v120, v81
	v_div_fmas_f32 v27, v67, v115, v125
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v12, v28, v52, v12
	v_div_fmas_f32 v48, v68, v116, v126
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v27, v27, v56, v49
	v_mul_f32_e32 v128, v119, v118
	v_div_fmas_f32 v28, v69, v117, v127
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v8, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v48, v48, v54, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v28, v58, v15
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v21, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v136, -v80, v128, v119
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v22, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v32
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v11, v11, v8 :: v_dual_and_b32 v8, 1, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v128, v136, v118
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v73.l, v15.h
	v_add3_u32 v22, v26, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v11.h
	v_cmp_o_f32_e64 s5, v15, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v80, v128, v119
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v74.l, v21.h
	v_add3_u32 v9, v9, v8, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v13, v70, v118, v128
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v8.l, 0x7fff, v22.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v81, v120, 1.0
	v_div_fixup_f32 v13, v13, v57, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v31
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v120, v22, v120
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v10, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v25, v14, 0x7fff
	v_and_b32_e32 v25, 1, v73
	v_cndmask_b16 v8.h, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v15, v25, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v43, v111, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v21, v13, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v29, 16, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v30.l, v12.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v31, 16, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v10.h
	v_cmp_o_f32_e64 s4, v12, v12
	v_cmp_o_f32_e64 s8, v10, v10
	v_and_b32_e32 v14, 1, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v5, v31
	v_mul_f32_e32 v31, v4, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v12, v14, 0x7fff
	v_and_b32_e32 v14, 1, v45
	v_add3_u32 v10, v10, v26, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v5, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s4
	v_add3_u32 v11, v11, v14, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s5
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v15, v59, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v4, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v26
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v16 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, vcc_lo, v23, v60, v23
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v10, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v15, v15, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v44, v112, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, null, v21, v21, v17
	v_rcp_f32_e32 v28, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v30
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v26, v27, v120
	.loc	1 426 31 is_stmt 1              ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v81, v26, v27
	v_fma_f32 v43, -v22, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v30, v44, 1.0
	v_fmac_f32_e32 v26, v32, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v43, v28
	v_div_scale_f32 v32, s0, v24, v15, v24
	v_fmac_f32_e32 v44, v50, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v81, v26, v27
	v_div_scale_f32 v50, s1, v17, v21, v17
	v_mul_f32_e32 v49, v32, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v27, v120, v26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v22, v49, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v27, v28
	v_mul_f32_e32 v27, v50, v44
	v_fma_f32 v22, -v22, v49, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v30, v27, v50
	v_div_fmas_f32 v22, v22, v28, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v32, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v22, v15, v24
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 426 31 is_stmt 1              ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v24.l, v1.l
	v_mov_b16_e32 v24.h, v101.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v2, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v10, v10, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v95, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v43, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v41, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v29, v105, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v30, v27, v50
	v_fma_f32 v51, -v45, v43, 1.0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v31, v106, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v28, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v29, v44, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v43, v51, v43
	v_div_scale_f32 v51, s4, v16, v10, v16
	s_mov_b32 vcc_lo, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v30, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v27, v21, v17
	v_mul_f32_e32 v52, v51, v43
	v_div_fixup_f32 v21, v26, v60, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v19, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v45, v52, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v19.l, v1.l
	v_mov_b16_e32 v19.h, v102.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v13.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v52, v42, v43 :: v_dual_and_b32 v17, 1, v17
	v_fma_f32 v31, -v45, v52, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v13, v17, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v31, v43, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v46, v108, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v29, v10, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v48, v107, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v31, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v18, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v25, v16, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v14, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.h, v1.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v10.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v16, v15
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v1, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v19, v2, v19 :: v_dual_and_b32 v18, 1, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v15.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v14, v16, v98, v40
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v25.h, v100.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v10, v18, 0x7fff
	v_and_b32_e32 v10, 1, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v40, v14, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v5, v16
	v_mul_f32_e32 v23, v1, v24
	v_mul_f32_e32 v24, v2, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v91, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v13.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v110, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.h, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v24, v24, v89, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v38, v19, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v22, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v37, v24, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v5, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v23, v97, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v13, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v23.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v39, v18, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v5, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v5, v5, v6 :: v_dual_mul_f32 v16, v4, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v23.h, v99.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v109, v13
	v_fma_f32 v16, v16, v104, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v4, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v4, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v22, s3
	v_cndmask_b32_e64 v16, v19, v16, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v1, v25
	v_mul_f32_e32 v25, v2, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v2, v2, v23 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v88, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v20, v103, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v85, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v36, v22, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v1, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v25, v86, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v24, v19, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v87, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v29, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v34, v23, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v35, v27, s2
	v_cndmask_b32_e64 v2, v33, v2, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v92, v23
	v_fma_f32 v5, v5, v93, v22
	v_fma_f32 v37, v37, v94, v27
	v_fma_f32 v4, v4, v90, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v15, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v23, v6, s3
	v_cndmask_b32_e64 v5, v22, v5, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v2, v2, v4, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v28, v28, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v28, v28, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v42, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s1, v16, v28, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v14 :: v_dual_mul_f32 v25, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v18, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v36, v25, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v34, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v18, v18, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, vcc_lo, v14, v18, v14
	v_rcp_f32_e32 v26, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v24, v24, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v20, v26, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v29, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v26, v30, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v30, null, v24, v24, v13
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v32, v26
	v_rcp_f32_e32 v35, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v41, null, v29, v29, v19
	v_fma_f32 v38, -v20, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v38, v26
	v_fma_f32 v39, -v30, v35, 1.0
	v_div_scale_f32 v38, s0, v13, v24, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v31, v32
	v_fmac_f32_e32 v35, v39, v35
	v_rcp_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v26, v31
	v_mul_f32_e32 v32, v38, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v30, v32, v38
	v_fma_f32 v31, -v41, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v26, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v31, v39
	v_div_scale_f32 v31, s4, v19, v29, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v30, v32, v38
	v_mul_f32_e32 v26, v31, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v7, v30, v35, v32
	v_fma_f32 v30, -v36, v25, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v26, v31
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v7, v24, v13
	v_div_fmas_f32 v25, v30, v40, v25
	v_fmac_f32_e32 v26, v38, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.h, v1.l
	v_and_b32_e32 v0, 0x5040504, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v25, v28, v16
	v_fma_f32 v31, -v41, v26, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v26, v31, v39, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v27, v37, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v6.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v26, v29, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v20, v18, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v1.l
	v_mov_b16_e32 v14.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v4, v5, v4 :: v_dual_mul_f32 v5, v15, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v13
	v_and_b32_e32 v10, 1, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v4.h
	v_mov_b16_e32 v14.l, v5.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v6, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v6, v2, v10, 0x7fff
	v_and_b32_e32 v10, 1, v13
	v_and_b32_e32 v7, 1, v14
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v5, v7, 0x7fff
	v_add3_u32 v7, v4, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b32_e64 v5, v17, v9, s0
	v_cndmask_b16 v6.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v4, 0x3276, v10, s0
	v_cndmask_b32_e64 v7, v1, v11, s0
	v_cndmask_b32_e64 v1, v11, v1, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v11, v6, v12, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v9, v17, s0
	v_cndmask_b32_e64 v9, v21, v8, s0
	v_cndmask_b32_e64 v8, v8, v21, s0
	v_cndmask_b32_e64 v6, v12, v6, s0
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v10, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_perm_b32 v4, v10, v5, v0
	v_perm_b32 v6, v1, v7, v0
	v_perm_b32 v8, v12, v9, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x7060706, v2
	v_perm_b32 v5, v10, v5, v2
	v_perm_b32 v7, v1, v7, v2
	v_perm_b32 v10, v13, v11, v0
	v_lshlrev_b32_e32 v0, 1, v3
	v_perm_b32 v9, v12, v9, v2
	v_perm_b32 v11, v13, v11, v2
	v_add_lshl_u32 v1, v3, s12, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 220
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15756
; TotalNumSgprs: 50
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     220
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
