	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v10, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v12, 1, v0
	v_and_b32_e32 v21, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v4, 62, v4
	v_and_b32_e32 v22, 32, v0
	v_lshlrev_b32_e32 v3, 2, v10
	v_lshlrev_b32_e32 v23, 6, v9
	s_mov_b32 s22, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s10, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s8, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s9, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s5, s9
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s12, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s9, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s10, s9, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s9, s9, s8
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s10
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s9
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s14, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s9, s2
	s_abs_i32 s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s15, 0, s12
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v9
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s13, s4, 0x4f7ffffe
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s24, s[0:1], 0x38
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[5:6], null, s11, v4, v[1:2]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s13, s13
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s13
	s_mul_hi_u32 s8, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s13, s8
	s_mul_hi_u32 s8, s9, s13
	s_xor_b32 s13, s2, s14
	s_mul_i32 s15, s8, s12
	s_ashr_i32 s25, s13, 31
	s_sub_i32 s9, s9, s15
	s_add_i32 s13, s8, 1
	s_sub_i32 s15, s9, s12
	s_cmp_ge_u32 s9, s12
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v7, s24, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s8, s13, s8
	s_cselect_b32 s9, s15, s9
	s_add_i32 s13, s8, 1
	s_cmp_ge_u32 s9, s12
	s_cselect_b32 s8, s13, s8
	s_mov_b64 s[12:13], s[6:7]
	s_xor_b32 s26, s8, s25
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s27, s24, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s8, s26, s25
	s_mov_b32 s7, 0x31027000
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s8, s14
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s20, s8, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s6
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
	.loc	1 398 22 is_stmt 1              ; generate_amdgcn.py:398:22
	s_lshl_b32 s10, s3, 6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s21, s2, 4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s11, s10
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s21, s24
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v5, s20, s2, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s27, 0x7f
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, v7, v3, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s11, v5
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s27, 0xff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v5, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s23, s11, 7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s23, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v11, s[12:15], 0 offen
	buffer_load_b128 v[17:20], v8, s[12:15], 0 offen
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s10, v6
	v_add3_u32 v6, 0x80, s10, v6
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v11, 2, v0
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s11, v5
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s27, 0x17f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x1
	buffer_load_b128 v[33:36], v5, s[12:15], 0 offen
	buffer_load_b128 v[37:40], v8, s[12:15], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b32 v46, v7, s[4:7], 0 offen
	buffer_load_b32 v47, v6, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v5, v0, 0, 1
	v_and_b32_e32 v6, 6, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 48, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0x420, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v24, v11, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v8, v5, v4
	v_lshlrev_b32_e32 v5, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v48, 0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v25, v6, 10, v8
	v_lshlrev_b32_e32 v6, 3, v6
	v_xor_b32_e32 v27, 0x90, v25
	v_xor_b32_e32 v28, 0x120, v25
	v_xor_b32_e32 v29, 0x1b0, v25
	v_xor_b32_e32 v30, 0x210, v25
	v_xor_b32_e32 v31, 0x330, v25
	v_xor_b32_e32 v32, 0x3a0, v25
	v_add_nc_u32_e32 v49, 0, v25
	v_add_nc_u32_e32 v50, 0, v27
	v_add_nc_u32_e32 v51, 0, v28
	v_add_nc_u32_e32 v52, 0, v29
	v_add_nc_u32_e32 v53, 0, v30
	v_add_nc_u32_e32 v54, 0, v31
	v_add_nc_u32_e32 v55, 0, v32
	s_waitcnt vmcnt(4)
	v_perm_b32 v8, v17, v13, 0x5010400
	v_perm_b32 v13, v17, v13, 0x7030602
	v_perm_b32 v17, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v26, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v41, v20, v16, 0x5010400
	v_perm_b32 v20, v20, v16, 0x7030602
	v_lshrrev_b32_e32 v56, 8, v17
	v_lshrrev_b32_e32 v58, 8, v18
	v_lshrrev_b32_e32 v59, 24, v18
	v_lshrrev_b32_e32 v42, 8, v8
	v_lshrrev_b32_e32 v60, 8, v26
	v_lshrrev_b32_e32 v61, 24, v26
	v_lshrrev_b32_e32 v43, 24, v8
	v_lshrrev_b32_e32 v62, 8, v19
	v_lshrrev_b32_e32 v63, 24, v19
	v_lshrrev_b32_e32 v44, 8, v13
	v_lshrrev_b32_e32 v64, 8, v41
	v_lshrrev_b32_e32 v65, 24, v41
	v_lshrrev_b32_e32 v45, 24, v13
	v_lshrrev_b32_e32 v57, 24, v17
	v_lshrrev_b32_e32 v66, 8, v20
	v_lshrrev_b32_e32 v67, 24, v20
	v_and_b16 v7.l, 0xff, v8.l
	v_and_b16 v7.h, 0xff, v8.h
	v_and_b16 v8.l, 0xff, v13.l
	v_and_b16 v8.h, 0xff, v13.h
	v_and_b16 v13.l, 0xff, v17.l
	v_and_b16 v13.h, 0xff, v17.h
	v_and_b16 v14.l, 0xff, v18.l
	v_and_b16 v14.h, 0xff, v18.h
	v_and_b16 v15.l, 0xff, v26.l
	v_and_b16 v17.l, 0xff, v41.l
	v_and_b16 v17.h, 0xff, v41.h
	v_lshlrev_b16 v26.l, 8, v56.l
	v_lshlrev_b16 v41.l, 8, v58.l
	v_lshlrev_b16 v41.h, 8, v59.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v56, v37, v33, 0x5010400
	v_and_b16 v15.h, 0xff, v26.h
	v_and_b16 v16.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v42.l
	v_lshlrev_b16 v42.l, 8, v60.l
	v_lshlrev_b16 v42.h, 8, v61.l
	v_and_b16 v16.h, 0xff, v19.h
	v_lshlrev_b16 v19.h, 8, v43.l
	v_lshlrev_b16 v43.l, 8, v62.l
	v_lshlrev_b16 v43.h, 8, v63.l
	v_perm_b32 v33, v37, v33, 0x7030602
	v_and_b16 v18.l, 0xff, v20.l
	v_lshlrev_b16 v20.l, 8, v44.l
	v_lshlrev_b16 v44.l, 8, v64.l
	v_lshlrev_b16 v44.h, 8, v65.l
	v_and_b16 v18.h, 0xff, v20.h
	v_lshlrev_b16 v20.h, 8, v45.l
	v_lshlrev_b16 v26.h, 8, v57.l
	v_lshlrev_b16 v45.l, 8, v66.l
	v_lshlrev_b16 v45.h, 8, v67.l
	v_perm_b32 v37, v38, v34, 0x5010400
	v_perm_b32 v34, v38, v34, 0x7030602
	v_perm_b32 v38, v39, v35, 0x5010400
	v_perm_b32 v39, v39, v35, 0x7030602
	v_perm_b32 v57, v40, v36, 0x5010400
	v_perm_b32 v40, v40, v36, 0x7030602
	v_or_b16 v14.l, v14.l, v41.l
	v_or_b16 v14.h, v14.h, v41.h
	v_lshrrev_b32_e32 v41, 8, v56
	v_or_b16 v7.l, v7.l, v19.l
	v_or_b16 v15.l, v15.l, v42.l
	v_or_b16 v15.h, v15.h, v42.h
	v_lshrrev_b32_e32 v42, 24, v56
	v_or_b16 v7.h, v7.h, v19.h
	v_or_b16 v16.l, v16.l, v43.l
	v_or_b16 v16.h, v16.h, v43.h
	v_lshrrev_b32_e32 v43, 8, v33
	v_or_b16 v8.l, v8.l, v20.l
	v_or_b16 v17.l, v17.l, v44.l
	v_or_b16 v17.h, v17.h, v44.h
	v_lshrrev_b32_e32 v44, 24, v33
	v_or_b16 v8.h, v8.h, v20.h
	v_or_b16 v18.l, v18.l, v45.l
	v_or_b16 v18.h, v18.h, v45.h
	v_and_b16 v19.l, 0xff, v56.l
	v_and_b16 v19.h, 0xff, v56.h
	v_and_b16 v20.l, 0xff, v33.l
	v_and_b16 v20.h, 0xff, v33.h
	v_lshrrev_b32_e32 v45, 8, v37
	v_lshrrev_b32_e32 v56, 24, v37
	v_and_b16 v33.l, 0xff, v34.l
	v_lshrrev_b32_e32 v58, 8, v34
	v_lshrrev_b32_e32 v59, 24, v34
	v_and_b16 v33.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v38.l
	v_lshrrev_b32_e32 v60, 8, v38
	v_lshrrev_b32_e32 v61, 24, v38
	v_and_b16 v34.h, 0xff, v38.h
	v_and_b16 v35.l, 0xff, v39.l
	v_lshrrev_b32_e32 v38, 8, v39
	v_lshrrev_b32_e32 v62, 24, v39
	v_and_b16 v35.h, 0xff, v39.h
	v_and_b16 v36.l, 0xff, v57.l
	v_lshrrev_b32_e32 v39, 8, v57
	v_lshrrev_b32_e32 v63, 24, v57
	v_and_b16 v36.h, 0xff, v57.h
	v_lshrrev_b32_e32 v57, 8, v40
	v_lshrrev_b32_e32 v64, 24, v40
	v_or_b16 v13.l, v13.l, v26.l
	v_or_b16 v13.h, v13.h, v26.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v48, v46 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v49, v7
	ds_store_b16_d16_hi v49, v7 offset:64
	ds_store_b16 v50, v8
	ds_store_b16_d16_hi v50, v8 offset:64
	ds_store_b16 v51, v13
	ds_store_b16_d16_hi v51, v13 offset:64
	ds_store_b16 v52, v14
	ds_store_b16_d16_hi v52, v14 offset:64
	ds_store_b16 v53, v15
	ds_store_b16_d16_hi v53, v15 offset:64
	ds_store_b16 v49, v16 offset:640
	ds_store_b16_d16_hi v49, v16 offset:704
	ds_store_b16 v54, v17
	ds_store_b16_d16_hi v54, v17 offset:64
	ds_store_b16 v55, v18
	ds_store_b16_d16_hi v55, v18 offset:64
	v_lshlrev_b16 v7.l, 8, v41.l
	v_lshlrev_b16 v7.h, 8, v42.l
	v_lshlrev_b16 v8.l, 8, v43.l
	v_lshlrev_b16 v8.h, 8, v44.l
	v_and_b16 v26.l, 0xff, v37.l
	v_and_b16 v26.h, 0xff, v37.h
	v_and_b16 v37.l, 0xff, v40.l
	v_and_b16 v37.h, 0xff, v40.h
	v_lshlrev_b16 v13.l, 8, v45.l
	v_lshlrev_b16 v13.h, 8, v56.l
	v_lshlrev_b16 v14.l, 8, v58.l
	v_lshlrev_b16 v14.h, 8, v59.l
	v_lshlrev_b16 v15.l, 8, v60.l
	v_lshlrev_b16 v15.h, 8, v61.l
	v_lshlrev_b16 v16.l, 8, v38.l
	v_lshlrev_b16 v16.h, 8, v62.l
	v_lshlrev_b16 v17.l, 8, v39.l
	v_lshlrev_b16 v17.h, 8, v63.l
	v_lshlrev_b16 v18.l, 8, v57.l
	v_lshlrev_b16 v18.h, 8, v64.l
	v_or_b16 v7.l, v19.l, v7.l
	v_or_b16 v7.h, v19.h, v7.h
	v_or_b16 v8.l, v20.l, v8.l
	v_or_b16 v8.h, v20.h, v8.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.l, v26.l, v13.l
	v_or_b16 v13.h, v26.h, v13.h
	v_or_b16 v14.l, v33.l, v14.l
	v_or_b16 v14.h, v33.h, v14.h
	v_or_b16 v15.l, v34.l, v15.l
	v_or_b16 v15.h, v34.h, v15.h
	v_or_b16 v16.l, v35.l, v16.l
	v_or_b16 v16.h, v35.h, v16.h
	v_or_b16 v17.l, v36.l, v17.l
	v_or_b16 v17.h, v36.h, v17.h
	v_or_b16 v18.l, v37.l, v18.l
	v_or_b16 v18.h, v37.h, v18.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v48, v47 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v49, v7 offset:8192
	ds_store_b16_d16_hi v49, v7 offset:8256
	ds_store_b16 v50, v8 offset:8192
	ds_store_b16_d16_hi v50, v8 offset:8256
	ds_store_b16 v51, v13 offset:8192
	ds_store_b16_d16_hi v51, v13 offset:8256
	ds_store_b16 v52, v14 offset:8192
	ds_store_b16_d16_hi v52, v14 offset:8256
	ds_store_b16 v53, v15 offset:8192
	ds_store_b16_d16_hi v53, v15 offset:8256
	ds_store_b16 v49, v16 offset:8832
	ds_store_b16_d16_hi v49, v16 offset:8896
	ds_store_b16 v54, v17 offset:8192
	ds_store_b16_d16_hi v54, v17 offset:8256
	ds_store_b16 v55, v18 offset:8192
	ds_store_b16_d16_hi v55, v18 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v26, v10, 6, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v7, 6, v9
	v_and_b32_e32 v8, 8, v0
	v_and_b32_e32 v37, 32, v0
	v_and_or_b32 v36, 0x1800, v5, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v35, 16, v26
	v_xor_b32_e32 v33, 32, v26
	v_xor_b32_e32 v34, 48, v26
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v14, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s10, 0, 0x4400
	s_add_i32 s24, 0, 0x2000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr36
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v7, v0, 5, 1
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v4, s10, v4
	v_lshl_or_b32 v26, v10, 6, v6
	v_and_or_b32 v36, 0x1800, v5, v6
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v7, 0x420, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v5, 0x101, v4
	v_add_nc_u32_e32 v4, 0x100, v4
	v_add_nc_u32_e32 v2, s21, v2
	v_and_or_b32 v6, 0x210, v8, v7
	s_lshl_b32 s1, s26, 7
	v_mul_lo_u32 v7, s11, v5
	v_xor_b32_e32 v35, 16, v26
	v_xor_b32_e32 v33, 32, v26
	v_xor_b32_e32 v5, v6, v36
	v_mul_lo_u32 v6, s11, v4
	v_xor_b32_e32 v34, 48, v26
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v37, v5, v23
	v_mad_u64_u32 v[4:5], null, s24, v2, s[10:11]
	v_add3_u32 v2, v7, s1, v1
	v_add3_u32 v1, v6, s1, v1
	s_lshl_b32 s1, s25, 7
	v_xor_b32_e32 v38, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v40, 48, v37
	v_subrev_nc_u32_e32 v42, s1, v1
	v_mov_b32_e32 v1, 0
	v_subrev_nc_u32_e32 v41, s1, v2
	v_add3_u32 v43, v4, v3, 0x100
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v16, 0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s27, 7
	s_add_i32 s1, 0, 0x4000
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s0, -2
	s_add_i32 s10, 0, 0x4400
	s_add_i32 s24, 0, 0x2000
	s_mov_b32 s25, 1
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v92, v43, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[52:55], v42, s[12:15], 0 offen
	buffer_load_b128 v[56:59], v41, s[12:15], 0 offen
	s_mov_b32 s26, s1
	s_mov_b32 s1, s10
	s_mov_b32 s10, s22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v44, s26, v26
	v_add_nc_u32_e32 v45, s26, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v48, s10, v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v46, s26, v33
	v_add_nc_u32_e32 v47, s26, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v49, s10, v38
	v_add_nc_u32_e32 v50, s10, v39
	v_add_nc_u32_e32 v51, s10, v40
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[60:63], v44
	ds_load_b128 v[64:67], v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[68:71], v48
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[72:75], v46
	ds_load_b128 v[76:79], v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[80:83], v49
	ds_load_b128 v[84:87], v50
	ds_load_b128 v[88:91], v51
	s_mov_b32 s22, s24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s24, s25, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s24, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s25, s24, 0
	s_add_i32 s0, s0, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s10, s25, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s24, s25, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s26, s10, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s24, s24, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v93, s26, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v94, s24, v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s10, s26, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[60:63], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v95, s24, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v96, s24, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[80:83], v[64:67], v[44:51] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v97, s24, v29
	v_add_nc_u32_e32 v98, s24, v30
	v_add_nc_u32_e32 v99, s24, v31
	v_add_nc_u32_e32 v100, s24, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[84:87], v[72:75], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[88:91], v[76:79], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v43, 0x80, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v20, v20, v45 :: v_dual_add_f32 v19, v19, v46
	v_add_f32_e32 v18, v18, v47
	v_dual_add_f32 v17, v17, v48 :: v_dual_add_nc_u32 v42, s23, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v16, v49 :: v_dual_add_f32 v15, v15, v50
	v_add_f32_e32 v13, v13, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v14, v14, v44 :: v_dual_add_nc_u32 v41, s23, v41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v93, v92 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v45, v56, v52, 0x5010400
	v_perm_b32 v46, v56, v52, 0x7030602
	v_perm_b32 v47, v57, v53, 0x5010400
	v_perm_b32 v48, v57, v53, 0x7030602
	v_perm_b32 v49, v58, v54, 0x5010400
	v_perm_b32 v50, v58, v54, 0x7030602
	v_perm_b32 v51, v59, v55, 0x5010400
	v_perm_b32 v52, v59, v55, 0x7030602
	v_lshrrev_b32_e32 v53, 8, v45
	v_lshrrev_b32_e32 v54, 24, v45
	v_lshrrev_b32_e32 v55, 8, v46
	v_lshrrev_b32_e32 v56, 24, v46
	v_lshrrev_b32_e32 v57, 8, v47
	v_and_b16 v44.l, 0xff, v45.l
	v_and_b16 v45.l, 0xff, v46.l
	v_and_b16 v46.l, 0xff, v47.l
	v_lshrrev_b32_e32 v58, 24, v47
	v_and_b16 v47.l, 0xff, v48.l
	v_lshrrev_b32_e32 v59, 8, v48
	v_lshrrev_b32_e32 v60, 24, v48
	v_and_b16 v48.l, 0xff, v49.l
	v_lshrrev_b32_e32 v61, 8, v49
	v_lshrrev_b32_e32 v62, 24, v49
	v_and_b16 v49.l, 0xff, v50.l
	v_lshrrev_b32_e32 v63, 8, v50
	v_lshrrev_b32_e32 v64, 24, v50
	v_and_b16 v50.l, 0xff, v51.l
	v_lshrrev_b32_e32 v65, 8, v51
	v_lshrrev_b32_e32 v66, 24, v51
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v67, 8, v52
	v_lshrrev_b32_e32 v68, 24, v52
	v_lshlrev_b16 v52.l, 8, v53.l
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.h, 0xff, v46.h
	v_and_b16 v46.h, 0xff, v47.h
	v_and_b16 v47.h, 0xff, v48.h
	v_and_b16 v48.h, 0xff, v49.h
	v_and_b16 v49.h, 0xff, v50.h
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.h, 0xff, v52.h
	v_lshlrev_b16 v52.h, 8, v54.l
	v_lshlrev_b16 v53.l, 8, v55.l
	v_lshlrev_b16 v53.h, 8, v56.l
	v_lshlrev_b16 v54.l, 8, v57.l
	v_lshlrev_b16 v54.h, 8, v58.l
	v_lshlrev_b16 v55.l, 8, v59.l
	v_lshlrev_b16 v55.h, 8, v60.l
	v_lshlrev_b16 v56.l, 8, v61.l
	v_lshlrev_b16 v56.h, 8, v62.l
	v_lshlrev_b16 v57.l, 8, v63.l
	v_lshlrev_b16 v57.h, 8, v64.l
	v_lshlrev_b16 v58.l, 8, v65.l
	v_lshlrev_b16 v58.h, 8, v66.l
	v_lshlrev_b16 v59.l, 8, v67.l
	v_lshlrev_b16 v59.h, 8, v68.l
	v_or_b16 v44.l, v44.l, v52.l
	v_or_b16 v44.h, v44.h, v52.h
	v_or_b16 v45.l, v45.l, v53.l
	v_or_b16 v45.h, v45.h, v53.h
	v_or_b16 v46.l, v46.l, v54.l
	v_or_b16 v46.h, v46.h, v54.h
	v_or_b16 v47.l, v47.l, v55.l
	v_or_b16 v47.h, v47.h, v55.h
	v_or_b16 v48.l, v48.l, v56.l
	v_or_b16 v48.h, v48.h, v56.h
	v_or_b16 v49.l, v49.l, v57.l
	v_or_b16 v49.h, v49.h, v57.h
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	ds_store_b16 v94, v44
	ds_store_b16_d16_hi v94, v44 offset:64
	ds_store_b16 v95, v45
	ds_store_b16_d16_hi v95, v45 offset:64
	ds_store_b16 v96, v46
	ds_store_b16_d16_hi v96, v46 offset:64
	ds_store_b16 v97, v47
	ds_store_b16_d16_hi v97, v47 offset:64
	ds_store_b16 v98, v48
	ds_store_b16_d16_hi v98, v48 offset:64
	ds_store_b16 v94, v49 offset:640
	ds_store_b16_d16_hi v94, v49 offset:704
	ds_store_b16 v99, v50
	ds_store_b16_d16_hi v99, v50 offset:64
	ds_store_b16 v100, v51
	ds_store_b16_d16_hi v100, v51 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v7, v23 :: v_dual_mov_b32 v8, v21
	v_mov_b32_e32 v37, v22
