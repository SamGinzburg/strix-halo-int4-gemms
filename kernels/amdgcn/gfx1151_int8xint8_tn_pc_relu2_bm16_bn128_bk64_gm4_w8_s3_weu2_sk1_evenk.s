	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v18, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v6, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v0
	v_or_b32_e32 v19, 0x3f0, v0
	v_and_b32_e32 v20, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 12, v18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v46, 0, v18
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v4, 62, v3
	v_and_b32_e32 v21, 32, v0
	v_lshlrev_b32_e32 v22, 6, v6
	s_mov_b32 s20, 0
	s_load_b32 s26, s[0:1], 0x38
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s16, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
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
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v5, s16, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_abs_i32 s12, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s12
	s_sub_i32 s14, 0, s12
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b128 s[8:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s13, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[7:8], null, s17, v4, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s13, s13
	s_mul_i32 s14, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s13, s14
	s_add_i32 s13, s13, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s13
	s_xor_b32 s13, s2, s7
	s_mul_i32 s14, s4, s12
	s_ashr_i32 s23, s13, 31
	s_sub_i32 s5, s5, s14
	s_add_i32 s13, s4, 1
	s_sub_i32 s14, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s5, s14, s5
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s25, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s24, s4, s23
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s17, s25
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s24, s23
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s26, s26, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s18, s3, v7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[10:11]
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s26, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s17, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s26, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v7, s3
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_cndmask_b32_e64 v13, 0x80000000, v9, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s21, s17, 6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s21, v7
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v5, v5, v2, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s16, s25
	s_lshl_b32 s22, s16, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s17, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s4, v5
	v_add3_u32 v5, s4, s22, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s26, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[30:33], v7, s[12:15], 0 offen
	buffer_load_b128 v[34:37], v17, s[12:15], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b32 v44, v8, s[8:11], 0 offen
	buffer_load_b32 v45, v5, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v5, v0, 0, 1
	v_and_b32_e32 v8, 6, v0
	v_lshlrev_b32_e32 v7, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 0x420, v5
	v_xor_b32_e32 v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v23, v8, 10, v5
	v_lshlrev_b32_e32 v8, 3, v8
	v_xor_b32_e32 v24, 0x90, v23
	v_xor_b32_e32 v25, 0x120, v23
	v_xor_b32_e32 v26, 0x1b0, v23
	v_xor_b32_e32 v27, 0x210, v23
	v_xor_b32_e32 v28, 0x330, v23
	v_xor_b32_e32 v29, 0x3a0, v23
	v_add_nc_u32_e32 v47, 0, v23
	v_add_nc_u32_e32 v48, 0, v24
	v_add_nc_u32_e32 v49, 0, v25
	v_add_nc_u32_e32 v50, 0, v26
	v_add_nc_u32_e32 v51, 0, v27
	v_add_nc_u32_e32 v52, 0, v28
	v_add_nc_u32_e32 v53, 0, v29
	s_waitcnt vmcnt(4)
	v_perm_b32 v38, v14, v10, 0x5010400
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v39, v15, v11, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v40, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v54, 8, v38
	v_lshrrev_b32_e32 v55, 24, v38
	v_lshrrev_b32_e32 v41, 8, v17
	v_lshrrev_b32_e32 v56, 8, v14
	v_lshrrev_b32_e32 v57, 24, v14
	v_lshrrev_b32_e32 v42, 24, v17
	v_lshrrev_b32_e32 v58, 8, v39
	v_lshrrev_b32_e32 v59, 24, v39
	v_and_b16 v5.l, 0xff, v17.l
	v_and_b16 v5.h, 0xff, v17.h
	v_lshrrev_b32_e32 v17, 8, v13
	v_lshrrev_b32_e32 v60, 8, v15
	v_lshrrev_b32_e32 v61, 24, v15
	v_lshrrev_b32_e32 v43, 24, v13
	v_lshrrev_b32_e32 v62, 8, v40
	v_lshrrev_b32_e32 v63, 24, v40
	v_lshrrev_b32_e32 v64, 8, v16
	v_lshrrev_b32_e32 v65, 24, v16
	v_and_b16 v10.l, 0xff, v38.l
	v_and_b16 v10.h, 0xff, v38.h
	v_lshlrev_b16 v38.l, 8, v54.l
	v_lshlrev_b16 v38.h, 8, v55.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v54, v34, v30, 0x5010400
	v_and_b16 v9.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v14.l
	v_and_b16 v11.h, 0xff, v14.h
	v_and_b16 v12.l, 0xff, v39.l
	v_and_b16 v12.h, 0xff, v39.h
	v_and_b16 v13.l, 0xff, v15.l
	v_and_b16 v15.l, 0xff, v16.l
	v_lshlrev_b16 v16.l, 8, v41.l
	v_lshlrev_b16 v39.l, 8, v56.l
	v_lshlrev_b16 v39.h, 8, v57.l
	v_and_b16 v9.h, 0xff, v13.h
	v_and_b16 v13.h, 0xff, v15.h
	v_and_b16 v14.l, 0xff, v40.l
	v_and_b16 v14.h, 0xff, v40.h
	v_and_b16 v15.h, 0xff, v16.h
	v_lshlrev_b16 v16.h, 8, v42.l
	v_lshlrev_b16 v40.l, 8, v58.l
	v_lshlrev_b16 v40.h, 8, v59.l
	v_perm_b32 v30, v34, v30, 0x7030602
	v_lshlrev_b16 v17.l, 8, v17.l
	v_lshlrev_b16 v41.l, 8, v60.l
	v_lshlrev_b16 v41.h, 8, v61.l
	v_lshlrev_b16 v17.h, 8, v43.l
	v_lshlrev_b16 v42.l, 8, v62.l
	v_lshlrev_b16 v42.h, 8, v63.l
	v_lshlrev_b16 v43.l, 8, v64.l
	v_lshlrev_b16 v43.h, 8, v65.l
	v_perm_b32 v34, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v55, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v56, v37, v33, 0x5010400
	v_perm_b32 v37, v37, v33, 0x7030602
	v_or_b16 v10.l, v10.l, v38.l
	v_or_b16 v10.h, v10.h, v38.h
	v_lshrrev_b32_e32 v38, 8, v54
	v_or_b16 v5.l, v5.l, v16.l
	v_or_b16 v11.l, v11.l, v39.l
	v_or_b16 v11.h, v11.h, v39.h
	v_lshrrev_b32_e32 v39, 24, v54
	v_or_b16 v5.h, v5.h, v16.h
	v_or_b16 v12.l, v12.l, v40.l
	v_or_b16 v12.h, v12.h, v40.h
	v_lshrrev_b32_e32 v40, 8, v30
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v13.l, v13.l, v41.l
	v_or_b16 v13.h, v13.h, v41.h
	v_lshrrev_b32_e32 v41, 24, v30
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v14.l, v14.l, v42.l
	v_or_b16 v14.h, v14.h, v42.h
	v_or_b16 v15.l, v15.l, v43.l
	v_or_b16 v15.h, v15.h, v43.h
	v_and_b16 v16.l, 0xff, v54.l
	v_and_b16 v16.h, 0xff, v54.h
	v_and_b16 v17.l, 0xff, v30.l
	v_and_b16 v17.h, 0xff, v30.h
	v_and_b16 v30.l, 0xff, v34.l
	v_lshrrev_b32_e32 v42, 8, v34
	v_lshrrev_b32_e32 v43, 24, v34
	v_and_b16 v30.h, 0xff, v34.h
	v_lshrrev_b32_e32 v54, 8, v35
	v_lshrrev_b32_e32 v57, 24, v35
	v_and_b16 v32.l, 0xff, v55.l
	v_lshrrev_b32_e32 v58, 8, v55
	v_lshrrev_b32_e32 v59, 24, v55
	v_and_b16 v32.h, 0xff, v55.h
	v_and_b16 v33.l, 0xff, v36.l
	v_lshrrev_b32_e32 v55, 8, v36
	v_lshrrev_b32_e32 v60, 24, v36
	v_and_b16 v33.h, 0xff, v36.h
	v_and_b16 v34.l, 0xff, v56.l
	v_lshrrev_b32_e32 v36, 8, v56
	v_lshrrev_b32_e32 v61, 24, v56
	v_and_b16 v34.h, 0xff, v56.h
	v_lshrrev_b32_e32 v56, 8, v37
	v_lshrrev_b32_e32 v62, 24, v37
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v46, v44 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v47, v5
	ds_store_b16_d16_hi v47, v5 offset:64
	ds_store_b16 v48, v9
	ds_store_b16_d16_hi v48, v9 offset:64
	ds_store_b16 v49, v10
	ds_store_b16_d16_hi v49, v10 offset:64
	ds_store_b16 v50, v11
	ds_store_b16_d16_hi v50, v11 offset:64
	ds_store_b16 v51, v12
	ds_store_b16_d16_hi v51, v12 offset:64
	ds_store_b16 v47, v13 offset:640
	ds_store_b16_d16_hi v47, v13 offset:704
	ds_store_b16 v52, v14
	ds_store_b16_d16_hi v52, v14 offset:64
	ds_store_b16 v53, v15
	ds_store_b16_d16_hi v53, v15 offset:64
	v_lshlrev_b16 v5.l, 8, v38.l
	v_lshlrev_b16 v5.h, 8, v39.l
	v_lshlrev_b16 v9.l, 8, v40.l
	v_lshlrev_b16 v9.h, 8, v41.l
	v_and_b16 v31.l, 0xff, v35.l
	v_and_b16 v31.h, 0xff, v35.h
	v_and_b16 v35.l, 0xff, v37.l
	v_and_b16 v35.h, 0xff, v37.h
	v_lshlrev_b16 v10.l, 8, v42.l
	v_lshlrev_b16 v10.h, 8, v43.l
	v_lshlrev_b16 v11.l, 8, v54.l
	v_lshlrev_b16 v11.h, 8, v57.l
	v_lshlrev_b16 v12.l, 8, v58.l
	v_lshlrev_b16 v12.h, 8, v59.l
	v_lshlrev_b16 v13.l, 8, v55.l
	v_lshlrev_b16 v13.h, 8, v60.l
	v_lshlrev_b16 v14.l, 8, v36.l
	v_lshlrev_b16 v14.h, 8, v61.l
	v_lshlrev_b16 v15.l, 8, v56.l
	v_lshlrev_b16 v15.h, 8, v62.l
	v_or_b16 v5.l, v16.l, v5.l
	v_or_b16 v5.h, v16.h, v5.h
	v_or_b16 v9.l, v17.l, v9.l
	v_or_b16 v9.h, v17.h, v9.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v30.l, v10.l
	v_or_b16 v10.h, v30.h, v10.h
	v_or_b16 v11.l, v31.l, v11.l
	v_or_b16 v11.h, v31.h, v11.h
	v_or_b16 v12.l, v32.l, v12.l
	v_or_b16 v12.h, v32.h, v12.h
	v_or_b16 v13.l, v33.l, v13.l
	v_or_b16 v13.h, v33.h, v13.h
	v_or_b16 v14.l, v34.l, v14.l
	v_or_b16 v14.h, v34.h, v14.h
	v_or_b16 v15.l, v35.l, v15.l
	v_or_b16 v15.h, v35.h, v15.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v46, v45 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v47, v5 offset:8192
	ds_store_b16_d16_hi v47, v5 offset:8256
	ds_store_b16 v48, v9 offset:8192
	ds_store_b16_d16_hi v48, v9 offset:8256
	ds_store_b16 v49, v10 offset:8192
	ds_store_b16_d16_hi v49, v10 offset:8256
	ds_store_b16 v50, v11 offset:8192
	ds_store_b16_d16_hi v50, v11 offset:8256
	ds_store_b16 v51, v12 offset:8192
	ds_store_b16_d16_hi v51, v12 offset:8256
	ds_store_b16 v47, v13 offset:8832
	ds_store_b16_d16_hi v47, v13 offset:8896
	ds_store_b16 v52, v14 offset:8192
	ds_store_b16_d16_hi v52, v14 offset:8256
	ds_store_b16 v53, v15 offset:8192
	ds_store_b16_d16_hi v53, v15 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v5, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v6, 6, v6
	v_and_b32_e32 v31, 8, v0
	v_and_b32_e32 v32, 32, v0
	v_and_or_b32 v30, 0x1800, v7, v8
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr30
.LBB0_3:                                ; %Flow19
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_and_b32_e32 v17, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 5, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v4, s25, v4
	v_bfe_i32 v6, v0, 3, 1
	v_and_or_b32 v30, 0x1800, v7, v8
	v_add3_u32 v3, s25, v3, 0x80
	v_and_b32_e32 v5, 0x420, v5
	v_add_nc_u32_e32 v9, 0x81, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	s_lshl_b32 s15, s24, 7
	v_mul_lo_u32 v3, s16, v3
	v_and_or_b32 v5, 0x210, v6, v5
	v_mul_lo_u32 v6, s17, v9
	v_mov_b32_e32 v9, 0
	v_mul_lo_u32 v4, s17, v4
	s_lshl_b32 s16, s23, 7
	v_xor_b32_e32 v5, v5, v30
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_add3_u32 v32, v3, s19, v2
	v_add3_u32 v6, v6, s15, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v31, v5, v22
	v_add3_u32 v1, v4, s15, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s14, s26, 6
	s_add_i32 s23, 0, 0x4400
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_subrev_nc_u32_e32 v33, s16, v6
	v_xor_b32_e32 v35, 16, v31
	v_subrev_nc_u32_e32 v34, s16, v1
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v36, 32, v31
	v_xor_b32_e32 v37, 48, v31
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v13, 0
	s_add_i32 s25, s14, -2
	s_add_i32 s16, 0, 0x4000
	s_add_i32 s24, 0, 0x2000
	s_mov_b32 s26, 1
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v86, v32, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[46:49], v34, s[12:15], 0 offen
	buffer_load_b128 v[50:53], v33, s[12:15], 0 offen
	s_mov_b32 s27, s16
	s_mov_b32 s16, s23
	s_mov_b32 s23, s20
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v38, s27, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v40, s23, v31
	v_add_nc_u32_e32 v41, s23, v35
	v_add_nc_u32_e32 v42, s23, v36
	v_add_nc_u32_e32 v43, s23, v37
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v39, s27, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[54:57], v40
	ds_load_b128 v[58:61], v41
	ds_load_b128 v[62:65], v42
	ds_load_b128 v[66:69], v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v40, v38 offset:208
	ds_load_u8 v41, v38 offset:240
	ds_load_u8 v42, v38 offset:224
	ds_load_u8 v43, v38 offset:192
	ds_load_u8 v44, v38 offset:144
	ds_load_u8 v45, v38 offset:176
	ds_load_u8 v70, v38 offset:160
	ds_load_u8 v71, v38 offset:128
	ds_load_u8 v72, v38 offset:80
	ds_load_u8 v73, v38 offset:112
	ds_load_u8 v74, v38 offset:96
	ds_load_u8 v75, v38 offset:64
	ds_load_u8 v76, v38
	ds_load_u8 v77, v38 offset:16
	ds_load_u8 v78, v38 offset:32
	ds_load_u8 v79, v38 offset:48
	ds_load_u8 v80, v38 offset:464
	ds_load_u8 v81, v38 offset:496
	ds_load_u8 v82, v38 offset:480
	ds_load_u8 v83, v38 offset:448
	ds_load_u8 v84, v38 offset:400
	ds_load_u8 v85, v38 offset:432
	ds_load_u8 v87, v38 offset:416
	ds_load_u8 v88, v38 offset:384
	ds_load_u8 v89, v38 offset:336
	ds_load_u8 v90, v38 offset:368
	ds_load_u8 v91, v38 offset:352
	ds_load_u8 v92, v38 offset:320
	ds_load_u8 v93, v38 offset:272
	ds_load_u8 v94, v38 offset:304
	ds_load_u8 v95, v38 offset:288
	ds_load_u8 v96, v38 offset:256
	ds_load_u8 v97, v38 offset:720
	ds_load_u8 v98, v38 offset:752
	ds_load_u8 v99, v38 offset:736
	ds_load_u8 v100, v38 offset:704
	ds_load_u8 v101, v38 offset:656
	ds_load_u8 v102, v38 offset:688
	ds_load_u8 v103, v38 offset:672
	ds_load_u8 v104, v38 offset:640
	ds_load_u8 v105, v38 offset:592
	ds_load_u8 v106, v38 offset:624
	ds_load_u8 v107, v38 offset:608
	ds_load_u8 v108, v38 offset:576
	ds_load_u8 v109, v38 offset:528
	ds_load_u8 v110, v38 offset:560
	ds_load_u8 v111, v38 offset:544
	ds_load_u8 v112, v38 offset:512
	ds_load_u8 v113, v38 offset:976
	ds_load_u8 v39, v39
	ds_load_u8 v114, v38 offset:992
	ds_load_u8 v115, v38 offset:960
	ds_load_u8 v116, v38 offset:912
	ds_load_u8 v117, v38 offset:944
	ds_load_u8 v118, v38 offset:928
	ds_load_u8 v119, v38 offset:896
	ds_load_u8 v120, v38 offset:848
	ds_load_u8 v121, v38 offset:880
	ds_load_u8 v122, v38 offset:864
	ds_load_u8 v123, v38 offset:832
	ds_load_u8 v124, v38 offset:784
	ds_load_u8 v125, v38 offset:816
	ds_load_u8 v126, v38 offset:800
	ds_load_u8 v38, v38 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v40, v43, v40, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v42, v71, v44, 0xc0c0004
	v_perm_b32 v43, v70, v45, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v44, v75, v72, 0xc0c0004
	v_perm_b32 v45, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v70, v76, v77, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v74, v78, v79, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v75, v83, v80, 0xc0c0004
	v_perm_b32 v76, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v78, v88, v84, 0xc0c0004
	v_perm_b32 v79, v87, v85, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v80, v92, v89, 0xc0c0004
	v_perm_b32 v81, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v82, v96, v93, 0xc0c0004
	v_perm_b32 v83, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v84, v100, v97, 0xc0c0004
	v_perm_b32 v85, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v115, v113, 0xc0c0004
	v_perm_b32 v39, v114, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v124, 0xc0c0004
	v_perm_b32 v98, v126, v125, 0xc0c0004
	v_lshl_or_b32 v73, v41, 16, v40
	v_lshl_or_b32 v72, v43, 16, v42
	v_lshl_or_b32 v71, v45, 16, v44
	v_lshl_or_b32 v70, v74, 16, v70
	v_perm_b32 v87, v104, v101, 0xc0c0004
	v_perm_b32 v88, v103, v102, 0xc0c0004
	v_perm_b32 v89, v108, v105, 0xc0c0004
	v_perm_b32 v90, v107, v106, 0xc0c0004
	v_perm_b32 v91, v112, v109, 0xc0c0004
	v_perm_b32 v92, v111, v110, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v75
	v_lshl_or_b32 v76, v79, 16, v78
	v_lshl_or_b32 v75, v81, 16, v80
	v_lshl_or_b32 v74, v83, 16, v82
	v_lshl_or_b32 v81, v85, 16, v84
	v_lshl_or_b32 v85, v39, 16, v93
	v_lshl_or_b32 v82, v98, 16, v38
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v94, v119, v116, 0xc0c0004
	v_perm_b32 v95, v118, v117, 0xc0c0004
	v_perm_b32 v96, v123, v120, 0xc0c0004
	v_perm_b32 v97, v122, v121, 0xc0c0004
	v_lshl_or_b32 v80, v88, 16, v87
	v_lshl_or_b32 v79, v90, 16, v89
	v_lshl_or_b32 v78, v92, 16, v91
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[74:77], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v95, 16, v94
	v_lshl_or_b32 v83, v97, 16, v96
	s_mov_b32 s20, s24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s24, s26, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[62:65], v[78:81], v[38:45] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s24, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s26, s24, 0
	s_add_i32 s25, s25, -1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[82:85], v[38:45] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s23, s26, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s24, s26, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s27, s23, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s24, s24, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v33, s21, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v16, v16, v39
	v_dual_add_f32 v15, v15, v40 :: v_dual_add_nc_u32 v34, s21, v34
	v_dual_add_f32 v14, v14, v41 :: v_dual_add_nc_u32 v127, s27, v18
	v_add_f32_e32 v12, v12, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v13, v13, v42
	v_dual_add_f32 v11, v11, v44 :: v_dual_add_f32 v10, v10, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v9, v9, v38 :: v_dual_add_nc_u32 v32, s22, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v128, s24, v23
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s23, s27, 0x4000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v129, s24, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s25, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v130, s24, v25
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v131, s24, v26
	v_add_nc_u32_e32 v132, s24, v27
	v_add_nc_u32_e32 v133, s24, v28
	v_add_nc_u32_e32 v134, s24, v29
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v127, v86 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v50, v46, 0x5010400
	v_perm_b32 v40, v50, v46, 0x7030602
	v_perm_b32 v41, v51, v47, 0x5010400
	v_perm_b32 v42, v51, v47, 0x7030602
	v_perm_b32 v43, v52, v48, 0x5010400
	v_perm_b32 v44, v52, v48, 0x7030602
	v_perm_b32 v45, v53, v49, 0x5010400
	v_perm_b32 v46, v53, v49, 0x7030602
	v_lshrrev_b32_e32 v47, 8, v39
	v_lshrrev_b32_e32 v48, 24, v39
	v_lshrrev_b32_e32 v49, 8, v40
	v_lshrrev_b32_e32 v50, 24, v40
	v_lshrrev_b32_e32 v51, 8, v41
	v_and_b16 v38.l, 0xff, v39.l
	v_and_b16 v39.l, 0xff, v40.l
	v_and_b16 v40.l, 0xff, v41.l
	v_lshrrev_b32_e32 v52, 24, v41
	v_and_b16 v41.l, 0xff, v42.l
	v_lshrrev_b32_e32 v53, 8, v42
	v_lshrrev_b32_e32 v54, 24, v42
	v_and_b16 v42.l, 0xff, v43.l
	v_lshrrev_b32_e32 v55, 8, v43
	v_lshrrev_b32_e32 v56, 24, v43
	v_and_b16 v43.l, 0xff, v44.l
	v_lshrrev_b32_e32 v57, 8, v44
	v_lshrrev_b32_e32 v58, 24, v44
	v_and_b16 v44.l, 0xff, v45.l
	v_lshrrev_b32_e32 v59, 8, v45
	v_lshrrev_b32_e32 v60, 24, v45
	v_and_b16 v45.l, 0xff, v46.l
	v_lshrrev_b32_e32 v61, 8, v46
	v_lshrrev_b32_e32 v62, 24, v46
	v_lshlrev_b16 v46.l, 8, v47.l
	v_and_b16 v38.h, 0xff, v39.h
	v_and_b16 v39.h, 0xff, v40.h
	v_and_b16 v40.h, 0xff, v41.h
	v_and_b16 v41.h, 0xff, v42.h
	v_and_b16 v42.h, 0xff, v43.h
	v_and_b16 v43.h, 0xff, v44.h
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.h, 0xff, v46.h
	v_lshlrev_b16 v46.h, 8, v48.l
	v_lshlrev_b16 v47.l, 8, v49.l
	v_lshlrev_b16 v47.h, 8, v50.l
	v_lshlrev_b16 v48.l, 8, v51.l
	v_lshlrev_b16 v48.h, 8, v52.l
	v_lshlrev_b16 v49.l, 8, v53.l
	v_lshlrev_b16 v49.h, 8, v54.l
	v_lshlrev_b16 v50.l, 8, v55.l
	v_lshlrev_b16 v50.h, 8, v56.l
	v_lshlrev_b16 v51.l, 8, v57.l
	v_lshlrev_b16 v51.h, 8, v58.l
	v_lshlrev_b16 v52.l, 8, v59.l
	v_lshlrev_b16 v52.h, 8, v60.l
	v_lshlrev_b16 v53.l, 8, v61.l
	v_lshlrev_b16 v53.h, 8, v62.l
	v_or_b16 v38.l, v38.l, v46.l
	v_or_b16 v38.h, v38.h, v46.h
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
	ds_store_b16 v128, v38
	ds_store_b16_d16_hi v128, v38 offset:64
	ds_store_b16 v129, v39
	ds_store_b16_d16_hi v129, v39 offset:64
	ds_store_b16 v130, v40
	ds_store_b16_d16_hi v130, v40 offset:64
	ds_store_b16 v131, v41
	ds_store_b16_d16_hi v131, v41 offset:64
	ds_store_b16 v132, v42
	ds_store_b16_d16_hi v132, v42 offset:64
	ds_store_b16 v128, v43 offset:640
	ds_store_b16_d16_hi v128, v43 offset:704
	ds_store_b16 v133, v44
	ds_store_b16_d16_hi v133, v44 offset:64
	ds_store_b16 v134, v45
	ds_store_b16_d16_hi v134, v45 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v19 :: v_dual_mov_b32 v6, v22
	v_dual_mov_b32 v31, v20 :: v_dual_mov_b32 v32, v21
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v9, 0
	s_add_i32 s16, 0, 0x4000
	s_add_i32 s23, 0, 0x4400
	s_add_i32 s24, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v31
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v6
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v6, s16, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v19, s20, v4
	v_add_nc_u32_e32 v20, s20, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v7, v6 offset:208
	ds_load_u8 v8, v6 offset:224
	ds_load_u8 v18, v6 offset:192
	ds_load_u8 v23, v6 offset:240
	ds_load_u8 v24, v6 offset:144
	ds_load_u8 v25, v6 offset:176
	ds_load_u8 v34, v6 offset:160
	ds_load_u8 v35, v6 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[26:29], v19
	ds_load_b128 v[30:33], v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v19, v6 offset:112
	ds_load_u8 v20, v6 offset:80
	ds_load_u8 v42, v6 offset:96
	ds_load_u8 v43, v6 offset:64
	ds_load_u8 v46, v6
	ds_load_u8 v47, v6 offset:16
	ds_load_u8 v48, v6 offset:32
	ds_load_u8 v49, v6 offset:48
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v8, v23, 0xc0c0004
	v_perm_b32 v7, v18, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v35, v24, 0xc0c0004
	v_perm_b32 v23, v34, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v45, v8, 16, v7
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v43, v20, 0xc0c0004
	v_lshl_or_b32 v44, v23, 16, v18
	v_perm_b32 v8, v42, v19, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v46, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v48, v49, 0xc0c0004
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v21, s20, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v22, s20, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v43, v8, 16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v42, v20, 16, v19
	v_mov_b32_e32 v20, v18
	v_mov_b32_e32 v23, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[34:37], v21
	ds_load_b128 v[38:41], v22
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v22, v18 :: v_dual_add_nc_u32 v21, s16, v5
	v_mov_b32_e32 v19, v18
	ds_load_u8 v50, v6 offset:336
	ds_load_u8 v51, v6 offset:352
	ds_load_u8 v52, v6 offset:320
	ds_load_u8 v53, v6 offset:272
	ds_load_u8 v54, v6 offset:304
	ds_load_u8 v55, v6 offset:288
	ds_load_u8 v56, v6 offset:256
	ds_load_u8 v46, v6 offset:496
	ds_load_u8 v47, v6 offset:400
	ds_load_u8 v48, v6 offset:432
	ds_load_u8 v49, v6 offset:416
	ds_load_u8 v61, v6 offset:384
	ds_load_u8 v7, v6 offset:368
	ds_load_u8 v57, v6 offset:464
	ds_load_u8 v58, v6 offset:480
	ds_load_u8 v59, v6 offset:448
	ds_load_u8 v60, v21
	v_mov_b32_e32 v21, v18
	v_mov_b32_e32 v24, v18
	v_mov_b32_e32 v25, v18
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[38:41], v[42:45], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v58, v46, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v59, v57, 0xc0c0004
	ds_load_u8 v57, v6 offset:592
	ds_load_u8 v59, v6 offset:608
	ds_load_u8 v62, v6 offset:576
	ds_load_u8 v63, v6 offset:528
	ds_load_u8 v64, v6 offset:560
	ds_load_u8 v65, v6 offset:544
	ds_load_u8 v66, v6 offset:512
	v_perm_b32 v47, v61, v47, 0xc0c0004
	v_perm_b32 v49, v52, v50, 0xc0c0004
	v_perm_b32 v7, v51, v7, 0xc0c0004
	v_perm_b32 v50, v56, v53, 0xc0c0004
	v_perm_b32 v51, v55, v54, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v8
	v_lshl_or_b32 v40, v48, 16, v47
	v_lshl_or_b32 v39, v7, 16, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v38, v51, 16, v50
	ds_load_u8 v7, v6 offset:752
	ds_load_u8 v8, v6 offset:720
	ds_load_u8 v42, v6 offset:736
	ds_load_u8 v43, v6 offset:704
	ds_load_u8 v44, v6 offset:656
	ds_load_u8 v45, v6 offset:672
	ds_load_u8 v46, v6 offset:640
	ds_load_u8 v47, v6 offset:688
	ds_load_u8 v48, v6 offset:624
	ds_load_u8 v49, v6 offset:976
	ds_load_u8 v50, v6 offset:992
	ds_load_u8 v51, v6 offset:960
	ds_load_u8 v52, v6 offset:912
	ds_load_u8 v53, v6 offset:944
	ds_load_u8 v54, v6 offset:928
	ds_load_u8 v55, v6 offset:896
	ds_load_u8 v56, v6 offset:880
	ds_load_u8 v58, v6 offset:848
	ds_load_u8 v61, v6 offset:864
	ds_load_u8 v67, v6 offset:832
	ds_load_u8 v68, v6 offset:784
	ds_load_u8 v69, v6 offset:816
	ds_load_u8 v70, v6 offset:800
	ds_load_u8 v6, v6 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v8, v43, v8, 0xc0c0004
	v_perm_b32 v7, v42, v7, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v42, v46, v44, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v43, v45, v47, 0xc0c0004
	v_perm_b32 v44, v62, v57, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v45, v59, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[34:37], v[38:41], v[18:25] neg_lo:[1,1,0]
	v_perm_b32 v47, v65, v64, 0xc0c0004
	v_perm_b32 v46, v66, v63, 0xc0c0004
	v_lshl_or_b32 v37, v7, 16, v8
	v_lshl_or_b32 v36, v43, 16, v42
	v_lshl_or_b32 v35, v45, 16, v44
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v51, v49, 0xc0c0004
	v_lshl_or_b32 v34, v47, 16, v46
	v_perm_b32 v8, v50, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v38, v55, v52, 0xc0c0004
	v_perm_b32 v39, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v67, v58, 0xc0c0004
	v_perm_b32 v41, v61, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v6, v68, 0xc0c0004
	v_perm_b32 v42, v70, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[30:33], v[34:37], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v8, 16, v7
	v_lshl_or_b32 v32, v39, 16, v38
	v_lshl_or_b32 v31, v41, 16, v40
	v_lshl_or_b32 v30, v42, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[26:29], v[30:33], v[18:25] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v20
	v_cvt_f32_i32_e32 v8, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v16, v6 :: v_dual_add_f32 v15, v15, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v14, v14, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v23
	v_cvt_f32_i32_e32 v8, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v10, v19 :: v_dual_add_f32 v9, v9, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v6 :: v_dual_add_f32 v12, v12, v7
	v_add_f32_e32 v11, v11, v8
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v22, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v38, s23, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s24, v4
	v_add_nc_u32_e32 v18, s24, v3
	v_add_nc_u32_e32 v19, s24, v2
	v_add_nc_u32_e32 v20, s24, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v6, v38 offset:208
	ds_load_u8 v7, v38 offset:224
	ds_load_u8 v8, v38 offset:192
	ds_load_u8 v21, v38 offset:240
	ds_load_u8 v22, v38 offset:144
	ds_load_u8 v23, v38 offset:176
	ds_load_u8 v24, v38 offset:160
	ds_load_u8 v25, v38 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v4
	ds_load_b128 v[26:29], v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v18, v38 offset:112
	ds_load_u8 v39, v38 offset:80
	ds_load_u8 v40, v38 offset:96
	ds_load_u8 v41, v38 offset:64
	ds_load_u8 v42, v38
	ds_load_u8 v43, v38 offset:16
	ds_load_u8 v44, v38 offset:32
	ds_load_u8 v45, v38 offset:48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[30:33], v19
	ds_load_b128 v[34:37], v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v19, v40, v18, 0xc0c0004
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v5, s23, v5
	v_perm_b32 v7, v7, v21, 0xc0c0004
	v_perm_b32 v6, v8, v6, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v44, v45, 0xc0c0004
	v_perm_b32 v21, v25, v22, 0xc0c0004
	v_perm_b32 v22, v24, v23, 0xc0c0004
	v_mov_b32_e32 v23, v18
	v_lshl_or_b32 v8, v7, 16, v6
	v_perm_b32 v6, v41, v39, 0xc0c0004
	v_mov_b32_e32 v24, v18
	v_lshl_or_b32 v7, v22, 16, v21
	v_mov_b32_e32 v21, v18
	v_mov_b32_e32 v22, v18
	v_lshl_or_b32 v6, v19, 16, v6
	v_mov_b32_e32 v19, v18
	ds_load_u8 v46, v38 offset:336
	ds_load_u8 v47, v38 offset:352
	ds_load_u8 v48, v38 offset:320
	ds_load_u8 v49, v38 offset:272
	ds_load_u8 v50, v38 offset:304
	ds_load_u8 v51, v38 offset:288
	ds_load_u8 v52, v38 offset:256
	ds_load_u8 v39, v38 offset:464
	ds_load_u8 v40, v38 offset:480
	ds_load_u8 v41, v38 offset:448
	ds_load_u8 v53, v5
	v_perm_b32 v5, v42, v43, 0xc0c0004
	ds_load_u8 v42, v38 offset:496
	ds_load_u8 v43, v38 offset:400
	ds_load_u8 v44, v38 offset:432
	ds_load_u8 v45, v38 offset:416
	ds_load_u8 v54, v38 offset:384
	ds_load_u8 v55, v38 offset:368
	v_mov_b32_e32 v25, v18
	v_lshl_or_b32 v5, v20, 16, v5
	v_mov_b32_e32 v20, v18
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[34:37], v[5:8], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v40, v40, v42, 0xc0c0004
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v38 offset:592
	ds_load_u8 v56, v38 offset:608
	ds_load_u8 v57, v38 offset:576
	ds_load_u8 v58, v38 offset:528
	ds_load_u8 v59, v38 offset:560
	ds_load_u8 v60, v38 offset:544
	ds_load_u8 v61, v38 offset:512
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v54, v43, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_perm_b32 v44, v48, v46, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v45, v47, v55, 0xc0c0004
	v_perm_b32 v46, v52, v49, 0xc0c0004
	v_perm_b32 v47, v51, v50, 0xc0c0004
	v_lshl_or_b32 v8, v40, 16, v39
	v_lshl_or_b32 v7, v43, 16, v42
	v_lshl_or_b32 v6, v45, 16, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v5, v47, 16, v46
	ds_load_u8 v34, v38 offset:752
	ds_load_u8 v35, v38 offset:720
	ds_load_u8 v36, v38 offset:736
	ds_load_u8 v37, v38 offset:704
	ds_load_u8 v39, v38 offset:656
	ds_load_u8 v40, v38 offset:672
	ds_load_u8 v42, v38 offset:640
	ds_load_u8 v43, v38 offset:688
	ds_load_u8 v44, v38 offset:624
	ds_load_u8 v45, v38 offset:976
	ds_load_u8 v46, v38 offset:992
	ds_load_u8 v47, v38 offset:960
	ds_load_u8 v48, v38 offset:912
	ds_load_u8 v49, v38 offset:944
	ds_load_u8 v50, v38 offset:928
	ds_load_u8 v51, v38 offset:896
	ds_load_u8 v52, v38 offset:880
	ds_load_u8 v54, v38 offset:848
	ds_load_u8 v55, v38 offset:864
	ds_load_u8 v62, v38 offset:832
	ds_load_u8 v63, v38 offset:784
	ds_load_u8 v64, v38 offset:816
	ds_load_u8 v65, v38 offset:800
	ds_load_u8 v38, v38 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v35, v37, v35, 0xc0c0004
	v_perm_b32 v34, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v36, v42, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v40, v43, 0xc0c0004
	v_perm_b32 v39, v57, v41, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v40, v56, v44, 0xc0c0004
	v_perm_b32 v41, v61, v58, 0xc0c0004
	v_perm_b32 v42, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[30:33], v[5:8], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v34, 16, v35
	v_lshl_or_b32 v7, v37, 16, v36
	v_lshl_or_b32 v6, v40, 16, v39
	v_lshl_or_b32 v5, v42, 16, v41
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v47, v45, 0xc0c0004
	v_perm_b32 v31, v46, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v51, v48, 0xc0c0004
	v_perm_b32 v33, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v62, v54, 0xc0c0004
	v_perm_b32 v35, v55, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v63, 0xc0c0004
	v_perm_b32 v37, v65, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[26:29], v[5:8], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v31, 16, v30
	v_lshl_or_b32 v7, v33, 16, v32
	v_lshl_or_b32 v6, v35, 16, v34
	v_lshl_or_b32 v5, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[1:4], v[5:8], v[18:25] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v19
	v_cvt_f32_i32_e32 v8, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v19, v22
	v_cvt_f32_i32_e32 v20, v23
	v_cvt_f32_i32_e32 v21, v24
	v_cvt_f32_i32_e32 v22, v25
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v4, s19, v17
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v9, v6 :: v_dual_and_b32 v3, 0x70, v1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s8, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v15, v8 :: v_dual_add_f32 v19, v13, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v2, v2, v3, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v14, v18 :: v_dual_lshlrev_b32 v3, 1, v4
	v_dual_add_f32 v22, v10, v22 :: v_dual_mov_b32 v29, 0x5410
	v_dual_add_f32 v7, v16, v7 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	v_or_b32_e32 v5, 4, v2
	v_or_b32_e32 v17, 8, v2
	v_or_b32_e32 v23, 12, v2
	v_or_b32_e32 v24, 16, v2
	v_or_b32_e32 v25, 20, v2
	v_or_b32_e32 v26, 24, v2
	v_or_b32_e32 v27, 28, v2
	s_clause 0x7
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v20, v12, v20 :: v_dual_add_f32 v21, v11, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v30, 0x7632
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v19, s2
	v_cndmask_b32_e64 v10, v10, v22, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v12, v12, v20, s2
	v_cndmask_b32_e64 v6, v9, v6, s2
	v_cndmask_b32_e64 v7, v16, v7, s2
	v_cndmask_b32_e64 v11, v11, v21, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v28.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v15, v8, s2
	v_cndmask_b32_e64 v9, v14, v18, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v4, v4, s17
	s_mov_b32 s3, 0x76543210
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v28.h
	v_mov_b16_e32 v18.h, v28.h
	v_mov_b16_e32 v15.h, v28.h
	v_mov_b16_e32 v16.h, v28.h
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s10
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v22, v3, v22 :: v_dual_lshlrev_b32 v19, 16, v23
	v_dual_mul_f32 v19, v3, v19 :: v_dual_lshlrev_b32 v20, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v20, v3, v20 :: v_dual_lshlrev_b32 v17, 16, v17
	v_dual_mul_f32 v17, v3, v17 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v2, v3, v2 :: v_dual_lshlrev_b32 v23, 16, v27
	v_dual_mul_f32 v5, v3, v5 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v6, v2 :: v_dual_lshlrev_b32 v21, 16, v25
	v_mul_f32_e32 v6, v8, v17
	v_mul_f32_e32 v5, v7, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v21, v3, v21
	v_dual_mul_f32 v3, v3, v23 :: v_dual_mul_f32 v8, v13, v20
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, 0, v5
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v9, v19 :: v_dual_max_f32 v6, 0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v9, v12, v21 :: v_dual_max_f32 v8, 0, v8
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v11, v11, v22 :: v_dual_mul_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v5.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, 0, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v28.l, v2.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v7, v7
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v10, v3 :: v_dual_and_b32 v14, 1, v14
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v10, 0, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v6.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v9, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v5, v5, v14, 0x7fff
	v_and_b32_e32 v11, 1, v28
	v_mov_b16_e32 v28.l, v7.h
	v_mov_b16_e32 v16.l, v8.h
	v_and_b32_e32 v0, 1, v15
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v11, 0x7fff
	v_and_b32_e32 v12, 1, v28
	v_mov_b16_e32 v28.l, v9.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, 0, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v16
	v_mov_b16_e32 v18.l, v10.h
	v_add3_u32 v0, v6, v0, 0x7fff
	v_and_b32_e32 v11, 1, v28
	v_mov_b16_e32 v5.l, v2.h
	v_add3_u32 v8, v8, v13, 0x7fff
	v_cndmask_b32_e32 v13, 0x3276, v30, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v9, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x1054, v29, vcc_lo
	v_mov_b16_e32 v2.l, v8.h
	v_and_b32_e32 v8, 1, v18
	v_add3_u32 v6, v7, v12, 0x7fff
	v_mov_b16_e32 v6.l, v0.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v12, v13, 8, v13
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b32_e32 v9, v2, v5, vcc_lo
	v_mov_b16_e32 v28.l, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v2, v5, v2 :: v_dual_and_b32 v7, 1, v28
	v_permlanex16_b32 v2, v2, s3, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v3, v7, 0x7fff
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v7, 0x760076, v12
	v_mov_b16_e32 v0.l, v8.h
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_and_or_b32 v8, 0x78, v1, s18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v7, 4, v7
	v_dual_cndmask_b32 v7, v6, v0 :: v_dual_cndmask_b32 v6, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v4, v8, v4, 1
	v_and_b32_e32 v3, 0x5040504, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s3, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v2, v9, v3
	v_perm_b32 v1, v2, v9, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v7, v6, v3
	v_perm_b32 v3, v7, v6, v5
	buffer_store_b128 v[0:3], v4, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 135
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8572
; TotalNumSgprs: 30
; NumVgprs: 135
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     135
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
