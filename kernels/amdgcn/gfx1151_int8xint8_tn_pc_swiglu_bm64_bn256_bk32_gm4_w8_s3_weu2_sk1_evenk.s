	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v2, 0xf0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v36, 15, v0
	v_lshlrev_b32_e32 v153, 3, v0
	v_or_b32_e32 v124, 0x3f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v33, 3, v2
	scratch_store_b32 off, v2, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v133, 0x7f0, v0
	v_lshlrev_b32_e32 v90, 5, v0
	v_lshlrev_b32_e32 v89, 4, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v53, 0, v153
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s14, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 56, v153
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s33, s15, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s33, v33
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s9
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s5, s3, 5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s4, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s33, s5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s4, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, v36, 4, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s10, 31
.Ltmp13:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v123, v3, v1, s29
	s_mul_i32 s4, s14, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v11, s28, s3, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 31
	v_mov_b32_e32 v155, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s4, v123
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s33, v11
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v9, s15, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v25, s15, 6, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s7, s14, 5
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v34, 0x80000000, v1, s3
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v11, s3
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v17, s4, s7, v123
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s33, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v18, s33, v25
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v26, s15, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v35, 0x80000000, v17, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v25, s2
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v13, 0x80000000, v10, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v18, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v25, s33, v26
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v29, 0x80000000, v25, s2
	s_clause 0x1
	buffer_load_b128 v[25:28], v26, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b64 v[49:50], v34, s[20:23], 0 offen
	buffer_load_b64 v[51:52], v35, s[20:23], 0 offen
	scratch_store_b32 off, v36, off offset:192 ; 4-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v177, v36, 9, v33
	s_mov_b32 s26, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x5f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v178, 0x90, v177
	v_add_nc_u32_e32 v54, 0, v177
	v_xor_b32_e32 v179, 0x110, v177
	v_add_nc_u32_e32 v55, 0, v178
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v56, 0, v179
	s_waitcnt vmcnt(8)
	v_perm_b32 v33, v5, v1, 0x5010400
	v_perm_b32 v5, v5, v1, 0x7030602
	v_perm_b32 v34, v6, v2, 0x5010400
	v_perm_b32 v6, v6, v2, 0x7030602
	v_perm_b32 v35, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v36, v8, v4, 0x5010400
	v_perm_b32 v37, v8, v4, 0x7030602
	v_and_b16 v1.l, 0xff, v33.l
	v_lshrrev_b32_e32 v38, 8, v33
	v_lshrrev_b32_e32 v39, 24, v33
	v_and_b16 v1.h, 0xff, v33.h
	v_and_b16 v2.l, 0xff, v5.l
	v_lshrrev_b32_e32 v33, 8, v5
	v_lshrrev_b32_e32 v40, 24, v5
	v_and_b16 v2.h, 0xff, v5.h
	v_and_b16 v3.l, 0xff, v34.l
	v_lshrrev_b32_e32 v41, 8, v34
	v_lshrrev_b32_e32 v42, 24, v34
	v_and_b16 v3.h, 0xff, v34.h
	v_and_b16 v4.l, 0xff, v6.l
	v_lshrrev_b32_e32 v34, 8, v6
	v_lshrrev_b32_e32 v43, 24, v6
	v_and_b16 v4.h, 0xff, v6.h
	v_and_b16 v5.l, 0xff, v35.l
	v_lshrrev_b32_e32 v44, 8, v35
	v_lshrrev_b32_e32 v45, 24, v35
	v_and_b16 v5.h, 0xff, v35.h
	v_and_b16 v6.l, 0xff, v7.l
	v_lshrrev_b32_e32 v35, 8, v7
	v_lshrrev_b32_e32 v46, 24, v7
	v_and_b16 v6.h, 0xff, v7.h
	v_and_b16 v7.l, 0xff, v36.l
	v_lshrrev_b32_e32 v47, 8, v36
	v_lshrrev_b32_e32 v48, 24, v36
	v_and_b16 v7.h, 0xff, v36.h
	v_and_b16 v8.l, 0xff, v37.l
	v_lshrrev_b32_e32 v36, 8, v37
	v_lshrrev_b32_e32 v57, 24, v37
	v_and_b16 v8.h, 0xff, v37.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v37, v13, v9, 0x5010400
	v_perm_b32 v58, v13, v9, 0x7030602
	v_perm_b32 v59, v14, v10, 0x5010400
	v_perm_b32 v60, v14, v10, 0x7030602
	v_perm_b32 v61, v15, v11, 0x5010400
	v_perm_b32 v62, v15, v11, 0x7030602
	v_perm_b32 v63, v16, v12, 0x5010400
	v_perm_b32 v64, v16, v12, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v65, v21, v17, 0x5010400
	v_perm_b32 v66, v21, v17, 0x7030602
	v_perm_b32 v67, v22, v18, 0x5010400
	v_perm_b32 v68, v22, v18, 0x7030602
	v_perm_b32 v69, v23, v19, 0x5010400
	v_perm_b32 v70, v23, v19, 0x7030602
	v_perm_b32 v71, v24, v20, 0x5010400
	v_perm_b32 v72, v24, v20, 0x7030602
	v_lshlrev_b16 v9.l, 8, v38.l
	v_lshlrev_b16 v9.h, 8, v39.l
	v_lshlrev_b16 v10.l, 8, v33.l
	v_lshlrev_b16 v10.h, 8, v40.l
	v_lshlrev_b16 v11.l, 8, v41.l
	v_lshlrev_b16 v11.h, 8, v42.l
	v_lshlrev_b16 v12.l, 8, v34.l
	v_lshlrev_b16 v12.h, 8, v43.l
	v_lshlrev_b16 v13.l, 8, v44.l
	v_lshlrev_b16 v13.h, 8, v45.l
	v_lshlrev_b16 v14.l, 8, v35.l
	v_lshlrev_b16 v14.h, 8, v46.l
	v_lshlrev_b16 v15.l, 8, v47.l
	v_lshlrev_b16 v15.h, 8, v48.l
	v_lshlrev_b16 v16.l, 8, v36.l
	v_lshlrev_b16 v16.h, 8, v57.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.l, 0xff, v37.l
	v_lshrrev_b32_e32 v41, 8, v37
	v_lshrrev_b32_e32 v42, 24, v37
	v_and_b16 v17.h, 0xff, v37.h
	v_and_b16 v18.l, 0xff, v58.l
	v_lshrrev_b32_e32 v43, 8, v58
	v_lshrrev_b32_e32 v44, 24, v58
	v_and_b16 v18.h, 0xff, v58.h
	v_and_b16 v19.l, 0xff, v59.l
	v_lshrrev_b32_e32 v45, 8, v59
	v_lshrrev_b32_e32 v46, 24, v59
	v_and_b16 v19.h, 0xff, v59.h
	v_and_b16 v20.l, 0xff, v60.l
	v_lshrrev_b32_e32 v47, 8, v60
	v_lshrrev_b32_e32 v48, 24, v60
	v_and_b16 v20.h, 0xff, v60.h
	v_and_b16 v21.l, 0xff, v61.l
	v_lshrrev_b32_e32 v57, 8, v61
	v_lshrrev_b32_e32 v58, 24, v61
	v_and_b16 v21.h, 0xff, v61.h
	v_and_b16 v22.l, 0xff, v62.l
	v_lshrrev_b32_e32 v59, 8, v62
	v_lshrrev_b32_e32 v60, 24, v62
	v_and_b16 v22.h, 0xff, v62.h
	v_and_b16 v23.l, 0xff, v63.l
	v_lshrrev_b32_e32 v61, 8, v63
	v_lshrrev_b32_e32 v62, 24, v63
	v_and_b16 v23.h, 0xff, v63.h
	v_and_b16 v24.l, 0xff, v64.l
	v_lshrrev_b32_e32 v63, 8, v64
	v_lshrrev_b32_e32 v73, 24, v64
	v_and_b16 v24.h, 0xff, v64.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v33.l, 0xff, v65.l
	v_lshrrev_b32_e32 v64, 8, v65
	v_lshrrev_b32_e32 v74, 24, v65
	v_and_b16 v33.h, 0xff, v65.h
	v_and_b16 v34.l, 0xff, v66.l
	v_lshrrev_b32_e32 v65, 8, v66
	v_lshrrev_b32_e32 v75, 24, v66
	v_and_b16 v34.h, 0xff, v66.h
	v_and_b16 v35.l, 0xff, v67.l
	v_lshrrev_b32_e32 v66, 8, v67
	v_lshrrev_b32_e32 v76, 24, v67
	v_and_b16 v35.h, 0xff, v67.h
	v_and_b16 v36.l, 0xff, v68.l
	v_lshrrev_b32_e32 v67, 8, v68
	v_lshrrev_b32_e32 v77, 24, v68
	v_and_b16 v36.h, 0xff, v68.h
	v_and_b16 v37.l, 0xff, v69.l
	v_lshrrev_b32_e32 v68, 8, v69
	v_lshrrev_b32_e32 v78, 24, v69
	v_and_b16 v37.h, 0xff, v69.h
	v_and_b16 v38.l, 0xff, v70.l
	v_lshrrev_b32_e32 v69, 8, v70
	v_lshrrev_b32_e32 v79, 24, v70
	v_and_b16 v38.h, 0xff, v70.h
	v_and_b16 v39.l, 0xff, v71.l
	v_lshrrev_b32_e32 v70, 8, v71
	v_lshrrev_b32_e32 v80, 24, v71
	v_and_b16 v39.h, 0xff, v71.h
	v_and_b16 v40.l, 0xff, v72.l
	v_lshrrev_b32_e32 v71, 8, v72
	v_lshrrev_b32_e32 v81, 24, v72
	v_and_b16 v40.h, 0xff, v72.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v72, v29, v25, 0x5010400
	v_perm_b32 v82, v29, v25, 0x7030602
	v_perm_b32 v83, v30, v26, 0x5010400
	v_perm_b32 v84, v30, v26, 0x7030602
	v_perm_b32 v85, v31, v27, 0x5010400
	v_perm_b32 v86, v31, v27, 0x7030602
	v_perm_b32 v87, v32, v28, 0x5010400
	v_perm_b32 v88, v32, v28, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v1.l, v9.l
	v_or_b16 v2.l, v2.l, v10.l
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v5.h, v5.h, v13.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v9.l, 8, v41.l
	v_lshlrev_b16 v10.l, 8, v43.l
	v_lshlrev_b16 v13.l, 8, v57.l
	v_lshlrev_b16 v13.h, 8, v58.l
	v_lshrrev_b32_e32 v57, 8, v72
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.h, v1.h, v9.h
	v_or_b16 v2.h, v2.h, v10.h
	v_or_b16 v3.h, v3.h, v11.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v9.h, 8, v42.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v3.l, v11.l
	v_or_b16 v4.l, v4.l, v12.l
	v_or_b16 v4.h, v4.h, v12.h
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v10.h, 8, v44.l
	v_lshlrev_b16 v11.l, 8, v45.l
	v_lshlrev_b16 v11.h, 8, v46.l
	v_lshlrev_b16 v12.l, 8, v47.l
	v_lshlrev_b16 v12.h, 8, v48.l
	v_lshlrev_b16 v14.l, 8, v59.l
	v_lshlrev_b16 v14.h, 8, v60.l
	v_lshlrev_b16 v15.l, 8, v61.l
	v_lshlrev_b16 v15.h, 8, v62.l
	v_lshlrev_b16 v16.l, 8, v63.l
	v_lshlrev_b16 v16.h, 8, v73.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.l, 8, v64.l
	v_lshlrev_b16 v25.h, 8, v74.l
	v_lshlrev_b16 v26.l, 8, v65.l
	v_lshlrev_b16 v26.h, 8, v75.l
	v_lshlrev_b16 v27.l, 8, v66.l
	v_lshlrev_b16 v27.h, 8, v76.l
	v_lshlrev_b16 v28.l, 8, v67.l
	v_lshlrev_b16 v28.h, 8, v77.l
	v_lshlrev_b16 v29.l, 8, v68.l
	v_lshlrev_b16 v30.l, 8, v69.l
	v_lshlrev_b16 v31.l, 8, v70.l
	v_lshlrev_b16 v32.l, 8, v71.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v41.l, 0xff, v72.l
	v_lshrrev_b32_e32 v58, 24, v72
	v_and_b16 v41.h, 0xff, v72.h
	v_lshrrev_b32_e32 v59, 8, v82
	v_lshrrev_b32_e32 v60, 24, v82
	v_lshrrev_b32_e32 v61, 8, v83
	v_lshrrev_b32_e32 v62, 24, v83
	v_lshrrev_b32_e32 v63, 8, v84
	v_lshrrev_b32_e32 v64, 24, v84
	v_lshrrev_b32_e32 v65, 8, v85
	v_lshrrev_b32_e32 v66, 24, v85
	v_lshrrev_b32_e32 v67, 8, v86
	v_lshrrev_b32_e32 v68, 24, v86
	v_lshrrev_b32_e32 v69, 8, v87
	v_lshrrev_b32_e32 v70, 24, v87
	v_lshrrev_b32_e32 v71, 8, v88
	v_lshrrev_b32_e32 v72, 24, v88
	v_or_b16 v9.l, v17.l, v9.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v1
	ds_store_b16_d16_hi v54, v1 offset:32
	ds_store_b16 v54, v2 offset:64
	ds_store_b16_d16_hi v54, v2 offset:96
	ds_store_b16_d16_hi v55, v3 offset:32
	ds_store_b16 v55, v4 offset:64
	ds_store_b16_d16_hi v55, v4 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v18.l, v10.l
	v_or_b16 v10.l, v21.h, v13.h
	v_lshlrev_b16 v21.h, 8, v57.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v29.h, 8, v78.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.l, v17.h, v9.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v30.h, 8, v79.l
	v_lshlrev_b16 v31.h, 8, v80.l
	v_lshlrev_b16 v32.h, 8, v81.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v42.l, 0xff, v82.l
	v_and_b16 v42.h, 0xff, v82.h
	v_and_b16 v43.l, 0xff, v83.l
	v_and_b16 v43.h, 0xff, v83.h
	v_and_b16 v44.l, 0xff, v84.l
	v_and_b16 v44.h, 0xff, v84.h
	v_and_b16 v45.l, 0xff, v85.l
	v_and_b16 v45.h, 0xff, v85.h
	v_and_b16 v46.l, 0xff, v86.l
	v_and_b16 v46.h, 0xff, v86.h
	v_and_b16 v47.l, 0xff, v87.l
	v_and_b16 v47.h, 0xff, v87.h
	v_and_b16 v48.l, 0xff, v88.l
	v_and_b16 v48.h, 0xff, v88.h
	v_or_b16 v2.l, v18.h, v10.h
	v_or_b16 v2.h, v19.l, v11.l
	v_or_b16 v3.h, v19.h, v11.h
	v_or_b16 v4.l, v20.l, v12.l
	v_or_b16 v4.h, v20.h, v12.h
	v_or_b16 v9.h, v21.l, v13.l
	v_or_b16 v10.h, v22.l, v14.l
	v_or_b16 v11.l, v22.h, v14.h
	v_or_b16 v11.h, v23.l, v15.l
	v_or_b16 v12.l, v23.h, v15.h
	v_or_b16 v12.h, v24.l, v16.l
	v_or_b16 v13.l, v24.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.h, v33.l, v25.l
	v_or_b16 v14.l, v33.h, v25.h
	v_or_b16 v14.h, v34.l, v26.l
	v_or_b16 v15.l, v34.h, v26.h
	v_or_b16 v15.h, v35.l, v27.l
	v_or_b16 v16.l, v35.h, v27.h
	v_or_b16 v16.h, v36.l, v28.l
	v_or_b16 v17.l, v36.h, v28.h
	v_or_b16 v17.h, v37.l, v29.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v58.l
	v_lshlrev_b16 v22.h, 8, v59.l
	v_lshlrev_b16 v23.l, 8, v60.l
	v_lshlrev_b16 v23.h, 8, v61.l
	v_lshlrev_b16 v24.l, 8, v62.l
	v_lshlrev_b16 v24.h, 8, v63.l
	v_lshlrev_b16 v25.l, 8, v64.l
	v_lshlrev_b16 v25.h, 8, v65.l
	v_lshlrev_b16 v26.l, 8, v66.l
	v_lshlrev_b16 v26.h, 8, v67.l
	v_lshlrev_b16 v27.l, 8, v68.l
	v_lshlrev_b16 v27.h, 8, v69.l
	v_lshlrev_b16 v28.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v71.l
	v_lshlrev_b16 v29.l, 8, v72.l
	ds_store_b16 v54, v9 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v3
	ds_store_b16 v56, v5
	ds_store_b16_d16_hi v56, v5 offset:32
	ds_store_b16 v56, v6 offset:64
	ds_store_b16_d16_hi v56, v6 offset:96
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v53, v[49:50] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v54, v1 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v7 offset:384
	ds_store_b16_d16_hi v54, v7 offset:416
	ds_store_b16 v54, v8 offset:448
	ds_store_b16_d16_hi v54, v8 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v54, v1 offset:16416
	ds_store_b16 v54, v2 offset:16480
	ds_store_b16_d16_hi v55, v2 offset:16384
	ds_store_b16_d16_hi v55, v3 offset:16416
	ds_store_b16 v55, v4 offset:16448
	ds_store_b16_d16_hi v55, v4 offset:16480
	ds_store_b16_d16_hi v56, v9 offset:16384
	ds_store_b16 v56, v10 offset:16416
	ds_store_b16_d16_hi v56, v10 offset:16448
	ds_store_b16 v56, v11 offset:16480
	ds_store_b16_d16_hi v54, v11 offset:16768
	ds_store_b16 v54, v12 offset:16800
	ds_store_b16_d16_hi v54, v12 offset:16832
	ds_store_b16 v54, v13 offset:16864
	v_or_b16 v1.l, v41.l, v21.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v18.l, v37.h, v29.h
	v_or_b16 v18.h, v38.l, v30.l
	v_or_b16 v19.l, v38.h, v30.h
	v_or_b16 v19.h, v39.l, v31.l
	v_or_b16 v20.l, v39.h, v31.h
	v_or_b16 v20.h, v40.l, v32.l
	v_or_b16 v21.l, v40.h, v32.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v54, v13 offset:8192
	ds_store_b16 v54, v14 offset:8224
	ds_store_b16_d16_hi v54, v14 offset:8256
	ds_store_b16 v54, v15 offset:8288
	ds_store_b16 v55, v16 offset:8224
	ds_store_b16_d16_hi v55, v16 offset:8256
	ds_store_b16 v55, v17 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v41.h, v22.l
	v_or_b16 v2.l, v42.l, v22.h
	v_or_b16 v2.h, v42.h, v23.l
	v_or_b16 v3.l, v43.l, v23.h
	v_or_b16 v3.h, v43.h, v24.l
	v_or_b16 v4.l, v44.l, v24.h
	v_or_b16 v4.h, v44.h, v25.l
	v_or_b16 v5.l, v45.l, v25.h
	v_or_b16 v5.h, v45.h, v26.l
	v_or_b16 v6.l, v46.l, v26.h
	v_or_b16 v6.h, v46.h, v27.l
	v_or_b16 v7.l, v47.l, v27.h
	v_or_b16 v7.h, v47.h, v28.l
	v_or_b16 v8.l, v48.l, v28.h
	v_or_b16 v8.h, v48.h, v29.l
	ds_store_b16 v54, v1 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v55, v15 offset:8192
	ds_store_b16_d16_hi v56, v17 offset:8192
	ds_store_b16 v56, v18 offset:8224
	ds_store_b16_d16_hi v56, v18 offset:8256
	ds_store_b16 v56, v19 offset:8288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v53, v[51:52] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v54, v2 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v54, v19 offset:8576
	ds_store_b16 v54, v20 offset:8608
	ds_store_b16_d16_hi v54, v20 offset:8640
	ds_store_b16 v54, v21 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v54, v1 offset:24608
	ds_store_b16_d16_hi v54, v2 offset:24672
	ds_store_b16 v55, v3 offset:24576
	ds_store_b16_d16_hi v55, v3 offset:24608
	ds_store_b16 v55, v4 offset:24640
	ds_store_b16_d16_hi v55, v4 offset:24672
	ds_store_b16 v56, v5 offset:24576
	ds_store_b16_d16_hi v56, v5 offset:24608
	ds_store_b16 v56, v6 offset:24640
	ds_store_b16_d16_hi v56, v6 offset:24672
	ds_store_b16 v54, v7 offset:24960
	ds_store_b16_d16_hi v54, v7 offset:24992
	ds_store_b16 v54, v8 offset:25024
	ds_store_b16_d16_hi v54, v8 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v4, 5, v0
	v_and_b32_e32 v3, 0xe00, v89
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v194, 0x3f0, v0
	v_or_b32_e32 v195, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 4, v0
	v_and_b32_e32 v2, 8, v0
	v_and_or_b32 v9, 0x60, v4, v3
	s_mov_b32 s4, 0
	scratch_store_b32 off, v4, off offset:312 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr194
                                        ; implicit-def: $vgpr195
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow577
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v2, v0, 3, 1
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v0, s33, v155
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s6, 5
	s_add_i32 s0, s5, 64
	s_mov_b32 s5, s4
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v0, 0xe00, v89
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v2, 0x110, v2
	v_mov_b32_e32 v238, 0
	v_mov_b32_e32 v30, 0
	v_and_or_b32 v3, 0x60, v90, v0
	v_mov_b32_e32 v246, 0
	v_xor_b32_e32 v0, v1, v2
	v_mov_b32_e32 v164, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v175, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v0, v3, v0
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v176, 0
	v_mov_b32_e32 v173, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v244, 0
	v_mov_b32_e32 v239, 0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v1, s5 :: v_dual_mov_b32 v2, s6
	v_dual_mov_b32 v3, s7 :: v_dual_mov_b32 v4, s8
	v_dual_mov_b32 v7, s11 :: v_dual_mov_b32 v6, s10
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:264
	scratch_store_b128 off, v[4:7], off offset:280
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v247, 0
	v_mov_b32_e32 v245, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v167, 0
	scratch_store_b64 off, v[0:1], off offset:24 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v240, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v31, 0
	scratch_store_b64 off, v[0:1], off offset:88 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v149, 0
	scratch_store_b64 off, v[0:1], off offset:144 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	scratch_store_b32 off, v90, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b64 off, v[0:1], off offset:8 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b64 off, v[0:1], off offset:16 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v250, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x6                            ; 32-byte Folded Spill
	scratch_store_b32 off, v153, off offset:200
	scratch_store_b64 off, v[123:124], off offset:208
	scratch_store_b32 off, v124, off offset:216
	scratch_store_b32 off, v133, off offset:220
	scratch_store_b32 off, v177, off offset:224
	scratch_store_b32 off, v178, off offset:228
	scratch_store_b32 off, v179, off offset:232
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_clause 0x11                           ; 144-byte Folded Spill
	scratch_store_b64 off, v[235:236], off offset:112
	scratch_store_b64 off, v[131:132], off offset:96
	scratch_store_b64 off, v[233:234], off offset:104
	scratch_store_b64 off, v[168:169], off offset:176
	scratch_store_b64 off, v[73:74], off offset:168
	scratch_store_b64 off, v[139:140], off offset:120
	scratch_store_b64 off, v[141:142], off offset:128
	scratch_store_b64 off, v[189:190], off offset:160
	scratch_store_b64 off, v[31:32], off offset:72
	scratch_store_b64 off, v[170:171], off offset:32
	scratch_store_b64 off, v[164:165], off offset:48
	scratch_store_b64 off, v[175:176], off offset:40
	scratch_store_b64 off, v[125:126], off
	scratch_store_b64 off, v[151:152], off offset:136
	scratch_store_b64 off, v[149:150], off offset:80
	scratch_store_b64 off, v[166:167], off offset:152
	scratch_store_b64 off, v[1:2], off offset:64
	scratch_store_b64 off, v[173:174], off offset:56
	scratch_load_b32 v31, off, off offset:256 ; 4-byte Folded Reload
	s_mov_b32 s6, s4
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s4, s5, 5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v12, s37, v124
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s0, s4
	v_dual_mov_b32 v150, v146 :: v_dual_add_nc_u32 v13, s37, v133
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[14:15], null, s4, s14, v[123:124]
	v_dual_mov_b32 v73, v237 :: v_dual_mov_b32 v168, v246
	v_dual_mov_b32 v132, v28 :: v_dual_mov_b32 v131, v27
	v_dual_mov_b32 v126, v122 :: v_dual_mov_b32 v125, v121
	v_dual_mov_b32 v122, v118 :: v_dual_mov_b32 v121, v117
	v_dual_mov_b32 v118, v114 :: v_dual_mov_b32 v117, v113
	v_dual_mov_b32 v114, v110 :: v_dual_mov_b32 v113, v109
	v_dual_mov_b32 v110, v106 :: v_dual_mov_b32 v109, v105
	v_dual_mov_b32 v106, v102 :: v_dual_mov_b32 v105, v101
	v_dual_mov_b32 v102, v98 :: v_dual_mov_b32 v101, v97
	v_dual_mov_b32 v98, v94 :: v_dual_mov_b32 v97, v93
	v_dual_mov_b32 v94, v90 :: v_dual_mov_b32 v93, v89
	v_dual_mov_b32 v90, v86 :: v_dual_mov_b32 v89, v85
	v_dual_mov_b32 v86, v82 :: v_dual_mov_b32 v85, v81
	v_dual_mov_b32 v82, v78 :: v_dual_mov_b32 v81, v77
	v_mov_b32_e32 v27, v239
	v_mov_b32_e32 v77, v244
	v_dual_mov_b32 v123, v242 :: v_dual_mov_b32 v124, v243
	v_dual_mov_b32 v169, v247 :: v_dual_mov_b32 v28, v240
	v_mov_b32_e32 v78, v245
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s4, s33
	v_mov_b32_e32 v154, v148
	s_add_i32 s4, s4, s28
	v_mov_b32_e32 v153, v147
	v_dual_mov_b32 v147, v250 :: v_dual_mov_b32 v148, v251
	v_dual_mov_b32 v251, v249 :: v_dual_mov_b32 v250, v248
	v_dual_mov_b32 v149, v145 :: v_dual_mov_b32 v146, v144
	v_dual_mov_b32 v145, v143 :: v_dual_mov_b32 v144, v130
	v_dual_mov_b32 v143, v129 :: v_dual_mov_b32 v130, v128
	v_dual_mov_b32 v129, v127 :: v_dual_mov_b32 v128, v120
	v_dual_mov_b32 v127, v119 :: v_dual_mov_b32 v120, v116
	v_dual_mov_b32 v119, v115 :: v_dual_mov_b32 v116, v112
	v_dual_mov_b32 v115, v111 :: v_dual_mov_b32 v112, v108
	v_dual_mov_b32 v111, v107 :: v_dual_mov_b32 v108, v104
	v_dual_mov_b32 v107, v103 :: v_dual_mov_b32 v104, v100
	v_dual_mov_b32 v103, v99 :: v_dual_mov_b32 v100, v96
	v_dual_mov_b32 v99, v95 :: v_dual_mov_b32 v96, v92
	v_dual_mov_b32 v95, v91 :: v_dual_mov_b32 v92, v88
	v_dual_mov_b32 v91, v87 :: v_dual_mov_b32 v74, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v87, v91 :: v_dual_mov_b32 v88, v92
	v_dual_mov_b32 v91, v95 :: v_dual_mov_b32 v92, v96
	v_dual_mov_b32 v95, v99 :: v_dual_mov_b32 v96, v100
	v_dual_mov_b32 v99, v103 :: v_dual_mov_b32 v100, v104
	v_dual_mov_b32 v103, v107 :: v_dual_mov_b32 v104, v108
	v_dual_mov_b32 v107, v111 :: v_dual_mov_b32 v108, v112
	v_dual_mov_b32 v111, v115 :: v_dual_mov_b32 v112, v116
	v_dual_mov_b32 v115, v119 :: v_dual_mov_b32 v116, v120
	v_dual_mov_b32 v119, v123 :: v_dual_mov_b32 v120, v124
	v_dual_mov_b32 v123, v127 :: v_dual_mov_b32 v124, v128
	v_dual_mov_b32 v127, v129 :: v_dual_mov_b32 v128, v130
	v_dual_mov_b32 v129, v131 :: v_dual_mov_b32 v130, v132
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, s37, v0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s6, v31
	s_mov_b32 s37, s31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s6, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v8, s34, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[0:1], v14, s[20:23], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s36, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:184 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:264
	scratch_load_b128 v[4:7], off, off offset:280
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v14, v11 offset:64
	ds_load_u8 v15, v11
	ds_load_u8 v16, v11 offset:16
	ds_load_u8 v17, v11 offset:32
	ds_load_u8 v18, v11 offset:80
	ds_load_u8 v19, v11 offset:96
	ds_load_u8 v33, v11 offset:112
	ds_load_u8 v34, v11 offset:48
	ds_load_u8 v20, v11 offset:1984
	ds_load_u8 v21, v11 offset:2000
	ds_load_u8 v22, v11 offset:1600
	ds_load_u8 v23, v11 offset:1664
	ds_load_u8 v24, v11 offset:1616
	ds_load_u8 v35, v11 offset:1632
	ds_load_u8 v36, v11 offset:1792
	ds_load_u8 v37, v11 offset:1728
	ds_load_u8 v38, v11 offset:1744
	ds_load_u8 v39, v11 offset:1760
	ds_load_u8 v40, v11 offset:1344
	ds_load_u8 v41, v11 offset:1408
	ds_load_u8 v42, v11 offset:1360
	ds_load_u8 v43, v11 offset:1376
	ds_load_u8 v44, v11 offset:1536
	ds_load_u8 v45, v11 offset:1472
	ds_load_u8 v46, v11 offset:1488
	ds_load_u8 v47, v11 offset:1504
	ds_load_u8 v48, v11 offset:1088
	ds_load_u8 v49, v11 offset:1152
	ds_load_u8 v50, v11 offset:1104
	ds_load_u8 v51, v11 offset:1120
	ds_load_u8 v52, v11 offset:1280
	ds_load_u8 v53, v11 offset:1216
	ds_load_u8 v54, v11 offset:1232
	ds_load_u8 v55, v11 offset:1248
	ds_load_u8 v56, v11 offset:832
	ds_load_u8 v57, v11 offset:768
	ds_load_u8 v58, v11 offset:848
	ds_load_u8 v59, v11 offset:784
	ds_load_u8 v60, v11 offset:864
	ds_load_u8 v61, v11 offset:800
	ds_load_u8 v62, v11 offset:880
	ds_load_u8 v63, v11 offset:816
	ds_load_u8 v64, v11 offset:960
	ds_load_u8 v65, v11 offset:896
	ds_load_u8 v66, v11 offset:1024
	ds_load_u8 v67, v11 offset:976
	ds_load_u8 v68, v11 offset:912
	ds_load_u8 v69, v11 offset:992
	ds_load_u8 v70, v11 offset:928
	ds_load_u8 v71, v11 offset:944
	ds_load_u8 v72, v11 offset:576
	ds_load_u8 v156, v11 offset:512
	ds_load_u8 v157, v11 offset:592
	ds_load_u8 v158, v11 offset:528
	ds_load_u8 v159, v11 offset:608
	ds_load_u8 v160, v11 offset:544
	ds_load_u8 v161, v11 offset:624
	ds_load_u8 v162, v11 offset:560
	ds_load_u8 v163, v11 offset:704
	ds_load_u8 v164, v11 offset:640
	ds_load_u8 v165, v11 offset:720
	ds_load_u8 v166, v11 offset:656
	ds_load_u8 v167, v11 offset:736
	ds_load_u8 v170, v11 offset:672
	ds_load_u8 v171, v11 offset:752
	ds_load_u8 v172, v11 offset:688
	ds_load_u8 v173, v11 offset:320
	ds_load_u8 v174, v11 offset:256
	ds_load_u8 v175, v11 offset:336
	ds_load_u8 v176, v11 offset:272
	ds_load_u8 v177, v11 offset:352
	ds_load_u8 v178, v11 offset:288
	ds_load_u8 v179, v11 offset:368
	ds_load_u8 v184, v11 offset:304
	ds_load_u8 v180, v11 offset:448
	ds_load_u8 v181, v11 offset:384
	ds_load_u8 v182, v11 offset:464
	ds_load_u8 v183, v11 offset:400
	ds_load_u8 v185, v11 offset:480
	ds_load_u8 v186, v11 offset:416
	ds_load_u8 v187, v11 offset:496
	ds_load_u8 v188, v11 offset:432
	ds_load_u8 v189, v11 offset:192
	ds_load_u8 v190, v11 offset:128
	ds_load_u8 v191, v11 offset:208
	ds_load_u8 v192, v11 offset:144
	ds_load_u8 v193, v11 offset:224
	ds_load_u8 v194, v11 offset:160
	ds_load_u8 v195, v11 offset:240
	ds_load_u8 v196, v11 offset:176
	ds_load_u8 v197, v11 offset:1856
	ds_load_u8 v198, v11 offset:1920
	ds_load_u8 v199, v11 offset:1872
	ds_load_u8 v200, v11 offset:1888
	ds_load_u8 v201, v11 offset:1904
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v11 offset:1648
	ds_load_u8 v206, v11 offset:1776
	v_perm_b32 v207, v15, v14, 0xc0c0004
	ds_load_u8 v15, v11 offset:1680
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v11 offset:2016
	ds_load_u8 v202, v12
	ds_load_u8 v203, v13
	ds_load_u8 v12, v11 offset:1808
	ds_load_u8 v211, v11 offset:1264
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v11 offset:1840
	ds_load_u8 v13, v11 offset:1936
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v204, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v11 offset:1392
	ds_load_u8 v209, v11 offset:1520
	ds_load_u8 v14, v11 offset:1552
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v198, v198, v20, 0xc0c0004
	ds_load_u8 v20, v11 offset:1296
	v_perm_b32 v44, v44, v22, 0xc0c0004
	v_perm_b32 v37, v23, v37, 0xc0c0004
	v_perm_b32 v52, v52, v40, 0xc0c0004
	ds_load_u8 v40, v11 offset:1136
	ds_load_u8 v23, v11 offset:1040
	v_perm_b32 v41, v41, v45, 0xc0c0004
	v_perm_b32 v48, v66, v48, 0xc0c0004
	v_perm_b32 v49, v49, v53, 0xc0c0004
	v_perm_b32 v53, v59, v58, 0xc0c0004
	v_perm_b32 v58, v68, v67, 0xc0c0004
	v_perm_b32 v67, v166, v165, 0xc0c0004
	ds_load_u8 v22, v11 offset:1424
	v_perm_b32 v165, v16, v18, 0xc0c0004
	ds_load_u8 v16, v11 offset:1168
	ds_load_u8 v45, v11 offset:1072
	ds_load_u8 v18, v11 offset:1824
	ds_load_u8 v208, v11 offset:1712
	ds_load_u8 v173, v11 offset:1696
	ds_load_u8 v174, v11 offset:1584
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v212, v15, v38, 0xc0c0004
	ds_load_u8 v38, v11 offset:1312
	ds_load_u8 v66, v11 offset:1200
	v_perm_b32 v72, v156, v72, 0xc0c0004
	ds_load_u8 v156, v11 offset:1968
	v_perm_b32 v68, v176, v175, 0xc0c0004
	v_perm_b32 v166, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v191, v12, v199, 0xc0c0004
	ds_load_u8 v12, v11 offset:1952
	ds_load_u8 v175, v11 offset:1056
	ds_load_u8 v176, v11 offset:1184
	v_perm_b32 v197, v36, v197, 0xc0c0004
	v_perm_b32 v59, v158, v157, 0xc0c0004
	ds_load_u8 v157, v11 offset:1568
	ds_load_u8 v210, v11 offset:1456
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v213, v20, v42, 0xc0c0004
	ds_load_u8 v42, v11 offset:1440
	ds_load_u8 v36, v11 offset:1328
	v_perm_b32 v192, v13, v21, 0xc0c0004
	v_perm_b32 v199, v14, v24, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v22, v46, 0xc0c0004
	v_perm_b32 v50, v23, v50, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v16, v54, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v70, v69, 0xc0c0004
	v_perm_b32 v69, v160, v159, 0xc0c0004
	v_perm_b32 v70, v170, v167, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[13:16], v10 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v160, v186, v185, 0xc0c0004
	v_perm_b32 v167, v17, v19, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v186, v18, v200, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v205, v181, v180, 0xc0c0004
	v_perm_b32 v158, v183, v182, 0xc0c0004
	v_perm_b32 v159, v178, v177, 0xc0c0004
	v_perm_b32 v185, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v65, v12, v65, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[9:12], v9 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v216, v176, v55, 0xc0c0004
	v_perm_b32 v180, v63, v62, 0xc0c0004
	v_perm_b32 v181, v71, v202, 0xc0c0004
	v_perm_b32 v182, v162, v161, 0xc0c0004
	v_perm_b32 v183, v172, v171, 0xc0c0004
	v_perm_b32 v178, v184, v179, 0xc0c0004
	v_perm_b32 v179, v188, v187, 0xc0c0004
	v_perm_b32 v176, v34, v33, 0xc0c0004
	v_perm_b32 v177, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v193, v157, v35, 0xc0c0004
	v_perm_b32 v194, v173, v39, 0xc0c0004
	v_perm_b32 v200, v38, v43, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v214, v42, v47, 0xc0c0004
	v_perm_b32 v215, v175, v51, 0xc0c0004
	v_perm_b32 v172, v57, v201, 0xc0c0004
	v_perm_b32 v173, v156, v203, 0xc0c0004
	v_perm_b32 v174, v174, v164, 0xc0c0004
	v_perm_b32 v175, v208, v206, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v170, v36, v190, 0xc0c0004
	v_perm_b32 v171, v210, v209, 0xc0c0004
	v_perm_b32 v156, v45, v40, 0xc0c0004
	v_perm_b32 v157, v66, v211, 0xc0c0004
	v_lshl_or_b32 v36, v64, 16, v56
	v_lshl_or_b32 v35, v163, 16, v72
	v_lshl_or_b32 v34, v205, 16, v204
	v_lshl_or_b32 v33, v189, 16, v207
	v_lshl_or_b32 v39, v37, 16, v44
	v_lshl_or_b32 v38, v41, 16, v52
	v_lshl_or_b32 v37, v49, 16, v48
	v_lshl_or_b32 v44, v58, 16, v53
	v_lshl_or_b32 v43, v67, 16, v59
	v_lshl_or_b32 v42, v158, 16, v68
	v_lshl_or_b32 v41, v166, 16, v165
	v_lshl_or_b32 v45, v54, 16, v50
	v_lshl_or_b32 v52, v61, 16, v60
	v_lshl_or_b32 v51, v70, 16, v69
	v_lshl_or_b32 v50, v160, 16, v159
	v_lshl_or_b32 v49, v185, 16, v167
	v_lshl_or_b32 v255, v181, 16, v180
	v_lshl_or_b32 v254, v183, 16, v182
	v_lshl_or_b32 v253, v179, 16, v178
	v_lshl_or_b32 v252, v177, 16, v176
	v_lshl_or_b32 v40, v198, 16, v197
	v_lshl_or_b32 v48, v192, 16, v191
	v_lshl_or_b32 v47, v212, 16, v199
	v_lshl_or_b32 v46, v46, 16, v213
	v_lshl_or_b32 v56, v65, 16, v186
	v_lshl_or_b32 v55, v194, 16, v193
	v_lshl_or_b32 v54, v214, 16, v200
	v_lshl_or_b32 v53, v216, 16, v215
	v_lshl_or_b32 v167, v173, 16, v172
	v_lshl_or_b32 v166, v175, 16, v174
	v_lshl_or_b32 v165, v171, 16, v170
	v_lshl_or_b32 v164, v157, 16, v156
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[21:24], v[33:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[21:24], v[41:44], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[202:209], v[21:24], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[21:24], v[252:255], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[13:16], v[33:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[13:16], v[41:44], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[13:16], v[49:52], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[17:20], v[37:40], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[17:20], v[45:48], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[202:209], v[17:20], v[53:56], v[202:209] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[17:20], v[164:167], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[13:16], v[252:255], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[9:12], v[37:40], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[9:12], v[45:48], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[9:12], v[53:56], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[164:167], v[17:24] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v9, s34, v31
	ds_load_b128 v[57:60], v8
	ds_load_b128 v[61:64], v8 offset:4096
	ds_load_b128 v[65:68], v9
	ds_load_b128 v[69:72], v9 offset:4096
	scratch_load_b64 v[31:32], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v209, v209
	s_mov_b32 s34, s1
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v215, v215
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[33:36], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[226:233], v[61:64], v[33:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[234:241], v[57:60], v[41:44], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[226:233], v[69:72], v[37:40], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[242:249], v[61:64], v[41:44], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[57:60], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[234:241], v[65:68], v[45:48], v[234:241] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[242:249], v[69:72], v[45:48], v[242:249] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[65:68], v[53:56], v[156:163] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[53:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[57:60], v[252:255], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[252:255], v[0:7] neg_lo:[1,1,0]
	v_dual_mov_b32 v60, v75 :: v_dual_mov_b32 v5, v81
	v_dual_mov_b32 v58, v79 :: v_dual_mov_b32 v61, v76
	v_dual_mov_b32 v6, v82 :: v_dual_mov_b32 v81, v85
	v_dual_mov_b32 v59, v80 :: v_dual_mov_b32 v82, v86
	v_dual_mov_b32 v85, v89 :: v_dual_mov_b32 v86, v90
	v_dual_mov_b32 v89, v93 :: v_dual_mov_b32 v90, v94
	v_dual_mov_b32 v93, v97 :: v_dual_mov_b32 v94, v98
	v_dual_mov_b32 v97, v101 :: v_dual_mov_b32 v98, v102
	v_dual_mov_b32 v101, v105 :: v_dual_mov_b32 v102, v106
	v_dual_mov_b32 v105, v109 :: v_dual_mov_b32 v106, v110
	v_dual_mov_b32 v109, v113 :: v_dual_mov_b32 v110, v114
	v_dual_mov_b32 v113, v117 :: v_dual_mov_b32 v114, v118
	v_mov_b32_e32 v117, v121
	v_dual_mov_b32 v7, v147 :: v_dual_mov_b32 v8, v148
	v_dual_mov_b32 v118, v122 :: v_dual_mov_b32 v121, v125
	v_dual_mov_b32 v253, v144 :: v_dual_mov_b32 v252, v143
	v_mov_b32_e32 v143, v145
	v_mov_b32_e32 v147, v153
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[164:167], v[41:48] neg_lo:[1,1,0]
	v_dual_mov_b32 v144, v146 :: v_dual_mov_b32 v145, v149
	v_mov_b32_e32 v148, v154
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[164:167], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v153, v170
	v_cvt_f32_i32_e32 v64, v171
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v164, v227
	v_cvt_f32_i32_e32 v165, v228
	v_cvt_f32_i32_e32 v227, v248
	v_cvt_f32_i32_e32 v228, v249
	v_dual_mov_b32 v248, v250 :: v_dual_mov_b32 v249, v251
	v_cvt_f32_i32_e32 v166, v229
	v_cvt_f32_i32_e32 v167, v230
	v_cvt_f32_i32_e32 v229, v156
	v_cvt_f32_i32_e32 v230, v157
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v156, v218
	v_cvt_f32_i32_e32 v157, v219
	v_cvt_f32_i32_e32 v218, v220
	v_cvt_f32_i32_e32 v219, v221
	v_cvt_f32_i32_e32 v220, v222
	v_cvt_f32_i32_e32 v221, v223
	v_cvt_f32_i32_e32 v222, v224
	v_cvt_f32_i32_e32 v223, v225
	v_cvt_f32_i32_e32 v224, v17
	v_cvt_f32_i32_e32 v225, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v249, v249, v64 :: v_dual_add_f32 v248, v248, v153
	s_clause 0x4                            ; 36-byte Folded Reload
	scratch_load_b32 v153, off, off offset:200
	scratch_load_b64 v[17:18], off, off offset:88
	scratch_load_b64 v[139:140], off, off offset:8
	scratch_load_b64 v[141:142], off, off offset:16
	scratch_load_b64 v[79:80], off, off offset:24
	v_mov_b32_e32 v146, v150
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[133:134], off, off
	scratch_load_b64 v[151:152], off, off offset:136
	scratch_load_b64 v[149:150], off, off offset:80
	scratch_load_b64 v[131:132], off, off offset:152
	scratch_load_b64 v[1:2], off, off offset:64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v172
	v_cvt_f32_i32_e32 v57, v173
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v68, v13
	v_cvt_f32_i32_e32 v69, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v182
	v_cvt_f32_i32_e32 v14, v183
	v_mov_b32_e32 v122, v126
	v_cvt_f32_i32_e32 v154, v174
	v_cvt_f32_i32_e32 v62, v176
	v_cvt_f32_i32_e32 v63, v177
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v125, v9
	v_cvt_f32_i32_e32 v65, v10
	v_cvt_f32_i32_e32 v66, v11
	v_cvt_f32_i32_e32 v67, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v178
	v_cvt_f32_i32_e32 v10, v179
	v_cvt_f32_i32_e32 v11, v180
	v_cvt_f32_i32_e32 v12, v181
	v_cvt_f32_i32_e32 v173, v186
	v_cvt_f32_i32_e32 v174, v187
	v_cvt_f32_i32_e32 v176, v189
	v_cvt_f32_i32_e32 v177, v190
	v_cvt_f32_i32_e32 v178, v191
	v_cvt_f32_i32_e32 v179, v192
	v_cvt_f32_i32_e32 v180, v193
	v_cvt_f32_i32_e32 v189, v194
	v_cvt_f32_i32_e32 v190, v195
	v_cvt_f32_i32_e32 v194, v199
	v_cvt_f32_i32_e32 v195, v200
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v199, v244
	v_cvt_f32_i32_e32 v200, v245
	v_dual_mov_b32 v245, v78 :: v_dual_mov_b32 v244, v77
	v_mov_b32_e32 v126, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v148, v148, v180 :: v_dual_add_f32 v147, v147, v179
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v245, v245, v12 :: v_dual_add_f32 v244, v244, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v155, v175
	v_cvt_f32_i32_e32 v175, v188
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v72, v226
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v191, v196
	v_cvt_f32_i32_e32 v196, v201
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v201, v246
	v_cvt_f32_i32_e32 v226, v247
	v_dual_mov_b32 v247, v169 :: v_dual_mov_b32 v246, v168
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v193, v198
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v70, v15
	v_cvt_f32_i32_e32 v71, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v247, v247, v10 :: v_dual_add_f32 v246, v246, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v184
	v_cvt_f32_i32_e32 v16, v185
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v186, v239
	v_cvt_f32_i32_e32 v187, v240
	v_dual_mov_b32 v240, v28 :: v_dual_mov_b32 v239, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v155 :: v_dual_add_f32 v29, v29, v154
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:176
	scratch_load_b64 v[254:255], off, off offset:168
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v170, v231
	v_cvt_f32_i32_e32 v171, v232
	v_cvt_f32_i32_e32 v172, v233
	v_cvt_f32_i32_e32 v181, v234
	v_cvt_f32_i32_e32 v182, v235
	v_cvt_f32_i32_e32 v183, v236
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v231, v19
	v_cvt_f32_i32_e32 v232, v20
	v_cvt_f32_i32_e32 v233, v21
	v_cvt_f32_i32_e32 v234, v22
	v_cvt_f32_i32_e32 v235, v23
	v_cvt_f32_i32_e32 v236, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v240, v240, v16 :: v_dual_add_f32 v239, v239, v15
	v_dual_add_f32 v146, v146, v190 :: v_dual_add_f32 v145, v145, v189
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v6, v232 :: v_dual_add_f32 v5, v5, v231
	v_dual_add_f32 v127, v127, v204 :: v_dual_add_f32 v120, v120, v207
	v_dual_add_f32 v119, v119, v206 :: v_dual_add_f32 v118, v118, v209
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v81, v81, v224 :: v_dual_mov_b32 v78, v6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v124, v124, v161 :: v_dual_add_f32 v123, v123, v160
	v_mov_b32_e32 v77, v5
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v184, v237
	v_cvt_f32_i32_e32 v185, v238
	v_dual_mov_b32 v238, v74 :: v_dual_mov_b32 v237, v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v192, v197
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v197, v242
	v_cvt_f32_i32_e32 v198, v243
	v_dual_mov_b32 v243, v120 :: v_dual_mov_b32 v242, v119
	v_dual_mov_b32 v119, v123 :: v_dual_mov_b32 v120, v124
	v_dual_mov_b32 v27, v129 :: v_dual_mov_b32 v28, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v7, v235 :: v_dual_add_f32 v238, v238, v65
	v_mov_b32_e32 v129, v252
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v116, v116, v34 :: v_dual_add_f32 v115, v115, v33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v121, v121, v162 :: v_dual_add_f32 v114, v114, v36
	v_dual_add_f32 v113, v113, v35 :: v_dual_add_f32 v108, v108, v38
	v_dual_add_f32 v107, v107, v37 :: v_dual_add_f32 v106, v106, v40
	v_dual_add_f32 v105, v105, v39 :: v_dual_add_f32 v100, v100, v42
	v_dual_add_f32 v99, v99, v41 :: v_dual_add_f32 v96, v96, v44
	v_dual_add_f32 v83, v83, v49 :: v_dual_add_f32 v58, v58, v51
	v_dual_add_f32 v59, v59, v52 :: v_dual_add_f32 v60, v60, v53
	v_add_f32_e32 v61, v61, v54
	v_dual_add_f32 v95, v95, v43 :: v_dual_add_f32 v92, v92, v46
	v_dual_add_f32 v91, v91, v45 :: v_dual_add_f32 v88, v88, v48
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v188, v241
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v87, v87, v47 :: v_dual_add_f32 v84, v84, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v144, v144, v192 :: v_dual_add_f32 v143, v143, v191
	v_dual_add_f32 v135, v135, v195 :: v_dual_add_f32 v128, v128, v205
	v_dual_add_f32 v28, v28, v203 :: v_dual_add_f32 v27, v27, v202
	v_dual_add_f32 v117, v117, v208 :: v_dual_add_f32 v112, v112, v157
	v_dual_add_f32 v111, v111, v156 :: v_dual_add_f32 v110, v110, v219
	v_dual_add_f32 v109, v109, v218 :: v_dual_add_f32 v104, v104, v221
	v_dual_add_f32 v97, v97, v210 :: v_dual_add_f32 v94, v94, v213
	v_dual_add_f32 v93, v93, v212 :: v_dual_add_f32 v90, v90, v215
	v_dual_add_f32 v89, v89, v214 :: v_dual_add_f32 v86, v86, v217
	v_dual_add_f32 v85, v85, v216 :: v_dual_add_f32 v82, v82, v225
	v_dual_add_f32 v8, v8, v236 :: v_dual_add_f32 v137, v137, v193
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v179, off, off offset:232
	scratch_load_b32 v11, off, off offset:240
	scratch_load_b64 v[189:190], off, off offset:160
	v_dual_add_f32 v138, v138, v194 :: v_dual_add_f32 v237, v237, v125
	v_dual_mov_b32 v251, v8 :: v_dual_mov_b32 v250, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v26, v26, v172
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v102, v102, v223 :: v_dual_add_f32 v103, v103, v220
	v_dual_add_f32 v101, v101, v222 :: v_dual_add_f32 v98, v98, v211
	v_mov_b32_e32 v130, v253
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v122, v122, v163
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v130, v130, v226
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(12)
	v_dual_add_f32 v140, v140, v14 :: v_dual_add_f32 v139, v139, v13
	v_dual_add_f32 v18, v18, v57 :: v_dual_add_f32 v17, v17, v0
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v2, v2, v174 :: v_dual_add_f32 v1, v1, v173
	v_dual_add_f32 v150, v150, v176 :: v_dual_add_f32 v149, v149, v175
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[17:18], off offset:88
	scratch_store_b64 off, v[139:140], off offset:8
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:144
	scratch_load_b64 v[173:174], off, off offset:56
	scratch_load_b64 v[175:176], off, off offset:40
	v_dual_add_f32 v32, v32, v178 :: v_dual_add_f32 v31, v31, v177
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:228
	scratch_load_b32 v177, off, off offset:224
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v141, v141, v165 :: v_dual_add_nc_u32 v0, s4, v126
	v_add_f32_e32 v142, v142, v166
	v_dual_add_f32 v80, v80, v69 :: v_dual_add_f32 v79, v79, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[13:16], v0, s[24:27], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v152, v152, v186
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(10)
	v_dual_add_f32 v4, v4, v234 :: v_dual_add_f32 v3, v3, v233
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v255, v255, v56 :: v_dual_add_f32 v254, v254, v55
	v_dual_mov_b32 v76, v61 :: v_dual_mov_b32 v75, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v169, v4 :: v_dual_mov_b32 v168, v3
	v_dual_mov_b32 v73, v254 :: v_dual_mov_b32 v74, v255
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v9, s4, v11
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s4, s4, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v155, v126 :: v_dual_add_nc_u32 v10, s4, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v136, v136, v196
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[21:24], v9, s[24:27], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(7)
	v_add_f32_e32 v189, v189, v66
	v_dual_mov_b32 v125, v133 :: v_dual_mov_b32 v126, v134
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s6, 2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v190, v190, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s6, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v151, v151, v185 :: v_dual_add_f32 v126, v126, v188
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s36, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s36, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v57, s1, v153
	s_add_i32 s31, s1, 0x8000
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(6)
	v_dual_add_f32 v18, v18, v63 :: v_dual_add_f32 v17, v17, v62
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v175, v175, v70 :: v_dual_add_f32 v174, v174, v164
	v_dual_add_f32 v173, v173, v72 :: v_dual_add_f32 v176, v176, v71
	scratch_store_b64 off, v[17:18], off offset:144 ; 8-byte Folded Spill
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v17, s4, v11
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	s_mov_b32 s4, s30
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_add_i32 s30, s7, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[164:165], off, off offset:48
	scratch_load_b64 v[123:124], off, off offset:208
	scratch_load_b32 v124, off, off offset:216
	scratch_load_b64 v[3:4], off, off offset:184
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, s30, v177
	v_add_nc_u32_e32 v157, s30, v178
	v_add_nc_u32_e32 v156, s30, v179
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s1, s30, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(6)
	v_perm_b32 v33, v21, v13, 0x5010400
	v_perm_b32 v13, v21, v13, 0x7030602
	v_perm_b32 v21, v22, v14, 0x5010400
	v_perm_b32 v14, v22, v14, 0x7030602
	v_perm_b32 v22, v23, v15, 0x5010400
	v_perm_b32 v15, v23, v15, 0x7030602
	v_perm_b32 v23, v24, v16, 0x5010400
	v_perm_b32 v24, v24, v16, 0x7030602
	v_lshrrev_b32_e32 v42, 8, v33
	v_lshrrev_b32_e32 v43, 24, v33
	v_lshrrev_b32_e32 v44, 8, v13
	v_lshrrev_b32_e32 v45, 24, v13
	v_lshrrev_b32_e32 v48, 8, v14
	v_lshrrev_b32_e32 v46, 8, v21
	v_lshrrev_b32_e32 v47, 24, v21
	v_lshrrev_b32_e32 v49, 24, v14
	v_lshrrev_b32_e32 v50, 8, v22
	v_lshrrev_b32_e32 v51, 24, v22
	v_lshrrev_b32_e32 v52, 8, v15
	v_lshrrev_b32_e32 v53, 24, v15
	v_lshrrev_b32_e32 v54, 8, v23
	v_lshrrev_b32_e32 v55, 24, v23
	v_lshrrev_b32_e32 v56, 8, v24
	v_and_b16 v16.l, 0xff, v24.l
	v_and_b16 v16.h, 0xff, v24.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(4)
	v_perm_b32 v34, v17, v9, 0x5010400
	v_perm_b32 v35, v17, v9, 0x7030602
	v_perm_b32 v36, v18, v10, 0x5010400
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v164, v164, v167
	v_mov_b32_e32 v167, v132
	v_dual_add_f32 v165, v165, v170 :: v_dual_mov_b32 v166, v131
	v_add_f32_e32 v25, v25, v171
	scratch_load_b64 v[170:171], off, off offset:32 ; 8-byte Folded Reload
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[79:80], off offset:24
	scratch_store_b64 off, v[141:142], off offset:16
	s_clause 0x5                            ; 44-byte Folded Reload
	scratch_load_b64 v[131:132], off, off offset:96
	scratch_load_b64 v[233:234], off, off offset:104
	scratch_load_b64 v[235:236], off, off offset:112
	scratch_load_b64 v[139:140], off, off offset:120
	scratch_load_b32 v133, off, off offset:220
	scratch_load_b64 v[141:142], off, off offset:128
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v37, v18, v10, 0x7030602
	v_perm_b32 v38, v19, v11, 0x5010400
	v_perm_b32 v39, v19, v11, 0x7030602
	v_perm_b32 v40, v20, v12, 0x5010400
	v_perm_b32 v41, v20, v12, 0x7030602
	v_dual_mov_b32 v80, v59 :: v_dual_mov_b32 v79, v58
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(7)
	ds_store_b64 v57, v[3:4] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v33.l
	v_lshrrev_b32_e32 v57, 24, v24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v58, 8, v34
	v_lshrrev_b32_e32 v59, 24, v34
	v_lshrrev_b32_e32 v60, 8, v35
	v_lshrrev_b32_e32 v61, 24, v35
	v_lshrrev_b32_e32 v62, 8, v36
	v_lshrrev_b32_e32 v63, 24, v36
	v_lshrrev_b32_e32 v64, 8, v37
	v_lshrrev_b32_e32 v65, 24, v37
	v_lshrrev_b32_e32 v66, 8, v38
	v_lshrrev_b32_e32 v67, 24, v38
	v_lshrrev_b32_e32 v68, 8, v39
	v_lshrrev_b32_e32 v69, 24, v39
	v_lshrrev_b32_e32 v70, 8, v40
	v_lshrrev_b32_e32 v71, 24, v40
	v_lshrrev_b32_e32 v72, 8, v41
	v_lshrrev_b32_e32 v154, 24, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v33.l, 8, v42.l
	v_and_b16 v9.h, 0xff, v33.h
	v_lshlrev_b16 v33.h, 8, v43.l
	v_and_b16 v10.l, 0xff, v13.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.l, 0xff, v34.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v34.l, 8, v44.l
	v_and_b16 v10.h, 0xff, v13.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.h, 0xff, v34.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v34.h, 8, v45.l
	v_and_b16 v12.l, 0xff, v14.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v19.l, 0xff, v36.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v36.l, 8, v48.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v167, v167, v182 :: v_dual_add_f32 v166, v166, v181
	v_add_f32_e32 v125, v125, v187
	v_add_f32_e32 v129, v129, v201
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v11.l, 0xff, v21.l
	v_and_b16 v11.h, 0xff, v21.h
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.l, 0xff, v22.l
	v_and_b16 v13.h, 0xff, v22.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v23.l
	v_and_b16 v15.h, 0xff, v23.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.l, 0xff, v35.l
	v_and_b16 v18.h, 0xff, v35.h
	v_and_b16 v19.h, 0xff, v36.h
	v_and_b16 v20.l, 0xff, v37.l
	v_and_b16 v20.h, 0xff, v37.h
	v_and_b16 v21.l, 0xff, v38.l
	v_and_b16 v21.h, 0xff, v38.h
	v_and_b16 v22.l, 0xff, v39.l
	v_and_b16 v22.h, 0xff, v39.h
	v_and_b16 v23.l, 0xff, v40.l
	v_and_b16 v23.h, 0xff, v40.h
	v_and_b16 v24.l, 0xff, v41.l
	v_and_b16 v24.h, 0xff, v41.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v35.l, 8, v46.l
	v_lshlrev_b16 v35.h, 8, v47.l
	v_lshlrev_b16 v36.h, 8, v49.l
	v_lshlrev_b16 v37.l, 8, v50.l
	v_lshlrev_b16 v37.h, 8, v51.l
	v_lshlrev_b16 v38.l, 8, v52.l
	v_lshlrev_b16 v38.h, 8, v53.l
	v_lshlrev_b16 v39.l, 8, v54.l
	v_lshlrev_b16 v39.h, 8, v55.l
	v_lshlrev_b16 v40.l, 8, v56.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v41.l, 8, v58.l
	v_lshlrev_b16 v41.h, 8, v59.l
	v_lshlrev_b16 v42.l, 8, v60.l
	v_lshlrev_b16 v42.h, 8, v61.l
	v_lshlrev_b16 v43.l, 8, v62.l
	v_lshlrev_b16 v43.h, 8, v63.l
	v_lshlrev_b16 v44.l, 8, v64.l
	v_lshlrev_b16 v44.h, 8, v65.l
	v_lshlrev_b16 v45.l, 8, v66.l
	v_lshlrev_b16 v45.h, 8, v67.l
	v_lshlrev_b16 v46.l, 8, v68.l
	v_lshlrev_b16 v46.h, 8, v69.l
	v_lshlrev_b16 v47.l, 8, v70.l
	v_lshlrev_b16 v47.h, 8, v71.l
	v_lshlrev_b16 v48.l, 8, v72.l
	v_lshlrev_b16 v48.h, 8, v154.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v33.l
	v_or_b16 v9.h, v9.h, v33.h
	v_or_b16 v10.l, v10.l, v34.l
	v_or_b16 v10.h, v10.h, v34.h
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_or_b16 v12.h, v12.h, v36.h
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v18.l, v18.l, v42.l
	v_or_b16 v18.h, v18.h, v42.h
	v_or_b16 v19.l, v19.l, v43.l
	v_or_b16 v19.h, v19.h, v43.h
	v_or_b16 v20.l, v20.l, v44.l
	v_or_b16 v20.h, v20.h, v44.h
	v_or_b16 v21.l, v21.l, v45.l
	v_or_b16 v21.h, v21.h, v45.h
	v_or_b16 v22.l, v22.l, v46.l
	v_or_b16 v22.h, v22.h, v46.h
	v_or_b16 v23.l, v23.l, v47.l
	v_or_b16 v23.h, v23.h, v47.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v40.h, 8, v57.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	v_or_b16 v24.l, v24.l, v48.l
	v_or_b16 v24.h, v24.h, v48.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v16.h, v16.h, v40.h
	ds_store_b16 v0, v9
	ds_store_b16_d16_hi v0, v9 offset:32
	ds_store_b16 v0, v10 offset:64
	ds_store_b16_d16_hi v0, v10 offset:96
	ds_store_b16 v157, v12 offset:64
	ds_store_b16_d16_hi v157, v12 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v17 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v157, v11
	ds_store_b16_d16_hi v157, v11 offset:32
	ds_store_b16 v156, v13
	ds_store_b16_d16_hi v156, v13 offset:32
	ds_store_b16 v156, v14 offset:64
	ds_store_b16_d16_hi v156, v14 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v18 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v0, v15 offset:384
	ds_store_b16_d16_hi v0, v15 offset:416
	ds_store_b16 v0, v16 offset:448
	ds_store_b16_d16_hi v0, v16 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v0, v17 offset:16416
	ds_store_b16_d16_hi v0, v18 offset:16480
	ds_store_b16 v157, v19 offset:16384
	ds_store_b16_d16_hi v157, v19 offset:16416
	ds_store_b16 v157, v20 offset:16448
	ds_store_b16_d16_hi v157, v20 offset:16480
	ds_store_b16 v156, v21 offset:16384
	ds_store_b16_d16_hi v156, v21 offset:16416
	ds_store_b16 v156, v22 offset:16448
	ds_store_b16_d16_hi v156, v22 offset:16480
	ds_store_b16 v0, v23 offset:16768
	ds_store_b16_d16_hi v0, v23 offset:16800
	ds_store_b16 v0, v24 offset:16832
	ds_store_b16_d16_hi v0, v24 offset:16864
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(6)
	v_dual_add_f32 v171, v171, v184 :: v_dual_add_f32 v170, v170, v183
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v236, v236, v228
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v140, v140, v200 :: v_dual_add_f32 v141, v141, v197
	v_dual_add_f32 v142, v142, v198 :: v_dual_add_f32 v139, v139, v199
	v_dual_add_f32 v235, v235, v227 :: v_dual_add_f32 v234, v234, v230
	v_dual_add_f32 v233, v233, v229 :: v_dual_add_f32 v132, v132, v159
	v_add_f32_e32 v131, v131, v158
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x4                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v9, off, off offset:304
	scratch_load_b64 v[3:4], off, off offset:24
	scratch_load_b64 v[7:8], off, off offset:8
	scratch_load_b64 v[10:11], off, off offset:16
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[149:150], off offset:80
	scratch_store_b64 off, v[1:2], off offset:64
	scratch_store_b64 off, v[31:32], off offset:72
	scratch_store_b64 off, v[29:30], off offset:200
	scratch_store_b64 off, v[237:238], off offset:184
	scratch_load_b64 v[31:32], off, off offset:144 ; 8-byte Folded Reload
	s_mov_b32 s26, s4
	v_dual_mov_b32 v255, v190 :: v_dual_mov_b32 v254, v189
	v_dual_mov_b32 v29, v248 :: v_dual_mov_b32 v30, v249
	v_dual_mov_b32 v5, v25 :: v_dual_mov_b32 v6, v26
	v_mov_b32_e32 v194, v124
	scratch_load_b64 v[123:124], off, off offset:88 ; 8-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_dual_mov_b32 v195, v133 :: v_dual_and_b32 v2, 8, v0
	v_and_b32_e32 v1, 4, v0
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v250, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	v_mov_b32_e32 v251, v250
	v_mov_b32_e32 v29, v250
	v_mov_b32_e32 v3, v250
	v_mov_b32_e32 v123, v250
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v175, v250 :: v_dual_mov_b32 v176, v251
	v_mov_b32_e32 v30, v251
	v_mov_b32_e32 v4, v251
	v_dual_mov_b32 v255, v251 :: v_dual_mov_b32 v254, v250
	v_dual_mov_b32 v124, v251 :: v_dual_mov_b32 v31, v250
	v_dual_mov_b32 v32, v251 :: v_dual_mov_b32 v173, v250
	v_mov_b32_e32 v174, v251
	v_dual_mov_b32 v246, v250 :: v_dual_mov_b32 v247, v251
	v_dual_mov_b32 v164, v250 :: v_dual_mov_b32 v165, v251
	v_dual_mov_b32 v7, v250 :: v_dual_mov_b32 v8, v251
	v_dual_mov_b32 v10, v250 :: v_dual_mov_b32 v11, v251
	v_dual_mov_b32 v244, v250 :: v_dual_mov_b32 v245, v251
	v_dual_mov_b32 v5, v250 :: v_dual_mov_b32 v6, v251
	v_dual_mov_b32 v239, v250 :: v_dual_mov_b32 v240, v251
	v_dual_mov_b32 v166, v250 :: v_dual_mov_b32 v167, v251
	v_dual_mov_b32 v151, v250 :: v_dual_mov_b32 v152, v251
	v_dual_mov_b32 v170, v250 :: v_dual_mov_b32 v171, v251
	v_dual_mov_b32 v125, v250 :: v_dual_mov_b32 v126, v251
	v_dual_mov_b32 v147, v250 :: v_dual_mov_b32 v148, v251
	v_dual_mov_b32 v141, v250 :: v_dual_mov_b32 v142, v251
	v_dual_mov_b32 v145, v250 :: v_dual_mov_b32 v146, v251
	v_dual_mov_b32 v129, v250 :: v_dual_mov_b32 v130, v251
	v_dual_mov_b32 v137, v250 :: v_dual_mov_b32 v138, v251
	v_dual_mov_b32 v139, v250 :: v_dual_mov_b32 v140, v251
	v_dual_mov_b32 v143, v250 :: v_dual_mov_b32 v144, v251
	v_dual_mov_b32 v235, v250 :: v_dual_mov_b32 v236, v251
	v_dual_mov_b32 v135, v250 :: v_dual_mov_b32 v136, v251
	v_dual_mov_b32 v233, v250 :: v_dual_mov_b32 v234, v251
	v_dual_mov_b32 v27, v250 :: v_dual_mov_b32 v28, v251
	v_dual_mov_b32 v119, v250 :: v_dual_mov_b32 v120, v251
	v_dual_mov_b32 v242, v250 :: v_dual_mov_b32 v243, v251
	v_dual_mov_b32 v131, v250 :: v_dual_mov_b32 v132, v251
	v_dual_mov_b32 v127, v250 :: v_dual_mov_b32 v128, v251
	v_dual_mov_b32 v121, v250 :: v_dual_mov_b32 v122, v251
	v_dual_mov_b32 v117, v250 :: v_dual_mov_b32 v118, v251
	v_dual_mov_b32 v115, v250 :: v_dual_mov_b32 v116, v251
	v_dual_mov_b32 v111, v250 :: v_dual_mov_b32 v112, v251
	v_dual_mov_b32 v107, v250 :: v_dual_mov_b32 v108, v251
	v_dual_mov_b32 v103, v250 :: v_dual_mov_b32 v104, v251
	v_dual_mov_b32 v113, v250 :: v_dual_mov_b32 v114, v251
	v_dual_mov_b32 v109, v250 :: v_dual_mov_b32 v110, v251
	v_dual_mov_b32 v105, v250 :: v_dual_mov_b32 v106, v251
	v_dual_mov_b32 v101, v250 :: v_dual_mov_b32 v102, v251
	v_dual_mov_b32 v99, v250 :: v_dual_mov_b32 v100, v251
	v_dual_mov_b32 v97, v250 :: v_dual_mov_b32 v98, v251
	v_dual_mov_b32 v91, v250 :: v_dual_mov_b32 v92, v251
	v_dual_mov_b32 v89, v250 :: v_dual_mov_b32 v90, v251
	v_dual_mov_b32 v95, v250 :: v_dual_mov_b32 v96, v251
	v_dual_mov_b32 v93, v250 :: v_dual_mov_b32 v94, v251
	v_dual_mov_b32 v87, v250 :: v_dual_mov_b32 v88, v251
	v_dual_mov_b32 v85, v250 :: v_dual_mov_b32 v86, v251
	v_dual_mov_b32 v83, v250 :: v_dual_mov_b32 v84, v251
	v_dual_mov_b32 v81, v250 :: v_dual_mov_b32 v82, v251
	v_dual_mov_b32 v75, v250 :: v_dual_mov_b32 v76, v251
	v_dual_mov_b32 v168, v250 :: v_dual_mov_b32 v169, v251
	v_dual_mov_b32 v79, v250 :: v_dual_mov_b32 v80, v251
	v_dual_mov_b32 v77, v250 :: v_dual_mov_b32 v78, v251
	v_dual_mov_b32 v73, v250 :: v_dual_mov_b32 v74, v251
	s_add_i32 s1, 0, 0x6000
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[250:251], off offset:200
	scratch_store_b64 off, v[250:251], off offset:64
	scratch_store_b64 off, v[250:251], off offset:72
	scratch_store_b64 off, v[250:251], off offset:80
	scratch_store_b64 off, v[250:251], off offset:184
.LBB0_8:                                ; %Flow578
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cmp_eq_u32_e64 s0, 0, v2
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[127:128], off offset:144
	scratch_store_b64 off, v[27:28], off offset:152
	scratch_store_b64 off, v[145:146], off offset:160
	scratch_store_b64 off, v[125:126], off
	s_waitcnt vmcnt(5)
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:24
	scratch_store_b64 off, v[244:245], off offset:208
	scratch_store_b64 off, v[239:240], off offset:176
	s_waitcnt vmcnt(3)
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[10:11], off offset:16
	scratch_store_b64 off, v[7:8], off offset:8
	scratch_store_b64 off, v[170:171], off offset:32
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_cndmask_b32_e64 v2, 0x110, 0, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v4, s37, v194
	v_dual_mov_b32 v52, v246 :: v_dual_mov_b32 v53, v247
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v7, v9, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s37, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v70, 16, v7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s37, v0
	ds_load_u8_d16 v240, v3 offset:1760
	ds_load_u8_d16 v0, v3 offset:1824
	ds_load_u8_d16 v21, v3 offset:1888
	ds_load_u8_d16 v153, v3 offset:1952
	ds_load_u8_d16 v155, v3 offset:2016
	ds_load_u8_d16 v183, v3 offset:112
	ds_load_u8_d16 v184, v3 offset:176
	ds_load_u8_d16 v185, v3 offset:240
	ds_load_u8_d16 v186, v3 offset:304
	ds_load_u8_d16 v187, v3 offset:368
	ds_load_u8_d16 v38, v1
	ds_load_u8_d16 v11, v3
	ds_load_u8_d16 v44, v3 offset:16
	ds_load_u8_d16 v55, v3 offset:32
	ds_load_u8_d16 v54, v3 offset:48
	ds_load_u8_d16 v12, v3 offset:64
	ds_load_u8_d16 v8, v3 offset:128
	ds_load_u8_d16 v10, v3 offset:192
	ds_load_u8_d16 v14, v3 offset:256
	ds_load_u8_d16 v16, v3 offset:320
	ds_load_u8_d16 v49, v3 offset:384
	ds_load_u8_d16 v51, v3 offset:448
	ds_load_u8_d16 v58, v3 offset:512
	ds_load_u8_d16 v60, v3 offset:576
	ds_load_u8_d16 v57, v3 offset:640
	ds_load_u8_d16 v59, v3 offset:704
	ds_load_u8_d16 v62, v3 offset:768
	ds_load_u8_d16 v64, v3 offset:832
	ds_load_u8_d16 v61, v3 offset:896
	ds_load_u8_d16 v63, v3 offset:960
	ds_load_u8_d16 v145, v3 offset:1024
	ds_load_u8_d16 v146, v3 offset:1088
	ds_load_u8_d16 v27, v3 offset:1152
	ds_load_u8_d16 v149, v3 offset:1216
	ds_load_u8_d16 v28, v3 offset:1280
	ds_load_u8_d16 v128, v3 offset:1344
	ds_load_u8_d16 v127, v3 offset:1408
	ds_load_u8_d16 v126, v3 offset:1472
	ds_load_u8_d16 v125, v3 offset:1536
	ds_load_u8_d16 v150, v3 offset:1600
	ds_load_u8_d16 v157, v3 offset:1664
	ds_load_u8_d16 v17, v3 offset:1728
	ds_load_u8_d16 v19, v3 offset:1792
	ds_load_u8_d16 v210, v3 offset:1856
	ds_load_u8_d16 v211, v3 offset:1920
	ds_load_u8_d16 v212, v3 offset:1984
	ds_load_u8_d16 v45, v3 offset:80
	ds_load_u8_d16 v46, v3 offset:144
	ds_load_u8_d16 v47, v3 offset:208
	ds_load_u8_d16 v18, v3 offset:272
	ds_load_u8_d16 v25, v3 offset:336
	ds_load_u8_d16 v33, v3 offset:400
	ds_load_u8_d16 v34, v3 offset:464
	ds_load_u8_d16 v36, v3 offset:528
	ds_load_u8_d16 v37, v3 offset:592
	ds_load_u8_d16 v20, v3 offset:656
	ds_load_u8_d16 v48, v3 offset:720
	ds_load_u8_d16 v13, v3 offset:784
	ds_load_u8_d16 v15, v3 offset:848
	ds_load_u8_d16 v35, v3 offset:912
	ds_load_u8_d16 v50, v3 offset:976
	ds_load_u8_d16 v213, v3 offset:1040
	ds_load_u8_d16 v214, v3 offset:1104
	ds_load_u8_d16 v215, v3 offset:1168
	ds_load_u8_d16 v216, v3 offset:1232
	ds_load_u8_d16 v217, v3 offset:1296
	ds_load_u8_d16 v218, v3 offset:1360
	ds_load_u8_d16 v219, v3 offset:1424
	ds_load_u8_d16 v220, v3 offset:1488
	ds_load_u8_d16 v221, v3 offset:1552
	ds_load_u8_d16 v222, v3 offset:1616
	ds_load_u8_d16 v160, v3 offset:1680
	ds_load_u8_d16 v223, v3 offset:1744
	ds_load_u8_d16 v224, v3 offset:1808
	ds_load_u8_d16 v226, v3 offset:1872
	ds_load_u8_d16 v227, v3 offset:1936
	ds_load_u8_d16 v228, v3 offset:2000
	ds_load_u8_d16 v170, v3 offset:96
	ds_load_u8_d16 v171, v3 offset:160
	ds_load_u8_d16 v172, v3 offset:224
	ds_load_u8_d16 v26, v3 offset:288
	ds_load_u8_d16 v177, v3 offset:352
	ds_load_u8_d16 v178, v3 offset:416
	ds_load_u8_d16 v179, v3 offset:480
	ds_load_u8_d16 v156, v3 offset:544
	ds_load_u8_d16 v23, v3 offset:608
	ds_load_u8_d16 v180, v3 offset:672
	ds_load_u8_d16 v181, v3 offset:736
	ds_load_u8_d16 v24, v3 offset:800
	ds_load_u8_d16 v154, v3 offset:864
	ds_load_u8_d16 v22, v3 offset:928
	ds_load_u8_d16 v182, v3 offset:992
	ds_load_u8_d16 v229, v3 offset:1056
	ds_load_u8_d16 v133, v3 offset:1120
	ds_load_u8_d16 v134, v3 offset:1184
	ds_load_u8_d16 v230, v3 offset:1248
	ds_load_u8_d16 v231, v3 offset:1312
	ds_load_u8_d16 v232, v3 offset:1376
	ds_load_u8_d16 v252, v3 offset:1440
	ds_load_u8_d16 v253, v3 offset:1504
	ds_load_u8_d16 v237, v3 offset:1568
	ds_load_u8_d16 v238, v3 offset:1632
	ds_load_u8_d16 v239, v3 offset:1696
	ds_load_u8_d16 v188, v3 offset:432
	ds_load_u8_d16 v40, v4
	ds_load_u8_d16 v189, v3 offset:496
	ds_load_u8_d16 v163, v3 offset:560
	ds_load_u8_d16 v39, v3 offset:624
	ds_load_u8_d16 v190, v3 offset:688
	ds_load_u8_d16 v191, v3 offset:752
	ds_load_u8_d16 v42, v3 offset:816
	ds_load_u8_d16 v43, v3 offset:880
	ds_load_u8_d16 v41, v3 offset:944
	ds_load_u8_d16 v244, v3 offset:1072
	ds_load_u8_d16 v245, v3 offset:1136
	ds_load_u8_d16 v158, v3 offset:1200
	ds_load_u8_d16 v246, v3 offset:1264
	ds_load_u8_d16 v247, v3 offset:1328
	ds_load_u8_d16 v249, v3 offset:1392
	ds_load_u8_d16 v56, v3 offset:1456
	ds_load_u8_d16 v159, v3 offset:1520
	ds_load_u8_d16 v71, v3 offset:1584
	ds_load_u8_d16 v72, v3 offset:1648
	ds_load_u8_d16 v161, v3 offset:1712
	ds_load_u8_d16 v225, v3 offset:1776
	ds_load_u8_d16 v248, v3 offset:1840
	ds_load_u8_d16 v241, v3 offset:1904
	ds_load_u8_d16 v162, v3 offset:1968
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_clause 0x5                            ; 40-byte Folded Spill
	scratch_store_b32 off, v7, off offset:96
	scratch_store_b32 off, v70, off offset:104
	scratch_store_b64 off, v[175:176], off offset:40
	scratch_store_b64 off, v[164:165], off offset:48
	scratch_store_b64 off, v[173:174], off offset:56
	scratch_store_b64 off, v[5:6], off offset:168
	s_waitcnt lgkmcnt(39)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v24, off offset:88
	scratch_store_b32 off, v55, off offset:112
	scratch_store_b32 off, v171, off offset:120
	s_waitcnt lgkmcnt(38)
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v154, off offset:128
	scratch_store_b32 off, v172, off offset:136
	scratch_store_b32 off, v26, off offset:216
	scratch_store_b32 off, v177, off offset:220
	scratch_store_b32 off, v8, off offset:224
	scratch_store_b32 off, v10, off offset:228
	scratch_store_b32 off, v178, off offset:232
	scratch_store_b32 off, v179, off offset:240
	scratch_store_b32 off, v11, off offset:248
	scratch_store_b32 off, v18, off offset:256
	scratch_store_b32 off, v33, off offset:264
	scratch_store_b32 off, v34, off offset:316
	scratch_store_b32 off, v25, off offset:320
	scratch_store_b32 off, v12, off offset:324
	scratch_store_b32 off, v37, off offset:328
	scratch_store_b32 off, v170, off offset:332
	scratch_store_b32 off, v35, off offset:336
	scratch_store_b32 off, v13, off offset:340
	scratch_store_b32 off, v50, off offset:344
	scratch_store_b32 off, v14, off offset:348
	scratch_store_b32 off, v15, off offset:352
	scratch_store_b32 off, v16, off offset:356
	scratch_store_b32 off, v49, off offset:360
	scratch_store_b32 off, v48, off offset:364
	scratch_store_b32 off, v51, off offset:368
	scratch_store_b32 off, v36, off offset:372
	scratch_store_b32 off, v57, off offset:376
	scratch_store_b32 off, v58, off offset:380
	scratch_store_b32 off, v59, off offset:384
	scratch_store_b32 off, v60, off offset:388
	scratch_store_b32 off, v61, off offset:392
	scratch_store_b32 off, v62, off offset:396
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v63, off offset:400
	scratch_store_b32 off, v64, off offset:404
	scratch_store_b32 off, v183, off offset:408
	scratch_store_b32 off, v184, off offset:412
	scratch_store_b32 off, v185, off offset:416
	scratch_store_b32 off, v186, off offset:420
	scratch_store_b32 off, v187, off offset:424
	s_waitcnt lgkmcnt(24)
	scratch_store_b32 off, v188, off offset:436 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(22)
	scratch_store_b32 off, v189, off offset:440 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(19)
	scratch_store_b32 off, v190, off offset:444 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(18)
	scratch_store_b32 off, v191, off offset:448 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_11
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s26, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v2, v62, v64, 0xc0c0004
	v_perm_b32 v3, v61, v63, 0xc0c0004
	v_perm_b32 v4, v58, v60, 0xc0c0004
	v_perm_b32 v5, v57, v59, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v1 offset:4096
	ds_load_b128 v[61:64], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v1, v14, v16, 0xc0c0004
	v_lshl_or_b32 v68, v3, 16, v2
	v_perm_b32 v2, v49, v51, 0xc0c0004
	v_perm_b32 v9, v11, v12, 0xc0c0004
	v_perm_b32 v10, v8, v10, 0xc0c0004
	v_lshl_or_b32 v67, v5, 16, v4
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v202.l, v71.l
	v_lshl_or_b32 v66, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_perm_b32 v71, v36, v37, 0xc0c0004
	v_mov_b16_e32 v37.l, v20.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v203.l, v72.l
	v_perm_b32 v72, v20, v48, 0xc0c0004
	v_mov_b16_e64 v36.l, v159.l
	v_mov_b16_e64 v159.l, v56.l
	v_mov_b16_e32 v56.l, v126.l
	v_mov_b16_e64 v126.l, v128.l
	v_mov_b16_e64 v128.l, v149.l
	v_mov_b16_e64 v149.l, v27.l
	v_mov_b16_e64 v20.l, v146.l
	v_mov_b16_e64 v146.l, v145.l
	v_mov_b16_e64 v145.l, v125.l
	v_mov_b16_e32 v125.l, v127.l
	v_mov_b16_e32 v127.l, v28.l
	v_dual_mov_b32 v27, v166 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v28, v167
	v_lshl_or_b32 v65, v10, 16, v9
	v_perm_b32 v69, v13, v15, 0xc0c0004
	v_perm_b32 v70, v35, v50, 0xc0c0004
	v_perm_b32 v164, v18, v25, 0xc0c0004
	v_perm_b32 v165, v33, v34, 0xc0c0004
	v_perm_b32 v166, v44, v45, 0xc0c0004
	v_perm_b32 v167, v46, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_mov_b16_e32 v25.l, v44.l
	v_mov_b16_e32 v18.l, v45.l
	v_mov_b16_e32 v33.l, v46.l
	v_mov_b16_e32 v34.l, v47.l
	v_wmma_i32_16x16x16_iu8 v[44:51], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v70, 16, v69
	v_lshl_or_b32 v67, v72, 16, v71
	v_lshl_or_b32 v66, v165, 16, v164
	v_lshl_or_b32 v65, v167, 16, v166
	v_perm_b32 v69, v24, v154, 0xc0c0004
	v_perm_b32 v70, v22, v182, 0xc0c0004
	v_perm_b32 v71, v156, v23, 0xc0c0004
	v_perm_b32 v164, v180, v181, 0xc0c0004
	v_perm_b32 v165, v26, v177, 0xc0c0004
	v_perm_b32 v166, v178, v179, 0xc0c0004
	v_perm_b32 v167, v55, v170, 0xc0c0004
	v_perm_b32 v178, v171, v172, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	v_lshl_or_b32 v71, v164, 16, v71
	v_lshl_or_b32 v70, v166, 16, v165
	v_perm_b32 v164, v42, v43, 0xc0c0004
	v_perm_b32 v165, v41, v40, 0xc0c0004
	v_lshl_or_b32 v69, v178, 16, v167
	v_perm_b32 v179, v186, v187, 0xc0c0004
	v_perm_b32 v186, v184, v185, 0xc0c0004
	v_mov_b16_e64 v154.l, v22.l
	v_lshl_or_b32 v167, v165, 16, v164
	v_perm_b32 v164, v54, v183, 0xc0c0004
	v_mov_b16_e64 v22.l, v156.l
	v_mov_b16_e64 v156.l, v180.l
	v_perm_b32 v178, v190, v191, 0xc0c0004
	v_perm_b32 v180, v188, v189, 0xc0c0004
	v_mov_b16_e32 v26.l, v54.l
	v_lshl_or_b32 v164, v186, 16, v164
	v_wmma_i32_16x16x16_iu8 v[186:193], v[61:64], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v54, v195 :: v_dual_mov_b32 v55, v194
	v_wmma_i32_16x16x16_iu8 v[194:201], v[57:60], v[69:72], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v70, off, off offset:104 ; 4-byte Folded Reload
	v_perm_b32 v166, v163, v39, 0xc0c0004
	v_lshl_or_b32 v165, v180, 16, v179
	v_mov_b16_e64 v35.l, v182.l
	v_mov_b16_e32 v24.l, v23.l
	v_mov_b16_e64 v23.l, v181.l
	v_lshl_or_b32 v166, v178, 16, v166
	v_wmma_i32_16x16x16_iu8 v[170:177], v[61:64], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_mov_b16_e64 v72.l, v203.l
	v_mov_b16_e64 v71.l, v202.l
	v_wmma_i32_16x16x16_iu8 v[202:209], v[61:64], v[164:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[164:167], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v167, v28 :: v_dual_mov_b32 v166, v27
	v_mov_b16_e32 v28.l, v127.l
	v_mov_b16_e32 v127.l, v125.l
	v_mov_b16_e64 v125.l, v145.l
	v_mov_b16_e64 v27.l, v149.l
	v_mov_b16_e64 v149.l, v128.l
	v_mov_b16_e64 v128.l, v126.l
	v_mov_b16_e32 v126.l, v56.l
	v_perm_b32 v57, v19, v210, 0xc0c0004
	v_perm_b32 v58, v211, v212, 0xc0c0004
	v_mov_b16_e64 v145.l, v146.l
	v_mov_b16_e64 v146.l, v20.l
	v_perm_b32 v59, v125, v150, 0xc0c0004
	v_perm_b32 v61, v157, v17, 0xc0c0004
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v28, v128, 0xc0c0004
	v_perm_b32 v58, v127, v126, 0xc0c0004
	v_perm_b32 v69, v160, v223, 0xc0c0004
	v_lshl_or_b32 v59, v61, 16, v59
	v_perm_b32 v61, v27, v149, 0xc0c0004
	v_mov_b16_e64 v56.l, v159.l
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v145, v146, 0xc0c0004
	v_mov_b16_e64 v159.l, v36.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v57, v61, 16, v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s26, v70
	ds_load_b128 v[61:64], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v65 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[65:68], v[57:60], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v57, v224, v226, 0xc0c0004
	v_perm_b32 v58, v227, v228, 0xc0c0004
	v_perm_b32 v59, v221, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v123, v123, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v217, v218, 0xc0c0004
	v_perm_b32 v58, v219, v220, 0xc0c0004
	v_lshl_or_b32 v59, v69, 16, v59
	v_perm_b32 v69, v215, v216, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v49, v49
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v213, v214, 0xc0c0004
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_lshl_or_b32 v57, v69, 16, v57
	v_perm_b32 v69, v239, v240, 0xc0c0004
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[170:177], v[61:64], v[57:60], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[65:68], v[57:60], v[178:185] neg_lo:[1,1,0]
	v_perm_b32 v57, v0, v21, 0xc0c0004
	v_perm_b32 v58, v153, v155, 0xc0c0004
	v_perm_b32 v59, v237, v238, 0xc0c0004
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v231, v232, 0xc0c0004
	v_perm_b32 v58, v252, v253, 0xc0c0004
	v_lshl_or_b32 v59, v69, 16, v59
	v_perm_b32 v69, v134, v230, 0xc0c0004
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v229, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v57, v69, 16, v57
	v_perm_b32 v69, v161, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[186:193], v[61:64], v[57:60], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[65:68], v[57:60], v[194:201] neg_lo:[1,1,0]
	v_perm_b32 v57, v248, v241, 0xc0c0004
	v_perm_b32 v58, v162, v38, 0xc0c0004
	v_perm_b32 v59, v71, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v247, v249, 0xc0c0004
	v_perm_b32 v58, v56, v159, 0xc0c0004
	v_lshl_or_b32 v59, v69, 16, v59
	v_perm_b32 v69, v158, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v244, v245, 0xc0c0004
	v_lshl_or_b32 v57, v69, 16, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[61:64], v[57:60], v[202:209] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[57:58], off, off offset:200 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v81, v1 :: v_dual_add_f32 v78, v78, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v4, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v169, v169, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v168, v168, v1
	v_add_f32_e32 v250, v250, v3
	v_dual_add_f32 v30, v30, v4 :: v_dual_add_f32 v29, v29, v5
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v251, v251, v2 :: v_dual_add_f32 v58, v58, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v15
	scratch_load_b64 v[15:16], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v11
	scratch_load_b64 v[11:12], off, off offset:208 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v12, v12, v47 :: v_dual_add_f32 v11, v11, v46
	scratch_store_b64 off, v[11:12], off offset:208 ; 8-byte Folded Spill
	scratch_load_b64 v[11:12], off, off offset:8 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v12, v12, v49 :: v_dual_add_f32 v11, v11, v48
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[57:58], off offset:200
	scratch_store_b64 off, v[11:12], off offset:8
	scratch_load_b64 v[12:13], off, off offset:176 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v171
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v13, v13, v51 :: v_dual_add_f32 v12, v12, v50
	scratch_store_b64 off, v[12:13], off offset:176 ; 8-byte Folded Spill
	scratch_load_b64 v[13:14], off, off offset:64 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v170
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_add_f32 v14, v14, v11 :: v_dual_add_f32 v13, v13, v12
	scratch_store_b64 off, v[52:53], off offset:304 ; 8-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v173
	v_cvt_f32_i32_e32 v12, v172
	scratch_store_b64 off, v[13:14], off offset:64 ; 8-byte Folded Spill
	scratch_load_b64 v[13:14], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v14, v14, v11 :: v_dual_add_f32 v13, v13, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v175
	v_cvt_f32_i32_e32 v12, v174
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v16, v11 :: v_dual_add_f32 v15, v15, v12
	scratch_store_b64 off, v[13:14], off offset:80 ; 8-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v177
	v_cvt_f32_i32_e32 v14, v179
	v_cvt_f32_i32_e32 v12, v178
	scratch_store_b64 off, v[15:16], off offset:72 ; 8-byte Folded Spill
	scratch_load_b64 v[15:16], off, off offset:160 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v13, v176
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v148, v148, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v147, v147, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v183
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v144, v144, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v138, v138, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v186
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v136, v136, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v187
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v16, v16, v14 :: v_dual_add_f32 v15, v15, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v180
	v_cvt_f32_i32_e32 v14, v182
	scratch_store_b64 off, v[15:16], off offset:160 ; 8-byte Folded Spill
	scratch_load_b64 v[15:16], off, off offset:152 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v143, v143, v12
	v_add_f32_e32 v137, v137, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v184
	v_cvt_f32_i32_e32 v14, v189
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v135, v135, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v188
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v16, v16, v11 :: v_dual_add_f32 v15, v15, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v191
	v_cvt_f32_i32_e32 v13, v193
	scratch_store_b64 off, v[15:16], off offset:152 ; 8-byte Folded Spill
	scratch_load_b64 v[15:16], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v118, v118, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v196
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v16, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v192
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v15, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v190
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v117, v117, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v199
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v243, v243, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v242, v242, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v194
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v104, v104, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v202
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v112, v112, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v197
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v111, v111, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v198
	v_dual_mov_b32 v195, v54 :: v_dual_mov_b32 v194, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v110, v110, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v201
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v109, v109, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v203
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v103, v103, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v200
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v102, v102, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v205
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v98, v98, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v206
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v101, v101, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v204
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v94, v94, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v207
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v89, v89, v13
	v_add_f32_e32 v97, v97, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v209
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v93, v93, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v208
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v90, v90, v11
	scratch_store_b64 off, v[15:16], off offset:144 ; 8-byte Folded Spill
	v_dual_add_f32 v86, v86, v14 :: v_dual_add_f32 v85, v85, v12
	v_mov_b16_e64 v164.l, v38.l
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	scratch_store_b64 off, v[29:30], off offset:428 ; 8-byte Folded Spill
	s_cbranch_vccz .LBB0_12
.LBB0_10:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	scratch_load_b64 v[133:134], off, off   ; 8-byte Folded Reload
	s_waitcnt lgkmcnt(5)
	scratch_load_b32 v72, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_branch .LBB0_13
.LBB0_11:
	.loc	1 0 28                          ; generate_amdgcn.py:0:28
	v_mov_b16_e32 v37.l, v20.l
	v_mov_b16_e64 v35.l, v182.l
	v_mov_b16_e64 v154.l, v22.l
	v_mov_b16_e32 v24.l, v23.l
	v_mov_b16_e64 v23.l, v181.l
	v_mov_b16_e64 v22.l, v156.l
	v_mov_b16_e64 v156.l, v180.l
	v_mov_b16_e32 v34.l, v47.l
	v_mov_b16_e32 v33.l, v46.l
	v_mov_b16_e32 v18.l, v45.l
	v_mov_b16_e32 v25.l, v44.l
	v_mov_b16_e32 v26.l, v54.l
	scratch_store_b64 off, v[52:53], off offset:304 ; 8-byte Folded Spill
	v_mov_b16_e64 v164.l, v38.l
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	scratch_store_b64 off, v[29:30], off offset:428 ; 8-byte Folded Spill
	s_cbranch_vccnz .LBB0_10
.LBB0_12:
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:396
	scratch_load_b32 v2, off, off offset:404
	v_mov_b16_e32 v29.l, v0.l
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e32 v30.l, v56.l
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:392
	scratch_load_b32 v3, off, off offset:400
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:380
	scratch_load_b32 v3, off, off offset:388
	v_lshl_or_b32 v47, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:376
	scratch_load_b32 v4, off, off offset:384
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v3, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:348
	scratch_load_b32 v1, off, off offset:356
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:360
	scratch_load_b32 v2, off, off offset:368
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:248
	scratch_load_b32 v1, off, off offset:324
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:224
	scratch_load_b32 v2, off, off offset:228
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v1, off, off offset:352
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:336
	scratch_load_b32 v2, off, off offset:344
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:328
	scratch_load_b32 v3, off, off offset:372
	v_lshl_or_b32 v59, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:256
	scratch_load_b32 v1, off, off offset:320
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	scratch_load_b32 v3, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v37, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:264
	scratch_load_b32 v2, off, off offset:316
	v_perm_b32 v3, v156, v23, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v22, v24, 0xc0c0004
	v_mov_b16_e32 v24.l, v19.l
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v57, v1, 16, v0
	v_perm_b32 v0, v25, v18, 0xc0c0004
	v_perm_b32 v1, v33, v34, 0xc0c0004
	v_lshl_or_b32 v62, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:444
	scratch_load_b32 v4, off, off offset:448
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e32 v34.l, v71.l
	v_mov_b16_e32 v25.l, v17.l
	v_lshl_or_b32 v56, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:88
	scratch_load_b32 v1, off, off offset:128
	v_perm_b32 v24, v24, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v162, v164, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	v_perm_b32 v1, v154, v35, 0xc0c0004
	v_mov_b16_e32 v35.l, v72.l
	scratch_load_b32 v72, off, off offset:96 ; 4-byte Folded Reload
	v_lshl_or_b32 v63, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:216
	scratch_load_b32 v1, off, off offset:220
	v_perm_b32 v34, v34, v35, 0xc0c0004
	v_perm_b32 v35, v161, v225, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:232
	scratch_load_b32 v2, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v1, off, off offset:332
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:120
	scratch_load_b32 v2, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v163, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v60, v1, 16, v0
	v_perm_b32 v0, v42, v43, 0xc0c0004
	v_perm_b32 v1, v41, v40, 0xc0c0004
	v_lshl_or_b32 v54, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v55, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:420
	scratch_load_b32 v1, off, off offset:424
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:436
	scratch_load_b32 v2, off, off offset:440
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v1, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:408
	scratch_load_b32 v1, off, off offset:412
	scratch_load_b32 v2, off, off offset:416
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_mov_b16_e32 v26.l, v21.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v52, v1, 16, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s34, v72
	ds_load_b128 v[64:67], v0
	ds_load_b128 v[68:71], v0 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v1, s5 :: v_dual_mov_b32 v2, s6
	v_dual_mov_b32 v5, s9 :: v_dual_mov_b32 v4, s8
	v_dual_mov_b32 v7, s11 :: v_dual_mov_b32 v6, s10
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[64:67], v[44:47], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[68:71], v[44:47], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[64:67], v[56:59], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[56:59], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[64:67], v[60:63], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[68:71], v[60:63], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[64:67], v[52:55], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[68:71], v[52:55], v[0:7] neg_lo:[1,1,0]
	scratch_load_b32 v70, off, off offset:104 ; 4-byte Folded Reload
	v_perm_b32 v52, v211, v212, 0xc0c0004
	v_perm_b32 v53, v125, v150, 0xc0c0004
	v_perm_b32 v54, v157, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v55, v52, 16, v24
	v_perm_b32 v24, v28, v128, 0xc0c0004
	v_perm_b32 v52, v127, v126, 0xc0c0004
	v_lshl_or_b32 v54, v54, 16, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v52, 16, v24
	v_perm_b32 v24, v145, v146, 0xc0c0004
	v_perm_b32 v52, v27, v149, 0xc0c0004
	v_lshl_or_b32 v52, v52, 16, v24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s34, v70
	ds_load_b128 v[56:59], v24
	ds_load_b128 v[60:63], v24 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v24, v224, v226, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[56:59], v[52:55], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[60:63], v[52:55], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v52, v227, v228, 0xc0c0004
	v_perm_b32 v53, v221, v222, 0xc0c0004
	v_perm_b32 v54, v160, v223, 0xc0c0004
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v19, v19
	v_lshl_or_b32 v55, v52, 16, v24
	v_perm_b32 v24, v217, v218, 0xc0c0004
	v_perm_b32 v52, v219, v220, 0xc0c0004
	v_lshl_or_b32 v54, v54, 16, v53
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v254, v254, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v13
	v_lshl_or_b32 v53, v52, 16, v24
	v_perm_b32 v24, v213, v214, 0xc0c0004
	v_perm_b32 v52, v215, v216, 0xc0c0004
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v255, v255, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v23, v23
	v_lshl_or_b32 v52, v52, 16, v24
	v_perm_b32 v24, v29, v26, 0xc0c0004
	scratch_load_b64 v[25:26], off, off offset:24 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v17, v17
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[52:55], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[52:55], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v52, v153, v155, 0xc0c0004
	v_perm_b32 v53, v237, v238, 0xc0c0004
	v_perm_b32 v54, v239, v240, 0xc0c0004
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v22, v22
	v_lshl_or_b32 v55, v52, 16, v24
	v_perm_b32 v24, v231, v232, 0xc0c0004
	v_perm_b32 v52, v252, v253, 0xc0c0004
	v_lshl_or_b32 v54, v54, 16, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v52, 16, v24
	v_perm_b32 v24, v229, v133, 0xc0c0004
	v_perm_b32 v52, v134, v230, 0xc0c0004
	v_lshl_or_b32 v52, v52, 16, v24
	v_perm_b32 v24, v248, v241, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[56:59], v[52:55], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[60:63], v[52:55], v[178:185] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v33, 16, v24
	v_perm_b32 v24, v247, v249, 0xc0c0004
	v_perm_b32 v33, v30, v159, 0xc0c0004
	v_lshl_or_b32 v54, v35, 16, v34
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v43
	v_lshl_or_b32 v53, v33, 16, v24
	v_perm_b32 v24, v244, v245, 0xc0c0004
	v_perm_b32 v33, v158, v246, 0xc0c0004
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v51
	v_cvt_f32_i32_e32 v13, v176
	v_cvt_f32_i32_e32 v39, v42
	v_lshl_or_b32 v52, v33, 16, v24
	v_cvt_f32_i32_e32 v24, v37
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v36, v41
	v_wmma_i32_16x16x16_iu8 v[0:7], v[60:63], v[52:55], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v44
	v_cvt_f32_i32_e32 v44, v49
	v_wmma_i32_16x16x16_iu8 v[186:193], v[56:59], v[52:55], v[186:193] neg_lo:[1,1,0]
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v236, v236, v46 :: v_dual_add_f32 v121, v121, v13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v13, v183
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v84, v84, v1 :: v_dual_add_f32 v83, v83, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v0, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v80, v80, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v9
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v76, v76, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v75, v75, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v40, v45
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v45, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v74, v74, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v47, v50
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v142, v142, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v140, v140, v42 :: v_dual_add_f32 v129, v129, v45
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:184
	scratch_load_b64 v[133:134], off, off
	v_dual_add_f32 v152, v152, v36 :: v_dual_add_f32 v235, v235, v47
	v_add_f32_e32 v167, v167, v24
	v_add_f32_e32 v139, v139, v43
	v_add_f32_e32 v151, v151, v37
	v_add_f32_e32 v141, v141, v41
	v_add_f32_e32 v79, v79, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v73, v73, v2
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v26, v26, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v12
	scratch_load_b64 v[11:12], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v25, v25, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v1, v1, v3 :: v_dual_add_f32 v0, v0, v4
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v134, v134, v38 :: v_dual_add_f32 v133, v133, v39
	scratch_store_b64 off, v[0:1], off offset:184 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v12, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v11, v11, v10
	scratch_store_b64 off, v[11:12], off offset:40 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off offset:56 ; 8-byte Folded Reload
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v173
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v132, v132, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v122, v122, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v180
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v113, v113, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v187
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v17 :: v_dual_add_f32 v10, v10, v16
	scratch_store_b64 off, v[10:11], off offset:56 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v19 :: v_dual_add_f32 v10, v10, v18
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[25:26], off offset:24
	scratch_store_b64 off, v[10:11], off offset:16
	scratch_load_b64 v[10:11], off, off offset:48 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v21 :: v_dual_add_f32 v10, v10, v20
	scratch_store_b64 off, v[10:11], off offset:48 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off offset:168 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v23 :: v_dual_add_f32 v10, v10, v22
	scratch_store_b64 off, v[10:11], off offset:168 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v166, v166, v33 :: v_dual_add_f32 v11, v11, v34
	v_add_f32_e32 v10, v10, v35
	scratch_store_b64 off, v[10:11], off offset:32 ; 8-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v171
	v_cvt_f32_i32_e32 v11, v170
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v130, v130, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v234, v234, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v172
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v233, v233, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v131, v131, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v174
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v120, v120, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v119, v119, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v178
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v115, v115, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v182
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v116, v116, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v107, v107, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v184
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v114, v114, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v185
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v105, v105, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v188
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v108, v108, v13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v13, v186
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v106, v106, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v95, v95, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v192
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v100, v100, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v190
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v96, v96, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v191
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v99, v99, v13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v13, v193
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v91, v91, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v87, v87, v10 :: v_dual_add_f32 v92, v92, v11
	v_add_f32_e32 v88, v88, v13
.LBB0_13:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	v_mov_b32_e32 v71, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v3, 0, 1, s2
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v3
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v200, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v191, 0
	v_mov_b32_e32 v5, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v0, s31, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v55, v0
	ds_load_u8_d16 v186, v0 offset:16
	ds_load_u8_d16 v206, v0 offset:32
	ds_load_u8_d16 v219, v0 offset:48
	ds_load_u8_d16 v41, v0 offset:64
	ds_load_u8_d16 v187, v0 offset:80
	ds_load_u8_d16 v207, v0 offset:96
	ds_load_u8_d16 v221, v0 offset:112
	ds_load_u8_d16 v8, v0 offset:128
	ds_load_u8_d16 v175, v0 offset:192
	ds_load_u8_d16 v170, v0 offset:144
	ds_load_u8_d16 v56, v0 offset:208
	ds_load_u8_d16 v210, v0 offset:160
	ds_load_u8_d16 v211, v0 offset:224
	ds_load_u8_d16 v223, v0 offset:240
	ds_load_u8_d16 v224, v0 offset:176
	ds_load_u8_d16 v245, v0 offset:256
	ds_load_u8_d16 v246, v0 offset:320
	ds_load_u8_d16 v171, v0 offset:272
	ds_load_u8_d16 v172, v0 offset:336
	ds_load_u8_d16 v214, v0 offset:288
	ds_load_u8_d16 v215, v0 offset:352
	s_waitcnt lgkmcnt(25)
	ds_load_u8_d16 v225, v0 offset:368
	ds_load_u8_d16 v226, v0 offset:304
	s_waitcnt lgkmcnt(26)
	ds_load_u8_d16 v248, v0 offset:384
	ds_load_u8_d16 v249, v0 offset:448
	ds_load_u8_d16 v50, v0 offset:400
	ds_load_u8_d16 v52, v0 offset:464
	ds_load_u8_d16 v216, v0 offset:416
	ds_load_u8_d16 v1, v0 offset:480
	ds_load_u8_d16 v240, v0 offset:1088
	s_waitcnt lgkmcnt(32)
	ds_load_u8_d16 v241, v0 offset:1152
	ds_load_u8_d16 v2, v0 offset:1040
	ds_load_u8_d16 v36, v0 offset:1984
	ds_load_u8_d16 v16, v0 offset:1936
	ds_load_u8_d16 v24, v0 offset:2000
	ds_load_u8_d16 v4, v0 offset:1952
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	ds_load_u8_d16 v227, v0 offset:496
	ds_load_u8_d16 v228, v0 offset:432
	ds_load_u8_d16 v10, v0 offset:512
	ds_load_u8_d16 v11, v0 offset:576
	ds_load_u8_d16 v13, v0 offset:528
	ds_load_u8_d16 v14, v0 offset:592
	ds_load_u8_d16 v1, v0 offset:544
	s_waitcnt lgkmcnt(11)
	scratch_store_b32 off, v2, off offset:608 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1104
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v4, off offset:600 ; 4-byte Folded Spill
	ds_load_u8_d16 v4, v0 offset:2016
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v1, off offset:516 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:608
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v2, off offset:612 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1056
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:520 ; 4-byte Folded Spill
	ds_load_u8_d16 v29, v0 offset:624
	ds_load_u8_d16 v1, v0 offset:560
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v2, off offset:496 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1120
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v0 offset:640
	ds_load_u8_d16 v22, v0 offset:704
	ds_load_u8_d16 v20, v0 offset:656
	ds_load_u8_d16 v173, v0 offset:720
	ds_load_u8_d16 v1, v0 offset:672
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v2, off offset:500 ; 4-byte Folded Spill
	ds_load_u8_d16 v162, v0 offset:1136
	ds_load_u8_d16 v164, v0 offset:1072
	ds_load_u8_d16 v244, v0 offset:1216
	ds_load_u8_d16 v247, v0 offset:1280
	ds_load_u8_d16 v2, v0 offset:1168
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:524 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:736
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:616 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1232
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:752
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:620 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1184
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:688
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:508 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1248
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	ds_load_u8_d16 v203, v0 offset:768
	ds_load_u8_d16 v204, v0 offset:832
	ds_load_u8_d16 v174, v0 offset:784
	ds_load_u8_d16 v53, v0 offset:848
	ds_load_u8_d16 v1, v0 offset:800
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v2, off offset:512 ; 4-byte Folded Spill
	ds_load_u8_d16 v163, v0 offset:1264
	ds_load_u8_d16 v30, v0 offset:1200
	ds_load_u8_d16 v33, v0 offset:1344
	ds_load_u8_d16 v9, v0 offset:1408
	ds_load_u8_d16 v2, v0 offset:1296
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:556 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:864
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:624 ; 4-byte Folded Spill
	ds_load_u8_d16 v51, v0 offset:1360
	ds_load_u8_d16 v2, v0 offset:1312
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v1, off offset:560 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:880
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:532 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1376
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:816
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:536 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1392
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	ds_load_u8_d16 v34, v0 offset:896
	ds_load_u8_d16 v35, v0 offset:960
	ds_load_u8_d16 v253, v0 offset:1024
	ds_load_u8_d16 v54, v0 offset:912
	ds_load_u8_d16 v176, v0 offset:976
	ds_load_u8_d16 v1, v0 offset:928
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v2, off offset:444 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1328
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:564 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s31, v194
	ds_load_u8_d16 v1, v1
	scratch_store_b32 off, v2, off offset:448 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1472
	ds_load_u8_d16 v12, v0 offset:1536
	ds_load_u8_d16 v231, v0 offset:1424
	ds_load_u8_d16 v27, v0 offset:1488
	ds_load_u8_d16 v2, v0 offset:1440
	v_mov_b32_e32 v69, 0
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:548 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:552 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:452 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:456 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v0 offset:1600
	ds_load_u8_d16 v23, v0 offset:1664
	ds_load_u8_d16 v28, v0 offset:1552
	ds_load_u8_d16 v252, v0 offset:1616
	ds_load_u8_d16 v2, v0 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:568 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:576 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:472 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:476 ; 4-byte Folded Spill
	ds_load_u8_d16 v201, v0 offset:1728
	ds_load_u8_d16 v202, v0 offset:1792
	ds_load_u8_d16 v237, v0 offset:1680
	ds_load_u8_d16 v238, v0 offset:1744
	ds_load_u8_d16 v2, v0 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:580 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:584 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:480 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:484 ; 4-byte Folded Spill
	ds_load_u8_d16 v239, v0 offset:1856
	ds_load_u8_d16 v232, v0 offset:1920
	ds_load_u8_d16 v25, v0 offset:1808
	ds_load_u8_d16 v26, v0 offset:1872
	ds_load_u8_d16 v2, v0 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:592 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:596 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:488 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1840
	ds_load_u8_d16 v0, v0 offset:1968
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s31, v195
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[123:124], off offset:88 ; 8-byte Folded Spill
	v_mov_b32_e32 v195, 0
	ds_load_u8_d16 v1, v2
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v4, off offset:604 ; 4-byte Folded Spill
	v_mov_b32_e32 v4, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:540
	scratch_store_b32 off, v0, off offset:228
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	v_perm_b32 v0, v203, v204, 0xc0c0004
	v_perm_b32 v1, v34, v35, 0xc0c0004
	v_perm_b32 v2, v10, v11, 0xc0c0004
	v_perm_b32 v4, v15, v22, 0xc0c0004
	v_perm_b32 v5, v54, v176, 0xc0c0004
	v_perm_b32 v6, v13, v14, 0xc0c0004
	v_lshl_or_b32 v3, v1, 16, v0
	v_perm_b32 v0, v245, v246, 0xc0c0004
	v_perm_b32 v1, v248, v249, 0xc0c0004
	v_lshl_or_b32 v2, v4, 16, v2
	v_perm_b32 v4, v8, v175, 0xc0c0004
	v_perm_b32 v7, v20, v173, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v1, v1, 16, v0
	v_perm_b32 v0, v55, v41, 0xc0c0004
	s_mov_b32 s6, s4
	v_lshl_or_b32 v39, v7, 16, v6
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v0, v4, 16, v0
	v_perm_b32 v4, v174, v53, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b16_e64 v165.l, v186.l
	v_lshl_or_b32 v40, v5, 16, v4
	v_perm_b32 v4, v171, v172, 0xc0c0004
	v_perm_b32 v5, v50, v52, 0xc0c0004
	v_mov_b16_e64 v124.l, v206.l
	v_mov_b16_e64 v195.l, v207.l
	v_mov_b16_e64 v196.l, v210.l
	v_mov_b16_e64 v197.l, v211.l
	v_lshl_or_b32 v38, v5, 16, v4
	v_perm_b32 v4, v186, v187, 0xc0c0004
	v_perm_b32 v5, v170, v56, 0xc0c0004
	v_mov_b16_e64 v123.l, v219.l
	v_mov_b16_e64 v198.l, v214.l
	v_mov_b16_e64 v199.l, v215.l
	v_mov_b16_e64 v200.l, v216.l
	v_lshl_or_b32 v37, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:556
	scratch_load_b32 v5, off, off offset:560
	v_mov_b16_e64 v125.l, v221.l
	v_mov_b16_e64 v126.l, v223.l
	v_mov_b16_e64 v127.l, v224.l
	v_mov_b16_e64 v128.l, v225.l
	v_mov_b16_e64 v149.l, v226.l
	v_mov_b16_e64 v150.l, v227.l
	v_mov_b16_e64 v161.l, v228.l
	v_perm_b32 v19, v232, v36, 0xc0c0004
	v_mov_b16_e64 v194.l, v176.l
	v_mov_b16_e64 v176.l, v20.l
	v_mov_b16_e32 v20.l, v14.l
	v_mov_b16_e32 v14.l, v13.l
	v_mov_b16_e32 v13.l, v52.l
	v_mov_b16_e32 v52.l, v50.l
	v_mov_b16_e64 v50.l, v172.l
	v_mov_b16_e64 v172.l, v56.l
	v_mov_b16_e64 v56.l, v170.l
	v_dual_mov_b32 v49, s11 :: v_dual_mov_b32 v48, s10
	v_dual_mov_b32 v47, s9 :: v_dual_mov_b32 v46, s8
	v_dual_mov_b32 v45, s7 :: v_dual_mov_b32 v44, s6
	v_dual_mov_b32 v43, s5 :: v_dual_mov_b32 v42, s4
	v_mov_b32_e32 v229, v254
	v_mov_b16_e64 v170.l, v56.l
	v_mov_b16_e64 v56.l, v172.l
	v_mov_b16_e64 v172.l, v50.l
	v_mov_b16_e32 v50.l, v52.l
	v_mov_b16_e32 v52.l, v13.l
	v_mov_b16_e32 v13.l, v14.l
	v_mov_b16_e32 v14.l, v20.l
	v_mov_b16_e64 v20.l, v176.l
	v_mov_b16_e64 v176.l, v194.l
	v_mov_b32_e32 v230, v255
	v_mov_b16_e64 v254.l, v41.l
	v_mov_b16_e32 v41.l, v55.l
	v_mov_b16_e64 v55.l, v187.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:564
	scratch_load_b32 v6, off, off offset:572
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:516
	scratch_load_b32 v7, off, off offset:520
	v_lshl_or_b32 v60, v5, 16, v4
	scratch_load_b32 v5, off, off offset:504 ; 4-byte Folded Reload
	v_perm_b32 v4, v214, v215, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:524
	scratch_load_b32 v17, off, off offset:528
	s_waitcnt vmcnt(2)
	v_perm_b32 v5, v216, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v5, 16, v4
	v_perm_b32 v4, v206, v207, 0xc0c0004
	v_perm_b32 v5, v210, v211, 0xc0c0004
	v_lshl_or_b32 v57, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:460
	scratch_load_b32 v5, off, off offset:464
	s_waitcnt vmcnt(2)
	v_perm_b32 v7, v7, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v7, 16, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:424
	scratch_load_b32 v17, off, off offset:440
	s_waitcnt vmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:468
	scratch_load_b32 v6, off, off offset:588
	s_waitcnt vmcnt(2)
	v_perm_b32 v7, v17, v7, 0xc0c0004
	v_perm_b32 v17, v202, v239, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	scratch_load_b32 v6, off, off offset:420 ; 4-byte Folded Reload
	v_lshl_or_b32 v64, v5, 16, v4
	v_perm_b32 v4, v226, v225, 0xc0c0004
	v_perm_b32 v5, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v5, 16, v4
	v_perm_b32 v4, v219, v221, 0xc0c0004
	v_perm_b32 v5, v224, v223, 0xc0c0004
	v_lshl_or_b32 v61, v5, 16, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s30, v72
	ds_load_b128 v[65:68], v4
	ds_load_b128 v[69:72], v4 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[65:68], v[0:3], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[69:72], v[0:3], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[65:68], v[37:40], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[205:212], v[65:68], v[57:60], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[69:72], v[57:60], v[42:49] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v6, v6, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v63, v7, 16, v6
	v_wmma_i32_16x16x16_iu8 v[0:7], v[69:72], v[37:40], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v37, v12, v21, 0xc0c0004
	v_perm_b32 v38, v23, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[221:228], v[65:68], v[61:64], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[69:72], v[61:64], v[42:49] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:104
	scratch_load_b32 v72, off, off offset:96
	v_lshl_or_b32 v40, v19, 16, v17
	v_perm_b32 v17, v247, v33, 0xc0c0004
	v_perm_b32 v19, v9, v18, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v19, 16, v17
	v_perm_b32 v17, v253, v240, 0xc0c0004
	v_perm_b32 v19, v241, v244, 0xc0c0004
	v_lshl_or_b32 v37, v19, 16, v17
	v_perm_b32 v19, v16, v24, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, s30, v70
	ds_load_b128 v[57:60], v17
	ds_load_b128 v[61:64], v17 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v17, v25, v26, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[57:60], v[37:40], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[61:64], v[37:40], v[178:185] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v19, 16, v17
	scratch_load_b32 v17, off, off offset:624 ; 4-byte Folded Reload
	v_perm_b32 v37, v28, v252, 0xc0c0004
	v_perm_b32 v38, v237, v238, 0xc0c0004
	v_perm_b32 v19, v231, v27, 0xc0c0004
	v_cvt_f32_i32_e32 v145, v178
	v_cvt_f32_i32_e32 v178, v179
	v_cvt_f32_i32_e32 v180, v180
	v_lshl_or_b32 v39, v38, 16, v37
	v_cvt_f32_i32_e32 v179, v181
	v_cvt_f32_i32_e32 v146, v182
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v185, v185
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:608
	scratch_load_b32 v19, off, off offset:612
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:616
	scratch_load_b32 v37, off, off offset:620
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:592
	scratch_load_b32 v19, off, off offset:596
	v_wmma_i32_16x16x16_iu8 v[186:193], v[57:60], v[37:40], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[61:64], v[37:40], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v184, v186
	v_cvt_f32_i32_e32 v71, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v0, v1
	v_mov_b16_e64 v186.l, v165.l
	v_cvt_f32_i32_e32 v165, v187
	v_mov_b16_e64 v187.l, v55.l
	v_mov_b16_e32 v55.l, v41.l
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v2
	v_mov_b16_e64 v41.l, v254.l
	v_dual_mov_b32 v255, v230 :: v_dual_mov_b32 v254, v229
	v_cvt_f32_i32_e32 v66, v188
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v4
	v_cvt_f32_i32_e32 v69, v189
	v_cvt_f32_i32_e32 v65, v190
	v_cvt_f32_i32_e32 v67, v191
	v_cvt_f32_i32_e32 v68, v192
	v_cvt_f32_i32_e32 v191, v5
	v_cvt_f32_i32_e32 v192, v6
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:600
	scratch_load_b32 v37, off, off offset:604
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:568
	scratch_load_b32 v38, off, off offset:576
	v_lshl_or_b32 v40, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:532
	scratch_load_b32 v19, off, off offset:536
	s_waitcnt vmcnt(2)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:580
	scratch_load_b32 v39, off, off offset:584
	s_waitcnt vmcnt(2)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v38, 16, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:548
	scratch_load_b32 v37, off, off offset:552
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:496
	scratch_load_b32 v19, off, off offset:500
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:508
	scratch_load_b32 v37, off, off offset:512
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:488
	scratch_load_b32 v19, off, off offset:492
	v_wmma_i32_16x16x16_iu8 v[205:212], v[57:60], v[37:40], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[61:64], v[37:40], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v1, v206
	v_mov_b16_e64 v206.l, v124.l
	v_cvt_f32_i32_e32 v2, v207
	v_mov_b16_e64 v207.l, v195.l
	v_cvt_f32_i32_e32 v4, v208
	v_cvt_f32_i32_e32 v208, v209
	v_cvt_f32_i32_e32 v209, v210
	v_mov_b16_e64 v210.l, v196.l
	v_cvt_f32_i32_e32 v5, v212
	v_cvt_f32_i32_e32 v212, v213
	v_cvt_f32_i32_e32 v6, v214
	v_mov_b16_e64 v214.l, v198.l
	v_cvt_f32_i32_e32 v7, v215
	v_mov_b16_e64 v215.l, v199.l
	v_cvt_f32_i32_e32 v213, v217
	v_cvt_f32_i32_e32 v199, v155
	v_cvt_f32_i32_e32 v195, v157
	v_cvt_f32_i32_e32 v196, v159
	v_cvt_f32_i32_e32 v198, v160
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:540
	scratch_load_b32 v37, off, off offset:544
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v37, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:472
	scratch_load_b32 v38, off, off offset:476
	v_lshl_or_b32 v40, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:444
	scratch_load_b32 v19, off, off offset:448
	s_waitcnt vmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:480
	scratch_load_b32 v39, off, off offset:484
	s_waitcnt vmcnt(2)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v38, 16, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:452
	scratch_load_b32 v37, off, off offset:456
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v37, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v19, 16, v17
	v_perm_b32 v17, v164, v162, 0xc0c0004
	v_perm_b32 v19, v30, v163, 0xc0c0004
	v_lshl_or_b32 v37, v19, 16, v17
	v_cvt_f32_i32_e32 v17, v193
	v_cvt_f32_i32_e32 v193, v3
	v_cvt_f32_i32_e32 v3, v211
	v_mov_b16_e64 v211.l, v197.l
	v_wmma_i32_16x16x16_iu8 v[221:228], v[57:60], v[37:40], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[61:64], v[37:40], v[42:49] neg_lo:[1,1,0]
	scratch_store_b32 off, v17, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v39, v216
	v_mov_b16_e64 v216.l, v200.l
	v_cvt_f32_i32_e32 v17, v218
	v_cvt_f32_i32_e32 v19, v219
	v_mov_b16_e64 v219.l, v123.l
	v_cvt_f32_i32_e32 v40, v220
	v_cvt_f32_i32_e32 v220, v221
	v_mov_b16_e64 v221.l, v125.l
	v_cvt_f32_i32_e32 v57, v222
	v_cvt_f32_i32_e32 v58, v223
	v_mov_b16_e64 v223.l, v126.l
	v_cvt_f32_i32_e32 v61, v224
	v_mov_b16_e64 v224.l, v127.l
	v_cvt_f32_i32_e32 v222, v225
	v_mov_b16_e64 v225.l, v128.l
	v_cvt_f32_i32_e32 v59, v226
	v_mov_b16_e64 v226.l, v149.l
	v_cvt_f32_i32_e32 v60, v227
	v_mov_b16_e64 v227.l, v150.l
	v_cvt_f32_i32_e32 v62, v228
	v_mov_b16_e64 v228.l, v161.l
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v64, v45
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v45, v47
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v47, v49
	v_cvt_f32_i32_e32 v200, v156
	v_cvt_f32_i32_e32 v197, v158
	v_cvt_f32_i32_e32 v37, v153
	v_cvt_f32_i32_e32 v38, v154
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	scratch_load_b64 v[123:124], off, off offset:64 ; 8-byte Folded Reload
	scratch_store_b32 off, v165, off offset:436 ; 4-byte Folded Spill
	v_mov_b16_e64 v183.l, v30.l
	v_mov_b16_e64 v165.l, v163.l
	v_mov_b16_e64 v30.l, v162.l
	s_clause 0x1f                           ; 152-byte Folded Spill
	scratch_store_b32 off, v47, off offset:416
	scratch_store_b32 off, v64, off offset:412
	scratch_store_b32 off, v46, off offset:408
	scratch_store_b32 off, v45, off offset:404
	scratch_store_b32 off, v44, off offset:400
	scratch_store_b32 off, v63, off offset:396
	scratch_store_b32 off, v43, off offset:392
	scratch_store_b32 off, v62, off offset:388
	scratch_store_b32 off, v42, off offset:384
	scratch_store_b32 off, v61, off offset:380
	scratch_store_b32 off, v60, off offset:376
	scratch_store_b32 off, v59, off offset:372
	scratch_store_b32 off, v58, off offset:368
	scratch_store_b32 off, v57, off offset:364
	scratch_store_b32 off, v40, off offset:360
	scratch_store_b32 off, v39, off offset:356
	scratch_store_b32 off, v19, off offset:352
	scratch_store_b32 off, v17, off offset:348
	scratch_store_b32 off, v7, off offset:344
	scratch_store_b32 off, v6, off offset:340
	scratch_store_b32 off, v5, off offset:336
	scratch_store_b32 off, v4, off offset:332
	scratch_store_b32 off, v3, off offset:328
	scratch_store_b32 off, v2, off offset:324
	scratch_store_b32 off, v1, off offset:320
	scratch_store_b32 off, v0, off offset:316
	scratch_store_b64 off, v[151:152], off offset:136
	scratch_store_b64 off, v[133:134], off
	scratch_store_b64 off, v[141:142], off offset:128
	scratch_store_b64 off, v[147:148], off offset:264
	scratch_store_b64 off, v[139:140], off offset:120
	scratch_store_b64 off, v[143:144], off offset:256
	s_clause 0x5                            ; 48-byte Folded Spill
	scratch_store_b64 off, v[129:130], off offset:232
	scratch_store_b64 off, v[235:236], off offset:112
	scratch_store_b64 off, v[137:138], off offset:248
	scratch_store_b64 off, v[135:136], off offset:240
	scratch_store_b64 off, v[233:234], off offset:104
	scratch_store_b64 off, v[131:132], off offset:96
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v5, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	v_perm_b32 v17, v247, v33, 0xc0c0004
	v_perm_b32 v9, v9, v18, 0xc0c0004
	v_perm_b32 v3, v34, v35, 0xc0c0004
	v_perm_b32 v12, v12, v21, 0xc0c0004
	v_perm_b32 v21, v170, v56, 0xc0c0004
	v_perm_b32 v16, v16, v24, 0xc0c0004
	v_lshl_or_b32 v34, v9, 16, v17
	v_perm_b32 v17, v186, v187, 0xc0c0004
	v_dual_mov_b32 v126, v66 :: v_dual_add_nc_u32 v1, s1, v72
	v_dual_mov_b32 v125, v65 :: v_dual_add_nc_u32 v0, s1, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v17, v21, 16, v17
	v_perm_b32 v21, v25, v26, 0xc0c0004
	v_dual_mov_b32 v127, v67 :: v_dual_mov_b32 v128, v68
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[65:68], v1 offset:4096
	v_dual_mov_b32 v129, v69 :: v_dual_mov_b32 v130, v71
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v24, v16, 16, v21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:556
	scratch_load_b32 v25, off, off offset:560
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[69:72], v1
	ds_load_b128 v[57:60], v0 offset:4096
	ds_load_b128 v[61:64], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v0, v10, v11, 0xc0c0004
	v_perm_b32 v4, v15, v22, 0xc0c0004
	v_perm_b32 v2, v203, v204, 0xc0c0004
	v_perm_b32 v5, v245, v246, 0xc0c0004
	v_perm_b32 v6, v248, v249, 0xc0c0004
	v_perm_b32 v1, v8, v175, 0xc0c0004
	v_lshl_or_b32 v155, v4, 16, v0
	v_perm_b32 v0, v55, v41, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v156, v3, 16, v2
	v_lshl_or_b32 v154, v6, 16, v5
	v_lshl_or_b32 v153, v1, 16, v0
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v1, s5
	v_dual_mov_b32 v2, s6 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v4, s8 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v6, s10 :: v_dual_mov_b32 v7, s11
	v_perm_b32 v10, v202, v239, 0xc0c0004
	v_perm_b32 v11, v232, v36, 0xc0c0004
	v_perm_b32 v15, v23, v201, 0xc0c0004
	v_perm_b32 v18, v253, v240, 0xc0c0004
	v_perm_b32 v19, v241, v244, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[69:72], v[153:156], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v11, 16, v10
	v_lshl_or_b32 v35, v15, 16, v12
	v_lshl_or_b32 v33, v19, 16, v18
	v_dual_mov_b32 v134, v191 :: v_dual_mov_b32 v135, v192
	v_dual_mov_b32 v136, v193 :: v_dual_mov_b32 v139, v222
	v_wmma_i32_16x16x16_iu8 v[186:193], v[65:68], v[153:156], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[61:64], v[33:36], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v9, v174, v53, 0xc0c0004
	v_perm_b32 v8, v54, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[186:193], v[57:60], v[33:36], v[186:193] neg_lo:[1,1,0]
	v_perm_b32 v11, v20, v173, 0xc0c0004
	v_perm_b32 v10, v13, v14, 0xc0c0004
	v_perm_b32 v12, v171, v172, 0xc0c0004
	v_lshl_or_b32 v20, v8, 16, v9
	scratch_load_b32 v8, off, off offset:624 ; 4-byte Folded Reload
	v_perm_b32 v15, v50, v52, 0xc0c0004
	v_lshl_or_b32 v19, v11, 16, v10
	v_perm_b32 v22, v28, v252, 0xc0c0004
	v_perm_b32 v23, v237, v238, 0xc0c0004
	v_perm_b32 v40, v231, v27, 0xc0c0004
	v_lshl_or_b32 v18, v15, 16, v12
	v_perm_b32 v36, v214, v215, 0xc0c0004
	v_dual_mov_b32 v137, v213 :: v_dual_mov_b32 v138, v220
	v_lshl_or_b32 v23, v23, 16, v22
	v_perm_b32 v52, v219, v221, 0xc0c0004
	v_perm_b32 v53, v224, v223, 0xc0c0004
	v_perm_b32 v54, v164, v30, 0xc0c0004
	v_perm_b32 v55, v183, v165, 0xc0c0004
	v_cvt_f32_i32_e32 v177, v42
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v153, v48
	v_cvt_f32_i32_e32 v155, v49
	v_cvt_f32_i32_e32 v154, v186
	v_cvt_f32_i32_e32 v159, v187
	v_cvt_f32_i32_e32 v160, v188
	v_cvt_f32_i32_e32 v163, v189
	v_cvt_f32_i32_e32 v158, v190
	v_cvt_f32_i32_e32 v161, v191
	v_cvt_f32_i32_e32 v162, v192
	v_mov_b32_e32 v192, v135
	s_waitcnt vmcnt(1)
	v_perm_b32 v16, v16, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:564
	scratch_load_b32 v26, off, off offset:572
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v25, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:516
	scratch_load_b32 v26, off, off offset:520
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v25, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:524
	scratch_load_b32 v26, off, off offset:528
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v25, v26, 0xc0c0004
	scratch_load_b32 v25, off, off offset:504 ; 4-byte Folded Reload
	v_perm_b32 v39, v8, v51, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:608
	scratch_load_b32 v9, off, off offset:612
	v_mov_b32_e32 v26, v208
	v_perm_b32 v51, v228, v227, 0xc0c0004
	v_lshl_or_b32 v22, v40, 16, v39
	v_perm_b32 v40, v206, v207, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v39, v216, v25, 0xc0c0004
	v_mov_b32_e32 v25, v205
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v8, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:616
	scratch_load_b32 v9, off, off offset:620
	v_wmma_i32_16x16x16_iu8 v[201:208], v[65:68], v[17:20], v[0:7] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v8, v9, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[8:15], v[69:72], v[17:20], v[0:7] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:592
	scratch_load_b32 v27, off, off offset:596
	v_lshl_or_b32 v19, v33, 16, v16
	v_lshl_or_b32 v18, v35, 16, v34
	v_lshl_or_b32 v17, v39, 16, v36
	v_lshl_or_b32 v21, v50, 16, v41
	v_perm_b32 v41, v210, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[61:64], v[21:24], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v41, 16, v40
	v_wmma_i32_16x16x16_iu8 v[201:208], v[57:60], v[21:24], v[201:208] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v157, v8
	v_cvt_f32_i32_e32 v217, v10
	v_cvt_f32_i32_e32 v218, v11
	v_cvt_f32_i32_e32 v47, v14
	v_cvt_f32_i32_e32 v49, v15
	v_cvt_f32_i32_e32 v48, v201
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v27, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:600
	scratch_load_b32 v28, off, off offset:604
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:568
	scratch_load_b32 v28, off, off offset:576
	v_lshl_or_b32 v36, v33, 16, v20
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:580
	scratch_load_b32 v28, off, off offset:584
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:532
	scratch_load_b32 v28, off, off offset:536
	v_lshl_or_b32 v35, v35, 16, v34
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:548
	scratch_load_b32 v28, off, off offset:552
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:496
	scratch_load_b32 v28, off, off offset:500
	v_lshl_or_b32 v34, v40, 16, v39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:460
	scratch_load_b32 v39, off, off offset:464
	s_waitcnt vmcnt(2)
	v_perm_b32 v41, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:508
	scratch_load_b32 v28, off, off offset:512
	s_waitcnt vmcnt(2)
	v_perm_b32 v20, v39, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:468
	scratch_load_b32 v40, off, off offset:588
	s_waitcnt vmcnt(2)
	v_perm_b32 v50, v27, v28, 0xc0c0004
	v_dual_mov_b32 v27, v209 :: v_dual_mov_b32 v28, v212
	v_wmma_i32_16x16x16_iu8 v[209:216], v[69:72], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	scratch_load_b32 v40, off, off offset:420 ; 4-byte Folded Reload
	v_lshl_or_b32 v33, v50, 16, v41
	v_perm_b32 v50, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[219:226], v[65:68], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v39, 16, v20
	v_lshl_or_b32 v16, v53, 16, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v17, v51, 16, v50
	v_wmma_i32_16x16x16_iu8 v[209:216], v[61:64], v[33:36], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[57:60], v[33:36], v[219:226] neg_lo:[1,1,0]
	v_mov_b32_e32 v191, v134
	v_cvt_f32_i32_e32 v150, v212
	v_mov_b32_e32 v212, v28
	v_cvt_f32_i32_e32 v188, v213
	v_mov_b32_e32 v213, v137
	v_cvt_f32_i32_e32 v149, v215
	v_cvt_f32_i32_e32 v131, v220
	v_cvt_f32_i32_e32 v132, v221
	v_cvt_f32_i32_e32 v135, v222
	v_cvt_f32_i32_e32 v133, v224
	v_cvt_f32_i32_e32 v134, v225
	v_cvt_f32_i32_e32 v137, v226
	v_mov_b32_e32 v220, v138
	v_mov_b32_e32 v222, v139
	v_cvt_f32_i32_e32 v139, v223
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v40, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:424
	scratch_load_b32 v41, off, off offset:440
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:488
	scratch_load_b32 v29, off, off offset:492
	v_lshl_or_b32 v18, v41, 16, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[69:72], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[65:68], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_dual_mov_b32 v71, v130 :: v_dual_mov_b32 v68, v128
	v_dual_mov_b32 v69, v129 :: v_dual_mov_b32 v66, v126
	v_mov_b32_e32 v67, v127
	v_mov_b32_e32 v65, v125
	v_cvt_f32_i32_e32 v17, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v45, v12
	v_cvt_f32_i32_e32 v126, v210
	v_cvt_f32_i32_e32 v127, v211
	v_cvt_f32_i32_e32 v128, v214
	v_cvt_f32_i32_e32 v130, v216
	v_cvt_f32_i32_e32 v129, v219
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v29, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:540
	scratch_load_b32 v39, off, off offset:544
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v39, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:472
	scratch_load_b32 v40, off, off offset:476
	v_lshl_or_b32 v53, v39, 16, v20
	v_cvt_f32_i32_e32 v39, v193
	v_mov_b32_e32 v193, v136
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v40, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:480
	scratch_load_b32 v41, off, off offset:484
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:444
	scratch_load_b32 v50, off, off offset:448
	v_lshl_or_b32 v52, v41, 16, v40
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v46, v13
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v50, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:452
	scratch_load_b32 v51, off, off offset:456
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v51, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 16, v50
	v_lshl_or_b32 v50, v55, 16, v54
	v_wmma_i32_16x16x16_iu8 v[227:234], v[61:64], v[50:53], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[57:60], v[50:53], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v202
	v_cvt_f32_i32_e32 v59, v203
	v_cvt_f32_i32_e32 v62, v204
	v_cvt_f32_i32_e32 v57, v205
	v_mov_b32_e32 v205, v25
	v_cvt_f32_i32_e32 v60, v206
	v_cvt_f32_i32_e32 v61, v207
	v_cvt_f32_i32_e32 v64, v208
	v_mov_b32_e32 v208, v26
	v_cvt_f32_i32_e32 v63, v209
	v_mov_b32_e32 v209, v27
	v_cvt_f32_i32_e32 v136, v227
	v_cvt_f32_i32_e32 v140, v228
	v_cvt_f32_i32_e32 v141, v229
	v_cvt_f32_i32_e32 v144, v230
	v_cvt_f32_i32_e32 v138, v231
	v_cvt_f32_i32_e32 v142, v232
	v_cvt_f32_i32_e32 v143, v233
	v_cvt_f32_i32_e32 v189, v234
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v148, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v151, v3
	v_cvt_f32_i32_e32 v1, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v5, v7
.LBB0_17:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	scratch_load_b64 v[164:165], off, off offset:428 ; 8-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:424
	scratch_store_b32 off, v1, off offset:420
	v_dual_mov_b32 v230, v49 :: v_dual_mov_b32 v239, v2
	v_mov_b32_e32 v248, v48
	v_mov_b32_e32 v202, v64
	v_mov_b32_e32 v204, v3
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	v_mov_b32_e32 v232, v148
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s28, s15
	v_mov_b32_e32 v70, v45
	v_mov_b32_e32 v186, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	s_clause 0x3                            ; 24-byte Folded Reload
	scratch_load_b32 v64, off, off offset:300
	scratch_load_b32 v235, off, off offset:192
	scratch_load_b64 v[29:30], off, off offset:88
	scratch_load_b64 v[27:28], off, off offset:24
	v_mov_b32_e32 v203, v4
	v_mov_b32_e32 v201, v5
	v_mov_b32_e32 v175, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v19, v167, v19
	v_mov_b32_e32 v149, v139
	v_mov_b32_e32 v139, v134
	v_mov_b32_e32 v187, v150
	v_mov_b32_e32 v183, v135
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v253, v82 :: v_dual_add_f32 v0, v164, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v1, v165, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v164, v0, s2
	v_cndmask_b32_e64 v49, v165, v1, s2
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(4)
	v_lshl_add_u32 v2, v64, 2, 0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v4, v27, v40
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v27, v4, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 1, v1
	v_mov_b32_e32 v6, v1
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	v_and_b32_e32 v0, 28, v0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 32, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v13, v2, v1, v0
	scratch_load_b64 v[2:3], off, off offset:184 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v2, v177
	v_add_f32_e32 v1, v3, v17
	v_dual_mov_b32 v177, v90 :: v_dual_mov_b32 v176, v89
	v_mov_b32_e32 v89, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v2, v0, s2
	v_cndmask_b32_e64 v18, v3, v1, s2
	scratch_load_b64 v[2:3], off, off offset:200 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v0, v29, v199 :: v_dual_add_f32 v1, v30, v200
	v_mov_b32_e32 v150, v140
	v_mov_b32_e32 v140, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v138, v167, v19, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v50, v29, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v0, v254, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v30, v1, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v1, v255, v44 :: v_dual_mov_b32 v90, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v254, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v16, v255, v1, s2
	v_mov_b32_e32 v255, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v0, v2, v195 :: v_dual_add_f32 v1, v3, v197
	v_mov_b32_e32 v195, v112
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v2, v0, s2
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v0, s29, v235
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v3, v1, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v1, v32, v198
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v3, v28, v42 :: v_dual_add_f32 v2, v31, v196
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v0, 1, v0
	v_mov_b32_e32 v196, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v32, v1, s2
	v_cndmask_b32_e64 v148, v28, v3, s2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s28, v6
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v5, 32, v0
	v_or_b32_e32 v4, 64, v0
	v_or_b32_e32 v1, 0x60, v0
	s_clause 0x3
	buffer_load_u16 v14, v0, s[8:11], 0 offen
	buffer_load_u16 v54, v5, s[8:11], 0 offen
	buffer_load_u16 v254, v4, s[8:11], 0 offen
	buffer_load_u16 v0, v1, s[8:11], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v31, v2, s2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v3
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v1, s0, v6, 1
	v_mov_b32_e32 v126, v141
	v_mov_b32_e32 v141, v137
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s29, s29, s15
	v_mov_b32_e32 v252, v81
	v_dual_mov_b32 v82, v78 :: v_dual_mov_b32 v81, v77
	v_dual_mov_b32 v77, v91 :: v_dual_mov_b32 v78, v92
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v134, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v190, 16, v54
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	buffer_load_u16 v0, v2, s[8:11], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v13, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[25:26], off, off offset:40
	scratch_load_b64 v[31:32], off, off offset:8
	scratch_load_b64 v[27:28], off, off offset:48
	scratch_load_b64 v[40:41], off, off offset:16
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[44:45], off, off offset:208
	scratch_load_b64 v[42:43], off, off offset:176
	scratch_load_b64 v[29:30], off, off offset:56
	scratch_load_b64 v[37:38], off, off offset:168
	scratch_load_b64 v[35:36], off, off offset:304
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(9)
	v_add_f32_e32 v10, v25, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(8)
	v_dual_add_f32 v5, v32, v181 :: v_dual_add_f32 v6, v31, v146
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v9, v26, v155
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v21, v41, v163
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_add_f32_e32 v3, v45, v179
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v7, v43, v185 :: v_dual_add_f32 v8, v42, v182
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v11, v30, v159 :: v_dual_add_f32 v12, v29, v154
	v_add_f32_e32 v22, v40, v160
	v_dual_add_f32 v23, v28, v161 :: v_dual_add_f32 v24, v27, v158
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v34, v37, v162
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v162, v64, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v156, v25, v10, s2
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v25, 16, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v154, v26, v9, s2
	v_cndmask_b32_e64 v160, v29, v12, s2
	v_cndmask_b32_e64 v163, v30, v11, s2
	v_cndmask_b32_e64 v130, v45, v3, s2
	v_cndmask_b32_e64 v159, v40, v22, s2
	v_cndmask_b32_e64 v161, v41, v21, s2
	v_mov_b32_e32 v185, v128
	v_cndmask_b32_e64 v3, v31, v6, s2
	v_cndmask_b32_e64 v128, v32, v5, s2
	v_cndmask_b32_e64 v155, v27, v24, s2
	v_cndmask_b32_e64 v158, v28, v23, s2
	v_mov_b32_e32 v182, v127
	v_cndmask_b32_e64 v127, v42, v8, s2
	v_cndmask_b32_e64 v164, v43, v7, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[21:24], v162
	ds_load_b128 v[9:12], v162 offset:16
	ds_load_b128 v[5:8], v162 offset:512
	ds_load_b128 v[170:173], v162 offset:528
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v13, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:436
	scratch_load_b64 v[244:245], off, off offset:256
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v2, v36, v178 :: v_dual_add_f32 v33, v38, v39
	v_dual_add_f32 v4, v44, v180 :: v_dual_mov_b32 v179, v133
	v_dual_mov_b32 v180, v129 :: v_dual_mov_b32 v181, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v129, v36, v2, s2
	v_cndmask_b32_e64 v153, v38, v33, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[25:28], v162
	ds_load_b128 v[29:32], v162 offset:16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v13, v123, v184
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v37, v34, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v34, v166, v157
	v_mov_b32_e32 v184, v131
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v54, v21, v190
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v123, v13, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v0, v35, v145 :: v_dual_mov_b32 v133, v136
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v136, v166, v34, s2
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[166:167], off, off offset:72
	scratch_load_b64 v[145:146], off, off offset:128
	v_cndmask_b32_e64 v0, v35, v0, s2
	v_cndmask_b32_e64 v125, v44, v4, s2
	v_mov_b32_e32 v194, v111
	v_mov_b32_e32 v112, v113
	v_mov_b32_e32 v113, v114
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v64, 1, v64
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v13, v26, v134 :: v_dual_mov_b32 v174, v144
	v_dual_mov_b32 v143, v242 :: v_dual_mov_b32 v144, v243
	scratch_load_b64 v[242:243], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v13, v18, v13 :: v_dual_mul_f32 v54, v131, v54
	v_mov_b32_e32 v131, v60
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v183, v113, v183
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_add_f32_e32 v33, v124, v1
	scratch_load_b64 v[1:2], off, off offset:32 ; 8-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v132, v124, v33, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v225, v166, v65 :: v_dual_add_f32 v224, v167, v67
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v111, v242, v182 :: v_dual_add_f32 v14, v1, v217
	v_add_f32_e32 v18, v2, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v123, v1, v14, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v14, 0xbfb8aa3b, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v2, v18, s2
	v_mov_b32_e32 v1, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v14, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v33, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v178, v151 :: v_dual_fmac_f32 v19, v33, v19
	v_div_scale_f32 v33, vcc_lo, v13, v14, v13
	v_mul_f32_e32 v34, v33, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v18, v34, v33
	v_fmac_f32_e32 v34, v35, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v34, v33
	v_div_fmas_f32 v18, v18, v19, v34
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v19, v25, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v135, v18, v14, v13
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v17, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v17
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v13, v27, v134 :: v_dual_mov_b32 v4, v142
	v_mov_b32_e32 v72, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v15, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v33
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v19, v19, v17
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v17, v19, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v33, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v34, v28, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v137, v33, v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v16, v16, v34
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v17, v30, v134 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v148, v17
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v16
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v34, v34, v16
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v16, v34, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v142, v35, v34, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v16, v29, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v13
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v16, v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v14, v14
	v_mul_f32_e32 v20, 0xbfb8aa3b, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v15
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v15, null, v14, v14, v13
	v_rcp_f32_e32 v18, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v15, v18, 1.0
	v_fmac_f32_e32 v18, v36, v18
	v_div_scale_f32 v36, vcc_lo, v13, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v18
	v_fma_f32 v38, -v15, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v18
	v_fma_f32 v15, -v15, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v18, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v148, v15, v14, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v32, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v19
	v_fma_f32 v36, -v19, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v36, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v37, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v19, v37, v36
	v_fmac_f32_e32 v37, v38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v37, v36
	v_div_fmas_f32 v19, v19, v33, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v16
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v33
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v20, v20, v16
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v16, v20, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v33, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v34, v154, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v154, v19, v18, v17
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v13, null, v35, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v34, v35, v34
	v_mul_f32_e32 v36, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v13, v36, v15
	v_fmac_f32_e32 v36, v37, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v36, v15
	v_div_fmas_f32 v36, v13, v14, v36
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v31, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v157, v36, v35, v34
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v37, v156, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v37
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v14
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v13, null, v38, v38, v37
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v15, v14
	v_fma_f32 v18, -v13, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v17, v18, v14
	v_div_fixup_f32 v156, v33, v20, v16
	v_fma_f32 v13, -v13, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v13, v14, v17
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	ds_load_b128 v[17:20], v162 offset:512
	ds_load_b128 v[13:16], v162 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v33, v18, v134
	v_dual_mul_f32 v34, v17, v134 :: v_dual_mul_f32 v33, v163, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v34, v160, v34
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v160, v39, v38, v37
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v37, v20, v134 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v37, v161, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v33
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v41
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v33
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v33, v40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v161, v41, v40, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v33, v19, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v33, v159, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v35, v35
	v_mul_f32_e32 v40, 0xbfb8aa3b, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v34
	v_rcp_f32_e32 v42, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v36, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v36, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v36, -v36, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v42, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v159, v36, v35, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v34, v14, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v34, v158, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v39
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v37
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v39, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v42, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v158, v39, v38, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v37, v13, v134 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v33
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v155, v155, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v155
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v41
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v33
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v33, v40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v216, v41, v40, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v33, v16, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v153, v153, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v35, v35
	v_mul_f32_e32 v33, 0xbfb8aa3b, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v34
	v_rcp_f32_e32 v42, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v36, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v36, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v36, -v36, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v42, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v219, v36, v35, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v34, v15, v134 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v155
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v34, v147, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v162, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v162, v162, v155
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v155, v162, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v39, v38
	v_fma_f32 v43, -v37, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v38
	v_fma_f32 v37, -v37, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v163, v37, v38, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v33, v33, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v153, v33, v153
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v37, v40, v39
	v_fmac_f32_e32 v40, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v34
	v_rcp_f32_e32 v38, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v41, -v36, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v38
	v_fma_f32 v36, -v36, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v38, v40
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v38, v26, v190
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v38, v138, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v38
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v40
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v39, v39, v38
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v40, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v43
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v41, v25, v190
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v41, v136, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v41
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v43
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v42, v42, v41
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v41, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v47, v44
	v_div_fixup_f32 v47, v40, v39, v38
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v38, v9, v134
	v_mul_f32_e32 v39, v12, v134
	v_mul_f32_e32 v40, v11, v134
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v53, v38
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v53, v22, v190
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v43, v46, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v39, v55, v39
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v55, v28, v190
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v40, v52, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v37, v33, v153
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v46, v36, v35, v34
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v36, v23, v134 :: v_dual_mul_f32 v217, v124, v55
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v55, v27, v190
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v37, v10, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v43, v42, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v36, v50, v36
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v34, v21, v134
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v218, v123, v55 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v217
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v37, v56, v37
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v35, v24, v134
	v_mul_f32_e32 v43, v5, v134
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v34, v48, v34
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v7, v134
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v35, v51, v35
	v_mul_f32_e32 v0, v0, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v43, v8, v134
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v33, v22, v134
	v_mul_f32_e32 v42, v6, v134
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v43, v130, v43
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v217 :: v_dual_mul_f32 v48, v125, v48
	v_mov_b32_e32 v125, v57
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v33, v49, v33
	v_mul_f32_e32 v42, v129, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v55, v55
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v172, v134
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.h, 0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v33, v33, v135 :: v_dual_mul_f32 v34, v34, v137
	v_mul_f32_e32 v35, v35, v142
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v52, v127, v52
	v_mov_b32_e32 v130, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v33.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v58, v40, v160
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v55, v55, v56
	v_mul_f32_e32 v56, 0xbfb8aa3b, v218
	v_mov_b32_e32 v40, v59
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v170, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v44, v163, v162, v155
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v221, 1.0, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v34, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v155, v103, v213
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v50, v3, v50 :: v_dual_add_f32 v163, v97, v220
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v229, null, v221, v221, v217
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v218
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v220, v145, v248
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v226, v229
	scratch_load_b64 v[248:249], off, off offset:120 ; 8-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v53, v132, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v56, v56
	v_dual_mov_b32 v132, v63 :: v_dual_mul_f32 v51, v173, v134
	scratch_load_b64 v[123:124], off, off offset:248 ; 8-byte Folded Reload
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v171, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v135, v194, v212
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v161
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v229, v226, 1.0
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v164, v51
	scratch_load_b64 v[164:165], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v56, v56, v57
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v49, v128, v49 :: v_dual_fmac_f32 v226, v55, v226
	v_mov_b32_e32 v161, v250
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v223, 1.0, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v56, v38, v156
	v_dual_mov_b32 v162, v251 :: v_dual_mov_b32 v251, v88
	v_mov_b32_e32 v250, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v228, null, v223, v223, v218
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v57, v39, v157
	v_mul_f32_e32 v49, v49, v219
	v_mul_f32_e32 v45, v51, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v227, v228
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v47, v53, v47
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_dual_add_f32 v87, v250, v175 :: v_dual_mul_f32 v48, v48, v216
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v35, v35
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v50, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v50.h, v129.h
	scratch_store_b32 off, v87, off offset:304 ; 4-byte Folded Spill
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v87, v84, v232
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v51.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v228, v227, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v143, v208
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v87, off offset:300 ; 4-byte Folded Spill
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v47, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v227, v55, v227
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v55, v37, v154
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v129
	v_mov_b16_e64 v129.l, v35.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v52, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s4, v55, v55
	v_add3_u32 v59, v33, v37, 0x7fff
	v_mov_b16_e64 v33.h, v129.h
	v_mov_b16_e32 v33.l, v34.h
	v_dual_mov_b32 v37, v85 :: v_dual_mov_b32 v38, v86
	v_dual_mov_b32 v85, v95 :: v_dual_mov_b32 v86, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v33, 1, v33
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v216, v54, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, v46.h
	v_cmp_o_f32_e64 s5, v46, v46
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add3_u32 v88, s29, s28, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v60, v34, v33, 0x7fff
	v_mov_b32_e32 v33, v61
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v61, v0, v159 :: v_dual_and_b32 v0, 1, v129
	v_mov_b32_e32 v34, v62
	v_mul_f32_e32 v36, v36, v148
	scratch_load_b64 v[147:148], off, off offset:136 ; 8-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v55.h
	v_add3_u32 v62, v35, v0, 0x7fff
	v_mov_b16_e64 v0.h, v129.h
	v_mov_b16_e32 v0.l, v36.h
	v_mov_b32_e32 v159, v168
	v_mov_b16_e32 v62.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v189, v251, v189 :: v_dual_and_b32 v0, 1, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v63, v36, v0, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:264
	scratch_load_b32 v0, off, off offset:216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v65, v148, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v56.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v215, v2, v68
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v214, v3, v0
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[246:247], off, off offset:160
	scratch_load_b32 v0, off, off offset:224
	scratch_load_b64 v[67:68], off, off offset:104
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v213, v249, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v34, v243, v187
	v_add_f32_e32 v187, v122, v255
	v_add_f32_e32 v255, v89, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v149.l, 0x7fff, v60.h, s0
	v_and_b32_e32 v60, 1, v129
	v_cndmask_b16 v149.h, 0x7fff, v59.h, vcc_lo
	v_mov_b16_e64 v59.h, v129.h
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_mov_b16_e64 v129.l, v57.h
	v_add3_u32 v55, v55, v60, 0x7fff
	v_mov_b16_e64 v60.h, v129.h
	v_mov_b16_e32 v60.l, v61.h
	v_dual_mov_b32 v160, v169 :: v_dual_mov_b32 v169, v80
	v_dual_mov_b32 v168, v79 :: v_dual_and_b32 v59, 1, v59
	v_mov_b16_e64 v55.l, v216.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v79, v169, v178
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v56, v56, v59, 0x7fff
	v_mov_b16_e64 v59.h, v129.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v79, off offset:216 ; 4-byte Folded Spill
	v_add_f32_e32 v79, v168, v239
	scratch_store_b32 off, v79, off offset:184 ; 4-byte Folded Spill
	v_dual_mov_b32 v80, v76 :: v_dual_mov_b32 v79, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_add_f32_e32 v75, v80, v204
	scratch_store_b32 off, v75, off offset:176 ; 4-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v211, v246, v71 :: v_dual_add_f32 v210, v247, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v197, v68, v196
	v_add_f32_e32 v196, v67, v132
	v_dual_add_f32 v132, v99, v133 :: v_dual_add_f32 v133, v85, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v154, v144, v209
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v126, v78, v4
	scratch_load_b32 v4, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v206, v245, v193
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v212, v248, v40
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v40, v106, v141 :: v_dual_add_f32 v207, v244, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v198, v124, v191 :: v_dual_add_f32 v87, v83, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v4, off, off offset:420 ; 4-byte Folded Reload
	scratch_store_b32 off, v87, off offset:228 ; 4-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v199, v123, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[127:128], off, off offset:240
	scratch_load_b32 v0, off, off offset:316
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v75, v79, v4
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v4, s15, v235
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_add_u32 v219, s15, 4, v4
	v_lshl_add_u32 v235, s15, 5, v4
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	scratch_store_b64 off, v[4:5], off offset:192 ; 8-byte Folded Spill
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v236, v127, v192
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v137, v128, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[240:241], off, off offset:152
	scratch_load_b32 v0, off, off offset:320
	v_mov_b32_e32 v193, v116
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v35, v240, v205
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v191, v241, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[237:238], off, off offset:144
	scratch_load_b32 v0, off, off offset:332
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v240, v35, s2
	v_cndmask_b32_e64 v92, v241, v191, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v158, v238, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v238, v158, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v237, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v237, v36, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v134, v118, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v153, v117, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v136, v195, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v142, v110, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v138, v109, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v157, v104, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v152, v102, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v151, v101, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v98, v0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v94, v0
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v93, v0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v177, v0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v176, v222
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v38, v0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v37, v0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v253, v0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v252, v0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v82, v0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v81, v0
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v160, v0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v159, v0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v162, v0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v161, v0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	scratch_load_b64 v[0:1], off, off       ; 8-byte Folded Reload
	v_dual_add_f32 v233, v165, v69 :: v_dual_add_f32 v234, v164, v66
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v66, v147, v70
	scratch_load_b64 v[69:70], off, off offset:232 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v231, v1, v230 :: v_dual_add_f32 v230, v0, v72
	scratch_load_b64 v[71:72], off, off offset:112 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v209, v70, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v58.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v131, v100, v150 :: v_dual_add_f32 v150, v77, v140
	v_mov_b32_e32 v141, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v140, v73 :: v_dual_and_b32 v59, 1, v59
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v73, v141, v201
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v58, v58, v59, 0x7fff
	v_and_b32_e32 v59, 1, v129
	v_mov_b16_e64 v129.l, v42.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v73, off offset:56 ; 4-byte Folded Spill
	v_add_f32_e32 v73, v140, v203
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v178.l, 0x7fff, v58.h, s0
	v_cmp_o_f32_e64 s0, v42, v42
	v_and_b32_e32 v41, 1, v129
	v_mov_b16_e64 v129.l, v43.h
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v41, v42, v41, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v42, v30, v190
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v205, v72, v202
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v202.h, 0x7fff, v62.h, s1
	v_cmp_o_f32_e64 s1, v57, v57
	v_add3_u32 v57, v57, v59, 0x7fff
	v_and_b32_e32 v59, 1, v60
	v_mov_b16_e64 v62.h, v129.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v200, v71, v33 :: v_dual_add_f32 v33, v105, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v178.h, 0x7fff, v57.h, s1
	v_add3_u32 v52, v61, v59, 0x7fff
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[59:60], null, s15, 48, v[4:5]
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	scratch_load_b32 v4, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v53, 1, v62
	v_cmp_o_f32_e64 s1, v48, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v75, off offset:88
	scratch_store_b32 off, v73, off offset:48
	v_cndmask_b16 v139.l, 0x7fff, v56.h, vcc_lo
	v_add3_u32 v48, v48, v53, 0x7fff
	v_and_b32_e32 v53, 1, v129
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	scratch_store_b64 off, v[59:60], off offset:8 ; 8-byte Folded Spill
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v49.h
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v59, v31, v190 :: v_dual_add_f32 v182, v112, v181
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v181, v90, v179
	v_add_f32_e32 v179, v86, v174
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v174.h, 0x7fff, v41.h, s0
	v_cmp_o_f32_e64 s0, v43, v43
	v_add3_u32 v43, v43, v53, 0x7fff
	v_cndmask_b16 v174.l, 0x7fff, v52.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, vcc_lo, v217, v221, v217
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v202.l, 0x7fff, v63.h, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v175.h, 0x7fff, v43.h, s0
	v_and_b32_e32 v43, 1, v129
	v_mov_b16_e64 v129.l, v45.h
	v_cndmask_b16 v139.h, 0x7fff, v55.h, s4
	v_mov_b16_e64 v55.h, v129.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v148, v65, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, s3, v218, v223, v218
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v44, v44
	v_add3_u32 v44, v44, v50, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v41, v226
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v175.l, 0x7fff, v48.h, s1
	v_cmp_o_f32_e64 s0, v49, v49
	v_and_b32_e32 v48, 1, v51
	v_add3_u32 v43, v49, v43, 0x7fff
	v_and_b32_e32 v49, 1, v129
	v_mov_b16_e64 v129.l, v47.h
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v156, 16, v254
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v45, v45
	v_and_b32_e32 v51, 1, v55
	v_add3_u32 v46, v46, v48, 0x7fff
	v_and_b32_e32 v48, 1, v129
	v_add3_u32 v45, v45, v49, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v229, v50, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v254.h, 0x7fff, v43.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v43, v52, v227
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v42, v56, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v208, v69, v125
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v254.l, 0x7fff, v44.h, s4
	v_add3_u32 v44, v47, v48, 0x7fff
	v_add3_u32 v47, v216, v51, 0x7fff
	v_cndmask_b16 v125.l, 0x7fff, v46.h, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v49, v226
	v_fma_f32 v46, -v228, v43, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v147, v66, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v49, v29, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v229, v50, v41
	v_fmac_f32_e32 v43, v46, v227
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v201.h, 0x7fff, v44.h, s6
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v46, v48, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v226, v50
	v_fma_f32 v49, -v228, v43, v52
	s_mov_b32 vcc_lo, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v164, v234, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v49, v227, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v53, v23, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v125.h, 0x7fff, v45.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v165, v233, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v24, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v48, v48
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v44, v44, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v43, v223, v218
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v46
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v222, v146, v130
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v45, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v221, v217
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v44, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v216, v216
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v48, v51
	v_exp_f32_e32 v48, v49
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v45, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v201.l, 0x7fff, v47.h, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v0, v230, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v41.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v186, v121, v186
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v44, v44, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v48, v48, v49
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v49, 1, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v1, v231, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v50
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v52, v32, v190
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v49, v41, v49, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v58, v58, v59
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v130, v120, v185 :: v_dual_mul_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v48, v48, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v185, v193, v184
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v50, v47, 1.0
	v_mov_b32_e32 v192, v115
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v41
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v59, s3, v46, v48, v46
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, vcc_lo, v42, v44, v42
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v184, v192, v180
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v167, v224, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v41, v55, 1.0
	v_mul_f32_e32 v61, v54, v47
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v10, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v166, v225, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v55, v60, v55 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v58
	v_fma_f32 v63, -v50, v61, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v56, v56, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v64, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v61, v63, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v9, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v41, v64, v59
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v50, v61, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s1
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v52, v53, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v64, v62, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v50, v47, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v41, v64, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v54, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v47, v44, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v53, v57, v63
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v43.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v55, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v45.h, v129.h
	v_cndmask_b16 v115.h, 0x7fff, v49.h, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_add_f32 v188, v119, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v48, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v54, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v53, v53, v51
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v41, v52, v41 :: v_dual_add_f32 v44, 1.0, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v146, v222, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v47
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v18, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v43, v45, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v44, v44, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v52, v52, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v145, v220, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v48
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v59, v17, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v115.l, 0x7fff, v45.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v47, v46, 1.0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v56, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, s0, v58, v44, v58
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v45, v46
	v_div_scale_f32 v45, vcc_lo, v51, v53, v51
	v_fma_f32 v55, -v48, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v57
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v2, v215, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v45, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v3, v214, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v55, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v55, 0xbfb8aa3b, v52
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v47, v56, v45
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v64, v11, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v62, v60, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v55
	v_cndmask_b32_e64 v63, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v61, v46
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v65, v12, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v48, v62, v60
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s1
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v47, v56, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v62, v61, v49 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v52
	v_mov_b32_e32 v73, v121
	v_div_fmas_f32 v45, v45, v46, v56
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v48, v62, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v48, v63
	v_mov_b32_e32 v74, v122
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v54, v54, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v49, v62
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v59, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v45, v53, v51
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v180, 0x80, v88
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v44, v46, v44, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v55, v47
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v41.h
	v_mov_b16_e64 v43.h, v129.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v44, v54, v44 :: v_dual_add_f32 v47, 1.0, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v48, v55
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v49, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v50, 1, v129
	v_and_b32_e32 v43, 1, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v52
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_mov_b32 v167, v98
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, v44.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v51.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v46, v46, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v41, v43, 0x7fff
	v_add3_u32 v50, v42, v50, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v48, v49, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v249, v213, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v55, v20, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v147.h, 0x7fff, v50.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, vcc_lo, v52, v47, v52
	v_dual_fmac_f32 v49, v51, v49 :: v_dual_mul_f32 v54, v54, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v3, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v53, v41, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v147.l, 0x7fff, v43.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v56, v50, v49 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v248, v212, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v51, v41
	v_div_scale_f32 v51, s0, v57, v46, v57
	v_fma_f32 v59, -v48, v56, v50
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v63, v19, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v60, v51, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v45.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v59, v49
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v62, v62, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v53, v60, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v247, v210, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v48, v56, v50
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v60, v59, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v48, v49, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_exp_f32_e32 v49, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v53, v60, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v47, v48, v47, v52
	v_div_fmas_f32 v41, v51, v41, v60
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v51, v6, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v62
	v_ldexp_f32 v49, v49, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v46, v57
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v45, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v50
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_mul_f32 v50, v58, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v44, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v246, v211, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v63, v5, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, null, v49, v49, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v107.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v51
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v53, v55, v63
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v50, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v107.l, 0x7fff, v42.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v69, v208, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v53, v41
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v14, v190
	v_mul_f32_e32 v60, v13, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v43, v43, v62
	v_fma_f32 v42, -v51, v48, 1.0
	v_div_scale_f32 v55, vcc_lo, v54, v49, v54
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v148, 16, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v48, v42, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v70, v209, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v59, v59, v60 :: v_dual_mov_b32 v122, v94
	v_mov_b32_e32 v215, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v121, v93 :: v_dual_mul_f32 v42, v42, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v58, v55, v48 :: v_dual_mov_b32 v165, v86
	v_fma_f32 v53, -v46, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v64, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v42
	v_dual_mov_b32 v217, v118 :: v_dual_mov_b32 v216, v117
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v65, v8, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v53, v50
	v_div_scale_f32 v53, s0, v62, v43, v62
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v51, v58, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v63, v53, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v41.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v58, v61, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v46, v63, v53
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v47.h, v129.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v51, v58, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v59 :: v_dual_fmac_f32 v63, v61, v50
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v51, v48, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v46, v63, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v45.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v245, v206, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v44, 1, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v50, v63
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s3
	v_ldexp_f32 v53, v60, v55
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v244, v207, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v46, v43, v62
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v51, v50
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v57, v7, v190
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v55, v56, v65
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v48, v48, v49, v54
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v53, v53, v42
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v52, v52, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v45, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, null, v46, v46, v59
	v_rcp_f32_e32 v49, v50
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v48, v55, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v41, v44, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v52, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v41, v41
	v_mov_b16_e64 v129.l, v48.h
	v_cndmask_b16 v145.h, 0x7fff, v47.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, vcc_lo, v42, v53, v42
	v_fma_f32 v52, -v50, v49, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v145.l, 0x7fff, v44.h, s0
	v_and_b32_e32 v44, 1, v129
	v_cmp_o_f32_e64 s0, v48, v48
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v16, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v52, v49
	v_fma_f32 v52, -v51, v45, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v48, v44, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v60, v15, v190
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v124, v198, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v48, v47, v49
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s1, v59, v46, v59
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v146.h, 0x7fff, v44.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v72, v205, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v50, v48, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v52, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e64 v41.h, v129.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v44, v44, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v55, v49
	v_fma_f32 v54, -v51, v56, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v71, v200, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v50, v48, v47
	v_fmac_f32_e32 v56, v54, v45
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v50, v55, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v43, v41, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v61
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v47, v49, v48
	v_fma_f32 v48, -v51, v56, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v51, v171, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v48, v45, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v47, v53, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v51, v58, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v45, v46, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v48, v54
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v51, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v123, v199, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v170, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	v_cndmask_b16 v146.l, 0x7fff, v41.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v48, v46
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v52, v57, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v67, v196, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v58, v25, v156
	v_mov_b32_e32 v166, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v68, v197, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v52, v45
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v48
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v97, v57, v58 :: v_dual_and_b32 v48, 1, v129
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v52, v26, v156
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v128, v137, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v42, v48, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v127, v236, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v96, v51, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v47, v47, v50
	v_div_scale_f32 v57, s3, v50, v47, v50
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v55, v42
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v51, v172, v190
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v45.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v43.h, v129.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v51, v53, v51 :: v_dual_mov_b32 v214, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v63, v99 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v42, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v64, v100 :: v_dual_and_b32 v43, 1, v43
	v_mov_b32_e32 v69, v105
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v53, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v59, v55
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v173, v190
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v119, v188, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v45, v43, 0x7fff
	v_mov_b32_e32 v65, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v62, v57, v55
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v56, v56, v59
	v_mov_b32_e32 v66, v102
	v_mov_b32_e32 v211, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v243, v34, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v42, v62, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v95.h, 0x7fff, v48.h, s0
	v_dual_mov_b32 v67, v103 :: v_dual_mov_b32 v68, v104
	v_mov_b16_e64 v48.h, v129.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v62, v59, v55 :: v_dual_mul_f32 v59, v29, v156
	v_mov_b32_e32 v71, v89
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s15, s11
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v25, v25, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v62, v57
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v58, v58, v59 :: v_dual_mul_f32 v59, v23, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, null, v46, v46, v44
	v_div_scale_f32 v52, vcc_lo, v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v36, v36, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v49
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v29, v29, v148
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v4, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v49, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v41, v54, v41 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v96
	v_mul_f32_e32 v60, v52, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v49, v60, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v60, v61, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v49, v60, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v54, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v49, v41, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v42, v42, v55, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v41, v41, v46, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v52, v54, v61
	v_ldexp_f32 v44, v53, v49
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v22, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v47, v50
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v100, 1.0, v52
	v_dual_add_f32 v101, 1.0, v44 :: v_dual_mul_f32 v98, v56, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v45, v92, v45 :: v_dual_mov_b32 v70, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v105, null, v100, v100, v96
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v99, v51, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v108, null, v101, v101, v97
	v_rcp_f32_e32 v106, v105
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v41.h, v129.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v99.h
	v_mov_b32_e32 v210, v109
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v109, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v95.l, 0x7fff, v43.h, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v43, v28, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v110, vcc_lo, v96, v100, v96
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v105, v106, 1.0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v0, v0, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v99, v41, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v43, v27, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v113, s0, v97, v101, v97
	v_fmac_f32_e32 v106, v42, v106
	v_fma_f32 v42, -v108, v109, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v98.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v120, v130, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v112, v110, v106
	v_fmac_f32_e32 v109, v42, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v242, v111, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v41
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v41, v21, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v117, -v105, v112, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v114, v113, v109 :: v_dual_mul_f32 v93, v42, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v116, 0, 0x42800000, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v102, 1, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v112, v117, v106
	v_fma_f32 v42, -v108, v114, v113
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v118, 0xbfb8aa3b, v93
	v_dual_fmac_f32 v116, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v41, v91, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v105, v112, v110
	v_fmac_f32_e32 v114, v42, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v118
	v_exp_f32_e32 v43, v116
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v106, v112
	v_fma_f32 v47, -v108, v114, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v30, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v46, v100, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v99, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v93
	v_ldexp_f32 v42, v43, v42
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v53, v53, v54
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.l, 0x7fff, v1.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v43, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v47, v109, v114
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v44, v44, v101, v97
	v_mov_b32_e32 v1, v81
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v45.h
	v_mov_b32_e32 v101, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v43, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v42, v42, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v98, v102, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	v_mov_b32_e32 v102, v252
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.h, 0x7fff, v44.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, null, v43, v43, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	v_dual_mov_b32 v103, v253 :: v_dual_and_b32 v44, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v50, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v47, v46, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v53
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v41.h
	v_add3_u32 v44, v45, v44, 0x7fff
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v10, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v51, v46
	v_div_scale_f32 v51, vcc_lo, v0, v42, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v49, v50, 1.0
	v_dual_mov_b32 v100, v77 :: v_dual_mul_f32 v55, v51, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v165, v179, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v41, v48, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s0, v93, v43, v93
	v_fma_f32 v54, -v47, v55, v51
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v21, v21, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v27, v27, v148 :: v_dual_mul_f32 v56, v52, v50
	v_mov_b32_e32 v97, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v54, v46
	v_mov_b32_e32 v2, v82
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v30, v30, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v49, v56, v52
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v10, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v47, v55, v51
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v54, v50
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v54, v9, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v47, v46, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v57
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v49, v56, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v0, v46, v42, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v49, v49, v50, v56
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v24, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s3
	v_ldexp_f32 v47, v47, v52
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v58
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v49, v43, v93
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v35, v35, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v49, v51
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v36, v43
	v_mul_f32_e32 v0, v35, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v87.h, 0x7fff, v44.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v47, v47, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v50, v32, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v73, v186, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v49, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v36.h
	v_mov_b16_e64 v42.h, v129.h
	v_cndmask_b16 v87.l, 0x7fff, v48.h, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v57, v31, v156
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, vcc_lo, v53, v47, v53
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v43, v45, 1.0
	v_div_scale_f32 v42, null, v35, v35, v58
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v56, v56, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v144, v154, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v45, v44, v45
	v_rcp_f32_e32 v48, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v74, v187, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v56
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v0.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v55, v51, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v143, v39, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v44, v44, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v46, 1, v129
	v_add3_u32 v41, v36, v41, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v42, v48, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v61, 0, 0x42800000, s3
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v49, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v0, v46, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s0, v58, v35, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v43, v55, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v60, v50, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v216, v153, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v59, v45
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v31, v31, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v42, v60, v50
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v9, v148
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v43, v55, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v60, v59, v48
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v11, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v43, v45, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v60, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v43, v47, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v217, v134, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v48, v60
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	v_ldexp_f32 v50, v57, v51
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v52, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v42, v35, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v45, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_mul_f32 v43, v51, v43
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v18, v156
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v35, v49, v35 :: v_dual_add_f32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v50, v50, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v43.h
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v57, v17, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v42, v42, v56
	v_rcp_f32_e32 v47, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v35.h
	v_mov_b16_e64 v0.h, v129.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v36, v48
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v8, v156
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v26, v26, v148
	v_mul_f32_e32 v17, v17, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 1, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v11, v11, v148
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v18, v18, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v45, v47, 1.0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v8, v8, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v0, v35, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v47, v49, v47 :: v_dual_mov_b32 v72, v90
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v90.h, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v90.l, 0x7fff, v41.h, s0
	v_and_b32_e32 v41, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v44, v50, v44
	v_fma_f32 v49, -v48, v36, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v43, v41, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v43, v46, v47 :: v_dual_fmac_f32 v36, v49, v36
	v_div_scale_f32 v49, s1, v56, v42, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v94.h, 0x7fff, v41.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v193, v185, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v45, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v49, v36
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v41, v41, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v52, v47
	v_fma_f32 v51, -v48, v53, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v192, v184, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v45, v43, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v51, v36 :: v_dual_mul_f32 v46, v52, v57
	v_mov_b32_e32 v164, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v45, v47, v43
	v_fma_f32 v45, -v48, v53, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v12, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v45, v36, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v43, v50, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v48, v55, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v36, v42, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v45, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v48, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v54, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v214, v182, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v94.l, 0x7fff, v0.h, s0
	v_mov_b16_e64 v129.l, v35.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v45, v42
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v56, v19, v156
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v49, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v215, v183, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v42, 1.0, v42 :: v_dual_mul_f32 v49, v20, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v55, v55, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v44, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v42, v42, v41
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v48, v48, v49
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v35, v45, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v0, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v195, v136, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v44, v44, v46
	v_div_scale_f32 v56, s3, v46, v44, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v52, v35
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v6, v156
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v47, v0, 1.0
	v_mov_b32_e32 v85, v168
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v194, v135, s2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v53, v53, v59 :: v_dual_fmac_f32 v0, v51, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, vcc_lo, v41, v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v35, v52, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v48
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v5, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v58, v51, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v75.h, 0x7fff, v45.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v52, v57, v52 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v47, v58, v51
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v50, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v56, v52
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v36.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v58, v60, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v35, v61, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v43.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v47, v58, v51
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v50, v54, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v61, v59, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v55
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v47, v0, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v35, v61, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v0, v0, v42, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v35, v52, v61
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v36, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v71, v255, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v50, v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v51, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v35, v44, v46
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v14, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v75.l, 0x7fff, v43.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v49, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v72, v181, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v56, v13, v156
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v61, v7, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v41, v41, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v49, v49, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v42, v44, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v210, v138, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v45
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v53, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, s0, v55, v41, v55
	v_fmac_f32_e32 v44, v43, v44
	v_div_scale_f32 v43, vcc_lo, v48, v50, v48
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v51, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v166, v163, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v54, v54, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v45, v46, 1.0
	v_mul_f32_e32 v53, v43, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v211, v142, s2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v21, v61, v21 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v52, v46
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v42, v53, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v0.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v59, v57, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v58, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v36.l, v35.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v45, v59, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v53, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v59, v58, v46 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v49
	v_div_fmas_f32 v42, v42, v44, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v36.h, v129.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v45, v59, v57
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v45, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v50, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v44, v46, v59
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v46, v56, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v48.h, v129.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v47, v0, v47, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v44, v41, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v52, v43
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v46, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v51, v41
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v45, v52
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v70, v40, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v52, v16, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v41.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v43, v43, v49
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	v_mov_b32_e32 v96, v37
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v164, v133, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v44, v44, v54
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v27, v37, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.h, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v0, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v35, 1, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, vcc_lo, v49, v43, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v48, -v45, v46, 1.0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v51, v51, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.l, 0x7fff, v36.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v69, v33, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v60, v15, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v48, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v50, v0, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v67, v155, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v59, v59, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v53, v47, v46 :: v_dual_fmac_f32 v0, v48, v0
	v_div_scale_f32 v48, s0, v54, v44, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v45, v53, v47
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v60, v170, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v57, v48, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v56, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v68, v157, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v50, v57, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v51
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v45, v53, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v56, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v42, v36, 0x7fff
	v_add3_u32 v35, v41, v35, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v45, v46, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v58
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v50, v57, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v43, v45, v43, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v48, v0, v57
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v171, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v50
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v50, v52, v60
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v44, v54
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v67.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v47
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v47, v55, v48
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v50, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v46, v46, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v47, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v45.h
	v_mov_b16_e64 v43.h, v129.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v44, v0
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v63, v132, s2
	v_cndmask_b32_e64 v52, v66, v152, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v67.l, 0x7fff, v35.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 1, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v60, v173, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v65, v151, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v36, v36, v59
	v_fma_f32 v35, -v48, v44, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v45, v0, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v64, v131, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v57, s0, v59, v36, v59
	v_fmac_f32_e32 v44, v35, v44
	v_div_scale_f32 v35, vcc_lo, v51, v46, v51
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v0, v0, v26
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v53, v172, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v54, v35, v44 :: v_dual_and_b32 v43, 1, v129
	v_fma_f32 v26, -v41, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v0
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v5, v5, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v42, v43, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v19, v19, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v26, v49
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v26, v55, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v48, v54, v35
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v22, v22, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v57, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v55, v44
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v7, v7, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v41, v56, v57
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v48, v54, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v55, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	v_exp_f32_e32 v25, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v35, v44, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v41, v56, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v35, v46, v51
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v13, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v49, v56
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v52, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v60, v167, v3, s2
	scratch_load_b32 v3, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v58
	v_ldexp_f32 v25, v25, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v41, v36, v59
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v68, v49, v35
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v64, 1.0, v25
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v25, v50, v53
	v_dual_mov_b32 v49, v79 :: v_dual_mov_b32 v50, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v44, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v64, v64, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v63, v25, v36
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.h, 0x7fff, v43.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v69
	v_div_scale_f32 v76, vcc_lo, v0, v64, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.l, v63.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, null, v66, v66, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v35.h, v129.h
	v_cndmask_b16 v25.l, 0x7fff, v47.h, s0
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v79, v28, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v36, -v69, v70, 1.0
	v_div_scale_f32 v28, s0, v26, v66, v26
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v22, v60, v22 :: v_dual_and_b32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v70, v36, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v68.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v100, v150, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v65, v63, v35, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v73, v74, 1.0
	v_mul_f32_e32 v77, v76, v70
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v35, v78, v79
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v24, v24, v148 :: v_dual_and_b32 v41, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v74, v36, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v69, v77, v76
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v72, v68, v41, 0x7fff
	v_dual_mov_b32 v51, v250 :: v_dual_mul_f32 v38, v28, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v77, v36, v70
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v39
	v_mov_b32_e32 v52, v251
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v15, v15, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v73, v38, v28
	v_fma_f32 v39, -v69, v77, v76
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v12, v12, v148
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v20, v20, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v36, v74
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v39, v70, v77
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v73, v38, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v39, v64, v0
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v6, v6, v148
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v74, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v22, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v28, v66, v26
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v0.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v37, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v37.h, v129.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v36
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v21, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.h, 0x7fff, v72.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_mov_b16_e32 v37.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v22, v22, v35
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v28, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v65.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v40, 1.0, v26 :: v_dual_and_b32 v37, 1, v129
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v101, v126, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v36, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v26, v26, v30
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v30, v23, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v41
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v39, v34, v39
	v_div_scale_f32 v34, vcc_lo, v35, v22, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v23, v44, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v29, s1, v27, v40, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v41, v42, 1.0
	v_mul_f32_e32 v46, v34, v39
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v47, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v45, v42
	v_fma_f32 v45, -v38, v46, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v44
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v48, v29, v42
	v_fmac_f32_e32 v46, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s3
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v121, v3, s2
	scratch_load_b32 v3, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v33, v33, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v38, v46, v34
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v47, v45
	v_exp_f32_e32 v38, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v30, v30, v39, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v30, v22, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v43, v122, v3, s2
	scratch_load_b32 v3, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v24, v43, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v41, v48, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v24, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v43, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.l, 0x7fff, v28.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v52, v189, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v24.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v41, v48, v29
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v55, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v39, v42, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e64 v0.h, v129.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v38, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, null, v29, v29, v26
	v_div_fixup_f32 v27, v34, v40, v27
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v37.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v59, v60
	v_div_scale_f32 v61, vcc_lo, v26, v29, v26
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, null, v30, v30, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v57, v58
	v_fma_f32 v33, -v60, v59, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v56, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v59, v33, v59
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v33, v32, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, s0, v23, v30, v23
	v_mul_f32_e32 v52, v61, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v28, v28, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v28
	v_exp_f32_e32 v34, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v53, v176, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v58, v57, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v53, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v0, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v54, v177, v3, s2
	scratch_load_b32 v3, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v33, v32, v57 :: v_dual_mul_f32 v10, v54, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v51, v51, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v60, v52, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v31, v51, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v52, v0, v59
	v_fma_f32 v0, -v58, v33, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v60, v52, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v0, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v36, v59, v52
	v_fma_f32 v32, -v58, v33, v32
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v35, v29, v26
	v_div_fmas_f32 v32, v32, v57, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v31
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v10, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v32, v30, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v27, v56, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v34, v36
	v_exp_f32_e32 v0, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v24, v55, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v10.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v9, v9
	v_and_b32_e32 v24, 1, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v32, v32, v28
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v10, v24, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v9.h
	v_mov_b16_e64 v0.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v29, v29, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v0.h, 0x7fff, v26.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v23, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v35, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.l, 0x7fff, v30.h, s0
	v_add3_u32 v27, v9, v27, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v9, v84, v3, s2
	scratch_load_b32 v3, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v26, v33
	v_div_scale_f32 v10, vcc_lo, v28, v32, v28
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v18, v9, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v30, v10, v33 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v18
	v_fmac_f32_e32 v35, v26, v35
	v_div_scale_f32 v26, s3, v31, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v23, v30, v10
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v38, v26, v35
	v_fmac_f32_e32 v30, v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v34, v38, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v23, v30, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v38, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v33, v30
	s_mov_b32 vcc_lo, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v34, v38, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v32, v28
	v_div_fmas_f32 v26, v26, v35, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v30, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v9, v96, v3, s2
	scratch_load_b32 v3, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v9, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v11, v26, v29, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v26, 1.0, v30 :: v_dual_mul_f32 v11, v9, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v26, v26, v18
	v_div_scale_f32 v34, vcc_lo, v18, v26, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v29, v30, v29 :: v_dual_mov_b32 v86, v169
	v_mul_f32_e32 v35, v34, v29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, v97, v3, s2
	scratch_load_b32 v3, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v12, v36, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v12, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v129.h
	v_mov_b16_e64 v129.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, v83, v3, s2
	scratch_load_b32 v3, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s5
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v24.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_and_b32 v24, 1, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v10, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v23, v23, v17
	v_rcp_f32_e32 v32, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v31, v102, v3, s2
	scratch_load_b32 v3, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v31, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v103, v3, s2
	scratch_load_b32 v3, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v33, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v30, v86, v3, s2
	scratch_load_b32 v3, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v20, v30, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v27, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v30, v32
	v_div_scale_f32 v30, s0, v17, v23, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v28, v35, v34
	v_dual_mul_f32 v38, v30, v32 :: v_dual_fmac_f32 v35, v37, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v27, v38, v30
	v_fma_f32 v28, -v28, v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v33, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v29, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v27, -v27, v38, v30
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v11, v11
	v_mov_b16_e64 v11.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v18, v28, v26, v18
	v_div_fmas_f32 v27, v27, v32, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cndmask_b16 v24.l, 0x7fff, v12.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v27, v23, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v129.l, v6.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v11.l, v5.h
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v11, v5, v11, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, v85, v3, s2
	scratch_load_b32 v3, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v19, v36, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v19
	v_ldexp_f32 v30, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v29, v37
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v30, v30, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v29, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v26
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v10, 1.0, v23 :: v_dual_and_b32 v23, 1, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v10, v10, v19
	v_fma_f32 v28, -v26, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v6, v23, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v6, s0, v20, v30, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v28, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v27, v18
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v14, v14, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v5, v6, v17
	v_fma_f32 v31, -v26, v5, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v18, v27, 1.0
	v_fmac_f32_e32 v5, v31, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s3, v19, v10, v19
	v_fma_f32 v6, -v26, v5, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v32, v23, v27
	v_div_fmas_f32 v5, v6, v17, v5
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v5, v5, v30, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v28, v1, v3, s2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:176
	scratch_load_b32 v3, off, off offset:24
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v28, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v29, v50, v1, s2
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v14, v29, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v18, v32, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v32, v29, v27
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v6, -v18, v32, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v6, v6, v27, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v6, v10, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v19.h, v129.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v6.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v7, v18, v10
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v10, v16, v148 :: v_dual_and_b32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v6, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v2, v1, s2
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v2, v171, v148
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v33, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v8, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v129
	v_add3_u32 v23, v5, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v26, v49, v1, s2
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v26, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v8, v141, v1, s2
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v8, v8, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	v_ldexp_f32 v10, v16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v10, v10, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, s1, v13, v10, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v27, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v17, v17, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v20, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_mul_f32_e32 v34, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v20, v34, v30
	v_fmac_f32_e32 v34, v36, v27
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v11, v140, v1, s2
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v11, v11, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v15, null, v7, v7, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v15, v16, 1.0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v5, 1.0, v17 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v26, v16
	v_div_scale_f32 v26, vcc_lo, v14, v7, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v5, v5, v8
	v_mul_f32_e32 v17, v26, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, s0, v8, v5, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v31, v28
	v_fma_f32 v32, -v15, v17, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v17, v32, v16 :: v_dual_add_f32 v18, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v28, v31, 1.0
	v_fma_f32 v15, -v15, v17, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v18, v18, v11
	v_fmac_f32_e32 v31, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v15, v16, v17
	v_fma_f32 v16, -v20, v34, v30
	v_rcp_f32_e32 v33, v29
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v17, v36, v31
	v_div_fixup_f32 v7, v15, v7, v14
	v_div_fmas_f32 v16, v16, v27, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v162, v4, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v28, v17, v36
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v173, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v16, v10, v13
	v_fma_f32 v26, -v29, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v17, v27, v31
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v15, v4 :: v_dual_fmac_f32 v33, v26, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, s3, v11, v18, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v28, v17, v36
	v_mul_f32_e32 v20, v26, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v31, v17
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v30, -v29, v20, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v13, v5, v8
	v_fmac_f32_e32 v20, v30, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v29, v20, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v14, v14, v33, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e64 v6.h, v129.h
	v_cndmask_b16 v23.l, 0x7fff, v19.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v35, v159, v1, s2
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v32, v160, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v1, v170, v148 :: v_dual_mul_f32 v2, v32, v2
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v1, v35, v1 :: v_dual_mul_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v161, v3, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v3, v172, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v14, v18, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e64 v10.h, v129.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v129
	v_and_b32_e32 v5, 1, v10
	v_mov_b16_e64 v129.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v3.h
	v_add3_u32 v7, v2, v7, 0x7fff
	scratch_load_b32 v2, off, off offset:296 ; 4-byte Folded Reload
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v6, 1, v6
	v_and_b32_e32 v8, 1, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_add3_u32 v6, v4, v8, 0x7fff
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_dual_cndmask_b32 v32, v9, v22 :: v_dual_cndmask_b32 v9, v22, v9
	v_dual_cndmask_b32 v34, v3, v12 :: v_dual_cndmask_b32 v3, v12, v3
	v_mov_b32_e32 v12, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_cndmask_b32_e32 v4, v149, v139, vcc_lo
	v_cndmask_b32_e32 v6, v202, v178, vcc_lo
	v_cndmask_b32_e32 v8, v174, v254, vcc_lo
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_dual_cndmask_b32 v22, 0x3276, v22 :: v_dual_cndmask_b32 v11, v175, v125
	v_cndmask_b32_e32 v14, v201, v147, vcc_lo
	v_cndmask_b32_e32 v16, v115, v107, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v22, v22, 8, v22
	v_cndmask_b32_e32 v18, v145, v95, vcc_lo
	v_dual_cndmask_b32 v20, v146, v91 :: v_dual_cndmask_b32 v27, v87, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 0x540054, v12
	v_dual_cndmask_b32 v29, v90, v75 :: v_dual_and_b32 v22, 0x760076, v22
	v_dual_cndmask_b32 v30, v25, v71 :: v_dual_cndmask_b32 v25, v71, v25
	v_cndmask_b32_e32 v31, v21, v67, vcc_lo
	v_cndmask_b32_e32 v21, v67, v21, vcc_lo
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v22, v22, 4, v22
	v_cndmask_b32_e32 v1, v139, v149, vcc_lo
	v_cndmask_b32_e32 v5, v178, v202, vcc_lo
	v_dual_cndmask_b32 v7, v254, v174 :: v_dual_cndmask_b32 v10, v125, v175
	v_cndmask_b32_e32 v13, v147, v201, vcc_lo
	v_cndmask_b32_e32 v15, v107, v115, vcc_lo
	v_cndmask_b32_e32 v17, v95, v145, vcc_lo
	v_dual_cndmask_b32 v19, v91, v146 :: v_dual_cndmask_b32 v26, v94, v87
	v_dual_cndmask_b32 v28, v75, v90 :: v_dual_cndmask_b32 v33, v24, v0
	v_dual_cndmask_b32 v0, v0, v24 :: v_dual_cndmask_b32 v35, v2, v23
	v_cndmask_b32_e32 v2, v23, v2, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v12
	v_and_b32_e32 v37, 0x7060706, v22
	v_permlanex16_b32 v38, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v1, v36
	v_perm_b32 v1, v4, v1, v37
	v_perm_b32 v2, v6, v5, v36
	v_perm_b32 v3, v6, v5, v37
	v_perm_b32 v4, v8, v7, v36
	v_perm_b32 v5, v8, v7, v37
	v_perm_b32 v6, v11, v10, v36
	v_perm_b32 v7, v11, v10, v37
	v_perm_b32 v8, v14, v13, v36
	v_perm_b32 v9, v14, v13, v37
	v_perm_b32 v10, v16, v15, v36
	v_perm_b32 v11, v16, v15, v37
	v_perm_b32 v12, v18, v17, v36
	v_perm_b32 v13, v18, v17, v37
	v_perm_b32 v14, v20, v19, v36
	v_perm_b32 v15, v20, v19, v37
	v_perm_b32 v16, v23, v26, v36
	v_perm_b32 v17, v23, v26, v37
	v_perm_b32 v18, v24, v28, v36
	v_perm_b32 v19, v24, v28, v37
	v_perm_b32 v20, v25, v30, v36
	v_perm_b32 v21, v25, v30, v37
	v_perm_b32 v22, v27, v31, v36
	v_perm_b32 v23, v27, v31, v37
	v_perm_b32 v24, v29, v32, v36
	v_perm_b32 v25, v29, v32, v37
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	scratch_load_b64 v[31:32], off, off offset:192 ; 8-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v26, v38, v33, v36
	v_perm_b32 v27, v38, v33, v37
	v_add_lshl_u32 v33, v88, v219, 1
	v_perm_b32 v28, v39, v34, v36
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v30, v40, v35, v36
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v32, v88, v31, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[12:15], 0 offen
	scratch_load_b64 v[4:5], off, off offset:8 ; 8-byte Folded Reload
	v_add_lshl_u32 v0, v180, v219, 1
	v_add_lshl_u32 v1, v88, v235, 1
	v_add_lshl_u32 v2, v180, v235, 1
	v_perm_b32 v31, v40, v35, v37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, v88, v4, 1
	v_add_lshl_u32 v4, v180, v4, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 632
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 632
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 45760
; TotalNumSgprs: 40
; NumVgprs: 256
; ScratchSize: 632
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 632
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 362
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
