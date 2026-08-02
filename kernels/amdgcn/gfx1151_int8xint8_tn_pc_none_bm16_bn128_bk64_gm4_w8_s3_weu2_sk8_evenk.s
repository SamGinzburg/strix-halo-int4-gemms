	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[6:7], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s9, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v0
	v_or_b32_e32 v20, 0x3f0, v0
	v_and_b32_e32 v21, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 12, v10
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v46, 0, v10
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v4, 62, v3
	v_and_b32_e32 v22, 32, v0
	v_lshlrev_b32_e32 v23, 6, v9
	s_mov_b32 s22, 0
	s_load_b32 s28, s[0:1], 0x38
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s10, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s12, s10, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s10, s10, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s10, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v7, s6, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s11, 0, s5
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s8
	s_mul_hi_u32 s11, s8, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s11
	s_xor_b32 s11, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s8, s5
	s_sub_i32 s9, s9, s12
	s_add_i32 s12, s8, 1
	s_sub_i32 s13, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s8, s12, s8
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s8, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s12, s8
	s_load_b128 s[12:15], s[0:1], 0x0
	s_xor_b32 s5, s5, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s11
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s8, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s9, s10, s8
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s9, s9, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s11, s10
	s_sub_i32 s16, 0, s10
	v_rcp_iflag_f32_e32 v1, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s11, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v9
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s11, s11, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[5:6], null, s7, v4, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s11, s11
	s_mul_i32 s16, s16, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s11, s16
	s_add_i32 s11, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s11
	s_xor_b32 s11, s2, s9
	s_mul_i32 s16, s4, s10
	s_ashr_i32 s25, s11, 31
	s_sub_i32 s5, s5, s16
	s_add_i32 s11, s4, 1
	s_sub_i32 s16, s5, s10
	s_cmp_ge_u32 s5, s10
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s16, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s10
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_cselect_b32 s4, s11, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s27, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s26, s4, s25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s7, s27
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s26, s25
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_addk_i32 s28, 0x1ff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s9
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s20, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v5, s20, s3, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s8
	s_mov_b32 s15, 0x31027000
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s21, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s28, 0x1ff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s7, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s28, 0x3ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v5, s3
	s_mov_b32 s14, 0x7ffffffe
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s23, s7, 9
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s23, v5
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v6, v7, v2, s21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v11, s[16:19], 0 offen
	buffer_load_b128 v[15:18], v8, s[16:19], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s6, s27
	s_lshl_b32 s24, s6, 9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s7, v5
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v7, s4, v6
	v_add3_u32 v6, s4, s24, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s28, 0x5ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[31:34], v5, s[16:19], 0 offen
	buffer_load_b128 v[35:38], v8, s[16:19], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b32 v44, v7, s[12:15], 0 offen
	buffer_load_b32 v45, v6, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v5, v0, 0, 1
	v_and_b32_e32 v7, 6, v0
	v_lshlrev_b32_e32 v6, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 0x420, v5
	v_xor_b32_e32 v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v24, v7, 10, v5
	v_lshlrev_b32_e32 v7, 3, v7
	v_xor_b32_e32 v25, 0x90, v24
	v_xor_b32_e32 v26, 0x120, v24
	v_xor_b32_e32 v27, 0x1b0, v24
	v_xor_b32_e32 v28, 0x210, v24
	v_xor_b32_e32 v29, 0x330, v24
	v_xor_b32_e32 v30, 0x3a0, v24
	v_add_nc_u32_e32 v47, 0, v24
	v_add_nc_u32_e32 v48, 0, v25
	v_add_nc_u32_e32 v49, 0, v26
	v_add_nc_u32_e32 v50, 0, v27
	v_add_nc_u32_e32 v51, 0, v28
	v_add_nc_u32_e32 v52, 0, v29
	v_add_nc_u32_e32 v53, 0, v30
	s_waitcnt vmcnt(4)
	v_perm_b32 v8, v15, v11, 0x5010400
	v_perm_b32 v11, v15, v11, 0x7030602
	v_perm_b32 v15, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v19, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v39, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_lshrrev_b32_e32 v54, 8, v15
	v_lshrrev_b32_e32 v56, 8, v16
	v_lshrrev_b32_e32 v57, 24, v16
	v_lshrrev_b32_e32 v40, 8, v8
	v_lshrrev_b32_e32 v58, 8, v19
	v_lshrrev_b32_e32 v59, 24, v19
	v_lshrrev_b32_e32 v41, 24, v8
	v_lshrrev_b32_e32 v60, 8, v17
	v_lshrrev_b32_e32 v61, 24, v17
	v_lshrrev_b32_e32 v42, 8, v11
	v_lshrrev_b32_e32 v62, 8, v39
	v_lshrrev_b32_e32 v63, 24, v39
	v_lshrrev_b32_e32 v43, 24, v11
	v_lshrrev_b32_e32 v55, 24, v15
	v_lshrrev_b32_e32 v64, 8, v18
	v_lshrrev_b32_e32 v65, 24, v18
	v_and_b16 v5.l, 0xff, v8.l
	v_and_b16 v5.h, 0xff, v8.h
	v_and_b16 v8.l, 0xff, v11.l
	v_and_b16 v8.h, 0xff, v11.h
	v_and_b16 v11.l, 0xff, v15.l
	v_and_b16 v11.h, 0xff, v15.h
	v_and_b16 v12.l, 0xff, v16.l
	v_and_b16 v12.h, 0xff, v16.h
	v_and_b16 v13.l, 0xff, v19.l
	v_and_b16 v15.l, 0xff, v39.l
	v_and_b16 v15.h, 0xff, v39.h
	v_lshlrev_b16 v19.l, 8, v54.l
	v_lshlrev_b16 v39.l, 8, v56.l
	v_lshlrev_b16 v39.h, 8, v57.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v54, v35, v31, 0x5010400
	v_and_b16 v13.h, 0xff, v19.h
	v_and_b16 v14.l, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v40.l
	v_lshlrev_b16 v40.l, 8, v58.l
	v_lshlrev_b16 v40.h, 8, v59.l
	v_and_b16 v14.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v41.l
	v_lshlrev_b16 v41.l, 8, v60.l
	v_lshlrev_b16 v41.h, 8, v61.l
	v_perm_b32 v31, v35, v31, 0x7030602
	v_and_b16 v16.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v42.l
	v_lshlrev_b16 v42.l, 8, v62.l
	v_lshlrev_b16 v42.h, 8, v63.l
	v_and_b16 v16.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v43.l
	v_lshlrev_b16 v19.h, 8, v55.l
	v_lshlrev_b16 v43.l, 8, v64.l
	v_lshlrev_b16 v43.h, 8, v65.l
	v_perm_b32 v35, v36, v32, 0x5010400
	v_perm_b32 v32, v36, v32, 0x7030602
	v_perm_b32 v36, v37, v33, 0x5010400
	v_perm_b32 v37, v37, v33, 0x7030602
	v_perm_b32 v55, v38, v34, 0x5010400
	v_perm_b32 v38, v38, v34, 0x7030602
	v_or_b16 v12.l, v12.l, v39.l
	v_or_b16 v12.h, v12.h, v39.h
	v_lshrrev_b32_e32 v39, 8, v54
	v_or_b16 v5.l, v5.l, v17.l
	v_or_b16 v13.l, v13.l, v40.l
	v_or_b16 v13.h, v13.h, v40.h
	v_lshrrev_b32_e32 v40, 24, v54
	v_or_b16 v5.h, v5.h, v17.h
	v_or_b16 v14.l, v14.l, v41.l
	v_or_b16 v14.h, v14.h, v41.h
	v_lshrrev_b32_e32 v41, 8, v31
	v_or_b16 v8.l, v8.l, v18.l
	v_or_b16 v15.l, v15.l, v42.l
	v_or_b16 v15.h, v15.h, v42.h
	v_lshrrev_b32_e32 v42, 24, v31
	v_or_b16 v8.h, v8.h, v18.h
	v_or_b16 v16.l, v16.l, v43.l
	v_or_b16 v16.h, v16.h, v43.h
	v_and_b16 v17.l, 0xff, v54.l
	v_and_b16 v17.h, 0xff, v54.h
	v_and_b16 v18.l, 0xff, v31.l
	v_and_b16 v18.h, 0xff, v31.h
	v_lshrrev_b32_e32 v43, 8, v35
	v_lshrrev_b32_e32 v54, 24, v35
	v_and_b16 v31.l, 0xff, v32.l
	v_lshrrev_b32_e32 v56, 8, v32
	v_lshrrev_b32_e32 v57, 24, v32
	v_and_b16 v31.h, 0xff, v32.h
	v_and_b16 v32.l, 0xff, v36.l
	v_lshrrev_b32_e32 v58, 8, v36
	v_lshrrev_b32_e32 v59, 24, v36
	v_and_b16 v32.h, 0xff, v36.h
	v_and_b16 v33.l, 0xff, v37.l
	v_lshrrev_b32_e32 v36, 8, v37
	v_lshrrev_b32_e32 v60, 24, v37
	v_and_b16 v33.h, 0xff, v37.h
	v_and_b16 v34.l, 0xff, v55.l
	v_lshrrev_b32_e32 v37, 8, v55
	v_lshrrev_b32_e32 v61, 24, v55
	v_and_b16 v34.h, 0xff, v55.h
	v_lshrrev_b32_e32 v55, 8, v38
	v_lshrrev_b32_e32 v62, 24, v38
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v46, v44 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v47, v5
	ds_store_b16_d16_hi v47, v5 offset:64
	ds_store_b16 v48, v8
	ds_store_b16_d16_hi v48, v8 offset:64
	ds_store_b16 v49, v11
	ds_store_b16_d16_hi v49, v11 offset:64
	ds_store_b16 v50, v12
	ds_store_b16_d16_hi v50, v12 offset:64
	ds_store_b16 v51, v13
	ds_store_b16_d16_hi v51, v13 offset:64
	ds_store_b16 v47, v14 offset:640
	ds_store_b16_d16_hi v47, v14 offset:704
	ds_store_b16 v52, v15
	ds_store_b16_d16_hi v52, v15 offset:64
	ds_store_b16 v53, v16
	ds_store_b16_d16_hi v53, v16 offset:64
	v_lshlrev_b16 v5.l, 8, v39.l
	v_lshlrev_b16 v5.h, 8, v40.l
	v_lshlrev_b16 v8.l, 8, v41.l
	v_lshlrev_b16 v8.h, 8, v42.l
	v_and_b16 v19.l, 0xff, v35.l
	v_and_b16 v19.h, 0xff, v35.h
	v_and_b16 v35.l, 0xff, v38.l
	v_and_b16 v35.h, 0xff, v38.h
	v_lshlrev_b16 v11.l, 8, v43.l
	v_lshlrev_b16 v11.h, 8, v54.l
	v_lshlrev_b16 v12.l, 8, v56.l
	v_lshlrev_b16 v12.h, 8, v57.l
	v_lshlrev_b16 v13.l, 8, v58.l
	v_lshlrev_b16 v13.h, 8, v59.l
	v_lshlrev_b16 v14.l, 8, v36.l
	v_lshlrev_b16 v14.h, 8, v60.l
	v_lshlrev_b16 v15.l, 8, v37.l
	v_lshlrev_b16 v15.h, 8, v61.l
	v_lshlrev_b16 v16.l, 8, v55.l
	v_lshlrev_b16 v16.h, 8, v62.l
	v_or_b16 v5.l, v17.l, v5.l
	v_or_b16 v5.h, v17.h, v5.h
	v_or_b16 v8.l, v18.l, v8.l
	v_or_b16 v8.h, v18.h, v8.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v11.l, v19.l, v11.l
	v_or_b16 v11.h, v19.h, v11.h
	v_or_b16 v12.l, v31.l, v12.l
	v_or_b16 v12.h, v31.h, v12.h
	v_or_b16 v13.l, v32.l, v13.l
	v_or_b16 v13.h, v32.h, v13.h
	v_or_b16 v14.l, v33.l, v14.l
	v_or_b16 v14.h, v33.h, v14.h
	v_or_b16 v15.l, v34.l, v15.l
	v_or_b16 v15.h, v34.h, v15.h
	v_or_b16 v16.l, v35.l, v16.l
	v_or_b16 v16.h, v35.h, v16.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v46, v45 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v47, v5 offset:8192
	ds_store_b16_d16_hi v47, v5 offset:8256
	ds_store_b16 v48, v8 offset:8192
	ds_store_b16_d16_hi v48, v8 offset:8256
	ds_store_b16 v49, v11 offset:8192
	ds_store_b16_d16_hi v49, v11 offset:8256
	ds_store_b16 v50, v12 offset:8192
	ds_store_b16_d16_hi v50, v12 offset:8256
	ds_store_b16 v51, v13 offset:8192
	ds_store_b16_d16_hi v51, v13 offset:8256
	ds_store_b16 v47, v14 offset:8832
	ds_store_b16_d16_hi v47, v14 offset:8896
	ds_store_b16 v52, v15 offset:8192
	ds_store_b16_d16_hi v52, v15 offset:8256
	ds_store_b16 v53, v16 offset:8192
	ds_store_b16_d16_hi v53, v16 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v5, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v8, 6, v9
	v_and_b32_e32 v32, 8, v0
	v_and_b32_e32 v33, 32, v0
	v_and_or_b32 v31, 0x1800, v6, v7
	s_mov_b32 s18, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s18, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr31
