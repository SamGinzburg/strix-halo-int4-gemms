	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v21, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v23, 1, v0
	v_and_b32_e32 v57, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 48, v21
	v_and_b32_e32 v5, 62, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v44, 0, v21
	v_and_b32_e32 v58, 32, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v8, s28, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
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
	v_lshlrev_b32_e32 v1, 4, v4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[6:7], null, s29, v5, v[1:2]
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
	s_sub_i32 s16, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s16, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s4, s11, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s10, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s6, s5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 6
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s29, s7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v6, s18, s3, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0x7f
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v7, v8, v2, s19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s29, v6
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0xff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v6, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v9, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s30, s29, 7
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s28, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s30, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s31, s28, 7
	v_add_nc_u32_e32 v8, s4, v7
	v_add3_u32 v7, s4, s31, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s29, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v22, 0x80000000, v17, s2
	s_clause 0x1
	buffer_load_b128 v[17:20], v6, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v22, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b128 v[28:31], v8, s[12:15], 0 offen
	buffer_load_b128 v[32:35], v7, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	v_and_b32_e32 v7, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v22, 0x80, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0x17f
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v6
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 3, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v6, v6, v5
	v_lshl_or_b32 v59, v7, 10, v6
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshlrev_b32_e32 v7, 3, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v60, 0x90, v59
	v_xor_b32_e32 v61, 0x120, v59
	v_xor_b32_e32 v62, 0x1b0, v59
	v_xor_b32_e32 v63, 0x210, v59
	v_xor_b32_e32 v64, 0x330, v59
	v_xor_b32_e32 v65, 0x3a0, v59
	v_add_nc_u32_e32 v45, 0, v59
	v_add_nc_u32_e32 v46, 0, v60
	v_add_nc_u32_e32 v47, 0, v61
	v_add_nc_u32_e32 v48, 0, v62
	v_add_nc_u32_e32 v49, 0, v63
	v_add_nc_u32_e32 v50, 0, v64
	v_add_nc_u32_e32 v51, 0, v65
	s_waitcnt vmcnt(4)
	v_perm_b32 v36, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v37, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v38, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v39, v16, v12, 0x5010400
	v_perm_b32 v40, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v41, 8, v36
	v_lshrrev_b32_e32 v42, 24, v36
	v_lshrrev_b32_e32 v52, 24, v13
	v_lshrrev_b32_e32 v43, 8, v13
	v_lshrrev_b32_e32 v53, 8, v37
	v_lshrrev_b32_e32 v54, 24, v37
	v_lshrrev_b32_e32 v55, 8, v14
	v_lshrrev_b32_e32 v56, 24, v14
	v_lshrrev_b32_e32 v66, 8, v38
	v_lshrrev_b32_e32 v67, 24, v38
	v_lshrrev_b32_e32 v68, 8, v15
	v_lshrrev_b32_e32 v69, 24, v15
	v_lshrrev_b32_e32 v70, 8, v39
	v_lshrrev_b32_e32 v71, 24, v39
	v_lshrrev_b32_e32 v72, 8, v40
	v_lshrrev_b32_e32 v73, 24, v40
	v_and_b16 v9.l, 0xff, v36.l
	v_and_b16 v9.h, 0xff, v36.h
	v_and_b16 v11.h, 0xff, v37.h
	v_lshlrev_b16 v36.l, 8, v41.l
	v_lshlrev_b16 v36.h, 8, v42.l
	v_lshlrev_b16 v37.h, 8, v52.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v52, v24, v17, 0x5010400
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.l, 0xff, v37.l
	v_lshlrev_b16 v37.l, 8, v43.l
	v_and_b16 v13.l, 0xff, v38.l
	v_and_b16 v13.h, 0xff, v38.h
	v_lshlrev_b16 v38.l, 8, v53.l
	v_lshlrev_b16 v38.h, 8, v54.l
	v_perm_b32 v24, v24, v17, 0x7030602
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v39.l
	v_and_b16 v15.h, 0xff, v39.h
	v_lshlrev_b16 v39.l, 8, v55.l
	v_lshlrev_b16 v39.h, 8, v56.l
	v_and_b16 v16.l, 0xff, v40.l
	v_and_b16 v16.h, 0xff, v40.h
	v_lshlrev_b16 v40.l, 8, v66.l
	v_lshlrev_b16 v40.h, 8, v67.l
	v_lshlrev_b16 v41.l, 8, v68.l
	v_lshlrev_b16 v41.h, 8, v69.l
	v_lshlrev_b16 v42.l, 8, v70.l
	v_lshlrev_b16 v42.h, 8, v71.l
	v_lshlrev_b16 v43.l, 8, v72.l
	v_lshlrev_b16 v43.h, 8, v73.l
	v_perm_b32 v53, v25, v18, 0x5010400
	v_perm_b32 v25, v25, v18, 0x7030602
	v_perm_b32 v54, v26, v19, 0x5010400
	v_perm_b32 v26, v26, v19, 0x7030602
	v_perm_b32 v55, v27, v20, 0x5010400
	v_perm_b32 v56, v27, v20, 0x7030602
	v_or_b16 v9.l, v9.l, v36.l
	v_or_b16 v9.h, v9.h, v36.h
	v_lshrrev_b32_e32 v36, 8, v52
	v_or_b16 v10.l, v10.l, v37.l
	v_or_b16 v10.h, v10.h, v37.h
	v_lshrrev_b32_e32 v37, 24, v52
	v_or_b16 v11.l, v11.l, v38.l
	v_or_b16 v11.h, v11.h, v38.h
	v_lshrrev_b32_e32 v38, 8, v24
	v_or_b16 v12.l, v12.l, v39.l
	v_or_b16 v12.h, v12.h, v39.h
	v_lshrrev_b32_e32 v39, 24, v24
	v_or_b16 v13.l, v13.l, v40.l
	v_or_b16 v13.h, v13.h, v40.h
	v_or_b16 v14.l, v14.l, v41.l
	v_or_b16 v14.h, v14.h, v41.h
	v_or_b16 v15.l, v15.l, v42.l
	v_or_b16 v15.h, v15.h, v42.h
	v_or_b16 v16.l, v16.l, v43.l
	v_or_b16 v16.h, v16.h, v43.h
	v_and_b16 v17.l, 0xff, v52.l
	v_and_b16 v17.h, 0xff, v52.h
	v_and_b16 v18.l, 0xff, v24.l
	v_and_b16 v18.h, 0xff, v24.h
	v_and_b16 v19.l, 0xff, v53.l
	v_lshrrev_b32_e32 v40, 8, v53
	v_lshrrev_b32_e32 v41, 24, v53
	v_and_b16 v19.h, 0xff, v53.h
	v_and_b16 v20.l, 0xff, v25.l
	v_lshrrev_b32_e32 v42, 8, v25
	v_lshrrev_b32_e32 v43, 24, v25
	v_and_b16 v20.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v54.l
	v_lshrrev_b32_e32 v52, 8, v54
	v_lshrrev_b32_e32 v53, 24, v54
	v_and_b16 v24.h, 0xff, v54.h
	v_and_b16 v25.l, 0xff, v26.l
	v_lshrrev_b32_e32 v54, 8, v26
	v_lshrrev_b32_e32 v66, 24, v26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v55.l
	v_lshrrev_b32_e32 v67, 8, v55
	v_lshrrev_b32_e32 v68, 24, v55
	v_and_b16 v26.h, 0xff, v55.h
	v_lshrrev_b32_e32 v55, 8, v56
	v_lshrrev_b32_e32 v69, 24, v56
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[28:31] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v45, v9
	ds_store_b16_d16_hi v45, v9 offset:64
	ds_store_b16 v46, v10
	ds_store_b16_d16_hi v46, v10 offset:64
	ds_store_b16 v47, v11
	ds_store_b16_d16_hi v47, v11 offset:64
	ds_store_b16 v48, v12
	ds_store_b16_d16_hi v48, v12 offset:64
	ds_store_b16 v49, v13
	ds_store_b16_d16_hi v49, v13 offset:64
	ds_store_b16 v45, v14 offset:640
	ds_store_b16_d16_hi v45, v14 offset:704
	ds_store_b16 v50, v15
	ds_store_b16_d16_hi v50, v15 offset:64
	ds_store_b16 v51, v16
	ds_store_b16_d16_hi v51, v16 offset:64
	v_lshlrev_b16 v9.l, 8, v36.l
	v_lshlrev_b16 v9.h, 8, v37.l
	v_lshlrev_b16 v10.l, 8, v38.l
	v_lshlrev_b16 v10.h, 8, v39.l
	v_and_b16 v27.l, 0xff, v56.l
	v_and_b16 v27.h, 0xff, v56.h
	v_lshlrev_b16 v11.l, 8, v40.l
	v_lshlrev_b16 v11.h, 8, v41.l
	v_lshlrev_b16 v12.l, 8, v42.l
	v_lshlrev_b16 v12.h, 8, v43.l
	v_lshlrev_b16 v13.l, 8, v52.l
	v_lshlrev_b16 v13.h, 8, v53.l
	v_lshlrev_b16 v14.l, 8, v54.l
	v_lshlrev_b16 v14.h, 8, v66.l
	v_lshlrev_b16 v15.l, 8, v67.l
	v_lshlrev_b16 v15.h, 8, v68.l
	v_lshlrev_b16 v16.l, 8, v55.l
	v_lshlrev_b16 v16.h, 8, v69.l
	v_or_b16 v9.l, v17.l, v9.l
	v_or_b16 v9.h, v17.h, v9.h
	v_or_b16 v10.l, v18.l, v10.l
	v_or_b16 v10.h, v18.h, v10.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v11.l, v19.l, v11.l
	v_or_b16 v11.h, v19.h, v11.h
	v_or_b16 v12.l, v20.l, v12.l
	v_or_b16 v12.h, v20.h, v12.h
	v_or_b16 v13.l, v24.l, v13.l
	v_or_b16 v13.h, v24.h, v13.h
	v_or_b16 v14.l, v25.l, v14.l
	v_or_b16 v14.h, v25.h, v14.h
	v_or_b16 v15.l, v26.l, v15.l
	v_or_b16 v15.h, v26.h, v15.h
	v_or_b16 v16.l, v27.l, v16.l
	v_or_b16 v16.h, v27.h, v16.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[32:35] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v45, v9 offset:8192
	ds_store_b16_d16_hi v45, v9 offset:8256
	ds_store_b16 v46, v10 offset:8192
	ds_store_b16_d16_hi v46, v10 offset:8256
	ds_store_b16 v47, v11 offset:8192
	ds_store_b16_d16_hi v47, v11 offset:8256
	ds_store_b16 v48, v12 offset:8192
	ds_store_b16_d16_hi v48, v12 offset:8256
	ds_store_b16 v49, v13 offset:8192
	ds_store_b16_d16_hi v49, v13 offset:8256
	ds_store_b16 v45, v14 offset:8832
	ds_store_b16_d16_hi v45, v14 offset:8896
	ds_store_b16 v50, v15 offset:8192
	ds_store_b16_d16_hi v50, v15 offset:8256
	ds_store_b16 v51, v16 offset:8192
	ds_store_b16_d16_hi v51, v16 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v9, 8, v0
	v_and_b32_e32 v10, 32, v0
	v_and_b32_e32 v66, 0x800, v6
	v_lshl_or_b32 v67, v4, 6, v7
	s_mov_b32 s9, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
