	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v10, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v29, 2, v0
	v_and_b32_e32 v11, 15, v0
	v_or_b32_e32 v33, 0x3f0, v0
	v_and_b32_e32 v34, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v7, 2, v10
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 12, v29
	v_and_b32_e32 v35, 32, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 15
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s29, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s30, s29, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b64 s[24:25], s[14:15]
	s_mov_b32 s15, 0x31027000
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v30, v11, 4, v3
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	s_mov_b32 s26, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v31, s29, 1, v30
	v_add_nc_u32_e32 v32, s30, v30
	.loc	1 349 16 is_stmt 1              ; generate_amdgcn.py:349:16
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
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_load_b32 s9, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s28, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s11
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s16, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s16, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s10
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s9, 0x7f
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s6, s3, 6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s31, s2, 4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v1, v2, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s28, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s18, s2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s7, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v30
	v_add_nc_u32_e32 v3, s4, v31
	v_add_nc_u32_e32 v4, s4, v32
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s29, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s9, s29, 7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s9
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s8, s28, 7
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b32 v55, v1, s[12:15], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v8, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	v_cndmask_b32_e64 v2, 0x80000000, v12, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s4, v31
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v8, s7, s8, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s4, v32
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v2, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v12, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v8, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v25, s2
	s_clause 0x1
	buffer_load_b128 v[25:28], v2, s[24:27], 0 offen
	buffer_load_b128 v[43:46], v8, s[24:27], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v12, 14, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s29, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x1
	buffer_load_b128 v[47:50], v2, s[24:27], 0 offen
	buffer_load_b128 v[51:54], v8, s[24:27], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b32 v8, v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v2, v1, v7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v7, 0, v29
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v36, v12, 10, v2
	v_lshlrev_b32_e32 v2, 3, v0
	v_xor_b32_e32 v37, 0x90, v36
	v_xor_b32_e32 v38, 0x120, v36
	v_xor_b32_e32 v39, 0x1b0, v36
	v_xor_b32_e32 v40, 0x210, v36
	v_add_nc_u32_e32 v56, 0, v36
	v_xor_b32_e32 v41, 0x330, v36
	v_xor_b32_e32 v42, 0x3a0, v36
	v_add_nc_u32_e32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	v_add_nc_u32_e32 v59, 0, v39
	v_add_nc_u32_e32 v60, 0, v40
	v_add_nc_u32_e32 v61, 0, v41
	v_add_nc_u32_e32 v62, 0, v42
	v_add_nc_u32_e32 v63, 0x4000, v56
	v_add_nc_u32_e32 v64, 0x4000, v57
	v_add_nc_u32_e32 v65, 0x4000, v58
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	v_add_nc_u32_e32 v69, 0x4000, v62
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v7, v55 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v55, v13, v3, 0x4000501
	v_perm_b32 v3, v13, v3, 0x6020703
	v_perm_b32 v13, v14, v4, 0x4000501
	v_perm_b32 v4, v14, v4, 0x6020703
	v_perm_b32 v14, v15, v5, 0x4000501
	v_perm_b32 v5, v15, v5, 0x6020703
	v_perm_b32 v15, v16, v6, 0x4000501
	v_perm_b32 v6, v16, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v16, v21, v17, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	v_perm_b32 v21, v22, v18, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v24, v43, v25, 0x4000501
	v_perm_b32 v25, v43, v25, 0x6020703
	v_perm_b32 v43, v44, v26, 0x4000501
	v_perm_b32 v26, v44, v26, 0x6020703
	v_perm_b32 v44, v45, v27, 0x4000501
	v_perm_b32 v27, v45, v27, 0x6020703
	v_perm_b32 v45, v46, v28, 0x4000501
	v_perm_b32 v28, v46, v28, 0x6020703
	v_perm_b32 v46, v55, v16, 0x7060302
	v_perm_b32 v16, v55, v16, 0x5040100
	v_perm_b32 v55, v3, v17, 0x7060302
	v_perm_b32 v3, v3, v17, 0x5040100
	v_perm_b32 v17, v13, v21, 0x7060302
	v_perm_b32 v13, v13, v21, 0x5040100
	v_perm_b32 v21, v4, v18, 0x7060302
	v_perm_b32 v4, v4, v18, 0x5040100
	v_perm_b32 v18, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v5, v19, 0x7060302
	v_perm_b32 v5, v5, v19, 0x5040100
	v_perm_b32 v19, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v6, v20, 0x7060302
	v_perm_b32 v6, v6, v20, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v20, v51, v47, 0x4000501
	v_perm_b32 v47, v51, v47, 0x6020703
	v_perm_b32 v51, v52, v48, 0x4000501
	v_perm_b32 v48, v52, v48, 0x6020703
	v_perm_b32 v52, v53, v49, 0x4000501
	v_perm_b32 v49, v53, v49, 0x6020703
	v_perm_b32 v53, v54, v50, 0x4000501
	v_perm_b32 v50, v54, v50, 0x6020703
	ds_store_2addr_b32 v56, v46, v16 offset1:16
	ds_store_2addr_b32 v57, v55, v3 offset1:16
	ds_store_2addr_b32 v58, v17, v13 offset1:16
	ds_store_2addr_b32 v59, v21, v4 offset1:16
	ds_store_2addr_b32 v60, v18, v14 offset1:16
	ds_store_2addr_b32 v56, v22, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v61, v19, v15 offset1:16
	ds_store_2addr_b32 v62, v23, v6 offset1:16
	v_perm_b32 v3, v24, v20, 0x7060302
	v_perm_b32 v4, v24, v20, 0x5040100
	v_perm_b32 v5, v25, v47, 0x7060302
	v_perm_b32 v6, v25, v47, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v7, v8 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v7, v43, v51, 0x7060302
	v_perm_b32 v8, v43, v51, 0x5040100
	v_perm_b32 v13, v26, v48, 0x7060302
	v_perm_b32 v14, v26, v48, 0x5040100
	v_perm_b32 v15, v44, v52, 0x7060302
	v_perm_b32 v16, v44, v52, 0x5040100
	v_perm_b32 v17, v27, v49, 0x7060302
	v_perm_b32 v18, v27, v49, 0x5040100
	v_perm_b32 v19, v45, v53, 0x7060302
	v_perm_b32 v20, v45, v53, 0x5040100
	v_perm_b32 v21, v28, v50, 0x7060302
	v_perm_b32 v22, v28, v50, 0x5040100
	ds_store_2addr_b32 v63, v3, v4 offset1:16
	ds_store_2addr_b32 v64, v5, v6 offset1:16
	ds_store_2addr_b32 v65, v7, v8 offset1:16
	ds_store_2addr_b32 v66, v13, v14 offset1:16
	ds_store_2addr_b32 v67, v15, v16 offset1:16
	ds_store_2addr_b32 v63, v17, v18 offset0:160 offset1:176
	ds_store_2addr_b32 v68, v19, v20 offset1:16
	ds_store_2addr_b32 v69, v21, v22 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v3, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v43, 0x1800, v1
	v_and_b32_e32 v44, 48, v2
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	s_add_i32 s19, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s33, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v4, 6, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s5, 7
	s_add_i32 s0, s6, 0x100
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v44, 48, v2
	v_and_b32_e32 v2, 0x210, v3
	v_and_b32_e32 v43, 0x1800, v1
	v_bfe_i32 v1, v0, 5, 1
	v_and_b32_e32 v3, 0x1c0, v4
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v45, s29, v30
	v_xor_b32_e32 v2, v2, v44
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v1, 0x420, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v2, v3, v2, v43
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v20, 0
	v_xor_b32_e32 v46, v2, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v47, 16, v46
	v_xor_b32_e32 v48, 32, v46
	v_xor_b32_e32 v49, 48, v46
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v15, 0
	s_add_i32 s19, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s35, 1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s0, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[50:51], null, s6, s28, v[9:10]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s6, s29
	s_add_i32 s6, s6, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s7, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v51, s6, v30
	v_add_nc_u32_e32 v52, s6, v45
	v_add_nc_u32_e32 v53, s6, v31
	v_add_nc_u32_e32 v54, s6, v32
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v126, v50, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[66:69], v51, s[24:27], 0 offen
	buffer_load_b128 v[70:73], v52, s[24:27], 0 offen
	buffer_load_b128 v[74:77], v53, s[24:27], 0 offen
	buffer_load_b128 v[78:81], v54, s[24:27], 0 offen
	s_mov_b32 s6, s19
	s_mov_b32 s19, s1
	s_mov_b32 s1, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v50, s6, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v52, s1, v46
	v_add_nc_u32_e32 v53, s1, v47
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v51, s6, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v54, s1, v48
	v_add_nc_u32_e32 v55, s1, v49
	ds_load_b128 v[58:61], v52
	ds_load_b128 v[82:85], v52 offset:8192
	ds_load_b128 v[86:89], v53
	ds_load_b128 v[90:93], v53 offset:8192
	ds_load_b128 v[94:97], v54
	ds_load_b128 v[98:101], v54 offset:8192
	ds_load_b128 v[102:105], v55
	ds_load_b128 v[106:109], v55 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v52, v50 offset:208
	ds_load_u8 v53, v50 offset:240
	ds_load_u8 v54, v50 offset:224
	ds_load_u8 v55, v50 offset:192
	ds_load_u8 v56, v50 offset:144
	ds_load_u8 v57, v50 offset:176
	ds_load_u8 v62, v50 offset:160
	ds_load_u8 v63, v50 offset:128
	ds_load_u8 v64, v50 offset:80
	ds_load_u8 v65, v50 offset:112
	ds_load_u8 v110, v50 offset:96
	ds_load_u8 v111, v50 offset:64
	ds_load_u8 v112, v50
	ds_load_u8 v113, v50 offset:16
	ds_load_u8 v114, v50 offset:32
	ds_load_u8 v115, v50 offset:48
	ds_load_u8 v116, v50 offset:464
	ds_load_u8 v117, v50 offset:496
	ds_load_u8 v118, v50 offset:480
	ds_load_u8 v119, v50 offset:448
	ds_load_u8 v120, v50 offset:400
	ds_load_u8 v121, v50 offset:432
	ds_load_u8 v122, v50 offset:416
	ds_load_u8 v123, v50 offset:384
	ds_load_u8 v124, v50 offset:336
	ds_load_u8 v125, v50 offset:368
	ds_load_u8 v127, v50 offset:352
	ds_load_u8 v128, v50 offset:320
	ds_load_u8 v129, v50 offset:272
	ds_load_u8 v130, v50 offset:304
	ds_load_u8 v131, v50 offset:288
	ds_load_u8 v132, v50 offset:256
	ds_load_u8 v133, v50 offset:720
	ds_load_u8 v134, v50 offset:752
	ds_load_u8 v135, v50 offset:736
	ds_load_u8 v136, v50 offset:704
	ds_load_u8 v137, v50 offset:656
	ds_load_u8 v138, v50 offset:688
	ds_load_u8 v139, v50 offset:672
	ds_load_u8 v140, v50 offset:640
	ds_load_u8 v141, v50 offset:592
	ds_load_u8 v142, v50 offset:624
	ds_load_u8 v143, v50 offset:608
	ds_load_u8 v144, v50 offset:576
	ds_load_u8 v145, v50 offset:528
	ds_load_u8 v146, v50 offset:560
	ds_load_u8 v147, v50 offset:544
	ds_load_u8 v148, v50 offset:512
	ds_load_u8 v149, v50 offset:976
	ds_load_u8 v51, v51
	ds_load_u8 v150, v50 offset:992
	ds_load_u8 v151, v50 offset:960
	ds_load_u8 v152, v50 offset:912
	ds_load_u8 v153, v50 offset:944
	ds_load_u8 v154, v50 offset:928
	ds_load_u8 v155, v50 offset:896
	ds_load_u8 v156, v50 offset:848
	ds_load_u8 v157, v50 offset:880
	ds_load_u8 v158, v50 offset:864
	ds_load_u8 v159, v50 offset:832
	ds_load_u8 v160, v50 offset:784
	ds_load_u8 v161, v50 offset:816
	ds_load_u8 v162, v50 offset:800
	ds_load_u8 v50, v50 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v52, v55, v52, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v54, v63, v56, 0xc0c0004
	v_perm_b32 v55, v62, v57, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v56, v111, v64, 0xc0c0004
	v_perm_b32 v57, v110, v65, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v62, v112, v113, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v63, v114, v115, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v64, v119, v116, 0xc0c0004
	v_perm_b32 v65, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v114, v123, v120, 0xc0c0004
	v_perm_b32 v115, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v118, v128, v124, 0xc0c0004
	v_perm_b32 v119, v127, v125, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v120, v132, v129, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v122, v136, v133, 0xc0c0004
	v_perm_b32 v123, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v124, v140, v137, 0xc0c0004
	v_perm_b32 v125, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v151, v149, 0xc0c0004
	v_perm_b32 v51, v150, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v160, 0xc0c0004
	v_perm_b32 v136, v162, v161, 0xc0c0004
	v_lshl_or_b32 v113, v53, 16, v52
	v_lshl_or_b32 v112, v55, 16, v54
	v_lshl_or_b32 v111, v57, 16, v56
	v_lshl_or_b32 v110, v63, 16, v62
	v_perm_b32 v127, v144, v141, 0xc0c0004
	v_perm_b32 v128, v143, v142, 0xc0c0004
	v_perm_b32 v129, v148, v145, 0xc0c0004
	v_perm_b32 v130, v147, v146, 0xc0c0004
	v_lshl_or_b32 v117, v65, 16, v64
	v_lshl_or_b32 v116, v115, 16, v114
	v_lshl_or_b32 v115, v119, 16, v118
	v_lshl_or_b32 v114, v121, 16, v120
	v_lshl_or_b32 v121, v123, 16, v122
	v_lshl_or_b32 v120, v125, 16, v124
	v_lshl_or_b32 v125, v51, 16, v131
	v_lshl_or_b32 v122, v136, 16, v50
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v132, v155, v152, 0xc0c0004
	v_perm_b32 v133, v154, v153, 0xc0c0004
	v_perm_b32 v134, v159, v156, 0xc0c0004
	v_perm_b32 v135, v158, v157, 0xc0c0004
	v_lshl_or_b32 v119, v128, 16, v127
	v_lshl_or_b32 v118, v130, 16, v129
	v_wmma_i32_16x16x16_iu8 v[50:57], v[86:89], v[114:117], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[90:93], v[114:117], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v133, 16, v132
	v_lshl_or_b32 v123, v135, 16, v134
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s35, s7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[94:97], v[118:121], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[98:101], v[118:121], v[58:65] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s35, 14
	s_mov_b32 s4, s33
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s35, 10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[102:105], v[122:125], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[106:109], v[122:125], v[58:65] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s7, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s8, s1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v13, v13, v50 :: v_dual_add_f32 v28, v28, v51
	v_dual_add_f32 v27, v27, v52 :: v_dual_add_f32 v26, v26, v53
	v_dual_add_f32 v25, v25, v54 :: v_dual_add_nc_u32 v164, s33, v36
	v_dual_add_f32 v24, v24, v55 :: v_dual_add_f32 v23, v23, v56
	v_add_f32_e32 v22, v22, v57
	v_dual_add_f32 v20, v20, v59 :: v_dual_add_nc_u32 v163, s8, v29
	v_add_f32_e32 v21, v21, v58
	v_dual_add_f32 v16, v16, v63 :: v_dual_add_nc_u32 v165, s33, v37
	v_dual_add_f32 v19, v19, v60 :: v_dual_add_nc_u32 v166, s33, v38
	v_dual_add_f32 v14, v14, v65 :: v_dual_add_nc_u32 v167, s33, v39
	v_dual_add_f32 v15, v15, v64 :: v_dual_add_nc_u32 v170, s33, v42
	v_dual_add_f32 v18, v18, v61 :: v_dual_add_f32 v17, v17, v62
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s8, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v168, s33, v40
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v169, s33, v41
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v163, v126 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v50, v70, v66, 0x4000501
	v_perm_b32 v52, v70, v66, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v78, v74, 0x4000501
	v_perm_b32 v53, v78, v74, 0x6020703
	v_perm_b32 v54, v71, v67, 0x4000501
	v_perm_b32 v55, v79, v75, 0x4000501
	v_perm_b32 v56, v71, v67, 0x6020703
	v_perm_b32 v57, v79, v75, 0x6020703
	v_perm_b32 v58, v72, v68, 0x4000501
	v_perm_b32 v59, v80, v76, 0x4000501
	v_perm_b32 v60, v72, v68, 0x6020703
	v_perm_b32 v61, v80, v76, 0x6020703
	v_perm_b32 v62, v73, v69, 0x4000501
	v_perm_b32 v63, v81, v77, 0x4000501
	v_perm_b32 v64, v73, v69, 0x6020703
	v_perm_b32 v65, v81, v77, 0x6020703
	v_perm_b32 v66, v51, v50, 0x7060302
	v_perm_b32 v50, v51, v50, 0x5040100
	v_perm_b32 v51, v53, v52, 0x7060302
	v_perm_b32 v52, v53, v52, 0x5040100
	v_perm_b32 v53, v55, v54, 0x7060302
	v_perm_b32 v54, v55, v54, 0x5040100
	v_perm_b32 v55, v57, v56, 0x7060302
	v_perm_b32 v56, v57, v56, 0x5040100
	v_perm_b32 v57, v59, v58, 0x7060302
	v_perm_b32 v58, v59, v58, 0x5040100
	v_perm_b32 v59, v61, v60, 0x7060302
	v_perm_b32 v60, v61, v60, 0x5040100
	v_perm_b32 v61, v63, v62, 0x7060302
	v_perm_b32 v62, v63, v62, 0x5040100
	v_perm_b32 v63, v65, v64, 0x7060302
	v_perm_b32 v64, v65, v64, 0x5040100
	ds_store_2addr_b32 v164, v66, v50 offset1:16
	ds_store_2addr_b32 v165, v51, v52 offset1:16
	ds_store_2addr_b32 v166, v53, v54 offset1:16
	ds_store_2addr_b32 v167, v55, v56 offset1:16
	ds_store_2addr_b32 v168, v57, v58 offset1:16
	ds_store_2addr_b32 v164, v59, v60 offset0:160 offset1:176
	ds_store_2addr_b32 v169, v61, v62 offset1:16
	ds_store_2addr_b32 v170, v63, v64 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v33 :: v_dual_mov_b32 v4, v35
	v_mov_b32_e32 v5, v34
