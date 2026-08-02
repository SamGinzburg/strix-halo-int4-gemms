	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v54, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	v_and_b32_e32 v55, 8, v0
	v_and_b32_e32 v56, 32, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 48, v54
	v_and_b32_e32 v5, 62, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v42, 0, v54
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s24, 63
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
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v8, s24, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
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
	v_mad_u64_u32 v[6:7], null, s25, v5, v[1:2]
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
	s_lshl_b32 s26, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 6
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s25, s7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v6, s26, s3, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s8, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v7, v8, v2, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s25, v6
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v6, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s28, s25, 6
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s24, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s28, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v9, s[20:23], 0 offen
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s29, s24, 6
	v_add_nc_u32_e32 v8, s4, v7
	v_add3_u32 v7, s4, s29, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s25, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_mov_b32 s9, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_clause 0x1
	buffer_load_b128 v[18:21], v6, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v9, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b128 v[26:29], v8, s[16:19], 0 offen
	buffer_load_b128 v[30:33], v7, s[16:19], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	v_and_b32_e32 v9, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v6
	v_xor_b32_e32 v8, v6, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v57, v9, 10, v8
	v_lshlrev_b32_e32 v8, 5, v0
	v_lshlrev_b32_e32 v9, 3, v9
	v_xor_b32_e32 v58, 0x90, v57
	v_xor_b32_e32 v59, 0x120, v57
	v_xor_b32_e32 v60, 0x1b0, v57
	v_xor_b32_e32 v61, 0x210, v57
	v_xor_b32_e32 v62, 0x330, v57
	v_xor_b32_e32 v63, 0x3a0, v57
	v_add_nc_u32_e32 v43, 0, v57
	v_add_nc_u32_e32 v44, 0, v58
	v_add_nc_u32_e32 v45, 0, v59
	v_add_nc_u32_e32 v46, 0, v60
	v_add_nc_u32_e32 v47, 0, v61
	v_add_nc_u32_e32 v48, 0, v62
	v_add_nc_u32_e32 v49, 0, v63
	s_waitcnt vmcnt(4)
	v_perm_b32 v34, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v35, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v36, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v37, v17, v13, 0x5010400
	v_perm_b32 v38, v17, v13, 0x7030602
	v_lshrrev_b32_e32 v39, 8, v34
	v_lshrrev_b32_e32 v40, 24, v34
	v_lshrrev_b32_e32 v50, 24, v14
	v_lshrrev_b32_e32 v41, 8, v14
	v_lshrrev_b32_e32 v51, 8, v35
	v_lshrrev_b32_e32 v52, 24, v35
	v_lshrrev_b32_e32 v53, 8, v15
	v_lshrrev_b32_e32 v64, 24, v15
	v_lshrrev_b32_e32 v65, 8, v36
	v_lshrrev_b32_e32 v66, 24, v36
	v_lshrrev_b32_e32 v67, 8, v16
	v_lshrrev_b32_e32 v68, 24, v16
	v_lshrrev_b32_e32 v69, 8, v37
	v_lshrrev_b32_e32 v70, 24, v37
	v_lshrrev_b32_e32 v71, 8, v38
	v_lshrrev_b32_e32 v72, 24, v38
	v_and_b16 v10.l, 0xff, v34.l
	v_and_b16 v10.h, 0xff, v34.h
	v_and_b16 v12.h, 0xff, v35.h
	v_lshlrev_b16 v34.l, 8, v39.l
	v_lshlrev_b16 v34.h, 8, v40.l
	v_lshlrev_b16 v35.h, 8, v50.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v50, v22, v18, 0x5010400
	v_and_b16 v11.l, 0xff, v14.l
	v_and_b16 v11.h, 0xff, v14.h
	v_and_b16 v12.l, 0xff, v35.l
	v_lshlrev_b16 v35.l, 8, v41.l
	v_and_b16 v14.l, 0xff, v36.l
	v_and_b16 v14.h, 0xff, v36.h
	v_lshlrev_b16 v36.l, 8, v51.l
	v_lshlrev_b16 v36.h, 8, v52.l
	v_perm_b32 v22, v22, v18, 0x7030602
	v_and_b16 v13.l, 0xff, v15.l
	v_and_b16 v13.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v16.l
	v_and_b16 v15.h, 0xff, v16.h
	v_and_b16 v16.l, 0xff, v37.l
	v_and_b16 v16.h, 0xff, v37.h
	v_lshlrev_b16 v37.l, 8, v53.l
	v_lshlrev_b16 v37.h, 8, v64.l
	v_and_b16 v17.l, 0xff, v38.l
	v_and_b16 v17.h, 0xff, v38.h
	v_lshlrev_b16 v38.l, 8, v65.l
	v_lshlrev_b16 v38.h, 8, v66.l
	v_lshlrev_b16 v39.l, 8, v67.l
	v_lshlrev_b16 v39.h, 8, v68.l
	v_lshlrev_b16 v40.l, 8, v69.l
	v_lshlrev_b16 v40.h, 8, v70.l
	v_lshlrev_b16 v41.l, 8, v71.l
	v_lshlrev_b16 v41.h, 8, v72.l
	v_perm_b32 v51, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v52, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v53, v25, v21, 0x5010400
	v_perm_b32 v64, v25, v21, 0x7030602
	v_or_b16 v10.l, v10.l, v34.l
	v_or_b16 v10.h, v10.h, v34.h
	v_lshrrev_b32_e32 v34, 8, v50
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_lshrrev_b32_e32 v35, 24, v50
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_lshrrev_b32_e32 v36, 8, v22
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_lshrrev_b32_e32 v37, 24, v22
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	v_and_b16 v18.l, 0xff, v50.l
	v_and_b16 v18.h, 0xff, v50.h
	v_and_b16 v19.l, 0xff, v22.l
	v_and_b16 v19.h, 0xff, v22.h
	v_and_b16 v20.l, 0xff, v51.l
	v_lshrrev_b32_e32 v38, 8, v51
	v_lshrrev_b32_e32 v39, 24, v51
	v_and_b16 v20.h, 0xff, v51.h
	v_and_b16 v21.l, 0xff, v23.l
	v_lshrrev_b32_e32 v40, 8, v23
	v_lshrrev_b32_e32 v41, 24, v23
	v_and_b16 v21.h, 0xff, v23.h
	v_and_b16 v22.l, 0xff, v52.l
	v_lshrrev_b32_e32 v50, 8, v52
	v_lshrrev_b32_e32 v51, 24, v52
	v_and_b16 v22.h, 0xff, v52.h
	v_and_b16 v23.l, 0xff, v24.l
	v_lshrrev_b32_e32 v52, 8, v24
	v_lshrrev_b32_e32 v65, 24, v24
	v_and_b16 v23.h, 0xff, v24.h
	v_and_b16 v24.l, 0xff, v53.l
	v_lshrrev_b32_e32 v66, 8, v53
	v_lshrrev_b32_e32 v67, 24, v53
	v_and_b16 v24.h, 0xff, v53.h
	v_lshrrev_b32_e32 v53, 8, v64
	v_lshrrev_b32_e32 v68, 24, v64
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[26:29] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v43, v10
	ds_store_b16_d16_hi v43, v10 offset:64
	ds_store_b16 v44, v11
	ds_store_b16_d16_hi v44, v11 offset:64
	ds_store_b16 v45, v12
	ds_store_b16_d16_hi v45, v12 offset:64
	ds_store_b16 v46, v13
	ds_store_b16_d16_hi v46, v13 offset:64
	ds_store_b16 v47, v14
	ds_store_b16_d16_hi v47, v14 offset:64
	ds_store_b16 v43, v15 offset:640
	ds_store_b16_d16_hi v43, v15 offset:704
	ds_store_b16 v48, v16
	ds_store_b16_d16_hi v48, v16 offset:64
	ds_store_b16 v49, v17
	ds_store_b16_d16_hi v49, v17 offset:64
	v_lshlrev_b16 v10.l, 8, v34.l
	v_lshlrev_b16 v10.h, 8, v35.l
	v_lshlrev_b16 v11.l, 8, v36.l
	v_lshlrev_b16 v11.h, 8, v37.l
	v_and_b16 v25.l, 0xff, v64.l
	v_and_b16 v25.h, 0xff, v64.h
	v_lshlrev_b16 v12.l, 8, v38.l
	v_lshlrev_b16 v12.h, 8, v39.l
	v_lshlrev_b16 v13.l, 8, v40.l
	v_lshlrev_b16 v13.h, 8, v41.l
	v_lshlrev_b16 v14.l, 8, v50.l
	v_lshlrev_b16 v14.h, 8, v51.l
	v_lshlrev_b16 v15.l, 8, v52.l
	v_lshlrev_b16 v15.h, 8, v65.l
	v_lshlrev_b16 v16.l, 8, v66.l
	v_lshlrev_b16 v16.h, 8, v67.l
	v_lshlrev_b16 v17.l, 8, v53.l
	v_lshlrev_b16 v17.h, 8, v68.l
	v_or_b16 v10.l, v18.l, v10.l
	v_or_b16 v10.h, v18.h, v10.h
	v_or_b16 v11.l, v19.l, v11.l
	v_or_b16 v11.h, v19.h, v11.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.l, v20.l, v12.l
	v_or_b16 v12.h, v20.h, v12.h
	v_or_b16 v13.l, v21.l, v13.l
	v_or_b16 v13.h, v21.h, v13.h
	v_or_b16 v14.l, v22.l, v14.l
	v_or_b16 v14.h, v22.h, v14.h
	v_or_b16 v15.l, v23.l, v15.l
	v_or_b16 v15.h, v23.h, v15.h
	v_or_b16 v16.l, v24.l, v16.l
	v_or_b16 v16.h, v24.h, v16.h
	v_or_b16 v17.l, v25.l, v17.l
	v_or_b16 v17.h, v25.h, v17.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[30:33] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v43, v10 offset:8192
	ds_store_b16_d16_hi v43, v10 offset:8256
	ds_store_b16 v44, v11 offset:8192
	ds_store_b16_d16_hi v44, v11 offset:8256
	ds_store_b16 v45, v12 offset:8192
	ds_store_b16_d16_hi v45, v12 offset:8256
	ds_store_b16 v46, v13 offset:8192
	ds_store_b16_d16_hi v46, v13 offset:8256
	ds_store_b16 v47, v14 offset:8192
	ds_store_b16_d16_hi v47, v14 offset:8256
	ds_store_b16 v43, v15 offset:8832
	ds_store_b16_d16_hi v43, v15 offset:8896
	ds_store_b16 v48, v16 offset:8192
	ds_store_b16_d16_hi v48, v16 offset:8256
	ds_store_b16 v49, v17 offset:8192
	ds_store_b16_d16_hi v49, v17 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 8, v0
	v_and_b32_e32 v11, 32, v0
	v_and_b32_e32 v64, 0x800, v8
	v_lshl_or_b32 v65, v4, 6, v9
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
.LBB0_3:                                ; %Flow93
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
	v_and_or_b32 v53, v7, 16, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v6, v0, 5, 1
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v5, s7, v5
	v_bfe_i32 v7, v0, 3, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add3_u32 v3, s7, v3, 0x80
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s8, 6
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s1, s6, 7
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v6, 0x420, v6
	v_add_nc_u32_e32 v10, 0x81, v5
	v_add_nc_u32_e32 v5, 0x80, v5
	v_lshl_or_b32 v65, v4, 6, v9
	v_mul_lo_u32 v3, s24, v3
	v_and_or_b32 v4, 0x210, v7, v6
	v_mul_lo_u32 v6, s25, v10
	v_mul_lo_u32 v5, s25, v5
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v4, v4, v65
	v_mov_b32_e32 v51, 0
	v_add3_u32 v72, v3, s27, v2
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_add3_u32 v6, v6, s1, v1
	v_add3_u32 v1, v5, s1, v1
	s_lshl_b32 s1, s5, 7
	s_mov_b32 s5, s4
	v_and_b32_e32 v64, 0x800, v8
	v_subrev_nc_u32_e32 v67, s1, v6
	v_subrev_nc_u32_e32 v68, s1, v1
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v43, 0
	v_or_b32_e32 v66, v4, v64
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v69, 16, v66
	v_xor_b32_e32 v70, 32, v66
	v_xor_b32_e32 v71, 48, v66
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v28, 0
	s_add_i32 s30, s0, -2
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s0, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[17:20], v72, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v68, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v67, s[20:23], 0 offen
	s_mov_b32 s6, s24
	s_mov_b32 s24, s1
	s_mov_b32 s1, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v73, s6, v53
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v74, s1, v66
	v_add_nc_u32_e32 v75, s1, v69
	v_add_nc_u32_e32 v76, s1, v70
	v_add_nc_u32_e32 v77, s1, v71
	ds_load_b128 v[97:100], v74
	ds_load_b128 v[105:108], v74 offset:4096
	ds_load_b128 v[109:112], v75
	ds_load_b128 v[113:116], v75 offset:4096
	ds_load_b128 v[117:120], v76
	ds_load_b128 v[121:124], v76 offset:4096
	ds_load_b128 v[125:128], v77
	ds_load_b128 v[129:132], v77 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v74, v73 offset:64
	ds_load_u8 v75, v73
	ds_load_u8 v76, v73 offset:192
	ds_load_u8 v77, v73 offset:128
	ds_load_u8 v78, v73 offset:224
	ds_load_u8 v79, v73 offset:160
	ds_load_u8 v80, v73 offset:96
	ds_load_u8 v81, v73 offset:32
	ds_load_u8 v82, v73 offset:832
	ds_load_u8 v83, v73 offset:768
	ds_load_u8 v84, v73 offset:960
	ds_load_u8 v85, v73 offset:896
	ds_load_u8 v86, v73 offset:992
	ds_load_u8 v87, v73 offset:928
	ds_load_u8 v88, v73 offset:864
	ds_load_u8 v89, v73 offset:800
	ds_load_u8 v90, v73 offset:576
	ds_load_u8 v91, v73 offset:512
	ds_load_u8 v92, v73 offset:704
	ds_load_u8 v93, v73 offset:640
	ds_load_u8 v94, v73 offset:736
	ds_load_u8 v95, v73 offset:672
	ds_load_u8 v96, v73 offset:608
	ds_load_u8 v101, v73 offset:544
	ds_load_u8 v102, v73 offset:320
	ds_load_u8 v103, v73 offset:256
	ds_load_u8 v104, v73 offset:448
	ds_load_u8 v133, v73 offset:384
	ds_load_u8 v134, v73 offset:480
	ds_load_u8 v135, v73 offset:416
	ds_load_u8 v136, v73 offset:352
	ds_load_u8 v137, v73 offset:288
	ds_load_u8 v138, v73 offset:1856
	ds_load_u8 v139, v73 offset:1792
	ds_load_u8 v140, v73 offset:1984
	ds_load_u8 v141, v73 offset:1920
	ds_load_u8 v142, v73 offset:2016
	ds_load_u8 v143, v73 offset:1952
	ds_load_u8 v144, v73 offset:1888
	ds_load_u8 v145, v73 offset:1824
	ds_load_u8 v146, v73 offset:1600
	ds_load_u8 v147, v73 offset:1536
	ds_load_u8 v148, v73 offset:1728
	ds_load_u8 v149, v73 offset:1664
	ds_load_u8 v150, v73 offset:1760
	ds_load_u8 v151, v73 offset:1696
	ds_load_u8 v152, v73 offset:1632
	ds_load_u8 v153, v73 offset:1568
	ds_load_u8 v154, v73 offset:1344
	ds_load_u8 v155, v73 offset:1280
	ds_load_u8 v156, v73 offset:1472
	ds_load_u8 v157, v73 offset:1408
	ds_load_u8 v158, v73 offset:1504
	ds_load_u8 v159, v73 offset:1440
	ds_load_u8 v160, v73 offset:1376
	ds_load_u8 v161, v73 offset:1312
	ds_load_u8 v162, v73 offset:1088
	ds_load_u8 v163, v73 offset:1024
	ds_load_u8 v164, v73 offset:1216
	ds_load_u8 v165, v73 offset:1152
	ds_load_u8 v166, v73 offset:1248
	ds_load_u8 v167, v73 offset:1184
	ds_load_u8 v168, v73 offset:1120
	ds_load_u8 v169, v73 offset:1056
	ds_load_u8 v170, v73 offset:2880
	ds_load_u8 v171, v73 offset:2816
	ds_load_u8 v172, v73 offset:3008
	ds_load_u8 v173, v73 offset:2944
	ds_load_u8 v174, v73 offset:3040
	ds_load_u8 v175, v73 offset:2976
	ds_load_u8 v176, v73 offset:2912
	ds_load_u8 v177, v73 offset:2848
	ds_load_u8 v178, v73 offset:2624
	ds_load_u8 v179, v73 offset:2560
	ds_load_u8 v180, v73 offset:2752
	ds_load_u8 v181, v73 offset:2688
	ds_load_u8 v182, v73 offset:2784
	ds_load_u8 v183, v73 offset:2720
	ds_load_u8 v184, v73 offset:2656
	ds_load_u8 v185, v73 offset:2592
	ds_load_u8 v186, v73 offset:2368
	ds_load_u8 v187, v73 offset:2304
	ds_load_u8 v188, v73 offset:2496
	ds_load_u8 v189, v73 offset:2432
	ds_load_u8 v190, v73 offset:2528
	ds_load_u8 v191, v73 offset:2464
	ds_load_u8 v192, v73 offset:2400
	ds_load_u8 v193, v73 offset:2336
	ds_load_u8 v194, v73 offset:2112
	ds_load_u8 v195, v73 offset:2048
	ds_load_u8 v196, v73 offset:2240
	ds_load_u8 v197, v73 offset:2176
	ds_load_u8 v198, v73 offset:2272
	ds_load_u8 v199, v73 offset:2208
	ds_load_u8 v200, v73 offset:2144
	ds_load_u8 v201, v73 offset:2080
	ds_load_u8 v202, v73 offset:3904
	ds_load_u8 v203, v73 offset:3840
	ds_load_u8 v204, v73 offset:4032
	ds_load_u8 v205, v73 offset:3968
	ds_load_u8 v206, v73 offset:4064
	ds_load_u8 v207, v73 offset:4000
	ds_load_u8 v208, v73 offset:3936
	ds_load_u8 v209, v73 offset:3872
	ds_load_u8 v210, v73 offset:3648
	ds_load_u8 v211, v73 offset:3584
	ds_load_u8 v212, v73 offset:3776
	ds_load_u8 v213, v73 offset:3712
	ds_load_u8 v214, v73 offset:3808
	ds_load_u8 v215, v73 offset:3744
	ds_load_u8 v216, v73 offset:3680
	ds_load_u8 v217, v73 offset:3616
	ds_load_u8 v218, v73 offset:3392
	ds_load_u8 v219, v73 offset:3328
	ds_load_u8 v220, v73 offset:3520
	ds_load_u8 v221, v73 offset:3456
	ds_load_u8 v222, v73 offset:3552
	ds_load_u8 v223, v73 offset:3488
	ds_load_u8 v224, v73 offset:3424
	ds_load_u8 v225, v73 offset:3360
	ds_load_u8 v226, v73 offset:3136
	ds_load_u8 v227, v73 offset:3072
	ds_load_u8 v228, v73 offset:3264
	ds_load_u8 v229, v73 offset:3200
	ds_load_u8 v230, v73 offset:3296
	ds_load_u8 v231, v73 offset:3232
	ds_load_u8 v232, v73 offset:3168
	ds_load_u8 v73, v73 offset:3104
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v83, v85, v84, 0xc0c0004
	v_perm_b32 v84, v91, v90, 0xc0c0004
	v_perm_b32 v85, v93, v92, 0xc0c0004
	v_perm_b32 v90, v103, v102, 0xc0c0004
	v_perm_b32 v93, v133, v104, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v75, v77, v76, 0xc0c0004
	v_perm_b32 v76, v139, v138, 0xc0c0004
	v_perm_b32 v77, v141, v140, 0xc0c0004
	v_perm_b32 v102, v147, v146, 0xc0c0004
	v_perm_b32 v103, v149, v148, 0xc0c0004
	v_perm_b32 v104, v155, v154, 0xc0c0004
	v_perm_b32 v133, v157, v156, 0xc0c0004
	v_perm_b32 v138, v163, v162, 0xc0c0004
	v_perm_b32 v139, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v147, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v156, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v157, v205, v204, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v79, v145, v144, 0xc0c0004
	v_perm_b32 v81, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v232, 0xc0c0004
	v_perm_b32 v181, v231, v230, 0xc0c0004
	v_lshl_or_b32 v92, v83, 16, v82
	v_lshl_or_b32 v91, v85, 16, v84
	v_lshl_or_b32 v90, v93, 16, v90
	v_lshl_or_b32 v89, v75, 16, v74
	v_perm_b32 v140, v171, v170, 0xc0c0004
	v_perm_b32 v141, v173, v172, 0xc0c0004
	v_perm_b32 v146, v179, v178, 0xc0c0004
	v_perm_b32 v148, v187, v186, 0xc0c0004
	v_perm_b32 v149, v189, v188, 0xc0c0004
	v_perm_b32 v154, v195, v194, 0xc0c0004
	v_perm_b32 v155, v197, v196, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_perm_b32 v87, v101, v96, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v137, v136, 0xc0c0004
	v_perm_b32 v96, v135, v134, 0xc0c0004
	v_perm_b32 v101, v153, v152, 0xc0c0004
	v_lshl_or_b32 v136, v77, 16, v76
	v_lshl_or_b32 v135, v103, 16, v102
	v_lshl_or_b32 v134, v133, 16, v104
	v_lshl_or_b32 v133, v139, 16, v138
	v_lshl_or_b32 v144, v157, 16, v156
	v_lshl_or_b32 v145, v78, 16, v80
	v_lshl_or_b32 v152, v81, 16, v79
	v_lshl_or_b32 v157, v181, 16, v73
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v162, v211, v210, 0xc0c0004
	v_perm_b32 v163, v213, v212, 0xc0c0004
	v_perm_b32 v164, v219, v218, 0xc0c0004
	v_perm_b32 v165, v221, v220, 0xc0c0004
	v_perm_b32 v170, v227, v226, 0xc0c0004
	v_perm_b32 v171, v229, v228, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_perm_b32 v153, v161, v160, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	v_perm_b32 v159, v169, v168, 0xc0c0004
	v_perm_b32 v160, v167, v166, 0xc0c0004
	v_lshl_or_b32 v140, v141, 16, v140
	v_lshl_or_b32 v139, v147, 16, v146
	v_lshl_or_b32 v138, v149, 16, v148
	v_lshl_or_b32 v137, v155, 16, v154
	v_lshl_or_b32 v148, v86, 16, v88
	v_lshl_or_b32 v147, v94, 16, v87
	v_lshl_or_b32 v146, v96, 16, v95
	v_wmma_i32_16x16x16_iu8 v[73:80], v[109:112], v[133:136], v[73:80] neg_lo:[1,1,0]
	s_mov_b32 s4, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v161, v177, v176, 0xc0c0004
	v_perm_b32 v166, v175, v174, 0xc0c0004
	v_perm_b32 v167, v185, v184, 0xc0c0004
	v_perm_b32 v168, v183, v182, 0xc0c0004
	v_perm_b32 v169, v193, v192, 0xc0c0004
	v_perm_b32 v172, v191, v190, 0xc0c0004
	v_perm_b32 v173, v201, v200, 0xc0c0004
	v_perm_b32 v174, v199, v198, 0xc0c0004
	v_lshl_or_b32 v143, v163, 16, v162
	v_lshl_or_b32 v142, v165, 16, v164
	v_lshl_or_b32 v141, v171, 16, v170
	v_lshl_or_b32 v151, v150, 16, v101
	v_lshl_or_b32 v150, v158, 16, v153
	v_lshl_or_b32 v149, v160, 16, v159
	v_wmma_i32_16x16x16_iu8 v[81:88], v[105:108], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[117:120], v[137:140], v[73:80] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s0, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v175, v209, v208, 0xc0c0004
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s0, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v176, v207, v206, 0xc0c0004
	v_perm_b32 v177, v217, v216, 0xc0c0004
	v_perm_b32 v178, v215, v214, 0xc0c0004
	v_perm_b32 v179, v225, v224, 0xc0c0004
	v_perm_b32 v180, v223, v222, 0xc0c0004
	v_lshl_or_b32 v156, v166, 16, v161
	v_lshl_or_b32 v155, v168, 16, v167
	v_lshl_or_b32 v154, v172, 16, v169
	v_lshl_or_b32 v153, v174, 16, v173
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[113:116], v[133:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[109:112], v[149:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[125:128], v[141:144], v[73:80] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s0, s5, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v160, v176, 16, v175
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s0, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v159, v178, 16, v177
	v_lshl_or_b32 v158, v180, 16, v179
	v_wmma_i32_16x16x16_iu8 v[97:104], v[113:116], v[149:152], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[121:124], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[117:120], v[153:156], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v233, s6, v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[97:104], v[121:124], v[153:156], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[129:132], v[141:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[125:128], v[157:160], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v42, v73 :: v_dual_add_nc_u32 v67, s28, v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[97:104], v[129:132], v[157:160], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v74
	v_dual_add_f32 v51, v51, v75 :: v_dual_add_nc_u32 v68, s28, v68
	v_add_f32_e32 v50, v50, v76
	v_dual_add_f32 v49, v49, v77 :: v_dual_add_nc_u32 v72, s29, v72
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s6, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v78
	v_dual_add_f32 v43, v43, v83 :: v_dual_add_nc_u32 v234, s0, v57
	v_dual_add_f32 v40, v40, v85 :: v_dual_add_nc_u32 v235, s0, v58
	v_dual_add_f32 v41, v41, v84 :: v_dual_add_nc_u32 v236, s0, v59
	v_dual_add_f32 v44, v44, v82 :: v_dual_add_nc_u32 v237, s0, v60
	v_dual_add_f32 v39, v39, v86 :: v_dual_add_nc_u32 v238, s0, v61
	v_dual_add_f32 v38, v38, v87 :: v_dual_add_nc_u32 v239, s0, v62
	v_dual_add_f32 v37, v37, v88 :: v_dual_add_nc_u32 v240, s0, v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v91
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v79
	v_dual_add_f32 v45, v45, v81 :: v_dual_add_f32 v22, v22, v90
	v_dual_add_f32 v21, v21, v89 :: v_dual_add_f32 v34, v34, v92
	v_dual_add_f32 v33, v33, v91 :: v_dual_add_f32 v24, v24, v94
	v_dual_add_f32 v23, v23, v93 :: v_dual_add_f32 v30, v30, v96
	v_dual_add_f32 v29, v29, v95 :: v_dual_add_f32 v32, v32, v98
	v_dual_add_f32 v31, v31, v97 :: v_dual_add_f32 v36, v36, v100
	v_dual_add_f32 v35, v35, v99 :: v_dual_add_f32 v26, v26, v102
	v_dual_add_f32 v25, v25, v101 :: v_dual_add_f32 v28, v28, v104
	v_add_f32_e32 v27, v27, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s30, s30, -1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s6, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s30, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v233, v[17:20] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v19, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v20, v16, v12, 0x5010400
	v_perm_b32 v73, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v74, 8, v17
	v_lshrrev_b32_e32 v75, 24, v17
	v_lshrrev_b32_e32 v76, 8, v13
	v_lshrrev_b32_e32 v77, 24, v13
	v_lshrrev_b32_e32 v78, 8, v18
	v_and_b16 v9.l, 0xff, v17.l
	v_lshrrev_b32_e32 v79, 24, v18
	v_lshrrev_b32_e32 v80, 8, v14
	v_lshrrev_b32_e32 v81, 24, v14
	v_lshrrev_b32_e32 v82, 8, v19
	v_lshrrev_b32_e32 v83, 24, v19
	v_lshrrev_b32_e32 v84, 8, v15
	v_lshrrev_b32_e32 v85, 24, v15
	v_lshrrev_b32_e32 v86, 8, v20
	v_lshrrev_b32_e32 v87, 24, v20
	v_lshrrev_b32_e32 v88, 8, v73
	v_lshrrev_b32_e32 v89, 24, v73
	v_lshlrev_b16 v17.l, 8, v74.l
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v75.l
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v76.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v77.l
	v_and_b16 v13.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v78.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.h, 0xff, v19.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v20.l
	v_and_b16 v15.h, 0xff, v20.h
	v_and_b16 v16.l, 0xff, v73.l
	v_and_b16 v16.h, 0xff, v73.h
	v_lshlrev_b16 v19.h, 8, v79.l
	v_lshlrev_b16 v20.l, 8, v80.l
	v_lshlrev_b16 v20.h, 8, v81.l
	v_lshlrev_b16 v73.l, 8, v82.l
	v_lshlrev_b16 v73.h, 8, v83.l
	v_lshlrev_b16 v74.l, 8, v84.l
	v_lshlrev_b16 v74.h, 8, v85.l
	v_lshlrev_b16 v75.l, 8, v86.l
	v_lshlrev_b16 v75.h, 8, v87.l
	v_lshlrev_b16 v76.l, 8, v88.l
	v_lshlrev_b16 v76.h, 8, v89.l
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v73.l
	v_or_b16 v13.h, v13.h, v73.h
	v_or_b16 v14.l, v14.l, v74.l
	v_or_b16 v14.h, v14.h, v74.h
	v_or_b16 v15.l, v15.l, v75.l
	v_or_b16 v15.h, v15.h, v75.h
	v_or_b16 v16.l, v16.l, v76.l
	v_or_b16 v16.h, v16.h, v76.h
	ds_store_b16 v234, v9
	ds_store_b16_d16_hi v234, v9 offset:64
	ds_store_b16 v235, v10
	ds_store_b16_d16_hi v235, v10 offset:64
	ds_store_b16 v236, v11
	ds_store_b16_d16_hi v236, v11 offset:64
	ds_store_b16 v237, v12
	ds_store_b16_d16_hi v237, v12 offset:64
	ds_store_b16 v238, v13
	ds_store_b16_d16_hi v238, v13 offset:64
	ds_store_b16 v234, v14 offset:640
	ds_store_b16_d16_hi v234, v14 offset:704
	ds_store_b16 v239, v15
	ds_store_b16_d16_hi v239, v15 offset:64
	ds_store_b16 v240, v16
	ds_store_b16_d16_hi v240, v16 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v10, v55 :: v_dual_mov_b32 v11, v56
	s_mov_b32 s9, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v21, 0
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s0, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v22, v21
	v_mov_b32_e32 v37, v21
	v_mov_b32_e32 v38, v21
	v_mov_b32_e32 v39, v21
	v_mov_b32_e32 v40, v21
	v_dual_mov_b32 v24, v22 :: v_dual_mov_b32 v23, v21
	v_dual_mov_b32 v34, v22 :: v_dual_mov_b32 v33, v21
	v_dual_mov_b32 v30, v22 :: v_dual_mov_b32 v29, v21
	v_dual_mov_b32 v32, v22 :: v_dual_mov_b32 v31, v21
	v_dual_mov_b32 v26, v22 :: v_dual_mov_b32 v25, v21
	v_dual_mov_b32 v36, v22 :: v_dual_mov_b32 v35, v21
	v_dual_mov_b32 v28, v22 :: v_dual_mov_b32 v27, v21
	v_mov_b32_e32 v41, v21
	v_mov_b32_e32 v43, v21
	v_mov_b32_e32 v44, v21
	v_mov_b32_e32 v45, v21
	v_mov_b32_e32 v46, v21
	v_mov_b32_e32 v47, v21
	v_mov_b32_e32 v48, v21
	v_mov_b32_e32 v49, v21
	v_mov_b32_e32 v50, v21
	v_mov_b32_e32 v51, v21
	v_mov_b32_e32 v52, v21
	v_mov_b32_e32 v42, v21
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v64
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
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
	v_add_nc_u32_e32 v110, s9, v4
	v_add_nc_u32_e32 v5, s9, v2
	v_add_nc_u32_e32 v55, s9, v3
	v_add_nc_u32_e32 v10, s9, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s9, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v54, s24, v53
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v6, v54 offset:832
	ds_load_u8 v7, v54 offset:768
	ds_load_u8 v8, v54 offset:960
	ds_load_u8 v9, v54 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[70:73], v110
	ds_load_b128 v[74:77], v5 offset:4096
	ds_load_b128 v[78:81], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v5, v54 offset:576
	ds_load_u8 v11, v54 offset:512
	ds_load_u8 v12, v54 offset:704
	ds_load_u8 v13, v54 offset:640
	ds_load_u8 v14, v54 offset:320
	ds_load_u8 v15, v54 offset:256
	ds_load_u8 v16, v54 offset:448
	ds_load_u8 v17, v54 offset:384
	ds_load_u8 v106, v54 offset:992
	ds_load_u8 v107, v54 offset:928
	ds_load_u8 v108, v54 offset:864
	ds_load_u8 v109, v54 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v10 offset:4096
	ds_load_b128 v[86:89], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v11, v5, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v17, v16, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v64, v11, 16, v5
	v_perm_b32 v7, v9, v8, 0xc0c0004
	ds_load_u8 v8, v54 offset:64
	ds_load_u8 v9, v54
	ds_load_u8 v18, v54 offset:192
	ds_load_u8 v19, v54 offset:128
	ds_load_u8 v111, v54 offset:736
	ds_load_u8 v112, v54 offset:672
	ds_load_u8 v113, v54 offset:608
	ds_load_u8 v114, v54 offset:544
	v_lshl_or_b32 v63, v13, 16, v12
	v_lshl_or_b32 v65, v7, 16, v6
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v6, 16, v5
	v_dual_mov_b32 v12, s11 :: v_dual_mov_b32 v11, s10
	ds_load_u8 v13, v54 offset:1856
	ds_load_u8 v14, v54 offset:1792
	ds_load_u8 v15, v54 offset:1984
	ds_load_u8 v16, v54 offset:1920
	ds_load_u8 v17, v54 offset:1600
	ds_load_u8 v18, v54 offset:1536
	ds_load_u8 v19, v54 offset:1728
	ds_load_u8 v20, v54 offset:1664
	ds_load_u8 v56, v54 offset:1344
	ds_load_u8 v57, v54 offset:1280
	ds_load_u8 v58, v54 offset:1472
	ds_load_u8 v59, v54 offset:1408
	ds_load_u8 v123, v54 offset:2016
	ds_load_u8 v124, v54 offset:1952
	ds_load_u8 v125, v54 offset:1888
	ds_load_u8 v126, v54 offset:1824
	ds_load_u8 v98, v54 offset:2368
	ds_load_u8 v99, v54 offset:2304
	ds_load_u8 v102, v54 offset:2496
	ds_load_u8 v103, v54 offset:2432
	ds_load_u8 v104, v54 offset:2112
	ds_load_u8 v105, v54 offset:2048
	ds_load_u8 v143, v54 offset:2240
	ds_load_u8 v144, v54 offset:2176
	ds_load_u8 v145, v54 offset:2784
	ds_load_u8 v146, v54 offset:2720
	ds_load_u8 v147, v54 offset:2656
	ds_load_u8 v148, v54 offset:2592
	v_dual_mov_b32 v10, s9 :: v_dual_mov_b32 v9, s8
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v5, s4
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	ds_load_u8 v115, v54 offset:480
	ds_load_u8 v116, v54 offset:416
	ds_load_u8 v117, v54 offset:352
	ds_load_u8 v118, v54 offset:288
	ds_load_u8 v119, v54 offset:224
	ds_load_u8 v120, v54 offset:160
	ds_load_u8 v121, v54 offset:96
	ds_load_u8 v122, v54 offset:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v66, v18, v17, 0xc0c0004
	ds_load_u8 v131, v54 offset:1504
	ds_load_u8 v132, v54 offset:1440
	ds_load_u8 v133, v54 offset:1376
	ds_load_u8 v134, v54 offset:1312
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v67, v20, v19, 0xc0c0004
	ds_load_u8 v149, v54 offset:2528
	ds_load_u8 v150, v54 offset:2464
	ds_load_u8 v151, v54 offset:2400
	ds_load_u8 v152, v54 offset:2336
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v153, v54 offset:2272
	ds_load_u8 v154, v54 offset:2208
	ds_load_u8 v155, v54 offset:2144
	ds_load_u8 v156, v54 offset:2080
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v57, v59, v58, 0xc0c0004
	v_perm_b32 v60, v14, v13, 0xc0c0004
	ds_load_u8 v58, v54 offset:2880
	ds_load_u8 v59, v54 offset:2816
	ds_load_u8 v90, v54 offset:3008
	ds_load_u8 v91, v54 offset:2944
	ds_load_u8 v135, v54 offset:1248
	ds_load_u8 v136, v54 offset:1184
	ds_load_u8 v137, v54 offset:1120
	ds_load_u8 v138, v54 offset:1056
	v_perm_b32 v61, v16, v15, 0xc0c0004
	ds_load_u8 v13, v54 offset:1088
	ds_load_u8 v14, v54 offset:1024
	ds_load_u8 v15, v54 offset:1216
	ds_load_u8 v16, v54 offset:1152
	ds_load_u8 v127, v54 offset:1760
	ds_load_u8 v128, v54 offset:1696
	ds_load_u8 v129, v54 offset:1632
	ds_load_u8 v130, v54 offset:1568
	v_lshl_or_b32 v68, v67, 16, v66
	v_lshl_or_b32 v67, v57, 16, v56
	ds_load_u8 v164, v54 offset:3808
	ds_load_u8 v165, v54 offset:3744
	ds_load_u8 v166, v54 offset:3680
	ds_load_u8 v167, v54 offset:3616
	v_lshl_or_b32 v69, v61, 16, v60
	ds_load_u8 v56, v54 offset:2624
	ds_load_u8 v57, v54 offset:2560
	ds_load_u8 v60, v54 offset:2752
	ds_load_u8 v61, v54 offset:2688
	ds_load_u8 v139, v54 offset:3040
	ds_load_u8 v140, v54 offset:2976
	ds_load_u8 v141, v54 offset:2912
	ds_load_u8 v142, v54 offset:2848
	ds_load_u8 v168, v54 offset:3552
	ds_load_u8 v169, v54 offset:3488
	ds_load_u8 v170, v54 offset:3424
	ds_load_u8 v171, v54 offset:3360
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v92, v14, v13, 0xc0c0004
	v_perm_b32 v59, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v93, v16, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[86:89], v[62:65], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v101, v59, 16, v58
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v57, v61, v60, 0xc0c0004
	v_lshl_or_b32 v66, v93, 16, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[90:93], v55 offset:4096
	ds_load_b128 v[94:97], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v55, v99, v98, 0xc0c0004
	v_perm_b32 v58, v144, v143, 0xc0c0004
	v_lshl_or_b32 v100, v57, 16, v56
	v_perm_b32 v56, v103, v102, 0xc0c0004
	v_perm_b32 v57, v105, v104, 0xc0c0004
	ds_load_u8 v59, v54 offset:3904
	ds_load_u8 v60, v54 offset:3840
	ds_load_u8 v61, v54 offset:4032
	ds_load_u8 v102, v54 offset:3968
	v_wmma_i32_16x16x16_iu8 v[13:20], v[78:81], v[66:69], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v56, 16, v55
	v_lshl_or_b32 v98, v58, 16, v57
	ds_load_u8 v55, v54 offset:3648
	ds_load_u8 v56, v54 offset:3584
	ds_load_u8 v57, v54 offset:3776
	ds_load_u8 v58, v54 offset:3712
	ds_load_u8 v103, v54 offset:3392
	ds_load_u8 v104, v54 offset:3328
	ds_load_u8 v105, v54 offset:3520
	ds_load_u8 v143, v54 offset:3456
	ds_load_u8 v144, v54 offset:3136
	ds_load_u8 v157, v54 offset:3072
	ds_load_u8 v158, v54 offset:3264
	ds_load_u8 v159, v54 offset:3200
	ds_load_u8 v160, v54 offset:4064
	ds_load_u8 v161, v54 offset:4000
	ds_load_u8 v162, v54 offset:3936
	ds_load_u8 v163, v54 offset:3872
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[94:97], v[98:101], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v143, v105, 0xc0c0004
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v143, v54 offset:3296
	ds_load_u8 v172, v54 offset:3232
	ds_load_u8 v173, v54 offset:3168
	ds_load_u8 v174, v54 offset:3104
	v_perm_b32 v60, v102, v61, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v157, v144, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v159, v158, 0xc0c0004
	v_lshl_or_b32 v104, v56, 16, v55
	v_lshl_or_b32 v103, v58, 16, v57
	v_lshl_or_b32 v105, v60, 16, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v61, 16, v54
	v_wmma_i32_16x16x16_iu8 v[13:20], v[70:73], v[102:105], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v51, v51, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[54:61], v[82:85], v[62:65], v[5:12] neg_lo:[1,1,0]
	v_perm_b32 v62, v109, v108, 0xc0c0004
	v_perm_b32 v63, v107, v106, 0xc0c0004
	v_perm_b32 v64, v114, v113, 0xc0c0004
	v_perm_b32 v65, v112, v111, 0xc0c0004
	v_perm_b32 v106, v118, v117, 0xc0c0004
	v_perm_b32 v107, v116, v115, 0xc0c0004
	v_perm_b32 v111, v122, v121, 0xc0c0004
	v_perm_b32 v112, v120, v119, 0xc0c0004
	v_lshl_or_b32 v109, v63, 16, v62
	v_lshl_or_b32 v108, v65, 16, v64
	v_lshl_or_b32 v107, v107, 16, v106
	v_perm_b32 v113, v130, v129, 0xc0c0004
	v_lshl_or_b32 v106, v112, 16, v111
	v_perm_b32 v111, v126, v125, 0xc0c0004
	v_perm_b32 v112, v124, v123, 0xc0c0004
	v_perm_b32 v114, v128, v127, 0xc0c0004
	v_perm_b32 v115, v134, v133, 0xc0c0004
	v_perm_b32 v116, v132, v131, 0xc0c0004
	v_perm_b32 v117, v138, v137, 0xc0c0004
	v_perm_b32 v118, v136, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[74:77], v[66:69], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[86:89], v[106:109], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v112, 16, v111
	v_lshl_or_b32 v88, v114, 16, v113
	v_lshl_or_b32 v87, v116, 16, v115
	v_lshl_or_b32 v86, v118, 16, v117
	v_perm_b32 v111, v142, v141, 0xc0c0004
	v_perm_b32 v112, v140, v139, 0xc0c0004
	v_perm_b32 v113, v148, v147, 0xc0c0004
	v_perm_b32 v114, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[78:81], v[86:89], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v115, v152, v151, 0xc0c0004
	v_lshl_or_b32 v81, v112, 16, v111
	v_perm_b32 v116, v150, v149, 0xc0c0004
	v_lshl_or_b32 v80, v114, 16, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[110:113], v110 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v117, v156, v155, 0xc0c0004
	v_perm_b32 v118, v154, v153, 0xc0c0004
	v_lshl_or_b32 v79, v116, 16, v115
	v_wmma_i32_16x16x16_iu8 v[54:61], v[90:93], v[98:101], v[54:61] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v78, v118, 16, v117
	v_cvt_f32_i32_e32 v14, v16
	v_wmma_i32_16x16x16_iu8 v[5:12], v[82:85], v[106:109], v[5:12] neg_lo:[1,1,0]
	v_perm_b32 v82, v171, v170, 0xc0c0004
	v_perm_b32 v83, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[78:81], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v94, v163, v162, 0xc0c0004
	v_perm_b32 v95, v161, v160, 0xc0c0004
	v_perm_b32 v96, v167, v166, 0xc0c0004
	v_perm_b32 v97, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v84, v174, v173, 0xc0c0004
	v_perm_b32 v85, v172, v143, 0xc0c0004
	v_cvt_f32_i32_e32 v16, v18
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[110:113], v[102:105], v[54:61] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v50, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v20
	v_wmma_i32_16x16x16_iu8 v[5:12], v[74:77], v[86:89], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v95, 16, v94
	v_lshl_or_b32 v76, v97, 16, v96
	v_lshl_or_b32 v75, v83, 16, v82
	v_lshl_or_b32 v74, v85, 16, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v16, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v55
	v_wmma_i32_16x16x16_iu8 v[5:12], v[90:93], v[78:81], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[70:73], v[74:77], v[62:69] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v17, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v59
	v_wmma_i32_16x16x16_iu8 v[5:12], v[110:113], v[74:77], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v41, v41, v17 :: v_dual_add_f32 v40, v40, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v60
	v_cvt_f32_i32_e32 v17, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v16, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v22, v22, v17 :: v_dual_add_f32 v21, v21, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v65
	v_cvt_f32_i32_e32 v14, v64
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v16, v67
	v_cvt_f32_i32_e32 v17, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v34, v34, v15 :: v_dual_add_f32 v33, v33, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v69
	v_cvt_f32_i32_e32 v14, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v6 :: v_dual_add_f32 v31, v31, v5
	v_dual_add_f32 v36, v36, v8 :: v_dual_add_f32 v35, v35, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v6, v9
	v_cvt_f32_i32_e32 v7, v12
	v_cvt_f32_i32_e32 v8, v11
	v_cvt_f32_i32_e32 v9, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v16 :: v_dual_add_f32 v23, v23, v17
	v_dual_add_f32 v30, v30, v15 :: v_dual_add_f32 v29, v29, v14
	v_dual_add_f32 v26, v26, v5 :: v_dual_add_f32 v25, v25, v6
	v_dual_add_f32 v28, v28, v7 :: v_dual_add_f32 v27, v27, v8
	v_add_f32_e32 v42, v42, v9
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
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v71, s11 :: v_dual_add_nc_u32 v4, s0, v4
	v_dual_mov_b32 v68, s8 :: v_dual_add_nc_u32 v13, s1, v53
	v_dual_mov_b32 v70, s10 :: v_dual_add_nc_u32 v3, s0, v3
	v_dual_mov_b32 v69, s9 :: v_dual_add_nc_u32 v6, s0, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[72:75], v4 offset:4096
	ds_load_b128 v[76:79], v4
	ds_load_b128 v[80:83], v3 offset:4096
	ds_load_b128 v[84:87], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v66, s6 :: v_dual_add_nc_u32 v5, s0, v2
	ds_load_u8 v7, v13 offset:832
	ds_load_u8 v8, v13 offset:768
	ds_load_u8 v9, v13 offset:960
	ds_load_u8 v10, v13 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v6 offset:4096
	ds_load_b128 v[88:91], v6
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
	ds_load_u8 v54, v13 offset:192
	ds_load_u8 v55, v13 offset:128
	ds_load_u8 v62, v13 offset:992
	ds_load_u8 v63, v13 offset:928
	ds_load_u8 v104, v13 offset:864
	ds_load_u8 v105, v13 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v10, v9, 0xc0c0004
	ds_load_u8 v106, v13 offset:736
	ds_load_u8 v108, v13 offset:672
	ds_load_u8 v109, v13 offset:608
	ds_load_u8 v110, v13 offset:544
	ds_load_u8 v111, v13 offset:480
	ds_load_u8 v112, v13 offset:416
	ds_load_u8 v113, v13 offset:352
	ds_load_u8 v114, v13 offset:288
	ds_load_u8 v115, v13 offset:224
	ds_load_u8 v116, v13 offset:160
	ds_load_u8 v117, v13 offset:96
	ds_load_u8 v118, v13 offset:32
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v6, v11, v6, 0xc0c0004
	ds_load_u8 v127, v13 offset:1504
	ds_load_u8 v128, v13 offset:1440
	ds_load_u8 v129, v13 offset:1376
	ds_load_u8 v130, v13 offset:1312
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v9, v14, v12, 0xc0c0004
	ds_load_u8 v131, v13 offset:1248
	ds_load_u8 v132, v13 offset:1184
	ds_load_u8 v133, v13 offset:1120
	ds_load_u8 v134, v13 offset:1056
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	ds_load_u8 v145, v13 offset:2528
	ds_load_u8 v146, v13 offset:2464
	ds_load_u8 v147, v13 offset:2400
	ds_load_u8 v148, v13 offset:2336
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v11, v18, v17, 0xc0c0004
	ds_load_u8 v16, v13 offset:1984
	ds_load_u8 v17, v13 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v5 offset:4096
	ds_load_b128 v[96:99], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v12, v20, v19, 0xc0c0004
	ds_load_u8 v18, v13 offset:1600
	ds_load_u8 v19, v13 offset:1536
	ds_load_u8 v20, v13 offset:1728
	ds_load_u8 v58, v13 offset:1664
	ds_load_u8 v59, v13 offset:1344
	ds_load_u8 v60, v13 offset:1280
	ds_load_u8 v61, v13 offset:1472
	ds_load_u8 v100, v13 offset:1408
	ds_load_u8 v119, v13 offset:2016
	ds_load_u8 v120, v13 offset:1952
	ds_load_u8 v121, v13 offset:1888
	ds_load_u8 v122, v13 offset:1824
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v14, v55, v54, 0xc0c0004
	ds_load_u8 v149, v13 offset:2272
	ds_load_u8 v150, v13 offset:2208
	ds_load_u8 v151, v13 offset:2144
	ds_load_u8 v152, v13 offset:2080
	v_lshl_or_b32 v57, v8, 16, v7
	v_lshl_or_b32 v56, v9, 16, v6
	v_lshl_or_b32 v55, v11, 16, v10
	v_lshl_or_b32 v54, v14, 16, v12
	ds_load_u8 v14, v13 offset:1856
	ds_load_u8 v15, v13 offset:1792
	v_dual_mov_b32 v67, s7 :: v_dual_mov_b32 v64, s4
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_mov_b32_e32 v65, s5
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v58, v20, 0xc0c0004
	ds_load_u8 v162, v13 offset:3808
	ds_load_u8 v163, v13 offset:3744
	ds_load_u8 v164, v13 offset:3680
	ds_load_u8 v165, v13 offset:3616
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v60, v59, 0xc0c0004
	ds_load_u8 v168, v13 offset:3552
	ds_load_u8 v169, v13 offset:3488
	ds_load_u8 v170, v13 offset:3424
	ds_load_u8 v171, v13 offset:3360
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v13 offset:1216
	ds_load_u8 v102, v13 offset:1152
	ds_load_u8 v123, v13 offset:1760
	ds_load_u8 v124, v13 offset:1696
	ds_load_u8 v125, v13 offset:1632
	ds_load_u8 v126, v13 offset:1568
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v58, v100, v61, 0xc0c0004
	v_lshl_or_b32 v60, v19, 16, v18
	v_wmma_i32_16x16x16_iu8 v[5:12], v[88:91], v[54:57], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v59, v58, 16, v20
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v13 offset:1088
	ds_load_u8 v101, v13 offset:1024
	v_lshl_or_b32 v61, v16, 16, v14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v102, v17, 0xc0c0004
	ds_load_u8 v102, v13 offset:3008
	ds_load_u8 v103, v13 offset:2944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v101, v15, 0xc0c0004
	ds_load_u8 v100, v13 offset:2880
	ds_load_u8 v101, v13 offset:2816
	v_lshl_or_b32 v58, v17, 16, v15
	ds_load_u8 v14, v13 offset:2624
	ds_load_u8 v15, v13 offset:2560
	ds_load_u8 v16, v13 offset:2752
	ds_load_u8 v17, v13 offset:2688
	ds_load_u8 v18, v13 offset:2368
	ds_load_u8 v19, v13 offset:2304
	ds_load_u8 v20, v13 offset:2496
	ds_load_u8 v107, v13 offset:2432
	ds_load_u8 v135, v13 offset:3040
	ds_load_u8 v136, v13 offset:2976
	ds_load_u8 v137, v13 offset:2912
	ds_load_u8 v138, v13 offset:2848
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v13 offset:2240
	ds_load_u8 v140, v13 offset:2176
	ds_load_u8 v141, v13 offset:2784
	ds_load_u8 v142, v13 offset:2720
	ds_load_u8 v143, v13 offset:2656
	ds_load_u8 v144, v13 offset:2592
	v_wmma_i32_16x16x16_iu8 v[5:12], v[96:99], v[58:61], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v16, v19, v18, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v13 offset:2112
	ds_load_u8 v139, v13 offset:2048
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v107, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v140, v103, 0xc0c0004
	v_lshl_or_b32 v103, v102, 16, v100
	v_lshl_or_b32 v102, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v139, v101, 0xc0c0004
	ds_load_u8 v19, v13 offset:3904
	ds_load_u8 v20, v13 offset:3840
	ds_load_u8 v107, v13 offset:4032
	ds_load_u8 v139, v13 offset:3968
	v_lshl_or_b32 v101, v17, 16, v16
	v_lshl_or_b32 v100, v140, 16, v18
	ds_load_u8 v14, v13 offset:3648
	ds_load_u8 v15, v13 offset:3584
	ds_load_u8 v16, v13 offset:3776
	ds_load_u8 v17, v13 offset:3712
	ds_load_u8 v18, v13 offset:3392
	ds_load_u8 v140, v13 offset:3328
	ds_load_u8 v153, v13 offset:3520
	ds_load_u8 v154, v13 offset:3456
	ds_load_u8 v155, v13 offset:4064
	ds_load_u8 v156, v13 offset:4000
	ds_load_u8 v157, v13 offset:3936
	ds_load_u8 v158, v13 offset:3872
	v_wmma_i32_16x16x16_iu8 v[5:12], v[84:87], v[100:103], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v166, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v17, v16, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v140, v18, 0xc0c0004
	v_perm_b32 v20, v139, v107, 0xc0c0004
	ds_load_u8 v139, v13 offset:3136
	ds_load_u8 v159, v13 offset:3072
	ds_load_u8 v160, v13 offset:3264
	ds_load_u8 v161, v13 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v13 offset:3296
	ds_load_u8 v172, v13 offset:3232
	ds_load_u8 v173, v13 offset:3168
	ds_load_u8 v174, v13 offset:3104
	v_lshl_or_b32 v107, v20, 16, v19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[1:4], v[54:57], v[64:71] neg_lo:[1,1,0]
	v_perm_b32 v54, v105, v104, 0xc0c0004
	v_perm_b32 v55, v63, v62, 0xc0c0004
	v_perm_b32 v56, v110, v109, 0xc0c0004
	v_perm_b32 v57, v108, v106, 0xc0c0004
	v_perm_b32 v62, v114, v113, 0xc0c0004
	v_perm_b32 v63, v112, v111, 0xc0c0004
	v_perm_b32 v104, v118, v117, 0xc0c0004
	v_perm_b32 v105, v116, v115, 0xc0c0004
	v_lshl_or_b32 v111, v55, 16, v54
	v_lshl_or_b32 v110, v57, 16, v56
	v_lshl_or_b32 v109, v63, 16, v62
	v_perm_b32 v54, v122, v121, 0xc0c0004
	v_lshl_or_b32 v108, v105, 16, v104
	v_perm_b32 v55, v120, v119, 0xc0c0004
	v_perm_b32 v104, v126, v125, 0xc0c0004
	v_perm_b32 v105, v124, v123, 0xc0c0004
	v_perm_b32 v106, v130, v129, 0xc0c0004
	v_perm_b32 v112, v128, v127, 0xc0c0004
	v_perm_b32 v113, v134, v133, 0xc0c0004
	v_perm_b32 v114, v132, v131, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[92:95], v[58:61], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[108:111], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v55, 16, v54
	v_lshl_or_b32 v90, v105, 16, v104
	v_lshl_or_b32 v89, v112, 16, v106
	v_lshl_or_b32 v88, v114, 16, v113
	v_perm_b32 v54, v138, v137, 0xc0c0004
	v_perm_b32 v55, v136, v135, 0xc0c0004
	v_perm_b32 v104, v144, v143, 0xc0c0004
	v_perm_b32 v105, v142, v141, 0xc0c0004
	v_perm_b32 v106, v148, v147, 0xc0c0004
	v_perm_b32 v112, v146, v145, 0xc0c0004
	v_perm_b32 v113, v152, v151, 0xc0c0004
	v_perm_b32 v114, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[96:99], v[88:91], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v55, 16, v54
	v_lshl_or_b32 v98, v105, 16, v104
	v_lshl_or_b32 v97, v112, 16, v106
	v_lshl_or_b32 v96, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[64:71], v[1:4], v[108:111], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v139, v159, v139, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v161, v160, 0xc0c0004
	v_perm_b32 v54, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[84:87], v[96:99], v[56:63] neg_lo:[1,1,0]
	v_perm_b32 v55, v156, v155, 0xc0c0004
	v_perm_b32 v84, v165, v164, 0xc0c0004
	v_perm_b32 v85, v163, v162, 0xc0c0004
	v_perm_b32 v1, v171, v170, 0xc0c0004
	v_perm_b32 v2, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v174, v173, 0xc0c0004
	v_perm_b32 v87, v172, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[88:91], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v167, 16, v166
	v_lshl_or_b32 v105, v153, 16, v140
	v_lshl_or_b32 v104, v159, 16, v139
	v_wmma_i32_16x16x16_iu8 v[13:20], v[80:83], v[100:103], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v55, 16, v54
	v_lshl_or_b32 v3, v85, 16, v84
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[96:99], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[76:79], v[104:107], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[72:75], v[104:107], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[76:79], v[1:4], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[72:75], v[1:4], v[64:71] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v56, v60
	v_cvt_f32_i32_e32 v57, v61
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v63, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v64, v68
	v_cvt_f32_i32_e32 v65, v69
	v_cvt_f32_i32_e32 v68, v70
	v_cvt_f32_i32_e32 v69, v71
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v2, 32, v53
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v1, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v70, s27, v53
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s13, 0xffff
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v5, v42, v5 :: v_dual_and_b32 v4, 48, v3
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v71, s27, v2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v1, v1, v4, s26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v51, v7 :: v_dual_lshlrev_b32 v4, 1, v70
	v_dual_add_f32 v9, v49, v9 :: v_dual_lshlrev_b32 v70, 1, v71
	v_dual_add_f32 v6, v52, v6 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s12
	s_clause 0x1
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_or_b32_e32 v71, 4, v1
	v_or_b32_e32 v72, 8, v1
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	v_or_b32_e32 v73, 12, v1
	v_or_b32_e32 v74, 16, v1
	v_or_b32_e32 v75, 20, v1
	v_or_b32_e32 v76, 24, v1
	v_or_b32_e32 v77, 28, v1
	s_clause 0x7
	buffer_load_u16 v78, v1, s[4:7], 0 offen
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	v_or_b32_e32 v80, 0x84, v1
	v_or_b32_e32 v79, 0x80, v1
	v_or_b32_e32 v82, 0x8c, v1
	v_or_b32_e32 v81, 0x88, v1
	v_or_b32_e32 v83, 0x90, v1
	v_or_b32_e32 v84, 0x94, v1
	v_or_b32_e32 v85, 0x98, v1
	v_or_b32_e32 v1, 0x9c, v1
	s_clause 0x7
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v86, v1, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v12, v46, v12 :: v_dual_add_f32 v15, v43, v15
	v_dual_add_f32 v14, v44, v14 :: v_dual_add_f32 v19, v38, v19
	v_dual_add_f32 v68, v27, v68 :: v_dual_and_b32 v3, 56, v3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s0, s27, s25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v48, v10 :: v_dual_add_f32 v13, v45, v13
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s0, s0, s26
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v88, 0x7632
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v42, v5, s2
	v_cndmask_b32_e64 v12, v46, v12, s2
	v_cndmask_b32_e64 v14, v44, v14, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v44, s0, v3
	v_add3_u32 v46, s0, v3, 64
	v_mul_lo_u32 v53, s25, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v50, v8 :: v_dual_add_f32 v11, v47, v11
	v_dual_add_f32 v20, v37, v20 :: v_dual_add_f32 v59, v34, v59
	v_dual_add_f32 v54, v21, v54 :: v_dual_add_f32 v57, v24, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v52, v6, s2
	v_cndmask_b32_e64 v7, v51, v7, s2
	v_cndmask_b32_e64 v10, v48, v10, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v39, v18 :: v_dual_add_f32 v55, v22, v55
	v_dual_add_f32 v58, v33, v58 :: v_dual_add_f32 v61, v30, v61
	v_dual_add_f32 v56, v23, v56 :: v_dual_add_f32 v63, v32, v63
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v49, v9, s2
	v_cndmask_b32_e64 v11, v47, v11, s2
	v_cndmask_b32_e64 v20, v37, v20, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v37, s25, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v54, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add_lshl_u32 v47, v44, v53, 1
	v_add_lshl_u32 v49, v46, v53, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v29, v60 :: v_dual_add_f32 v67, v36, v67
	v_dual_add_f32 v62, v31, v62 :: v_dual_add_f32 v65, v26, v65
	v_dual_add_f32 v66, v35, v66 :: v_dual_add_f32 v69, v28, v69
	v_dual_add_f32 v64, v25, v64 :: v_dual_mov_b32 v87, 0x5410
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v50, v8, s2
	v_cndmask_b32_e64 v21, v22, v55, s2
	v_cndmask_b32_e64 v34, v34, v59, s2
	v_cndmask_b32_e64 v24, v24, v57, s2
	v_cndmask_b32_e64 v23, v23, v56, s2
	v_cndmask_b32_e64 v30, v30, v61, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v41, v16 :: v_dual_add_f32 v17, v40, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v58, s2
	v_cndmask_b32_e64 v29, v29, v60, s2
	v_cndmask_b32_e64 v32, v32, v63, s2
	v_cndmask_b32_e64 v31, v31, v62, s2
	v_cndmask_b32_e64 v36, v36, v67, s2
	v_cndmask_b32_e64 v35, v35, v66, s2
	v_cndmask_b32_e64 v26, v26, v65, s2
	v_cndmask_b32_e64 v25, v25, v64, s2
	v_cndmask_b32_e64 v28, v28, v69, s2
	v_cndmask_b32_e64 v13, v45, v13, s2
	v_cndmask_b32_e64 v15, v43, v15, s2
	v_cndmask_b32_e64 v17, v40, v17, s2
	v_cndmask_b32_e64 v19, v38, v19, s2
	v_cndmask_b32_e64 v27, v27, v68, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v39, v18, s2
	v_cndmask_b32_e64 v16, v41, v16, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s39, s7
	s_mov_b32 s38, s6
	v_mov_b16_e32 v38.h, v1.h
	v_mov_b16_e32 v39.h, v1.h
	v_mov_b16_e32 v40.h, v1.h
	v_mov_b16_e32 v41.h, v1.h
	v_mov_b16_e32 v42.h, v1.h
	v_mov_b16_e32 v43.h, v1.h
	v_mov_b16_e32 v22.h, v1.h
	v_mov_b16_e32 v45.h, v1.h
	s_mov_b32 s31, 0x76543210
	v_add_lshl_u32 v44, v44, v37, 1
	s_and_b32 s37, s37, 0xffff
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v53, 16, v72
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v52, 16, v73
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v51, v4, v3 :: v_dual_lshlrev_b32 v48, 16, v70
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v55, 16, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v5, v51
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v51, v52, v3
	v_mul_f32_e32 v4, v48, v4
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v50, 16, v71
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v56, 16, v77
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v59, 16, v79
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v2, v2, v4 :: v_dual_lshlrev_b32 v61, 16, v81
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v4, v53, v3 :: v_dual_mul_f32 v53, v48, v53
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v57, 16, v76
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v71, v59, v3 :: v_dual_lshlrev_b32 v60, 16, v82
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v59, v48, v59 :: v_dual_lshlrev_b32 v62, 16, v84
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v61, v3 :: v_dual_lshlrev_b32 v64, 16, v86
	v_mul_f32_e32 v66, v50, v3
	v_mul_f32_e32 v50, v48, v50
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v54, 16, v75
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v69, v57, v3 :: v_dual_lshlrev_b32 v58, 16, v80
	v_mul_f32_e32 v67, v55, v3
	v_dual_mul_f32 v52, v48, v52 :: v_dual_lshlrev_b32 v63, 16, v83
	v_mul_f32_e32 v55, v48, v55
	v_dual_mul_f32 v70, v56, v3 :: v_dual_mul_f32 v21, v21, v50
	v_mul_f32_e32 v57, v48, v57
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v68, v54, v3 :: v_dual_lshlrev_b32 v65, 16, v85
	v_dual_mul_f32 v54, v48, v54 :: v_dual_mul_f32 v75, v63, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v56, v48, v56 :: v_dual_mul_f32 v77, v65, v3
	v_dual_mul_f32 v72, v58, v3 :: v_dual_mul_f32 v61, v48, v61
	v_mul_f32_e32 v58, v48, v58
	v_dual_mul_f32 v74, v60, v3 :: v_dual_mul_f32 v11, v11, v69
	v_dual_mul_f32 v60, v48, v60 :: v_dual_mul_f32 v9, v9, v67
	v_dual_mul_f32 v76, v62, v3 :: v_dual_mul_f32 v29, v29, v57
	v_dual_mul_f32 v62, v48, v62 :: v_dual_mul_f32 v23, v23, v55
	v_dual_mul_f32 v63, v48, v63 :: v_dual_mul_f32 v6, v6, v66
	v_dual_mul_f32 v3, v64, v3 :: v_dual_mul_f32 v4, v7, v4
	v_dual_mul_f32 v64, v48, v64 :: v_dual_mul_f32 v13, v13, v71
	v_dual_mul_f32 v48, v48, v65 :: v_dual_mul_f32 v31, v31, v59
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v50, v5, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v8, v51 :: v_dual_mul_f32 v8, v33, v53
	v_dual_mul_f32 v12, v12, v70 :: v_dual_mul_f32 v25, v25, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v10, v10, v68 :: v_dual_mul_f32 v15, v15, v73
	v_dual_mul_f32 v24, v24, v54 :: v_dual_mul_f32 v17, v17, v75
	v_dual_mul_f32 v30, v30, v56 :: v_dual_mul_f32 v19, v19, v77
	v_dual_mul_f32 v14, v14, v72 :: v_dual_mul_f32 v3, v20, v3
	v_mul_f32_e32 v20, v27, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v5, v50, 0x7fff
	v_bfe_u32 v48, v4, 16, 1
	v_bfe_u32 v50, v7, 16, 1
	v_bfe_u32 v53, v11, 16, 1
	v_bfe_u32 v54, v12, 16, 1
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v33, v34, v52 :: v_dual_mul_f32 v34, v35, v61
	v_dual_mul_f32 v35, v36, v60 :: v_dual_mul_f32 v26, v26, v62
	v_mul_f32_e32 v27, v28, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v7, v7
	v_cmp_o_f32_e64 s11, v11, v11
	v_cmp_o_f32_e64 s12, v12, v12
	v_bfe_u32 v55, v13, 16, 1
	v_bfe_u32 v56, v14, 16, 1
	v_bfe_u32 v57, v15, 16, 1
	v_bfe_u32 v59, v17, 16, 1
	v_bfe_u32 v61, v19, 16, 1
	v_bfe_u32 v62, v3, 16, 1
	v_add3_u32 v4, v4, v48, 0x7fff
	v_add3_u32 v7, v7, v50, 0x7fff
	v_add3_u32 v11, v11, v53, 0x7fff
	v_add3_u32 v12, v12, v54, 0x7fff
	v_mov_b16_e32 v38.l, v8.h
	v_mov_b16_e32 v39.l, v23.h
	v_mov_b16_e32 v40.l, v29.h
	v_cmp_o_f32_e64 s15, v13, v13
	v_cmp_o_f32_e64 s16, v14, v14
	v_mov_b16_e32 v41.l, v31.h
	v_cmp_o_f32_e64 s19, v15, v15
	v_mov_b16_e32 v42.l, v34.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v18, v18, v76
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s23, v17, v17
	v_cmp_o_f32_e64 s27, v19, v19
	v_cmp_o_f32_e64 s28, v3, v3
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v13, v13, v55, 0x7fff
	v_add3_u32 v14, v14, v56, 0x7fff
	v_add3_u32 v15, v15, v57, 0x7fff
	v_add3_u32 v17, v17, v59, 0x7fff
	v_add3_u32 v19, v19, v61, 0x7fff
	v_add3_u32 v3, v3, v62, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s4
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s11
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s12
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v36, 1, v1
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v32, v32, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v28, v6, 16, 1
	v_bfe_u32 v51, v9, 16, 1
	v_bfe_u32 v52, v10, 16, 1
	v_mov_b16_e32 v43.l, v25.h
	v_add3_u32 v2, v2, v36, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s15
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s16
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s19
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s23
	v_and_b32_e32 v36, 1, v38
	v_and_b32_e32 v38, 1, v39
	v_and_b32_e32 v39, 1, v40
	v_cndmask_b16 v3.l, 0x7fff, v19.h, s27
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s28
	v_and_b32_e32 v40, 1, v41
	v_and_b32_e32 v41, 1, v42
	v_bfe_u32 v60, v18, 16, 1
	v_cmp_o_f32_e64 s1, v6, v6
	v_mov_b16_e32 v1.l, v33.h
	v_cmp_o_f32_e64 s7, v9, v9
	v_cmp_o_f32_e64 s8, v10, v10
	v_cmp_o_f32_e64 s24, v18, v18
	v_add3_u32 v6, v6, v28, 0x7fff
	v_add3_u32 v9, v9, v51, 0x7fff
	v_add3_u32 v10, v10, v52, 0x7fff
	v_add3_u32 v18, v18, v60, 0x7fff
	v_and_b32_e32 v42, 1, v43
	v_mov_b16_e32 v22.l, v21.h
	v_cmp_o_f32_e64 s26, v25, v25
	v_and_b32_e32 v28, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s8
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s24
	v_add3_u32 v18, v25, v42, 0x7fff
	v_add3_u32 v14, v31, v40, 0x7fff
	v_cmp_o_f32_e64 s6, v8, v8
	v_and_b32_e32 v22, 1, v22
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_cndmask_b16 v14.l, 0x7fff, v18.h, s26
	v_cndmask_b32_e32 v18, v9, v5, vcc_lo
	v_cndmask_b32_e32 v5, v5, v9, vcc_lo
	v_dual_cndmask_b32 v9, v11, v4 :: v_dual_cndmask_b32 v4, v4, v11
	v_cndmask_b32_e32 v11, v17, v13, vcc_lo
	v_add3_u32 v7, v8, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v21, v21
	v_cmp_o_f32_e64 s5, v33, v33
	v_cmp_o_f32_e64 s13, v30, v30
	v_cmp_o_f32_e64 s14, v29, v29
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s6
	v_and_b32_e32 v7, 1, v1
	v_mov_b16_e32 v45.l, v20.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v16, v16, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s30, v20, v20
	v_add3_u32 v6, v21, v22, 0x7fff
	v_add3_u32 v12, v29, v39, 0x7fff
	v_and_b32_e32 v43, 1, v45
	v_bfe_u32 v58, v16, 16, 1
	v_cmp_o_f32_e64 s20, v16, v16
	v_mov_b16_e32 v1.l, v32.h
	v_cndmask_b32_e32 v13, v13, v17, vcc_lo
	v_add3_u32 v19, v20, v43, 0x7fff
	v_add3_u32 v16, v16, v58, 0x7fff
	v_add3_u32 v7, v30, v7, 0x7fff
	v_cmp_o_f32_e64 s9, v24, v24
	v_cmp_o_f32_e64 s10, v23, v23
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s0
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s20
	v_add3_u32 v16, v34, v41, 0x7fff
	v_add3_u32 v21, v23, v38, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s2
	v_cndmask_b16 v16.l, 0x7fff, v19.h, s30
	v_cndmask_b32_e32 v17, v3, v15, vcc_lo
	v_add3_u32 v8, v33, v28, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v12.h, s14
	v_cndmask_b32_e32 v3, v15, v3, vcc_lo
	v_cndmask_b32_e32 v15, 0x1054, v87, vcc_lo
	v_add3_u32 v6, v24, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s5
	v_cndmask_b32_e32 v19, 0x3276, v88, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v7.h, s13
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v35.h
	v_cmp_o_f32_e64 s17, v32, v32
	v_cmp_o_f32_e64 s18, v31, v31
	v_cndmask_b16 v6.l, 0x7fff, v21.h, s10
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s9
	v_permlanex16_b32 v21, v3, s31, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v15, 8, v15
	v_lshl_or_b32 v15, v19, 8, v19
	v_add3_u32 v7, v32, v20, 0x7fff
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s18
	v_cndmask_b32_e32 v20, v6, v2, vcc_lo
	v_dual_cndmask_b32 v2, v2, v6 :: v_dual_and_b32 v3, 0x540054, v3
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s17
	v_and_b32_e32 v6, 0x760076, v15
	v_and_b32_e32 v15, 1, v1
	v_mov_b16_e32 v1.l, v27.h
	v_cmp_o_f32_e64 s25, v26, v26
	v_cmp_o_f32_e64 s21, v35, v35
	v_cmp_o_f32_e64 s22, v34, v34
	v_cmp_o_f32_e64 s29, v27, v27
	v_and_b32_e32 v1, 1, v1
	v_permlanex16_b32 v22, v2, s31, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v6, 4, v6
	v_add3_u32 v6, v26, v15, 0x7fff
	v_add3_u32 v7, v35, v19, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v16.h, s22
	v_permlanex16_b32 v5, v5, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v14.h, 0x7fff, v6.h, s25
	v_add3_u32 v6, v27, v1, 0x7fff
	v_permlanex16_b32 v13, v13, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v19, v8, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v8 :: v_dual_and_b32 v15, 0x5040504, v2
	v_cndmask_b16 v12.h, 0x7fff, v7.h, s21
	v_and_b32_e32 v23, 0x7060706, v3
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s29
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v24, v0, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v5, v18, v15
	v_perm_b32 v2, v4, v9, v15
	v_perm_b32 v1, v5, v18, v23
	v_perm_b32 v3, v4, v9, v23
	v_perm_b32 v4, v13, v11, v15
	v_perm_b32 v5, v13, v11, v23
	v_cndmask_b32_e32 v11, v10, v14, vcc_lo
	v_cndmask_b32_e32 v13, v12, v16, vcc_lo
	v_perm_b32 v6, v21, v17, v15
	v_cndmask_b32_e32 v14, v14, v10, vcc_lo
	v_perm_b32 v7, v21, v17, v23
	v_permlanex16_b32 v17, v11, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v16, v16, v12, vcc_lo
	v_permlanex16_b32 v18, v13, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v22, v20, v15
	v_perm_b32 v9, v22, v20, v23
	v_perm_b32 v10, v24, v19, v15
	v_perm_b32 v11, v24, v19, v23
	v_perm_b32 v12, v17, v14, v15
	v_perm_b32 v13, v17, v14, v23
	v_perm_b32 v14, v18, v16, v15
	v_perm_b32 v15, v18, v16, v23
	v_add_lshl_u32 v16, v46, v37, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v47, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v49, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v44, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v16, s[36:39], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 241
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14892
; TotalNumSgprs: 42
; NumVgprs: 241
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     241
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
