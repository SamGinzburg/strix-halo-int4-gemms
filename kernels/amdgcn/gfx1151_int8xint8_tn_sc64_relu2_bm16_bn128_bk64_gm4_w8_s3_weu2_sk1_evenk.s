	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s21, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v37, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v5, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v17, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v30, 15, v0
	v_and_b32_e32 v2, 12, v37
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, 0, v37
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v4, 62, v3
	v_or_b32_e32 v38, 0x3f0, v0
	v_and_b32_e32 v39, 8, v0
	v_and_b32_e32 v40, 32, v0
	v_lshlrev_b32_e32 v41, 6, v5
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s28, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v8, s28, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
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
	s_min_i32 s14, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s18, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s18
	s_sub_i32 s17, 0, s18
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s16, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[6:7], null, s29, v4, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s16, s16
	s_mul_i32 s17, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s16, s17
	s_add_i32 s12, s16, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_mul_hi_u32 s6, s13, s12
	s_xor_b32 s7, s2, s14
	s_mul_i32 s12, s6, s18
	s_ashr_i32 s26, s7, 31
	s_sub_i32 s7, s13, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s7, s18
	s_cmp_ge_u32 s7, s18
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s18
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s12, s12, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s21, s21, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s27, s12, s26
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s12, s27, s26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s12, s14
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s14, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s13, s29, s14
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s30, s12, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v6, s30, s13, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s35, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 26
.Ltmp17:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s19, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s20, s21, s2
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s21, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s29, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v6, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s33, s29, 6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v7, v8, v2, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s33, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v10, s[16:19], 0 offen
	buffer_load_b128 v[22:25], v9, s[16:19], 0 offen
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_mul_i32 s12, s28, s14
	s_lshl_b32 s34, s28, 6
	v_add_nc_u32_e32 v8, s12, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s29, v6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v7, s12, s34, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v10, 0x70, v17
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[26:29], v6, s[16:19], 0 offen
	buffer_load_b128 v[31:34], v9, s[16:19], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b32 v54, v8, s[4:7], 0 offen
	buffer_load_b32 v55, v7, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v8, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v9, 6, v0
	v_lshlrev_b32_e32 v6, 5, v0
	s_mov_b32 s15, 0
	v_and_b32_e32 v11, 0x420, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v8, v7, 1, v10
	v_lshlrev_b32_e32 v7, 3, v9
	s_mov_b64 s[12:13], s[10:11]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s21, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v10, v11, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 2, v8
	v_or_b32_e32 v14, 4, v8
	v_or_b32_e32 v15, 6, v8
	v_or_b32_e32 v16, 8, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v42, v9, 10, v10
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 10, v8
	v_or_b32_e32 v11, 12, v8
	v_or_b32_e32 v12, 14, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v43, 0x90, v42
	v_xor_b32_e32 v44, 0x120, v42
	v_xor_b32_e32 v45, 0x1b0, v42
	v_xor_b32_e32 v46, 0x210, v42
	v_xor_b32_e32 v47, 0x330, v42
	v_xor_b32_e32 v48, 0x3a0, v42
	v_add_nc_u32_e32 v57, 0, v42
	v_add_nc_u32_e32 v58, 0, v43
	v_add_nc_u32_e32 v59, 0, v44
	v_add_nc_u32_e32 v60, 0, v45
	v_add_nc_u32_e32 v61, 0, v46
	v_add_nc_u32_e32 v62, 0, v47
	v_add_nc_u32_e32 v63, 0, v48
	s_waitcnt vmcnt(4)
	v_perm_b32 v35, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	v_perm_b32 v36, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v49, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v50, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_and_b16 v10.l, 0xff, v35.l
	v_lshrrev_b32_e32 v51, 8, v35
	v_lshrrev_b32_e32 v52, 24, v35
	v_and_b16 v10.h, 0xff, v35.h
	v_lshrrev_b32_e32 v35, 8, v22
	v_lshrrev_b32_e32 v53, 24, v22
	v_lshrrev_b32_e32 v64, 8, v36
	v_lshrrev_b32_e32 v65, 24, v36
	v_lshrrev_b32_e32 v66, 8, v23
	v_lshrrev_b32_e32 v67, 24, v23
	v_lshrrev_b32_e32 v68, 8, v49
	v_lshrrev_b32_e32 v69, 24, v49
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	v_lshrrev_b32_e32 v72, 8, v50
	v_lshrrev_b32_e32 v73, 24, v50
	v_lshrrev_b32_e32 v74, 8, v25
	v_lshrrev_b32_e32 v75, 24, v25
	v_and_b16 v18.l, 0xff, v22.l
	v_and_b16 v18.h, 0xff, v22.h
	v_and_b16 v19.l, 0xff, v36.l
	v_lshlrev_b16 v35.l, 8, v35.l
	v_lshlrev_b16 v35.h, 8, v53.l
	v_lshlrev_b16 v36.l, 8, v64.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v64, v31, v26, 0x5010400
	v_and_b16 v19.h, 0xff, v36.h
	v_and_b16 v22.l, 0xff, v24.l
	v_and_b16 v24.l, 0xff, v25.l
	v_lshlrev_b16 v25.l, 8, v51.l
	v_lshlrev_b16 v36.h, 8, v65.l
	v_and_b16 v20.l, 0xff, v23.l
	v_and_b16 v20.h, 0xff, v23.h
	v_and_b16 v21.l, 0xff, v49.l
	v_and_b16 v21.h, 0xff, v49.h
	v_and_b16 v22.h, 0xff, v24.h
	v_and_b16 v24.h, 0xff, v25.h
	v_lshlrev_b16 v25.h, 8, v52.l
	v_lshlrev_b16 v49.l, 8, v66.l
	v_lshlrev_b16 v49.h, 8, v67.l
	v_perm_b32 v31, v31, v26, 0x7030602
	v_and_b16 v23.l, 0xff, v50.l
	v_and_b16 v23.h, 0xff, v50.h
	v_lshlrev_b16 v50.l, 8, v68.l
	v_lshlrev_b16 v50.h, 8, v69.l
	v_lshlrev_b16 v51.l, 8, v70.l
	v_lshlrev_b16 v51.h, 8, v71.l
	v_lshlrev_b16 v52.l, 8, v72.l
	v_lshlrev_b16 v52.h, 8, v73.l
	v_lshlrev_b16 v53.l, 8, v74.l
	v_lshlrev_b16 v53.h, 8, v75.l
	v_perm_b32 v65, v32, v27, 0x5010400
	v_perm_b32 v32, v32, v27, 0x7030602
	v_perm_b32 v66, v33, v28, 0x5010400
	v_perm_b32 v33, v33, v28, 0x7030602
	v_perm_b32 v67, v34, v29, 0x5010400
	v_perm_b32 v34, v34, v29, 0x7030602
	v_or_b16 v18.l, v18.l, v35.l
	v_or_b16 v18.h, v18.h, v35.h
	v_lshrrev_b32_e32 v35, 8, v64
	v_or_b16 v10.l, v10.l, v25.l
	v_or_b16 v19.l, v19.l, v36.l
	v_or_b16 v19.h, v19.h, v36.h
	v_lshrrev_b32_e32 v36, 24, v64
	v_or_b16 v10.h, v10.h, v25.h
	v_or_b16 v20.l, v20.l, v49.l
	v_or_b16 v20.h, v20.h, v49.h
	v_lshrrev_b32_e32 v49, 8, v31
	v_or_b16 v21.l, v21.l, v50.l
	v_or_b16 v21.h, v21.h, v50.h
	v_lshrrev_b32_e32 v50, 24, v31
	v_or_b16 v22.l, v22.l, v51.l
	v_or_b16 v22.h, v22.h, v51.h
	v_or_b16 v23.l, v23.l, v52.l
	v_or_b16 v23.h, v23.h, v52.h
	v_or_b16 v24.l, v24.l, v53.l
	v_or_b16 v24.h, v24.h, v53.h
	v_and_b16 v25.l, 0xff, v64.l
	v_and_b16 v25.h, 0xff, v64.h
	v_and_b16 v27.l, 0xff, v65.l
	v_lshrrev_b32_e32 v51, 8, v65
	v_lshrrev_b32_e32 v52, 24, v65
	v_and_b16 v27.h, 0xff, v65.h
	v_and_b16 v28.l, 0xff, v32.l
	v_lshrrev_b32_e32 v53, 8, v32
	v_lshrrev_b32_e32 v64, 24, v32
	v_and_b16 v28.h, 0xff, v32.h
	v_and_b16 v29.l, 0xff, v66.l
	v_lshrrev_b32_e32 v65, 8, v66
	v_lshrrev_b32_e32 v68, 24, v66
	v_and_b16 v29.h, 0xff, v66.h
	v_lshrrev_b32_e32 v66, 8, v33
	v_lshrrev_b32_e32 v69, 24, v33
	v_and_b16 v32.l, 0xff, v67.l
	v_lshrrev_b32_e32 v70, 8, v67
	v_lshrrev_b32_e32 v71, 24, v67
	v_and_b16 v32.h, 0xff, v67.h
	v_lshrrev_b32_e32 v67, 8, v34
	v_lshrrev_b32_e32 v72, 24, v34
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v56, v54 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v10
	ds_store_b16_d16_hi v57, v10 offset:64
	ds_store_b16 v58, v18
	ds_store_b16_d16_hi v58, v18 offset:64
	ds_store_b16 v59, v19
	ds_store_b16_d16_hi v59, v19 offset:64
	ds_store_b16 v60, v20
	ds_store_b16_d16_hi v60, v20 offset:64
	ds_store_b16 v61, v21
	ds_store_b16_d16_hi v61, v21 offset:64
	ds_store_b16 v57, v22 offset:640
	ds_store_b16_d16_hi v57, v22 offset:704
	ds_store_b16 v62, v23
	ds_store_b16_d16_hi v62, v23 offset:64
	ds_store_b16 v63, v24
	ds_store_b16_d16_hi v63, v24 offset:64
	v_lshlrev_b16 v10.l, 8, v35.l
	v_lshlrev_b16 v10.h, 8, v36.l
	v_and_b16 v26.l, 0xff, v31.l
	v_lshlrev_b16 v18.l, 8, v49.l
	v_and_b16 v26.h, 0xff, v31.h
	v_lshlrev_b16 v18.h, 8, v50.l
	v_and_b16 v31.l, 0xff, v33.l
	v_and_b16 v31.h, 0xff, v33.h
	v_and_b16 v33.l, 0xff, v34.l
	v_and_b16 v33.h, 0xff, v34.h
	v_lshlrev_b16 v19.l, 8, v51.l
	v_lshlrev_b16 v19.h, 8, v52.l
	v_lshlrev_b16 v20.l, 8, v53.l
	v_lshlrev_b16 v20.h, 8, v64.l
	v_lshlrev_b16 v21.l, 8, v65.l
	v_lshlrev_b16 v21.h, 8, v68.l
	v_lshlrev_b16 v22.l, 8, v66.l
	v_lshlrev_b16 v22.h, 8, v69.l
	v_lshlrev_b16 v23.l, 8, v70.l
	v_lshlrev_b16 v23.h, 8, v71.l
	v_lshlrev_b16 v24.l, 8, v67.l
	v_lshlrev_b16 v24.h, 8, v72.l
	v_or_b16 v10.l, v25.l, v10.l
	v_or_b16 v10.h, v25.h, v10.h
	v_or_b16 v18.l, v26.l, v18.l
	v_or_b16 v18.h, v26.h, v18.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v19.l, v27.l, v19.l
	v_or_b16 v19.h, v27.h, v19.h
	v_or_b16 v20.l, v28.l, v20.l
	v_or_b16 v20.h, v28.h, v20.h
	v_or_b16 v21.l, v29.l, v21.l
	v_or_b16 v21.h, v29.h, v21.h
	v_or_b16 v22.l, v31.l, v22.l
	v_or_b16 v22.h, v31.h, v22.h
	v_or_b16 v23.l, v32.l, v23.l
	v_or_b16 v23.h, v32.h, v23.h
	v_or_b16 v24.l, v33.l, v24.l
	v_or_b16 v24.h, v33.h, v24.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v55 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v10 offset:8192
	ds_store_b16_d16_hi v57, v10 offset:8256
	ds_store_b16 v58, v18 offset:8192
	ds_store_b16_d16_hi v58, v18 offset:8256
	ds_store_b16 v59, v19 offset:8192
	ds_store_b16_d16_hi v59, v19 offset:8256
	ds_store_b16 v60, v20 offset:8192
	ds_store_b16_d16_hi v60, v20 offset:8256
	ds_store_b16 v61, v21 offset:8192
	ds_store_b16_d16_hi v61, v21 offset:8256
	ds_store_b16 v57, v22 offset:8832
	ds_store_b16_d16_hi v57, v22 offset:8896
	ds_store_b16 v62, v23 offset:8192
	ds_store_b16_d16_hi v62, v23 offset:8256
	ds_store_b16 v63, v24 offset:8192
	ds_store_b16_d16_hi v63, v24 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v10, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v50, 6, v5
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v51, 32, v0
	v_and_or_b32 v49, 0x1800, v6, v7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s18, s14, 64
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr18
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr49
.LBB0_3:                                ; %Flow23
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v19, s35, v30
	s_ashr_i32 s31, s20, 6
	v_or_b32_e32 v35, s30, v8
	v_or_b32_e32 v34, s30, v13
	v_or_b32_e32 v33, s30, v14
	v_mul_lo_u32 v36, v19, s31
	v_or_b32_e32 v31, s30, v15
	v_or_b32_e32 v28, s30, v16
	v_or_b32_e32 v32, s30, v9
	v_or_b32_e32 v29, s30, v11
	v_or_b32_e32 v27, s30, v12
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 5, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v4, s14, v4
	v_bfe_i32 v8, v0, 3, 1
	v_and_or_b32 v49, 0x1800, v6, v7
	v_add3_u32 v3, s14, v3, 0x80
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v5, 0x420, v5
	v_add_nc_u32_e32 v6, 0x81, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	s_lshl_b32 s10, s27, 7
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v5, 0x210, v8, v5
	v_mul_lo_u32 v3, s28, v3
	v_mul_lo_u32 v6, s29, v6
	v_mul_lo_u32 v4, s29, v4
	s_lshl_b32 s15, s26, 7
	v_xor_b32_e32 v5, v5, v49
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v20, 0
	v_add3_u32 v56, v3, s35, v2
	v_or_b32_e32 v50, v5, v41
	v_add3_u32 v5, v6, s10, v1
	v_add3_u32 v1, v4, s10, v1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_xor_b32_e32 v51, 16, v50
	v_xor_b32_e32 v52, 32, v50
	v_subrev_nc_u32_e32 v55, s15, v1
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v53, 48, v50
	v_subrev_nc_u32_e32 v54, s15, v5
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v8, v1
	s_max_i32 s10, s31, 3
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_add_i32 s11, s10, -2
	s_mov_b32 s15, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s28, 0, 0x4400
	s_add_i32 s35, 0, 0x2000
	s_mov_b32 s36, 1
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v57, v56, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v55, s[16:19], 0 offen
	buffer_load_b128 v[13:16], v54, s[16:19], 0 offen
	s_mov_b32 s37, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s14, s37, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s14, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s38, s14, s29
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v58, v36, s14, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v59, v35, s38, 1
	v_add_lshl_u32 v60, v34, s38, 1
	v_add_lshl_u32 v61, v33, s38, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v62, v31, s38, 1
	v_add_lshl_u32 v63, v28, s38, 1
	v_add_lshl_u32 v64, v32, s38, 1
	v_add_lshl_u32 v65, v29, s38, 1
	v_add_lshl_u32 v66, v27, s38, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v98, v58, s[20:23], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v99, v59, s[24:27], 0 offen
	buffer_load_u16 v100, v60, s[24:27], 0 offen
	buffer_load_u16 v101, v61, s[24:27], 0 offen
	buffer_load_u16 v102, v62, s[24:27], 0 offen
	buffer_load_u16 v103, v63, s[24:27], 0 offen
	buffer_load_u16 v104, v64, s[24:27], 0 offen
	buffer_load_u16 v105, v65, s[24:27], 0 offen
	buffer_load_u16 v106, v66, s[24:27], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s10, s28
	s_mov_b32 s28, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s14, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v59, s28, v50
	v_add_nc_u32_e32 v60, s28, v51
	v_add_nc_u32_e32 v61, s28, v52
	v_add_nc_u32_e32 v62, s28, v53
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v63, s14, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[66:69], v59
	ds_load_b128 v[70:73], v60
	ds_load_b128 v[74:77], v61
	ds_load_b128 v[78:81], v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v59, v58 offset:208
	ds_load_u8 v60, v58 offset:240
	ds_load_u8 v61, v58 offset:224
	ds_load_u8 v62, v58 offset:192
	ds_load_u8 v64, v58 offset:144
	ds_load_u8 v65, v58 offset:176
	ds_load_u8 v82, v58 offset:160
	ds_load_u8 v83, v58 offset:128
	ds_load_u8 v84, v58 offset:80
	ds_load_u8 v85, v58 offset:112
	ds_load_u8 v86, v58 offset:96
	ds_load_u8 v87, v58 offset:64
	ds_load_u8 v88, v58
	ds_load_u8 v89, v58 offset:16
	ds_load_u8 v90, v58 offset:32
	ds_load_u8 v91, v58 offset:48
	ds_load_u8 v92, v58 offset:464
	ds_load_u8 v93, v58 offset:496
	ds_load_u8 v94, v58 offset:480
	ds_load_u8 v95, v58 offset:448
	ds_load_u8 v96, v58 offset:400
	ds_load_u8 v97, v58 offset:432
	ds_load_u8 v107, v58 offset:416
	ds_load_u8 v108, v58 offset:384
	ds_load_u8 v109, v58 offset:336
	ds_load_u8 v110, v58 offset:368
	ds_load_u8 v111, v58 offset:352
	ds_load_u8 v112, v58 offset:320
	ds_load_u8 v113, v58 offset:272
	ds_load_u8 v114, v58 offset:304
	ds_load_u8 v115, v58 offset:288
	ds_load_u8 v116, v58 offset:256
	ds_load_u8 v117, v58 offset:720
	ds_load_u8 v118, v58 offset:752
	ds_load_u8 v119, v58 offset:736
	ds_load_u8 v120, v58 offset:704
	ds_load_u8 v121, v58 offset:656
	ds_load_u8 v122, v58 offset:688
	ds_load_u8 v123, v58 offset:672
	ds_load_u8 v124, v58 offset:640
	ds_load_u8 v125, v58 offset:592
	ds_load_u8 v126, v58 offset:624
	ds_load_u8 v127, v58 offset:608
	ds_load_u8 v128, v58 offset:576
	ds_load_u8 v129, v58 offset:528
	ds_load_u8 v130, v58 offset:560
	ds_load_u8 v131, v58 offset:544
	ds_load_u8 v132, v58 offset:512
	ds_load_u8 v133, v58 offset:976
	ds_load_u8 v63, v63
	ds_load_u8 v134, v58 offset:992
	ds_load_u8 v135, v58 offset:960
	ds_load_u8 v136, v58 offset:912
	ds_load_u8 v137, v58 offset:944
	ds_load_u8 v138, v58 offset:928
	ds_load_u8 v139, v58 offset:896
	ds_load_u8 v140, v58 offset:848
	ds_load_u8 v141, v58 offset:880
	ds_load_u8 v142, v58 offset:864
	ds_load_u8 v143, v58 offset:832
	ds_load_u8 v144, v58 offset:784
	ds_load_u8 v145, v58 offset:816
	ds_load_u8 v146, v58 offset:800
	ds_load_u8 v58, v58 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v59, v62, v59, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v61, v83, v64, 0xc0c0004
	v_perm_b32 v62, v82, v65, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v64, v87, v84, 0xc0c0004
	v_perm_b32 v65, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v82, v88, v89, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v86, v90, v91, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v87, v95, v92, 0xc0c0004
	v_perm_b32 v88, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v90, v108, v96, 0xc0c0004
	v_perm_b32 v91, v107, v97, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v92, v112, v109, 0xc0c0004
	v_perm_b32 v93, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v94, v116, v113, 0xc0c0004
	v_perm_b32 v95, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v96, v120, v117, 0xc0c0004
	v_perm_b32 v97, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v113, v135, v133, 0xc0c0004
	v_perm_b32 v63, v134, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v144, 0xc0c0004
	v_perm_b32 v118, v146, v145, 0xc0c0004
	v_lshl_or_b32 v85, v60, 16, v59
	v_lshl_or_b32 v84, v62, 16, v61
	v_lshl_or_b32 v83, v65, 16, v64
	v_lshl_or_b32 v82, v86, 16, v82
	v_perm_b32 v107, v124, v121, 0xc0c0004
	v_perm_b32 v108, v123, v122, 0xc0c0004
	v_perm_b32 v109, v128, v125, 0xc0c0004
	v_perm_b32 v110, v127, v126, 0xc0c0004
	v_perm_b32 v111, v132, v129, 0xc0c0004
	v_perm_b32 v112, v131, v130, 0xc0c0004
	v_lshl_or_b32 v89, v88, 16, v87
	v_lshl_or_b32 v88, v91, 16, v90
	v_lshl_or_b32 v87, v93, 16, v92
	v_lshl_or_b32 v86, v95, 16, v94
	v_lshl_or_b32 v93, v97, 16, v96
	v_lshl_or_b32 v97, v63, 16, v113
	v_lshl_or_b32 v94, v118, 16, v58
	v_wmma_i32_16x16x16_iu8 v[58:65], v[66:69], v[82:85], v[1:8] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s36, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v114, v139, v136, 0xc0c0004
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s14, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v115, v138, v137, 0xc0c0004
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s14, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v116, v143, v140, 0xc0c0004
	v_perm_b32 v117, v142, v141, 0xc0c0004
	v_lshl_or_b32 v92, v108, 16, v107
	v_lshl_or_b32 v91, v110, 16, v109
	v_lshl_or_b32 v90, v112, 16, v111
	v_wmma_i32_16x16x16_iu8 v[58:65], v[70:73], v[86:89], v[58:65] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s28, s36, 10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v96, v115, 16, v114
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s38, s28, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v95, v117, 16, v116
	v_wmma_i32_16x16x16_iu8 v[58:65], v[74:77], v[90:93], v[58:65] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v147, s38, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s15, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[78:81], v[94:97], v[58:65] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s35, s36, 13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, -1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s35, s35, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s37, 64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v66, v58
	v_cvt_f32_i32_e32 v67, v59
	v_cvt_f32_i32_e32 v70, v62
	v_cvt_f32_i32_e32 v71, v63
	v_cvt_f32_i32_e32 v72, v64
	v_cvt_f32_i32_e32 v68, v60
	v_cvt_f32_i32_e32 v69, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v148, s35, v42
	v_add_nc_u32_e32 v149, s35, v43
	v_add_nc_u32_e32 v150, s35, v44
	v_add_nc_u32_e32 v151, s35, v45
	v_add_nc_u32_e32 v152, s35, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s28, s38, 0x4000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v154, s35, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s11, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(11)
	ds_store_b32 v147, v57 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v57, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v58, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v59, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_lshrrev_b32_e32 v62, 8, v57
	v_lshrrev_b32_e32 v63, 24, v57
	v_lshrrev_b32_e32 v64, 8, v13
	v_lshrrev_b32_e32 v73, 24, v13
	v_perm_b32 v60, v16, v12, 0x5010400
	v_perm_b32 v61, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v74, 8, v58
	v_lshrrev_b32_e32 v75, 24, v58
	v_lshrrev_b32_e32 v76, 8, v14
	v_lshrrev_b32_e32 v77, 24, v14
	v_lshrrev_b32_e32 v78, 8, v59
	v_lshrrev_b32_e32 v79, 24, v59
	v_lshrrev_b32_e32 v80, 8, v15
	v_lshrrev_b32_e32 v81, 24, v15
	v_and_b16 v9.l, 0xff, v57.l
	v_lshlrev_b16 v57.l, 8, v62.l
	v_and_b16 v9.h, 0xff, v57.h
	v_lshlrev_b16 v57.h, 8, v63.l
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v58.l
	v_lshlrev_b16 v58.l, 8, v64.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v58.h
	v_lshlrev_b16 v58.h, 8, v73.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.l, 0xff, v59.l
	v_and_b16 v13.h, 0xff, v59.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v60.l
	v_lshrrev_b32_e32 v82, 8, v60
	v_lshrrev_b32_e32 v83, 24, v60
	v_and_b16 v15.h, 0xff, v60.h
	v_and_b16 v16.l, 0xff, v61.l
	v_lshrrev_b32_e32 v84, 8, v61
	v_lshrrev_b32_e32 v85, 24, v61
	v_and_b16 v16.h, 0xff, v61.h
	v_lshlrev_b16 v59.l, 8, v74.l
	v_lshlrev_b16 v59.h, 8, v75.l
	v_lshlrev_b16 v60.l, 8, v76.l
	v_lshlrev_b16 v60.h, 8, v77.l
	v_lshlrev_b16 v61.l, 8, v78.l
	v_lshlrev_b16 v61.h, 8, v79.l
	v_lshlrev_b16 v62.l, 8, v80.l
	v_lshlrev_b16 v62.h, 8, v81.l
	v_or_b16 v9.l, v9.l, v57.l
	v_or_b16 v9.h, v9.h, v57.h
	v_or_b16 v10.l, v10.l, v58.l
	v_or_b16 v10.h, v10.h, v58.h
	v_or_b16 v11.l, v11.l, v59.l
	v_or_b16 v11.h, v11.h, v59.h
	v_or_b16 v12.l, v12.l, v60.l
	v_or_b16 v12.h, v12.h, v60.h
	v_or_b16 v13.l, v13.l, v61.l
	v_or_b16 v13.h, v13.h, v61.h
	v_or_b16 v14.l, v14.l, v62.l
	v_or_b16 v14.h, v14.h, v62.h
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v57, 16, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v148, v9
	ds_store_b16_d16_hi v148, v9 offset:64
	ds_store_b16 v149, v10
	ds_store_b16_d16_hi v149, v10 offset:64
	ds_store_b16 v150, v11
	ds_store_b16_d16_hi v150, v11 offset:64
	ds_store_b16 v151, v12
	ds_store_b16_d16_hi v151, v12 offset:64
	ds_store_b16 v152, v13
	ds_store_b16_d16_hi v152, v13 offset:64
	ds_store_b16 v148, v14 offset:640
	ds_store_b16_d16_hi v148, v14 offset:704
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v99
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v100
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v101
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v102
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v13, 16, v103
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v14, 16, v104
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v58, 16, v105
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v106
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v9, v57, v9 :: v_dual_add_nc_u32 v54, s33, v54
	v_dual_mul_f32 v10, v57, v10 :: v_dual_add_nc_u32 v55, s33, v55
	v_dual_mul_f32 v11, v57, v11 :: v_dual_add_nc_u32 v56, s34, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v63.l, 8, v82.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v57, v12
	v_mul_f32_e32 v13, v57, v13
	v_mul_f32_e32 v14, v57, v14
	v_mul_f32_e32 v58, v57, v58
	v_mul_f32_e32 v57, v57, v59
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v63.h, 8, v83.l
	v_lshlrev_b16 v64.l, 8, v84.l
	v_lshlrev_b16 v64.h, 8, v85.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v26, v58, v72 :: v_dual_add_nc_u32 v153, s35, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.l, v15.l, v63.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v18, v9, v66 :: v_dual_fmac_f32 v21, v10, v67
	v_dual_fmac_f32 v22, v11, v68 :: v_dual_fmac_f32 v23, v12, v69
	v_dual_fmac_f32 v24, v13, v70 :: v_dual_fmac_f32 v25, v14, v71
	v_fmac_f32_e32 v20, v57, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.h, v15.h, v63.h
	v_or_b16 v16.l, v16.l, v64.l
	v_or_b16 v16.h, v16.h, v64.h
	ds_store_b16 v153, v15
	ds_store_b16_d16_hi v153, v15 offset:64
	ds_store_b16 v154, v16
	ds_store_b16_d16_hi v154, v16 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v10, v38 :: v_dual_mov_b32 v5, v39
	v_dual_mov_b32 v50, v41 :: v_dual_mov_b32 v51, v40
	s_add_i32 s18, s37, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v18, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s28, 0, 0x4400
	s_add_i32 s35, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_mov_b32_e32 v5, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v51
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v1, v2
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v6, v2, v49
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v37, v6, v50
	v_mov_b32_e32 v6, 0
	v_xor_b32_e32 v41, 16, v37
	v_xor_b32_e32 v42, 32, v37
	v_xor_b32_e32 v43, 48, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v15, s10, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s15, v43
	v_add_nc_u32_e32 v6, s15, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v38, v15 offset:240
	ds_load_u8 v39, v15 offset:144
	ds_load_u8 v40, v15 offset:176
	ds_load_u8 v44, v15 offset:160
	ds_load_u8 v45, v15 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[6:9], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v46, v15 offset:112
	ds_load_u8 v47, v15 offset:80
	ds_load_u8 v48, v15 offset:96
	ds_load_u8 v49, v15 offset:64
	ds_load_u8 v50, v15
	ds_load_u8 v51, v15 offset:16
	ds_load_u8 v56, v15 offset:32
	ds_load_u8 v57, v15 offset:48
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v40, v44, v40, 0xc0c0004
	v_mov_b32_e32 v44, 0
	ds_load_u8 v11, v15 offset:208
	ds_load_u8 v12, v15 offset:224
	ds_load_u8 v13, v15 offset:192
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v39, v45, v39, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v14, s15, v41
	v_add_nc_u32_e32 v16, s15, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v60, v15 offset:336
	ds_load_u8 v61, v15 offset:352
	ds_load_u8 v62, v15 offset:320
	ds_load_u8 v63, v15 offset:272
	ds_load_u8 v64, v15 offset:304
	ds_load_u8 v65, v15 offset:288
	ds_load_u8 v66, v15 offset:256
	ds_load_u8 v69, v15 offset:496
	ds_load_u8 v70, v15 offset:400
	ds_load_u8 v71, v15 offset:432
	ds_load_u8 v72, v15 offset:416
	ds_load_u8 v73, v15 offset:384
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v45, v50, v51, 0xc0c0004
	v_mov_b32_e32 v51, v44
	v_mov_b32_e32 v50, v44
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v38, v12, v38, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v13, v11, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v60, v62, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v65, v64, 0xc0c0004
	v_lshl_or_b32 v59, v38, 16, v58
	v_lshl_or_b32 v58, v40, 16, v39
	v_perm_b32 v38, v49, v47, 0xc0c0004
	v_perm_b32 v39, v48, v46, 0xc0c0004
	v_mov_b32_e32 v49, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[11:14], v14
	ds_load_b128 v[52:55], v16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v16, s10, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v46, v56, v57, 0xc0c0004
	v_lshl_or_b32 v57, v39, 16, v38
	ds_load_u8 v38, v15 offset:368
	ds_load_u8 v40, v15 offset:464
	ds_load_u8 v67, v15 offset:480
	ds_load_u8 v68, v15 offset:448
	ds_load_u8 v16, v16
	v_mov_b32_e32 v47, v44
	v_lshl_or_b32 v56, v46, 16, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v46, v44
	v_mov_b32_e32 v48, v44
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[56:59], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v67, v69, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v39, v68, v40, 0xc0c0004
	ds_load_u8 v40, v15 offset:592
	ds_load_u8 v68, v15 offset:608
	ds_load_u8 v74, v15 offset:576
	ds_load_u8 v75, v15 offset:528
	ds_load_u8 v76, v15 offset:560
	ds_load_u8 v77, v15 offset:544
	ds_load_u8 v78, v15 offset:512
	v_perm_b32 v69, v73, v70, 0xc0c0004
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_perm_b32 v38, v61, v38, 0xc0c0004
	v_perm_b32 v61, v66, v63, 0xc0c0004
	v_lshl_or_b32 v55, v67, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v54, v70, 16, v69
	v_lshl_or_b32 v53, v38, 16, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v52, v62, 16, v61
	ds_load_u8 v38, v15 offset:752
	ds_load_u8 v39, v15 offset:720
	ds_load_u8 v56, v15 offset:736
	ds_load_u8 v57, v15 offset:704
	ds_load_u8 v58, v15 offset:656
	ds_load_u8 v59, v15 offset:672
	ds_load_u8 v60, v15 offset:640
	ds_load_u8 v61, v15 offset:688
	ds_load_u8 v62, v15 offset:624
	ds_load_u8 v63, v15 offset:976
	ds_load_u8 v64, v15 offset:992
	ds_load_u8 v65, v15 offset:960
	ds_load_u8 v66, v15 offset:912
	ds_load_u8 v67, v15 offset:944
	ds_load_u8 v69, v15 offset:928
	ds_load_u8 v70, v15 offset:896
	ds_load_u8 v71, v15 offset:880
	ds_load_u8 v72, v15 offset:848
	ds_load_u8 v73, v15 offset:864
	ds_load_u8 v79, v15 offset:832
	ds_load_u8 v80, v15 offset:784
	ds_load_u8 v81, v15 offset:816
	ds_load_u8 v82, v15 offset:800
	ds_load_u8 v15, v15 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v39, v57, v39, 0xc0c0004
	v_perm_b32 v38, v56, v38, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v56, v60, v58, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v59, v61, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v58, v68, v62, 0xc0c0004
	v_perm_b32 v40, v74, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[44:51], v[11:14], v[52:55], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v14, v38, 16, v39
	v_perm_b32 v60, v77, v76, 0xc0c0004
	v_perm_b32 v59, v78, v75, 0xc0c0004
	v_lshl_or_b32 v13, v57, 16, v56
	v_lshl_or_b32 v12, v58, 16, v40
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v65, v63, 0xc0c0004
	v_perm_b32 v16, v64, v16, 0xc0c0004
	v_lshl_or_b32 v11, v60, 16, v59
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v70, v66, 0xc0c0004
	v_perm_b32 v40, v69, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v79, v72, 0xc0c0004
	v_perm_b32 v53, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v80, 0xc0c0004
	v_perm_b32 v54, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[44:51], v[6:9], v[11:14], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v16, 16, v38
	v_lshl_or_b32 v8, v40, 16, v39
	v_lshl_or_b32 v7, v53, 16, v52
	v_lshl_or_b32 v6, v54, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[2:5], v[6:9], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v46
	v_cvt_f32_i32_e32 v5, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v48
	v_cvt_f32_i32_e32 v7, v49
	v_cvt_f32_i32_e32 v8, v50
	v_cvt_f32_i32_e32 v9, v51
	v_cvt_f32_i32_e32 v4, v44
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s14, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s14, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s14, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s15, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v11, v36, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s29
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v12, v35, s4, 1
	v_add_lshl_u32 v13, v34, s4, 1
	v_add_lshl_u32 v14, v33, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v15, v31, s4, 1
	v_add_lshl_u32 v16, v28, s4, 1
	v_add_lshl_u32 v38, v32, s4, 1
	v_add_lshl_u32 v39, v29, s4, 1
	v_add_lshl_u32 v40, v27, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_mov_b32 v45, 0
	s_clause 0x7
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	buffer_load_u16 v40, v40, s[12:15], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s28, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v43, s35, v43
	v_add_nc_u32_e32 v42, s35, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v30, v1 offset:208
	ds_load_u8 v44, v1 offset:224
	ds_load_u8 v45, v1 offset:192
	ds_load_u8 v46, v1 offset:240
	ds_load_u8 v47, v1 offset:144
	ds_load_u8 v48, v1 offset:176
	ds_load_u8 v49, v1 offset:160
	ds_load_u8 v50, v1 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[51:54], v43
	ds_load_b128 v[55:58], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v42, v1 offset:112
	ds_load_u8 v43, v1 offset:80
	ds_load_u8 v67, v1 offset:96
	ds_load_u8 v68, v1 offset:64
	ds_load_u8 v71, v1
	ds_load_u8 v72, v1 offset:16
	ds_load_u8 v73, v1 offset:32
	ds_load_u8 v74, v1 offset:48
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v44, v44, v46, 0xc0c0004
	v_perm_b32 v30, v45, v30, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v47, 0xc0c0004
	v_perm_b32 v46, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v70, v44, 16, v30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v68, v43, 0xc0c0004
	v_mov_b32_e32 v43, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s35, v41
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v69, v46, 16, v45
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v44, v71, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v73, v74, 0xc0c0004
	v_mov_b32_e32 v46, v43
	v_mov_b32_e32 v48, v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[59:62], v41
	ds_load_b128 v[63:66], v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v37, v67, v42, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v10, s28, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v67, v45, 16, v44
	v_mov_b32_e32 v44, v43
	ds_load_u8 v75, v1 offset:336
	ds_load_u8 v76, v1 offset:352
	ds_load_u8 v77, v1 offset:320
	ds_load_u8 v78, v1 offset:272
	ds_load_u8 v79, v1 offset:304
	ds_load_u8 v80, v1 offset:288
	ds_load_u8 v81, v1 offset:256
	ds_load_u8 v71, v1 offset:496
	ds_load_u8 v72, v1 offset:400
	ds_load_u8 v73, v1 offset:432
	ds_load_u8 v74, v1 offset:416
	ds_load_u8 v83, v1 offset:384
	v_lshl_or_b32 v68, v37, 16, v30
	ds_load_u8 v30, v1 offset:368
	v_mov_b32_e32 v45, v43
	ds_load_u8 v41, v1 offset:464
	ds_load_u8 v42, v1 offset:480
	ds_load_u8 v82, v1 offset:448
	ds_load_u8 v10, v10
	v_mov_b32_e32 v47, v43
	v_mov_b32_e32 v49, v43
	v_mov_b32_e32 v50, v43
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[67:70], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v42, v71, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v82, v41, 0xc0c0004
	ds_load_u8 v41, v1 offset:592
	ds_load_u8 v82, v1 offset:608
	ds_load_u8 v84, v1 offset:576
	ds_load_u8 v85, v1 offset:528
	ds_load_u8 v86, v1 offset:560
	ds_load_u8 v87, v1 offset:544
	ds_load_u8 v88, v1 offset:512
	v_perm_b32 v71, v83, v72, 0xc0c0004
	v_perm_b32 v72, v74, v73, 0xc0c0004
	v_perm_b32 v73, v77, v75, 0xc0c0004
	v_perm_b32 v30, v76, v30, 0xc0c0004
	v_perm_b32 v74, v81, v78, 0xc0c0004
	v_perm_b32 v75, v80, v79, 0xc0c0004
	v_lshl_or_b32 v66, v42, 16, v37
	v_lshl_or_b32 v65, v72, 16, v71
	v_lshl_or_b32 v64, v30, 16, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v63, v75, 16, v74
	ds_load_u8 v30, v1 offset:752
	ds_load_u8 v37, v1 offset:720
	ds_load_u8 v42, v1 offset:736
	ds_load_u8 v67, v1 offset:704
	ds_load_u8 v68, v1 offset:656
	ds_load_u8 v69, v1 offset:672
	ds_load_u8 v70, v1 offset:640
	ds_load_u8 v71, v1 offset:688
	ds_load_u8 v72, v1 offset:624
	ds_load_u8 v73, v1 offset:976
	ds_load_u8 v74, v1 offset:992
	ds_load_u8 v75, v1 offset:960
	ds_load_u8 v76, v1 offset:912
	ds_load_u8 v77, v1 offset:944
	ds_load_u8 v78, v1 offset:928
	ds_load_u8 v79, v1 offset:896
	ds_load_u8 v80, v1 offset:880
	ds_load_u8 v81, v1 offset:848
	ds_load_u8 v83, v1 offset:864
	ds_load_u8 v89, v1 offset:832
	ds_load_u8 v90, v1 offset:784
	ds_load_u8 v91, v1 offset:816
	ds_load_u8 v92, v1 offset:800
	ds_load_u8 v1, v1 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v37, v67, v37, 0xc0c0004
	v_perm_b32 v30, v42, v30, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v42, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v69, v71, 0xc0c0004
	v_perm_b32 v41, v84, v41, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v68, v82, v72, 0xc0c0004
	v_perm_b32 v70, v87, v86, 0xc0c0004
	v_perm_b32 v69, v88, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[63:66], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v30, 16, v37
	v_lshl_or_b32 v61, v67, 16, v42
	v_lshl_or_b32 v60, v68, 16, v41
	v_lshl_or_b32 v59, v70, 16, v69
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v75, v73, 0xc0c0004
	v_perm_b32 v10, v74, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v79, v76, 0xc0c0004
	v_perm_b32 v41, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v42, v89, v81, 0xc0c0004
	v_perm_b32 v63, v83, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v90, 0xc0c0004
	v_perm_b32 v64, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[59:62], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v10, 16, v30
	v_lshl_or_b32 v57, v41, 16, v37
	v_lshl_or_b32 v56, v63, 16, v42
	v_lshl_or_b32 v55, v64, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[55:58], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s18, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v11.h, v40.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s14, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s18, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s15, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v13.h, v38.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v36, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v30, v35, s4, 1
	v_add_lshl_u32 v33, v33, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.l, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v34, s4, 1
	v_add_lshl_u32 v31, v31, s4, 1
	v_add_lshl_u32 v28, v28, s4, 1
	v_add_lshl_u32 v32, v32, s4, 1
	v_add_lshl_u32 v29, v29, s4, 1
	v_add_lshl_u32 v27, v27, s4, 1
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	v_mov_b16_e32 v35.h, v11.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v11.l, v35.l
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_mul_f32 v11, v35, v11
	s_clause 0x7
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v33, v33, s[12:15], 0 offen
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	buffer_load_u16 v32, v32, s[12:15], 0 offen
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	v_mov_b16_e32 v36.h, v13.l
	v_mov_b16_e32 v13.l, v35.l
	v_mov_b16_e32 v12.h, v39.l
	v_mov_b16_e32 v14.h, v16.l
	v_mov_b16_e32 v15.h, v15.l
	v_mov_b16_e32 v16.h, v14.l
	v_mov_b16_e32 v37.h, v12.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v38, 0x5410 :: v_dual_mul_f32 v13, v35, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v12.l, v35.l
	v_mov_b16_e32 v14.l, v35.l
	v_mov_b16_e32 v15.l, v35.l
	v_mov_b16_e32 v16.l, v35.l
	v_mov_b16_e32 v36.l, v35.l
	v_mov_b16_e32 v37.l, v35.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.h, v35.l
	v_mov_b16_e32 v41.h, v35.l
	v_mov_b16_e32 v42.h, v35.l
	v_mov_b16_e32 v43.h, v35.l
	v_mov_b16_e32 v51.h, v35.l
	v_mov_b16_e32 v52.h, v35.l
	v_mov_b16_e32 v53.h, v35.l
	v_mov_b16_e32 v54.h, v35.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v35, v12
	v_mul_f32_e32 v14, v35, v14
	v_mul_f32_e32 v15, v35, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v11, v9, v20
	v_fma_f32 v7, v13, v7, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_and_b32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v19, v19, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v20, v9, s2
	v_cndmask_b32_e64 v7, v25, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s1, s1, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v15, v5, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v16, v35, v16 :: v_dual_lshlrev_b32 v11, 16, v30
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v36, v35, v36 :: v_dual_lshlrev_b32 v13, 16, v33
	v_mul_f32_e32 v35, v35, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v12, v8, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v11, v10, v11 :: v_dual_lshlrev_b32 v12, 16, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v16, v3, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v4, v35, v4, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v10, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v36, v2, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v10, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v22, v3, s2
	v_cndmask_b32_e64 v4, v18, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v14, v6, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s2
	v_cndmask_b32_e64 v8, v26, v8, s2
	v_cndmask_b32_e64 v5, v23, v5, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v11, v1, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v24, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v12, v44, v2
	v_fma_f32 v12, v13, v45, v3
	s_mov_b32 s2, 0x76543210
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v4, v1, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v14, 16, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v11, s3
	v_cndmask_b32_e64 v3, v3, v12, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v29
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v14, v10, v14 :: v_dual_lshlrev_b32 v15, 16, v28
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v3, v3, v3 :: v_dual_lshlrev_b32 v16, 16, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v10, v18
	v_mul_f32_e32 v15, v10, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v14, v46, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v16, v10, v16 :: v_dual_max_f32 v1, 0, v1
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v15, v47, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v5, v13, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v16, v48, v7
	v_fma_f32 v16, v18, v49, v8
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v6, v14, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v7, v15, s3
	v_cndmask_b32_e64 v7, v8, v16, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, v4, v4 :: v_dual_mul_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v5, v5 :: v_dual_mul_f32 v10, v10, v20
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v5, 0, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v50, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v2, 0, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v1.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v9, v10, s3
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_and_b32 v9, 1, v41
	v_max_f32_e32 v8, v8, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v2.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v6, 0, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v1, v9, 0x7fff
	v_mov_b16_e32 v43.l, v3.h
	v_and_b32_e32 v10, 1, v52
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v11, 1, v40
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, 0, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v54.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v5, v10, 0x7fff
	v_add3_u32 v2, v2, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v39, vcc_lo
	v_mov_b16_e32 v51.l, v6.h
	v_mov_b16_e32 v2.l, v1.h
	v_dual_cndmask_b32 v10, 0x1054, v38 :: v_dual_and_b32 v1, 1, v43
	s_mov_b32 s3, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v12, 1, v51
	v_add3_u32 v1, v3, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v10, 8, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v6, v12, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v12, 1, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, v6, v2, vcc_lo
	v_mov_b16_e32 v42.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v7, v12, 0x7fff
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_and_b32_e32 v0, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v0, v4, v0, 0x7fff
	v_mov_b16_e32 v0.l, v1.h
	v_and_b32_e32 v1, 0x540054, v3
	v_mov_b16_e32 v53.l, v8.h
	v_lshl_or_b32 v4, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v1, 4, v1
	v_and_b32_e32 v5, 1, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 0x760076, v4
	v_and_b32_e32 v6, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v8, v5, 0x7fff
	v_mov_b16_e32 v5.l, v7.h
	v_lshl_or_b32 v3, v3, 4, v3
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_and_or_b32 v7, 0x78, v17, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_cndmask_b32 v4, v0, v5 :: v_dual_and_b32 v3, 0x7060706, v3
	v_cndmask_b32_e32 v5, v5, v0, vcc_lo
	v_perm_b32 v0, v2, v9, v6
	v_permlanex16_b32 v4, v4, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v2, v9, v3
	s_mov_b32 s2, s10
	v_perm_b32 v2, v4, v5, v6
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v7, v19, 1
	buffer_store_b128 v[0:3], v4, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 155
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9752
; TotalNumSgprs: 41
; NumVgprs: 155
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     155
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