.LBB0_3:                                ; %Flow19
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[4:5], s[0:1], 0x20
	v_and_b32_e32 v18, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s18
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v4, s27, v4
	v_and_or_b32 v31, 0x1800, v6, v7
	v_add3_u32 v3, s27, v3, 0x400
	s_lshl_b32 s1, s26, 7
	v_bfe_i32 v5, v0, 5, 1
	v_add_nc_u32_e32 v11, 0x401, v4
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v4, 0x400, v4
	v_mul_lo_u32 v3, s6, v3
	s_lshl_b32 s6, s25, 7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v6, s7, v11
	v_mul_lo_u32 v4, s7, v4
	v_bfe_i32 v8, v0, 3, 1
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v11, 0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s28, 9
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v33, v3, s21, v2
	s_add_i32 s0, s0, -2
	v_add3_u32 v6, v6, s1, v1
	v_add3_u32 v1, v4, s1, v1
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s25, 0, 0x2000
	s_mov_b32 s26, 1
	v_subrev_nc_u32_e32 v34, s6, v6
	v_subrev_nc_u32_e32 v35, s6, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v5, 0x420, v5
	s_add_i32 s6, 0, 0x4400
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v2, v1
	v_and_or_b32 v5, 0x210, v8, v5
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v5, v5, v31
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s18, s14
	v_or_b32_e32 v32, v5, v23
	v_mov_b32_e32 v5, v1
	s_mov_b32 s19, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v36, 16, v32
	v_xor_b32_e32 v37, 32, v32
	v_xor_b32_e32 v38, 48, v32
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v87, v33, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[47:50], v35, s[16:19], 0 offen
	buffer_load_b128 v[51:54], v34, s[16:19], 0 offen
	s_mov_b32 s27, s1
	s_mov_b32 s1, s6
	s_mov_b32 s6, s22
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v39, s27, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s6, v32
	v_add_nc_u32_e32 v42, s6, v36
	v_add_nc_u32_e32 v43, s6, v37
	v_add_nc_u32_e32 v44, s6, v38
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v40, s27, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[55:58], v41
	ds_load_b128 v[59:62], v42
	ds_load_b128 v[63:66], v43
	ds_load_b128 v[67:70], v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v41, v39 offset:208
	ds_load_u8 v42, v39 offset:240
	ds_load_u8 v43, v39 offset:224
	ds_load_u8 v44, v39 offset:192
	ds_load_u8 v45, v39 offset:144
	ds_load_u8 v46, v39 offset:176
	ds_load_u8 v71, v39 offset:160
	ds_load_u8 v72, v39 offset:128
	ds_load_u8 v73, v39 offset:80
	ds_load_u8 v74, v39 offset:112
	ds_load_u8 v75, v39 offset:96
	ds_load_u8 v76, v39 offset:64
	ds_load_u8 v77, v39
	ds_load_u8 v78, v39 offset:16
	ds_load_u8 v79, v39 offset:32
	ds_load_u8 v80, v39 offset:48
	ds_load_u8 v81, v39 offset:464
	ds_load_u8 v82, v39 offset:496
	ds_load_u8 v83, v39 offset:480
	ds_load_u8 v84, v39 offset:448
	ds_load_u8 v85, v39 offset:400
	ds_load_u8 v86, v39 offset:432
	ds_load_u8 v88, v39 offset:416
	ds_load_u8 v89, v39 offset:384
	ds_load_u8 v90, v39 offset:336
	ds_load_u8 v91, v39 offset:368
	ds_load_u8 v92, v39 offset:352
	ds_load_u8 v93, v39 offset:320
	ds_load_u8 v94, v39 offset:272
	ds_load_u8 v95, v39 offset:304
	ds_load_u8 v96, v39 offset:288
	ds_load_u8 v97, v39 offset:256
	ds_load_u8 v98, v39 offset:720
	ds_load_u8 v99, v39 offset:752
	ds_load_u8 v100, v39 offset:736
	ds_load_u8 v101, v39 offset:704
	ds_load_u8 v102, v39 offset:656
	ds_load_u8 v103, v39 offset:688
	ds_load_u8 v104, v39 offset:672
	ds_load_u8 v105, v39 offset:640
	ds_load_u8 v106, v39 offset:592
	ds_load_u8 v107, v39 offset:624
	ds_load_u8 v108, v39 offset:608
	ds_load_u8 v109, v39 offset:576
	ds_load_u8 v110, v39 offset:528
	ds_load_u8 v111, v39 offset:560
	ds_load_u8 v112, v39 offset:544
	ds_load_u8 v113, v39 offset:512
	ds_load_u8 v114, v39 offset:976
	ds_load_u8 v40, v40
	ds_load_u8 v115, v39 offset:992
	ds_load_u8 v116, v39 offset:960
	ds_load_u8 v117, v39 offset:912
	ds_load_u8 v118, v39 offset:944
	ds_load_u8 v119, v39 offset:928
	ds_load_u8 v120, v39 offset:896
	ds_load_u8 v121, v39 offset:848
	ds_load_u8 v122, v39 offset:880
	ds_load_u8 v123, v39 offset:864
	ds_load_u8 v124, v39 offset:832
	ds_load_u8 v125, v39 offset:784
	ds_load_u8 v126, v39 offset:816
	ds_load_u8 v127, v39 offset:800
	ds_load_u8 v39, v39 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v41, v44, v41, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v43, v72, v45, 0xc0c0004
	v_perm_b32 v44, v71, v46, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v45, v76, v73, 0xc0c0004
	v_perm_b32 v46, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v71, v77, v78, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v75, v79, v80, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v76, v84, v81, 0xc0c0004
	v_perm_b32 v77, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v79, v89, v85, 0xc0c0004
	v_perm_b32 v80, v88, v86, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v81, v93, v90, 0xc0c0004
	v_perm_b32 v82, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v83, v97, v94, 0xc0c0004
	v_perm_b32 v84, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v85, v101, v98, 0xc0c0004
	v_perm_b32 v86, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v116, v114, 0xc0c0004
	v_perm_b32 v40, v115, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v125, 0xc0c0004
	v_perm_b32 v99, v127, v126, 0xc0c0004
	v_lshl_or_b32 v74, v42, 16, v41
	v_lshl_or_b32 v73, v44, 16, v43
	v_lshl_or_b32 v72, v46, 16, v45
	v_lshl_or_b32 v71, v75, 16, v71
	v_perm_b32 v88, v105, v102, 0xc0c0004
	v_perm_b32 v89, v104, v103, 0xc0c0004
	v_perm_b32 v90, v109, v106, 0xc0c0004
	v_perm_b32 v91, v108, v107, 0xc0c0004
	v_perm_b32 v92, v113, v110, 0xc0c0004
	v_perm_b32 v93, v112, v111, 0xc0c0004
	v_lshl_or_b32 v78, v77, 16, v76
	v_lshl_or_b32 v77, v80, 16, v79
	v_lshl_or_b32 v76, v82, 16, v81
	v_lshl_or_b32 v75, v84, 16, v83
	v_lshl_or_b32 v82, v86, 16, v85
	v_lshl_or_b32 v86, v40, 16, v94
	v_lshl_or_b32 v83, v99, 16, v39
	v_wmma_i32_16x16x16_iu8 v[39:46], v[55:58], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v95, v120, v117, 0xc0c0004
	v_perm_b32 v96, v119, v118, 0xc0c0004
	v_perm_b32 v97, v124, v121, 0xc0c0004
	v_perm_b32 v98, v123, v122, 0xc0c0004
	v_lshl_or_b32 v81, v89, 16, v88
	v_lshl_or_b32 v80, v91, 16, v90
	v_lshl_or_b32 v79, v93, 16, v92
	v_wmma_i32_16x16x16_iu8 v[39:46], v[59:62], v[75:78], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v96, 16, v95
	v_lshl_or_b32 v84, v98, 16, v97
	s_mov_b32 s22, s25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s25, s26, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[39:46], v[63:66], v[79:82], v[39:46] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s25, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s26, s25, 0
	s_add_i32 s0, s0, -1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[39:46], v[67:70], v[83:86], v[39:46] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s6, s26, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s25, s26, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s27, s6, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s25, s25, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v40
	v_dual_add_f32 v16, v16, v41 :: v_dual_add_nc_u32 v35, s23, v35
	v_add_f32_e32 v15, v15, v42
	v_dual_add_f32 v14, v14, v43 :: v_dual_add_nc_u32 v33, s24, v33
	v_dual_add_f32 v13, v13, v44 :: v_dual_add_nc_u32 v128, s27, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v12, v12, v45 :: v_dual_add_f32 v11, v11, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v34, s23, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v129, s25, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v17, v17, v39
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s27, 0x4000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v130, s25, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v131, s25, v26
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v132, s25, v27
	v_add_nc_u32_e32 v133, s25, v28
	v_add_nc_u32_e32 v134, s25, v29
	v_add_nc_u32_e32 v135, s25, v30
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v128, v87 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v51, v47, 0x5010400
	v_perm_b32 v41, v51, v47, 0x7030602
	v_perm_b32 v42, v52, v48, 0x5010400
	v_perm_b32 v43, v52, v48, 0x7030602
	v_perm_b32 v44, v53, v49, 0x5010400
	v_perm_b32 v45, v53, v49, 0x7030602
	v_perm_b32 v46, v54, v50, 0x5010400
	v_perm_b32 v47, v54, v50, 0x7030602
	v_lshrrev_b32_e32 v48, 8, v40
	v_lshrrev_b32_e32 v49, 24, v40
	v_lshrrev_b32_e32 v50, 8, v41
	v_lshrrev_b32_e32 v51, 24, v41
	v_lshrrev_b32_e32 v52, 8, v42
	v_and_b16 v39.l, 0xff, v40.l
	v_and_b16 v40.l, 0xff, v41.l
	v_and_b16 v41.l, 0xff, v42.l
	v_lshrrev_b32_e32 v53, 24, v42
	v_and_b16 v42.l, 0xff, v43.l
	v_lshrrev_b32_e32 v54, 8, v43
	v_lshrrev_b32_e32 v55, 24, v43
	v_and_b16 v43.l, 0xff, v44.l
	v_lshrrev_b32_e32 v56, 8, v44
	v_lshrrev_b32_e32 v57, 24, v44
	v_and_b16 v44.l, 0xff, v45.l
	v_lshrrev_b32_e32 v58, 8, v45
	v_lshrrev_b32_e32 v59, 24, v45
	v_and_b16 v45.l, 0xff, v46.l
	v_lshrrev_b32_e32 v60, 8, v46
	v_lshrrev_b32_e32 v61, 24, v46
	v_and_b16 v46.l, 0xff, v47.l
	v_lshrrev_b32_e32 v62, 8, v47
	v_lshrrev_b32_e32 v63, 24, v47
	v_lshlrev_b16 v47.l, 8, v48.l
	v_and_b16 v39.h, 0xff, v40.h
	v_and_b16 v40.h, 0xff, v41.h
	v_and_b16 v41.h, 0xff, v42.h
	v_and_b16 v42.h, 0xff, v43.h
	v_and_b16 v43.h, 0xff, v44.h
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.h, 0xff, v46.h
	v_and_b16 v46.h, 0xff, v47.h
	v_lshlrev_b16 v47.h, 8, v49.l
	v_lshlrev_b16 v48.l, 8, v50.l
	v_lshlrev_b16 v48.h, 8, v51.l
	v_lshlrev_b16 v49.l, 8, v52.l
	v_lshlrev_b16 v49.h, 8, v53.l
	v_lshlrev_b16 v50.l, 8, v54.l
	v_lshlrev_b16 v50.h, 8, v55.l
	v_lshlrev_b16 v51.l, 8, v56.l
	v_lshlrev_b16 v51.h, 8, v57.l
	v_lshlrev_b16 v52.l, 8, v58.l
	v_lshlrev_b16 v52.h, 8, v59.l
	v_lshlrev_b16 v53.l, 8, v60.l
	v_lshlrev_b16 v53.h, 8, v61.l
	v_lshlrev_b16 v54.l, 8, v62.l
	v_lshlrev_b16 v54.h, 8, v63.l
	v_or_b16 v39.l, v39.l, v47.l
	v_or_b16 v39.h, v39.h, v47.h
	v_or_b16 v40.l, v40.l, v48.l
	v_or_b16 v40.h, v40.h, v48.h
	v_or_b16 v41.l, v41.l, v49.l
	v_or_b16 v41.h, v41.h, v49.h
	v_or_b16 v42.l, v42.l, v50.l
	v_or_b16 v42.h, v42.h, v50.h
	v_or_b16 v43.l, v43.l, v51.l
	v_or_b16 v43.h, v43.h, v51.h
	v_or_b16 v44.l, v44.l, v52.l
	v_or_b16 v44.h, v44.h, v52.h
	v_or_b16 v45.l, v45.l, v53.l
	v_or_b16 v45.h, v45.h, v53.h
	v_or_b16 v46.l, v46.l, v54.l
	v_or_b16 v46.h, v46.h, v54.h
	ds_store_b16 v129, v39
	ds_store_b16_d16_hi v129, v39 offset:64
	ds_store_b16 v130, v40
	ds_store_b16_d16_hi v130, v40 offset:64
	ds_store_b16 v131, v41
	ds_store_b16_d16_hi v131, v41 offset:64
	ds_store_b16 v132, v42
	ds_store_b16_d16_hi v132, v42 offset:64
	ds_store_b16 v133, v43
	ds_store_b16_d16_hi v133, v43 offset:64
	ds_store_b16 v129, v44 offset:640
	ds_store_b16_d16_hi v129, v44 offset:704
	ds_store_b16 v134, v45
	ds_store_b16_d16_hi v134, v45 offset:64
	ds_store_b16 v135, v46
	ds_store_b16_d16_hi v135, v46 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v20 :: v_dual_mov_b32 v8, v23
	v_dual_mov_b32 v32, v21 :: v_dual_mov_b32 v33, v22
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s6, 0, 0x4400
	s_add_i32 s25, 0, 0x2000