.LBB0_3:                                ; %Flow43
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v23
	v_and_or_b32 v56, v0, 15, v8
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v5, s7, v5
	v_bfe_i32 v8, v0, 5, 1
	v_bfe_i32 v9, v0, 3, 1
	v_lshl_or_b32 v67, v4, 6, v7
	v_add3_u32 v3, s7, v3, 0x100
	v_add_nc_u32_e32 v10, 0x101, v5
	v_add_nc_u32_e32 v5, 0x100, v5
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v8, 0x420, v8
	s_lshl_b32 s4, s6, 7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v7, s29, v10
	v_mul_lo_u32 v5, s29, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v4, 0x210, v9, v8
	v_and_b32_e32 v66, 0x800, v6
	v_mul_lo_u32 v3, s28, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s8, 7
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_xor_b32_e32 v4, v4, v67
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v6, v7, s4, v1
	v_add3_u32 v1, v5, s4, v1
	s_lshl_b32 s4, s5, 7
	v_add3_u32 v74, v3, s19, v2
	v_or_b32_e32 v68, v4, v66
	v_subrev_nc_u32_e32 v69, s4, v6
	v_subrev_nc_u32_e32 v70, s4, v1
	s_mov_b32 s4, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v71, 16, v68
	v_xor_b32_e32 v72, 32, v68
	v_xor_b32_e32 v73, 48, v68
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v46, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v24, 0
	s_add_i32 s34, s1, -2
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s28, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[17:20], v74, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v70, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v69, s[24:27], 0 offen
	s_mov_b32 s6, s4
	s_mov_b32 s7, s33
	v_add_nc_u32_e32 v76, s6, v68
	v_add_nc_u32_e32 v77, s6, v71
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v75, s7, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s6, v72
	v_add_nc_u32_e32 v79, s6, v73
	ds_load_b128 v[99:102], v76
	ds_load_b128 v[107:110], v76 offset:4096
	ds_load_b128 v[111:114], v77
	ds_load_b128 v[115:118], v77 offset:4096
	ds_load_b128 v[119:122], v78
	ds_load_b128 v[123:126], v78 offset:4096
	ds_load_b128 v[127:130], v79
	ds_load_b128 v[131:134], v79 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v76, v75 offset:64
	ds_load_u8 v77, v75
	ds_load_u8 v78, v75 offset:192
	ds_load_u8 v79, v75 offset:128
	ds_load_u8 v80, v75 offset:224
	ds_load_u8 v81, v75 offset:160
	ds_load_u8 v82, v75 offset:96
	ds_load_u8 v83, v75 offset:32
	ds_load_u8 v84, v75 offset:832
	ds_load_u8 v85, v75 offset:768
	ds_load_u8 v86, v75 offset:960
	ds_load_u8 v87, v75 offset:896
	ds_load_u8 v88, v75 offset:992
	ds_load_u8 v89, v75 offset:928
	ds_load_u8 v90, v75 offset:864
	ds_load_u8 v91, v75 offset:800
	ds_load_u8 v92, v75 offset:576
	ds_load_u8 v93, v75 offset:512
	ds_load_u8 v94, v75 offset:704
	ds_load_u8 v95, v75 offset:640
	ds_load_u8 v96, v75 offset:736
	ds_load_u8 v97, v75 offset:672
	ds_load_u8 v98, v75 offset:608
	ds_load_u8 v103, v75 offset:544
	ds_load_u8 v104, v75 offset:320
	ds_load_u8 v105, v75 offset:256
	ds_load_u8 v106, v75 offset:448
	ds_load_u8 v135, v75 offset:384
	ds_load_u8 v136, v75 offset:480
	ds_load_u8 v137, v75 offset:416
	ds_load_u8 v138, v75 offset:352
	ds_load_u8 v139, v75 offset:288
	ds_load_u8 v140, v75 offset:1856
	ds_load_u8 v141, v75 offset:1792
	ds_load_u8 v142, v75 offset:1984
	ds_load_u8 v143, v75 offset:1920
	ds_load_u8 v144, v75 offset:2016
	ds_load_u8 v145, v75 offset:1952
	ds_load_u8 v146, v75 offset:1888
	ds_load_u8 v147, v75 offset:1824
	ds_load_u8 v148, v75 offset:1600
	ds_load_u8 v149, v75 offset:1536
	ds_load_u8 v150, v75 offset:1728
	ds_load_u8 v151, v75 offset:1664
	ds_load_u8 v152, v75 offset:1760
	ds_load_u8 v153, v75 offset:1696
	ds_load_u8 v154, v75 offset:1632
	ds_load_u8 v155, v75 offset:1568
	ds_load_u8 v156, v75 offset:1344
	ds_load_u8 v157, v75 offset:1280
	ds_load_u8 v158, v75 offset:1472
	ds_load_u8 v159, v75 offset:1408
	ds_load_u8 v160, v75 offset:1504
	ds_load_u8 v161, v75 offset:1440
	ds_load_u8 v162, v75 offset:1376
	ds_load_u8 v163, v75 offset:1312
	ds_load_u8 v164, v75 offset:1088
	ds_load_u8 v165, v75 offset:1024
	ds_load_u8 v166, v75 offset:1216
	ds_load_u8 v167, v75 offset:1152
	ds_load_u8 v168, v75 offset:1248
	ds_load_u8 v169, v75 offset:1184
	ds_load_u8 v170, v75 offset:1120
	ds_load_u8 v171, v75 offset:1056
	ds_load_u8 v172, v75 offset:2880
	ds_load_u8 v173, v75 offset:2816
	ds_load_u8 v174, v75 offset:3008
	ds_load_u8 v175, v75 offset:2944
	ds_load_u8 v176, v75 offset:3040
	ds_load_u8 v177, v75 offset:2976
	ds_load_u8 v178, v75 offset:2912
	ds_load_u8 v179, v75 offset:2848
	ds_load_u8 v180, v75 offset:2624
	ds_load_u8 v181, v75 offset:2560
	ds_load_u8 v182, v75 offset:2752
	ds_load_u8 v183, v75 offset:2688
	ds_load_u8 v184, v75 offset:2784
	ds_load_u8 v185, v75 offset:2720
	ds_load_u8 v186, v75 offset:2656
	ds_load_u8 v187, v75 offset:2592
	ds_load_u8 v188, v75 offset:2368
	ds_load_u8 v189, v75 offset:2304
	ds_load_u8 v190, v75 offset:2496
	ds_load_u8 v191, v75 offset:2432
	ds_load_u8 v192, v75 offset:2528
	ds_load_u8 v193, v75 offset:2464
	ds_load_u8 v194, v75 offset:2400
	ds_load_u8 v195, v75 offset:2336
	ds_load_u8 v196, v75 offset:2112
	ds_load_u8 v197, v75 offset:2048
	ds_load_u8 v198, v75 offset:2240
	ds_load_u8 v199, v75 offset:2176
	ds_load_u8 v200, v75 offset:2272
	ds_load_u8 v201, v75 offset:2208
	ds_load_u8 v202, v75 offset:2144
	ds_load_u8 v203, v75 offset:2080
	ds_load_u8 v204, v75 offset:3904
	ds_load_u8 v205, v75 offset:3840
	ds_load_u8 v206, v75 offset:4032
	ds_load_u8 v207, v75 offset:3968
	ds_load_u8 v208, v75 offset:4064
	ds_load_u8 v209, v75 offset:4000
	ds_load_u8 v210, v75 offset:3936
	ds_load_u8 v211, v75 offset:3872
	ds_load_u8 v212, v75 offset:3648
	ds_load_u8 v213, v75 offset:3584
	ds_load_u8 v214, v75 offset:3776
	ds_load_u8 v215, v75 offset:3712
	ds_load_u8 v216, v75 offset:3808
	ds_load_u8 v217, v75 offset:3744
	ds_load_u8 v218, v75 offset:3680
	ds_load_u8 v219, v75 offset:3616
	ds_load_u8 v220, v75 offset:3392
	ds_load_u8 v221, v75 offset:3328
	ds_load_u8 v222, v75 offset:3520
	ds_load_u8 v223, v75 offset:3456
	ds_load_u8 v224, v75 offset:3552
	ds_load_u8 v225, v75 offset:3488
	ds_load_u8 v226, v75 offset:3424
	ds_load_u8 v227, v75 offset:3360
	ds_load_u8 v228, v75 offset:3136
	ds_load_u8 v229, v75 offset:3072
	ds_load_u8 v230, v75 offset:3264
	ds_load_u8 v231, v75 offset:3200
	ds_load_u8 v232, v75 offset:3296
	ds_load_u8 v233, v75 offset:3232
	ds_load_u8 v234, v75 offset:3168
	ds_load_u8 v75, v75 offset:3104
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v85, v87, v86, 0xc0c0004
	v_perm_b32 v86, v93, v92, 0xc0c0004
	v_perm_b32 v87, v95, v94, 0xc0c0004
	v_perm_b32 v92, v105, v104, 0xc0c0004
	v_perm_b32 v95, v135, v106, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v77, v79, v78, 0xc0c0004
	v_perm_b32 v78, v141, v140, 0xc0c0004
	v_perm_b32 v79, v143, v142, 0xc0c0004
	v_perm_b32 v104, v149, v148, 0xc0c0004
	v_perm_b32 v105, v151, v150, 0xc0c0004
	v_perm_b32 v106, v157, v156, 0xc0c0004
	v_perm_b32 v135, v159, v158, 0xc0c0004
	v_perm_b32 v140, v165, v164, 0xc0c0004
	v_perm_b32 v141, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v148, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v149, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v150, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v151, v191, v190, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v103, v98, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v147, v146, 0xc0c0004
	v_perm_b32 v83, v145, v144, 0xc0c0004
	v_lshl_or_b32 v94, v85, 16, v84
	v_lshl_or_b32 v93, v87, 16, v86
	v_lshl_or_b32 v92, v95, 16, v92
	v_lshl_or_b32 v91, v77, 16, v76
	v_perm_b32 v142, v173, v172, 0xc0c0004
	v_perm_b32 v143, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v156, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v157, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v158, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v159, v207, v206, 0xc0c0004
	v_perm_b32 v97, v139, v138, 0xc0c0004
	v_perm_b32 v98, v137, v136, 0xc0c0004
	v_perm_b32 v103, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v234, 0xc0c0004
	v_perm_b32 v183, v233, v232, 0xc0c0004
	v_lshl_or_b32 v138, v79, 16, v78
	v_lshl_or_b32 v137, v105, 16, v104
	v_lshl_or_b32 v136, v135, 16, v106
	v_lshl_or_b32 v135, v141, 16, v140
	v_lshl_or_b32 v141, v149, 16, v148
	v_lshl_or_b32 v140, v151, 16, v150
	v_lshl_or_b32 v150, v88, 16, v90
	v_lshl_or_b32 v149, v96, 16, v89
	v_lshl_or_b32 v154, v83, 16, v81
	v_wmma_i32_16x16x16_iu8 v[83:90], v[107:110], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v164, v213, v212, 0xc0c0004
	v_perm_b32 v165, v215, v214, 0xc0c0004
	v_perm_b32 v166, v221, v220, 0xc0c0004
	v_perm_b32 v167, v223, v222, 0xc0c0004
	v_perm_b32 v172, v229, v228, 0xc0c0004
	v_perm_b32 v173, v231, v230, 0xc0c0004
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v155, v163, v162, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v171, v170, 0xc0c0004
	v_perm_b32 v162, v169, v168, 0xc0c0004
	v_lshl_or_b32 v142, v143, 16, v142
	v_lshl_or_b32 v139, v157, 16, v156
	v_lshl_or_b32 v146, v159, 16, v158
	v_lshl_or_b32 v148, v98, 16, v97
	v_lshl_or_b32 v147, v80, 16, v82
	v_lshl_or_b32 v159, v183, 16, v75
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[115:118], v[135:138], v[83:90] neg_lo:[1,1,0]
	s_mov_b32 s4, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v163, v179, v178, 0xc0c0004
	v_perm_b32 v168, v177, v176, 0xc0c0004
	v_perm_b32 v169, v187, v186, 0xc0c0004
	v_perm_b32 v170, v185, v184, 0xc0c0004
	v_perm_b32 v171, v195, v194, 0xc0c0004
	v_perm_b32 v174, v193, v192, 0xc0c0004
	v_perm_b32 v175, v203, v202, 0xc0c0004
	v_perm_b32 v176, v201, v200, 0xc0c0004
	v_lshl_or_b32 v145, v165, 16, v164
	v_lshl_or_b32 v144, v167, 16, v166
	v_lshl_or_b32 v143, v173, 16, v172
	v_lshl_or_b32 v153, v152, 16, v103
	v_lshl_or_b32 v152, v160, 16, v155
	v_lshl_or_b32 v151, v162, 16, v161
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[111:114], v[135:138], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[123:126], v[139:142], v[83:90] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s1, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v177, v211, v210, 0xc0c0004
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v178, v209, v208, 0xc0c0004
	v_perm_b32 v179, v219, v218, 0xc0c0004
	v_perm_b32 v180, v217, v216, 0xc0c0004
	v_perm_b32 v181, v227, v226, 0xc0c0004
	v_perm_b32 v182, v225, v224, 0xc0c0004
	v_lshl_or_b32 v158, v168, 16, v163
	v_lshl_or_b32 v157, v170, 16, v169
	v_lshl_or_b32 v156, v174, 16, v171
	v_lshl_or_b32 v155, v176, 16, v175
	v_wmma_i32_16x16x16_iu8 v[99:106], v[107:110], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[111:114], v[151:154], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[119:122], v[139:142], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[131:134], v[143:146], v[83:90] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s5, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v162, v178, 16, v177
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v161, v180, 16, v179
	v_lshl_or_b32 v160, v182, 16, v181
	v_wmma_i32_16x16x16_iu8 v[99:106], v[115:118], v[151:154], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[119:122], v[155:158], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[127:130], v[143:146], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v235, s6, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[123:126], v[155:158], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[127:130], v[159:162], v[91:98] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v45, v45, v75 :: v_dual_add_nc_u32 v70, s30, v70
	v_dual_add_f32 v55, v55, v76 :: v_dual_add_nc_u32 v74, s31, v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[131:134], v[159:162], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s6, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v78
	v_dual_add_f32 v52, v52, v79 :: v_dual_add_nc_u32 v69, s30, v69
	v_dual_add_f32 v51, v51, v80 :: v_dual_add_nc_u32 v236, s1, v59
	v_dual_add_f32 v46, v46, v85 :: v_dual_add_nc_u32 v237, s1, v60
	v_dual_add_f32 v47, v47, v84 :: v_dual_add_nc_u32 v238, s1, v61
	v_dual_add_f32 v42, v42, v88 :: v_dual_add_nc_u32 v239, s1, v62
	v_dual_add_f32 v41, v41, v89 :: v_dual_add_nc_u32 v240, s1, v63
	v_dual_add_f32 v40, v40, v90 :: v_dual_add_nc_u32 v241, s1, v64
	v_dual_add_f32 v43, v43, v87 :: v_dual_add_nc_u32 v242, s1, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v50, v50, v81 :: v_dual_add_f32 v49, v49, v82
	v_add_f32_e32 v48, v48, v83
	v_dual_add_f32 v39, v39, v91 :: v_dual_add_f32 v38, v38, v92
	v_dual_add_f32 v37, v37, v93 :: v_dual_add_f32 v36, v36, v94
	v_dual_add_f32 v35, v35, v95 :: v_dual_add_f32 v34, v34, v96
	v_dual_add_f32 v33, v33, v97 :: v_dual_add_f32 v32, v32, v98
	v_dual_add_f32 v31, v31, v99 :: v_dual_add_f32 v30, v30, v100
	v_dual_add_f32 v29, v29, v101 :: v_dual_add_f32 v28, v28, v102
	v_dual_add_f32 v27, v27, v103 :: v_dual_add_f32 v26, v26, v104
	v_dual_add_f32 v25, v25, v105 :: v_dual_add_f32 v24, v24, v106
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s34, s34, -1
	s_mov_b32 s33, s28
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s28, s6, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s34, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v235, v[17:20] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v19, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v20, v16, v12, 0x5010400
	v_perm_b32 v75, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v76, 8, v17
	v_lshrrev_b32_e32 v77, 24, v17
	v_lshrrev_b32_e32 v78, 8, v13
	v_lshrrev_b32_e32 v79, 24, v13
	v_lshrrev_b32_e32 v80, 8, v18
	v_and_b16 v9.l, 0xff, v17.l
	v_lshrrev_b32_e32 v81, 24, v18
	v_lshrrev_b32_e32 v82, 8, v14
	v_lshrrev_b32_e32 v83, 24, v14
	v_lshrrev_b32_e32 v84, 8, v19
	v_lshrrev_b32_e32 v85, 24, v19
	v_lshrrev_b32_e32 v86, 8, v15
	v_lshrrev_b32_e32 v87, 24, v15
	v_lshrrev_b32_e32 v88, 8, v20
	v_lshrrev_b32_e32 v89, 24, v20
	v_lshrrev_b32_e32 v90, 8, v75
	v_lshrrev_b32_e32 v91, 24, v75
	v_lshlrev_b16 v17.l, 8, v76.l
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v77.l
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v78.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v79.l
	v_and_b16 v13.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v80.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.h, 0xff, v19.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v20.l
	v_and_b16 v15.h, 0xff, v20.h
	v_and_b16 v16.l, 0xff, v75.l
	v_and_b16 v16.h, 0xff, v75.h
	v_lshlrev_b16 v19.h, 8, v81.l
	v_lshlrev_b16 v20.l, 8, v82.l
	v_lshlrev_b16 v20.h, 8, v83.l
	v_lshlrev_b16 v75.l, 8, v84.l
	v_lshlrev_b16 v75.h, 8, v85.l
	v_lshlrev_b16 v76.l, 8, v86.l
	v_lshlrev_b16 v76.h, 8, v87.l
	v_lshlrev_b16 v77.l, 8, v88.l
	v_lshlrev_b16 v77.h, 8, v89.l
	v_lshlrev_b16 v78.l, 8, v90.l
	v_lshlrev_b16 v78.h, 8, v91.l
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v75.l
	v_or_b16 v13.h, v13.h, v75.h
	v_or_b16 v14.l, v14.l, v76.l
	v_or_b16 v14.h, v14.h, v76.h
	v_or_b16 v15.l, v15.l, v77.l
	v_or_b16 v15.h, v15.h, v77.h
	v_or_b16 v16.l, v16.l, v78.l
	v_or_b16 v16.h, v16.h, v78.h
	ds_store_b16 v236, v9
	ds_store_b16_d16_hi v236, v9 offset:64
	ds_store_b16 v237, v10
	ds_store_b16_d16_hi v237, v10 offset:64
	ds_store_b16 v238, v11
	ds_store_b16_d16_hi v238, v11 offset:64
	ds_store_b16 v239, v12
	ds_store_b16_d16_hi v239, v12 offset:64
	ds_store_b16 v240, v13
	ds_store_b16_d16_hi v240, v13 offset:64
	ds_store_b16 v236, v14 offset:640
	ds_store_b16_d16_hi v236, v14 offset:704
	ds_store_b16 v241, v15
	ds_store_b16_d16_hi v241, v15 offset:64
	ds_store_b16 v242, v16
	ds_store_b16_d16_hi v242, v16 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v9, v57 :: v_dual_mov_b32 v10, v58
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v45, 0
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s28, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v9
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v66
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v57, s33, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v6, v57 offset:832
	ds_load_u8 v7, v57 offset:768
	ds_load_u8 v8, v57 offset:960
	ds_load_u8 v9, v57 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v113, s4, v4
	v_add_nc_u32_e32 v5, s4, v2
	ds_load_b128 v[73:76], v113
	ds_load_b128 v[77:80], v5 offset:4096
	ds_load_b128 v[81:84], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v5, v57 offset:576
	ds_load_u8 v11, v57 offset:512
	ds_load_u8 v12, v57 offset:704
	ds_load_u8 v13, v57 offset:640
	ds_load_u8 v14, v57 offset:320
	ds_load_u8 v15, v57 offset:256
	ds_load_u8 v16, v57 offset:448
	ds_load_u8 v17, v57 offset:384
	ds_load_u8 v109, v57 offset:992
	ds_load_u8 v110, v57 offset:928
	ds_load_u8 v111, v57 offset:864
	ds_load_u8 v112, v57 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v10, s4, v1
	v_add_nc_u32_e32 v58, s4, v3
	ds_load_b128 v[85:88], v10 offset:4096
	ds_load_b128 v[89:92], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v11, v5, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	ds_load_u8 v8, v57 offset:64
	ds_load_u8 v9, v57
	ds_load_u8 v18, v57 offset:192
	ds_load_u8 v19, v57 offset:128
	ds_load_u8 v114, v57 offset:736
	ds_load_u8 v115, v57 offset:672
	ds_load_u8 v116, v57 offset:608
	ds_load_u8 v117, v57 offset:544
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v12, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v17, v16, 0xc0c0004
	v_lshl_or_b32 v67, v11, 16, v5
	v_lshl_or_b32 v68, v7, 16, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v13, 16, v12
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v19, v18, 0xc0c0004
	v_lshl_or_b32 v65, v6, 16, v5
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	ds_load_u8 v13, v57 offset:1856
	ds_load_u8 v14, v57 offset:1792
	ds_load_u8 v15, v57 offset:1984
	ds_load_u8 v16, v57 offset:1920
	ds_load_u8 v17, v57 offset:1600
	ds_load_u8 v18, v57 offset:1536
	ds_load_u8 v19, v57 offset:1728
	ds_load_u8 v20, v57 offset:1664
	ds_load_u8 v59, v57 offset:1344
	ds_load_u8 v60, v57 offset:1280
	ds_load_u8 v61, v57 offset:1472
	ds_load_u8 v62, v57 offset:1408
	ds_load_u8 v126, v57 offset:2016
	ds_load_u8 v127, v57 offset:1952
	ds_load_u8 v128, v57 offset:1888
	ds_load_u8 v129, v57 offset:1824
	ds_load_u8 v101, v57 offset:2368
	ds_load_u8 v102, v57 offset:2304
	ds_load_u8 v105, v57 offset:2496
	ds_load_u8 v106, v57 offset:2432
	ds_load_u8 v107, v57 offset:2112
	ds_load_u8 v108, v57 offset:2048
	ds_load_u8 v146, v57 offset:2240
	ds_load_u8 v147, v57 offset:2176
	ds_load_u8 v148, v57 offset:2784
	ds_load_u8 v149, v57 offset:2720
	ds_load_u8 v150, v57 offset:2656
	ds_load_u8 v151, v57 offset:2592
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v12, s15
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v11, s14
	ds_load_u8 v118, v57 offset:480
	ds_load_u8 v119, v57 offset:416
	ds_load_u8 v120, v57 offset:352
	ds_load_u8 v121, v57 offset:288
	ds_load_u8 v122, v57 offset:224
	ds_load_u8 v123, v57 offset:160
	ds_load_u8 v124, v57 offset:96
	ds_load_u8 v125, v57 offset:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v69, v18, v17, 0xc0c0004
	ds_load_u8 v134, v57 offset:1504
	ds_load_u8 v135, v57 offset:1440
	ds_load_u8 v136, v57 offset:1376
	ds_load_u8 v137, v57 offset:1312
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v70, v20, v19, 0xc0c0004
	ds_load_u8 v152, v57 offset:2528
	ds_load_u8 v153, v57 offset:2464
	ds_load_u8 v154, v57 offset:2400
	ds_load_u8 v155, v57 offset:2336
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v156, v57 offset:2272
	ds_load_u8 v157, v57 offset:2208
	ds_load_u8 v158, v57 offset:2144
	ds_load_u8 v159, v57 offset:2080
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v60, v62, v61, 0xc0c0004
	v_perm_b32 v63, v14, v13, 0xc0c0004
	ds_load_u8 v61, v57 offset:2880
	ds_load_u8 v62, v57 offset:2816
	ds_load_u8 v93, v57 offset:3008
	ds_load_u8 v94, v57 offset:2944
	ds_load_u8 v138, v57 offset:1248
	ds_load_u8 v139, v57 offset:1184
	ds_load_u8 v140, v57 offset:1120
	ds_load_u8 v141, v57 offset:1056
	v_perm_b32 v64, v16, v15, 0xc0c0004
	ds_load_u8 v13, v57 offset:1088
	ds_load_u8 v14, v57 offset:1024
	ds_load_u8 v15, v57 offset:1216
	ds_load_u8 v16, v57 offset:1152
	ds_load_u8 v130, v57 offset:1760
	ds_load_u8 v131, v57 offset:1696
	ds_load_u8 v132, v57 offset:1632
	ds_load_u8 v133, v57 offset:1568
	v_lshl_or_b32 v71, v70, 16, v69
	v_lshl_or_b32 v70, v60, 16, v59
	ds_load_u8 v167, v57 offset:3808
	ds_load_u8 v168, v57 offset:3744
	ds_load_u8 v169, v57 offset:3680
	ds_load_u8 v170, v57 offset:3616
	v_lshl_or_b32 v72, v64, 16, v63
	ds_load_u8 v59, v57 offset:2624
	ds_load_u8 v60, v57 offset:2560
	ds_load_u8 v63, v57 offset:2752
	ds_load_u8 v64, v57 offset:2688
	ds_load_u8 v142, v57 offset:3040
	ds_load_u8 v143, v57 offset:2976
	ds_load_u8 v144, v57 offset:2912
	ds_load_u8 v145, v57 offset:2848
	ds_load_u8 v171, v57 offset:3552
	ds_load_u8 v172, v57 offset:3488
	ds_load_u8 v173, v57 offset:3424
	ds_load_u8 v174, v57 offset:3360
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v95, v14, v13, 0xc0c0004
	v_perm_b32 v62, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v96, v16, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[89:92], v[65:68], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_lshl_or_b32 v104, v62, 16, v61
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v64, v63, 0xc0c0004
	v_lshl_or_b32 v69, v96, 16, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v58 offset:4096
	ds_load_b128 v[97:100], v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v58, v102, v101, 0xc0c0004
	v_perm_b32 v61, v147, v146, 0xc0c0004
	v_lshl_or_b32 v103, v60, 16, v59
	v_perm_b32 v59, v106, v105, 0xc0c0004
	v_perm_b32 v60, v108, v107, 0xc0c0004
	ds_load_u8 v62, v57 offset:3904
	ds_load_u8 v63, v57 offset:3840
	ds_load_u8 v64, v57 offset:4032
	ds_load_u8 v105, v57 offset:3968
	v_wmma_i32_16x16x16_iu8 v[13:20], v[81:84], v[69:72], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v59, 16, v58
	v_lshl_or_b32 v101, v61, 16, v60
	ds_load_u8 v58, v57 offset:3648
	ds_load_u8 v59, v57 offset:3584
	ds_load_u8 v60, v57 offset:3776
	ds_load_u8 v61, v57 offset:3712
	ds_load_u8 v106, v57 offset:3392
	ds_load_u8 v107, v57 offset:3328
	ds_load_u8 v108, v57 offset:3520
	ds_load_u8 v146, v57 offset:3456
	ds_load_u8 v147, v57 offset:3136
	ds_load_u8 v160, v57 offset:3072
	ds_load_u8 v161, v57 offset:3264
	ds_load_u8 v162, v57 offset:3200
	ds_load_u8 v163, v57 offset:4064
	ds_load_u8 v164, v57 offset:4000
	ds_load_u8 v165, v57 offset:3936
	ds_load_u8 v166, v57 offset:3872
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v61, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[97:100], v[101:104], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v60, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v146, v108, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v146, v57 offset:3296
	ds_load_u8 v175, v57 offset:3232
	ds_load_u8 v176, v57 offset:3168
	ds_load_u8 v177, v57 offset:3104
	v_perm_b32 v63, v105, v64, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v160, v147, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v162, v161, 0xc0c0004
	v_lshl_or_b32 v107, v59, 16, v58
	v_lshl_or_b32 v106, v61, 16, v60
	v_lshl_or_b32 v108, v63, 16, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v64, 16, v57
	v_wmma_i32_16x16x16_iu8 v[13:20], v[73:76], v[105:108], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[65:68], v[5:12] neg_lo:[1,1,0]
	v_perm_b32 v65, v112, v111, 0xc0c0004
	v_perm_b32 v66, v110, v109, 0xc0c0004
	v_perm_b32 v67, v117, v116, 0xc0c0004
	v_perm_b32 v68, v115, v114, 0xc0c0004
	v_perm_b32 v109, v121, v120, 0xc0c0004
	v_perm_b32 v110, v119, v118, 0xc0c0004
	v_perm_b32 v114, v125, v124, 0xc0c0004
	v_perm_b32 v115, v123, v122, 0xc0c0004
	v_lshl_or_b32 v112, v66, 16, v65
	v_lshl_or_b32 v111, v68, 16, v67
	v_lshl_or_b32 v110, v110, 16, v109
	v_perm_b32 v116, v133, v132, 0xc0c0004
	v_lshl_or_b32 v109, v115, 16, v114
	v_perm_b32 v114, v129, v128, 0xc0c0004
	v_perm_b32 v115, v127, v126, 0xc0c0004
	v_perm_b32 v117, v131, v130, 0xc0c0004
	v_perm_b32 v118, v137, v136, 0xc0c0004
	v_perm_b32 v119, v135, v134, 0xc0c0004
	v_perm_b32 v120, v141, v140, 0xc0c0004
	v_perm_b32 v121, v139, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[109:112], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v115, 16, v114
	v_lshl_or_b32 v91, v117, 16, v116
	v_lshl_or_b32 v90, v119, 16, v118
	v_lshl_or_b32 v89, v121, 16, v120
	v_perm_b32 v114, v145, v144, 0xc0c0004
	v_perm_b32 v115, v143, v142, 0xc0c0004
	v_perm_b32 v116, v151, v150, 0xc0c0004
	v_perm_b32 v117, v149, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[89:92], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v118, v155, v154, 0xc0c0004
	v_lshl_or_b32 v84, v115, 16, v114
	v_perm_b32 v119, v153, v152, 0xc0c0004
	v_lshl_or_b32 v83, v117, 16, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v113 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v120, v159, v158, 0xc0c0004
	v_perm_b32 v121, v157, v156, 0xc0c0004
	v_lshl_or_b32 v82, v119, 16, v118
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[101:104], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[85:88], v[109:112], v[5:12] neg_lo:[1,1,0]
	v_perm_b32 v85, v174, v173, 0xc0c0004
	v_lshl_or_b32 v81, v121, 16, v120
	v_perm_b32 v86, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v87, v177, v176, 0xc0c0004
	v_perm_b32 v88, v175, v146, 0xc0c0004
	v_cvt_f32_i32_e32 v15, v17
	v_wmma_i32_16x16x16_iu8 v[65:72], v[97:100], v[81:84], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v97, v166, v165, 0xc0c0004
	v_perm_b32 v98, v164, v163, 0xc0c0004
	v_perm_b32 v99, v170, v169, 0xc0c0004
	v_perm_b32 v100, v168, v167, 0xc0c0004
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v55, v55, v14 :: v_dual_add_f32 v52, v52, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v16
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[105:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[77:80], v[89:92], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v98, 16, v97
	v_lshl_or_b32 v79, v100, 16, v99
	v_lshl_or_b32 v78, v86, 16, v85
	v_lshl_or_b32 v77, v88, 16, v87
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v57
	v_wmma_i32_16x16x16_iu8 v[5:12], v[93:96], v[81:84], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[77:80], v[65:72] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v51, v51, v16 :: v_dual_add_f32 v50, v50, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v58
	v_cvt_f32_i32_e32 v16, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v17, v60
	v_cvt_f32_i32_e32 v18, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v62
	v_wmma_i32_16x16x16_iu8 v[5:12], v[113:116], v[77:80], v[5:12] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v47, v47, v15 :: v_dual_add_f32 v44, v44, v17
	v_add_f32_e32 v46, v46, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v63
	v_cvt_f32_i32_e32 v16, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v17, v65
	v_cvt_f32_i32_e32 v18, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v42, v14 :: v_dual_add_f32 v41, v41, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v39, v17 :: v_dual_add_f32 v38, v38, v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v68
	v_cvt_f32_i32_e32 v18, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v72
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v16, v69
	v_cvt_f32_i32_e32 v17, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v33, v33, v18 :: v_dual_add_f32 v28, v28, v8
	v_dual_add_f32 v32, v32, v14 :: v_dual_add_f32 v31, v31, v5
	v_dual_add_f32 v30, v30, v6 :: v_dual_add_f32 v29, v29, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v7, v11
	v_cvt_f32_i32_e32 v8, v12
	v_cvt_f32_i32_e32 v9, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v15 :: v_dual_add_f32 v35, v35, v16
	v_add_f32_e32 v34, v34, v17
	v_dual_add_f32 v27, v27, v5 :: v_dual_add_f32 v26, v26, v6
	v_dual_add_f32 v25, v25, v7 :: v_dual_add_f32 v24, v24, v8
	v_add_f32_e32 v45, v45, v9
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
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
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s1, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v13, s28, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v72, s11 :: v_dual_add_nc_u32 v3, s1, v3
	v_dual_mov_b32 v69, s8 :: v_dual_add_nc_u32 v6, s1, v1
	v_dual_mov_b32 v68, s7 :: v_dual_add_nc_u32 v5, s1, v2
	v_mov_b32_e32 v71, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[73:76], v4 offset:4096
	ds_load_b128 v[77:80], v4
	ds_load_b128 v[81:84], v3 offset:4096
	ds_load_b128 v[85:88], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v70, s9
	ds_load_u8 v7, v13 offset:832
	ds_load_u8 v8, v13 offset:768
	ds_load_u8 v9, v13 offset:960
	ds_load_u8 v10, v13 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v6 offset:4096
	ds_load_b128 v[89:92], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v6, v13 offset:576
	ds_load_u8 v11, v13 offset:512
	ds_load_u8 v12, v13 offset:704
	ds_load_u8 v14, v13 offset:640
	ds_load_u8 v15, v13 offset:320
	ds_load_u8 v16, v13 offset:256
	ds_load_u8 v17, v13 offset:448
	ds_load_u8 v18, v13 offset:384
	ds_load_u8 v19, v13 offset:64
	ds_load_u8 v20, v13
	ds_load_u8 v57, v13 offset:192
	ds_load_u8 v58, v13 offset:128
	ds_load_u8 v105, v13 offset:992
	ds_load_u8 v106, v13 offset:928
	ds_load_u8 v107, v13 offset:864
	ds_load_u8 v109, v13 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v10, v9, 0xc0c0004
	ds_load_u8 v110, v13 offset:736
	ds_load_u8 v111, v13 offset:672
	ds_load_u8 v112, v13 offset:608
	ds_load_u8 v113, v13 offset:544
	ds_load_u8 v114, v13 offset:480
	ds_load_u8 v115, v13 offset:416
	ds_load_u8 v116, v13 offset:352
	ds_load_u8 v117, v13 offset:288
	ds_load_u8 v118, v13 offset:224
	ds_load_u8 v119, v13 offset:160
	ds_load_u8 v120, v13 offset:96
	ds_load_u8 v121, v13 offset:32
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v6, v11, v6, 0xc0c0004
	ds_load_u8 v130, v13 offset:1504
	ds_load_u8 v131, v13 offset:1440
	ds_load_u8 v132, v13 offset:1376
	ds_load_u8 v133, v13 offset:1312
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v9, v14, v12, 0xc0c0004
	ds_load_u8 v134, v13 offset:1248
	ds_load_u8 v135, v13 offset:1184
	ds_load_u8 v136, v13 offset:1120
	ds_load_u8 v137, v13 offset:1056
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	ds_load_u8 v148, v13 offset:2528
	ds_load_u8 v149, v13 offset:2464
	ds_load_u8 v150, v13 offset:2400
	ds_load_u8 v151, v13 offset:2336
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v11, v18, v17, 0xc0c0004
	ds_load_u8 v16, v13 offset:1984
	ds_load_u8 v17, v13 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v5 offset:4096
	ds_load_b128 v[97:100], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v12, v20, v19, 0xc0c0004
	ds_load_u8 v18, v13 offset:1600
	ds_load_u8 v19, v13 offset:1536
	ds_load_u8 v20, v13 offset:1728
	ds_load_u8 v61, v13 offset:1664
	ds_load_u8 v62, v13 offset:1344
	ds_load_u8 v63, v13 offset:1280
	ds_load_u8 v64, v13 offset:1472
	ds_load_u8 v101, v13 offset:1408
	ds_load_u8 v122, v13 offset:2016
	ds_load_u8 v123, v13 offset:1952
	ds_load_u8 v124, v13 offset:1888
	ds_load_u8 v125, v13 offset:1824
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v14, v58, v57, 0xc0c0004
	ds_load_u8 v152, v13 offset:2272
	ds_load_u8 v153, v13 offset:2208
	ds_load_u8 v154, v13 offset:2144
	ds_load_u8 v155, v13 offset:2080
	v_lshl_or_b32 v60, v8, 16, v7
	v_lshl_or_b32 v59, v9, 16, v6
	v_lshl_or_b32 v58, v11, 16, v10
	v_lshl_or_b32 v57, v14, 16, v12
	ds_load_u8 v14, v13 offset:1856
	ds_load_u8 v15, v13 offset:1792
	v_dual_mov_b32 v67, s6 :: v_dual_mov_b32 v66, s5
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_mov_b32_e32 v65, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v61, v20, 0xc0c0004
	ds_load_u8 v165, v13 offset:3808
	ds_load_u8 v166, v13 offset:3744
	ds_load_u8 v167, v13 offset:3680
	ds_load_u8 v168, v13 offset:3616
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v63, v62, 0xc0c0004
	ds_load_u8 v171, v13 offset:3552
	ds_load_u8 v172, v13 offset:3488
	ds_load_u8 v173, v13 offset:3424
	ds_load_u8 v174, v13 offset:3360
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v13 offset:1216
	ds_load_u8 v103, v13 offset:1152
	ds_load_u8 v126, v13 offset:1760
	ds_load_u8 v127, v13 offset:1696
	ds_load_u8 v128, v13 offset:1632
	ds_load_u8 v129, v13 offset:1568
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v61, v101, v64, 0xc0c0004
	v_lshl_or_b32 v63, v19, 16, v18
	v_wmma_i32_16x16x16_iu8 v[5:12], v[89:92], v[57:60], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v62, v61, 16, v20
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v13 offset:1088
	ds_load_u8 v102, v13 offset:1024
	v_lshl_or_b32 v64, v16, 16, v14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v103, v17, 0xc0c0004
	ds_load_u8 v103, v13 offset:3008
	ds_load_u8 v104, v13 offset:2944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v102, v15, 0xc0c0004
	ds_load_u8 v101, v13 offset:2880
	ds_load_u8 v102, v13 offset:2816
	v_lshl_or_b32 v61, v17, 16, v15
	ds_load_u8 v14, v13 offset:2624
	ds_load_u8 v15, v13 offset:2560
	ds_load_u8 v16, v13 offset:2752
	ds_load_u8 v17, v13 offset:2688
	ds_load_u8 v18, v13 offset:2368
	ds_load_u8 v19, v13 offset:2304
	ds_load_u8 v20, v13 offset:2496
	ds_load_u8 v108, v13 offset:2432
	ds_load_u8 v138, v13 offset:3040
	ds_load_u8 v139, v13 offset:2976
	ds_load_u8 v140, v13 offset:2912
	ds_load_u8 v141, v13 offset:2848
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v13 offset:2240
	ds_load_u8 v143, v13 offset:2176
	ds_load_u8 v144, v13 offset:2784
	ds_load_u8 v145, v13 offset:2720
	ds_load_u8 v146, v13 offset:2656
	ds_load_u8 v147, v13 offset:2592
	v_wmma_i32_16x16x16_iu8 v[5:12], v[97:100], v[61:64], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v16, v19, v18, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v13 offset:2112
	ds_load_u8 v142, v13 offset:2048
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v108, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v143, v104, 0xc0c0004
	v_lshl_or_b32 v104, v103, 16, v101
	v_lshl_or_b32 v103, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v142, v102, 0xc0c0004
	ds_load_u8 v19, v13 offset:3904
	ds_load_u8 v20, v13 offset:3840
	ds_load_u8 v108, v13 offset:4032
	ds_load_u8 v142, v13 offset:3968
	v_lshl_or_b32 v102, v17, 16, v16
	v_lshl_or_b32 v101, v143, 16, v18
	ds_load_u8 v14, v13 offset:3648
	ds_load_u8 v15, v13 offset:3584
	ds_load_u8 v16, v13 offset:3776
	ds_load_u8 v17, v13 offset:3712
	ds_load_u8 v18, v13 offset:3392
	ds_load_u8 v143, v13 offset:3328
	ds_load_u8 v156, v13 offset:3520
	ds_load_u8 v157, v13 offset:3456
	ds_load_u8 v158, v13 offset:4064
	ds_load_u8 v159, v13 offset:4000
	ds_load_u8 v160, v13 offset:3936
	ds_load_u8 v161, v13 offset:3872
	v_wmma_i32_16x16x16_iu8 v[5:12], v[85:88], v[101:104], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v169, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v170, v17, v16, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v143, v18, 0xc0c0004
	v_perm_b32 v20, v142, v108, 0xc0c0004
	ds_load_u8 v142, v13 offset:3136
	ds_load_u8 v162, v13 offset:3072
	ds_load_u8 v163, v13 offset:3264
	ds_load_u8 v164, v13 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v13 offset:3296
	ds_load_u8 v175, v13 offset:3232
	ds_load_u8 v176, v13 offset:3168
	ds_load_u8 v177, v13 offset:3104
	v_lshl_or_b32 v108, v20, 16, v19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[1:4], v[57:60], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v57, v109, v107, 0xc0c0004
	v_perm_b32 v58, v106, v105, 0xc0c0004
	v_perm_b32 v59, v113, v112, 0xc0c0004
	v_perm_b32 v60, v111, v110, 0xc0c0004
	v_perm_b32 v105, v117, v116, 0xc0c0004
	v_perm_b32 v106, v115, v114, 0xc0c0004
	v_perm_b32 v107, v121, v120, 0xc0c0004
	v_perm_b32 v109, v119, v118, 0xc0c0004
	v_lshl_or_b32 v112, v58, 16, v57
	v_lshl_or_b32 v111, v60, 16, v59
	v_lshl_or_b32 v110, v106, 16, v105
	v_perm_b32 v105, v125, v124, 0xc0c0004
	v_lshl_or_b32 v109, v109, 16, v107
	v_perm_b32 v106, v123, v122, 0xc0c0004
	v_perm_b32 v107, v129, v128, 0xc0c0004
	v_perm_b32 v113, v127, v126, 0xc0c0004
	v_perm_b32 v114, v133, v132, 0xc0c0004
	v_perm_b32 v115, v131, v130, 0xc0c0004
	v_perm_b32 v116, v137, v136, 0xc0c0004
	v_perm_b32 v117, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[93:96], v[61:64], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[109:112], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v106, 16, v105
	v_lshl_or_b32 v91, v113, 16, v107
	v_lshl_or_b32 v90, v115, 16, v114
	v_lshl_or_b32 v89, v117, 16, v116
	v_perm_b32 v105, v141, v140, 0xc0c0004
	v_perm_b32 v106, v139, v138, 0xc0c0004
	v_perm_b32 v107, v147, v146, 0xc0c0004
	v_perm_b32 v113, v145, v144, 0xc0c0004
	v_perm_b32 v114, v151, v150, 0xc0c0004
	v_perm_b32 v115, v149, v148, 0xc0c0004
	v_perm_b32 v116, v155, v154, 0xc0c0004
	v_perm_b32 v117, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v106, 16, v105
	v_lshl_or_b32 v99, v113, 16, v107
	v_lshl_or_b32 v98, v115, 16, v114
	v_lshl_or_b32 v97, v117, 16, v116
	v_wmma_i32_16x16x16_iu8 v[65:72], v[1:4], v[109:112], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v142, v162, v142, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v162, v164, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[81:84], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[97:100], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v85, v161, v160, 0xc0c0004
	v_perm_b32 v86, v159, v158, 0xc0c0004
	v_perm_b32 v87, v168, v167, 0xc0c0004
	v_perm_b32 v88, v166, v165, 0xc0c0004
	v_perm_b32 v1, v174, v173, 0xc0c0004
	v_perm_b32 v2, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v177, v176, 0xc0c0004
	v_perm_b32 v102, v175, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[93:96], v[89:92], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v170, 16, v169
	v_lshl_or_b32 v106, v156, 16, v143
	v_lshl_or_b32 v105, v162, 16, v142
	v_lshl_or_b32 v4, v86, 16, v85
	v_lshl_or_b32 v3, v88, 16, v87
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[97:100], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[77:80], v[105:108], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[73:76], v[105:108], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[1:4], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[1:4], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
.LBB0_12:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v55, v6 :: v_dual_and_b32 v1, 0x60, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s19, v56
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v5, v45, v5
	s_mov_b32 s7, 0x31027000
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v2, 1, v2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v4, s18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v51, v10 :: v_dual_and_b32 v87, 0x7f, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v4, 64, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v53, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	v_or_b32_e32 v56, 4, v3
	v_or_b32_e32 v80, 0x80, v3
	v_or_b32_e32 v73, 8, v3
	v_or_b32_e32 v81, 0x84, v3
	s_mov_b32 s4, s22
	v_or_b32_e32 v74, 12, v3
	v_or_b32_e32 v82, 0x88, v3
	v_or_b32_e32 v75, 16, v3
	v_or_b32_e32 v76, 20, v3
	v_or_b32_e32 v77, 24, v3
	v_or_b32_e32 v78, 28, v3
	v_or_b32_e32 v83, 0x8c, v3
	s_clause 0x7
	buffer_load_u16 v79, v3, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	v_or_b32_e32 v84, 0x90, v3
	v_or_b32_e32 v85, 0x94, v3
	v_or_b32_e32 v86, 0x98, v3
	v_or_b32_e32 v3, 0x9c, v3
	s_clause 0x7
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v27, v69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v89, 14, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v22
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v88, 7, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v9, v52, v9 :: v_dual_add_f32 v14, v47, v14
	v_dual_add_f32 v11, v50, v11 :: v_dual_add_f32 v16, v44, v16
	v_dual_add_f32 v13, v48, v13 :: v_dual_add_f32 v18, v42, v18
	v_dual_add_f32 v71, v25, v71 :: v_dual_and_b32 v0, 0x78, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v23, 6, v23
	v_cndmask_b32_e64 v91, 0x840, 0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v14, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v14, s29, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v54, v7 :: v_dual_add_f32 v12, v49, v12
	v_dual_add_f32 v19, v41, v19 :: v_dual_add_f32 v60, v36, v60
	v_dual_add_f32 v63, v33, v63 :: v_dual_add_f32 v68, v28, v68
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v90, 0x840, 0, s0
	v_and_b32_e32 v21, 0x700, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v16, s2
	v_cndmask_b32_e64 v42, v42, v18, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v16, 2, v89
	v_xor_b32_e32 v18, v91, v23
	v_lshl_or_b32 v0, v1, 3, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s19, s19, s29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v45, v5, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s19, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v49, v12, s2
	v_cndmask_b32_e64 v19, v41, v19, s2
	v_cndmask_b32_e64 v41, v28, v68, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v1, v21, v16, v18
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v49, s0, v87, v14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v0, v90
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v15, v46, v15 :: v_dual_add_f32 v20, v40, v20
	v_dual_add_f32 v17, v43, v17 :: v_dual_add_f32 v58, v38, v58
	v_dual_add_f32 v57, v39, v57 :: v_dual_add_f32 v62, v34, v62
	v_dual_add_f32 v65, v31, v65 :: v_dual_add_f32 v70, v26, v70
	v_dual_add_f32 v67, v29, v67 :: v_dual_add_f32 v72, v24, v72
	v_dual_add_f32 v59, v37, v59 :: v_dual_add_f32 v64, v32, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v55, v6, s2
	v_cndmask_b32_e64 v7, v54, v7, s2
	v_cndmask_b32_e64 v8, v53, v8, s2
	v_cndmask_b32_e64 v9, v52, v9, s2
	v_cndmask_b32_e64 v10, v51, v10, s2
	v_cndmask_b32_e64 v11, v50, v11, s2
	v_cndmask_b32_e64 v13, v48, v13, s2
	v_cndmask_b32_e64 v15, v46, v15, s2
	v_cndmask_b32_e64 v17, v43, v17, s2
	v_cndmask_b32_e64 v12, v39, v57, s2
	v_cndmask_b32_e64 v38, v38, v58, s2
	v_cndmask_b32_e64 v43, v26, v70, s2
	v_cndmask_b32_e64 v46, v25, v71, s2
	v_cndmask_b32_e64 v48, v24, v72, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v51, 0x1008, v1, 0
	v_xad_u32 v52, 0x2010, v1, 0
	v_xad_u32 v53, 0x3018, v1, 0
	v_xad_u32 v54, 0x4020, v1, 0
	v_xad_u32 v55, 0x5028, v1, 0
	v_xad_u32 v57, 0x6030, v1, 0
	v_xad_u32 v58, 0x7038, v1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v61, v35, v61 :: v_dual_add_f32 v66, v30, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v59, s2
	v_cndmask_b32_e64 v40, v40, v20, s2
	v_cndmask_b32_e64 v32, v32, v64, s2
	v_cndmask_b32_e64 v31, v31, v65, s2
	v_cndmask_b32_e64 v39, v30, v66, s2
	v_cndmask_b32_e64 v36, v36, v60, s2
	v_cndmask_b32_e64 v35, v35, v61, s2
	v_cndmask_b32_e64 v34, v34, v62, s2
	v_cndmask_b32_e64 v33, v33, v63, s2
	v_cndmask_b32_e64 v29, v29, v67, s2
	v_cndmask_b32_e64 v27, v27, v69, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s21, s29, 1
	s_lshl_b32 s22, s29, 2
	s_mul_i32 s23, s29, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v60, v49, s21, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s24, s29, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v61, v49, s22, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s25, s29, 10
	s_mul_i32 s26, s29, 12
	s_mul_i32 s27, s29, 14
	s_lshl_b32 s28, s29, 4
	s_mul_i32 s30, s29, 18
	s_mul_i32 s31, s29, 20
	s_mul_i32 s33, s29, 22
	s_mul_i32 s34, s29, 24
	s_mul_i32 s35, s29, 26
	s_mul_i32 s36, s29, 28
	s_mul_i32 s37, s29, 30
	s_lshl_b32 s38, s29, 5
	s_mul_i32 s39, s29, 34
	s_mul_i32 s40, s29, 36
	s_mul_i32 s20, s29, 38
	s_mul_i32 s15, s29, 40
	s_mul_i32 s14, s29, 42
	s_mul_i32 s13, s29, 44
	s_mul_i32 s12, s29, 46
	s_mul_i32 s11, s29, 48
	s_mul_i32 s10, s29, 50
	s_mul_i32 s9, s29, 52
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	v_add_lshl_u32 v62, v49, s23, 2
	v_add_lshl_u32 v63, v49, s24, 2
	v_add_lshl_u32 v64, v49, s25, 2
	v_add_lshl_u32 v65, v49, s26, 2
	v_add_lshl_u32 v66, v49, s27, 2
	v_add_lshl_u32 v67, v49, s28, 2
	v_add_lshl_u32 v68, v49, s30, 2
	v_add_lshl_u32 v69, v49, s31, 2
	v_add_lshl_u32 v70, v49, s33, 2
	v_add_lshl_u32 v71, v49, s34, 2
	v_add_lshl_u32 v72, v49, s35, 2
	v_add_lshl_u32 v87, v49, s36, 2
	v_add_lshl_u32 v88, v49, s37, 2
	v_add_lshl_u32 v90, v49, s39, 2
	v_add_lshl_u32 v91, v49, s40, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s29, 54
	s_mul_i32 s5, s29, 56
	s_mul_i32 s4, s29, 58
	s_mul_i32 s3, s29, 60
	s_mul_i32 s1, s29, 62
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v81
	v_lshlrev_b32_e32 v21, 16, v77
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v84
	v_lshlrev_b32_e32 v14, 16, v73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v16, 11, v89
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v18, 16, v75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v89, v49, s38, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v16, v22
	v_add_nc_u32_e32 v92, 0, v0
	v_xad_u32 v93, v0, 8, 0
	v_xad_u32 v94, v0, 16, 0
	v_xad_u32 v95, v0, 24, 0
	v_xad_u32 v96, v0, 32, 0
	v_xad_u32 v97, v0, 40, 0
	v_xad_u32 v98, v0, 48, 0
	v_xad_u32 v99, v0, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v0, 16, v2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v50, 0, v1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v25, 16, v82
	v_lshlrev_b32_e32 v26, 16, v83
	v_lshlrev_b32_e32 v23, 16, v80
	v_lshlrev_b32_e32 v22, 16, v78
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v1, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 16, v79
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v79, v0, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v21, v1, v21 :: v_dual_mul_f32 v84, v0, v26
	v_dual_mul_f32 v81, v0, v23 :: v_dual_lshlrev_b32 v4, 16, v56
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v56, 16, v86
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v80, v0, v22 :: v_dual_mul_f32 v23, v1, v23
	v_dual_mul_f32 v107, v1, v22 :: v_dual_mul_f32 v82, v0, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v100, v0, v56
	v_mul_f32_e32 v83, v0, v25
	v_mul_f32_e32 v73, v0, v2
	v_mul_f32_e32 v2, v1, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v30, 16, v85
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v25, v1, v25 :: v_dual_lshlrev_b32 v16, 16, v74
	v_mul_f32_e32 v109, v1, v26
	v_mul_f32_e32 v85, v0, v28
	v_dual_mul_f32 v103, v1, v14 :: v_dual_lshlrev_b32 v20, 16, v76
	v_dual_mul_f32 v105, v1, v18 :: v_dual_mul_f32 v74, v0, v4
	v_mul_f32_e32 v75, v0, v14
	v_mul_f32_e32 v77, v0, v18
	v_mul_f32_e32 v101, v0, v3
	v_mul_f32_e32 v76, v0, v16
	v_mul_f32_e32 v102, v1, v4
	v_mul_f32_e32 v104, v1, v16
	v_mul_f32_e32 v106, v1, v20
	v_dual_mul_f32 v110, v1, v28 :: v_dual_lshlrev_b32 v59, 2, v49
	v_mul_f32_e32 v78, v0, v20
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v20, v15, v83
	v_dual_mul_f32 v15, v32, v107 :: v_dual_mul_f32 v108, v1, v24
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v111, v1, v30 :: v_dual_mul_f32 v4, v7, v75
	v_mul_f32_e32 v112, v1, v3
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v24, v17, v85 :: v_dual_mul_f32 v17, v31, v23
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v56, v1, v56 :: v_dual_mul_f32 v1, v12, v2
	v_mul_f32_e32 v86, v0, v30
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v6, v74
	v_mul_f32_e32 v6, v8, v76
	v_mul_f32_e32 v8, v9, v77
	v_mul_f32_e32 v9, v35, v105
	v_mul_f32_e32 v3, v38, v102
	v_dual_mul_f32 v7, v36, v104 :: v_dual_mul_f32 v16, v13, v81
	v_mul_f32_e32 v31, v48, v112
	v_mul_f32_e32 v13, v33, v21
	v_mul_f32_e32 v21, v29, v25
	v_mul_f32_e32 v25, v27, v110
	v_dual_mul_f32 v12, v11, v79 :: v_dual_mul_f32 v29, v46, v56
	v_dual_mul_f32 v11, v34, v106 :: v_dual_mul_f32 v0, v5, v73
	v_mul_f32_e32 v18, v47, v82
	v_mul_f32_e32 v28, v19, v100
	v_mul_f32_e32 v19, v39, v108
	v_dual_mul_f32 v5, v37, v103 :: v_dual_mul_f32 v10, v10, v78
	v_dual_mul_f32 v23, v41, v109 :: v_dual_mul_f32 v22, v44, v84
	v_mul_f32_e32 v14, v45, v80
	v_mul_f32_e32 v26, v42, v86
	v_dual_mul_f32 v30, v40, v101 :: v_dual_mul_f32 v27, v43, v111
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v92, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v93, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v94, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v95, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v96, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v97, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v98, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v99, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v50 offset1:16
	ds_load_2addr_b64 v[4:7], v51 offset1:16
	ds_load_2addr_b64 v[8:11], v52 offset1:16
	ds_load_2addr_b64 v[12:15], v53 offset1:16
	ds_load_2addr_b64 v[16:19], v54 offset1:16
	ds_load_2addr_b64 v[20:23], v55 offset1:16
	ds_load_2addr_b64 v[24:27], v57 offset1:16
	ds_load_2addr_b64 v[28:31], v58 offset1:16
	v_add_lshl_u32 v32, v49, s20, 2
	v_add_lshl_u32 v33, v49, s15, 2
	v_add_lshl_u32 v34, v49, s14, 2
	v_add_lshl_u32 v35, v49, s13, 2
	v_add_lshl_u32 v36, v49, s12, 2
	v_add_lshl_u32 v37, v49, s11, 2
	v_add_lshl_u32 v38, v49, s10, 2
	v_add_lshl_u32 v39, v49, s9, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v59, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v60, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v61, s[16:19], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v62, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v63, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v64, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v65, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v66, s[16:19], 0 offen
	buffer_atomic_add_f32 v2, v67, s[16:19], 0 offen
	buffer_atomic_add_f32 v6, v68, s[16:19], 0 offen
	buffer_atomic_add_f32 v10, v69, s[16:19], 0 offen
	buffer_atomic_add_f32 v14, v70, s[16:19], 0 offen
	buffer_atomic_add_f32 v18, v71, s[16:19], 0 offen
	buffer_atomic_add_f32 v22, v72, s[16:19], 0 offen
	buffer_atomic_add_f32 v26, v87, s[16:19], 0 offen
	buffer_atomic_add_f32 v30, v88, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v89, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v90, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v91, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v32, s[16:19], 0 offen
	buffer_atomic_add_f32 v17, v33, s[16:19], 0 offen
	buffer_atomic_add_f32 v21, v34, s[16:19], 0 offen
	buffer_atomic_add_f32 v25, v35, s[16:19], 0 offen
	buffer_atomic_add_f32 v29, v36, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v37, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v38, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v39, s[16:19], 0 offen
	v_add_lshl_u32 v40, v49, s8, 2
	v_add_lshl_u32 v41, v49, s5, 2
	v_add_lshl_u32 v42, v49, s4, 2
	v_add_lshl_u32 v43, v49, s3, 2
	v_add_lshl_u32 v0, v49, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v40, s[16:19], 0 offen
	buffer_atomic_add_f32 v19, v41, s[16:19], 0 offen
	buffer_atomic_add_f32 v23, v42, s[16:19], 0 offen
	buffer_atomic_add_f32 v27, v43, s[16:19], 0 offen
	buffer_atomic_add_f32 v31, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 243
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 243
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14176
; TotalNumSgprs: 43
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 243
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
