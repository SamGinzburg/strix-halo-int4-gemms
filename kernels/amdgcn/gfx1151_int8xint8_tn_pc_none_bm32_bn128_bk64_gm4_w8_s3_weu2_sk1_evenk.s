	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v7, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v5, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v36, 3, v0
	v_or_b32_e32 v37, 0x3f0, v0
	v_or_b32_e32 v38, 0x7f0, v0
	v_and_b32_e32 v39, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v6, 62, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 24, v36
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v49, 0, v36
	v_and_b32_e32 v40, 32, v0
	v_lshlrev_b32_e32 v41, 6, v7
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v8, s18, v5
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_lshl_b32 s9, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s9
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s6, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s7
	s_xor_b32 s5, s2, s7
	s_cvt_f32_u32 s8, s6
	s_sub_i32 s11, 0, s6
	s_ashr_i32 s5, s5, 31
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s8, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[2:3], null, s19, v6, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s11, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s11
	s_abs_i32 s11, s2
	s_add_i32 s8, s8, s4
	s_mul_hi_u32 s4, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s4, s6
	s_sub_i32 s8, s11, s8
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s4, s11, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s10, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s6, s5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 6
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s19, s7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s28, s3, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s8, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v3, v8, v4, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s19, v2
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v2, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s30, s19, 6
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s18, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s30, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v9, s[24:27], 0 offen
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s31, s18, 6
	v_add_nc_u32_e32 v8, s4, v3
	v_add3_u32 v3, s4, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s19, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_mov_b32 s9, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_clause 0x1
	buffer_load_b128 v[18:21], v2, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v9, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b64 v[32:33], v8, s[20:23], 0 offen
	buffer_load_b64 v[34:35], v3, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	v_and_b32_e32 v3, 6, v0
	v_lshlrev_b32_e32 v8, 5, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 0x420, v2
	v_lshlrev_b32_e32 v9, 3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v6
	v_lshl_or_b32 v42, v3, 10, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v43, 0x90, v42
	v_xor_b32_e32 v44, 0x120, v42
	v_xor_b32_e32 v45, 0x1b0, v42
	v_xor_b32_e32 v46, 0x210, v42
	v_xor_b32_e32 v47, 0x330, v42
	v_xor_b32_e32 v48, 0x3a0, v42
	v_add_nc_u32_e32 v50, 0, v42
	v_add_nc_u32_e32 v51, 0, v43
	v_add_nc_u32_e32 v52, 0, v44
	v_add_nc_u32_e32 v53, 0, v45
	v_add_nc_u32_e32 v54, 0, v46
	v_add_nc_u32_e32 v55, 0, v47
	v_add_nc_u32_e32 v56, 0, v48
	s_waitcnt vmcnt(4)
	v_perm_b32 v3, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v26, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v27, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_lshrrev_b32_e32 v57, 8, v14
	v_lshrrev_b32_e32 v58, 24, v14
	v_lshrrev_b32_e32 v28, 8, v3
	v_lshrrev_b32_e32 v59, 8, v15
	v_lshrrev_b32_e32 v60, 24, v15
	v_lshrrev_b32_e32 v29, 24, v3
	v_lshrrev_b32_e32 v61, 8, v26
	v_lshrrev_b32_e32 v62, 24, v26
	v_lshrrev_b32_e32 v30, 8, v10
	v_lshrrev_b32_e32 v63, 8, v16
	v_lshrrev_b32_e32 v64, 24, v16
	v_lshrrev_b32_e32 v31, 24, v10
	v_lshrrev_b32_e32 v65, 8, v27
	v_lshrrev_b32_e32 v66, 24, v27
	v_lshrrev_b32_e32 v67, 8, v17
	v_lshrrev_b32_e32 v68, 24, v17
	v_and_b16 v2.l, 0xff, v3.l
	v_and_b16 v2.h, 0xff, v3.h
	v_and_b16 v3.l, 0xff, v10.l
	v_and_b16 v3.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v14.l
	v_and_b16 v10.h, 0xff, v14.h
	v_and_b16 v12.l, 0xff, v26.l
	v_and_b16 v12.h, 0xff, v26.h
	v_lshlrev_b16 v26.l, 8, v57.l
	v_lshlrev_b16 v26.h, 8, v58.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v57, v22, v18, 0x5010400
	v_and_b16 v11.l, 0xff, v15.l
	v_and_b16 v11.h, 0xff, v15.h
	v_and_b16 v13.l, 0xff, v16.l
	v_and_b16 v14.l, 0xff, v27.l
	v_and_b16 v14.h, 0xff, v27.h
	v_lshlrev_b16 v16.l, 8, v28.l
	v_lshlrev_b16 v27.l, 8, v59.l
	v_lshlrev_b16 v27.h, 8, v60.l
	v_and_b16 v13.h, 0xff, v16.h
	v_lshlrev_b16 v16.h, 8, v29.l
	v_lshlrev_b16 v28.l, 8, v61.l
	v_lshlrev_b16 v28.h, 8, v62.l
	v_perm_b32 v18, v22, v18, 0x7030602
	v_and_b16 v15.l, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v30.l
	v_lshlrev_b16 v29.l, 8, v63.l
	v_lshlrev_b16 v29.h, 8, v64.l
	v_and_b16 v15.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v31.l
	v_lshlrev_b16 v30.l, 8, v65.l
	v_lshlrev_b16 v30.h, 8, v66.l
	v_lshlrev_b16 v31.l, 8, v67.l
	v_lshlrev_b16 v31.h, 8, v68.l
	v_perm_b32 v22, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v58, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v59, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	v_lshrrev_b32_e32 v26, 8, v57
	v_or_b16 v2.l, v2.l, v16.l
	v_or_b16 v11.l, v11.l, v27.l
	v_or_b16 v11.h, v11.h, v27.h
	v_lshrrev_b32_e32 v27, 24, v57
	v_or_b16 v2.h, v2.h, v16.h
	v_or_b16 v12.l, v12.l, v28.l
	v_or_b16 v12.h, v12.h, v28.h
	v_lshrrev_b32_e32 v28, 8, v18
	v_or_b16 v3.l, v3.l, v17.l
	v_or_b16 v13.l, v13.l, v29.l
	v_or_b16 v13.h, v13.h, v29.h
	v_lshrrev_b32_e32 v29, 24, v18
	v_or_b16 v3.h, v3.h, v17.h
	v_or_b16 v14.l, v14.l, v30.l
	v_or_b16 v14.h, v14.h, v30.h
	v_or_b16 v15.l, v15.l, v31.l
	v_or_b16 v15.h, v15.h, v31.h
	v_and_b16 v16.l, 0xff, v57.l
	v_and_b16 v16.h, 0xff, v57.h
	v_and_b16 v17.l, 0xff, v18.l
	v_and_b16 v17.h, 0xff, v18.h
	v_and_b16 v18.l, 0xff, v22.l
	v_lshrrev_b32_e32 v30, 8, v22
	v_lshrrev_b32_e32 v31, 24, v22
	v_and_b16 v18.h, 0xff, v22.h
	v_lshrrev_b32_e32 v57, 8, v23
	v_lshrrev_b32_e32 v60, 24, v23
	v_and_b16 v20.l, 0xff, v58.l
	v_lshrrev_b32_e32 v61, 8, v58
	v_lshrrev_b32_e32 v62, 24, v58
	v_and_b16 v20.h, 0xff, v58.h
	v_and_b16 v21.l, 0xff, v24.l
	v_lshrrev_b32_e32 v58, 8, v24
	v_lshrrev_b32_e32 v63, 24, v24
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v59.l
	v_lshrrev_b32_e32 v24, 8, v59
	v_lshrrev_b32_e32 v64, 24, v59
	v_and_b16 v22.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 8, v25
	v_lshrrev_b32_e32 v65, 24, v25
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v49, v[32:33] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v50, v2
	ds_store_b16_d16_hi v50, v2 offset:64
	ds_store_b16 v51, v3
	ds_store_b16_d16_hi v51, v3 offset:64
	ds_store_b16 v52, v10
	ds_store_b16_d16_hi v52, v10 offset:64
	ds_store_b16 v53, v11
	ds_store_b16_d16_hi v53, v11 offset:64
	ds_store_b16 v54, v12
	ds_store_b16_d16_hi v54, v12 offset:64
	ds_store_b16 v50, v13 offset:640
	ds_store_b16_d16_hi v50, v13 offset:704
	ds_store_b16 v55, v14
	ds_store_b16_d16_hi v55, v14 offset:64
	ds_store_b16 v56, v15
	ds_store_b16_d16_hi v56, v15 offset:64
	v_lshlrev_b16 v2.l, 8, v26.l
	v_lshlrev_b16 v2.h, 8, v27.l
	v_lshlrev_b16 v3.l, 8, v28.l
	v_lshlrev_b16 v3.h, 8, v29.l
	v_and_b16 v19.l, 0xff, v23.l
	v_and_b16 v19.h, 0xff, v23.h
	v_and_b16 v23.l, 0xff, v25.l
	v_and_b16 v23.h, 0xff, v25.h
	v_lshlrev_b16 v10.l, 8, v30.l
	v_lshlrev_b16 v10.h, 8, v31.l
	v_lshlrev_b16 v11.l, 8, v57.l
	v_lshlrev_b16 v11.h, 8, v60.l
	v_lshlrev_b16 v12.l, 8, v61.l
	v_lshlrev_b16 v12.h, 8, v62.l
	v_lshlrev_b16 v13.l, 8, v58.l
	v_lshlrev_b16 v13.h, 8, v63.l
	v_lshlrev_b16 v14.l, 8, v24.l
	v_lshlrev_b16 v14.h, 8, v64.l
	v_lshlrev_b16 v15.l, 8, v59.l
	v_lshlrev_b16 v15.h, 8, v65.l
	v_or_b16 v2.l, v16.l, v2.l
	v_or_b16 v2.h, v16.h, v2.h
	v_or_b16 v3.l, v17.l, v3.l
	v_or_b16 v3.h, v17.h, v3.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v18.l, v10.l
	v_or_b16 v10.h, v18.h, v10.h
	v_or_b16 v11.l, v19.l, v11.l
	v_or_b16 v11.h, v19.h, v11.h
	v_or_b16 v12.l, v20.l, v12.l
	v_or_b16 v12.h, v20.h, v12.h
	v_or_b16 v13.l, v21.l, v13.l
	v_or_b16 v13.h, v21.h, v13.h
	v_or_b16 v14.l, v22.l, v14.l
	v_or_b16 v14.h, v22.h, v14.h
	v_or_b16 v15.l, v23.l, v15.l
	v_or_b16 v15.h, v23.h, v15.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v49, v[34:35] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v50, v2 offset:8192
	ds_store_b16_d16_hi v50, v2 offset:8256
	ds_store_b16 v51, v3 offset:8192
	ds_store_b16_d16_hi v51, v3 offset:8256
	ds_store_b16 v52, v10 offset:8192
	ds_store_b16_d16_hi v52, v10 offset:8256
	ds_store_b16 v53, v11 offset:8192
	ds_store_b16_d16_hi v53, v11 offset:8256
	ds_store_b16 v54, v12 offset:8192
	ds_store_b16_d16_hi v54, v12 offset:8256
	ds_store_b16 v50, v13 offset:8832
	ds_store_b16_d16_hi v50, v13 offset:8896
	ds_store_b16 v55, v14 offset:8192
	ds_store_b16_d16_hi v55, v14 offset:8256
	ds_store_b16 v56, v15 offset:8192
	ds_store_b16_d16_hi v56, v15 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v7, 6, v7
	v_and_b32_e32 v10, 8, v0
	v_and_b32_e32 v11, 32, v0
	v_and_or_b32 v49, 0x1800, v8, v9
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr49
.LBB0_3:                                ; %Flow49
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_and_b32_e32 v35, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 5, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s8, 6
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s1, s6, 7
	s_mov_b32 s6, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v3, s7, v6
	v_bfe_i32 v6, v0, 3, 1
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v2, 0x420, v2
	v_add3_u32 v5, s7, v5, 0x80
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v7, 0x81, v3
	v_add_nc_u32_e32 v3, 0x80, v3
	v_and_or_b32 v49, 0x1800, v8, v9
	v_and_or_b32 v2, 0x210, v6, v2
	v_mul_lo_u32 v5, s18, v5
	v_mul_lo_u32 v6, s19, v7
	v_mul_lo_u32 v3, s19, v3
	s_lshl_b32 s5, s5, 7
	v_xor_b32_e32 v2, v2, v49
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v34, 0
	v_add3_u32 v51, v5, s29, v4
	v_add3_u32 v6, v6, s1, v1
	v_add3_u32 v1, v3, s1, v1
	v_or_b32_e32 v50, v2, v41
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v18, 0
	v_subrev_nc_u32_e32 v52, s5, v6
	v_subrev_nc_u32_e32 v53, s5, v1
	s_mov_b32 s5, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_xor_b32_e32 v54, 16, v50
	v_xor_b32_e32 v55, 32, v50
	v_xor_b32_e32 v56, 48, v50
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v21, 0
	s_add_i32 s33, s0, -2
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s18, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[25:26], v51, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v53, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v52, s[24:27], 0 offen
	s_mov_b32 s6, s0
	s_mov_b32 s0, s1
	s_mov_b32 s1, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v57, s6, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v60, s1, v50
	v_add_nc_u32_e32 v61, s1, v54
	v_add_nc_u32_e32 v62, s1, v55
	v_add_nc_u32_e32 v63, s1, v56
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s6, v37
	v_add_nc_u32_e32 v59, s6, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[73:76], v60
	ds_load_b128 v[77:80], v61
	ds_load_b128 v[81:84], v62
	ds_load_b128 v[85:88], v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v60, v57 offset:96
	ds_load_u8 v61, v57 offset:64
	ds_load_u8 v62, v57
	ds_load_u8 v63, v57 offset:16
	ds_load_u8 v64, v57 offset:32
	ds_load_u8 v65, v57 offset:112
	ds_load_u8 v66, v57 offset:80
	ds_load_u8 v67, v57 offset:48
	ds_load_u8 v68, v57 offset:416
	ds_load_u8 v69, v57 offset:384
	ds_load_u8 v70, v57 offset:480
	ds_load_u8 v71, v57 offset:448
	ds_load_u8 v72, v57 offset:496
	ds_load_u8 v89, v57 offset:464
	ds_load_u8 v90, v57 offset:432
	ds_load_u8 v91, v57 offset:400
	ds_load_u8 v92, v57 offset:288
	ds_load_u8 v93, v57 offset:256
	ds_load_u8 v94, v57 offset:352
	ds_load_u8 v95, v57 offset:320
	ds_load_u8 v96, v57 offset:368
	ds_load_u8 v97, v57 offset:336
	ds_load_u8 v98, v57 offset:304
	ds_load_u8 v99, v57 offset:272
	ds_load_u8 v100, v57 offset:160
	ds_load_u8 v101, v57 offset:128
	ds_load_u8 v102, v57 offset:224
	ds_load_u8 v103, v57 offset:192
	ds_load_u8 v104, v57 offset:240
	ds_load_u8 v105, v57 offset:208
	ds_load_u8 v106, v57 offset:176
	ds_load_u8 v107, v57 offset:144
	ds_load_u8 v108, v57 offset:928
	ds_load_u8 v109, v57 offset:896
	ds_load_u8 v110, v57 offset:992
	ds_load_u8 v111, v57 offset:960
	ds_load_u8 v112, v57 offset:1024
	ds_load_u8 v113, v57 offset:976
	ds_load_u8 v114, v57 offset:944
	ds_load_u8 v115, v57 offset:912
	ds_load_u8 v116, v57 offset:800
	ds_load_u8 v117, v57 offset:768
	ds_load_u8 v118, v57 offset:864
	ds_load_u8 v119, v57 offset:832
	ds_load_u8 v120, v57 offset:880
	ds_load_u8 v121, v57 offset:848
	ds_load_u8 v122, v57 offset:816
	ds_load_u8 v123, v57 offset:784
	ds_load_u8 v124, v57 offset:672
	ds_load_u8 v125, v57 offset:640
	ds_load_u8 v126, v57 offset:736
	ds_load_u8 v127, v57 offset:704
	ds_load_u8 v128, v57 offset:752
	ds_load_u8 v129, v57 offset:720
	ds_load_u8 v130, v57 offset:688
	ds_load_u8 v131, v57 offset:656
	ds_load_u8 v132, v57 offset:544
	ds_load_u8 v133, v57 offset:512
	ds_load_u8 v134, v57 offset:608
	ds_load_u8 v135, v57 offset:576
	ds_load_u8 v136, v57 offset:624
	ds_load_u8 v137, v57 offset:592
	ds_load_u8 v138, v57 offset:560
	ds_load_u8 v139, v57 offset:528
	ds_load_u8 v140, v57 offset:1440
	ds_load_u8 v141, v57 offset:1504
	ds_load_u8 v142, v57 offset:1472
	ds_load_u8 v143, v57 offset:1536
	ds_load_u8 v144, v57 offset:1520
	ds_load_u8 v145, v57 offset:1488
	ds_load_u8 v146, v57 offset:1456
	ds_load_u8 v147, v57 offset:1424
	ds_load_u8 v148, v57 offset:1408
	ds_load_u8 v149, v57 offset:1312
	ds_load_u8 v150, v57 offset:1376
	ds_load_u8 v151, v57 offset:1344
	ds_load_u8 v152, v57 offset:1392
	ds_load_u8 v153, v57 offset:1360
	ds_load_u8 v154, v57 offset:1328
	ds_load_u8 v155, v57 offset:1296
	ds_load_u8 v156, v57 offset:1280
	ds_load_u8 v157, v57 offset:1184
	ds_load_u8 v158, v57 offset:1248
	ds_load_u8 v159, v57 offset:1216
	ds_load_u8 v160, v57 offset:1264
	ds_load_u8 v161, v57 offset:1232
	ds_load_u8 v162, v57 offset:1200
	ds_load_u8 v163, v57 offset:1168
	ds_load_u8 v164, v57 offset:1152
	ds_load_u8 v165, v57 offset:1056
	ds_load_u8 v166, v57 offset:1120
	ds_load_u8 v167, v57 offset:1088
	ds_load_u8 v168, v57 offset:1136
	ds_load_u8 v169, v57 offset:1104
	ds_load_u8 v170, v57 offset:1072
	ds_load_u8 v171, v57 offset:1040
	ds_load_u8 v172, v57 offset:1952
	ds_load_u8 v173, v57 offset:2016
	ds_load_u8 v174, v57 offset:1984
	ds_load_u8 v58, v58
	ds_load_u8 v59, v59
	ds_load_u8 v175, v57 offset:2000
	ds_load_u8 v176, v57 offset:1968
	ds_load_u8 v177, v57 offset:1936
	ds_load_u8 v178, v57 offset:1920
	ds_load_u8 v179, v57 offset:1824
	ds_load_u8 v180, v57 offset:1888
	ds_load_u8 v181, v57 offset:1856
	ds_load_u8 v182, v57 offset:1904
	ds_load_u8 v183, v57 offset:1872
	ds_load_u8 v184, v57 offset:1840
	ds_load_u8 v185, v57 offset:1808
	ds_load_u8 v186, v57 offset:1792
	ds_load_u8 v187, v57 offset:1696
	ds_load_u8 v188, v57 offset:1760
	ds_load_u8 v189, v57 offset:1728
	ds_load_u8 v190, v57 offset:1776
	ds_load_u8 v191, v57 offset:1744
	ds_load_u8 v192, v57 offset:1712
	ds_load_u8 v193, v57 offset:1680
	ds_load_u8 v194, v57 offset:1664
	ds_load_u8 v195, v57 offset:1568
	ds_load_u8 v196, v57 offset:1632
	ds_load_u8 v197, v57 offset:1600
	ds_load_u8 v198, v57 offset:1648
	ds_load_u8 v199, v57 offset:1616
	ds_load_u8 v200, v57 offset:1584
	ds_load_u8 v57, v57 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v69, v71, v70, 0xc0c0004
	v_perm_b32 v70, v93, v92, 0xc0c0004
	v_perm_b32 v71, v95, v94, 0xc0c0004
	v_perm_b32 v92, v101, v100, 0xc0c0004
	v_perm_b32 v93, v103, v102, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v62, v64, 0xc0c0004
	v_perm_b32 v62, v109, v108, 0xc0c0004
	v_perm_b32 v100, v125, v124, 0xc0c0004
	v_perm_b32 v101, v127, v126, 0xc0c0004
	v_perm_b32 v102, v133, v132, 0xc0c0004
	v_perm_b32 v103, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v108, v148, v140, 0xc0c0004
	v_perm_b32 v109, v142, v141, 0xc0c0004
	v_perm_b32 v135, v91, v90, 0xc0c0004
	v_perm_b32 v72, v89, v72, 0xc0c0004
	v_perm_b32 v140, v99, v98, 0xc0c0004
	v_perm_b32 v141, v97, v96, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v105, v105, v104, 0xc0c0004
	v_perm_b32 v107, v66, v65, 0xc0c0004
	v_perm_b32 v63, v63, v67, 0xc0c0004
	v_perm_b32 v64, v111, v110, 0xc0c0004
	v_perm_b32 v94, v117, v116, 0xc0c0004
	v_perm_b32 v95, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v116, v164, v157, 0xc0c0004
	v_perm_b32 v117, v159, v158, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v58, v113, v58, 0xc0c0004
	v_perm_b32 v113, v123, v122, 0xc0c0004
	v_perm_b32 v115, v121, v120, 0xc0c0004
	v_perm_b32 v120, v131, v130, 0xc0c0004
	v_perm_b32 v121, v129, v128, 0xc0c0004
	v_perm_b32 v122, v139, v138, 0xc0c0004
	v_perm_b32 v123, v137, v136, 0xc0c0004
	v_perm_b32 v128, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v142, v177, v176, 0xc0c0004
	v_perm_b32 v59, v175, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v200, 0xc0c0004
	v_perm_b32 v147, v199, v198, 0xc0c0004
	v_lshl_or_b32 v68, v69, 16, v68
	v_lshl_or_b32 v67, v71, 16, v70
	v_lshl_or_b32 v66, v93, 16, v92
	v_lshl_or_b32 v65, v60, 16, v61
	v_lshl_or_b32 v90, v101, 16, v100
	v_lshl_or_b32 v89, v103, 16, v102
	v_lshl_or_b32 v104, v72, 16, v135
	v_lshl_or_b32 v103, v141, 16, v140
	v_lshl_or_b32 v102, v105, 16, v106
	v_lshl_or_b32 v101, v107, 16, v63
	v_perm_b32 v110, v156, v149, 0xc0c0004
	v_perm_b32 v111, v151, v150, 0xc0c0004
	v_perm_b32 v112, v112, v165, 0xc0c0004
	v_perm_b32 v118, v167, v166, 0xc0c0004
	v_perm_b32 v129, v145, v144, 0xc0c0004
	v_perm_b32 v130, v155, v154, 0xc0c0004
	v_perm_b32 v131, v153, v152, 0xc0c0004
	v_perm_b32 v136, v163, v162, 0xc0c0004
	v_perm_b32 v137, v161, v160, 0xc0c0004
	v_perm_b32 v138, v171, v170, 0xc0c0004
	v_perm_b32 v139, v169, v168, 0xc0c0004
	v_lshl_or_b32 v92, v64, 16, v62
	v_lshl_or_b32 v91, v95, 16, v94
	v_lshl_or_b32 v96, v109, 16, v108
	v_lshl_or_b32 v94, v117, 16, v116
	v_lshl_or_b32 v108, v58, 16, v114
	v_lshl_or_b32 v107, v115, 16, v113
	v_lshl_or_b32 v106, v121, 16, v120
	v_lshl_or_b32 v105, v123, 16, v122
	v_lshl_or_b32 v116, v59, 16, v142
	v_lshl_or_b32 v113, v147, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v133, v143, v195, 0xc0c0004
	v_perm_b32 v143, v185, v184, 0xc0c0004
	v_perm_b32 v144, v183, v182, 0xc0c0004
	v_perm_b32 v145, v193, v192, 0xc0c0004
	v_perm_b32 v146, v191, v190, 0xc0c0004
	v_lshl_or_b32 v95, v111, 16, v110
	v_lshl_or_b32 v93, v118, 16, v112
	v_lshl_or_b32 v112, v129, 16, v128
	v_lshl_or_b32 v111, v131, 16, v130
	v_lshl_or_b32 v110, v137, 16, v136
	v_lshl_or_b32 v109, v139, 16, v138
	v_wmma_i32_16x16x16_iu8 v[65:72], v[77:80], v[105:108], v[65:72] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s5, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v119, v178, v172, 0xc0c0004
	v_perm_b32 v124, v174, v173, 0xc0c0004
	v_perm_b32 v125, v186, v179, 0xc0c0004
	v_perm_b32 v126, v181, v180, 0xc0c0004
	v_perm_b32 v127, v194, v187, 0xc0c0004
	v_perm_b32 v132, v189, v188, 0xc0c0004
	v_perm_b32 v134, v197, v196, 0xc0c0004
	v_lshl_or_b32 v115, v144, 16, v143
	v_lshl_or_b32 v114, v146, 16, v145
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[109:112], v[65:72] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s5, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v100, v124, 16, v119
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s5, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v99, v126, 16, v125
	v_lshl_or_b32 v98, v132, 16, v127
	v_lshl_or_b32 v97, v134, 16, v133
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[93:96], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[85:88], v[113:116], v[65:72] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s5, 11
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[97:100], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v201, s7, v36
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s6, s5, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v27, v57 :: v_dual_add_nc_u32 v52, s30, v52
	v_dual_add_f32 v34, v34, v58 :: v_dual_add_nc_u32 v53, s30, v53
	v_dual_add_f32 v32, v32, v60 :: v_dual_add_nc_u32 v51, s31, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v59
	s_mov_b32 s4, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s18, s6, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v31, v61 :: v_dual_add_f32 v30, v30, v62
	v_dual_add_f32 v29, v29, v63 :: v_dual_add_nc_u32 v202, s18, v42
	v_dual_add_f32 v28, v28, v64 :: v_dual_add_nc_u32 v203, s18, v43
	v_add_f32_e32 v22, v22, v72
	v_dual_add_f32 v23, v23, v67 :: v_dual_add_nc_u32 v204, s18, v44
	v_dual_add_f32 v19, v19, v69 :: v_dual_add_nc_u32 v206, s18, v46
	v_dual_add_f32 v21, v21, v71 :: v_dual_add_nc_u32 v208, s18, v48
	v_dual_add_f32 v18, v18, v66 :: v_dual_add_f32 v17, v17, v65
	v_add_f32_e32 v24, v24, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s33, s33, -1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s7, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s33, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v205, s18, v45
	v_add_nc_u32_e32 v207, s18, v47
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v201, v[25:26] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v26, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v57, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v58, v16, v12, 0x5010400
	v_perm_b32 v59, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v60, 8, v25
	v_lshrrev_b32_e32 v61, 24, v25
	v_lshrrev_b32_e32 v62, 8, v13
	v_lshrrev_b32_e32 v63, 24, v13
	v_lshrrev_b32_e32 v64, 8, v26
	v_and_b16 v9.l, 0xff, v25.l
	v_lshrrev_b32_e32 v65, 24, v26
	v_lshrrev_b32_e32 v66, 8, v14
	v_lshrrev_b32_e32 v67, 24, v14
	v_lshrrev_b32_e32 v68, 8, v57
	v_lshrrev_b32_e32 v69, 24, v57
	v_lshrrev_b32_e32 v70, 8, v15
	v_lshrrev_b32_e32 v71, 24, v15
	v_lshrrev_b32_e32 v72, 8, v58
	v_lshrrev_b32_e32 v73, 24, v58
	v_lshrrev_b32_e32 v74, 8, v59
	v_lshrrev_b32_e32 v75, 24, v59
	v_lshlrev_b16 v25.l, 8, v60.l
	v_and_b16 v9.h, 0xff, v25.h
	v_lshlrev_b16 v25.h, 8, v61.l
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v26.l
	v_lshlrev_b16 v26.l, 8, v62.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v26.h
	v_lshlrev_b16 v26.h, 8, v63.l
	v_and_b16 v13.l, 0xff, v57.l
	v_lshlrev_b16 v57.l, 8, v64.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.h, 0xff, v57.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v58.l
	v_and_b16 v15.h, 0xff, v58.h
	v_and_b16 v16.l, 0xff, v59.l
	v_and_b16 v16.h, 0xff, v59.h
	v_lshlrev_b16 v57.h, 8, v65.l
	v_lshlrev_b16 v58.l, 8, v66.l
	v_lshlrev_b16 v58.h, 8, v67.l
	v_lshlrev_b16 v59.l, 8, v68.l
	v_lshlrev_b16 v59.h, 8, v69.l
	v_lshlrev_b16 v60.l, 8, v70.l
	v_lshlrev_b16 v60.h, 8, v71.l
	v_lshlrev_b16 v61.l, 8, v72.l
	v_lshlrev_b16 v61.h, 8, v73.l
	v_lshlrev_b16 v62.l, 8, v74.l
	v_lshlrev_b16 v62.h, 8, v75.l
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	v_or_b16 v11.l, v11.l, v57.l
	v_or_b16 v11.h, v11.h, v57.h
	v_or_b16 v12.l, v12.l, v58.l
	v_or_b16 v12.h, v12.h, v58.h
	v_or_b16 v13.l, v13.l, v59.l
	v_or_b16 v13.h, v13.h, v59.h
	v_or_b16 v14.l, v14.l, v60.l
	v_or_b16 v14.h, v14.h, v60.h
	v_or_b16 v15.l, v15.l, v61.l
	v_or_b16 v15.h, v15.h, v61.h
	v_or_b16 v16.l, v16.l, v62.l
	v_or_b16 v16.h, v16.h, v62.h
	ds_store_b16 v202, v9
	ds_store_b16_d16_hi v202, v9 offset:64
	ds_store_b16 v203, v10
	ds_store_b16_d16_hi v203, v10 offset:64
	ds_store_b16 v204, v11
	ds_store_b16_d16_hi v204, v11 offset:64
	ds_store_b16 v205, v12
	ds_store_b16_d16_hi v205, v12 offset:64
	ds_store_b16 v206, v13
	ds_store_b16_d16_hi v206, v13 offset:64
	ds_store_b16 v202, v14 offset:640
	ds_store_b16_d16_hi v202, v14 offset:704
	ds_store_b16 v207, v15
	ds_store_b16_d16_hi v207, v15 offset:64
	ds_store_b16 v208, v16
	ds_store_b16_d16_hi v208, v16 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v37 :: v_dual_mov_b32 v3, v38
	v_dual_mov_b32 v7, v41 :: v_dual_mov_b32 v10, v39
	v_mov_b32_e32 v11, v40
	s_mov_b32 s9, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v17, 0
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s18, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v29, v17
	v_mov_b32_e32 v31, v17
	v_mov_b32_e32 v33, v17
	v_mov_b32_e32 v28, v17
	v_mov_b32_e32 v20, v18
	v_mov_b32_e32 v24, v18
	v_mov_b32_e32 v22, v18
	v_mov_b32_e32 v30, v17
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v23, v17
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v34, v17
	v_mov_b32_e32 v27, v17
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v4
	v_xor_b32_e32 v1, v1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v7
	v_xor_b32_e32 v4, 16, v1
	v_xor_b32_e32 v5, 32, v1
	v_xor_b32_e32 v6, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v16, s9, v6
	v_add_nc_u32_e32 v25, s9, v5
	v_add_nc_u32_e32 v11, s9, v4
	v_add_nc_u32_e32 v12, s9, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s9, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v15, s0, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v7, v15 offset:416
	ds_load_u8 v8, v15 offset:384
	ds_load_u8 v9, v15 offset:480
	ds_load_u8 v10, v15 offset:448
	ds_load_u8 v13, v15 offset:288
	ds_load_u8 v14, v15 offset:256
	ds_load_u8 v26, v15 offset:352
	ds_load_u8 v36, v15 offset:320
	ds_load_u8 v37, v15 offset:160
	ds_load_u8 v38, v15 offset:128
	ds_load_u8 v39, v15 offset:224
	ds_load_u8 v40, v15 offset:192
	ds_load_u8 v64, v15 offset:464
	ds_load_u8 v65, v15 offset:432
	ds_load_u8 v66, v15 offset:400
	ds_load_u8 v67, v15 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[44:47], v11
	ds_load_b128 v[48:51], v12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v11, s0, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v77, v15 offset:16
	ds_load_u8 v78, v11
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v36, v26, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v36, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v40, v39, 0xc0c0004
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_lshl_or_b32 v54, v14, 16, v13
	v_perm_b32 v8, v10, v9, 0xc0c0004
	ds_load_u8 v9, v15 offset:96
	ds_load_u8 v10, v15 offset:64
	ds_load_u8 v41, v15
	ds_load_u8 v42, v15 offset:32
	ds_load_u8 v68, v15 offset:336
	ds_load_u8 v69, v15 offset:304
	ds_load_u8 v70, v15 offset:272
	ds_load_u8 v71, v15 offset:240
	v_lshl_or_b32 v53, v37, 16, v36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v55, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v41, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v66, v70, v69, 0xc0c0004
	v_lshl_or_b32 v52, v7, 16, v8
	v_mov_b32_e32 v14, s11
	ds_load_u8 v36, v15 offset:928
	ds_load_u8 v37, v15 offset:896
	ds_load_u8 v38, v15 offset:992
	ds_load_u8 v39, v15 offset:960
	ds_load_u8 v40, v15 offset:800
	ds_load_u8 v41, v15 offset:768
	ds_load_u8 v42, v15 offset:864
	ds_load_u8 v43, v15 offset:832
	ds_load_u8 v56, v15 offset:672
	ds_load_u8 v57, v15 offset:640
	ds_load_u8 v58, v15 offset:736
	ds_load_u8 v59, v15 offset:704
	ds_load_u8 v79, v15 offset:976
	ds_load_u8 v80, v15 offset:944
	ds_load_u8 v81, v15 offset:912
	ds_load_u8 v82, v15 offset:880
	v_dual_mov_b32 v13, s10 :: v_dual_mov_b32 v12, s9
	v_dual_mov_b32 v11, s8 :: v_dual_mov_b32 v10, s7
	v_dual_mov_b32 v9, s6 :: v_dual_mov_b32 v8, s5
	v_mov_b32_e32 v7, s4
	ds_load_u8 v26, v15 offset:208
	ds_load_u8 v72, v15 offset:176
	ds_load_u8 v73, v15 offset:144
	ds_load_u8 v74, v15 offset:112
	ds_load_u8 v75, v15 offset:80
	ds_load_u8 v76, v15 offset:48
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v41, v40, 0xc0c0004
	ds_load_u8 v87, v15 offset:720
	ds_load_u8 v88, v15 offset:688
	ds_load_u8 v89, v15 offset:656
	ds_load_u8 v90, v15 offset:624
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v63, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v57, v59, v58, 0xc0c0004
	v_perm_b32 v60, v37, v36, 0xc0c0004
	ds_load_u8 v58, v15 offset:1440
	ds_load_u8 v59, v15 offset:1408
	ds_load_u8 v91, v15 offset:1504
	ds_load_u8 v92, v15 offset:1472
	ds_load_u8 v93, v15 offset:592
	ds_load_u8 v94, v15 offset:560
	ds_load_u8 v95, v15 offset:528
	ds_load_u8 v96, v15 offset:496
	v_perm_b32 v61, v39, v38, 0xc0c0004
	ds_load_u8 v36, v15 offset:544
	ds_load_u8 v37, v15 offset:512
	ds_load_u8 v38, v15 offset:608
	ds_load_u8 v39, v15 offset:576
	ds_load_u8 v83, v15 offset:848
	ds_load_u8 v84, v15 offset:816
	ds_load_u8 v85, v15 offset:784
	ds_load_u8 v86, v15 offset:752
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v26, v26, v71, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v68, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v69, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v70, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v37, v36, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[48:51], v[52:55], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v61, 16, v60
	v_lshl_or_b32 v53, v57, 16, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v52, v98, 16, v97
	ds_load_u8 v56, v15 offset:1312
	ds_load_u8 v57, v15 offset:1280
	ds_load_u8 v60, v15 offset:1376
	ds_load_u8 v61, v15 offset:1344
	ds_load_u8 v97, v15 offset:1520
	ds_load_u8 v98, v15 offset:1488
	ds_load_u8 v99, v15 offset:1456
	ds_load_u8 v100, v15 offset:1424
	ds_load_u8 v92, v15 offset:1184
	ds_load_u8 v102, v15 offset:1152
	ds_load_u8 v103, v15 offset:1248
	ds_load_u8 v104, v15 offset:1216
	ds_load_u8 v105, v15 offset:1056
	ds_load_u8 v106, v15 offset:1024
	ds_load_u8 v107, v15 offset:1120
	ds_load_u8 v108, v15 offset:1088
	ds_load_u8 v109, v15 offset:1392
	ds_load_u8 v110, v15 offset:1360
	ds_load_u8 v111, v15 offset:1328
	ds_load_u8 v112, v15 offset:1296
	v_lshl_or_b32 v54, v63, 16, v62
	v_perm_b32 v64, v64, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[52:55], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v91, 16, v101
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v102, v92, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v104, v103, 0xc0c0004
	v_perm_b32 v113, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v114, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[56:59], v16
	ds_load_b128 v[60:63], v25
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v16, s0, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v53, v53, 16, v52
	v_lshl_or_b32 v54, v114, 16, v113
	ds_load_u8 v107, v15 offset:1952
	ds_load_u8 v108, v15 offset:1920
	ds_load_u8 v114, v15 offset:2016
	ds_load_u8 v115, v15 offset:1984
	v_lshl_or_b32 v52, v106, 16, v105
	ds_load_u8 v105, v15 offset:1824
	ds_load_u8 v106, v15 offset:1792
	ds_load_u8 v116, v15 offset:1888
	ds_load_u8 v117, v15 offset:1856
	ds_load_u8 v118, v15 offset:1696
	ds_load_u8 v119, v15 offset:1664
	ds_load_u8 v120, v15 offset:1760
	ds_load_u8 v121, v15 offset:1728
	ds_load_u8 v122, v15 offset:1568
	ds_load_u8 v123, v15 offset:1536
	ds_load_u8 v124, v15 offset:1632
	ds_load_u8 v125, v15 offset:1600
	ds_load_u8 v16, v16
	ds_load_u8 v126, v15 offset:2000
	ds_load_u8 v127, v15 offset:1968
	ds_load_u8 v128, v15 offset:1936
	ds_load_u8 v25, v15 offset:1264
	ds_load_u8 v91, v15 offset:1232
	ds_load_u8 v101, v15 offset:1200
	ds_load_u8 v113, v15 offset:1168
	ds_load_u8 v92, v15 offset:1136
	ds_load_u8 v102, v15 offset:1104
	ds_load_u8 v103, v15 offset:1072
	ds_load_u8 v104, v15 offset:1040
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v106, v117, v116, 0xc0c0004
	ds_load_u8 v116, v15 offset:1776
	ds_load_u8 v117, v15 offset:1744
	ds_load_u8 v131, v15 offset:1712
	ds_load_u8 v132, v15 offset:1680
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[60:63], v[52:55], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	v_perm_b32 v108, v115, v114, 0xc0c0004
	ds_load_u8 v114, v15 offset:1904
	ds_load_u8 v115, v15 offset:1872
	ds_load_u8 v129, v15 offset:1840
	ds_load_u8 v130, v15 offset:1808
	ds_load_u8 v120, v15 offset:1648
	ds_load_u8 v121, v15 offset:1616
	ds_load_u8 v133, v15 offset:1584
	ds_load_u8 v15, v15 offset:1552
	v_lshl_or_b32 v54, v106, 16, v105
	v_lshl_or_b32 v53, v119, 16, v118
	v_lshl_or_b32 v55, v108, 16, v107
	v_lshl_or_b32 v52, v123, 16, v122
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v16, v79, v16, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v25, v91, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[52:55], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v64, 16, v65
	v_lshl_or_b32 v54, v67, 16, v66
	v_lshl_or_b32 v53, v26, 16, v68
	v_lshl_or_b32 v52, v69, 16, v70
	v_perm_b32 v26, v81, v80, 0xc0c0004
	v_perm_b32 v64, v85, v84, 0xc0c0004
	v_perm_b32 v65, v83, v82, 0xc0c0004
	v_perm_b32 v66, v89, v88, 0xc0c0004
	v_perm_b32 v67, v87, v86, 0xc0c0004
	v_perm_b32 v68, v95, v94, 0xc0c0004
	v_perm_b32 v69, v93, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[48:51], v[52:55], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v16, 16, v26
	v_lshl_or_b32 v50, v65, 16, v64
	v_lshl_or_b32 v49, v67, 16, v66
	v_lshl_or_b32 v48, v69, 16, v68
	v_perm_b32 v16, v100, v99, 0xc0c0004
	v_perm_b32 v26, v98, v97, 0xc0c0004
	v_perm_b32 v52, v112, v111, 0xc0c0004
	v_perm_b32 v53, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v113, v101, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v104, v103, 0xc0c0004
	v_perm_b32 v64, v102, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[44:47], v[48:51], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v26, 16, v16
	v_lshl_or_b32 v46, v53, 16, v52
	v_lshl_or_b32 v45, v25, 16, v54
	v_lshl_or_b32 v44, v64, 16, v55
	v_perm_b32 v16, v128, v127, 0xc0c0004
	v_perm_b32 v25, v126, v78, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v130, v129, 0xc0c0004
	v_perm_b32 v48, v115, v114, 0xc0c0004
	v_perm_b32 v49, v132, v131, 0xc0c0004
	v_perm_b32 v50, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v133, 0xc0c0004
	v_perm_b32 v51, v121, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[60:63], v[44:47], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v25, 16, v16
	v_lshl_or_b32 v46, v48, 16, v26
	v_lshl_or_b32 v45, v50, 16, v49
	v_lshl_or_b32 v44, v51, 16, v15
	v_cvt_f32_i32_e32 v15, v37
	v_cvt_f32_i32_e32 v16, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v26, v41
	v_wmma_i32_16x16x16_iu8 v[7:14], v[56:59], v[44:47], v[7:14] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v38
	v_cvt_f32_i32_e32 v37, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v8 :: v_dual_add_f32 v17, v17, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v24, v24, v10 :: v_dual_add_f32 v23, v23, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v12
	v_cvt_f32_i32_e32 v8, v11
	v_cvt_f32_i32_e32 v9, v14
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v11, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v31, v25 :: v_dual_add_f32 v30, v30, v26
	v_dual_add_f32 v29, v29, v37 :: v_dual_add_f32 v28, v28, v15
	v_dual_add_f32 v20, v20, v7 :: v_dual_add_f32 v19, v19, v8
	v_dual_add_f32 v22, v22, v9 :: v_dual_add_f32 v21, v21, v10
	v_add_f32_e32 v27, v27, v11
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v15, s1, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s18, v4
	v_add_nc_u32_e32 v16, s18, v6
	v_add_nc_u32_e32 v7, s18, v5
	v_add_nc_u32_e32 v1, s18, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v5, v15 offset:416
	ds_load_u8 v6, v15 offset:384
	ds_load_u8 v8, v15 offset:480
	ds_load_u8 v9, v15 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[48:51], v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s1, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v3, v15 offset:288
	ds_load_u8 v4, v15 offset:256
	ds_load_u8 v10, v15 offset:352
	ds_load_u8 v11, v15 offset:320
	ds_load_u8 v12, v15 offset:160
	ds_load_u8 v13, v15 offset:128
	ds_load_u8 v14, v15 offset:224
	ds_load_u8 v25, v15 offset:192
	ds_load_u8 v26, v15 offset:96
	ds_load_u8 v36, v15 offset:64
	ds_load_u8 v37, v15
	ds_load_u8 v38, v15 offset:32
	ds_load_u8 v60, v15 offset:464
	ds_load_u8 v61, v15 offset:432
	ds_load_u8 v62, v15 offset:400
	ds_load_u8 v63, v15 offset:368
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v59, s1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v11, v10, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v36, v26, 0xc0c0004
	v_perm_b32 v6, v9, v8, 0xc0c0004
	ds_load_u8 v26, v15 offset:16
	ds_load_u8 v73, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v37, v38, 0xc0c0004
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v42, s10
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v10, 16, v1
	ds_load_u8 v1, v15 offset:928
	ds_load_u8 v56, v15 offset:896
	v_mov_b32_e32 v40, s8
	ds_load_u8 v57, v15 offset:992
	ds_load_u8 v58, v15 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[52:55], v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v8, v13, v12, 0xc0c0004
	v_perm_b32 v9, v25, v14, 0xc0c0004
	v_mov_b32_e32 v41, s9
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v38, s6
	v_mov_b32_e32 v37, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v9, 16, v8
	v_mov_b32_e32 v36, s4
	ds_load_u8 v64, v15 offset:336
	ds_load_u8 v65, v15 offset:304
	ds_load_u8 v66, v15 offset:272
	ds_load_u8 v67, v15 offset:240
	ds_load_u8 v68, v15 offset:208
	ds_load_u8 v69, v15 offset:176
	ds_load_u8 v70, v15 offset:144
	ds_load_u8 v71, v15 offset:112
	ds_load_u8 v25, v15 offset:80
	ds_load_u8 v72, v15 offset:48
	ds_load_u8 v107, v15 offset:1264
	ds_load_u8 v108, v15 offset:1232
	ds_load_u8 v109, v15 offset:1200
	ds_load_u8 v110, v15 offset:1168
	v_wmma_i32_16x16x16_iu8 v[7:14], v[48:51], v[3:6], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v2, v15 offset:800
	ds_load_u8 v3, v15 offset:768
	ds_load_u8 v4, v15 offset:864
	ds_load_u8 v5, v15 offset:832
	ds_load_u8 v6, v15 offset:672
	ds_load_u8 v74, v15 offset:640
	ds_load_u8 v75, v15 offset:736
	ds_load_u8 v76, v15 offset:704
	ds_load_u8 v77, v15 offset:976
	ds_load_u8 v78, v15 offset:944
	ds_load_u8 v79, v15 offset:912
	ds_load_u8 v80, v15 offset:880
	ds_load_u8 v124, v15 offset:1776
	ds_load_u8 v125, v15 offset:1744
	ds_load_u8 v126, v15 offset:1712
	ds_load_u8 v127, v15 offset:1680
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v1, v56, v1, 0xc0c0004
	ds_load_u8 v56, v15 offset:544
	ds_load_u8 v81, v15 offset:512
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v15 offset:608
	ds_load_u8 v82, v15 offset:576
	ds_load_u8 v83, v15 offset:848
	ds_load_u8 v84, v15 offset:816
	ds_load_u8 v85, v15 offset:784
	ds_load_u8 v86, v15 offset:752
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v64, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v57, 16, v1
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v6, v74, v6, 0xc0c0004
	ds_load_u8 v5, v15 offset:720
	ds_load_u8 v87, v15 offset:688
	ds_load_u8 v88, v15 offset:656
	ds_load_u8 v89, v15 offset:624
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	ds_load_u8 v75, v15 offset:592
	ds_load_u8 v76, v15 offset:560
	ds_load_u8 v90, v15 offset:528
	ds_load_u8 v91, v15 offset:496
	v_perm_b32 v62, v66, v65, 0xc0c0004
	v_perm_b32 v65, v70, v69, 0xc0c0004
	v_lshl_or_b32 v2, v74, 16, v6
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v82, v58, 0xc0c0004
	ds_load_u8 v82, v15 offset:1504
	ds_load_u8 v93, v15 offset:1472
	v_perm_b32 v56, v81, v56, 0xc0c0004
	ds_load_u8 v81, v15 offset:1440
	ds_load_u8 v92, v15 offset:1408
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v25, v25, v71, 0xc0c0004
	v_perm_b32 v26, v26, v72, 0xc0c0004
	v_lshl_or_b32 v1, v58, 16, v56
	ds_load_u8 v6, v15 offset:1312
	ds_load_u8 v56, v15 offset:1280
	ds_load_u8 v57, v15 offset:1376
	ds_load_u8 v58, v15 offset:1344
	ds_load_u8 v74, v15 offset:1184
	ds_load_u8 v94, v15 offset:1152
	ds_load_u8 v95, v15 offset:1248
	ds_load_u8 v96, v15 offset:1216
	ds_load_u8 v97, v15 offset:1520
	ds_load_u8 v98, v15 offset:1488
	ds_load_u8 v99, v15 offset:1456
	ds_load_u8 v100, v15 offset:1424
	v_lshl_or_b32 v62, v64, 16, v62
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v64, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v5, v5, v86, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[44:47], v[1:4], v[7:14] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v68, v75, v89, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v67, v90, v76, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v60, v91, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v56, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_perm_b32 v82, v93, v82, 0xc0c0004
	ds_load_u8 v93, v15 offset:1120
	ds_load_u8 v102, v15 offset:1088
	ds_load_u8 v103, v15 offset:1392
	ds_load_u8 v104, v15 offset:1360
	ds_load_u8 v105, v15 offset:1328
	ds_load_u8 v106, v15 offset:1296
	v_perm_b32 v81, v92, v81, 0xc0c0004
	ds_load_u8 v92, v15 offset:1056
	ds_load_u8 v101, v15 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v57, v94, v74, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v96, v95, 0xc0c0004
	v_lshl_or_b32 v3, v56, 16, v6
	v_lshl_or_b32 v4, v82, 16, v81
	ds_load_u8 v74, v15 offset:1136
	ds_load_u8 v94, v15 offset:1104
	ds_load_u8 v95, v15 offset:1072
	ds_load_u8 v96, v15 offset:1040
	v_lshl_or_b32 v63, v60, 16, v61
	v_lshl_or_b32 v2, v58, 16, v57
	v_lshl_or_b32 v61, v66, 16, v65
	v_lshl_or_b32 v60, v25, 16, v26
	v_perm_b32 v25, v79, v78, 0xc0c0004
	v_perm_b32 v65, v83, v80, 0xc0c0004
	v_perm_b32 v66, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v102, v93, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[48:51], v[60:63], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v65, 16, v64
	v_lshl_or_b32 v49, v5, 16, v66
	v_lshl_or_b32 v48, v68, 16, v67
	v_perm_b32 v5, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v101, v92, 0xc0c0004
	ds_load_u8 v101, v15 offset:1952
	ds_load_u8 v111, v15 offset:1920
	ds_load_u8 v112, v15 offset:2016
	ds_load_u8 v113, v15 offset:1984
	v_perm_b32 v60, v104, v103, 0xc0c0004
	v_perm_b32 v61, v110, v109, 0xc0c0004
	v_perm_b32 v62, v108, v107, 0xc0c0004
	v_lshl_or_b32 v1, v93, 16, v92
	ds_load_u8 v6, v15 offset:1824
	ds_load_u8 v56, v15 offset:1792
	ds_load_u8 v57, v15 offset:1888
	ds_load_u8 v58, v15 offset:1856
	ds_load_u8 v81, v15 offset:1696
	ds_load_u8 v82, v15 offset:1664
	ds_load_u8 v92, v15 offset:1760
	ds_load_u8 v93, v15 offset:1728
	ds_load_u8 v102, v59
	ds_load_u8 v114, v15 offset:2000
	ds_load_u8 v115, v15 offset:1968
	ds_load_u8 v116, v15 offset:1936
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v96, v95, 0xc0c0004
	v_perm_b32 v64, v94, v74, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[52:55], v[1:4], v[7:14] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v56, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v123, v58, v57, 0xc0c0004
	v_perm_b32 v101, v111, v101, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_perm_b32 v111, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v93, v92, 0xc0c0004
	ds_load_u8 v112, v15 offset:1568
	ds_load_u8 v113, v15 offset:1536
	ds_load_u8 v117, v15 offset:1632
	ds_load_u8 v118, v15 offset:1600
	ds_load_u8 v119, v15 offset:1904
	ds_load_u8 v120, v15 offset:1872
	ds_load_u8 v121, v15 offset:1840
	ds_load_u8 v122, v15 offset:1808
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[56:59], v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v3, v123, 16, v6
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v26, v77, v102, 0xc0c0004
	v_lshl_or_b32 v2, v82, 16, v81
	ds_load_u8 v6, v15 offset:1648
	ds_load_u8 v16, v15 offset:1616
	ds_load_u8 v81, v15 offset:1584
	ds_load_u8 v15, v15 offset:1552
	v_lshl_or_b32 v4, v111, 16, v101
	v_lshl_or_b32 v51, v26, 16, v25
	v_perm_b32 v25, v98, v97, 0xc0c0004
	v_perm_b32 v26, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[48:51], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v113, v112, 0xc0c0004
	v_lshl_or_b32 v47, v25, 16, v5
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v82, v118, v117, 0xc0c0004
	v_lshl_or_b32 v46, v60, 16, v26
	v_lshl_or_b32 v45, v62, 16, v61
	v_lshl_or_b32 v44, v64, 16, v63
	v_perm_b32 v5, v116, v115, 0xc0c0004
	v_perm_b32 v25, v114, v73, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v26, v122, v121, 0xc0c0004
	v_perm_b32 v48, v120, v119, 0xc0c0004
	v_perm_b32 v49, v127, v126, 0xc0c0004
	v_perm_b32 v50, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v81, 0xc0c0004
	v_perm_b32 v6, v16, v6, 0xc0c0004
	v_lshl_or_b32 v1, v82, 16, v1
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[44:47], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v25, 16, v5
	v_lshl_or_b32 v46, v48, 16, v26
	v_lshl_or_b32 v45, v50, 16, v49
	v_lshl_or_b32 v44, v6, 16, v15
	v_wmma_i32_16x16x16_iu8 v[7:14], v[56:59], v[1:4], v[7:14] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[44:47], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v36
	v_cvt_f32_i32_e32 v16, v37
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v26, v41
	v_cvt_f32_i32_e32 v38, v42
	v_cvt_f32_i32_e32 v39, v43
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s29, v35
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v27, v7 :: v_dual_and_b32 v4, 0x70, v1
	v_dual_add_f32 v9, v33, v9 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v4, s28
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s20, s12
	v_or_b32_e32 v4, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v28, v14 :: v_dual_add_f32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v8, v34, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_or_b32_e32 v6, 4, v3
	buffer_load_u16 v5, v3, s[20:23], 0 offen
	v_or_b32_e32 v41, 12, v3
	v_or_b32_e32 v40, 8, v3
	v_or_b32_e32 v43, 20, v3
	v_or_b32_e32 v42, 16, v3
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	v_or_b32_e32 v44, 24, v3
	v_or_b32_e32 v3, 28, v3
	s_clause 0x5
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v35, s19, v35
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v46, 0x5410
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v17, v15, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s29, s19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v32, v10 :: v_dual_add_f32 v11, v31, v11
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s28
	s_lshl_b32 s0, s19, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v27, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v10, v32, v10, s2
	v_cndmask_b32_e64 v14, v28, v14, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v12, v30, v12 :: v_dual_add_f32 v13, v29, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v34, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v18, v16 :: v_dual_add_f32 v37, v24, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v30, v12, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v13, v29, v13, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v23, v36 :: v_dual_add_f32 v39, v22, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v31, v11, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v19, v25 :: v_dual_add_f32 v26, v20, v26
	v_dual_add_f32 v38, v21, v38 :: v_dual_mov_b32 v47, 0x7632
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v33, v9, s2
	v_cndmask_b32_e64 v16, v18, v16, s2
	v_cndmask_b32_e64 v23, v23, v36, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v24, v37, s2
	v_cndmask_b32_e64 v19, v19, v25, s2
	v_cndmask_b32_e64 v21, v21, v38, s2
	v_cndmask_b32_e64 v22, v22, v39, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.h, v45.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v26, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.h, v45.h
	v_mov_b16_e32 v25.h, v45.h
	v_mov_b16_e32 v26.h, v45.h
	s_mov_b32 s15, 0x76543210
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v4, 16, v4
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 0x78, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v32, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v1, s1, v1, v35
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_lshlrev_b32_e32 v27, 1, v1
	v_add_lshl_u32 v28, v1, s0, 1
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v1, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v34, v1, v2 :: v_dual_mul_f32 v1, v4, v1
	v_dual_mul_f32 v6, v5, v2 :: v_dual_mul_f32 v5, v4, v5
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v6, v7, v6 :: v_dual_lshlrev_b32 v29, 16, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v5, v15, v5 :: v_dual_lshlrev_b32 v30, 16, v40
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v15, v29, v2
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v31, 16, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v29, v4, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v7, v30, v2
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v30, v4, v30 :: v_dual_lshlrev_b32 v3, 16, v3
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v36, v31, v2 :: v_dual_lshlrev_b32 v33, 16, v44
	v_mul_f32_e32 v35, v32, v2
	v_mul_f32_e32 v31, v4, v31
	v_mul_f32_e32 v32, v4, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v5.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v37, v33, v2 :: v_dual_mul_f32 v12, v12, v36
	v_dual_mul_f32 v2, v3, v2 :: v_dual_mul_f32 v3, v4, v3
	v_mul_f32_e32 v4, v4, v33
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v8, v8, v34 :: v_dual_mul_f32 v7, v9, v7
	v_mul_f32_e32 v1, v16, v1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_bfe_u32 v16, v6, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v10, v15
	v_mul_f32_e32 v2, v14, v2
	v_mul_f32_e32 v4, v21, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v14, v8, 16, 1
	v_mov_b16_e32 v17.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v10, v23, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v6, v16, 0x7fff
	v_and_b32_e32 v16, 1, v45
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v23, v12, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v8, v8
	v_add3_u32 v8, v8, v14, 0x7fff
	v_and_b32_e32 v14, 1, v17
	v_cmp_o_f32_e64 s0, v5, v5
	v_cmp_o_f32_e64 s4, v9, v9
	v_cmp_o_f32_e64 s8, v12, v12
	v_add3_u32 v5, v5, v16, 0x7fff
	v_add3_u32 v9, v9, v21, 0x7fff
	v_add3_u32 v12, v12, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v1, v1
	v_add3_u32 v1, v1, v14, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v9.h, s4
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v15, v18, v29 :: v_dual_mul_f32 v18, v19, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v10.h
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s6, v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v15.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v11, v11, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.l, v18.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v19, v20, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v20, v7, 16, 1
	v_and_b32_e32 v16, 1, v45
	v_bfe_u32 v22, v11, 16, 1
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v26.l, v4.h
	v_add3_u32 v7, v7, v20, 0x7fff
	v_and_b32_e32 v20, 1, v25
	v_add3_u32 v11, v11, v22, 0x7fff
	v_mov_b16_e32 v45.l, v19.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v13, v13, v37 :: v_dual_cndmask_b32 v12, 0x3276, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.l, 0x7fff, v7.h, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v9.l, 0x7fff, v11.h, s7
	v_and_b32_e32 v17, 1, v24
	v_cmp_o_f32_e64 s10, v18, v18
	v_bfe_u32 v29, v13, 16, 1
	v_bfe_u32 v30, v2, 16, 1
	v_add3_u32 v11, v18, v20, 0x7fff
	v_add3_u32 v7, v10, v17, 0x7fff
	v_and_b32_e32 v10, 1, v45
	v_cmp_o_f32_e64 s14, v4, v4
	v_cmp_o_f32_e64 s11, v13, v13
	v_cmp_o_f32_e64 s12, v2, v2
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s6
	v_add3_u32 v7, v19, v10, 0x7fff
	v_cndmask_b32_e32 v10, v9, v6, vcc_lo
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v8, v15, v16, 0x7fff
	v_add3_u32 v13, v13, v29, 0x7fff
	v_add3_u32 v2, v2, v30, 0x7fff
	v_cmp_o_f32_e64 s9, v19, v19
	v_mov_b16_e32 v45.l, v3.h
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s5
	v_and_b32_e32 v21, 1, v26
	v_cndmask_b16 v2.l, 0x7fff, v13.h, s11
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s12
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v6, v6, v9, vcc_lo
	v_add3_u32 v4, v4, v21, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v11.h, s10
	v_cndmask_b32_e32 v11, 0x1054, v46, vcc_lo
	v_dual_cndmask_b32 v9, v2, v5 :: v_dual_cndmask_b32 v2, v5, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v7.l, 0x7fff, v4.h, s14
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s9
	v_lshl_or_b32 v11, v11, 8, v11
	v_and_b32_e32 v8, 1, v45
	v_lshl_or_b32 v12, v12, 8, v12
	v_cmp_o_f32_e64 s13, v3, v3
	v_permlanex16_b32 v6, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x540054, v11
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v2, v5, 4, v5
	v_cndmask_b32_e32 v5, v4, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v4, vcc_lo
	v_add3_u32 v3, v3, v8, 0x7fff
	v_and_b32_e32 v8, 0x760076, v12
	v_permlanex16_b32 v13, v1, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v7.h, 0x7fff, v3.h, s13
	v_lshl_or_b32 v3, v8, 4, v8
	v_and_b32_e32 v8, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v4, v0, v7, vcc_lo
	v_dual_cndmask_b32 v7, v7, v0 :: v_dual_and_b32 v12, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v0, v6, v10, v8
	v_perm_b32 v2, v11, v9, v8
	v_permlanex16_b32 v14, v4, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v1, v6, v10, v12
	v_perm_b32 v3, v11, v9, v12
	v_perm_b32 v4, v13, v5, v8
	v_perm_b32 v5, v13, v5, v12
	v_perm_b32 v6, v14, v7, v8
	v_perm_b32 v7, v14, v7, v12
	s_clause 0x1
	buffer_store_b128 v[0:3], v27, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v28, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 209
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12904
; TotalNumSgprs: 36
; NumVgprs: 209
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     209
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
