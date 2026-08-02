	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
	v_mov_b32_e32 v137, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 3, v137
	v_lshlrev_b32_e32 v2, 3, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v99, 0xf0, v137
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v98, 15, v137
	v_lshlrev_b32_e32 v101, 5, v137
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 3, v99
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v118, v98, 9, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v119, 0x90, v118
	v_add_nc_u32_e32 v59, 0, v118
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v0, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v120, 0x110, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v60, 0, v119
	v_add_nc_u32_e32 v61, 0, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v0
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
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v0, 2, v137
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s7, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v0, s12, v0
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s14, s13, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s18, s14, s17
	s_ashr_i32 s19, s6, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s14, 1
	s_sub_i32 s22, s13, s17
	s_cmp_ge_u32 s13, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s18, s14
	s_cselect_b32 s13, s22, s13
	s_add_i32 s18, s14, 1
	s_cmp_ge_u32 s13, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s18, s14
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s34, v3
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s13, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, 0xff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s3, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s13, s14, 31
.Ltmp15:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v115, v98, 4, v4
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s34, s30
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s33, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v100, v0, v2, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v0, s26, s15, v115
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s13, 24
.Ltmp17:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s14, s2
.Ltmp19:
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s34, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s27, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v0, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v14, s34, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[6:9], v6, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v4, s[20:23], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v5, 0x80000000, v14, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v0, s27, 6, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s30, 32
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[14:17], v4, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v5, s[20:23], 0 offen
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s35, v100
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s34, v0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s30, v100
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v98
	s_mov_b32 s12, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v38, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v0, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_load_b128 v[22:25], v4, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v5, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s34, v0
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_b64 v[56:57], v38, s[4:7], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x5f
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[20:23], 0 offen
	buffer_load_b128 v[34:37], v4, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[54:55], v2, s[4:7], 0 offen
	v_lshlrev_b32_e32 v2, 3, v137
	v_bfe_i32 v4, v137, 4, 1
	v_and_b32_e32 v0, 16, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 0x778, v2
	v_and_b32_e32 v4, 0x90, v4
	v_lshlrev_b32_e32 v2, 4, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v102, v4, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v98
	v_or_b32_e32 v5, 48, v98
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v58, 0, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v38, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v39, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v40, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_perm_b32 v41, v13, v9, 0x5010400
	v_perm_b32 v42, v13, v9, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v43, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v44, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v45, v20, v16, 0x5010400
	v_perm_b32 v20, v20, v16, 0x7030602
	v_perm_b32 v46, v21, v17, 0x5010400
	v_perm_b32 v47, v21, v17, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v6.l, 0xff, v38.l
	v_lshrrev_b32_e32 v48, 8, v38
	v_lshrrev_b32_e32 v49, 24, v38
	v_and_b16 v6.h, 0xff, v38.h
	v_and_b16 v7.l, 0xff, v10.l
	v_lshrrev_b32_e32 v38, 8, v10
	v_lshrrev_b32_e32 v50, 24, v10
	v_and_b16 v7.h, 0xff, v10.h
	v_and_b16 v8.l, 0xff, v39.l
	v_lshrrev_b32_e32 v51, 8, v39
	v_lshrrev_b32_e32 v52, 24, v39
	v_and_b16 v8.h, 0xff, v39.h
	v_and_b16 v9.l, 0xff, v11.l
	v_lshrrev_b32_e32 v39, 8, v11
	v_lshrrev_b32_e32 v53, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	v_and_b16 v10.l, 0xff, v40.l
	v_lshrrev_b32_e32 v62, 8, v40
	v_lshrrev_b32_e32 v63, 24, v40
	v_and_b16 v10.h, 0xff, v40.h
	v_and_b16 v11.l, 0xff, v12.l
	v_lshrrev_b32_e32 v40, 8, v12
	v_lshrrev_b32_e32 v64, 24, v12
	v_and_b16 v11.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v41.l
	v_lshrrev_b32_e32 v65, 8, v41
	v_lshrrev_b32_e32 v66, 24, v41
	v_and_b16 v12.h, 0xff, v41.h
	v_and_b16 v13.l, 0xff, v42.l
	v_lshrrev_b32_e32 v41, 8, v42
	v_lshrrev_b32_e32 v67, 24, v42
	v_and_b16 v13.h, 0xff, v42.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v42, v26, v22, 0x5010400
	v_perm_b32 v68, v26, v22, 0x7030602
	v_perm_b32 v69, v27, v23, 0x5010400
	v_perm_b32 v70, v27, v23, 0x7030602
	v_perm_b32 v71, v28, v24, 0x5010400
	v_perm_b32 v72, v28, v24, 0x7030602
	v_perm_b32 v73, v29, v25, 0x5010400
	v_perm_b32 v74, v29, v25, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v14.l, 0xff, v43.l
	v_lshrrev_b32_e32 v75, 8, v43
	v_lshrrev_b32_e32 v76, 24, v43
	v_and_b16 v14.h, 0xff, v43.h
	v_and_b16 v15.l, 0xff, v18.l
	v_lshrrev_b32_e32 v43, 8, v18
	v_lshrrev_b32_e32 v77, 24, v18
	v_and_b16 v15.h, 0xff, v18.h
	v_and_b16 v16.l, 0xff, v44.l
	v_lshrrev_b32_e32 v78, 8, v44
	v_lshrrev_b32_e32 v79, 24, v44
	v_and_b16 v16.h, 0xff, v44.h
	v_and_b16 v17.l, 0xff, v19.l
	v_lshrrev_b32_e32 v44, 8, v19
	v_lshrrev_b32_e32 v80, 24, v19
	v_and_b16 v17.h, 0xff, v19.h
	v_and_b16 v18.l, 0xff, v45.l
	v_lshrrev_b32_e32 v81, 8, v45
	v_lshrrev_b32_e32 v82, 24, v45
	v_and_b16 v18.h, 0xff, v45.h
	v_and_b16 v19.l, 0xff, v20.l
	v_lshrrev_b32_e32 v45, 8, v20
	v_lshrrev_b32_e32 v83, 24, v20
	v_and_b16 v19.h, 0xff, v20.h
	v_and_b16 v20.l, 0xff, v46.l
	v_lshrrev_b32_e32 v84, 8, v46
	v_lshrrev_b32_e32 v85, 24, v46
	v_and_b16 v20.h, 0xff, v46.h
	v_and_b16 v21.l, 0xff, v47.l
	v_lshrrev_b32_e32 v46, 8, v47
	v_lshrrev_b32_e32 v86, 24, v47
	v_and_b16 v21.h, 0xff, v47.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v47, v34, v30, 0x5010400
	v_perm_b32 v87, v34, v30, 0x7030602
	v_perm_b32 v88, v35, v31, 0x5010400
	v_perm_b32 v89, v35, v31, 0x7030602
	v_perm_b32 v90, v36, v32, 0x5010400
	v_perm_b32 v91, v36, v32, 0x7030602
	v_perm_b32 v92, v37, v33, 0x5010400
	v_perm_b32 v93, v37, v33, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v22.l, 8, v48.l
	v_lshlrev_b16 v26.l, 8, v62.l
	v_lshrrev_b32_e32 v62, 8, v42
	v_lshlrev_b16 v22.h, 8, v49.l
	v_lshlrev_b16 v26.h, 8, v63.l
	v_lshrrev_b32_e32 v63, 24, v42
	v_lshlrev_b16 v23.l, 8, v38.l
	v_lshlrev_b16 v27.h, 8, v64.l
	v_lshrrev_b32_e32 v64, 8, v68
	v_lshlrev_b16 v23.h, 8, v50.l
	v_lshlrev_b16 v28.l, 8, v65.l
	v_lshrrev_b32_e32 v65, 24, v68
	v_lshlrev_b16 v24.h, 8, v52.l
	v_lshlrev_b16 v29.h, 8, v67.l
	v_lshrrev_b32_e32 v67, 24, v69
	v_lshlrev_b16 v24.l, 8, v51.l
	v_lshlrev_b16 v25.l, 8, v39.l
	v_lshlrev_b16 v25.h, 8, v53.l
	v_lshlrev_b16 v27.l, 8, v40.l
	v_lshlrev_b16 v28.h, 8, v66.l
	v_lshlrev_b16 v29.l, 8, v41.l
	v_and_b16 v30.l, 0xff, v42.l
	v_and_b16 v30.h, 0xff, v42.h
	v_and_b16 v31.l, 0xff, v68.l
	v_and_b16 v31.h, 0xff, v68.h
	v_and_b16 v32.l, 0xff, v69.l
	v_lshrrev_b32_e32 v66, 8, v69
	v_and_b16 v32.h, 0xff, v69.h
	v_and_b16 v33.l, 0xff, v70.l
	v_lshrrev_b32_e32 v68, 8, v70
	v_lshrrev_b32_e32 v69, 24, v70
	v_and_b16 v33.h, 0xff, v70.h
	v_and_b16 v34.l, 0xff, v71.l
	v_lshrrev_b32_e32 v70, 8, v71
	v_lshrrev_b32_e32 v94, 24, v71
	v_and_b16 v34.h, 0xff, v71.h
	v_and_b16 v35.l, 0xff, v72.l
	v_lshrrev_b32_e32 v71, 8, v72
	v_lshrrev_b32_e32 v95, 24, v72
	v_and_b16 v35.h, 0xff, v72.h
	v_and_b16 v36.l, 0xff, v73.l
	v_lshrrev_b32_e32 v72, 8, v73
	v_lshrrev_b32_e32 v96, 24, v73
	v_and_b16 v36.h, 0xff, v73.h
	v_and_b16 v37.l, 0xff, v74.l
	v_lshrrev_b32_e32 v73, 8, v74
	v_lshrrev_b32_e32 v97, 24, v74
	v_and_b16 v37.h, 0xff, v74.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v38.l, 8, v75.l
	v_lshlrev_b16 v38.h, 8, v76.l
	v_lshlrev_b16 v39.l, 8, v43.l
	v_lshlrev_b16 v39.h, 8, v77.l
	v_lshlrev_b16 v40.l, 8, v78.l
	v_lshlrev_b16 v40.h, 8, v79.l
	v_lshlrev_b16 v41.l, 8, v44.l
	v_lshlrev_b16 v41.h, 8, v80.l
	v_lshlrev_b16 v42.l, 8, v81.l
	v_lshlrev_b16 v42.h, 8, v82.l
	v_lshlrev_b16 v43.l, 8, v45.l
	v_lshlrev_b16 v43.h, 8, v83.l
	v_lshlrev_b16 v44.l, 8, v84.l
	v_lshlrev_b16 v44.h, 8, v85.l
	v_lshlrev_b16 v45.l, 8, v46.l
	v_lshlrev_b16 v45.h, 8, v86.l
	v_and_b16 v46.l, 0xff, v47.l
	v_lshrrev_b32_e32 v74, 8, v47
	v_lshrrev_b32_e32 v75, 24, v47
	v_and_b16 v46.h, 0xff, v47.h
	v_and_b16 v47.l, 0xff, v87.l
	v_lshrrev_b32_e32 v76, 8, v87
	v_lshrrev_b32_e32 v77, 24, v87
	v_and_b16 v47.h, 0xff, v87.h
	v_and_b16 v48.l, 0xff, v88.l
	v_lshrrev_b32_e32 v78, 8, v88
	v_lshrrev_b32_e32 v79, 24, v88
	v_and_b16 v48.h, 0xff, v88.h
	v_and_b16 v49.l, 0xff, v89.l
	v_lshrrev_b32_e32 v80, 8, v89
	v_lshrrev_b32_e32 v81, 24, v89
	v_and_b16 v49.h, 0xff, v89.h
	v_lshrrev_b32_e32 v82, 8, v90
	v_lshrrev_b32_e32 v83, 24, v90
	v_lshrrev_b32_e32 v84, 8, v91
	v_lshrrev_b32_e32 v85, 24, v91
	v_lshrrev_b32_e32 v86, 8, v92
	v_lshrrev_b32_e32 v87, 24, v92
	v_lshrrev_b32_e32 v88, 8, v93
	v_lshrrev_b32_e32 v89, 24, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v6.l, v22.l
	v_lshlrev_b16 v22.l, 8, v62.l
	v_or_b16 v6.h, v6.h, v22.h
	v_lshlrev_b16 v22.h, 8, v63.l
	v_or_b16 v7.l, v7.l, v23.l
	v_lshlrev_b16 v23.l, 8, v64.l
	v_or_b16 v7.h, v7.h, v23.h
	v_lshlrev_b16 v23.h, 8, v65.l
	v_or_b16 v8.h, v8.h, v24.h
	v_lshlrev_b16 v24.h, 8, v67.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v50.l, 0xff, v90.l
	v_and_b16 v50.h, 0xff, v90.h
	v_and_b16 v51.l, 0xff, v91.l
	v_and_b16 v51.h, 0xff, v91.h
	v_and_b16 v52.l, 0xff, v92.l
	v_and_b16 v52.h, 0xff, v92.h
	v_and_b16 v53.l, 0xff, v93.l
	v_and_b16 v53.h, 0xff, v93.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v8.l, v8.l, v24.l
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	v_or_b16 v11.l, v11.l, v27.l
	v_or_b16 v11.h, v11.h, v27.h
	v_or_b16 v12.l, v12.l, v28.l
	v_or_b16 v12.h, v12.h, v28.h
	v_or_b16 v13.l, v13.l, v29.l
	v_or_b16 v13.h, v13.h, v29.h
	v_lshlrev_b16 v24.l, 8, v66.l
	v_lshlrev_b16 v25.l, 8, v68.l
	v_lshlrev_b16 v25.h, 8, v69.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v26.h, 8, v94.l
	v_lshlrev_b16 v27.l, 8, v71.l
	v_lshlrev_b16 v27.h, 8, v95.l
	v_lshlrev_b16 v28.l, 8, v72.l
	v_lshlrev_b16 v28.h, 8, v96.l
	v_lshlrev_b16 v29.l, 8, v73.l
	v_lshlrev_b16 v29.h, 8, v97.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	v_or_b16 v18.l, v18.l, v42.l
	v_or_b16 v18.h, v18.h, v42.h
	v_or_b16 v19.l, v19.l, v43.l
	v_or_b16 v19.h, v19.h, v43.h
	v_or_b16 v20.l, v20.l, v44.l
	v_or_b16 v20.h, v20.h, v44.h
	v_or_b16 v21.l, v21.l, v45.l
	v_or_b16 v21.h, v21.h, v45.h
	v_lshlrev_b16 v38.l, 8, v74.l
	v_lshlrev_b16 v38.h, 8, v75.l
	v_lshlrev_b16 v39.l, 8, v76.l
	v_lshlrev_b16 v39.h, 8, v77.l
	v_lshlrev_b16 v40.l, 8, v78.l
	v_lshlrev_b16 v40.h, 8, v79.l
	v_lshlrev_b16 v41.l, 8, v80.l
	v_lshlrev_b16 v41.h, 8, v81.l
	v_lshlrev_b16 v42.l, 8, v82.l
	v_lshlrev_b16 v42.h, 8, v83.l
	v_lshlrev_b16 v43.l, 8, v84.l
	v_lshlrev_b16 v43.h, 8, v85.l
	v_lshlrev_b16 v44.l, 8, v86.l
	v_lshlrev_b16 v44.h, 8, v87.l
	v_lshlrev_b16 v45.l, 8, v88.l
	v_lshlrev_b16 v45.h, 8, v89.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v6
	ds_store_b16_d16_hi v59, v6 offset:32
	ds_store_b16 v59, v7 offset:64
	ds_store_b16_d16_hi v59, v7 offset:96
	ds_store_b16_d16_hi v60, v8 offset:32
	ds_store_b16 v60, v9 offset:64
	ds_store_b16_d16_hi v60, v9 offset:96
	v_or_b16 v6.l, v30.l, v22.l
	v_or_b16 v6.h, v30.h, v22.h
	v_or_b16 v7.l, v31.l, v23.l
	v_or_b16 v7.h, v31.h, v23.h
	v_or_b16 v9.l, v32.h, v24.h
	v_or_b16 v8.h, v32.l, v24.l
	v_or_b16 v9.h, v33.l, v25.l
	v_or_b16 v22.l, v33.h, v25.h
	v_or_b16 v22.h, v34.l, v26.l
	v_or_b16 v23.l, v34.h, v26.h
	v_or_b16 v23.h, v35.l, v27.l
	v_or_b16 v24.l, v35.h, v27.h
	v_or_b16 v24.h, v36.l, v28.l
	v_or_b16 v25.l, v36.h, v28.h
	v_or_b16 v25.h, v37.l, v29.l
	v_or_b16 v26.l, v37.h, v29.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v59, v14 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v8
	ds_store_b16 v61, v10
	ds_store_b16_d16_hi v61, v10 offset:32
	ds_store_b16 v61, v11 offset:64
	ds_store_b16_d16_hi v61, v11 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[54:55] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v59, v15 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v12 offset:384
	ds_store_b16_d16_hi v59, v12 offset:416
	ds_store_b16 v59, v13 offset:448
	ds_store_b16_d16_hi v59, v13 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v59, v14 offset:16416
	ds_store_b16_d16_hi v59, v15 offset:16480
	ds_store_b16 v60, v16 offset:16384
	ds_store_b16_d16_hi v60, v16 offset:16416
	ds_store_b16 v60, v17 offset:16448
	ds_store_b16_d16_hi v60, v17 offset:16480
	ds_store_b16 v61, v18 offset:16384
	ds_store_b16_d16_hi v61, v18 offset:16416
	ds_store_b16 v61, v19 offset:16448
	ds_store_b16_d16_hi v61, v19 offset:16480
	ds_store_b16 v59, v20 offset:16768
	ds_store_b16_d16_hi v59, v20 offset:16800
	ds_store_b16 v59, v21 offset:16832
	ds_store_b16_d16_hi v59, v21 offset:16864
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v8.l, v46.l, v38.l
	v_or_b16 v10.l, v46.h, v38.h
	v_or_b16 v10.h, v47.l, v39.l
	v_or_b16 v11.l, v47.h, v39.h
	v_or_b16 v11.h, v48.l, v40.l
	v_or_b16 v12.l, v48.h, v40.h
	v_or_b16 v12.h, v49.l, v41.l
	v_or_b16 v13.l, v49.h, v41.h
	v_or_b16 v13.h, v50.l, v42.l
	v_or_b16 v14.l, v50.h, v42.h
	v_or_b16 v14.h, v51.l, v43.l
	v_or_b16 v15.l, v51.h, v43.h
	v_or_b16 v15.h, v52.l, v44.l
	v_or_b16 v16.l, v52.h, v44.h
	v_or_b16 v16.h, v53.l, v45.l
	v_or_b16 v17.l, v53.h, v45.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v6 offset:8192
	ds_store_b16_d16_hi v59, v6 offset:8224
	ds_store_b16 v59, v7 offset:8256
	ds_store_b16_d16_hi v59, v7 offset:8288
	ds_store_b16 v60, v9 offset:8224
	ds_store_b16_d16_hi v60, v9 offset:8256
	ds_store_b16 v60, v22 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v59, v8 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v60, v8 offset:8192
	ds_store_b16_d16_hi v61, v22 offset:8192
	ds_store_b16 v61, v23 offset:8224
	ds_store_b16_d16_hi v61, v23 offset:8256
	ds_store_b16 v61, v24 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v58, v[56:57] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v59, v10 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v59, v24 offset:8576
	ds_store_b16 v59, v25 offset:8608
	ds_store_b16_d16_hi v59, v25 offset:8640
	ds_store_b16 v59, v26 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v59, v10 offset:24608
	ds_store_b16 v59, v11 offset:24672
	ds_store_b16_d16_hi v60, v11 offset:24576
	ds_store_b16 v60, v12 offset:24608
	ds_store_b16_d16_hi v60, v12 offset:24640
	ds_store_b16 v60, v13 offset:24672
	ds_store_b16_d16_hi v61, v13 offset:24576
	ds_store_b16 v61, v14 offset:24608
	ds_store_b16_d16_hi v61, v14 offset:24640
	ds_store_b16 v61, v15 offset:24672
	ds_store_b16_d16_hi v59, v15 offset:24960
	ds_store_b16 v59, v16 offset:24992
	ds_store_b16_d16_hi v59, v16 offset:25024
	ds_store_b16 v59, v17 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v36, 5, v137
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0xe00, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 4, v137
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 8, v137
	s_mov_b32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v19, 0x160, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v9, v1, 5, v8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow1205
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v0
	v_or_b32_e32 v0, s33, v98
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	s_ashr_i32 s44, s14, 8
	v_or_b32_e32 v8, s26, v137
	v_mul_lo_u32 v188, v0, s44
	v_mul_lo_u32 v211, v3, s44
	v_mul_lo_u32 v212, v4, s44
	v_mul_lo_u32 v189, v5, s44
	v_lshlrev_b32_e32 v145, 2, v99
	v_lshlrev_b32_e32 v146, 1, v137
	v_lshlrev_b32_e32 v144, 1, v99
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v8, off offset:644
	scratch_store_b32 off, v189, off offset:640
	scratch_store_b32 off, v188, off offset:648
	scratch_store_b32 off, v98, off offset:724
	scratch_store_b32 off, v99, off offset:728
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v137, 2, 1
	v_bfe_i32 v3, v137, 3, 1
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v4, s34, v115
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s11, s13, 5
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v2, 0xe00, v2
	v_and_b32_e32 v0, 0x90, v0
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v3, 0x110, v3
	v_mov_b32_e32 v227, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v1, 5, v2
	scratch_store_b32 off, v4, off offset:664 ; 4-byte Folded Spill
	v_and_b32_e32 v4, 0x160, v101
	v_xor_b32_e32 v1, v0, v3
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v199, 0
	scratch_store_b32 off, v2, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v0, v0, v4
	v_or_b32_e32 v2, v1, v2
	v_and_b32_e32 v1, 32, v101
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:672
	scratch_store_b32 off, v2, off offset:668
	v_xor_b32_e32 v0, 16, v2
	v_add3_u32 v1, 0, v145, v1
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v232, 0
	v_mov_b32_e32 v179, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_dual_mov_b32 v221, 0 :: v_dual_and_b32 v0, 28, v146
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v195, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v0, v1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:712
	scratch_store_b32 off, v144, off offset:736
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v0, 0, v144
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v173, 0
	v_mov_b32_e32 v177, 0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v137, off offset:732 ; 4-byte Folded Spill
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v187, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v145, off offset:740 ; 4-byte Folded Spill
	v_mov_b32_e32 v217, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v253, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v146, off offset:744 ; 4-byte Folded Spill
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v219, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v101, off offset:748 ; 4-byte Folded Spill
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v213, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v4, off offset:756 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, s12 :: v_dual_mov_b32 v3, s13
	v_dual_mov_b32 v4, s14 :: v_dual_mov_b32 v5, s15
	v_dual_mov_b32 v6, s16 :: v_dual_mov_b32 v7, s17
	v_dual_mov_b32 v8, s18 :: v_dual_mov_b32 v9, s19
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[2:5], off offset:680
	scratch_store_b128 off, v[6:9], off offset:696
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v228, 0
	v_mov_b32_e32 v226, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v174, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s1, s35, 32
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s10, 1
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b32 off, v211, off offset:656
	scratch_store_b32 off, v212, off offset:652
	scratch_store_b32 off, v102, off offset:720
	scratch_store_b32 off, v100, off offset:660
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v0, off, off offset:672 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v19, off offset:60
	scratch_store_b32 off, v69, off offset:212
	scratch_store_b32 off, v21, off offset:76
	scratch_store_b32 off, v52, off offset:248
	scratch_store_b32 off, v34, off offset:244
	scratch_store_b32 off, v51, off offset:240
	scratch_store_b32 off, v33, off offset:236
	scratch_store_b32 off, v32, off offset:232
	scratch_store_b32 off, v16, off offset:228
	scratch_store_b32 off, v214, off offset:328
	scratch_store_b32 off, v227, off offset:224
	scratch_store_b32 off, v209, off offset:324
	scratch_store_b32 off, v218, off offset:320
	scratch_store_b32 off, v217, off offset:316
	scratch_store_b32 off, v219, off offset:312
	scratch_store_b32 off, v220, off offset:308
	scratch_store_b32 off, v213, off offset:304
	scratch_store_b32 off, v15, off offset:220
	scratch_store_b32 off, v176, off offset:300
	scratch_store_b32 off, v180, off offset:208
	scratch_store_b32 off, v179, off offset:204
	scratch_store_b32 off, v194, off offset:200
	scratch_store_b32 off, v177, off offset:196
	scratch_store_b32 off, v193, off offset:192
	scratch_store_b32 off, v178, off offset:188
	scratch_store_b32 off, v173, off offset:184
	scratch_store_b32 off, v172, off offset:180
	scratch_store_b32 off, v171, off offset:296
	scratch_store_b32 off, v170, off offset:176
	scratch_store_b32 off, v156, off offset:172
	scratch_store_b32 off, v138, off offset:168
	scratch_store_b32 off, v130, off offset:164
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v127, off offset:160
	scratch_store_b32 off, v128, off offset:156
	scratch_store_b32 off, v111, off offset:152
	scratch_store_b32 off, v110, off offset:148
	scratch_store_b32 off, v109, off offset:144
	scratch_store_b32 off, v64, off offset:136
	scratch_store_b32 off, v28, off offset:140
	scratch_store_b32 off, v185, off offset:292
	scratch_store_b32 off, v49, off offset:132
	scratch_store_b32 off, v27, off offset:128
	scratch_store_b32 off, v48, off offset:124
	scratch_store_b32 off, v47, off offset:120
	scratch_store_b32 off, v26, off offset:116
	scratch_store_b32 off, v46, off offset:112
	scratch_store_b32 off, v45, off offset:108
	scratch_store_b32 off, v215, off offset:40
	scratch_store_b32 off, v44, off offset:104
	scratch_store_b32 off, v207, off offset:28
	scratch_store_b32 off, v43, off offset:100
	scratch_store_b32 off, v41, off offset:96
	scratch_store_b32 off, v39, off offset:80
	scratch_store_b32 off, v42, off offset:64
	scratch_store_b32 off, v18, off offset:92
	scratch_store_b32 off, v17, off offset:88
	scratch_store_b32 off, v40, off offset:84
	scratch_store_b32 off, v38, off offset:52
	scratch_store_b32 off, v14, off offset:72
	scratch_store_b32 off, v13, off offset:68
	scratch_store_b32 off, v12, off offset:56
	scratch_store_b32 off, v5, off offset:48
	scratch_store_b32 off, v4, off offset:44
	scratch_store_b32 off, v3, off offset:36
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v24, off offset:16
	scratch_store_b32 off, v208, off offset:24
	scratch_store_b32 off, v1, off offset:20
	scratch_store_b32 off, v155, off offset:288
	scratch_store_b32 off, v103, off offset:284
	scratch_store_b32 off, v101, off offset:268
	scratch_store_b32 off, v228, off offset:264
	scratch_store_b32 off, v113, off offset:260
	scratch_store_b32 off, v112, off offset:256
	scratch_store_b32 off, v108, off offset:252
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:676
	scratch_load_b32 v9, off, off offset:668
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 5
	s_mov_b32 s14, s12
	s_mov_b32 s12, s30
	s_mov_b32 s30, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s1, s15
	v_mov_b32_e32 v185, v65
	v_dual_mov_b32 v236, v229 :: v_dual_mov_b32 v201, v114
	v_mov_b32_e32 v207, v203
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v11, s48, v0
	v_xor_b32_e32 v0, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s14, v19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s14, v9
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s35, s34
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v12, s48, v0
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v0, s35, v100
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	s_add_i32 s14, s14, s26
	s_mov_b32 s48, s47
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[0:1], v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:536 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[244:247], off, off offset:680
	scratch_load_b128 v[248:251], off, off offset:696
	ds_load_b128 v[0:3], v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[4:7], v13
	ds_load_b128 v[58:61], v13 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[62:65], v11 offset:512
	ds_load_b128 v[77:80], v11 offset:1024
	ds_load_b128 v[106:109], v11 offset:1536
	ds_load_b128 v[90:93], v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v14
	ds_load_b128 v[94:97], v14 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[98:101], v12 offset:512
	ds_load_b128 v[110:113], v12 offset:1024
	ds_load_b128 v[149:152], v12 offset:1536
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[4:7], v[0:3], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[4:7], v[62:65], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[4:7], v[77:80], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[4:7], v[106:109], v[244:251] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v4, s31, v9
	v_add_nc_u32_e32 v5, s31, v19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[26:33], v[58:61], v[0:3], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[58:61], v[62:65], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[82:85], v[90:93], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[82:85], v[98:101], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[82:85], v[110:113], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[82:85], v[149:152], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[58:61], v[77:80], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[58:61], v[106:109], v[244:251] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[58:61], v4
	ds_load_b128 v[153:156], v4 offset:4096
	ds_load_b128 v[177:180], v5
	ds_load_b128 v[191:194], v5 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[26:33], v[94:97], v[90:93], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[94:97], v[98:101], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[94:97], v[110:113], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[94:97], v[149:152], v[125:132] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v211, v82
	v_cvt_f32_i32_e32 v212, v128
	v_cvt_f32_i32_e32 v213, v85
	v_cvt_f32_i32_e32 v85, v132
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	s_mov_b32 s31, s45
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[58:61], v[0:3], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[0:3], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[58:61], v[62:65], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[90:93], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[191:194], v[90:93], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[58:61], v[106:109], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[177:180], v[98:101], v[158:165] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v134
	v_wmma_i32_16x16x16_iu8 v[166:173], v[153:156], v[62:65], v[244:251] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[177:180], v[149:152], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[58:61], v[77:80], v[244:251] neg_lo:[1,1,0]
	scratch_store_b32 off, v8, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v133
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v0, v0
	v_wmma_i32_16x16x16_iu8 v[166:173], v[191:194], v[98:101], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[177:180], v[110:113], v[90:97] neg_lo:[1,1,0]
	scratch_store_b32 off, v8, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v136
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v3
	v_wmma_i32_16x16x16_iu8 v[98:105], v[153:156], v[77:80], v[244:251] neg_lo:[1,1,0]
	scratch_store_b32 off, v8, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v135
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v5
	v_wmma_i32_16x16x16_iu8 v[98:105], v[191:194], v[110:113], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[153:156], v[106:109], v[244:251] neg_lo:[1,1,0]
	scratch_store_b32 off, v8, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v138
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v4
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:664 ; 4-byte Folded Reload
	scratch_store_b32 off, v8, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v137
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	v_wmma_i32_16x16x16_iu8 v[58:65], v[191:194], v[149:152], v[58:65] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v179, v26
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v8, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v140
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v6
	v_cvt_f32_i32_e32 v82, v62
	v_mov_b32_e32 v26, v23
	scratch_store_b32 off, v8, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v139
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v0, s14, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v180, v27
	scratch_load_b32 v27, off, off offset:712 ; 4-byte Folded Reload
	scratch_store_b32 off, v8, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v29
	v_cvt_f32_i32_e32 v193, v11
	v_cvt_f32_i32_e32 v194, v14
	v_cvt_f32_i32_e32 v110, v16
	v_cvt_f32_i32_e32 v109, v15
	scratch_store_b32 off, v8, off offset:560 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v28
	scratch_load_b32 v28, off, off offset:644 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v156, v17
	v_cvt_f32_i32_e32 v178, v12
	v_cvt_f32_i32_e32 v111, v13
	scratch_store_b32 off, v8, off offset:564 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v31
	v_cvt_f32_i32_e32 v177, v18
	v_cvt_f32_i32_e32 v78, v127
	v_cvt_f32_i32_e32 v80, v130
	v_cvt_f32_i32_e32 v192, v55
	scratch_store_b32 off, v8, off offset:568 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v30
	v_cvt_f32_i32_e32 v191, v57
	v_cvt_f32_i32_e32 v77, v125
	scratch_store_b32 off, v8, off offset:572 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v33
	scratch_store_b32 off, v8, off offset:576 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v32
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v8, off offset:580 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v142
	scratch_store_b32 off, v8, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v141
	scratch_store_b32 off, v8, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v144
	scratch_store_b32 off, v8, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v143
	scratch_store_b32 off, v8, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v146
	scratch_store_b32 off, v8, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v145
	scratch_store_b32 off, v8, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v148
	scratch_store_b32 off, v8, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v147
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v35
	scratch_store_b32 off, v8, off offset:584 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v34
	scratch_store_b32 off, v8, off offset:588 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v37
	scratch_store_b32 off, v8, off offset:592 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v36
	scratch_store_b32 off, v8, off offset:596 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v39
	v_cvt_f32_i32_e32 v39, v86
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v86, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:600 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v38
	v_cvt_f32_i32_e32 v38, v88
	scratch_store_b32 off, v8, off offset:604 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v41
	v_cvt_f32_i32_e32 v41, v84
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v84, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:608 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v40
	v_cvt_f32_i32_e32 v40, v87
	v_cvt_f32_i32_e32 v87, v131
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v8, off offset:612 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v159
	scratch_store_b32 off, v8, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v158
	scratch_store_b32 off, v8, off offset:556 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v161
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v161, v56
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v8, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v160
	scratch_store_b32 off, v8, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v163
	scratch_store_b32 off, v8, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v162
	scratch_store_b32 off, v8, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v165
	scratch_store_b32 off, v8, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v164
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v43
	v_cvt_f32_i32_e32 v43, v54
	scratch_store_b32 off, v8, off offset:616 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v42
	v_cvt_f32_i32_e32 v42, v83
	v_cvt_f32_i32_e32 v83, v129
	scratch_store_b32 off, v8, off offset:620 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v45, v53
	scratch_store_b32 off, v8, off offset:624 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v44, v52
	v_cvt_f32_i32_e32 v52, v89
	scratch_store_b32 off, v8, off offset:628 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v51, v70
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v72, v74
	scratch_store_b32 off, v8, off offset:636 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v74, v76
	v_cvt_f32_i32_e32 v76, v126
	scratch_store_b32 off, v8, off offset:632 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v8, v167
	scratch_store_b32 off, v8, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v166
	scratch_store_b32 off, v8, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v169
	scratch_store_b32 off, v8, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v168
	scratch_store_b32 off, v8, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v171
	scratch_store_b32 off, v8, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v170
	scratch_store_b32 off, v8, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v173
	scratch_store_b32 off, v8, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:384 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v8, v91
	scratch_store_b32 off, v8, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v90
	scratch_store_b32 off, v8, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v93
	scratch_store_b32 off, v8, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v92
	scratch_store_b32 off, v8, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v95
	v_cvt_f32_i32_e32 v95, v63
	scratch_store_b32 off, v8, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v94
	scratch_store_b32 off, v8, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v97
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v5, s14, v1
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s14, s14, s27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v8, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v96
	v_cvt_f32_i32_e32 v96, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:416 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v8, v99
	v_cvt_f32_i32_e32 v99, v61
	scratch_store_b32 off, v8, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v98
	scratch_store_b32 off, v8, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v101
	scratch_store_b32 off, v8, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v100
	scratch_store_b32 off, v8, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v103
	scratch_store_b32 off, v8, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v102
	v_cvt_f32_i32_e32 v102, v58
	scratch_store_b32 off, v8, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v105
	v_cvt_f32_i32_e32 v105, v2
	scratch_store_b32 off, v8, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v8, v104
	v_cvt_f32_i32_e32 v104, v60
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[58:61], v0, s[20:23], 0 offen
	buffer_load_b128 v[62:65], v5, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v0, s14, v115
	v_add_nc_u32_e32 v5, s14, v1
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v1, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 24
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v8, off offset:448 ; 4-byte Folded Spill
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 8
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s44
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s10, 13
	s_waitcnt vmcnt(1)
	v_perm_b32 v6, v62, v58, 0x5010400
	v_perm_b32 v7, v62, v58, 0x7030602
	v_perm_b32 v162, v63, v59, 0x5010400
	v_perm_b32 v163, v63, v59, 0x7030602
	v_perm_b32 v160, v64, v60, 0x5010400
	v_perm_b32 v159, v64, v60, 0x7030602
	v_perm_b32 v143, v65, v61, 0x5010400
	v_perm_b32 v79, v65, v61, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[58:61], v0, s[20:23], 0 offen
	buffer_load_b128 v[62:65], v5, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v188, s12, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v5, v28, s14, 1
	v_mov_b32_e32 v188, v10
	v_add_nc_u32_e32 v10, s27, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v10, v10, s14, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v164, v62, v58, 0x5010400
	v_perm_b32 v165, v62, v58, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v58, v189, s12, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v166, v63, v59, 0x5010400
	v_perm_b32 v167, v63, v59, 0x7030602
	v_perm_b32 v168, v64, v60, 0x5010400
	v_perm_b32 v169, v64, v60, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v144, v65, v61, 0x5010400
	v_perm_b32 v140, v65, v61, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v27, v5 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v5, v1, s12, 1
	scratch_load_b32 v1, off, off offset:652 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, v1, s12, 1
	v_mov_b32_e32 v1, v119
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s12, s10, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s14, s12, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[36:39], 0 offen
	buffer_load_u16 v5, v5, s[36:39], 0 offen
	buffer_load_u16 v11, v11, s[36:39], 0 offen
	buffer_load_u16 v58, v58, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v29, off, off offset:716 ; 4-byte Folded Reload
	s_mov_b32 s12, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s47, s14, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s11
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v142, 16, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[58:61], v29 offset:36864
	ds_load_b128 v[62:65], v29 offset:36880
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v5, 16, v5
	v_lshlrev_b32_e32 v137, 16, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v170, v59, v0
	v_mul_f32_e32 v171, v58, v0
	v_mul_f32_e32 v172, v61, v0
	v_dual_mul_f32 v173, v60, v0 :: v_dual_mul_f32 v244, v59, v142
	v_mul_f32_e32 v24, v59, v5
	v_mul_f32_e32 v21, v58, v5
	v_mul_f32_e32 v23, v61, v5
	v_dual_mul_f32 v229, v60, v5 :: v_dual_mul_f32 v238, v58, v142
	v_dual_mul_f32 v245, v59, v137 :: v_dual_mul_f32 v228, v60, v142
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v247, v58, v137 :: v_dual_mul_f32 v246, v63, v0
	v_mul_f32_e32 v248, v61, v137
	v_dual_mul_f32 v242, v60, v137 :: v_dual_mul_f32 v241, v61, v142
	v_dual_mul_f32 v8, v62, v0 :: v_dual_mul_f32 v17, v63, v5
	v_dual_mul_f32 v227, v65, v0 :: v_dual_mul_f32 v16, v64, v5
	v_dual_mul_f32 v4, v64, v0 :: v_dual_mul_f32 v15, v62, v5
	v_dual_mul_f32 v114, v65, v5 :: v_dual_mul_f32 v189, v64, v142
	v_dual_mov_b32 v14, v205 :: v_dual_mul_f32 v249, v62, v137
	v_dual_mul_f32 v176, v63, v137 :: v_dual_mul_f32 v255, v65, v142
	v_mul_f32_e32 v250, v65, v137
	v_dual_mul_f32 v251, v64, v137 :: v_dual_mul_f32 v252, v63, v142
	v_mul_f32_e32 v254, v62, v142
	ds_load_b128 v[58:61], v29 offset:37376
	ds_load_b128 v[62:65], v29 offset:37392
	v_dual_mov_b32 v215, v204 :: v_dual_mov_b32 v2, v118
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v222, v4, v156
	v_fmac_f32_e32 v81, v248, v45
	v_fmac_f32_e32 v253, v246, v110
	v_fmac_f32_e32 v221, v227, v177
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v203, v59, v0
	v_mul_f32_e32 v3, v63, v137
	v_dual_mul_f32 v123, v64, v137 :: v_dual_mul_f32 v204, v58, v0
	v_dual_mul_f32 v205, v61, v0 :: v_dual_mul_f32 v214, v58, v5
	v_dual_mul_f32 v208, v60, v0 :: v_dual_mul_f32 v209, v59, v5
	v_dual_mul_f32 v217, v61, v5 :: v_dual_mul_f32 v18, v58, v142
	v_dual_mul_f32 v218, v60, v5 :: v_dual_mul_f32 v19, v59, v142
	v_dual_mul_f32 v219, v59, v137 :: v_dual_mul_f32 v22, v61, v142
	v_dual_mul_f32 v220, v58, v137 :: v_dual_mul_f32 v197, v60, v142
	v_dual_mul_f32 v183, v61, v137 :: v_dual_mul_f32 v128, v62, v0
	v_dual_mul_f32 v12, v60, v137 :: v_dual_mul_f32 v127, v63, v0
	v_dual_mul_f32 v130, v65, v0 :: v_dual_mul_f32 v141, v63, v5
	v_mul_f32_e32 v138, v64, v0
	v_dual_mul_f32 v202, v62, v5 :: v_dual_mul_f32 v13, v65, v142
	v_dual_mul_f32 v118, v65, v5 :: v_dual_mul_f32 v11, v62, v142
	v_mul_f32_e32 v119, v64, v5
	v_dual_mul_f32 v121, v62, v137 :: v_dual_mul_f32 v124, v63, v142
	v_dual_mul_f32 v122, v65, v137 :: v_dual_mul_f32 v9, v64, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v232, v8, v109
	v_fmac_f32_e32 v206, v203, v180
	v_dual_fmac_f32 v226, v197, v78 :: v_dual_mov_b32 v203, v207
	v_fmac_f32_e32 v225, v124, v80
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v175, v13, v85 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v27, v10 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v29 offset:36864
	ds_load_b128 v[62:65], v29 offset:36880
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b64 v[93:94], off, off offset:536
	scratch_load_b32 v109, off, off offset:144
	scratch_load_b32 v110, off, off offset:148
	scratch_load_b32 v156, off, off offset:172
	scratch_load_b32 v180, off, off offset:208
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v34, v59, v0 :: v_dual_mul_f32 v113, v60, v5
	v_mul_f32_e32 v33, v58, v0
	v_dual_mul_f32 v54, v61, v0 :: v_dual_mul_f32 v101, v58, v137
	v_dual_mul_f32 v32, v60, v0 :: v_dual_mul_f32 v97, v61, v137
	v_dual_mul_f32 v56, v59, v5 :: v_dual_mul_f32 v89, v61, v142
	v_mul_f32_e32 v55, v58, v5
	v_dual_mul_f32 v108, v61, v5 :: v_dual_mul_f32 v91, v60, v142
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v92, v59, v137 :: v_dual_mul_f32 v27, v62, v0
	v_dual_mul_f32 v103, v60, v137 :: v_dual_mul_f32 v88, v59, v142
	v_dual_mul_f32 v90, v58, v142 :: v_dual_mul_f32 v53, v65, v0
	v_dual_mul_f32 v50, v63, v0 :: v_dual_mul_f32 v133, v62, v5
	v_dual_mul_f32 v28, v64, v0 :: v_dual_mul_f32 v131, v63, v5
	v_dual_mul_f32 v132, v65, v5 :: v_dual_mul_f32 v107, v64, v142
	v_mul_f32_e32 v134, v64, v5
	v_dual_mul_f32 v57, v63, v137 :: v_dual_mul_f32 v106, v62, v142
	v_dual_mul_f32 v125, v62, v137 :: v_dual_mul_f32 v98, v63, v142
	v_mul_f32_e32 v112, v65, v137
	v_mul_f32_e32 v126, v64, v137
	v_mul_f32_e32 v100, v65, v142
	ds_load_b128 v[58:61], v29 offset:37376
	ds_load_b128 v[62:65], v29 offset:37392
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v174, v9, v87 :: v_dual_mul_f32 v37, v59, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v182, v58, v0 :: v_dual_mul_f32 v135, v59, v137
	v_dual_mul_f32 v36, v61, v0 :: v_dual_mul_f32 v149, v58, v5
	v_dual_mul_f32 v35, v60, v0 :: v_dual_mul_f32 v146, v61, v5
	v_dual_mul_f32 v129, v58, v142 :: v_dual_mul_f32 v150, v60, v5
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v66, v58, v137 :: v_dual_mul_f32 v31, v65, v0
	v_dual_mul_f32 v136, v61, v137 :: v_dual_mul_f32 v29, v62, v0
	v_dual_mul_f32 v139, v60, v137 :: v_dual_mul_f32 v58, v61, v142
	v_mul_f32_e32 v61, v63, v0
	v_dual_mul_f32 v30, v64, v0 :: v_dual_mul_f32 v155, v62, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v60, v60, v142 :: v_dual_mul_f32 v153, v63, v5
	v_mul_f32_e32 v154, v65, v5
	v_mul_f32_e32 v158, v64, v5
	v_mul_f32_e32 v147, v63, v137
	v_mul_f32_e32 v151, v62, v137
	v_mul_f32_e32 v148, v65, v137
	v_dual_mul_f32 v152, v64, v137 :: v_dual_mul_f32 v137, v63, v142
	v_mul_f32_e32 v63, v65, v142
	v_mov_b32_e32 v65, v185
	v_mul_f32_e32 v145, v59, v5
	v_mul_f32_e32 v59, v59, v142
	v_mul_f32_e32 v62, v62, v142
	v_mul_f32_e32 v142, v64, v142
	scratch_load_b32 v64, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v109, v247, v46
	scratch_load_b32 v46, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v110, v245, v47
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s14, v0
	ds_store_b64 v0, v[93:94] offset:32768
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v185, off, off offset:292
	scratch_load_b32 v0, off, off
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v185, v11, v83
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v171, v193
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v193, off, off offset:192
	scratch_load_b32 v171, off, off offset:296
	scratch_load_b32 v0, off, off offset:4
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v170, v178
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v178, off, off offset:188
	scratch_load_b32 v170, off, off offset:176
	scratch_load_b32 v0, off, off offset:8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v173, v111
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v173, off, off offset:184
	scratch_load_b32 v111, off, off offset:152
	scratch_load_b32 v0, off, off offset:12
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v111, v119, v48 :: v_dual_fmac_f32 v0, v172, v194
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v194, off, off offset:200
	scratch_load_b32 v172, off, off offset:180
	scratch_load_b32 v48, off, off offset:124
	v_mov_b32_e32 v119, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 24, v6
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v177, off, off offset:196
	scratch_load_b32 v0, off, off offset:216
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v204, v179
	v_mov_b32_e32 v204, v215
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:204
	scratch_load_b32 v0, off, off offset:564
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v204, v208, v0
	scratch_load_b32 v0, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v216, v205, v0
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	v_mov_b32_e32 v205, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v20, v254, v73 :: v_dual_fmac_f32 v205, v19, v76
	scratch_load_b32 v19, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v203, v128, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v128, off, off offset:156
	scratch_load_b32 v0, off, off offset:568
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v180, v127, v0
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v198, v138, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:168
	scratch_load_b32 v0, off, off offset:576
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v179, v130, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v130, off, off offset:164
	scratch_load_b32 v127, off, off offset:160
	scratch_load_b32 v0, off, off offset:588
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v177, v21, v0
	scratch_load_b32 v0, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v194, v24, v0
	scratch_load_b32 v0, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v178, v229, v0
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	v_mov_b32_e32 v229, v236
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v193, v23, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v215, off, off offset:40
	scratch_load_b32 v207, off, off offset:28
	scratch_load_b32 v0, off, off offset:604
	v_mov_b32_e32 v23, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v23, v12, v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:76
	scratch_load_b32 v41, off, off offset:96
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v215, v252, v72
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v207, v255, v74
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v172, v15, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:16
	scratch_load_b32 v0, off, off offset:600
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v21, v244, v51
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v41, v121, v39
	scratch_load_b32 v51, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v24, v18, v77 :: v_dual_fmac_f32 v173, v17, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v208, off, off offset:24
	scratch_load_b32 v0, off, off offset:612
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v170, v16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v227, off, off offset:224
	scratch_load_b32 v0, off, off offset:608
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v171, v114, v0 :: v_dual_mov_b32 v114, v201
	scratch_load_b32 v0, off, off offset:620 ; 4-byte Folded Reload
	v_fmac_f32_e32 v114, v118, v49
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:132
	scratch_load_b32 v47, off, off offset:120
	scratch_load_b32 v45, off, off offset:108
	v_dual_fmac_f32 v65, v242, v44 :: v_dual_fmac_f32 v46, v219, v42
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:104
	scratch_load_b32 v39, off, off offset:80
	scratch_load_b32 v42, off, off offset:64
	v_fmac_f32_e32 v64, v176, v192
	v_mov_b32_e32 v118, v2
	scratch_load_b32 v2, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v49, v249, v43
	scratch_load_b32 v43, off, off offset:100 ; 4-byte Folded Reload
	v_fmac_f32_e32 v48, v250, v191
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v45, v220, v211
	v_fmac_f32_e32 v47, v251, v161
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v39, v123, v38 :: v_dual_fmac_f32 v42, v238, v69
	scratch_load_b32 v69, off, off offset:212 ; 4-byte Folded Reload
	v_fmac_f32_e32 v138, v214, v0
	scratch_load_b32 v0, off, off offset:616 ; 4-byte Folded Reload
	v_fmac_f32_e32 v44, v183, v213
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:228
	scratch_load_b32 v214, off, off offset:328
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v43, v3, v40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v40, off, off offset:84
	scratch_load_b32 v4, off, off offset:44
	scratch_load_b32 v3, off, off offset:36
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v156, v209, v0
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v127, v218, v0
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v130, v217, v0
	scratch_load_b32 v0, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v117, v202, v0
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v128, v141, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v6
	v_and_b16 v0.h, 0xff, v6.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v5.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v6.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v5.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v7
	v_and_b16 v0.h, 0xff, v7.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v6.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v7.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v162
	v_or_b16 v6.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v162
	v_and_b16 v0.h, 0xff, v162.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v7.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v162.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v7.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v163
	v_and_b16 v0.h, 0xff, v163.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v163.h
	v_lshlrev_b16 v0.h, 8, v1.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v1, 24, v164
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.h, v0.l, v0.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v0, 8, v164
	v_and_b16 v0.h, 0xff, v164.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v10.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v164.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v10.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v165
	v_and_b16 v0.h, 0xff, v165.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v12.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v165.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v166
	v_or_b16 v12.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v166
	v_and_b16 v0.h, 0xff, v166.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v13.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v166.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v13.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v167
	v_and_b16 v0.h, 0xff, v167.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v14.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v167.h
	v_lshlrev_b16 v0.h, 8, v1.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s46, v119
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v14.h, v0.l, v0.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s46, v118
	ds_store_b16 v0, v5
	ds_store_b16_d16_hi v0, v5 offset:32
	ds_store_b16 v0, v6 offset:64
	ds_store_b16_d16_hi v0, v6 offset:96
	ds_store_b16 v1, v9 offset:64
	ds_store_b16_d16_hi v1, v9 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v10 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v1, v7
	ds_store_b16_d16_hi v1, v7 offset:32
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v12 offset:16448
	ds_store_b16_d16_hi v0, v10 offset:16416
	ds_store_b16_d16_hi v0, v12 offset:16480
	ds_store_b16 v1, v13 offset:16384
	ds_store_b16_d16_hi v1, v13 offset:16416
	ds_store_b16 v1, v14 offset:16448
	ds_store_b16_d16_hi v1, v14 offset:16480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 8, v160
	v_and_b16 v5.h, 0xff, v160.l
	v_and_b16 v6.h, 0xff, v159.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v7.h, 0xff, v168.l
	v_and_b16 v9.h, 0xff, v169.l
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v13, off, off offset:68
	scratch_load_b32 v14, off, off offset:72
	scratch_load_b32 v12, off, off offset:56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v5.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v160
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v208, v189, v75 :: v_dual_fmac_f32 v19, v22, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v5.h, v5.l
	v_and_b16 v5.h, 0xff, v160.h
	v_lshlrev_b16 v6.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v5.h, v5.h, v6.l
	v_lshlrev_b16 v6.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v6.l, v6.h, v6.l
	v_and_b16 v6.h, 0xff, v159.h
	v_lshlrev_b16 v7.l, 8, v1.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v1, 8, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.h, v6.h, v7.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v7.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v7.l, v7.h, v7.l
	v_and_b16 v7.h, 0xff, v168.h
	v_lshlrev_b16 v9.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v7.h, v7.h, v9.l
	v_lshlrev_b16 v9.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v169.h
	v_lshlrev_b16 v10.l, 8, v1.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s46, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v1, v5
	ds_store_b16_d16_hi v1, v5 offset:32
	ds_store_b16 v1, v6 offset:64
	ds_store_b16_d16_hi v1, v6 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v1, v7 offset:16384
	ds_store_b16_d16_hi v1, v7 offset:16416
	ds_store_b16 v1, v9 offset:16448
	ds_store_b16_d16_hi v1, v9 offset:16480
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v40, v122, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:248
	scratch_load_b32 v38, off, off offset:52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v5.h, 0xff, v143.l
	v_and_b16 v6.h, 0xff, v79.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v7.h, 0xff, v144.l
	v_and_b16 v9.h, 0xff, v140.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v69, v241, v70
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v51, v33, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:236
	scratch_load_b32 v1, off, off offset:472
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v38, v228, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v52, v34, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:244
	scratch_load_b32 v1, off, off offset:492
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v33, v32, v1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v32, off, off offset:232
	scratch_load_b32 v228, off, off offset:264
	scratch_load_b32 v1, off, off offset:476
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v228, v137, v95
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v54, v1
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v32, v27, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:128
	scratch_load_b32 v1, off, off offset:480
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v67, v50, v1
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v209, off, off offset:324
	scratch_load_b32 v218, off, off offset:320
	scratch_load_b32 v217, off, off offset:316
	scratch_load_b32 v219, off, off offset:312
	scratch_load_b32 v220, off, off offset:308
	scratch_load_b32 v213, off, off offset:304
	scratch_load_b32 v1, off, off offset:500
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v16, v28, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:140
	scratch_load_b32 v1, off, off offset:484
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v68, v53, v1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v15, off, off offset:220
	scratch_load_b32 v176, off, off offset:300
	scratch_load_b32 v1, off, off offset:520
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v227, v182, v1
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v214, v37, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:116
	scratch_load_b32 v1, off, off offset:524
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v224, v35, v1
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v210, v36, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:640
	scratch_load_b32 v1, off, off offset:528
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v200, v29, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:92
	scratch_load_b32 v1, off, off offset:512
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v223, v61, v1
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v196, v30, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:88
	scratch_load_b32 v1, off, off offset:516
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v199, v31, v1
	scratch_load_b32 v1, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v190, v55, v1
	scratch_load_b32 v1, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v195, v56, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 8, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v5.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v143
	v_or_b16 v5.l, v5.h, v5.l
	v_and_b16 v5.h, 0xff, v143.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v6.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v79
	v_or_b16 v5.h, v5.h, v6.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v6.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v79
	ds_store_b16 v0, v5 offset:384
	ds_store_b16_d16_hi v0, v5 offset:416
	scratch_load_b32 v5, off, off offset:48 ; 4-byte Folded Reload
	v_or_b16 v6.l, v6.h, v6.l
	v_and_b16 v6.h, 0xff, v79.h
	v_lshlrev_b16 v7.l, 8, v1.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v1, 8, v144
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.h, v6.h, v7.l
	ds_store_b16 v0, v6 offset:448
	ds_store_b16_d16_hi v0, v6 offset:480
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v6, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v7.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v7.l, v7.h, v7.l
	v_and_b16 v7.h, 0xff, v144.h
	v_lshlrev_b16 v9.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v7.h, v7.h, v9.l
	v_lshlrev_b16 v9.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v140.h
	v_lshlrev_b16 v10.l, 8, v1.l
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	v_or_b16 v9.h, v9.h, v10.l
	v_mov_b32_e32 v10, v188
	scratch_load_b32 v188, off, off offset:648 ; 4-byte Folded Reload
	ds_store_b16 v0, v7 offset:16768
	ds_store_b16_d16_hi v0, v7 offset:16800
	ds_store_b16 v0, v9 offset:16832
	ds_store_b16_d16_hi v0, v9 offset:16864
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v10, v91, v105
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v184, v113, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:260
	scratch_load_b32 v6, off, off offset:332
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v1, v59, v86
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v113, v62, v82
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v187, v108, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v108, off, off offset:252
	scratch_load_b32 v6, off, off offset:348
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v108, v142, v84
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v218, v133, v6
	scratch_load_b32 v6, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v209, v131, v6
	scratch_load_b32 v6, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v219, v134, v6
	scratch_load_b32 v6, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v217, v132, v6
	scratch_load_b32 v6, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v213, v149, v6
	scratch_load_b32 v6, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v220, v145, v6
	scratch_load_b32 v6, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v150, v6
	scratch_load_b32 v6, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v231, v146, v6
	scratch_load_b32 v6, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v243, v155, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:288
	scratch_load_b32 v6, off, off offset:364
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v155, v129, v102
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v176, v153, v6
	scratch_load_b32 v6, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v239, v158, v6
	scratch_load_b32 v6, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v240, v154, v6
	scratch_load_b32 v6, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v235, v101, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v101, off, off offset:268
	scratch_load_b32 v6, off, off offset:388
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v101, v60, v104
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v237, v92, v6
	scratch_load_b32 v6, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v233, v103, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v103, off, off offset:284
	scratch_load_b32 v6, off, off offset:392
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v103, v58, v99 :: v_dual_fmac_f32 v234, v97, v6
	scratch_load_b32 v6, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v229, v125, v6
	scratch_load_b32 v6, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v230, v57, v6
	scratch_load_b32 v6, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v126, v6
	scratch_load_b32 v6, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v28, v112, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v112, off, off offset:256
	scratch_load_b32 v6, off, off offset:436
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v112, v63, v96 :: v_dual_fmac_f32 v25, v66, v6
	scratch_load_b32 v6, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v135, v6
	scratch_load_b32 v6, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v181, v139, v6
	scratch_load_b32 v6, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v157, v136, v6
	scratch_load_b32 v6, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v186, v151, v6
	scratch_load_b32 v6, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v116, v147, v6
	scratch_load_b32 v6, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v152, v6
	scratch_load_b32 v6, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v148, v6
	scratch_load_b32 v6, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v13, v90, v6
	scratch_load_b32 v6, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v14, v88, v6
	scratch_load_b32 v6, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v12, v89, v6
	scratch_load_b32 v6, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v106, v6
	scratch_load_b32 v6, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v5, v98, v6
	scratch_load_b32 v6, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v2, v107, v6
	scratch_load_b32 v6, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v3, v100, v6
	scratch_load_b32 v100, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v19, off offset:60
	scratch_store_b32 off, v69, off offset:212
	scratch_store_b32 off, v23, off offset:496
	scratch_store_b32 off, v232, off offset:592
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v183, off, off offset:8
	scratch_load_b32 v182, off, off offset:12
	scratch_load_b32 v242, off, off
	scratch_load_b32 v244, off, off offset:4
	scratch_load_b32 v211, off, off offset:656
	scratch_load_b32 v212, off, off offset:652
	scratch_load_b32 v144, off, off offset:736
	scratch_load_b32 v145, off, off offset:740
	scratch_load_b32 v146, off, off offset:744
	scratch_load_b32 v9, off, off offset:752
	scratch_load_b32 v19, off, off offset:756
	scratch_load_b32 v137, off, off offset:732
	scratch_load_b32 v36, off, off offset:748
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v7, 4, v137
	v_and_b32_e32 v6, 8, v137
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v225, 0
	v_mov_b32_e32 v207, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v227, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v242, 0
	v_mov_b32_e32 v52, 0
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow1206
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v52, off offset:248
	scratch_store_b32 off, v34, off offset:244
	scratch_store_b32 off, v51, off offset:240
	scratch_store_b32 off, v33, off offset:236
	scratch_store_b32 off, v67, off offset:788
	scratch_store_b32 off, v32, off offset:232
	scratch_store_b32 off, v68, off offset:784
	scratch_store_b32 off, v16, off offset:228
	scratch_store_b32 off, v227, off offset:224
	scratch_store_b32 off, v15, off offset:220
	scratch_store_b32 off, v130, off offset:164
	scratch_store_b32 off, v127, off offset:160
	scratch_store_b32 off, v128, off offset:156
	scratch_store_b32 off, v117, off offset:332
	scratch_store_b32 off, v111, off offset:152
	scratch_store_b32 off, v65, off offset:320
	scratch_store_b32 off, v28, off offset:140
	scratch_store_b32 off, v64, off offset:136
	scratch_store_b32 off, v49, off offset:132
	scratch_store_b32 off, v27, off offset:128
	scratch_store_b32 off, v48, off offset:124
	scratch_store_b32 off, v47, off offset:120
	scratch_store_b32 off, v26, off offset:116
	scratch_store_b32 off, v25, off offset:316
	scratch_store_b32 off, v46, off offset:112
	scratch_store_b32 off, v45, off offset:108
	scratch_store_b32 off, v157, off offset:312
	scratch_store_b32 off, v181, off offset:308
	scratch_store_b32 off, v44, off offset:104
	scratch_store_b32 off, v116, off offset:304
	scratch_store_b32 off, v43, off offset:100
	scratch_store_b32 off, v41, off offset:96
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v40, off offset:84
	scratch_store_b32 off, v39, off offset:80
	scratch_store_b32 off, v14, off offset:72
	scratch_store_b32 off, v13, off offset:68
	scratch_store_b32 off, v42, off offset:64
	scratch_store_b32 off, v12, off offset:56
	scratch_store_b32 off, v10, off offset:288
	scratch_store_b32 off, v38, off offset:52
	scratch_store_b32 off, v5, off offset:48
	scratch_store_b32 off, v4, off offset:44
	scratch_store_b32 off, v215, off offset:40
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v207, off offset:28
	scratch_store_b32 off, v208, off offset:24
	scratch_store_b32 off, v1, off offset:20
	scratch_store_b32 off, v24, off offset:16
	scratch_store_b32 off, v198, off offset:348
	scratch_store_b32 off, v194, off offset:200
	scratch_store_b32 off, v177, off offset:196
	scratch_store_b32 off, v156, off offset:172
	scratch_store_b32 off, v110, off offset:148
	scratch_store_b32 off, v109, off offset:144
	scratch_store_b32 off, v21, off offset:76
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v181, off, off offset:644 ; 4-byte Folded Reload
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v5, 0, 1, s2
	v_mov_b32_e32 v35, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v142, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s1, 1, v5
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v38, v0, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x110, 0, vcc_lo
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v48, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v0, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s48, v38
	v_mov_b32_e32 v95, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v140, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v111, v0, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v0, s48, v37
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[39:42], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[43:46], v1 offset:1536
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[21:24], v0 offset:512
	ds_load_b128 v[13:16], v0 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v0 offset:1536
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v141, 0
	v_mov_b32_e32 v134, 0
	v_xor_b32_e32 v207, 16, v111
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v100, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v6, 0
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s12, v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v54, s23 :: v_dual_mov_b32 v49, s18
	v_mov_b32_e32 v53, s22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[90:93], v0
	ds_load_b128 v[104:107], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v51, s20 :: v_dual_add_nc_u32 v0, s12, v207
	v_dual_mov_b32 v52, s21 :: v_dual_mov_b32 v47, s16
	v_dual_mov_b32 v50, s19 :: v_dual_mov_b32 v5, v101
	v_mov_b32_e32 v48, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[131:134], v0
	v_mov_b32_e32 v6, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[90:93], v[25:28], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[90:93], v[39:42], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[90:93], v[9:12], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[90:93], v[43:46], v[47:54] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[90:93], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[104:107], v[25:28], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[104:107], v[39:42], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[104:107], v[9:12], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[104:107], v[43:46], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[131:134], v[21:24], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[131:134], v[13:16], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[131:134], v[29:32], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[131:134], v[1:4], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v106, v76
	v_cvt_f32_i32_e32 v76, v101
	v_mov_b32_e32 v101, v5
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v19, v58
	v_cvt_f32_i32_e32 v142, v59
	v_cvt_f32_i32_e32 v143, v60
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[90:93], v[1:4], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[90:93], v[29:32], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[90:93], v[21:24], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[90:93], v[13:16], v[115:122] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v71
	v_cvt_f32_i32_e32 v5, v51
	v_cvt_f32_i32_e32 v140, v63
	v_cvt_f32_i32_e32 v141, v64
	v_cvt_f32_i32_e32 v136, v65
	v_cvt_f32_i32_e32 v139, v66
	v_cvt_f32_i32_e32 v134, v67
	v_cvt_f32_i32_e32 v135, v68
	v_cvt_f32_i32_e32 v132, v69
	v_cvt_f32_i32_e32 v133, v70
	v_cvt_f32_i32_e32 v131, v72
	v_cvt_f32_i32_e32 v107, v73
	v_cvt_f32_i32_e32 v109, v74
	v_cvt_f32_i32_e32 v105, v75
	v_cvt_f32_i32_e32 v94, v77
	v_cvt_f32_i32_e32 v104, v78
	v_cvt_f32_i32_e32 v92, v82
	v_cvt_f32_i32_e32 v93, v83
	v_cvt_f32_i32_e32 v90, v84
	v_cvt_f32_i32_e32 v91, v85
	v_cvt_f32_i32_e32 v84, v86
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v82, v88
	v_cvt_f32_i32_e32 v83, v89
	v_cvt_f32_i32_e32 v79, v96
	v_cvt_f32_i32_e32 v80, v97
	v_cvt_f32_i32_e32 v77, v98
	v_cvt_f32_i32_e32 v78, v99
	v_cvt_f32_i32_e32 v75, v100
	v_cvt_f32_i32_e32 v73, v102
	v_cvt_f32_i32_e32 v74, v103
	v_mov_b32_e32 v103, v6
	v_cvt_f32_i32_e32 v71, v115
	v_cvt_f32_i32_e32 v72, v116
	v_cvt_f32_i32_e32 v69, v117
	v_cvt_f32_i32_e32 v70, v118
	v_cvt_f32_i32_e32 v67, v119
	v_cvt_f32_i32_e32 v68, v120
	v_cvt_f32_i32_e32 v65, v121
	v_cvt_f32_i32_e32 v66, v122
	v_cvt_f32_i32_e32 v63, v123
	v_cvt_f32_i32_e32 v64, v124
	v_cvt_f32_i32_e32 v59, v125
	v_cvt_f32_i32_e32 v60, v126
	v_cvt_f32_i32_e32 v57, v127
	v_cvt_f32_i32_e32 v58, v128
	v_cvt_f32_i32_e32 v34, v129
	v_cvt_f32_i32_e32 v35, v130
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v33, v48
	v_cvt_f32_i32_e32 v100, v49
	v_cvt_f32_i32_e32 v0, v50
	scratch_store_b32 off, v5, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v98, v52
	v_cvt_f32_i32_e32 v5, v53
	v_cvt_f32_i32_e32 v6, v54
	v_cvt_f32_i32_e32 v47, v61
	v_cvt_f32_i32_e32 v48, v62
	v_cvt_f32_i32_e32 v49, v55
	v_cvt_f32_i32_e32 v50, v56
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v50, off offset:916
	scratch_store_b32 off, v49, off offset:912
	scratch_store_b32 off, v19, off offset:908
	scratch_store_b32 off, v8, off offset:904
	scratch_store_b32 off, v48, off offset:760
	scratch_store_b32 off, v47, off offset:756
	scratch_store_b32 off, v139, off offset:744
	scratch_store_b32 off, v136, off offset:740
	scratch_store_b32 off, v135, off offset:720
	scratch_store_b32 off, v134, off offset:716
	scratch_store_b32 off, v133, off offset:712
	scratch_store_b32 off, v132, off offset:680
	scratch_store_b32 off, v131, off offset:676
	scratch_store_b32 off, v110, off offset:672
	scratch_store_b32 off, v109, off offset:668
	scratch_store_b32 off, v107, off offset:664
	scratch_store_b32 off, v104, off offset:632
	scratch_store_b32 off, v94, off offset:628
	scratch_store_b32 off, v93, off offset:624
	scratch_store_b32 off, v92, off offset:620
	scratch_store_b32 off, v91, off offset:612
	scratch_store_b32 off, v90, off offset:608
	scratch_store_b32 off, v85, off offset:600
	scratch_store_b32 off, v84, off offset:596
	scratch_store_b32 off, v83, off offset:588
	scratch_store_b32 off, v82, off offset:584
	scratch_store_b32 off, v79, off offset:576
	scratch_store_b32 off, v78, off offset:564
	scratch_store_b32 off, v77, off offset:560
	scratch_store_b32 off, v76, off offset:556
	scratch_store_b32 off, v75, off offset:552
	scratch_store_b32 off, v74, off offset:548
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v73, off offset:544
	scratch_store_b32 off, v72, off offset:536
	scratch_store_b32 off, v71, off offset:532
	scratch_store_b32 off, v70, off offset:528
	scratch_store_b32 off, v69, off offset:524
	scratch_store_b32 off, v244, off offset:4
	scratch_store_b32 off, v242, off
	scratch_store_b32 off, v68, off offset:512
	scratch_store_b32 off, v67, off offset:508
	scratch_store_b32 off, v66, off offset:504
	scratch_store_b32 off, v65, off offset:500
	scratch_store_b32 off, v64, off offset:428
	scratch_store_b32 off, v63, off offset:424
	scratch_store_b32 off, v60, off offset:396
	scratch_store_b32 off, v59, off offset:392
	scratch_store_b32 off, v58, off offset:380
	scratch_store_b32 off, v57, off offset:376
	scratch_store_b32 off, v182, off offset:12
	scratch_store_b32 off, v183, off offset:8
	scratch_store_b32 off, v35, off offset:360
	scratch_store_b32 off, v34, off offset:356
	scratch_store_b32 off, v221, off offset:352
	scratch_store_b32 off, v193, off offset:192
	scratch_store_b32 off, v138, off offset:168
	scratch_store_b32 off, v33, off offset:340
	scratch_store_b32 off, v7, off offset:336
	scratch_store_b32 off, v186, off offset:344
	scratch_store_b32 off, v6, off offset:300
	scratch_store_b32 off, v18, off offset:92
	scratch_store_b32 off, v5, off offset:296
	scratch_store_b32 off, v17, off offset:88
	scratch_store_b32 off, v0, off offset:264
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v6, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s1
	scratch_store_b32 off, v6, off offset:256 ; 4-byte Folded Spill
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
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s31, v207
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v54, s19 :: v_dual_mov_b32 v49, s14
	v_mov_b32_e32 v53, s18
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[82:85], v0 offset:4096
	ds_load_b128 v[86:89], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v51, s16 :: v_dual_add_nc_u32 v0, s31, v111
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[90:93], v0 offset:4096
	ds_load_b128 v[94:97], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v52, s17 :: v_dual_mov_b32 v47, s12
	v_mov_b32_e32 v50, s15
	v_mov_b32_e32 v48, s13
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[90:93], v[25:28], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[94:97], v[25:28], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[94:97], v[9:12], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[90:93], v[9:12], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[86:89], v[29:32], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[82:85], v[29:32], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[94:97], v[39:42], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[90:93], v[39:42], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[86:89], v[13:16], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[82:85], v[13:16], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[94:97], v[43:46], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[90:93], v[43:46], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[86:89], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[82:85], v[21:24], v[71:78] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[86:89], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v120, v57
	v_wmma_i32_16x16x16_iu8 v[47:54], v[82:85], v[1:4], v[47:54] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v156, v58
	v_cvt_f32_i32_e32 v118, v59
	v_cvt_f32_i32_e32 v119, v60
	v_cvt_f32_i32_e32 v110, v61
	v_cvt_f32_i32_e32 v0, v51
	v_cvt_f32_i32_e32 v117, v62
	v_cvt_f32_i32_e32 v104, v63
	v_cvt_f32_i32_e32 v109, v64
	v_cvt_f32_i32_e32 v96, v65
	v_cvt_f32_i32_e32 v102, v66
	v_cvt_f32_i32_e32 v86, v67
	v_cvt_f32_i32_e32 v94, v68
	v_cvt_f32_i32_e32 v255, v69
	v_cvt_f32_i32_e32 v84, v70
	v_cvt_f32_i32_e32 v254, v25
	v_cvt_f32_i32_e32 v82, v26
	v_cvt_f32_i32_e32 v251, v27
	v_cvt_f32_i32_e32 v252, v28
	v_cvt_f32_i32_e32 v245, v29
	v_cvt_f32_i32_e32 v250, v30
	v_cvt_f32_i32_e32 v242, v31
	v_cvt_f32_i32_e32 v244, v32
	v_cvt_f32_i32_e32 v194, v71
	v_cvt_f32_i32_e32 v241, v72
	v_cvt_f32_i32_e32 v197, v73
	v_cvt_f32_i32_e32 v238, v74
	v_cvt_f32_i32_e32 v232, v75
	v_cvt_f32_i32_e32 v236, v76
	v_cvt_f32_i32_e32 v198, v77
	v_cvt_f32_i32_e32 v107, v78
	v_cvt_f32_i32_e32 v177, v121
	v_cvt_f32_i32_e32 v227, v122
	v_cvt_f32_i32_e32 v8, v123
	v_cvt_f32_i32_e32 v71, v124
	v_cvt_f32_i32_e32 v183, v125
	v_cvt_f32_i32_e32 v182, v126
	v_cvt_f32_i32_e32 v69, v127
	v_cvt_f32_i32_e32 v70, v128
	v_cvt_f32_i32_e32 v67, v129
	v_cvt_f32_i32_e32 v68, v130
	v_cvt_f32_i32_e32 v65, v131
	v_cvt_f32_i32_e32 v66, v132
	v_cvt_f32_i32_e32 v63, v133
	v_cvt_f32_i32_e32 v64, v134
	v_cvt_f32_i32_e32 v61, v135
	v_cvt_f32_i32_e32 v62, v136
	v_cvt_f32_i32_e32 v59, v9
	v_cvt_f32_i32_e32 v60, v10
	v_cvt_f32_i32_e32 v57, v11
	v_cvt_f32_i32_e32 v58, v12
	v_cvt_f32_i32_e32 v34, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v19, v15
	v_cvt_f32_i32_e32 v33, v16
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v5, v49
	v_cvt_f32_i32_e32 v7, v50
	v_cvt_f32_i32_e32 v97, v53
	v_cvt_f32_i32_e32 v1, v54
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v52
	v_cvt_f32_i32_e32 v95, v55
	v_cvt_f32_i32_e32 v186, v56
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v70, off offset:752
	scratch_store_b32 off, v69, off offset:748
	scratch_store_b32 off, v68, off offset:736
	scratch_store_b32 off, v67, off offset:732
	scratch_store_b32 off, v66, off offset:660
	scratch_store_b32 off, v65, off offset:656
	scratch_store_b32 off, v106, off offset:652
	scratch_store_b32 off, v105, off offset:636
	scratch_store_b32 off, v64, off offset:616
	scratch_store_b32 off, v63, off offset:604
	scratch_store_b32 off, v80, off offset:580
	scratch_store_b32 off, v62, off offset:572
	scratch_store_b32 off, v61, off offset:568
	scratch_store_b32 off, v60, off offset:464
	scratch_store_b32 off, v59, off offset:456
	scratch_store_b32 off, v58, off offset:444
	scratch_store_b32 off, v57, off offset:440
	scratch_store_b32 off, v35, off offset:412
	scratch_store_b32 off, v34, off offset:408
	scratch_store_b32 off, v33, off offset:404
	scratch_store_b32 off, v19, off offset:400
	scratch_store_b32 off, v18, off offset:388
	scratch_store_b32 off, v17, off offset:384
	scratch_store_b32 off, v7, off offset:372
	scratch_store_b32 off, v206, off offset:368
	scratch_store_b32 off, v216, off offset:364
	scratch_store_b32 off, v179, off offset:204
	scratch_store_b32 off, v178, off offset:188
	scratch_store_b32 off, v172, off offset:180
	scratch_store_b32 off, v170, off offset:176
	scratch_store_b32 off, v5, off offset:292
	scratch_store_b32 off, v0, off offset:284
	s_lshr_b32 s1, s1, 24
	s_mov_b32 s11, 0x31027000
	s_add_i32 s1, s30, s1
	s_mov_b32 s10, 0x7ffffffe
	s_ashr_i32 s1, s1, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s1, s34
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s44
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_lshl_u32 v1, v181, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v188, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v211, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_and_b32 v2, 32, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 28, v146
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v5, v212, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	s_and_b32 s29, s29, 0xffff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v2, 0, v145, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v6, v189, s1, 1
	v_dual_mov_b32 v91, v210 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v201, v2, v3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v2, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	v_mov_b32_e32 v248, 0
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	s_clause 0x3
	buffer_load_u16 v221, v0, s[8:11], 0 offen
	buffer_load_u16 v122, v2, s[8:11], 0 offen
	buffer_load_u16 v210, v3, s[8:11], 0 offen
	buffer_load_u16 v0, v4, s[8:11], 0 offen
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v202, s26, s27, v137
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v71, off offset:924
	scratch_store_b32 off, v8, off offset:920
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v193, 0, v144
	v_mov_b32_e32 v192, 0
	.loc	1 426 31 is_stmt 0              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v7, v202, s4, 1
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v4, 0, 1, s3
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v2, s47, v37
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v166, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s1, 1, v4
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v127, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v149, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v64, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v201, v1 offset:36864
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s47, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v193 offset:37376
	ds_load_b128 v[9:12], v193 offset:37392
	v_mov_b32_e32 v43, 0
	ds_load_b128 v[36:39], v193 offset:36864
	ds_load_b128 v[28:31], v193 offset:36880
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[9:12], off offset:268 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v201, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[56:59], v1
	ds_load_b128 v[44:47], v1 offset:512
	ds_load_b128 v[87:90], v1 offset:1024
	ds_load_b128 v[16:19], v1 offset:1536
	ds_load_b128 v[60:63], v2
	ds_load_b128 v[48:51], v2 offset:512
	ds_load_b128 v[24:27], v2 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[12:15], v2 offset:1536
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
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
	v_dual_mov_b32 v71, s19 :: v_dual_add_nc_u32 v0, s46, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[40:43], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v69, s17 :: v_dual_add_nc_u32 v0, s46, v207
	v_dual_mov_b32 v70, s18 :: v_dual_mov_b32 v67, s15
	v_dual_mov_b32 v68, s16 :: v_dual_mov_b32 v65, s13
	v_dual_mov_b32 v66, s14 :: v_dual_mov_b32 v1, v140
	v_dual_mov_b32 v64, s12 :: v_dual_mov_b32 v11, v143
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[52:55], v0
	v_dual_mov_b32 v2, v141 :: v_dual_mov_b32 v9, v171
	v_mov_b32_e32 v10, v142
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[32:35], v[56:59], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[32:35], v[44:47], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[32:35], v[87:90], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[32:35], v[16:19], v[64:71] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[32:35], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[40:43], v[56:59], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[40:43], v[44:47], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[40:43], v[87:90], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[40:43], v[16:19], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[52:55], v[60:63], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[52:55], v[48:51], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[52:55], v[24:27], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[52:55], v[12:15], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v188, v76
	v_cvt_f32_i32_e32 v189, v77
	v_cvt_f32_i32_e32 v191, v74
	v_cvt_f32_i32_e32 v192, v75
	v_cvt_f32_i32_e32 v115, v131
	v_cvt_f32_i32_e32 v116, v132
	v_cvt_f32_i32_e32 v105, v133
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[32:35], v[60:63], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[32:35], v[48:51], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[32:35], v[24:27], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[32:35], v[12:15], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v134
	v_cvt_f32_i32_e32 v178, v123
	v_cvt_f32_i32_e32 v179, v124
	v_cvt_f32_i32_e32 v0, v125
	v_cvt_f32_i32_e32 v21, v126
	v_cvt_f32_i32_e32 v124, v127
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v123, v130
	v_cvt_f32_i32_e32 v93, v135
	v_cvt_f32_i32_e32 v99, v136
	v_cvt_f32_i32_e32 v85, v137
	v_cvt_f32_i32_e32 v92, v138
	v_cvt_f32_i32_e32 v80, v139
	v_cvt_f32_i32_e32 v83, v140
	v_mov_b32_e32 v140, v1
	v_cvt_f32_i32_e32 v76, v141
	v_mov_b32_e32 v141, v2
	v_cvt_f32_i32_e32 v77, v142
	v_cvt_f32_i32_e32 v74, v143
	v_dual_mov_b32 v143, v11 :: v_dual_mov_b32 v142, v10
	v_cvt_f32_i32_e32 v75, v144
	v_cvt_f32_i32_e32 v54, v145
	v_cvt_f32_i32_e32 v55, v146
	v_cvt_f32_i32_e32 v52, v147
	v_cvt_f32_i32_e32 v53, v148
	v_cvt_f32_i32_e32 v146, v149
	v_cvt_f32_i32_e32 v147, v150
	v_cvt_f32_i32_e32 v42, v151
	v_cvt_f32_i32_e32 v43, v152
	v_cvt_f32_i32_e32 v144, v153
	v_cvt_f32_i32_e32 v145, v154
	v_cvt_f32_i32_e32 v41, v157
	v_cvt_f32_i32_e32 v40, v158
	v_cvt_f32_i32_e32 v35, v159
	v_cvt_f32_i32_e32 v8, v160
	v_cvt_f32_i32_e32 v34, v161
	v_mov_b32_e32 v161, v0
	v_cvt_f32_i32_e32 v127, v162
	v_cvt_f32_i32_e32 v33, v163
	v_cvt_f32_i32_e32 v32, v164
	v_mov_b32_e32 v164, v21
	v_cvt_f32_i32_e32 v23, v165
	v_cvt_f32_i32_e32 v22, v166
	v_mov_b32_e32 v166, v178
	v_cvt_f32_i32_e32 v21, v167
	v_mov_b32_e32 v167, v179
	v_cvt_f32_i32_e32 v11, v168
	v_cvt_f32_i32_e32 v10, v169
	v_cvt_f32_i32_e32 v2, v170
	v_mov_b32_e32 v170, v188
	v_cvt_f32_i32_e32 v0, v171
	v_mov_b32_e32 v171, v9
	v_cvt_f32_i32_e32 v1, v172
	v_mov_b32_e32 v172, v189
	v_cvt_f32_i32_e32 v162, v64
	v_cvt_f32_i32_e32 v159, v65
	v_cvt_f32_i32_e32 v148, v66
	v_cvt_f32_i32_e32 v149, v67
	v_cvt_f32_i32_e32 v130, v68
	v_cvt_f32_i32_e32 v129, v69
	v_cvt_f32_i32_e32 v126, v70
	v_cvt_f32_i32_e32 v128, v71
	v_cvt_f32_i32_e32 v64, v78
	v_cvt_f32_i32_e32 v65, v79
	v_cvt_f32_i32_e32 v247, v72
	v_cvt_f32_i32_e32 v248, v73
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v125, off offset:884
	scratch_store_b32 off, v124, off offset:880
	scratch_store_b32 off, v123, off offset:876
	scratch_store_b32 off, v121, off offset:872
	scratch_store_b32 off, v116, off offset:868
	scratch_store_b32 off, v115, off offset:864
	scratch_store_b32 off, v106, off offset:860
	scratch_store_b32 off, v105, off offset:856
	scratch_store_b32 off, v99, off offset:852
	scratch_store_b32 off, v93, off offset:848
	scratch_store_b32 off, v92, off offset:844
	scratch_store_b32 off, v85, off offset:840
	scratch_store_b32 off, v83, off offset:836
	scratch_store_b32 off, v80, off offset:832
	scratch_store_b32 off, v77, off offset:828
	scratch_store_b32 off, v76, off offset:824
	scratch_store_b32 off, v75, off offset:820
	scratch_store_b32 off, v74, off offset:816
	scratch_store_b32 off, v55, off offset:812
	scratch_store_b32 off, v54, off offset:808
	scratch_store_b32 off, v53, off offset:804
	scratch_store_b32 off, v52, off offset:800
	scratch_store_b32 off, v43, off offset:796
	scratch_store_b32 off, v42, off offset:792
	scratch_store_b32 off, v41, off offset:780
	scratch_store_b32 off, v40, off offset:776
	scratch_store_b32 off, v35, off offset:772
	scratch_store_b32 off, v8, off offset:768
	scratch_store_b32 off, v34, off offset:764
	scratch_store_b32 off, v33, off offset:492
	scratch_store_b32 off, v32, off offset:488
	scratch_store_b32 off, v23, off offset:484
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v22, off offset:480
	scratch_store_b32 off, v21, off offset:468
	scratch_store_b32 off, v11, off offset:460
	scratch_store_b32 off, v10, off offset:436
	scratch_store_b32 off, v2, off offset:432
	scratch_store_b32 off, v1, off offset:420
	scratch_store_b32 off, v0, off offset:416
	ds_load_b128 v[52:55], v193 offset:36864
	ds_load_b128 v[40:43], v193 offset:36880
	ds_load_b128 v[32:35], v193 offset:37376
	ds_load_b128 v[136:139], v193 offset:37392
	v_dual_mov_b32 v131, v207 :: v_dual_mov_b32 v134, v192
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:900
	scratch_store_b32 off, v64, off offset:896
	v_dual_mov_b32 v133, v191 :: v_dual_mov_b32 v106, v253
	v_dual_mov_b32 v92, v204 :: v_dual_mov_b32 v85, 0
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v180, off offset:208
	scratch_store_b32 off, v203, off offset:892
	scratch_store_b32 off, v173, off offset:184
	scratch_store_b32 off, v114, off offset:520
	scratch_store_b32 off, v81, off offset:516
	scratch_store_b32 off, v20, off offset:328
	scratch_store_b32 off, v205, off offset:324
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v169, 0
	v_mov_b32_e32 v9, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v9, v98 :: v_dual_add_nc_u32 v8, s45, v131
	v_dual_mov_b32 v10, v100 :: v_dual_mov_b32 v23, v130
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s19, s12
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	ds_load_b128 v[0:3], v8 offset:4096
	ds_load_b128 v[72:75], v8
	v_dual_mov_b32 v11, v97 :: v_dual_add_nc_u32 v8, s45, v111
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[76:79], v8 offset:4096
	ds_load_b128 v[97:100], v8
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v20, v126 :: v_dual_mov_b32 v21, v128
	v_mov_b32_e32 v22, v129
	v_dual_mov_b32 v180, v127 :: v_dual_mov_b32 v131, s19
	v_dual_mov_b32 v130, s18 :: v_dual_mov_b32 v127, s15
	v_dual_mov_b32 v129, s17 :: v_dual_mov_b32 v128, s16
	v_dual_mov_b32 v125, s13 :: v_dual_mov_b32 v126, s14
	v_dual_mov_b32 v115, v141 :: v_dual_mov_b32 v124, s12
	v_dual_mov_b32 v121, v143 :: v_dual_mov_b32 v114, v140
	v_dual_mov_b32 v135, v145 :: v_dual_mov_b32 v116, v142
	v_mov_b32_e32 v123, v144
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[97:100], v[56:59], v[124:131] neg_lo:[1,1,0]
	v_dual_mov_b32 v157, v146 :: v_dual_mov_b32 v178, v147
	v_wmma_i32_16x16x16_iu8 v[140:147], v[76:79], v[56:59], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[72:75], v[60:63], v[64:71] neg_lo:[1,1,0]
	v_dual_mov_b32 v8, v155 :: v_dual_mov_b32 v81, v148
	v_wmma_i32_16x16x16_iu8 v[140:147], v[0:3], v[60:63], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[97:100], v[44:47], v[124:131] neg_lo:[1,1,0]
	v_dual_mov_b32 v93, v149 :: v_dual_mov_b32 v204, v164
	v_wmma_i32_16x16x16_iu8 v[148:155], v[76:79], v[44:47], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[72:75], v[48:51], v[56:63] neg_lo:[1,1,0]
	v_mov_b32_e32 v105, v159
	v_mov_b32_e32 v111, v162
	v_wmma_i32_16x16x16_iu8 v[148:155], v[0:3], v[48:51], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[97:100], v[87:90], v[124:131] neg_lo:[1,1,0]
	v_mov_b32_e32 v203, v161
	v_wmma_i32_16x16x16_iu8 v[158:165], v[76:79], v[87:90], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[72:75], v[24:27], v[44:51] neg_lo:[1,1,0]
	v_mov_b32_e32 v87, v172
	v_cvt_f32_i32_e32 v85, v65
	v_wmma_i32_16x16x16_iu8 v[158:165], v[0:3], v[24:27], v[158:165] neg_lo:[1,1,0]
	v_dual_mov_b32 v24, v171 :: v_dual_mov_b32 v25, v166
	v_dual_mov_b32 v26, v167 :: v_dual_mov_b32 v27, v170
	v_wmma_i32_16x16x16_iu8 v[166:173], v[97:100], v[16:19], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[76:79], v[16:19], v[124:131] neg_lo:[1,1,0]
	v_dual_mov_b32 v97, v11 :: v_dual_mov_b32 v100, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[72:75], v[12:15], v[166:173] neg_lo:[1,1,0]
	v_mov_b32_e32 v98, v9
	v_wmma_i32_16x16x16_iu8 v[124:131], v[0:3], v[12:15], v[124:131] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v64
	v_cvt_f32_i32_e32 v80, v66
	v_cvt_f32_i32_e32 v83, v67
	v_cvt_f32_i32_e32 v78, v68
	v_cvt_f32_i32_e32 v79, v69
	v_cvt_f32_i32_e32 v76, v70
	v_cvt_f32_i32_e32 v77, v71
	v_cvt_f32_i32_e32 v74, v140
	v_mov_b32_e32 v140, v114
	v_cvt_f32_i32_e32 v75, v141
	v_mov_b32_e32 v141, v115
	v_cvt_f32_i32_e32 v72, v142
	v_mov_b32_e32 v142, v116
	v_cvt_f32_i32_e32 v73, v143
	v_mov_b32_e32 v143, v121
	v_cvt_f32_i32_e32 v66, v144
	v_mov_b32_e32 v144, v123
	v_cvt_f32_i32_e32 v71, v145
	v_mov_b32_e32 v145, v135
	v_cvt_f32_i32_e32 v69, v146
	v_mov_b32_e32 v146, v157
	v_cvt_f32_i32_e32 v70, v147
	v_mov_b32_e32 v147, v178
	v_cvt_f32_i32_e32 v67, v56
	v_cvt_f32_i32_e32 v68, v57
	v_cvt_f32_i32_e32 v1, v58
	v_cvt_f32_i32_e32 v2, v59
	v_cvt_f32_i32_e32 v249, v60
	v_cvt_f32_i32_e32 v0, v61
	v_cvt_f32_i32_e32 v115, v62
	v_cvt_f32_i32_e32 v216, v63
	v_cvt_f32_i32_e32 v207, v148
	v_mov_b32_e32 v148, v81
	v_cvt_f32_i32_e32 v215, v149
	v_mov_b32_e32 v149, v93
	v_cvt_f32_i32_e32 v65, v150
	v_cvt_f32_i32_e32 v206, v151
	v_cvt_f32_i32_e32 v192, v152
	v_cvt_f32_i32_e32 v64, v153
	v_cvt_f32_i32_e32 v189, v154
	v_cvt_f32_i32_e32 v191, v155
	v_mov_b32_e32 v155, v8
	v_cvt_f32_i32_e32 v135, v44
	v_cvt_f32_i32_e32 v188, v45
	v_cvt_f32_i32_e32 v178, v46
	v_cvt_f32_i32_e32 v179, v47
	v_cvt_f32_i32_e32 v123, v48
	v_cvt_f32_i32_e32 v157, v49
	v_cvt_f32_i32_e32 v246, v50
	v_cvt_f32_i32_e32 v253, v51
	v_cvt_f32_i32_e32 v205, v158
	v_cvt_f32_i32_e32 v208, v159
	v_mov_b32_e32 v159, v105
	v_cvt_f32_i32_e32 v158, v160
	v_cvt_f32_i32_e32 v160, v161
	v_mov_b32_e32 v161, v203
	v_cvt_f32_i32_e32 v152, v162
	v_mov_b32_e32 v162, v111
	v_cvt_f32_i32_e32 v153, v163
	v_cvt_f32_i32_e32 v121, v164
	v_mov_b32_e32 v164, v204
	v_cvt_f32_i32_e32 v150, v165
	v_cvt_f32_i32_e32 v114, v166
	v_mov_b32_e32 v166, v25
	v_cvt_f32_i32_e32 v116, v167
	v_mov_b32_e32 v167, v26
	v_cvt_f32_i32_e32 v99, v168
	v_cvt_f32_i32_e32 v105, v169
	v_cvt_f32_i32_e32 v81, v170
	v_mov_b32_e32 v170, v27
	v_cvt_f32_i32_e32 v93, v171
	v_mov_b32_e32 v171, v24
	v_cvt_f32_i32_e32 v163, v172
	v_mov_b32_e32 v172, v87
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v151, v124
	v_cvt_f32_i32_e32 v154, v125
	v_cvt_f32_i32_e32 v168, v126
	v_mov_b32_e32 v126, v20
	v_cvt_f32_i32_e32 v169, v127
	v_mov_b32_e32 v127, v180
	v_cvt_f32_i32_e32 v10, v128
	v_mov_b32_e32 v128, v21
	v_cvt_f32_i32_e32 v11, v129
	v_mov_b32_e32 v129, v22
	v_cvt_f32_i32_e32 v8, v130
	v_mov_b32_e32 v130, v23
	v_cvt_f32_i32_e32 v9, v131
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v11, off offset:476
	scratch_store_b32 off, v10, off offset:472
	scratch_store_b32 off, v9, off offset:452
	scratch_store_b32 off, v8, off offset:448
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v8, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(4)
	scratch_load_b32 v12, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s35, s1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s1, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s44
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v181, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v211, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v11, v212, s1, 1
	v_mov_b16_e64 v212.h, v221.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v221, v116 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v116.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v212.l, v116.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v8, v8, s1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v12, v12, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v9, 16, v9
	s_clause 0x3
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v111, v11, s[8:11], 0 offen
	buffer_load_u16 v125, v12, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v201, v9 offset:36864
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v9, v202, s4, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v193 offset:36864
	ds_load_b128 v[44:47], v193 offset:36880
	ds_load_b128 v[87:90], v193 offset:37376
	ds_load_b128 v[12:15], v193 offset:37392
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v211, 16, v8
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_u16 v9, v9, s[28:31], 0 offen
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v11, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v201, v9 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v193 offset:36864
	ds_load_b128 v[48:51], v193 offset:36880
	v_mul_f32_e32 v9, v53, v212
	scratch_load_b32 v181, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v9, v186, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v11, v9, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v8, v61, v211
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v85, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v8, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v11
	v_fma_f32 v17, -v11, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v11, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v18, v17
	scratch_load_b32 v17, off, off offset:240 ; 4-byte Folded Reload
	v_div_fmas_f32 v11, v11, v16, v18
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v52, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v95, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v11, v9, v8
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v54, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v60, v211
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v17, v3, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v16, v3, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v3, v16, v3
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v17, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v17, -v17, v20, v19
	scratch_load_b32 v19, off, off offset:244 ; 4-byte Folded Reload
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v55, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v120, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v120, v17, v16, v3
	scratch_load_b32 v16, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v41, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v8, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v62, v211
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v80, v8
	v_mov_b32_e32 v80, v93
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v93.h, v210.l
	v_mov_b16_e32 v93.l, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v9, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v18, v18, v156, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v19, v63, v211
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v83, v18
	v_mov_b32_e32 v83, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v119, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v16, v3, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v16, v49, v211
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v79, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v3
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v19, v19, v18
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v20, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v119, v20, v19, v18
	scratch_load_b32 v19, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v40, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v11
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v9, v9, v8
	v_rcp_f32_e32 v21, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v11, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v11, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v11, -v11, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v11, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v17
	v_fma_f32 v22, -v17, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v3, v16, v3
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v17, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v23, v22
	v_div_fmas_f32 v17, v17, v21, v23
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v18, v118, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v118, v11, v9, v8
	scratch_load_b32 v9, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v43, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v19, v48, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v78, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v20
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v19, v19, v18
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v20, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v21, v23
	v_div_fixup_f32 v131, v20, v19, v18
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v117, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v117, v17, v16, v3
	scratch_load_b32 v16, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v42, v212
	v_mov_b32_e32 v85, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v8, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v51, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v77, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v9, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v11
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v9, v9, v8
	v_rcp_f32_e32 v21, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v11, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v11, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v11, -v11, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v11, v21, v23
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v110, v16
	v_mov_b32_e32 v110, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v16, v3, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v50, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v76, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v3
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v16, null, v21, v21, v3
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v22, vcc_lo, v3, v21, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v17
	v_fma_f32 v24, -v16, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v17
	v_fma_f32 v16, -v16, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v22, v16, v17, v23
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v33, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v109, v214
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v109, v11, v9, v8
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v32, v212
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v214, v16, s2
	scratch_load_b32 v214, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[24:27], v193 offset:37376
	ds_load_b128 v[16:19], v193 offset:37392
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v23, v25, v211
	v_mul_f32_e32 v9, v24, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v75, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v20
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v75
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v75, null, v23, v23, v20
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v20, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v75, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v104, v214
	v_mov_b32_e32 v104, v208
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v208, v22, v21, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v35, v212
	v_mul_f32_e32 v21, v27, v211
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v214, v8, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v102, v91
	v_fma_f32 v9, v9, v74, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v91, v3, s2
	v_cndmask_b32_e64 v8, v8, v9, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v73, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v21, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v11
	v_fma_f32 v76, -v11, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v77, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v11, v77, v76
	v_dual_fmac_f32 v77, v78, v74 :: v_dual_mov_b32 v78, v205
	v_div_fixup_f32 v205, v75, v23, v20
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v34, v212
	v_mul_f32_e32 v23, v26, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v11, -v11, v77, v76
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v96, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v11, v11, v74, v77
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v224, v20, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v204, v11, v9, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v72, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v137, v212
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v9, v17, v211
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v23, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v94, v223
	v_mov_b32_e32 v94, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	v_mul_f32_e32 v23, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v223, v8, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v71, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v9, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v3
	v_rcp_f32_e32 v73, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v22, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v3, v21, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v74, v73
	v_fma_f32 v77, -v22, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v73
	v_fma_f32 v22, -v22, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v73, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v203, v22, v21, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v136, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v86, v200
	v_mov_b32_e32 v86, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v23, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v200, v3, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v72
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v23, v23, v20
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v20, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v200, v72, v23, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v139, v212
	v_mul_f32_e32 v23, v19, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v84, v199
	v_mov_b32_e32 v84, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v199, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v70, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v23, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v11
	v_fma_f32 v73, -v11, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v74, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v11, v74, v73
	v_fmac_f32_e32 v74, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v74, v73
	v_div_fmas_f32 v11, v11, v71, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v199, v11, v9, v8
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v138, v212
	v_mul_f32_e32 v9, v18, v211
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v255, v196
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v196, v8, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v196.h, v122.l
	v_mov_b16_e64 v196.l, v116.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v16, v211
	v_mov_b32_e32 v79, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v69, v8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v81, 16, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v66, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v9, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v3, v3, v21, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v3
	v_rcp_f32_e32 v66, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v22, v66, 1.0
	v_fmac_f32_e32 v66, v71, v66
	v_div_scale_f32 v71, vcc_lo, v3, v21, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v71, v66
	v_fma_f32 v74, -v22, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v66
	v_fma_f32 v22, -v22, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v66, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v223, v22, v21, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v53, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v82, v195
	v_mov_b32_e32 v82, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v23, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v195, v3, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v195, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v61, v195
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v68, v3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v10, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v23, v23, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v20, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:116
	scratch_load_b32 v74, off, off offset:736
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v66, v72, v71
	v_div_fmas_f32 v66, v66, v70, v72
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v224, v66, v23, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v52, v196
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v254, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v190, v20, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v11
	v_fma_f32 v70, -v11, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v11, v71, v70
	v_dual_fmac_f32 v71, v72, v69 :: v_dual_mov_b32 v72, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v71, v70
	v_div_fmas_f32 v11, v11, v69, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v190, v11, v9, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v55, v196
	v_mul_f32_e32 v9, v63, v195
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v252, v187
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v187, v8, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v9, v2, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v8, v2, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v10, v10, v3
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v68, v22
	v_div_scale_f32 v68, vcc_lo, v3, v10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v22
	v_fma_f32 v70, -v21, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v22
	v_fma_f32 v21, -v21, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v22, v69
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v60, v195
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v187, v21, v10, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v67, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v54, v196
	v_mul_f32_e32 v10, v62, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v22, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v251, v184
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v184, v3, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v10, v1, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v3, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v1
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v20
	v_rcp_f32_e32 v66, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v23, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v20, v22, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v23, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v23, -v23, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v66, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v184, v23, v22, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v49, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v2
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v9
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, null, v8, v8, v2
	v_rcp_f32_e32 v11, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v9, v11, 1.0
	v_fmac_f32_e32 v11, v66, v11
	v_div_scale_f32 v66, vcc_lo, v2, v8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v11
	v_fma_f32 v68, -v9, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v11
	v_fma_f32 v9, -v9, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v11, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v124, v9, v8, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v40, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v8, v48, v195 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v245, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v218, v2, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v249, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v3, v3, v1
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v21, v11
	v_div_scale_f32 v21, vcc_lo, v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v21, v11
	v_fma_f32 v67, -v10, v66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v11
	v_fma_f32 v10, -v10, v66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v66
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v41, v196
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v121, v10, v3, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v250, v209
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v43, v196
	v_mul_f32_e32 v3, v51, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v209, v11, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v244, v217
	v_fma_f32 v0, v20, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v217, v1, s2
	v_cndmask_b32_e64 v0, v11, v0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v216, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v3, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v3, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v11, v11, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v11, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v20, v23, v22
	v_fmac_f32_e32 v23, v66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v114, v20, v11, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v42, v196
	v_dual_mul_f32 v11, v50, v195 :: v_dual_fmac_f32 v8, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v242, v219
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v219, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v115, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v8, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, null, v8, v8, v2
	v_rcp_f32_e32 v21, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v9, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v2, v8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v66, -v9, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v66, v21
	v_fma_f32 v9, -v9, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v105, v9, v8, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v33, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v8, v25, v195 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v241, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v220, v2, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v215, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v3, v3, v1
	v_rcp_f32_e32 v21, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v10, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v66, -v10, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v66, v21
	v_fma_f32 v10, -v10, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v10, v3, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v32, v196
	v_mul_f32_e32 v3, v24, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v194, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v11, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v213, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v207, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v11, v11, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v3, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v11, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v20, v23, v22
	v_fmac_f32_e32 v23, v66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v194, v20, v11, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v35, v196
	v_dual_mul_f32 v11, v27, v195 :: v_dual_fmac_f32 v8, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v238, v231
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v231, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v206, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v8, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, null, v8, v8, v2
	v_rcp_f32_e32 v21, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v9, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v2, v8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v66, -v9, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v66, v21
	v_fma_f32 v9, -v9, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v231, v9, v8, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v34, v196
	v_mul_f32_e32 v8, v26, v195
	v_mov_b32_e32 v71, v246
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v197, v181
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v181, v2, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v65, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v3, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v10
	v_fma_f32 v22, -v10, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v1, v3, v1
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v10, v23, v22
	v_fmac_f32_e32 v23, v66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v23, v22
	v_div_fmas_f32 v10, v10, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v197, v10, v3, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v17, v195
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v11, v11, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v11, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v20, v23, v22
	v_fmac_f32_e32 v23, v66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v253, v20, v11, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v137, v196
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v236, v176
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v176, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v64, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v8, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, null, v8, v8, v2
	v_rcp_f32_e32 v21, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v9, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v2, v8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v65, -v9, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v65, v21
	v_fma_f32 v9, -v9, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v21, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v3, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v3
	v_fma_f32 v11, -v3, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v11, v10
	v_div_scale_f32 v11, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v20, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v3, v20, v11
	v_fmac_f32_e32 v20, v21, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v3, v20, v11
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v16, v195
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v3, v3, v10, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v136, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v232, v243
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v243, v10, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v243, v3, v1, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v53, v93
	v_mul_f32_e32 v1, v61, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v192, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v227, v237
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, v237, v0, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v188, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v11, v11, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v10, v11, v10
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v20, v23, v22
	v_fmac_f32_e32 v23, v64, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v19, v195
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v139, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v246, v20, v11, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v107, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v240, v21, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v191, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v23
	v_fma_f32 v65, -v23, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v66, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v23, v66, v65
	v_fmac_f32_e32 v66, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v66, v65
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v18, v195
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v64, v66
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v64, v138, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v64, v198, v239
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v198, v9, v8, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v239, v64, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v239, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v189, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v64
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v240, v66, v65, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v8, v3
	v_div_scale_f32 v8, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v9, v8, v3
	v_fma_f32 v10, -v2, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, v10, v3
	v_fma_f32 v2, -v2, v9, v8
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v60, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v2, v3, v9
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v52, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v201, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v177, v235
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v40, v93
	v_mul_f32_e32 v1, v48, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v235, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v183, v229
	v_fma_f32 v8, v8, v135, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v229, v0, s2
	v_cndmask_b32_e64 v3, v3, v8, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v123, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v229, v0, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v229
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, null, v8, v8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v9
	v_fma_f32 v11, -v9, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v11, v10
	v_div_scale_f32 v11, vcc_lo, v3, v8, v3
	v_mul_f32_e32 v20, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v9, v20, v11
	v_fmac_f32_e32 v20, v21, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v9, v20, v11
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v11, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v9, v10, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v55, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v202, v9, v8, v3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v59, v211
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v10, v10, v11, v234
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v63, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v234, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v179, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v11, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v10
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v20
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v10
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v64, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v64, v21
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v22, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v54, v93
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v237, v20, v11, v10
	scratch_load_b32 v11, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v116.l
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v21, v21, v22, v233
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v62, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v233, v21, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v178, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v23
	v_fma_f32 v65, -v23, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v66, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v23, v66, v65
	v_fmac_f32_e32 v66, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v66, v65
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v49, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v64, v66
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v64, v41, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v235, v23, v22, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v64, v182, v230
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v23, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v230, v64, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v157, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v64
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v230, v66, v65, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:120
	scratch_load_b32 v68, off, off offset:544
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v233, 1.0, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v233, v233, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v2, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v2, v1
	v_div_scale_f32 v2, vcc_lo, v229, v233, v229
	v_mul_f32_e32 v3, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v0, v3, v2
	v_dual_fmac_f32 v3, v8, v1 :: v_dual_mul_f32 v8, v58, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v0, -v0, v3, v2
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v177, off, off
	scratch_load_b32 v2, off, off offset:912
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v234, v0, v1, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:4
	scratch_load_b32 v1, off, off offset:916
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v0, v37, v212 :: v_dual_mul_f32 v3, v56, v211
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v1, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v36, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v107, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v2, v177
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v57, v211
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v177, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v248, v0
	v_fma_f32 v3, v3, v247, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v207, v0, v2, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v39, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v215, v1, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v182, off, off offset:12
	scratch_load_b32 v1, off, off offset:908
	s_waitcnt vmcnt(0)
	v_fma_f32 v206, v0, v1, v182
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:8
	scratch_load_b32 v1, off, off offset:904
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v38, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v182, v206, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v134, v2
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v0, v1, v183
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v0, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v207, v95
	v_mov_b32_e32 v95, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v183, v65, s2
	scratch_load_b32 v183, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v30, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v133, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v68, v66
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v9, s3
	v_cndmask_b32_e64 v2, v3, v8, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v29, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v119
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v180.h, 0x7fff, v10.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:900 ; 4-byte Folded Reload
	v_fma_f32 v8, v8, v143, v106
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v66, v65, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v47, v81
	v_mul_f32_e32 v65, v46, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v65, v144, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v1, v9, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v106, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v44, v211
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v181.h, 0x7fff, v9.h, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v116.h, v0.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v215, v120 :: v_dual_lshlrev_b32 v143, 16, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v54, v54, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v40, v40, v116 :: v_dual_and_b32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v2, v118
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v28, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v180.l, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v0.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v142, v11
	scratch_load_b32 v3, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v0, v0
	v_and_b32_e32 v20, 1, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v11, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v45, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v170, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v11, v11, v172, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v181.l, 0x7fff, v20.h, s5
	v_mov_b16_e32 v20.h, v116.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v11, s3
	v_cndmask_b32_e64 v1, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:352
	scratch_load_b32 v8, off, off offset:760
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v30, v212
	v_dual_mul_f32 v11, v90, v211 :: v_dual_mul_f32 v0, v0, v117
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v131
	scratch_load_b128 v[117:120], off, off offset:268 ; 16-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v2, v2, v3, v222
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v31, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v222, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v8, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v0, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v9, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v46, v211
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v176.h, 0x7fff, v8.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v87, v211
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v47, v211
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v9, s3
	scratch_load_b32 v9, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v109
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v109, v15, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v4, v212
	v_mul_f32_e32 v3, v5, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v0.h
	v_cndmask_b16 v176.l, 0x7fff, v10.h, s1
	v_mov_b16_e32 v10.h, v116.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v141, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v1, v208 :: v_dual_and_b32 v10, 1, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v183, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	v_add3_u32 v10, v0, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v172.h, 0x7fff, v10.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:884 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v140, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v9, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v88, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v166, v2
	v_fma_f32 v9, v9, v167, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v8, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:364
	scratch_load_b32 v9, off, off offset:744
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v205 :: v_dual_and_b32 v3, 1, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v204
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v6, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v172.l, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v1.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:892
	scratch_load_b32 v3, off, off offset:716
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v1, v20, 0x7fff
	v_cndmask_b16 v173.l, 0x7fff, v20.h, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v2, v2, v8, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v7, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v92, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v8, v8, v9, v106
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v106, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v89, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v173.h, 0x7fff, v9.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:880 ; 4-byte Folded Reload
	v_fma_f32 v8, v8, v161, v2
	v_fma_f32 v11, v11, v164, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v177, off, off offset:208
	scratch_load_b32 v8, off, off offset:720
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v117, v212
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:204
	scratch_load_b32 v11, off, off offset:712
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v1, v200 :: v_dual_mul_f32 v0, v0, v203
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v2, v2, v3, v134
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v118, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v134, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v8, v177
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v0, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v177, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v12, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v170.h, 0x7fff, v8.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v14, v211
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v13, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v9, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v199
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:348
	scratch_load_b32 v3, off, off offset:680
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v119, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v170.l, 0x7fff, v10.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v3, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v120, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v9, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:872 ; 4-byte Folded Reload
	v_fma_f32 v3, v3, v11, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v107, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v15, v211
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:196
	scratch_load_b32 v8, off, off offset:672
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:200
	scratch_load_b32 v9, off, off offset:676
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	v_cndmask_b16 v166.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v224 :: v_dual_and_b32 v3, 1, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v2, v190 :: v_dual_mul_f32 v2, v36, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v166.l, 0x7fff, v3.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:188
	scratch_load_b32 v3, off, off offset:664
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v2, v2, v8, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v37, v196
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v11, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v11, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v9, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v20, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:868
	scratch_load_b32 v10, off, off offset:860
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v56, v195
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v167.h, 0x7fff, v9.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v11, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v57, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v11, v11, v20, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v11, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v187
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v1, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v177, off, off offset:192
	scratch_load_b32 v8, off, off offset:668
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v38, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v167.l, 0x7fff, v20.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v184
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:844 ; 4-byte Folded Reload
	v_fma_f32 v2, v2, v3, v183
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v39, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v183, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v8, v177
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v0, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v177, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v58, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v164.h, 0x7fff, v8.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v44, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v59, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:184
	scratch_load_b32 v9, off, off offset:652
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:180
	scratch_load_b32 v3, off, off offset:636
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v28, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v164.l, 0x7fff, v10.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v3, v106
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v29, v196
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v106, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v9, v133
	scratch_load_b32 v9, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v133, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v45, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v92, off, off offset:176
	scratch_load_b32 v8, off, off offset:628
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	v_cndmask_b16 v160.h, 0x7fff, v10.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v105
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v30, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v160.l, 0x7fff, v3.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:168
	scratch_load_b32 v3, off, off offset:620
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v2, v2, v8, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v31, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v92, v2, s2
	v_mov_b32_e32 v92, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v9, v171
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v171, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v46, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v161.h, 0x7fff, v9.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:832 ; 4-byte Folded Reload
	v_fma_f32 v8, v8, v11, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v47, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v20, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v99
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v1, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:172
	scratch_load_b32 v8, off, off offset:624
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v4, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v161.l, 0x7fff, v20.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v194
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:164
	scratch_load_b32 v20, off, off offset:612
	s_waitcnt vmcnt(5)
	v_fma_f32 v2, v2, v3, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v5, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v107, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v8, v183
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v0, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v183, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v87, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v158.h, 0x7fff, v8.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v89, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v88, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v9, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v231
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:160
	scratch_load_b32 v3, off, off offset:608
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v6, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v158.l, 0x7fff, v10.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v3, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v7, v196
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v9, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:824 ; 4-byte Folded Reload
	v_fma_f32 v3, v3, v20, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v11, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v90, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:332
	scratch_load_b32 v8, off, off offset:596
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:156
	scratch_load_b32 v9, off, off offset:600
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	v_cndmask_b16 v152.h, 0x7fff, v10.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v253
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v2, v198 :: v_dual_mul_f32 v2, v117, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v152.l, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v2, v2, v8, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v118, v196
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v11, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v11, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v8, v8, v9, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v20, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v12, v195
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v153.h, 0x7fff, v9.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:152
	scratch_load_b32 v3, off, off offset:584
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v11, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v13, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v11, v11, v20, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v243
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v1, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:520
	scratch_load_b32 v8, off, off offset:588
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v119, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v153.l, 0x7fff, v20.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v246
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v3, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v120, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v9, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v8, v132
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v0, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v132, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v14, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v150.h, 0x7fff, v8.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v56, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v15, v195
	v_mul_f32_e32 v56, v56, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:148
	scratch_load_b32 v11, off, off offset:580
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v239
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:144
	scratch_load_b32 v3, off, off offset:576
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v36, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v150.l, 0x7fff, v10.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v3, v183
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v37, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v183, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v11, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v9, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v9, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v9, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v57, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:320
	scratch_load_b32 v8, off, off offset:560
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:516
	scratch_load_b32 v9, off, off offset:564
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v201 :: v_dual_and_b32 v3, 1, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v202
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v38, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v2, v2, v8, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v39, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v11, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v58, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v8, v8, v9, v91
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v146, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v146.l, 0x7fff, v3.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:132
	scratch_load_b32 v3, off, off offset:552
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v146.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v91, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v59, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v147, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v147.h, 0x7fff, v9.h, s4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:140
	scratch_load_b32 v9, off, off offset:752
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v8, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v1.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v237
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v8, v1, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v11, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:128
	scratch_load_b32 v22, off, off offset:748
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v116.l
	v_cndmask_b16 v147.l, 0x7fff, v8.h, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:136
	scratch_load_b32 v8, off, off offset:556
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v1, v235 :: v_dual_and_b32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v28, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v142.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(6)
	v_fma_f32 v0, v0, v3, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v29, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v20, v0, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	scratch_load_b32 v20, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v8, v21
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v43, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v21, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v9, v10
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v42, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v1.h
	v_mov_b16_e32 v21.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v22, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v51, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v11, v9, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v50, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v72, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v1, v21, 0x7fff
	v_mov_b16_e32 v1.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v71, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v10, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v45, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v142.l, 0x7fff, v21.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v11, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v44, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v23, v0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v23, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v11, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v11, v234, v233, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v11
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v116.l
	v_mov_b16_e32 v11.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v0, v11, 0x7fff
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v20, 1, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v10, v22, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v10, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v3, v230
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cndmask_b16 v144.l, 0x7fff, v11.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v1, 1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v64, s27, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v116.l
	v_add3_u32 v1, v2, v1, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:124
	scratch_load_b32 v2, off, off offset:548
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v10, v10
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v141, s27, 4, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v144.h, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v21
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v31, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v3, v3, v8
	v_div_scale_f32 v69, s4, v8, v3, v8
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v0, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v23, v0, v23 :: v_dual_mul_f32 v0, v33, v93
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v33, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v72, v69, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v74, v73
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v75, off, off offset:316
	scratch_load_b32 v74, off, off offset:732
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v0, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v25, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v0, v104, v73
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v0, s27, 5, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v76, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v76, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v2, v21, v2, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v67, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v67, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v66, v145, v2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v66, v32, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v71, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v21, v67, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v67, v65, v67
	v_fma_f32 v65, -v22, v72, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v65, v23
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v66, v66, v74, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, s5, v9, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v75, v66, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v66, v24, v81 :: v_dual_mul_f32 v77, v74, v67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v66, v78, v75
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[64:65]
	s_mov_b32 s27, 0x31027000
	v_add3_u32 v66, s33, s26, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v22, v72, v69
	v_fma_f32 v22, -v21, v77, v74
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v75, v78, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v140, 0x80, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v23, v72
	v_fmac_f32_e32 v77, v22, v67
	s_mov_b32 vcc_lo, s5
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s6
	v_mul_f32_e32 v1, 0xbfb8aa3b, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v20, v3, v8
	v_fma_f32 v21, -v21, v77, v74
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v68, v70, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v5, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v73
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:312
	scratch_load_b32 v71, off, off offset:660
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v34, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v67, v77
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v21, v10, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s6
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v4, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v69
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v8, v9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v22, v10
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s4
	v_exp_f32_e32 v1, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v3.h
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s1, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_and_b32 v11, 1, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v2, v9, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v8, v8, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v145.h, 0x7fff, v9.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:112
	scratch_load_b32 v9, off, off offset:536
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v3, v11, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v2, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v145.l, 0x7fff, v11.h, s1
	v_mov_b16_e32 v11.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v1, v1, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v10, v2, 1.0
	v_fmac_f32_e32 v2, v23, v2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v35, v93
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, v23, v71, v74
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v87, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v74, v23, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, s4, v69, v1, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v20, v9, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:108
	scratch_load_b32 v20, off, off offset:532
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v68, v9, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v21, v20, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v67, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, vcc_lo, v73, v8, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v88, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v22, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v72, v67, v2 :: v_dual_fmac_f32 v21, v68, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v75, off, off offset:308
	scratch_load_b32 v68, off, off offset:656
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v77, v74, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v70, v68, v75
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v27, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v75, v68, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v70, v70, v95, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v26, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v70, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v70, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v75, v75, v94, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v71, v76, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v76, -v10, v72, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v68, v75, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v75, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v72, v76, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v76, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v75
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v10, v72, v67
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v16, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v10, v2, v72
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v2, v8, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v71, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s5
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v136, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v70, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v22, v77, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v77, v70, v21 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v3, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v22, v77, v74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v20
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:304
	scratch_load_b32 v72, off, off offset:616
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v21, v77
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v67
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v10, v1, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v1, v8, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v8, v21, v9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v7, v93
	v_mul_f32_e32 v21, v6, v93
	v_mul_f32_e32 v7, v7, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v11.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v2, v9, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v11, 1, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v8, v8, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v135.h, 0x7fff, v9.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:104
	scratch_load_b32 v9, off, off offset:528
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v1, v11, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v3, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v100, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v2, v2, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v135.l, 0x7fff, v11.h, s1
	v_mov_b16_e32 v11.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v226, v6, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v67, -v10, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v67, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v137, v93
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v67, v67, v72, v74
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v89, v81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v74, v67, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, s4, v68, v2, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v20, v9, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:496
	scratch_load_b32 v20, off, off offset:524
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v69, v9, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, vcc_lo, v23, v8, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v69, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v21, v20, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v21, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v70, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v90, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v22, v21, 1.0
	v_fmac_f32_e32 v21, v70, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:344
	scratch_load_b32 v70, off, off offset:604
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v77, v74, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v71, v70, v183
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v17, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v183, v70, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v71, v71, v92, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, v75, v86, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v71, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v71, off, off offset:768 ; 4-byte Folded Reload
	v_fma_f32 v72, v72, v76, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v76, -v10, v73, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v70, v75, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v73, v76, v3
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v76, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v75
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v18, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v10, v73, v69
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v3, v10, v3, v73
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v3, v8, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v72, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:92
	scratch_load_b32 v72, off, off offset:572
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v20, v20, v71, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v71, -v22, v77, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v77, v71, v21 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v70
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v138, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v22, v77, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v21, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v69
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v10, v2, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v8, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v21, v9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v118, v93
	v_dual_mul_f32 v21, v117, v93 :: v_dual_add_f32 v8, 1.0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v11.l, v2.h
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v9, v1, v9, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v8, v8, v67
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v131.h, 0x7fff, v9.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:100
	scratch_load_b32 v9, off, off offset:512
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v3, v10
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v2, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v1, v1, v70
	v_div_scale_f32 v74, s4, v70, v1, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v131.l, 0x7fff, v11.h, s1
	v_mov_b16_e32 v11.h, v116.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v10, v3, 1.0
	v_fmac_f32_e32 v3, v23, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v139, v93
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, v23, v72, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v12, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v107, v23, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v20, v9, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:96
	scratch_load_b32 v20, off, off offset:508
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v68, v9, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, vcc_lo, v67, v8, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v68, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v21, v20, v183
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v21, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v183, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v13, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v72, v76, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v22, v21, 1.0
	v_fma_f32 v76, -v10, v73, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v127, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v69, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:88
	scratch_load_b32 v69, off, off offset:568
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v73, v76, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v77, v74, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v73, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v68, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v3, v10, v3, v73
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v3, v3, v8, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v72, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v71, v69, v106
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v19, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v106, v69, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v71, v71, v84, v23
	v_fma_f32 v75, v75, v82, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v23, v71, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v22, v77, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v69, v75, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v82
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v77, v23, v21 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v22, v77, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v20
	v_cndmask_b32_e64 v23, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v21, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s6
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v82
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v10, v1, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v84
	v_exp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v8, v1
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v36, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v21, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v86, 1.0, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v9
	v_and_b32_e32 v9, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v94, 1.0, v3 :: v_dual_mul_f32 v3, v119, v93
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v96, null, v86, v86, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v2, v8, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v120, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v93, v1, v9, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v99, null, v94, v94, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v127.h, 0x7fff, v8.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:84
	scratch_load_b32 v8, off, off offset:504
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v95, v96
	v_rcp_f32_e32 v102, v99
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v53, v116
	v_mul_f32_e32 v53, v55, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v55, v57, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v127.l, 0x7fff, v93.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v2, v8, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:80
	scratch_load_b32 v8, off, off offset:500
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v9, v2, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:72
	scratch_load_b32 v9, off, off offset:464
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, vcc_lo, v82, v86, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v8, v183
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v8, -v96, v95, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v183, v3, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v3, -v99, v102, 1.0
	v_fmac_f32_e32 v95, v8, v95
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v52, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v1, v9, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v9, v14, v81 :: v_dual_fmac_f32 v102, v3, v102
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:68
	scratch_load_b32 v3, off, off offset:456
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v10, v2, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v11, v1, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, s4, v84, v94, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, v11, v102
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v8, v3, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v61, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v20, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v221, v1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v60, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v8, off, off offset:488 ; 4-byte Folded Reload
	v_fma_f32 v9, v9, v21, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v96, v10, v2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v110, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v104, v9, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v10, v21, v95
	v_fma_f32 v21, -v99, v22, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v20, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v2, -v96, v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v22, v21, v102 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v2, v95, v10
	v_fma_f32 v10, -v99, v22, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s5
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v2, v86, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v102, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v22, v37, v116 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v94, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v20
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v20, v21
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v9.h
	v_mov_b16_e32 v21.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_and_b32 v21, 1, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v109, v8, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v105, v8, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v8, v2
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v11
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v116.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v11.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v11, 1, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v8, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v10, v10, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v8, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v36.h, 0x7fff, v11.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:76
	scratch_load_b32 v11, off, off offset:428
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v2, v2, v3
	v_fma_f32 v52, -v20, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v8, v52, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v22, v11, v60
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:64
	scratch_load_b32 v22, off, off offset:424
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v60, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:56
	scratch_load_b32 v52, off, off offset:444
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v55, v55, v68, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v55, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v55, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v22, v23, v22, v183
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v23, v37
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v52, v53, v52, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, vcc_lo, v1, v10, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v183, v22, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v52, v60, v52, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v37, v23, 1.0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v60, v63, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:288
	scratch_load_b32 v67, off, off offset:440
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v53, v8
	v_fmac_f32_e32 v23, v57, v23
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v57, v60, v85, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, s1, v3, v2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v57, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v57, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v54, v54, v67, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v63, v54, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v63, v60, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v67
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v56, v56, v57, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v20, v61, v53
	v_fmac_f32_e32 v61, v57, v8
	v_fma_f32 v57, -v37, v63, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v61, v53
	v_fmac_f32_e32 v63, v57, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v20, v8, v61
	v_fma_f32 v20, -v37, v63, v60
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v1, v8, v10, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v22, v56, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v38, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v62, v62, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v23, v63
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:48
	scratch_load_b32 v57, off, off offset:412
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v49, v49, v143
	v_mul_f32_e32 v48, v48, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v44, v44, v143
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v25, v143
	v_mul_f32_e32 v24, v24, v143
	v_mul_f32_e32 v27, v27, v143
	v_mul_f32_e32 v17, v17, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v143
	v_mul_f32_e32 v13, v13, v143
	v_mul_f32_e32 v14, v14, v143
	v_mul_f32_e32 v15, v15, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v62, v62, v83, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v20, v2, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v36.l, 0x7fff, v21.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v39, v116
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v11, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v62, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v8, v2
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v1.h
	v_mov_b16_e32 v8.h, v116.l
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v53, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v8, 1, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v37, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v8, v1, v8, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v9, v37, v10
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s5
	v_exp_f32_e32 v3, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:212
	scratch_load_b32 v37, off, off offset:396
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v9, v9, v52
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v20, v10
	v_div_scale_f32 v23, null, v3, v3, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v10, v20, 1.0
	v_fmac_f32_e32 v20, v38, v20
	v_div_scale_f32 v38, vcc_lo, v52, v9, v52
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v21, v21, v37, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:52
	scratch_load_b32 v37, off, off offset:392
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v53, v21, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v59, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v22, v37, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v39, v22, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v58, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:44
	scratch_load_b32 v59, off, off offset:408
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v41, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v23, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v57, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s4, v54, v3, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v56, v39, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v57, v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v49, v49, v80, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v49, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v49, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v40, v40, v59, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v59, off, off offset:460 ; 4-byte Folded Reload
	v_fma_f32 v22, v22, v55, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v55, v38, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v58, v40, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, v21, v22, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v10, v55, v38
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v43, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v56, v20
	v_fma_f32 v56, -v23, v57, v41
	v_fma_f32 v10, -v10, v55, v38
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v48, v79, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v39 :: v_dual_fmac_f32 v57, v56, v37
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v20, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v38, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v23, v57, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:36
	scratch_load_b32 v43, off, off offset:404
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v10, v9, v52
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v37, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v20, v3, v54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v37.h, 0x7fff, v8.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v10, v23
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v21, v3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.h, v116.l
	v_cndmask_b16 v37.l, 0x7fff, v11.h, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v28, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v3.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v10, v8
	v_exp_f32_e32 v10, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v21
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v2, v2, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v10, v21
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v53, v53, v59, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v53, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v116.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v1, v9, 0x7fff
	v_add3_u32 v1, v3, v20, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v22, v43, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v8, v8, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v38.h, 0x7fff, v9.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v29, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:40
	scratch_load_b32 v23, off, off offset:380
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v41, v22, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v41, v42, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, vcc_lo, v39, v2, v39
	v_rcp_f32_e32 v28, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v20, v28, 1.0
	v_fmac_f32_e32 v28, v43, v28
	v_div_scale_f32 v43, s1, v40, v8, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v9, v23, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:328
	scratch_load_b32 v23, off, off offset:376
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v29, v9, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v45, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:32
	scratch_load_b32 v45, off, off offset:400
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v11, v11, v23, v132
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v21, v10, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v132, v11, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v10, v23, v10
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v51, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v41, v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v45, v42, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v165, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v48, v41, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v41, v50, v143 :: v_dual_mul_f32 v50, v43, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v22
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v41, v41, v163, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v41, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v41, off, off offset:432 ; 4-byte Folded Reload
	v_fma_f32 v44, v44, v49, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v21, v45, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v44, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v45, v49, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v49, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v21, v10, v45
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:20
	scratch_load_b32 v45, off, off offset:388
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v10, v2, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s5
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v45, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v45, off, off offset:416 ; 4-byte Folded Reload
	v_fma_f32 v29, v29, v41, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v20, v50, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v44, v33, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, v9, v29, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v41, v28
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	v_exp_f32_e32 v29, v48
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v154, v33
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v9, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v20, v50, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v28, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v41
	v_ldexp_f32 v21, v29, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v31, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v20, v8, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:24
	scratch_load_b32 v39, off, off offset:356
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.h, v116.l
	v_cndmask_b16 v38.l, 0x7fff, v1.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v21 :: v_dual_mul_f32 v8, v11, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v2.h
	v_mov_b16_e32 v11.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v28, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v3, v3, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v8.h
	v_and_b32_e32 v1, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v21, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v11, 1, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v30, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v9, v9, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v2, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v8, v11, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v10, v21, 1.0
	v_fmac_f32_e32 v21, v31, v21
	v_div_scale_f32 v31, vcc_lo, v22, v3, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v39, v40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:28
	scratch_load_b32 v39, off, off offset:360
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v40, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v46, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v29, v39, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v41, v29, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v31, v21
	v_fmac_f32_e32 v30, v39, v30
	v_div_scale_f32 v39, s4, v23, v9, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v47, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v10, v29, v31
	v_mul_f32_e32 v43, v39, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v42, v21
	v_fma_f32 v42, -v28, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v10, -v10, v29, v31
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v31, v32, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v42, v30
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v42, v34, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v21, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v33, v25, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v28, v43, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v28, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v45, v20
	scratch_load_b32 v45, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v3, v10, v3, v22
	v_div_fmas_f32 v21, v21, v30, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v40, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v88, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v21, v9, v23
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v20, v9
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v28, v31, v28, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v41, v45, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v155, v28, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v41, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v24, v151, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v1.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.h, v116.l
	v_cmp_o_f32_e64 s1, v8, v8
	v_mov_b16_e32 v8.l, v30.h
	v_mov_b16_e32 v8.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v25, v10, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v1.h
	v_cndmask_b16 v24.l, 0x7fff, v11.h, s1
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v29 :: v_dual_and_b32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v3, 0xbfb8aa3b, v31 :: v_dual_and_b32 v2, 1, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v30, v8, 0x7fff
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v35, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v21
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v1, v2, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v5, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, s4
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s4
	v_ldexp_f32 v9, v9, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v31 :: v_dual_add_f32 v32, 1.0, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:324
	scratch_load_b32 v9, off, off offset:340
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v1, v3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v4, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v4, null, v32, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v33, v4
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v5
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v5, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v4, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v9, v91
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:16
	scratch_load_b32 v10, off, off offset:336
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v91, v2, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v2, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v40, v159, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v5, v103
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v5, 1.0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v39, v23, s3
	v_cndmask_b32_e64 v41, v103, v8, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v5, v5, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v27, v169, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v8, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v41, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v21, v8, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v8, v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, s4
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v11, v11
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v10, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, vcc_lo, v29, v32, v29
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v42, v2, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v9, v3, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v26, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v22, v10, v33 :: v_dual_mul_f32 v3, v87, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v101, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v4, v22, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v162, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v168, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v22, v26, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v35, v3, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v35, 0x7632
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v9, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, s5, v31, v5, v31
	v_fma_f32 v4, -v4, v22, v10
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v11, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v20, 0xbfb8aa3b, v2 :: v_dual_mul_f32 v27, v9, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v4, v4, v33, v22
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v21, v27, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v4, v32, v29
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v137, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v27, v26, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v23, v4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v28.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v9, -v21, v27, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v2
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v8, v9, v8, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:264
	scratch_load_b32 v28, off, off offset:60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v11, v20
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v89, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v8, v5, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v90, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v25.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, vcc_lo, v1, v10, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v148, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v11, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v11, null, v10, v10, v1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v30, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v4.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v9
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v9, v11
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v5, null, v8, v8, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v20, v4, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v22, v5
	v_fma_f32 v26, -v11, v9, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v3, v21, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v9, v26, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v5, v22, 1.0
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, s1, v2, v8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v29, v26, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v27, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v27, v25, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v28, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v11, v27, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v31, v149, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v27, v28, v9
	v_fma_f32 v28, -v5, v29, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v31, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v11, -v11, v27, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v25, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v29, v28, v22
	v_div_fmas_f32 v9, v11, v9, v27
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v5, -v5, v29, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v9, v10, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v5, v22, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v136, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v7, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v5, v8, v2
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v21.h, s1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v20, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v6, v2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v6, v16, v143
	v_mul_f32_e32 v16, v19, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:452
	scratch_load_b32 v5, off, off offset:260
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v2.h
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v10
	v_add3_u32 v3, v2, v3, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v25, v32, v25, v228
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v32, v23, v38, s0
	v_cndmask_b32_e64 v23, v38, v23, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v228, v25, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v25, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v25, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v11, v17, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v11, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v18, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v10, off, off offset:256 ; 4-byte Folded Reload
	v_fma_f32 v5, v22, v5, v113
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v113, v5, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v7, v7, v4
	v_div_scale_f32 v22, s5, v4, v7, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v21, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v6, v11, v5
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v139, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v6, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v6, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v138, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v97, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v108, v1, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v9, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v11, v10, v112
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v118, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v112, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v98, v225
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v19, v10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v117, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v225, v11, s2
	v_cndmask_b32_e64 v10, v10, v16, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v16, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v20, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v129, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v9, v20
	v_mul_f32_e32 v17, 0xbfb8aa3b, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v18, v21, 1.0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v120, v116
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v20, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v20, null, v9, v9, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v26, v22, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v25, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v18, v26, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v26, v29, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v20, v25, 1.0
	v_fma_f32 v18, -v18, v26, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v21, v26
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v18, v7, v4
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v119, v116
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v11, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v19, v16, v185
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v185, v16, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v130, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, s1, v5, v9, v5
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v22, v27, v25
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v16, v12, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v20, v22, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v22, v21, v25
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v28
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v17, v17, v10
	v_fma_f32 v20, -v20, v22, v27
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v27, v127, v135, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v25, v22
	v_div_scale_f32 v29, null, v19, v19, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v5, v20, v9, v5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v20, v153, v146, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v31, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v28, v30, 1.0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v12, v5 :: v_dual_fmac_f32 v30, v7, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v7, s4, v10, v17, v10
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v29, v31, 1.0
	v_fmac_f32_e32 v31, v16, v31
	v_div_scale_f32 v16, s5, v1, v19, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v16, v31
	v_fma_f32 v25, -v29, v26, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v26, v25, v31
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v25, v145, v142, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v18, v21, v174
	scratch_load_b32 v21, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v174, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v14, v126, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v18, v9, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v18, v152, v150, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v13, v13, v21, v175
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v21, v7, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v175, v13, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v28, v21, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v15, v128, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v22, v30
	v_fma_f32 v15, -v29, v26, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v16, v160, v158, s0
	v_cndmask_b32_e64 v29, v36, v131, s0
	v_cndmask_b32_e64 v22, v147, v144, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v7, -v28, v21, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v13, v14, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v14, v164, v161, s0
	v_cndmask_b32_e64 v13, v161, v164, s0
	v_cndmask_b32_e64 v28, v135, v127, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v7, v7, v30, v21
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v30, v131, v36, s0
	v_cndmask_b32_e64 v21, v144, v147, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v15, v31, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cndmask_b32_e64 v26, v142, v145, s0
	v_cndmask_b32_e64 v31, v24, v37, s0
	v_cndmask_b32_e64 v24, v37, v24, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v7, v17, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v5.h
	v_mov_b16_e32 v10.h, v116.l
	v_cndmask_b32_e64 v17, v150, v152, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v15, v19, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b32_e64 v3, v176, v180, s0
	v_cndmask_b32_e64 v15, v158, v160, s0
	v_cndmask_b32_e64 v19, v146, v153, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v7, v12, v7 :: v_dual_and_b32 v10, 1, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v9, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v4.h
	v_mov_b16_e32 v9.h, v116.l
	v_mov_b16_e32 v11.l, v7.h
	v_add3_u32 v2, v5, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_mov_b16_e32 v12.l, v1.h
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s4, v1, v1
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v10, 1, v12
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cndmask_b32_e64 v12, v170, v167, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v7, v11, 0x7fff
	v_cndmask_b32_e64 v7, v181, v172, s0
	v_cndmask_b32_e64 v11, v167, v170, s0
	v_add3_u32 v4, v1, v10, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v10, v173, v166, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v9, v166, v173, s0
	v_permlanex16_b32 v30, v30, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s3
	v_cndmask_b32_e64 v5, v172, v181, s0
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s4
	v_cndmask_b32_e64 v33, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	v_mov_b32_e32 v8, 0x5410
	v_cndmask_b32_e64 v4, v180, v176, s0
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v34, v2, v6, s0
	v_cndmask_b32_e64 v2, v6, v2, s0
	v_cndmask_b32_e64 v6, 0x1054, v8, s0
	v_cndmask_b32_e64 v8, 0x3276, v35, s0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v8, v8, 8, v8
	v_permlanex16_b32 v40, v2, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v8, 0x760076, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v6, v6, 4, v6
	v_lshl_or_b32 v8, v8, 4, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v36, 0x5040504, v6
	v_and_b32_e32 v37, 0x7060706, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v4, v3, v36
	v_perm_b32 v2, v4, v3, v37
	v_perm_b32 v3, v7, v5, v36
	v_perm_b32 v4, v7, v5, v37
	v_perm_b32 v23, v30, v29, v36
	v_perm_b32 v24, v30, v29, v37
	v_perm_b32 v29, v39, v33, v36
	v_perm_b32 v30, v39, v33, v37
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v33, v66, v64, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v5, v10, v9, v36
	v_perm_b32 v6, v10, v9, v37
	v_perm_b32 v7, v12, v11, v36
	v_perm_b32 v8, v12, v11, v37
	v_perm_b32 v9, v14, v13, v36
	v_perm_b32 v10, v14, v13, v37
	v_perm_b32 v11, v16, v15, v36
	v_perm_b32 v12, v16, v15, v37
	v_perm_b32 v15, v20, v19, v36
	v_perm_b32 v16, v20, v19, v37
	v_perm_b32 v19, v26, v25, v36
	v_perm_b32 v20, v26, v25, v37
	v_perm_b32 v25, v35, v31, v36
	v_perm_b32 v26, v35, v31, v37
	v_add_lshl_u32 v35, v66, v141, 1
	v_perm_b32 v13, v18, v17, v36
	v_perm_b32 v14, v18, v17, v37
	v_perm_b32 v17, v22, v21, v36
	v_perm_b32 v18, v22, v21, v37
	v_perm_b32 v21, v28, v27, v36
	v_perm_b32 v22, v28, v27, v37
	v_perm_b32 v27, v38, v32, v36
	v_perm_b32 v28, v38, v32, v37
	v_perm_b32 v31, v40, v34, v36
	v_perm_b32 v32, v40, v34, v37
	s_clause 0x2
	buffer_store_b128 v[1:4], v33, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v33, s[24:27], 0 offen offset:256
	buffer_store_b128 v[9:12], v35, s[24:27], 0 offen
	v_add_lshl_u32 v1, v140, v141, 1
	v_add_lshl_u32 v2, v66, v0, 1
	v_add_lshl_u32 v0, v140, v0, 1
	v_add_lshl_u32 v3, v66, v65, 1
	v_add_lshl_u32 v4, v140, v65, 1
	s_clause 0x4
	buffer_store_b128 v[13:16], v1, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v2, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v0, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 932
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 932
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 42792
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 932
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 932
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 418
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