.LBB0_7:                                ; %Flow20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v8
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	v_and_b32_e32 v2, 0xf0, v0
	v_and_b32_e32 v1, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x210, 0, s0
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v3, v4
	v_xor_b32_e32 v3, v3, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v5, v3, v7
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v3, 32, v5
	v_xor_b32_e32 v4, 48, v5
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v7, s22, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v8, s22, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s1, v35
	v_add_nc_u32_e32 v31, s1, v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, v36 :: v_dual_add_nc_u32 v32, s22, v4
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v38, v36
	v_mov_b32_e32 v40, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v7
	ds_load_b128 v[27:30], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[44:47], v25
	ds_load_b128 v[48:51], v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v42, v36 :: v_dual_add_nc_u32 v7, s22, v3
	v_dual_mov_b32 v41, v36 :: v_dual_add_nc_u32 v8, s1, v34
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s1, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[52:55], v32
	ds_load_b128 v[56:59], v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[64:67], v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v43, v36
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[27:30], v[48:51], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[21:24], v[44:47], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[64:67], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[60:63], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v7, v37
	v_cvt_f32_i32_e32 v8, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v39
	v_cvt_f32_i32_e32 v22, v40
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v25, v43
	v_cvt_f32_i32_e32 v27, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v20, v20, v7 :: v_dual_add_f32 v19, v19, v8
	v_add_f32_e32 v16, v16, v23
	v_dual_add_f32 v18, v18, v21 :: v_dual_add_f32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v14, v14, v27 :: v_dual_add_f32 v15, v15, v24
	v_add_f32_e32 v13, v13, v25
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v27, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s24, v6
	v_add_nc_u32_e32 v8, s24, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v21, s10, v35
	v_add_nc_u32_e32 v22, s10, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v23, s24, v4
	ds_load_b128 v[4:7], v6
	ds_load_b128 v[29:32], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[35:38], v21
	ds_load_b128 v[39:42], v22
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v21, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s24, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s10, v34
	v_add_nc_u32_e32 v22, s10, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v24, v21
	v_mov_b32_e32 v27, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[43:46], v23
	ds_load_b128 v[47:50], v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[51:54], v8
	ds_load_b128 v[55:58], v22
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v22, v21
	v_mov_b32_e32 v23, v21
	v_mov_b32_e32 v25, v21
	v_mov_b32_e32 v26, v21
	v_mov_b32_e32 v28, v21
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[39:42], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[4:7], v[35:38], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[47:50], v[55:58], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[43:46], v[51:54], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v7, v21
	v_cvt_f32_i32_e32 v8, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v27, v28