.LBB0_8:                                ; %Flow20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v32
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_and_b32_e32 v1, 1, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x210, 0, s0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v2, v3
	v_xor_b32_e32 v2, v2, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v2, v2, v8
	v_xor_b32_e32 v3, 16, v2
	v_xor_b32_e32 v4, 32, v2
	v_xor_b32_e32 v6, 48, v2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v7, s1, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v22, s22, v6
	v_add_nc_u32_e32 v23, s22, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v8, v7 offset:208
	ds_load_u8 v20, v7 offset:224
	ds_load_u8 v21, v7 offset:192
	ds_load_u8 v26, v7 offset:240
	ds_load_u8 v27, v7 offset:144
	ds_load_u8 v36, v7 offset:176
	ds_load_u8 v37, v7 offset:160
	ds_load_u8 v38, v7 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[28:31], v22
	ds_load_b128 v[32:35], v23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v22, v7 offset:112
	ds_load_u8 v23, v7 offset:80
	ds_load_u8 v44, v7 offset:96
	ds_load_u8 v45, v7 offset:64
	ds_load_u8 v48, v7
	ds_load_u8 v49, v7 offset:16
	ds_load_u8 v50, v7 offset:32
	ds_load_u8 v51, v7 offset:48
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v20, v26, 0xc0c0004
	v_perm_b32 v8, v21, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v38, v27, 0xc0c0004
	v_perm_b32 v26, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v47, v20, 16, v8
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v45, v23, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v21
	v_perm_b32 v21, v44, v22, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v48, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v50, v51, 0xc0c0004
	v_mov_b32_e32 v20, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v24, s22, v3
	v_add_nc_u32_e32 v25, s22, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v52, v7 offset:336
	ds_load_u8 v53, v7 offset:352
	ds_load_u8 v54, v7 offset:320
	ds_load_u8 v55, v7 offset:272
	ds_load_u8 v56, v7 offset:304
	ds_load_u8 v57, v7 offset:288
	ds_load_u8 v58, v7 offset:256
	v_lshl_or_b32 v44, v23, 16, v22
	v_mov_b32_e32 v23, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[36:39], v24
	ds_load_b128 v[40:43], v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v25, v20 :: v_dual_add_nc_u32 v24, s1, v5
	ds_load_u8 v48, v7 offset:496
	ds_load_u8 v49, v7 offset:400
	ds_load_u8 v50, v7 offset:432
	ds_load_u8 v51, v7 offset:416
	ds_load_u8 v63, v7 offset:384
	v_lshl_or_b32 v45, v21, 16, v8
	ds_load_u8 v8, v7 offset:368
	ds_load_u8 v59, v7 offset:464
	ds_load_u8 v60, v7 offset:480
	ds_load_u8 v61, v7 offset:448
	ds_load_u8 v62, v24
	v_mov_b32_e32 v21, v20
	v_mov_b32_e32 v22, v20
	v_mov_b32_e32 v24, v20
	v_mov_b32_e32 v26, v20
	v_mov_b32_e32 v27, v20
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[40:43], v[44:47], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v49, v63, v49, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v60, v48, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v59, v61, v59, 0xc0c0004
	ds_load_u8 v61, v7 offset:592
	ds_load_u8 v64, v7 offset:608
	ds_load_u8 v65, v7 offset:576
	ds_load_u8 v66, v7 offset:528
	ds_load_u8 v67, v7 offset:560
	ds_load_u8 v68, v7 offset:544
	ds_load_u8 v69, v7 offset:512
	v_perm_b32 v51, v54, v52, 0xc0c0004
	v_perm_b32 v8, v53, v8, 0xc0c0004
	v_perm_b32 v52, v58, v55, 0xc0c0004
	v_perm_b32 v53, v57, v56, 0xc0c0004
	v_lshl_or_b32 v43, v48, 16, v59
	v_lshl_or_b32 v42, v50, 16, v49
	v_lshl_or_b32 v41, v8, 16, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v40, v53, 16, v52
	ds_load_u8 v8, v7 offset:752
	ds_load_u8 v44, v7 offset:720
	ds_load_u8 v45, v7 offset:736
	ds_load_u8 v46, v7 offset:704
	ds_load_u8 v47, v7 offset:656
	ds_load_u8 v48, v7 offset:672
	ds_load_u8 v49, v7 offset:640
	ds_load_u8 v50, v7 offset:688
	ds_load_u8 v51, v7 offset:624
	ds_load_u8 v52, v7 offset:976
	ds_load_u8 v53, v7 offset:992
	ds_load_u8 v54, v7 offset:960
	ds_load_u8 v55, v7 offset:912
	ds_load_u8 v56, v7 offset:944
	ds_load_u8 v57, v7 offset:928
	ds_load_u8 v58, v7 offset:896
	ds_load_u8 v59, v7 offset:880
	ds_load_u8 v60, v7 offset:848
	ds_load_u8 v63, v7 offset:864
	ds_load_u8 v70, v7 offset:832
	ds_load_u8 v71, v7 offset:784
	ds_load_u8 v72, v7 offset:816
	ds_load_u8 v73, v7 offset:800
	ds_load_u8 v7, v7 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	v_perm_b32 v8, v45, v8, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v45, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v48, v50, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v48, v64, v51, 0xc0c0004
	v_perm_b32 v47, v65, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[36:39], v[40:43], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v8, 16, v44
	v_perm_b32 v50, v68, v67, 0xc0c0004
	v_perm_b32 v49, v69, v66, 0xc0c0004
	v_lshl_or_b32 v38, v46, 16, v45
	v_lshl_or_b32 v37, v48, 16, v47
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v54, v52, 0xc0c0004
	v_perm_b32 v40, v53, v62, 0xc0c0004
	v_lshl_or_b32 v36, v50, 16, v49
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v58, v55, 0xc0c0004
	v_perm_b32 v42, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v70, v60, 0xc0c0004
	v_perm_b32 v44, v63, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v71, 0xc0c0004
	v_perm_b32 v45, v73, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[32:35], v[36:39], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v35, v40, 16, v8
	v_lshl_or_b32 v34, v42, 16, v41
	v_lshl_or_b32 v33, v44, 16, v43
	v_lshl_or_b32 v32, v45, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[28:31], v[32:35], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v7, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v8, v22
	v_cvt_f32_i32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v27
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v19, v19, v7 :: v_dual_add_f32 v16, v16, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v15, v15, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v21, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v11, v11, v22
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_f32 v14, v14, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v8 :: v_dual_add_f32 v12, v12, v21
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v7, s6, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s25, v6
	v_add_nc_u32_e32 v4, s25, v4
	v_add_nc_u32_e32 v3, s25, v3
	v_add_nc_u32_e32 v2, s25, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v8, v7 offset:208
	ds_load_u8 v20, v7 offset:224
	ds_load_u8 v21, v7 offset:192
	ds_load_u8 v22, v7 offset:240
	ds_load_u8 v23, v7 offset:144
	ds_load_u8 v24, v7 offset:176
	ds_load_u8 v25, v7 offset:160
	ds_load_u8 v26, v7 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[28:31], v6
	ds_load_b128 v[32:35], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v6, v7 offset:112
	ds_load_u8 v27, v7 offset:80
	ds_load_u8 v44, v7 offset:96
	ds_load_u8 v45, v7 offset:64
	ds_load_u8 v46, v7
	ds_load_u8 v47, v7 offset:16
	ds_load_u8 v48, v7 offset:32
	ds_load_u8 v49, v7 offset:48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[36:39], v3
	ds_load_b128 v[40:43], v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s6, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v6, v44, v6, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v45, v27, 0xc0c0004
	v_perm_b32 v20, v20, v22, 0xc0c0004
	v_perm_b32 v4, v21, v8, 0xc0c0004
	v_perm_b32 v21, v26, v23, 0xc0c0004
	v_perm_b32 v22, v25, v24, 0xc0c0004
	v_lshl_or_b32 v3, v6, 16, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v5, v20, 16, v4
	v_mov_b32_e32 v20, 0
	ds_load_u8 v8, v7 offset:336
	ds_load_u8 v50, v7 offset:352
	ds_load_u8 v51, v7 offset:320
	ds_load_u8 v52, v7 offset:272
	ds_load_u8 v53, v7 offset:304
	ds_load_u8 v54, v7 offset:288
	ds_load_u8 v55, v7 offset:256
	v_lshl_or_b32 v4, v22, 16, v21
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v48, v49, 0xc0c0004
	ds_load_u8 v6, v7 offset:368
	v_mov_b32_e32 v27, v20
	ds_load_u8 v44, v7 offset:464
	ds_load_u8 v45, v7 offset:480
	ds_load_u8 v56, v7 offset:448
	ds_load_u8 v57, v2
	v_perm_b32 v2, v46, v47, 0xc0c0004
	ds_load_u8 v46, v7 offset:496
	ds_load_u8 v47, v7 offset:400
	ds_load_u8 v48, v7 offset:432
	ds_load_u8 v49, v7 offset:416
	ds_load_u8 v58, v7 offset:384
	v_mov_b32_e32 v22, v20
	v_mov_b32_e32 v23, v20
	v_mov_b32_e32 v24, v20
	v_lshl_or_b32 v2, v21, 16, v2
	v_mov_b32_e32 v21, v20
	v_mov_b32_e32 v25, v20
	v_mov_b32_e32 v26, v20
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v51, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[40:43], v[2:5], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v50, v6, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v56, v44, 0xc0c0004
	ds_load_u8 v56, v7 offset:592
	ds_load_u8 v59, v7 offset:608
	ds_load_u8 v60, v7 offset:576
	ds_load_u8 v61, v7 offset:528
	ds_load_u8 v62, v7 offset:560
	ds_load_u8 v63, v7 offset:544
	ds_load_u8 v64, v7 offset:512
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v46, v58, v47, 0xc0c0004
	v_perm_b32 v47, v49, v48, 0xc0c0004
	v_perm_b32 v48, v55, v52, 0xc0c0004
	v_perm_b32 v49, v54, v53, 0xc0c0004
	v_lshl_or_b32 v5, v45, 16, v44
	v_lshl_or_b32 v3, v6, 16, v8
	v_lshl_or_b32 v4, v47, 16, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v49, 16, v48
	ds_load_u8 v6, v7 offset:752
	ds_load_u8 v8, v7 offset:720
	ds_load_u8 v40, v7 offset:736
	ds_load_u8 v41, v7 offset:704
	ds_load_u8 v42, v7 offset:656
	ds_load_u8 v43, v7 offset:672
	ds_load_u8 v44, v7 offset:640
	ds_load_u8 v45, v7 offset:688
	ds_load_u8 v46, v7 offset:624
	ds_load_u8 v47, v7 offset:976
	ds_load_u8 v48, v7 offset:992
	ds_load_u8 v49, v7 offset:960
	ds_load_u8 v50, v7 offset:912
	ds_load_u8 v51, v7 offset:944
	ds_load_u8 v52, v7 offset:928
	ds_load_u8 v53, v7 offset:896
	ds_load_u8 v54, v7 offset:880
	ds_load_u8 v55, v7 offset:848
	ds_load_u8 v58, v7 offset:864
	ds_load_u8 v65, v7 offset:832
	ds_load_u8 v66, v7 offset:784
	ds_load_u8 v67, v7 offset:816
	ds_load_u8 v68, v7 offset:800
	ds_load_u8 v7, v7 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v8, v41, v8, 0xc0c0004
	v_perm_b32 v6, v40, v6, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v40, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v41, v43, v45, 0xc0c0004
	v_perm_b32 v42, v60, v56, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v43, v59, v46, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[36:39], v[2:5], v[20:27] neg_lo:[1,1,0]
	v_perm_b32 v45, v63, v62, 0xc0c0004
	v_perm_b32 v44, v64, v61, 0xc0c0004
	v_lshl_or_b32 v5, v6, 16, v8
	v_lshl_or_b32 v4, v41, 16, v40
	v_lshl_or_b32 v3, v43, 16, v42
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v49, v47, 0xc0c0004
	v_lshl_or_b32 v2, v45, 16, v44
	v_perm_b32 v8, v48, v57, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v53, v50, 0xc0c0004
	v_perm_b32 v37, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v65, v55, 0xc0c0004
	v_perm_b32 v39, v58, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v66, 0xc0c0004
	v_perm_b32 v40, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[32:35], v[2:5], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v8, 16, v6
	v_lshl_or_b32 v4, v37, 16, v36
	v_lshl_or_b32 v3, v39, 16, v38
	v_lshl_or_b32 v2, v40, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[28:31], v[2:5], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v7, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v8, v21
	v_cvt_f32_i32_e32 v20, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v25, v27
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v4, s21, v18
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v17, v7 :: v_dual_and_b32 v2, 0x70, v2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s12, s8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v30, v0, 7, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v2, v3, v2, s20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v14, v22 :: v_dual_lshlrev_b32 v3, 1, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v31, 7, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v21, v15, v21 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	v_or_b32_e32 v4, 4, v2
	v_or_b32_e32 v5, 8, v2
	v_or_b32_e32 v6, 12, v2
	v_or_b32_e32 v18, 16, v2
	v_or_b32_e32 v26, 20, v2
	v_or_b32_e32 v27, 24, v2
	v_or_b32_e32 v28, 28, v2
	s_clause 0x7
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	buffer_load_u16 v6, v6, s[12:15], 0 offen
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v20, v16, v20 :: v_dual_add_f32 v25, v11, v25
	v_dual_add_f32 v8, v19, v8 :: v_dual_add_f32 v23, v13, v23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v32, 0x1040, 0, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v12, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v25, s2
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v19, 0x204, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v22, s2
	v_cndmask_b32_e64 v16, v16, v20, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s21, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v21, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s1, s20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v23, s2
	v_cndmask_b32_e64 v12, v12, v24, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s3, s7, 1
	s_mul_i32 s9, s7, 6
	s_lshl_b32 s8, s7, 2
	s_lshl_b32 s10, s7, 3
	s_mul_i32 s11, s7, 10
	s_mul_i32 s12, s7, 12
	s_mul_i32 s0, s7, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v2, v3, v2 :: v_dual_and_b32 v29, 0x7f, v0
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v7, v2 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v18, v3, v18
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v26, v3, v26 :: v_dual_lshlrev_b32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v5, v3, v5
	v_dual_mul_f32 v6, v3, v6 :: v_dual_and_b32 v17, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v3, v27 :: v_dual_and_b32 v0, 28, v0
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v14, v18 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v17, v9, 2, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v0, 0x1c0, v10, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v10, s7, v31
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v15, v6
	v_mul_f32_e32 v12, v12, v27
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v17, v17, v32
	v_xor_b32_e32 v0, v0, v19
	s_mov_b32 s7, s15
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v3, v4
	v_mul_f32_e32 v3, v3, v28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v9, v9, 9, v17
	v_lshl_or_b32 v0, v1, 5, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v10, s1, v29, v10
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v8, v4
	v_mul_f32_e32 v5, v16, v5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v1, 0, v9
	v_add_nc_u32_e32 v24, 0, v0
	v_xad_u32 v17, v9, 4, 0
	v_xad_u32 v25, 0x408, v0, 0
	v_xad_u32 v30, 0xc18, v0, 0
	v_xad_u32 v19, v9, 8, 0
	v_xad_u32 v29, 0x810, v0, 0
	v_xad_u32 v31, 0x1040, v0, 0
	v_xad_u32 v20, v9, 12, 0
	v_xad_u32 v32, 0x1448, v0, 0
	v_xad_u32 v21, v9, 16, 0
	v_xad_u32 v33, 0x1850, v0, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v11, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v22, v9, 20, 0
	v_xad_u32 v23, v9, 24, 0
	v_xad_u32 v9, v9, 28, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v13, v26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b32 v1, v2
	ds_store_b32 v17, v4
	ds_store_b32 v19, v5
	ds_store_b32 v20, v6
	ds_store_b32 v21, v7
	ds_store_b32 v22, v8
	ds_store_b32 v23, v12
	ds_store_b32 v9, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v24
	ds_load_b32 v2, v25
	ds_load_b32 v3, v29
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v30
	ds_load_b32 v5, v31
	ds_load_b32 v6, v32
	ds_load_b32 v7, v33
	ds_load_b32 v0, v0
	v_lshlrev_b32_e32 v8, 2, v10
	v_add_lshl_u32 v9, v10, s3, 2
	v_add_lshl_u32 v12, v10, s9, 2
	v_add_lshl_u32 v11, v10, s8, 2
	v_add_lshl_u32 v13, v10, s10, 2
	v_add_lshl_u32 v14, v10, s11, 2
	v_add_lshl_u32 v15, v10, s12, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[4:7], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v11, s[4:7], 0 offen
	v_add_lshl_u32 v1, v10, s0, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v4, v12, s[4:7], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v5, v13, s[4:7], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v6, v14, s[4:7], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v7, v15, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v1, s[4:7], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
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
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 136
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8680
; TotalNumSgprs: 31
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 31
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
