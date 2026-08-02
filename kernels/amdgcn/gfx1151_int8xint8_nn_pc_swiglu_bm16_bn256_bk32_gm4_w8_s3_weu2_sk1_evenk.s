	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v42, 0xf0, v0
	v_and_b32_e32 v41, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v43, 1, v0
	v_lshlrev_b32_e32 v48, 5, v0
	v_and_b32_e32 v47, 4, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v34, 3, v42
	v_lshlrev_b32_e32 v2, 1, v41
	v_and_b32_e32 v49, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v46, v41, 9, v34
	v_xor_b32_e32 v51, 0x90, v46
	v_add_nc_u32_e32 v64, 0, v46
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s14
	v_xor_b32_e32 v52, 0x110, v46
	v_add_nc_u32_e32 v65, 0, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_nc_u32_e32 v66, 0, v52
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s10, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s16, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s16, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s29, s19, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s29, v34
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s9
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s34, s3, 5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s29, s34
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s10, 31
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v44, v41, 4, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s28, s10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v45, v1, v2, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v1, s18, s3, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s34, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s29, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s34, 32
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s19, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v35, 0x80000000, v2, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v1, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v1, s19, 6, v1
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v18, s34, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v11, s29, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v2, s[20:23], 0 offen
	buffer_load_b128 v[6:9], v6, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v19, s29, v1
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v36, 0x80000000, v18, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v18, 0x80000000, v1, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s19, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_cndmask_b32_e64 v14, 0x80000000, v11, s3
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v22, 0x80000000, v19, s2
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v14, s[20:23], 0 offen
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v26, s29, v1
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v18, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v22, s[20:23], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_u16 v67, v36, s[12:15], 0 offen
	s_mov_b32 s6, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v30, 0x80000000, v26, s2
	s_clause 0x1
	buffer_load_b128 v[26:29], v1, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v30, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_u16 v62, v35, s[12:15], 0 offen
	v_bfe_i32 v1, v0, 6, 1
	v_and_b32_e32 v35, 0x17e, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 0x90, v1
	v_xor_b32_e32 v50, v1, v35
	v_lshlrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v63, 0, v50
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v34, v6, v2, 0x5010400
	v_perm_b32 v6, v6, v2, 0x7030602
	v_perm_b32 v35, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v36, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v37, v9, v5, 0x5010400
	v_perm_b32 v38, v9, v5, 0x7030602
	v_and_b16 v2.l, 0xff, v34.l
	v_lshrrev_b32_e32 v56, 8, v34
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v39, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v40, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v53, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v54, v17, v13, 0x5010400
	v_perm_b32 v55, v17, v13, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v57, 24, v34
	v_and_b16 v2.h, 0xff, v34.h
	v_and_b16 v3.l, 0xff, v6.l
	v_lshrrev_b32_e32 v34, 8, v6
	v_lshrrev_b32_e32 v58, 24, v6
	v_and_b16 v3.h, 0xff, v6.h
	v_and_b16 v4.l, 0xff, v35.l
	v_lshrrev_b32_e32 v59, 8, v35
	v_lshrrev_b32_e32 v60, 24, v35
	v_and_b16 v4.h, 0xff, v35.h
	v_and_b16 v5.l, 0xff, v7.l
	v_lshrrev_b32_e32 v35, 8, v7
	v_lshrrev_b32_e32 v61, 24, v7
	v_and_b16 v5.h, 0xff, v7.h
	v_and_b16 v6.l, 0xff, v36.l
	v_lshrrev_b32_e32 v68, 8, v36
	v_lshrrev_b32_e32 v69, 24, v36
	v_and_b16 v6.h, 0xff, v36.h
	v_and_b16 v7.l, 0xff, v8.l
	v_lshrrev_b32_e32 v36, 8, v8
	v_lshrrev_b32_e32 v70, 24, v8
	v_and_b16 v7.h, 0xff, v8.h
	v_and_b16 v8.l, 0xff, v37.l
	v_lshrrev_b32_e32 v71, 8, v37
	v_lshrrev_b32_e32 v72, 24, v37
	v_and_b16 v8.h, 0xff, v37.h
	v_and_b16 v9.l, 0xff, v38.l
	v_lshrrev_b32_e32 v37, 8, v38
	v_lshrrev_b32_e32 v73, 24, v38
	v_and_b16 v9.h, 0xff, v38.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v38, v22, v18, 0x5010400
	v_perm_b32 v74, v22, v18, 0x7030602
	v_perm_b32 v75, v23, v19, 0x5010400
	v_perm_b32 v76, v23, v19, 0x7030602
	v_perm_b32 v77, v24, v20, 0x5010400
	v_perm_b32 v78, v24, v20, 0x7030602
	v_perm_b32 v79, v25, v21, 0x5010400
	v_perm_b32 v80, v25, v21, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v81, 8, v39
	v_lshrrev_b32_e32 v82, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	v_and_b16 v11.l, 0xff, v14.l
	v_lshrrev_b32_e32 v39, 8, v14
	v_lshrrev_b32_e32 v83, 24, v14
	v_and_b16 v11.h, 0xff, v14.h
	v_and_b16 v12.l, 0xff, v40.l
	v_lshrrev_b32_e32 v84, 8, v40
	v_lshrrev_b32_e32 v85, 24, v40
	v_and_b16 v12.h, 0xff, v40.h
	v_and_b16 v13.l, 0xff, v15.l
	v_lshrrev_b32_e32 v40, 8, v15
	v_lshrrev_b32_e32 v86, 24, v15
	v_and_b16 v13.h, 0xff, v15.h
	v_and_b16 v14.l, 0xff, v53.l
	v_lshrrev_b32_e32 v87, 8, v53
	v_lshrrev_b32_e32 v88, 24, v53
	v_and_b16 v14.h, 0xff, v53.h
	v_and_b16 v15.l, 0xff, v16.l
	v_lshrrev_b32_e32 v53, 8, v16
	v_lshrrev_b32_e32 v89, 24, v16
	v_and_b16 v15.h, 0xff, v16.h
	v_and_b16 v16.l, 0xff, v54.l
	v_lshrrev_b32_e32 v90, 8, v54
	v_lshrrev_b32_e32 v91, 24, v54
	v_and_b16 v16.h, 0xff, v54.h
	v_and_b16 v17.l, 0xff, v55.l
	v_lshrrev_b32_e32 v54, 8, v55
	v_lshrrev_b32_e32 v92, 24, v55
	v_and_b16 v17.h, 0xff, v55.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v55, v30, v26, 0x5010400
	v_perm_b32 v93, v30, v26, 0x7030602
	v_perm_b32 v94, v31, v27, 0x5010400
	v_perm_b32 v95, v31, v27, 0x7030602
	v_perm_b32 v96, v32, v28, 0x5010400
	v_perm_b32 v97, v32, v28, 0x7030602
	v_perm_b32 v98, v33, v29, 0x5010400
	v_perm_b32 v99, v33, v29, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v56.l
	v_lshlrev_b16 v22.l, 8, v68.l
	v_lshrrev_b32_e32 v68, 8, v38
	v_lshlrev_b16 v18.h, 8, v57.l
	v_lshlrev_b16 v22.h, 8, v69.l
	v_lshrrev_b32_e32 v69, 24, v38
	v_lshlrev_b16 v19.l, 8, v34.l
	v_lshlrev_b16 v23.h, 8, v70.l
	v_lshrrev_b32_e32 v70, 8, v74
	v_lshlrev_b16 v19.h, 8, v58.l
	v_lshlrev_b16 v24.l, 8, v71.l
	v_lshrrev_b32_e32 v71, 24, v74
	v_lshlrev_b16 v20.h, 8, v60.l
	v_lshlrev_b16 v25.h, 8, v73.l
	v_lshrrev_b32_e32 v73, 24, v75
	v_lshlrev_b16 v20.l, 8, v59.l
	v_lshlrev_b16 v21.l, 8, v35.l
	v_lshlrev_b16 v21.h, 8, v61.l
	v_lshlrev_b16 v23.l, 8, v36.l
	v_lshlrev_b16 v24.h, 8, v72.l
	v_lshlrev_b16 v25.l, 8, v37.l
	v_and_b16 v26.l, 0xff, v38.l
	v_and_b16 v26.h, 0xff, v38.h
	v_and_b16 v27.l, 0xff, v74.l
	v_and_b16 v27.h, 0xff, v74.h
	v_and_b16 v28.l, 0xff, v75.l
	v_lshrrev_b32_e32 v72, 8, v75
	v_and_b16 v28.h, 0xff, v75.h
	v_and_b16 v29.l, 0xff, v76.l
	v_lshrrev_b32_e32 v74, 8, v76
	v_lshrrev_b32_e32 v75, 24, v76
	v_and_b16 v29.h, 0xff, v76.h
	v_and_b16 v30.l, 0xff, v77.l
	v_lshrrev_b32_e32 v76, 8, v77
	v_lshrrev_b32_e32 v100, 24, v77
	v_and_b16 v30.h, 0xff, v77.h
	v_and_b16 v31.l, 0xff, v78.l
	v_lshrrev_b32_e32 v77, 8, v78
	v_lshrrev_b32_e32 v101, 24, v78
	v_and_b16 v31.h, 0xff, v78.h
	v_and_b16 v32.l, 0xff, v79.l
	v_lshrrev_b32_e32 v78, 8, v79
	v_lshrrev_b32_e32 v102, 24, v79
	v_and_b16 v32.h, 0xff, v79.h
	v_and_b16 v33.l, 0xff, v80.l
	v_lshrrev_b32_e32 v79, 8, v80
	v_lshrrev_b32_e32 v103, 24, v80
	v_and_b16 v33.h, 0xff, v80.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v34.l, 8, v81.l
	v_lshlrev_b16 v34.h, 8, v82.l
	v_lshlrev_b16 v35.l, 8, v39.l
	v_lshlrev_b16 v35.h, 8, v83.l
	v_lshlrev_b16 v36.l, 8, v84.l
	v_lshlrev_b16 v36.h, 8, v85.l
	v_lshlrev_b16 v37.l, 8, v40.l
	v_lshlrev_b16 v37.h, 8, v86.l
	v_lshlrev_b16 v38.l, 8, v87.l
	v_lshlrev_b16 v38.h, 8, v88.l
	v_lshlrev_b16 v39.l, 8, v53.l
	v_lshlrev_b16 v39.h, 8, v89.l
	v_lshlrev_b16 v40.l, 8, v90.l
	v_lshlrev_b16 v40.h, 8, v91.l
	v_lshlrev_b16 v53.l, 8, v54.l
	v_lshlrev_b16 v53.h, 8, v92.l
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v80, 8, v55
	v_lshrrev_b32_e32 v81, 24, v55
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.l, 0xff, v93.l
	v_lshrrev_b32_e32 v82, 8, v93
	v_lshrrev_b32_e32 v83, 24, v93
	v_and_b16 v55.h, 0xff, v93.h
	v_and_b16 v56.l, 0xff, v94.l
	v_lshrrev_b32_e32 v84, 8, v94
	v_lshrrev_b32_e32 v85, 24, v94
	v_and_b16 v56.h, 0xff, v94.h
	v_and_b16 v57.l, 0xff, v95.l
	v_lshrrev_b32_e32 v86, 8, v95
	v_lshrrev_b32_e32 v87, 24, v95
	v_and_b16 v57.h, 0xff, v95.h
	v_lshrrev_b32_e32 v88, 8, v96
	v_lshrrev_b32_e32 v89, 24, v96
	v_lshrrev_b32_e32 v90, 8, v97
	v_lshrrev_b32_e32 v91, 24, v97
	v_lshrrev_b32_e32 v92, 8, v98
	v_lshrrev_b32_e32 v93, 24, v98
	v_lshrrev_b32_e32 v94, 8, v99
	v_lshrrev_b32_e32 v95, 24, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v2.l, v2.l, v18.l
	v_lshlrev_b16 v18.l, 8, v68.l
	v_or_b16 v2.h, v2.h, v18.h
	v_lshlrev_b16 v18.h, 8, v69.l
	v_or_b16 v3.l, v3.l, v19.l
	v_lshlrev_b16 v19.l, 8, v70.l
	v_or_b16 v3.h, v3.h, v19.h
	v_lshlrev_b16 v19.h, 8, v71.l
	v_or_b16 v4.h, v4.h, v20.h
	v_lshlrev_b16 v20.h, 8, v73.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v58.l, 0xff, v96.l
	v_and_b16 v58.h, 0xff, v96.h
	v_and_b16 v59.l, 0xff, v97.l
	v_and_b16 v59.h, 0xff, v97.h
	v_and_b16 v60.l, 0xff, v98.l
	v_and_b16 v60.h, 0xff, v98.h
	v_and_b16 v61.l, 0xff, v99.l
	v_and_b16 v61.h, 0xff, v99.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v4.l, v20.l
	v_or_b16 v5.l, v5.l, v21.l
	v_or_b16 v5.h, v5.h, v21.h
	v_or_b16 v6.l, v6.l, v22.l
	v_or_b16 v6.h, v6.h, v22.h
	v_or_b16 v7.l, v7.l, v23.l
	v_or_b16 v7.h, v7.h, v23.h
	v_or_b16 v8.l, v8.l, v24.l
	v_or_b16 v8.h, v8.h, v24.h
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_lshlrev_b16 v20.l, 8, v72.l
	v_lshlrev_b16 v21.l, 8, v74.l
	v_lshlrev_b16 v21.h, 8, v75.l
	v_lshlrev_b16 v22.l, 8, v76.l
	v_lshlrev_b16 v22.h, 8, v100.l
	v_lshlrev_b16 v23.l, 8, v77.l
	v_lshlrev_b16 v23.h, 8, v101.l
	v_lshlrev_b16 v24.l, 8, v78.l
	v_lshlrev_b16 v24.h, 8, v102.l
	v_lshlrev_b16 v25.l, 8, v79.l
	v_lshlrev_b16 v25.h, 8, v103.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v10.l, v10.l, v34.l
	v_or_b16 v10.h, v10.h, v34.h
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v53.l
	v_or_b16 v17.h, v17.h, v53.h
	v_lshlrev_b16 v34.l, 8, v80.l
	v_lshlrev_b16 v34.h, 8, v81.l
	v_lshlrev_b16 v35.l, 8, v82.l
	v_lshlrev_b16 v35.h, 8, v83.l
	v_lshlrev_b16 v36.l, 8, v84.l
	v_lshlrev_b16 v36.h, 8, v85.l
	v_lshlrev_b16 v37.l, 8, v86.l
	v_lshlrev_b16 v37.h, 8, v87.l
	v_lshlrev_b16 v38.l, 8, v88.l
	v_lshlrev_b16 v38.h, 8, v89.l
	v_lshlrev_b16 v39.l, 8, v90.l
	v_lshlrev_b16 v39.h, 8, v91.l
	v_lshlrev_b16 v40.l, 8, v92.l
	v_lshlrev_b16 v40.h, 8, v93.l
	v_lshlrev_b16 v53.l, 8, v94.l
	v_lshlrev_b16 v53.h, 8, v95.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v64, v2
	ds_store_b16_d16_hi v64, v2 offset:32
	ds_store_b16 v64, v3 offset:64
	ds_store_b16_d16_hi v64, v3 offset:96
	ds_store_b16_d16_hi v65, v4 offset:32
	ds_store_b16 v65, v5 offset:64
	ds_store_b16_d16_hi v65, v5 offset:96
	v_or_b16 v2.l, v26.l, v18.l
	v_or_b16 v2.h, v26.h, v18.h
	v_or_b16 v3.l, v27.l, v19.l
	v_or_b16 v3.h, v27.h, v19.h
	v_or_b16 v5.l, v28.h, v20.h
	v_or_b16 v4.h, v28.l, v20.l
	v_or_b16 v5.h, v29.l, v21.l
	v_or_b16 v18.l, v29.h, v21.h
	v_or_b16 v18.h, v30.l, v22.l
	v_or_b16 v19.l, v30.h, v22.h
	v_or_b16 v19.h, v31.l, v23.l
	v_or_b16 v20.l, v31.h, v23.h
	v_or_b16 v20.h, v32.l, v24.l
	v_or_b16 v21.l, v32.h, v24.h
	v_or_b16 v21.h, v33.l, v25.l
	v_or_b16 v22.l, v33.h, v25.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v64, v10 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v4
	ds_store_b16 v66, v6
	ds_store_b16_d16_hi v66, v6 offset:32
	ds_store_b16 v66, v7 offset:64
	ds_store_b16_d16_hi v66, v7 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v63, v62 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v64, v11 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v64, v8 offset:384
	ds_store_b16_d16_hi v64, v8 offset:416
	ds_store_b16 v64, v9 offset:448
	ds_store_b16_d16_hi v64, v9 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v64, v10 offset:16416
	ds_store_b16_d16_hi v64, v11 offset:16480
	ds_store_b16 v65, v12 offset:16384
	ds_store_b16_d16_hi v65, v12 offset:16416
	ds_store_b16 v65, v13 offset:16448
	ds_store_b16_d16_hi v65, v13 offset:16480
	ds_store_b16 v66, v14 offset:16384
	ds_store_b16_d16_hi v66, v14 offset:16416
	ds_store_b16 v66, v15 offset:16448
	ds_store_b16_d16_hi v66, v15 offset:16480
	ds_store_b16 v64, v16 offset:16768
	ds_store_b16_d16_hi v64, v16 offset:16800
	ds_store_b16 v64, v17 offset:16832
	ds_store_b16_d16_hi v64, v17 offset:16864
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.l, v54.l, v34.l
	v_or_b16 v6.l, v54.h, v34.h
	v_or_b16 v6.h, v55.l, v35.l
	v_or_b16 v7.l, v55.h, v35.h
	v_or_b16 v7.h, v56.l, v36.l
	v_or_b16 v8.l, v56.h, v36.h
	v_or_b16 v8.h, v57.l, v37.l
	v_or_b16 v9.l, v57.h, v37.h
	v_or_b16 v9.h, v58.l, v38.l
	v_or_b16 v10.l, v58.h, v38.h
	v_or_b16 v10.h, v59.l, v39.l
	v_or_b16 v11.l, v59.h, v39.h
	v_or_b16 v11.h, v60.l, v40.l
	v_or_b16 v12.l, v60.h, v40.h
	v_or_b16 v12.h, v61.l, v53.l
	v_or_b16 v13.l, v61.h, v53.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v64, v2 offset:8192
	ds_store_b16_d16_hi v64, v2 offset:8224
	ds_store_b16 v64, v3 offset:8256
	ds_store_b16_d16_hi v64, v3 offset:8288
	ds_store_b16 v65, v5 offset:8224
	ds_store_b16_d16_hi v65, v5 offset:8256
	ds_store_b16 v65, v18 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v64, v4 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v65, v4 offset:8192
	ds_store_b16_d16_hi v66, v18 offset:8192
	ds_store_b16 v66, v19 offset:8224
	ds_store_b16_d16_hi v66, v19 offset:8256
	ds_store_b16 v66, v20 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b16 v63, v67 offset:33280
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v64, v6 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v64, v20 offset:8576
	ds_store_b16 v64, v21 offset:8608
	ds_store_b16_d16_hi v64, v21 offset:8640
	ds_store_b16 v64, v22 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v64, v6 offset:24608
	ds_store_b16 v64, v7 offset:24672
	ds_store_b16_d16_hi v65, v7 offset:24576
	ds_store_b16 v65, v8 offset:24608
	ds_store_b16_d16_hi v65, v8 offset:24640
	ds_store_b16 v65, v9 offset:24672
	ds_store_b16_d16_hi v66, v9 offset:24576
	ds_store_b16 v66, v10 offset:24608
	ds_store_b16_d16_hi v66, v10 offset:24640
	ds_store_b16 v66, v11 offset:24672
	ds_store_b16_d16_hi v64, v11 offset:24960
	ds_store_b16 v64, v12 offset:24992
	ds_store_b16_d16_hi v64, v12 offset:25024
	ds_store_b16 v64, v13 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v55, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0xe00, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v2, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v56, 8, v0
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v54, 0x160, v55
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v53, 0x60, v55, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr53
.LBB0_3:                                ; %Flow152
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s5, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 0x90, v2
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0xe00, v1
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v54, 0x160, v48
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v55, s29, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v53, 0x60, v48, v1
	v_xor_b32_e32 v1, v2, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b32_e32 v56, v2, v54
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v26, 0
	v_or_b32_e32 v57, v53, v1
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v58, 16, v56
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_xor_b32_e32 v59, 16, v57
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v33, 0
	s_add_i32 s34, s34, 32
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x8200
	s_add_i32 s31, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s30, 0, 0x6000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 5
	s_mov_b32 s8, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s34, s6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v64, s8, v57
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v60, s6, v45
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s7, s18
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v61, s6, v44
	v_add_nc_u32_e32 v62, s6, v55
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s6, s6, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_u16 v136, v60, s[12:15], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v60, s6, v44
	v_add_nc_u32_e32 v63, s6, v55
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[92:95], v61, s[20:23], 0 offen
	buffer_load_b128 v[96:99], v62, s[20:23], 0 offen
	buffer_load_b128 v[100:103], v60, s[20:23], 0 offen
	buffer_load_b128 v[104:107], v63, s[20:23], 0 offen
	s_mov_b32 s6, s0
	v_add_nc_u32_e32 v62, s7, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v60, s6, v56
	v_add_nc_u32_e32 v61, s6, v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, s7, v59
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[108:111], v60
	ds_load_b128 v[112:115], v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[68:71], v62
	ds_load_b128 v[76:79], v62 offset:4096
	ds_load_b128 v[116:119], v63
	ds_load_b128 v[120:123], v63 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[84:87], v64
	ds_load_b128 v[124:127], v64 offset:4096
	v_add_nc_u32_e32 v65, s8, v59
	ds_load_b128 v[128:131], v65
	ds_load_b128 v[132:135], v65 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s9, s36, 1
	s_mov_b32 s4, s31
	s_cmp_lt_i32 s9, 2
	s_mov_b32 s0, s33
	s_cselect_b32 s36, s9, 0
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s7, s36, 9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s8, s36, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[108:111], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[76:79], v[108:111], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[108:111], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[60:67], v[116:119], v[112:115], v[60:67] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[124:127], v[108:111], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[68:75], v[120:123], v[112:115], v[68:75] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[128:131], v[112:115], v[76:83] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[132:135], v[112:115], v[84:91] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v61
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s7, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s31, s8, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v15, v64
	v_dual_add_f32 v30, v30, v67 :: v_dual_add_nc_u32 v137, s7, v50
	v_dual_add_f32 v23, v23, v72 :: v_dual_add_nc_u32 v138, s31, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v10, v10, v77 :: v_dual_add_nc_u32 v139, s31, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v33, v33, v74 :: v_dual_add_nc_u32 v140, s31, v52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v63
	v_dual_add_f32 v16, v16, v65 :: v_dual_add_f32 v29, v29, v66
	v_dual_add_f32 v32, v32, v69 :: v_dual_add_f32 v31, v31, v68
	v_dual_add_f32 v40, v40, v71 :: v_dual_add_f32 v9, v9, v76
	v_dual_add_f32 v39, v39, v70 :: v_dual_add_f32 v24, v24, v73
	v_dual_add_f32 v34, v34, v75 :: v_dual_add_f32 v27, v27, v78
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v28, v28, v79 :: v_dual_add_f32 v11, v11, v80
	v_dual_add_f32 v20, v20, v83 :: v_dual_add_f32 v21, v21, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v60 :: v_dual_add_f32 v12, v12, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v19, v19, v82 :: v_dual_add_f32 v22, v22, v85
	v_dual_add_f32 v35, v35, v86 :: v_dual_add_f32 v36, v36, v87
	v_dual_add_f32 v13, v13, v88 :: v_dual_add_f32 v14, v14, v89
	v_dual_add_f32 v17, v17, v90 :: v_dual_add_f32 v18, v18, v91
	s_mov_b32 s1, s30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s33, s7, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s30, s31, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v137, v136 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v61, v96, v92, 0x5010400
	v_perm_b32 v62, v96, v92, 0x7030602
	v_perm_b32 v64, v97, v93, 0x7030602
	v_perm_b32 v63, v97, v93, 0x5010400
	v_perm_b32 v65, v98, v94, 0x5010400
	v_perm_b32 v66, v98, v94, 0x7030602
	v_perm_b32 v67, v99, v95, 0x5010400
	v_perm_b32 v68, v99, v95, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v69, v104, v100, 0x5010400
	v_perm_b32 v70, v104, v100, 0x7030602
	v_perm_b32 v71, v105, v101, 0x5010400
	v_perm_b32 v72, v105, v101, 0x7030602
	v_perm_b32 v73, v106, v102, 0x5010400
	v_perm_b32 v74, v106, v102, 0x7030602
	v_perm_b32 v75, v107, v103, 0x5010400
	v_perm_b32 v76, v107, v103, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v77, 8, v61
	v_lshrrev_b32_e32 v78, 24, v61
	v_lshrrev_b32_e32 v79, 8, v62
	v_lshrrev_b32_e32 v80, 24, v62
	v_lshrrev_b32_e32 v83, 8, v64
	v_and_b16 v60.l, 0xff, v61.l
	v_and_b16 v61.l, 0xff, v62.l
	v_and_b16 v62.l, 0xff, v63.l
	v_lshrrev_b32_e32 v81, 8, v63
	v_lshrrev_b32_e32 v82, 24, v63
	v_and_b16 v63.l, 0xff, v64.l
	v_lshrrev_b32_e32 v84, 24, v64
	v_and_b16 v64.l, 0xff, v65.l
	v_lshrrev_b32_e32 v85, 8, v65
	v_lshrrev_b32_e32 v86, 24, v65
	v_and_b16 v65.l, 0xff, v66.l
	v_lshrrev_b32_e32 v87, 8, v66
	v_lshrrev_b32_e32 v88, 24, v66
	v_and_b16 v66.l, 0xff, v67.l
	v_lshrrev_b32_e32 v89, 8, v67
	v_lshrrev_b32_e32 v90, 24, v67
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v91, 8, v68
	v_lshrrev_b32_e32 v92, 24, v68
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v68.l, 0xff, v69.l
	v_lshrrev_b32_e32 v93, 8, v69
	v_lshrrev_b32_e32 v94, 24, v69
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v95, 8, v70
	v_lshrrev_b32_e32 v96, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v97, 8, v71
	v_lshrrev_b32_e32 v98, 24, v71
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v99, 8, v72
	v_lshrrev_b32_e32 v100, 24, v72
	v_and_b16 v72.l, 0xff, v73.l
	v_lshrrev_b32_e32 v101, 8, v73
	v_lshrrev_b32_e32 v102, 24, v73
	v_and_b16 v73.l, 0xff, v74.l
	v_lshrrev_b32_e32 v103, 8, v74
	v_lshrrev_b32_e32 v104, 24, v74
	v_and_b16 v74.l, 0xff, v75.l
	v_lshrrev_b32_e32 v105, 8, v75
	v_lshrrev_b32_e32 v106, 24, v75
	v_and_b16 v75.l, 0xff, v76.l
	v_lshrrev_b32_e32 v107, 8, v76
	v_lshrrev_b32_e32 v108, 24, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v76.l, 8, v77.l
	v_and_b16 v60.h, 0xff, v61.h
	v_and_b16 v61.h, 0xff, v62.h
	v_and_b16 v62.h, 0xff, v63.h
	v_and_b16 v63.h, 0xff, v64.h
	v_and_b16 v64.h, 0xff, v65.h
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.h
	v_and_b16 v71.h, 0xff, v72.h
	v_and_b16 v72.h, 0xff, v73.h
	v_and_b16 v73.h, 0xff, v74.h
	v_and_b16 v74.h, 0xff, v75.h
	v_and_b16 v75.h, 0xff, v76.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v76.h, 8, v78.l
	v_lshlrev_b16 v77.l, 8, v79.l
	v_lshlrev_b16 v77.h, 8, v80.l
	v_lshlrev_b16 v79.l, 8, v83.l
	v_lshlrev_b16 v78.l, 8, v81.l
	v_lshlrev_b16 v78.h, 8, v82.l
	v_lshlrev_b16 v79.h, 8, v84.l
	v_lshlrev_b16 v80.l, 8, v85.l
	v_lshlrev_b16 v80.h, 8, v86.l
	v_lshlrev_b16 v81.l, 8, v87.l
	v_lshlrev_b16 v81.h, 8, v88.l
	v_lshlrev_b16 v82.l, 8, v89.l
	v_lshlrev_b16 v82.h, 8, v90.l
	v_lshlrev_b16 v83.l, 8, v91.l
	v_lshlrev_b16 v83.h, 8, v92.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v84.l, 8, v93.l
	v_lshlrev_b16 v84.h, 8, v94.l
	v_lshlrev_b16 v85.l, 8, v95.l
	v_lshlrev_b16 v85.h, 8, v96.l
	v_lshlrev_b16 v86.l, 8, v97.l
	v_lshlrev_b16 v86.h, 8, v98.l
	v_lshlrev_b16 v87.l, 8, v99.l
	v_lshlrev_b16 v87.h, 8, v100.l
	v_lshlrev_b16 v88.l, 8, v101.l
	v_lshlrev_b16 v88.h, 8, v102.l
	v_lshlrev_b16 v89.l, 8, v103.l
	v_lshlrev_b16 v89.h, 8, v104.l
	v_lshlrev_b16 v90.l, 8, v105.l
	v_lshlrev_b16 v90.h, 8, v106.l
	v_lshlrev_b16 v91.l, 8, v107.l
	v_lshlrev_b16 v91.h, 8, v108.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v60.l, v60.l, v76.l
	v_or_b16 v60.h, v60.h, v76.h
	v_or_b16 v61.l, v61.l, v77.l
	v_or_b16 v61.h, v61.h, v77.h
	v_or_b16 v63.l, v63.l, v79.l
	v_or_b16 v62.l, v62.l, v78.l
	v_or_b16 v62.h, v62.h, v78.h
	v_or_b16 v63.h, v63.h, v79.h
	v_or_b16 v64.l, v64.l, v80.l
	v_or_b16 v64.h, v64.h, v80.h
	v_or_b16 v65.l, v65.l, v81.l
	v_or_b16 v65.h, v65.h, v81.h
	v_or_b16 v66.l, v66.l, v82.l
	v_or_b16 v66.h, v66.h, v82.h
	v_or_b16 v67.l, v67.l, v83.l
	v_or_b16 v67.h, v67.h, v83.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v68.l, v68.l, v84.l
	v_or_b16 v68.h, v68.h, v84.h
	v_or_b16 v69.l, v69.l, v85.l
	v_or_b16 v69.h, v69.h, v85.h
	v_or_b16 v70.l, v70.l, v86.l
	v_or_b16 v70.h, v70.h, v86.h
	v_or_b16 v71.l, v71.l, v87.l
	v_or_b16 v71.h, v71.h, v87.h
	v_or_b16 v72.l, v72.l, v88.l
	v_or_b16 v72.h, v72.h, v88.h
	v_or_b16 v73.l, v73.l, v89.l
	v_or_b16 v73.h, v73.h, v89.h
	v_or_b16 v74.l, v74.l, v90.l
	v_or_b16 v74.h, v74.h, v90.h
	v_or_b16 v75.l, v75.l, v91.l
	v_or_b16 v75.h, v75.h, v91.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v138, v60
	ds_store_b16_d16_hi v138, v60 offset:32
	ds_store_b16 v138, v61 offset:64
	ds_store_b16_d16_hi v138, v61 offset:96
	ds_store_b16 v139, v63 offset:64
	ds_store_b16_d16_hi v139, v63 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v138, v68 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v139, v62
	ds_store_b16_d16_hi v139, v62 offset:32
	ds_store_b16 v140, v64
	ds_store_b16_d16_hi v140, v64 offset:32
	ds_store_b16 v140, v65 offset:64
	ds_store_b16_d16_hi v140, v65 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v138, v69 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v138, v66 offset:384
	ds_store_b16_d16_hi v138, v66 offset:416
	ds_store_b16 v138, v67 offset:448
	ds_store_b16_d16_hi v138, v67 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v138, v68 offset:16416
	ds_store_b16_d16_hi v138, v69 offset:16480
	ds_store_b16 v139, v70 offset:16384
	ds_store_b16_d16_hi v139, v70 offset:16416
	ds_store_b16 v139, v71 offset:16448
	ds_store_b16_d16_hi v139, v71 offset:16480
	ds_store_b16 v140, v72 offset:16384
	ds_store_b16_d16_hi v140, v72 offset:16416
	ds_store_b16 v140, v73 offset:16448
	ds_store_b16_d16_hi v140, v73 offset:16480
	ds_store_b16 v138, v74 offset:16768
	ds_store_b16_d16_hi v138, v74 offset:16800
	ds_store_b16 v138, v75 offset:16832
	ds_store_b16_d16_hi v138, v75 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v55, v48 :: v_dual_mov_b32 v2, v47
	v_mov_b32_e32 v56, v49
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x8200
	s_add_i32 s31, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v10, v9
	s_add_i32 s30, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v10 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v11, v9
	v_dual_mov_b32 v16, v10 :: v_dual_mov_b32 v15, v9
	v_dual_mov_b32 v28, v10 :: v_dual_mov_b32 v27, v9
	v_dual_mov_b32 v38, v10 :: v_dual_mov_b32 v37, v9
	v_dual_mov_b32 v20, v10 :: v_dual_mov_b32 v19, v9
	v_dual_mov_b32 v30, v10 :: v_dual_mov_b32 v29, v9
	v_dual_mov_b32 v22, v10 :: v_dual_mov_b32 v21, v9
	v_dual_mov_b32 v32, v10 :: v_dual_mov_b32 v31, v9
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v13, v9
	v_dual_mov_b32 v24, v10 :: v_dual_mov_b32 v23, v9
	v_dual_mov_b32 v36, v10 :: v_dual_mov_b32 v35, v9
	v_dual_mov_b32 v40, v10 :: v_dual_mov_b32 v39, v9
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	v_dual_mov_b32 v34, v10 :: v_dual_mov_b32 v33, v9
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v44, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v46, v44, v54
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v45, 0x110, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v47, 16, v46
	v_add_nc_u32_e32 v1, s0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v44, v44, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v45, 0, 1, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s0, v47
	ds_load_b128 v[5:8], v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v2
	v_or_b32_e32 v44, v53, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v45
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v45, 16, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v52, s6, v44
	v_add_nc_u32_e32 v53, s6, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	v_dual_mov_b32 v63, s11 :: v_dual_mov_b32 v62, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[72:75], v52 offset:4096
	ds_load_b128 v[76:79], v53
	ds_load_b128 v[80:83], v53 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v61, s9 :: v_dual_mov_b32 v60, s8
	v_dual_mov_b32 v59, s7 :: v_dual_mov_b32 v58, s6
	v_dual_mov_b32 v57, s5 :: v_dual_mov_b32 v56, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[48:51], v[5:8], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[72:75], v[5:8], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[76:79], v[1:4], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[80:83], v[1:4], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v49, v67
	v_cvt_f32_i32_e32 v50, v68
	v_cvt_f32_i32_e32 v51, v69
	v_cvt_f32_i32_e32 v52, v70
	v_cvt_f32_i32_e32 v53, v71
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v38, v38, v49 :: v_dual_add_f32 v37, v37, v48
	v_dual_add_f32 v16, v16, v51 :: v_dual_add_f32 v15, v15, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v48, v63
	v_cvt_f32_i32_e32 v49, v62
	v_cvt_f32_i32_e32 v50, v65
	v_cvt_f32_i32_e32 v51, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v53 :: v_dual_add_f32 v29, v29, v52
	v_dual_add_f32 v32, v32, v56 :: v_dual_add_f32 v31, v31, v54
	v_dual_add_f32 v40, v40, v58 :: v_dual_add_f32 v39, v39, v57
	v_dual_add_f32 v24, v24, v60 :: v_dual_add_f32 v23, v23, v59
	v_dual_add_f32 v34, v34, v48 :: v_dual_add_f32 v33, v33, v49
	v_dual_add_f32 v26, v26, v50 :: v_dual_add_f32 v25, v25, v51
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v63, s11 :: v_dual_add_nc_u32 v52, s1, v44
	v_dual_mov_b32 v62, s10 :: v_dual_add_nc_u32 v53, s1, v45
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[72:75], v52 offset:4096
	ds_load_b128 v[76:79], v53
	ds_load_b128 v[80:83], v53 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v61, s9 :: v_dual_mov_b32 v60, s8
	v_dual_mov_b32 v59, s7 :: v_dual_mov_b32 v58, s6
	v_dual_mov_b32 v57, s5 :: v_dual_mov_b32 v56, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[48:51], v[5:8], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[72:75], v[5:8], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[76:79], v[1:4], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[80:83], v[1:4], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v67
	v_cvt_f32_i32_e32 v3, v68
	v_cvt_f32_i32_e32 v4, v69
	v_cvt_f32_i32_e32 v5, v70
	v_cvt_f32_i32_e32 v6, v71
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v48, v58
	v_cvt_f32_i32_e32 v49, v59
	v_cvt_f32_i32_e32 v50, v61
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v28, v28, v2 :: v_dual_add_f32 v27, v27, v1
	v_dual_add_f32 v12, v12, v4 :: v_dual_add_f32 v11, v11, v3
	v_dual_add_f32 v20, v20, v6 :: v_dual_add_f32 v19, v19, v5
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v60
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v4, v65
	v_cvt_f32_i32_e32 v5, v64
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v22, v22, v8 :: v_dual_add_f32 v21, v21, v7
	v_dual_add_f32 v36, v36, v49 :: v_dual_add_f32 v35, v35, v48
	v_dual_add_f32 v14, v14, v50 :: v_dual_add_f32 v13, v13, v1
	v_dual_add_f32 v18, v18, v2 :: v_dual_add_f32 v17, v17, v3
	v_dual_add_f32 v10, v10, v4 :: v_dual_add_f32 v9, v9, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v1, s33, v46
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v2, s33, v47
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v46, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[1:4], v2
	v_mov_b32_e32 v57, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_cmp_ne_u32_e64 s0, 1, v46
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v69, s11 :: v_dual_add_nc_u32 v46, s31, v44
	v_dual_mov_b32 v68, s10 :: v_dual_add_nc_u32 v47, s31, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[49:52], v46
	ds_load_b128 v[56:59], v46 offset:4096
	ds_load_b128 v[78:81], v47
	ds_load_b128 v[82:85], v47 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v67, s9 :: v_dual_mov_b32 v66, s8
	v_dual_mov_b32 v65, s7 :: v_dual_mov_b32 v64, s6
	v_dual_mov_b32 v63, s5 :: v_dual_mov_b32 v62, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[49:52], v[5:8], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[56:59], v[5:8], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[1:4], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[82:85], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v50, v73
	v_cvt_f32_i32_e32 v46, v74
	v_cvt_f32_i32_e32 v49, v75
	v_cvt_f32_i32_e32 v51, v76
	v_cvt_f32_i32_e32 v52, v77
	v_cvt_f32_i32_e32 v54, v62
	v_cvt_f32_i32_e32 v59, v63
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v56, v66
	v_cvt_f32_i32_e32 v63, v67
	v_cvt_f32_i32_e32 v64, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v53, v70
	v_cvt_f32_i32_e32 v57, v71
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v83, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v44, s30, v44
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v86, s11 :: v_dual_add_nc_u32 v45, s30, v45
	v_mov_b32_e32 v85, s10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[87:90], v44
	ds_load_b128 v[91:94], v44 offset:4096
	ds_load_b128 v[95:98], v45
	ds_load_b128 v[99:102], v45 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v84, s9 :: v_dual_mov_b32 v83, s8
	v_dual_mov_b32 v82, s7 :: v_dual_mov_b32 v81, s6
	v_dual_mov_b32 v80, s5 :: v_dual_mov_b32 v79, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[87:90], v[5:8], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[91:94], v[5:8], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[95:98], v[1:4], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[99:102], v[1:4], v[79:86] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v67, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v71
	v_cvt_f32_i32_e32 v68, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v75
	v_cvt_f32_i32_e32 v75, v79
	v_cvt_f32_i32_e32 v78, v80
	v_cvt_f32_i32_e32 v79, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v77, v83
	v_cvt_f32_i32_e32 v80, v84
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v83, v86
.LBB0_16:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, s28, v41
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v2, s18, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v58, v37, v47 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s20, s24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v25, v53
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v6, v1, s[20:23], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v16, v49
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v1, v2, s[20:23], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v2, 28, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v26, v57 :: v_dual_and_b32 v3, 32, v55
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v4, v42, 2, 0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s18, s19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v38, v50
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v2, v4, v3, v2
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v3, s0, v0, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v55, v15, v46
	v_dual_add_f32 v47, v32, v59 :: v_dual_add_f32 v46, v39, v61
	v_dual_add_f32 v45, v40, v65 :: v_dual_add_f32 v44, v23, v56
	v_dual_add_f32 v43, v24, v63 :: v_dual_add_f32 v8, v33, v64
	v_dual_add_f32 v7, v34, v66 :: v_dual_add_f32 v72, v9, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v71, v10, v67 :: v_dual_add_f32 v70, v27, v70
	v_dual_add_f32 v69, v28, v69 :: v_dual_add_f32 v68, v11, v68
	v_dual_add_f32 v67, v12, v73 :: v_dual_add_f32 v66, v19, v74
	v_dual_add_f32 v65, v20, v76 :: v_dual_add_f32 v64, v21, v75
	v_dual_add_f32 v63, v22, v78 :: v_dual_add_f32 v56, v13, v77
	v_dual_add_f32 v59, v36, v82 :: v_dual_add_f32 v48, v18, v83
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v4, v42, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v10, v71, s2
	v_cndmask_b32_e64 v37, v37, v58, s2
	v_cndmask_b32_e64 v55, v15, v55, s2
	v_cndmask_b32_e64 v53, v16, v53, s2
	v_cndmask_b32_e64 v58, v11, v68, s2
	v_cndmask_b32_e64 v67, v12, v67, s2
	v_cndmask_b32_e64 v32, v32, v47, s2
	v_cndmask_b32_e64 v47, v21, v64, s2
	v_cndmask_b32_e64 v39, v39, v46, s2
	v_cndmask_b32_e64 v46, v13, v56, s2
	v_cndmask_b32_e64 v8, v33, v8, s2
	v_cndmask_b32_e64 v62, v25, v62, s2
	v_cndmask_b32_e64 v60, v26, v60, s2
	v_cndmask_b32_e64 v44, v23, v44, s2
	v_cndmask_b32_e64 v43, v24, v43, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v41, s19, v41
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v73, 0x7632
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s19
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 1, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v61, v35, v79 :: v_dual_and_b32 v0, 16, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v57, s2
	v_cndmask_b32_e64 v7, v34, v7, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v34, s28, s18, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v69, s2
	v_cndmask_b32_e64 v40, v40, v45, s2
	v_cndmask_b32_e64 v35, v35, v61, s2
	v_cndmask_b32_e64 v27, v27, v70, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v5, v34, v5, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v9, v72, s2
	s_mov_b32 s15, 0x76543210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v30, v52
	v_dual_add_f32 v52, v29, v51 :: v_dual_add_f32 v49, v31, v54
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v54, v14, v80 :: v_dual_add_f32 v51, v17, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v18, v48, s2
	v_cndmask_b32_e64 v36, v36, v59, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v29, v29, v52, s2
	v_cndmask_b32_e64 v30, v30, v50, s2
	v_cndmask_b32_e64 v50, v19, v66, s2
	v_cndmask_b32_e64 v52, v20, v65, s2
	v_cndmask_b32_e64 v31, v31, v49, s2
	v_cndmask_b32_e64 v49, v22, v63, s2
	v_cndmask_b32_e64 v54, v14, v54, s2
	v_cndmask_b32_e64 v33, v17, v51, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[23:26], v4 offset:16
	ds_load_b128 v[10:13], v4 offset:512
	ds_load_b128 v[14:17], v4 offset:528
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v42, 0x5410
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v74.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v45.h, v1.h
	v_mov_b16_e32 v9.h, v1.h
	v_mov_b16_e32 v48.h, v1.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v18, v19, v6
	v_mul_f32_e32 v19, v20, v6
	v_mul_f32_e32 v51, v12, v6
	v_mul_f32_e32 v20, v21, v6
	v_mul_f32_e32 v21, v22, v6
	v_mul_f32_e32 v64, v16, v6
	v_mul_f32_e32 v22, v23, v6
	v_mul_f32_e32 v56, v13, v6
	v_mul_f32_e32 v61, v15, v6
	v_mul_f32_e32 v66, v17, v6
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v8, v8, v64 :: v_dual_mul_f32 v59, v14, v6
	v_mul_f32_e32 v37, v37, v20
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v60, v19
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v23, v24, v6 :: v_dual_mul_f32 v38, v38, v21
	v_mul_f32_e32 v24, v25, v6
	v_mul_f32_e32 v25, v26, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v26, v10, v6 :: v_dual_mul_f32 v53, v53, v23
	v_dual_mul_f32 v34, v11, v6 :: v_dual_mul_f32 v29, v29, v24
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[14:17], v4 offset:16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v30, v30, v25
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v12, v12, v6
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v62, v18
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[18:21], v4 offset:512
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v16, v16, v6
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v55, v55, v22
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[22:25], v4 offset:528
	v_mul_f32_e32 v17, v17, v6
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v31, v26
	v_mul_f32_e32 v31, v39, v51
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v21, v21, v6
	v_mul_f32_e32 v10, v10, v6
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v23, v23, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v21, v36, v21
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v20, v20, v6
	v_mul_f32_e32 v13, v13, v6
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v23, v54, v23 :: v_dual_mul_f32 v12, v27, v12
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v11, v11, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v20, v35, v20 :: v_dual_mul_f32 v13, v28, v13
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v19, v19, v6 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v11, v71, v11 :: v_dual_mul_f32 v14, v14, v6
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v26, v40, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v27, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v24, v24, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v28, v28
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v7, v66 :: v_dual_mul_f32 v24, v33, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v33, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v16, v50, v16
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v15, v15, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v22, v22, v6 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v40, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v15, v67, v15
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v33
	v_mul_f32_e32 v50, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v40
	v_dual_mul_f32 v36, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v17, v52, v17
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v18, v18, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s1
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v6, v25, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v27, v27, v54
	v_cndmask_b32_e64 v51, 0, 0x42800000, s14
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v6, v41, v6
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v41, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v18, v47, v18
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	v_mul_f32_e32 v47, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v41
	v_exp_f32_e32 v33, v33
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v47
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v10, v72, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s11
	v_cndmask_b32_e64 v47, 0, 0x42800000, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v14, v58, v14 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v21
	v_dual_mul_f32 v35, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_ldexp_f32 v33, v33, v58
	v_mul_f32_e32 v52, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v35
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v52
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v10 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v16
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v52, 0, 0x42800000, s13
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v40, v40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s6
	v_ldexp_f32 v25, v25, v56
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v22, v46, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v20
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v32, v32, v34 :: v_dual_mul_f32 v19, v49, v19
	v_dual_mul_f32 v34, v43, v61 :: v_dual_mul_f32 v39, v44, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, 0xbfb8aa3b, v19 :: v_dual_add_f32 v25, 1.0, v25
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v35, v35, v61
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v43, 0, 0x42800000, s8
	v_cndmask_b32_e64 v46, 0, 0x42800000, s10
	v_cndmask_b32_e64 v44, 0, 0x42800000, s7
	v_mul_f32_e32 v49, 0xbfb8aa3b, v22
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v28, v28, v59
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v49
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v49, 0, 0x42800000, s12
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v36, v36, v60
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v46, v46
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v22
	v_ldexp_f32 v52, v52, v75
	v_ldexp_f32 v51, v51, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v27, v27, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s8
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v41, v41, v62
	v_ldexp_f32 v40, v40, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, null, v25, v25, v10
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v49, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, null, v33, v33, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s10
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v93, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v44, v66
	v_ldexp_f32 v43, v43, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v62, null, v28, v28, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s11
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_add_f32 v41, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v94, v58
	v_div_scale_f32 v66, null, v36, v36, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v95, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v69
	v_ldexp_f32 v46, v46, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v35, v35, v14
	v_div_scale_f32 v89, null, v52, v52, v6
	v_div_scale_f32 v91, null, v51, v51, v24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_add_f32 v44, 1.0, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v96, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v50, v50, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v41, v41, v17
	v_rcp_f32_e32 v97, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v49, v49, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v75, null, v40, v40, v16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_add_f32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v98, v69
	v_rcp_f32_e32 v107, v89
	v_rcp_f32_e32 v108, v91
	v_fma_f32 v109, -v54, v93, 1.0
	v_div_scale_f32 v77, null, v44, v44, v19
	v_rcp_f32_e32 v99, v71
	v_fma_f32 v110, -v58, v94, 1.0
	v_div_scale_f32 v79, null, v43, v43, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_add_f32 v50, 1.0, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v100, v75
	v_fma_f32 v111, -v60, v95, 1.0
	v_div_scale_f32 v56, vcc_lo, v11, v27, v11
	v_div_scale_f32 v81, null, v47, v47, v21
	v_dual_fmac_f32 v93, v109, v93 :: v_dual_fmac_f32 v94, v110, v94
	v_rcp_f32_e32 v101, v77
	v_fma_f32 v112, -v62, v96, 1.0
	v_div_scale_f32 v59, s0, v10, v25, v10
	v_div_scale_f32 v83, null, v46, v46, v20
	v_rcp_f32_e32 v102, v79
	v_fma_f32 v113, -v66, v97, 1.0
	v_div_scale_f32 v61, s1, v13, v33, v13
	v_div_scale_f32 v85, null, v50, v50, v23
	v_dual_fmac_f32 v95, v111, v95 :: v_dual_fmac_f32 v96, v112, v96
	v_rcp_f32_e32 v103, v81
	v_fma_f32 v114, -v69, v98, 1.0
	v_fma_f32 v123, -v89, v107, 1.0
	v_fma_f32 v124, -v91, v108, 1.0
	v_dual_mul_f32 v109, v56, v93 :: v_dual_mul_f32 v110, v59, v94
	v_div_scale_f32 v64, s2, v12, v28, v12
	v_div_scale_f32 v87, null, v49, v49, v22
	v_rcp_f32_e32 v104, v83
	v_fma_f32 v115, -v71, v99, 1.0
	v_div_scale_f32 v67, s3, v15, v36, v15
	v_dual_fmac_f32 v97, v113, v97 :: v_dual_fmac_f32 v98, v114, v98
	v_rcp_f32_e32 v105, v85
	v_fma_f32 v116, -v75, v100, 1.0
	v_dual_mul_f32 v111, v61, v95 :: v_dual_mul_f32 v112, v64, v96
	v_div_scale_f32 v70, s4, v14, v35, v14
	v_div_scale_f32 v92, s14, v24, v51, v24
	v_dual_fmac_f32 v107, v123, v107 :: v_dual_fmac_f32 v108, v124, v108
	v_fma_f32 v125, -v54, v109, v56
	v_fma_f32 v117, -v77, v101, 1.0
	v_div_scale_f32 v72, s5, v17, v41, v17
	v_rcp_f32_e32 v106, v87
	v_dual_fmac_f32 v99, v115, v99 :: v_dual_fmac_f32 v100, v116, v100
	v_fma_f32 v126, -v58, v110, v59
	v_fma_f32 v118, -v79, v102, 1.0
	v_dual_mul_f32 v113, v67, v97 :: v_dual_mul_f32 v114, v70, v98
	v_div_scale_f32 v76, s6, v16, v40, v16
	v_fma_f32 v127, -v60, v111, v61
	v_fma_f32 v119, -v81, v103, 1.0
	v_dual_mul_f32 v124, v92, v108 :: v_dual_fmac_f32 v109, v125, v93
	v_div_scale_f32 v78, s7, v19, v44, v19
	v_dual_fmac_f32 v101, v117, v101 :: v_dual_fmac_f32 v102, v118, v102
	v_fma_f32 v128, -v62, v112, v64
	v_fma_f32 v120, -v83, v104, 1.0
	v_dual_mul_f32 v115, v72, v99 :: v_dual_fmac_f32 v110, v126, v94
	v_div_scale_f32 v80, s8, v18, v43, v18
	v_fma_f32 v129, -v66, v113, v67
	v_fma_f32 v121, -v85, v105, 1.0
	v_dual_mul_f32 v116, v76, v100 :: v_dual_mul_f32 v117, v78, v101
	v_dual_fmac_f32 v111, v127, v95 :: v_dual_fmac_f32 v112, v128, v96
	v_div_scale_f32 v82, s9, v21, v47, v21
	v_dual_fmac_f32 v103, v119, v103 :: v_dual_fmac_f32 v104, v120, v104
	v_fma_f32 v130, -v69, v114, v70
	v_fma_f32 v54, -v54, v109, v56
	v_div_scale_f32 v84, s10, v20, v46, v20
	v_fma_f32 v122, -v87, v106, 1.0
	v_fma_f32 v131, -v71, v115, v72
	v_fma_f32 v56, -v58, v110, v59
	v_dual_mul_f32 v118, v80, v102 :: v_dual_mul_f32 v119, v82, v103
	v_dual_fmac_f32 v113, v129, v97 :: v_dual_fmac_f32 v114, v130, v98
	v_div_scale_f32 v86, s11, v23, v50, v23
	v_dual_fmac_f32 v105, v121, v105 :: v_dual_fmac_f32 v106, v122, v106
	v_fma_f32 v132, -v75, v116, v76
	v_fma_f32 v58, -v60, v111, v61
	v_div_fmas_f32 v54, v54, v93, v109
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v133, -v77, v117, v78
	v_fma_f32 v59, -v62, v112, v64
	v_div_scale_f32 v88, s12, v22, v49, v22
	v_dual_mul_f32 v120, v84, v104 :: v_dual_mul_f32 v121, v86, v105
	v_dual_fmac_f32 v115, v131, v99 :: v_dual_fmac_f32 v116, v132, v100
	v_div_fmas_f32 v56, v56, v94, v110
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v134, -v79, v118, v80
	v_fma_f32 v60, -v66, v113, v67
	v_div_scale_f32 v90, s13, v6, v52, v6
	v_div_fmas_f32 v58, v58, v95, v111
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v135, -v81, v119, v82
	v_fma_f32 v61, -v69, v114, v70
	v_div_fixup_f32 v11, v54, v27, v11
	v_dual_fmac_f32 v117, v133, v101 :: v_dual_fmac_f32 v118, v134, v102
	v_div_fmas_f32 v27, v59, v96, v112
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v122, v88, v106 :: v_dual_mul_f32 v123, v90, v107
	v_fma_f32 v136, -v83, v120, v84
	v_fma_f32 v62, -v71, v115, v72
	v_div_fixup_f32 v10, v56, v25, v10
	v_div_fmas_f32 v25, v60, v97, v113
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v137, -v85, v121, v86
	v_fma_f32 v64, -v75, v116, v76
	v_dual_fmac_f32 v119, v135, v103 :: v_dual_fmac_f32 v120, v136, v104
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v2, v2, v11 :: v_dual_mul_f32 v3, v3, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v11, v61, v98, v114
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v66, -v77, v117, v78
	v_fma_f32 v138, -v87, v122, v88
	v_div_fmas_f32 v10, v62, v99, v115
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v67, -v79, v118, v80
	v_fma_f32 v139, -v89, v123, v90
	v_dual_fmac_f32 v121, v137, v105 :: v_dual_fmac_f32 v122, v138, v106
	v_div_fixup_f32 v13, v58, v33, v13
	v_div_fixup_f32 v15, v25, v36, v15
	v_div_fmas_f32 v25, v64, v100, v116
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v69, -v81, v119, v82
	v_div_fixup_f32 v11, v11, v35, v14
	v_div_fmas_f32 v14, v66, v101, v117
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v70, -v83, v120, v84
	v_div_fixup_f32 v10, v10, v41, v17
	v_div_fmas_f32 v17, v67, v102, v118
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v140, -v91, v124, v92
	v_fmac_f32_e32 v123, v139, v107
	v_fma_f32 v71, -v85, v121, v86
	v_div_fixup_f32 v12, v27, v28, v12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v38, v13
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v69, v103, v119
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v72, -v87, v122, v88
	v_div_fixup_f32 v16, v25, v40, v16
	v_div_fmas_f32 v28, v70, v104, v120
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v124, v140, v108
	v_fma_f32 v75, -v89, v123, v90
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v37, v12
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v74.l, v3.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v15, v53, v15 :: v_dual_mul_f32 v10, v30, v10
	v_dual_mul_f32 v16, v29, v16 :: v_dual_and_b32 v25, 1, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v13.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v14, v44, v19
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v55, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v17, v43, v18
	v_div_fmas_f32 v18, v71, v105, v121
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v76, -v91, v124, v92
	v_div_fmas_f32 v29, v72, v106, v122
	s_mov_b32 vcc_lo, s13
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v2, v2
	v_mov_b16_e32 v57.l, v12.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v4, v4, v17 :: v_dual_and_b32 v19, 1, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v25, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v32, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v11.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v75, v107, v123
	v_div_fixup_f32 v18, v18, v50, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v3, v3
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v27, v47, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v3, v19, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v19, v28, v46, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v16.h
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v10.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v22, v29, v49, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v27, 1, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v17, v52, v6
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v18, v34, v18 :: v_dual_and_b32 v23, 1, v68
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v13, v25, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v76, v108, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s4, v15, v15
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v12, v12, v27, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v31, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v63.l, v4.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v26, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v15, v15, v20, 0x7fff
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v14.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v25, v51, v24
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v6, v7, v6 :: v_dual_and_b32 v17, 1, v65
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v11, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v39, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v3.h
	v_and_b32_e32 v22, 1, v63
	v_cndmask_b16 v15.l, 0x7fff, v11.h, s5
	v_add3_u32 v10, v10, v19, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v21.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v16, v17, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s0
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_eq_u32_e64 s4, 0, v0
	v_and_b32_e32 v0, 1, v45
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s7
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s6
	v_add3_u32 v10, v14, v11, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	v_cmp_o_f32_e64 s0, v4, v4
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s2, v3, v3
	v_mov_b16_e32 v9.l, v12.h
	v_add3_u32 v4, v4, v22, 0x7fff
	v_mov_b16_e32 v48.l, v8.h
	v_cndmask_b32_e64 v14, v15, v2, s4
	v_cndmask_b32_e64 v2, v2, v15, s4
	v_cndmask_b32_e64 v15, 0x1054, v42, s4
	v_add3_u32 v0, v3, v0, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_cndmask_b32_e64 v16, 0x3276, v73, s4
	v_cmp_o_f32_e64 s1, v21, v21
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s0
	v_add3_u32 v4, v21, v11, 0x7fff
	v_and_b32_e32 v11, 1, v48
	v_cndmask_b32_e64 v17, v7, v13, s4
	v_cndmask_b32_e64 v7, v13, v7, s4
	v_lshl_or_b32 v13, v15, 8, v15
	v_and_b32_e32 v1, 1, v1
	v_lshl_or_b32 v15, v16, 8, v16
	v_cmp_o_f32_e64 s3, v18, v18
	v_cmp_o_f32_e64 s5, v12, v12
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s6, v8, v8
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s1
	v_add3_u32 v4, v18, v10, 0x7fff
	v_add3_u32 v8, v8, v11, 0x7fff
	v_and_b32_e32 v10, 0x540054, v13
	v_add3_u32 v1, v6, v1, 0x7fff
	v_and_b32_e32 v11, 0x760076, v15
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s6
	v_lshl_or_b32 v6, v10, 4, v10
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s8
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v9, v4, v3, s4
	v_cndmask_b32_e64 v3, v3, v4, s4
	v_and_b32_e32 v4, 0x5040504, v6
	v_cndmask_b32_e64 v6, v0, v1, s4
	v_permlanex16_b32 v2, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x7060706, v8
	v_cndmask_b32_e64 v11, v1, v0, s4
	v_permlanex16_b32 v8, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v14, v4
	v_perm_b32 v1, v2, v14, v10
	v_perm_b32 v2, v7, v17, v4
	v_perm_b32 v3, v7, v17, v10
	v_perm_b32 v6, v8, v9, v4
	v_perm_b32 v7, v8, v9, v10
	v_perm_b32 v8, v12, v11, v4
	v_perm_b32 v9, v12, v11, v10
	s_clause 0x1
	buffer_store_b128 v[0:3], v5, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v5, s[16:19], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 141
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12424
; TotalNumSgprs: 39
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