.LBB0_11:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v14, v7 :: v_dual_and_b32 v4, 0x70, v12
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v5, s21, v10
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v4, s20
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v17, v23 :: v_dual_lshlrev_b32 v4, 1, v5
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v20, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	v_or_b32_e32 v5, 4, v3
	v_or_b32_e32 v6, 8, v3
	v_or_b32_e32 v10, 12, v3
	v_or_b32_e32 v12, 16, v3
	v_or_b32_e32 v26, 20, v3
	v_or_b32_e32 v28, 24, v3
	v_or_b32_e32 v29, 28, v3
	s_clause 0x7
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v21, v19, v21 :: v_dual_and_b32 v30, 0x7f, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v31, v0, 7, 1
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v33, 0x1040, 0, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v20, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v18, v22 :: v_dual_add_f32 v25, v15, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v19, v21, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v19, s11, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v16, v24 :: v_dual_add_f32 v27, v13, v27
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s21, s11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v22, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s1, s20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v23, s2
	v_cndmask_b32_e64 v16, v16, v24, s2
	v_cndmask_b32_e64 v13, v13, v27, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s3, s11, 1
	s_mul_i32 s5, s11, 6
	s_lshl_b32 s4, s11, 2
	s_lshl_b32 s12, s11, 3
	s_mul_i32 s13, s11, 10
	s_mul_i32 s14, s11, 12
	s_mul_i32 s0, s11, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v10, 16, v10
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v4, v10
	v_dual_mul_f32 v5, v4, v5 :: v_dual_lshlrev_b32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v28, v4, v28
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v6, 16, v6
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v5, v8, v5 :: v_dual_and_b32 v20, 0x204, v31
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v26, v4, v26 :: v_dual_lshlrev_b32 v29, 16, v29
	v_mul_f32_e32 v6, v4, v6
	v_dual_mul_f32 v3, v4, v3 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 28, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v12, v4, v12
	v_mul_f32_e32 v4, v4, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v2, v9, 2, v2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v7, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v0, 0x1c0, v11, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v15, v25, s2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v14, v6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v2, v2, v33
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v18, v10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v0, v20
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v10, v16, v26 :: v_dual_mul_f32 v11, v11, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v2, v9, 9, v2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v9, s1, v30, v19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v1, 5, v0
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v4, v13, v4 :: v_dual_add_nc_u32 v15, 0, v2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v19, v2, 4, 0
	v_add_nc_u32_e32 v24, 0, v0
	v_xad_u32 v25, 0x408, v0, 0
	v_xad_u32 v30, 0xc18, v0, 0
	v_xad_u32 v20, v2, 8, 0
	v_xad_u32 v27, 0x810, v0, 0
	v_xad_u32 v31, 0x1040, v0, 0
	v_xad_u32 v21, v2, 12, 0
	v_xad_u32 v32, 0x1448, v0, 0
	v_xad_u32 v1, v2, 16, 0
	v_xad_u32 v22, v2, 20, 0
	v_xad_u32 v23, v2, 24, 0
	v_xad_u32 v2, v2, 28, 0
	v_xad_u32 v33, 0x1850, v0, 0
	ds_store_b32 v15, v3
	ds_store_b32 v19, v5
	ds_store_b32 v20, v6
	ds_store_b32 v21, v7
	ds_store_b32 v1, v8
	ds_store_b32 v22, v10
	ds_store_b32 v23, v11
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v24
	ds_load_b32 v2, v25
	ds_load_b32 v3, v27
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v30
	ds_load_b32 v5, v31
	ds_load_b32 v6, v32
	ds_load_b32 v7, v33
	ds_load_b32 v0, v0
	v_lshlrev_b32_e32 v8, 2, v9
	v_add_lshl_u32 v10, v9, s3, 2
	v_add_lshl_u32 v12, v9, s5, 2
	v_add_lshl_u32 v11, v9, s4, 2
	v_add_lshl_u32 v13, v9, s12, 2
	v_add_lshl_u32 v14, v9, s13, 2
	v_add_lshl_u32 v15, v9, s14, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[8:11], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v10, s[8:11], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v11, s[8:11], 0 offen
	v_add_lshl_u32 v1, v9, s0, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v4, v12, s[8:11], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v5, v13, s[8:11], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v6, v14, s[8:11], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v7, v15, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v1, s[8:11], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 28
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 101
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5604
; TotalNumSgprs: 30
; NumVgprs: 101
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 30
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     101
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