.LBB0_7:                                ; %Flow22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v5
	v_and_b32_e32 v1, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_and_b32_e32 v2, 1, v0
	s_mov_b32 s8, 0
	v_cndmask_b32_e64 v5, 0x210, 0, s0
	v_lshlrev_b32_e32 v6, 6, v1
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v5, v44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or3_b32 v5, v6, v43, v5
	v_xor_b32_e32 v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v5, 16, v4
	v_xor_b32_e32 v6, 32, v4
	v_xor_b32_e32 v7, 48, v4
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v8, s19, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v8 offset:208
	ds_load_u8 v29, v8 offset:224
	ds_load_u8 v30, v8 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v77, s4, v6
	ds_load_b128 v[45:48], v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v32, v8 offset:240
	ds_load_u8 v33, v8 offset:144
	ds_load_u8 v34, v8 offset:176
	ds_load_u8 v35, v8 offset:160
	ds_load_u8 v36, v8 offset:128
	ds_load_u8 v37, v8 offset:112
	ds_load_u8 v38, v8 offset:80
	ds_load_u8 v39, v8 offset:96
	ds_load_u8 v40, v8 offset:64
	ds_load_u8 v41, v8
	ds_load_u8 v42, v8 offset:16
	ds_load_u8 v43, v8 offset:32
	ds_load_u8 v44, v8 offset:48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v31, s4, v4
	ds_load_b128 v[49:52], v31 offset:8192
	ds_load_b128 v[53:56], v31
	v_add_nc_u32_e32 v73, s4, v7
	v_add_nc_u32_e32 v72, s4, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v29, v32, 0xc0c0004
	v_perm_b32 v9, v30, v9, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v30, s19, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v40, v38, 0xc0c0004
	v_perm_b32 v32, v39, v37, 0xc0c0004
	v_lshl_or_b32 v60, v29, 16, v9
	v_perm_b32 v9, v36, v33, 0xc0c0004
	v_perm_b32 v29, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v32, 16, v31
	v_lshl_or_b32 v59, v29, 16, v9
	ds_load_u8 v9, v30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v41, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v30, v43, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v30, 16, v29
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	ds_load_u8 v37, v8 offset:464
	ds_load_u8 v38, v8 offset:480
	ds_load_u8 v39, v8 offset:448
	ds_load_u8 v40, v8 offset:496
	ds_load_u8 v41, v8 offset:400
	ds_load_u8 v42, v8 offset:432
	ds_load_u8 v43, v8 offset:416
	ds_load_u8 v44, v8 offset:384
	ds_load_u8 v65, v8 offset:336
	ds_load_u8 v66, v8 offset:352
	ds_load_u8 v67, v8 offset:320
	ds_load_u8 v68, v8 offset:272
	ds_load_u8 v69, v8 offset:304
	ds_load_u8 v70, v8 offset:288
	ds_load_u8 v71, v8 offset:256
	ds_load_u8 v75, v8 offset:368
	ds_load_u8 v76, v8 offset:720
	ds_load_u8 v78, v8 offset:736
	ds_load_u8 v79, v8 offset:704
	ds_load_u8 v80, v8 offset:592
	ds_load_u8 v81, v8 offset:608
	ds_load_u8 v82, v8 offset:576
	ds_load_u8 v83, v8 offset:528
	ds_load_u8 v84, v8 offset:560
	ds_load_u8 v85, v8 offset:544
	ds_load_u8 v86, v8 offset:512
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v33, s12
	v_dual_mov_b32 v32, s11 :: v_dual_mov_b32 v31, s10
	v_dual_mov_b32 v30, s9 :: v_dual_mov_b32 v29, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[61:64], v72
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v94, v8 offset:976
	ds_load_u8 v95, v8 offset:992
	ds_load_u8 v96, v8 offset:960
	ds_load_u8 v97, v8 offset:912
	ds_load_u8 v98, v8 offset:944
	ds_load_u8 v99, v8 offset:928
	ds_load_u8 v100, v8 offset:896
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v87, v38, v40, 0xc0c0004
	v_perm_b32 v74, v39, v37, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v88, v44, v41, 0xc0c0004
	v_perm_b32 v89, v43, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[57:60], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v56, v87, 16, v74
	ds_load_u8 v74, v8 offset:752
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v53, v67, v65, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v54, v66, v75, 0xc0c0004
	v_perm_b32 v65, v71, v68, 0xc0c0004
	v_perm_b32 v66, v70, v69, 0xc0c0004
	ds_load_u8 v67, v8 offset:656
	ds_load_u8 v68, v8 offset:688
	ds_load_u8 v69, v8 offset:672
	ds_load_u8 v70, v8 offset:640
	v_lshl_or_b32 v55, v89, 16, v88
	v_lshl_or_b32 v54, v54, 16, v53
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v95, v9, 0xc0c0004
	v_lshl_or_b32 v53, v66, 16, v65
	ds_load_u8 v66, v8 offset:624
	ds_load_u8 v87, v8 offset:848
	ds_load_u8 v88, v8 offset:864
	ds_load_u8 v89, v8 offset:832
	ds_load_u8 v90, v8 offset:784
	ds_load_u8 v91, v8 offset:816
	ds_load_u8 v92, v8 offset:800
	ds_load_u8 v93, v8 offset:768
	ds_load_u8 v8, v8 offset:880
	v_perm_b32 v65, v79, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[49:52], v[57:60], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[61:64], v[53:56], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v71, v78, v74, 0xc0c0004
	v_perm_b32 v74, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v81, v66, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v67, v70, v67, 0xc0c0004
	v_perm_b32 v69, v82, v80, 0xc0c0004
	v_perm_b32 v70, v86, v83, 0xc0c0004
	v_lshl_or_b32 v64, v71, 16, v65
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v81, v89, v87, 0xc0c0004
	v_lshl_or_b32 v63, v68, 16, v67
	v_lshl_or_b32 v62, v66, 16, v69
	v_lshl_or_b32 v61, v74, 16, v70
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v72 offset:8192
	ds_load_b128 v[69:72], v73 offset:8192
	ds_load_b128 v[73:76], v73
	ds_load_b128 v[77:80], v77 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v88, v8, 0xc0c0004
	v_perm_b32 v82, v93, v90, 0xc0c0004
	v_perm_b32 v83, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[37:44], v[45:48], v[61:64], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v45, v96, v94, 0xc0c0004
	v_perm_b32 v46, v100, v97, 0xc0c0004
	v_perm_b32 v47, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v48, v9, 16, v45
	v_lshl_or_b32 v45, v83, 16, v82
	v_lshl_or_b32 v47, v47, 16, v46
	v_lshl_or_b32 v46, v8, 16, v81
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[65:68], v[53:56], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[73:76], v[45:48], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[77:80], v[61:64], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v8, v38
	v_cvt_f32_i32_e32 v9, v40
	v_cvt_f32_i32_e32 v38, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[69:72], v[45:48], v[29:36] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v39, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v21, v21, v9
	v_dual_add_f32 v20, v20, v29 :: v_dual_add_f32 v19, v19, v30
	v_add_f32_e32 v22, v22, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v18, v18, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v34
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v31, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v38 :: v_dual_add_f32 v24, v24, v39
	v_add_f32_e32 v23, v23, v40
	v_dual_add_f32 v17, v17, v8 :: v_dual_add_f32 v16, v16, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v13, v13, v31
	v_dual_add_f32 v15, v15, v29 :: v_dual_add_f32 v14, v14, v30
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v8, s1, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v8 offset:208
	ds_load_u8 v29, v8 offset:224
	ds_load_u8 v30, v8 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v33, s33, v6
	v_add_nc_u32_e32 v34, s33, v7
	v_add_nc_u32_e32 v43, s33, v5
	v_add_nc_u32_e32 v35, s33, v4
	ds_load_b128 v[4:7], v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v31, v8 offset:240
	ds_load_u8 v36, v8 offset:144
	ds_load_u8 v37, v8 offset:176
	ds_load_u8 v38, v8 offset:160
	ds_load_u8 v39, v8 offset:128
	ds_load_u8 v40, v8 offset:112
	ds_load_u8 v41, v8 offset:80
	ds_load_u8 v42, v8 offset:96
	ds_load_u8 v44, v8 offset:64
	ds_load_u8 v45, v8
	ds_load_u8 v46, v8 offset:16
	ds_load_u8 v47, v8 offset:32
	ds_load_u8 v48, v8 offset:48
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v49, v29, v31, 0xc0c0004
	v_perm_b32 v9, v30, v9, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[29:32], v35 offset:8192
	ds_load_b128 v[51:54], v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v35, v39, v36, 0xc0c0004
	v_perm_b32 v36, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v42, v40, 0xc0c0004
	v_lshl_or_b32 v58, v49, 16, v9
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v44, v41, 0xc0c0004
	v_lshl_or_b32 v57, v36, 16, v35
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v47, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v37, 16, v9
	v_perm_b32 v9, v45, v46, 0xc0c0004
	v_lshl_or_b32 v55, v35, 16, v9
	v_dual_mov_b32 v42, s11 :: v_dual_mov_b32 v41, s10
	ds_load_u8 v44, v8 offset:464
	ds_load_u8 v49, v8 offset:480
	ds_load_u8 v50, v8 offset:448
	ds_load_u8 v45, v8 offset:496
	ds_load_u8 v46, v8 offset:400
	ds_load_u8 v47, v8 offset:432
	ds_load_u8 v48, v8 offset:416
	ds_load_u8 v59, v8 offset:384
	ds_load_u8 v67, v8 offset:336
	ds_load_u8 v68, v8 offset:352
	ds_load_u8 v69, v8 offset:320
	ds_load_u8 v70, v8 offset:272
	ds_load_u8 v71, v8 offset:304
	ds_load_u8 v72, v8 offset:288
	ds_load_u8 v73, v8 offset:256
	ds_load_u8 v74, v8 offset:368
	ds_load_u8 v75, v8 offset:592
	ds_load_u8 v76, v8 offset:608
	ds_load_u8 v77, v8 offset:576
	ds_load_u8 v78, v8 offset:528
	ds_load_u8 v79, v8 offset:560
	ds_load_u8 v80, v8 offset:544
	ds_load_u8 v81, v8 offset:512
	ds_load_u8 v83, v8 offset:720
	ds_load_u8 v84, v8 offset:736
	ds_load_u8 v85, v8 offset:704
	v_dual_mov_b32 v40, s9 :: v_dual_mov_b32 v39, s8
	v_dual_mov_b32 v38, s7 :: v_dual_mov_b32 v37, s6
	v_dual_mov_b32 v36, s5 :: v_dual_mov_b32 v35, s4
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v82, v49, v45, 0xc0c0004
	v_perm_b32 v9, v50, v44, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v86, v59, v46, 0xc0c0004
	v_perm_b32 v87, v48, v47, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[59:62], v43 offset:8192
	ds_load_b128 v[63:66], v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[55:58], v[35:42] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v82, 16, v9
	ds_load_u8 v9, v8 offset:752
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v51, v69, v67, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v52, v68, v74, 0xc0c0004
	v_perm_b32 v67, v73, v70, 0xc0c0004
	v_perm_b32 v68, v72, v71, 0xc0c0004
	ds_load_u8 v69, v8 offset:656
	ds_load_u8 v70, v8 offset:688
	ds_load_u8 v71, v8 offset:672
	ds_load_u8 v72, v8 offset:640
	v_lshl_or_b32 v53, v87, 16, v86
	v_lshl_or_b32 v52, v52, 16, v51
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v73, v80, v79, 0xc0c0004
	v_lshl_or_b32 v51, v68, 16, v67
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v85, v83, 0xc0c0004
	ds_load_u8 v68, v8 offset:624
	ds_load_u8 v82, v8 offset:848
	ds_load_u8 v83, v8 offset:864
	ds_load_u8 v85, v8 offset:832
	ds_load_u8 v86, v8 offset:784
	ds_load_u8 v87, v8 offset:816
	ds_load_u8 v88, v8 offset:800
	ds_load_u8 v89, v8 offset:768
	v_wmma_i32_16x16x16_iu8 v[35:42], v[29:32], v[55:58], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[51:54], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[59:62], v[51:54], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v84, v9, 0xc0c0004
	ds_load_u8 v84, v8 offset:976
	ds_load_u8 v90, v8 offset:992
	ds_load_u8 v91, v8 offset:960
	ds_load_u8 v92, v8 offset:912
	ds_load_u8 v93, v8 offset:944
	ds_load_u8 v94, v8 offset:928
	ds_load_u8 v95, v8 offset:896
	ds_load_u8 v8, v8 offset:880
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	v_perm_b32 v71, v77, v75, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v68, v76, v68, 0xc0c0004
	v_perm_b32 v72, v81, v78, 0xc0c0004
	v_lshl_or_b32 v66, v9, 16, v67
	v_lshl_or_b32 v65, v70, 16, v69
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v85, v82, 0xc0c0004
	v_lshl_or_b32 v64, v68, 16, v71
	v_lshl_or_b32 v63, v73, 16, v72
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[67:70], v33 offset:8192
	ds_load_b128 v[71:74], v34 offset:8192
	ds_load_b128 v[75:78], v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v33, v89, v86, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v3, v90, v3, 0xc0c0004
	v_perm_b32 v29, v88, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[4:7], v[63:66], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v91, v84, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v7, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v95, v92, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v8, v83, v8, 0xc0c0004
	v_lshl_or_b32 v6, v3, 16, v4
	v_lshl_or_b32 v3, v29, 16, v33
	v_lshl_or_b32 v5, v7, 16, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v4, v8, 16, v9
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[67:70], v[63:66], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[75:78], v[3:6], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[71:74], v[3:6], v[35:42] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v44
	v_cvt_f32_i32_e32 v29, v45
	v_cvt_f32_i32_e32 v30, v46
	v_cvt_f32_i32_e32 v31, v47
	v_cvt_f32_i32_e32 v32, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v34, v50
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v3, s31, v11
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s20
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	v_or_b32_e32 v0, s18, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v5, v28, v9
	v_dual_add_f32 v6, v27, v29 :: v_dual_add_f32 v7, v26, v30
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v43, v3, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v4, 1, v0
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v9, v24, v32
	v_dual_add_f32 v11, v23, v33 :: v_dual_add_f32 v30, v21, v35
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v3, v4, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v4, v13, v8
	v_dual_add_f32 v8, v25, v31 :: v_dual_add_f32 v29, v22, v34
	v_dual_add_f32 v32, v19, v37 :: v_dual_add_f32 v33, v18, v38
	v_dual_add_f32 v35, v16, v40 :: v_dual_lshlrev_b32 v38, 2, v10
	v_dual_add_f32 v37, v14, v42 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v13, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v20, v36 :: v_dual_add_f32 v34, v17, v39
	v_add_f32_e32 v36, v15, v41
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v39, 0x2040, 0, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v29, s2
	v_cndmask_b32_e64 v21, v21, v30, s2
	v_cndmask_b32_e64 v29, v19, v32, s2
	v_cndmask_b32_e64 v30, v18, v33, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[18:19], null, s31, s29, v[0:1]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v6, s2
	v_cndmask_b32_e64 v26, v26, v7, s2
	v_cndmask_b32_e64 v20, v20, v31, s2
	v_cndmask_b32_e64 v31, v17, v34, s2
	v_cndmask_b32_e64 v32, v16, v35, s2
	v_cndmask_b32_e64 v33, v15, v36, s2
	v_cndmask_b32_e64 v34, v14, v37, s2
	v_cndmask_b32_e64 v28, v28, v5, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v8, s2
	v_cndmask_b32_e64 v24, v24, v9, s2
	v_cndmask_b32_e64 v23, v23, v11, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v52, v18, s29, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s29, 5
	s_mul_i32 s4, s29, 6
	s_mul_i32 s5, s29, 7
	s_mul_i32 s8, s29, 9
	s_mul_i32 s9, s29, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	v_add_lshl_u32 v53, v18, s30, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s29, 11
	s_mul_i32 s11, s29, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v54, v18, s3, 2
	v_add_lshl_u32 v55, v18, s4, 2
	v_add_lshl_u32 v56, v18, s5, 2
	v_add_lshl_u32 v57, v18, s8, 2
	v_add_lshl_u32 v58, v18, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s12, s29, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v59, v18, s10, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s13, s29, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v60, v18, s11, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s29, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v61, v18, s12, 2
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v2, 5, v2
	v_lshlrev_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or3_b32 v2, v38, v2, v12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v4, v1, 2, v10
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add_nc_u32_e32 v14, 0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v6, v4, v39
	v_xad_u32 v19, 0x404, v2, 0
	v_xad_u32 v35, 0x808, v2, 0
	v_xad_u32 v36, 0xc0c, v2, 0
	v_xad_u32 v37, 0x1010, v2, 0
	v_xad_u32 v38, 0x1414, v2, 0
	v_xad_u32 v39, 0x1818, v2, 0
	v_xad_u32 v41, 0x1c1c, v2, 0
	v_xad_u32 v42, 0x2040, v2, 0
	v_xad_u32 v44, 0x2444, v2, 0
	v_xad_u32 v45, 0x2848, v2, 0
	v_xad_u32 v46, 0x2c4c, v2, 0
	v_xad_u32 v47, 0x3050, v2, 0
	v_xad_u32 v48, 0x3454, v2, 0
	v_xad_u32 v49, 0x3858, v2, 0
	v_xad_u32 v50, 0x3c5c, v2, 0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v1, v1, 10, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v14
	ds_load_b128 v[6:9], v14 offset:16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v51, 2, v18
	v_xad_u32 v63, v1, 4, 0
	v_xad_u32 v64, v1, 8, 0
	v_xad_u32 v65, v1, 12, 0
	v_xad_u32 v66, v1, 16, 0
	v_xad_u32 v67, v1, 20, 0
	v_xad_u32 v68, v1, 24, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v2, v2, v43
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v2, v40, v2 :: v_dual_mul_f32 v7, v7, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[10:13], v14 offset:512
	ds_load_b128 v[14:17], v14 offset:528
	v_mul_f32_e32 v9, v9, v43
	v_mul_f32_e32 v4, v4, v43
	v_dual_mul_f32 v3, v3, v43 :: v_dual_add_nc_u32 v62, 0, v1
	v_mul_f32_e32 v5, v5, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v9, v22, v9 :: v_dual_mul_f32 v4, v27, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v6, v6, v43
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xad_u32 v1, v1, 28, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v26, v5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v25, v6
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v13, v13, v43
	v_mul_f32_e32 v8, v8, v43
	v_mul_f32_e32 v10, v10, v43
	v_mul_f32_e32 v11, v11, v43
	v_mul_f32_e32 v14, v14, v43
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v13, v30, v13
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v17, v17, v43 :: v_dual_mul_f32 v8, v23, v8
	v_mul_f32_e32 v12, v12, v43
	v_mul_f32_e32 v15, v15, v43
	v_mul_f32_e32 v16, v16, v43
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v28, v3 :: v_dual_mul_f32 v10, v21, v10
	v_dual_mul_f32 v11, v20, v11 :: v_dual_mul_f32 v14, v31, v14
	v_mul_f32_e32 v17, v34, v17
	v_dual_mul_f32 v7, v24, v7 :: v_dual_mul_f32 v12, v29, v12
	v_dual_mul_f32 v15, v32, v15 :: v_dual_mul_f32 v16, v33, v16
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v62, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v63, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v64, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v65, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v66, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v67, v7, v15 offset1:2
	ds_store_2addr_stride64_b32 v68, v8, v16 offset1:2
	ds_store_2addr_stride64_b32 v1, v9, v17 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	ds_load_b32 v1, v19
	ds_load_b32 v2, v35
	ds_load_b32 v3, v36
	ds_load_b32 v4, v37
	ds_load_b32 v5, v38
	ds_load_b32 v6, v39
	ds_load_b32 v7, v41
	ds_load_b32 v8, v42
	ds_load_b32 v9, v44
	ds_load_b32 v10, v45
	ds_load_b32 v12, v46
	ds_load_b32 v13, v47
	ds_load_b32 v14, v48
	ds_load_b32 v15, v49
	ds_load_b32 v16, v50
	v_lshl_add_u32 v17, s29, 3, v51
	v_lshl_add_u32 v19, s29, 4, v51
	v_lshl_add_u32 v20, s29, 5, v51
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v51, s[16:19], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v52, s[16:19], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v17, s[16:19], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v53, s[16:19], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v19, s[16:19], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v54, s[16:19], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v55, s[16:19], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v56, s[16:19], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v20, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v57, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v58, s[16:19], 0 offen
	v_add_lshl_u32 v11, v18, s13, 2
	v_add_lshl_u32 v0, v18, s1, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v59, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v13, v60, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v14, v61, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v15, v11, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v16, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 171
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8916
; TotalNumSgprs: 38
; NumVgprs: 171
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     171
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
