	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v7, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v5, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v19, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v20, 1, v0
	v_or_b32_e32 v38, 0x3f0, v0
	v_or_b32_e32 v39, 0x7f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v6, 62, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 24, v19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v50, 0, v19
	v_and_b32_e32 v40, 8, v0
	v_and_b32_e32 v41, 32, v0
	v_lshlrev_b32_e32 v42, 6, v7
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 31
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
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v8, s28, v5
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
	v_lshlrev_b32_e32 v1, 4, v7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[2:3], null, s29, v6, v[1:2]
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
	s_add_i32 s8, s10, 0xff
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
	s_lshl_b32 s19, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s18, s3, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0xff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v3, v8, v4, s19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s29, v2
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0x1ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v2, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s30, s29, 8
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s28, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s30, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v9, s[24:27], 0 offen
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s31, s28, 8
	v_add_nc_u32_e32 v8, s4, v3
	v_add3_u32 v3, s4, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s29, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_clause 0x1
	buffer_load_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v9, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b64 v[34:35], v8, s[12:15], 0 offen
	buffer_load_b64 v[36:37], v3, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	v_and_b32_e32 v3, 6, v0
	v_lshlrev_b32_e32 v8, 5, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0x2ff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 0x420, v2
	v_lshlrev_b32_e32 v9, 3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v6
	v_lshl_or_b32 v43, v3, 10, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v44, 0x90, v43
	v_xor_b32_e32 v45, 0x120, v43
	v_xor_b32_e32 v46, 0x1b0, v43
	v_xor_b32_e32 v47, 0x210, v43
	v_xor_b32_e32 v48, 0x330, v43
	v_xor_b32_e32 v49, 0x3a0, v43
	v_add_nc_u32_e32 v51, 0, v43
	v_add_nc_u32_e32 v52, 0, v44
	v_add_nc_u32_e32 v53, 0, v45
	v_add_nc_u32_e32 v54, 0, v46
	v_add_nc_u32_e32 v55, 0, v47
	v_add_nc_u32_e32 v56, 0, v48
	v_add_nc_u32_e32 v57, 0, v49
	s_waitcnt vmcnt(4)
	v_perm_b32 v3, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v18, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v29, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_lshrrev_b32_e32 v58, 8, v14
	v_lshrrev_b32_e32 v60, 8, v15
	v_lshrrev_b32_e32 v61, 24, v15
	v_lshrrev_b32_e32 v30, 8, v3
	v_lshrrev_b32_e32 v62, 8, v18
	v_lshrrev_b32_e32 v63, 24, v18
	v_lshrrev_b32_e32 v31, 24, v3
	v_lshrrev_b32_e32 v64, 8, v16
	v_lshrrev_b32_e32 v65, 24, v16
	v_lshrrev_b32_e32 v32, 8, v10
	v_lshrrev_b32_e32 v66, 8, v29
	v_lshrrev_b32_e32 v67, 24, v29
	v_lshrrev_b32_e32 v33, 24, v10
	v_lshrrev_b32_e32 v59, 24, v14
	v_lshrrev_b32_e32 v68, 8, v17
	v_lshrrev_b32_e32 v69, 24, v17
	v_and_b16 v2.l, 0xff, v3.l
	v_and_b16 v2.h, 0xff, v3.h
	v_and_b16 v3.l, 0xff, v10.l
	v_and_b16 v3.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v14.l
	v_and_b16 v10.h, 0xff, v14.h
	v_and_b16 v11.l, 0xff, v15.l
	v_and_b16 v11.h, 0xff, v15.h
	v_and_b16 v12.l, 0xff, v18.l
	v_and_b16 v14.l, 0xff, v29.l
	v_and_b16 v14.h, 0xff, v29.h
	v_lshlrev_b16 v18.l, 8, v58.l
	v_lshlrev_b16 v29.l, 8, v60.l
	v_lshlrev_b16 v29.h, 8, v61.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v58, v25, v21, 0x5010400
	v_and_b16 v12.h, 0xff, v18.h
	v_and_b16 v13.l, 0xff, v16.l
	v_lshlrev_b16 v16.l, 8, v30.l
	v_lshlrev_b16 v30.l, 8, v62.l
	v_lshlrev_b16 v30.h, 8, v63.l
	v_and_b16 v13.h, 0xff, v16.h
	v_lshlrev_b16 v16.h, 8, v31.l
	v_lshlrev_b16 v31.l, 8, v64.l
	v_lshlrev_b16 v31.h, 8, v65.l
	v_perm_b32 v21, v25, v21, 0x7030602
	v_and_b16 v15.l, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v32.l
	v_lshlrev_b16 v32.l, 8, v66.l
	v_lshlrev_b16 v32.h, 8, v67.l
	v_and_b16 v15.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v33.l
	v_lshlrev_b16 v18.h, 8, v59.l
	v_lshlrev_b16 v33.l, 8, v68.l
	v_lshlrev_b16 v33.h, 8, v69.l
	v_perm_b32 v25, v26, v22, 0x5010400
	v_perm_b32 v22, v26, v22, 0x7030602
	v_perm_b32 v26, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v59, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_or_b16 v11.l, v11.l, v29.l
	v_or_b16 v11.h, v11.h, v29.h
	v_lshrrev_b32_e32 v29, 8, v58
	v_or_b16 v2.l, v2.l, v16.l
	v_or_b16 v12.l, v12.l, v30.l
	v_or_b16 v12.h, v12.h, v30.h
	v_lshrrev_b32_e32 v30, 24, v58
	v_or_b16 v2.h, v2.h, v16.h
	v_or_b16 v13.l, v13.l, v31.l
	v_or_b16 v13.h, v13.h, v31.h
	v_lshrrev_b32_e32 v31, 8, v21
	v_or_b16 v3.l, v3.l, v17.l
	v_or_b16 v14.l, v14.l, v32.l
	v_or_b16 v14.h, v14.h, v32.h
	v_lshrrev_b32_e32 v32, 24, v21
	v_or_b16 v3.h, v3.h, v17.h
	v_or_b16 v15.l, v15.l, v33.l
	v_or_b16 v15.h, v15.h, v33.h
	v_and_b16 v16.l, 0xff, v58.l
	v_and_b16 v16.h, 0xff, v58.h
	v_and_b16 v17.l, 0xff, v21.l
	v_and_b16 v17.h, 0xff, v21.h
	v_lshrrev_b32_e32 v33, 8, v25
	v_lshrrev_b32_e32 v58, 24, v25
	v_and_b16 v21.l, 0xff, v22.l
	v_lshrrev_b32_e32 v60, 8, v22
	v_lshrrev_b32_e32 v61, 24, v22
	v_and_b16 v21.h, 0xff, v22.h
	v_and_b16 v22.l, 0xff, v26.l
	v_lshrrev_b32_e32 v62, 8, v26
	v_lshrrev_b32_e32 v63, 24, v26
	v_and_b16 v22.h, 0xff, v26.h
	v_and_b16 v23.l, 0xff, v27.l
	v_lshrrev_b32_e32 v26, 8, v27
	v_lshrrev_b32_e32 v64, 24, v27
	v_and_b16 v23.h, 0xff, v27.h
	v_and_b16 v24.l, 0xff, v59.l
	v_lshrrev_b32_e32 v27, 8, v59
	v_lshrrev_b32_e32 v65, 24, v59
	v_and_b16 v24.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 8, v28
	v_lshrrev_b32_e32 v66, 24, v28
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v50, v[34:35] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v2
	ds_store_b16_d16_hi v51, v2 offset:64
	ds_store_b16 v52, v3
	ds_store_b16_d16_hi v52, v3 offset:64
	ds_store_b16 v53, v10
	ds_store_b16_d16_hi v53, v10 offset:64
	ds_store_b16 v54, v11
	ds_store_b16_d16_hi v54, v11 offset:64
	ds_store_b16 v55, v12
	ds_store_b16_d16_hi v55, v12 offset:64
	ds_store_b16 v51, v13 offset:640
	ds_store_b16_d16_hi v51, v13 offset:704
	ds_store_b16 v56, v14
	ds_store_b16_d16_hi v56, v14 offset:64
	ds_store_b16 v57, v15
	ds_store_b16_d16_hi v57, v15 offset:64
	v_lshlrev_b16 v2.l, 8, v29.l
	v_lshlrev_b16 v2.h, 8, v30.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_lshlrev_b16 v3.h, 8, v32.l
	v_and_b16 v18.l, 0xff, v25.l
	v_and_b16 v18.h, 0xff, v25.h
	v_and_b16 v25.l, 0xff, v28.l
	v_and_b16 v25.h, 0xff, v28.h
	v_lshlrev_b16 v10.l, 8, v33.l
	v_lshlrev_b16 v10.h, 8, v58.l
	v_lshlrev_b16 v11.l, 8, v60.l
	v_lshlrev_b16 v11.h, 8, v61.l
	v_lshlrev_b16 v12.l, 8, v62.l
	v_lshlrev_b16 v12.h, 8, v63.l
	v_lshlrev_b16 v13.l, 8, v26.l
	v_lshlrev_b16 v13.h, 8, v64.l
	v_lshlrev_b16 v14.l, 8, v27.l
	v_lshlrev_b16 v14.h, 8, v65.l
	v_lshlrev_b16 v15.l, 8, v59.l
	v_lshlrev_b16 v15.h, 8, v66.l
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
	v_or_b16 v11.l, v21.l, v11.l
	v_or_b16 v11.h, v21.h, v11.h
	v_or_b16 v12.l, v22.l, v12.l
	v_or_b16 v12.h, v22.h, v12.h
	v_or_b16 v13.l, v23.l, v13.l
	v_or_b16 v13.h, v23.h, v13.h
	v_or_b16 v14.l, v24.l, v14.l
	v_or_b16 v14.h, v24.h, v14.h
	v_or_b16 v15.l, v25.l, v15.l
	v_or_b16 v15.h, v25.h, v15.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v50, v[36:37] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v2 offset:8192
	ds_store_b16_d16_hi v51, v2 offset:8256
	ds_store_b16 v52, v3 offset:8192
	ds_store_b16_d16_hi v52, v3 offset:8256
	ds_store_b16 v53, v10 offset:8192
	ds_store_b16_d16_hi v53, v10 offset:8256
	ds_store_b16 v54, v11 offset:8192
	ds_store_b16_d16_hi v54, v11 offset:8256
	ds_store_b16 v55, v12 offset:8192
	ds_store_b16_d16_hi v55, v12 offset:8256
	ds_store_b16 v51, v13 offset:8832
	ds_store_b16_d16_hi v51, v13 offset:8896
	ds_store_b16 v56, v14 offset:8192
	ds_store_b16_d16_hi v56, v14 offset:8256
	ds_store_b16 v57, v15 offset:8192
	ds_store_b16_d16_hi v57, v15 offset:8256
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
	v_and_or_b32 v50, 0x1800, v8, v9
	s_mov_b32 s9, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr50
.LBB0_3:                                ; %Flow27
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v20
	v_and_b32_e32 v37, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 5, 1
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v3, s7, v6
	v_bfe_i32 v6, v0, 3, 1
	v_and_or_b32 v50, 0x1800, v8, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 0x420, v2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v7, 0x201, v3
	v_add_nc_u32_e32 v3, 0x200, v3
	v_add3_u32 v5, s7, v5, 0x200
	s_lshl_b32 s4, s6, 7
	v_and_or_b32 v2, 0x210, v6, v2
	v_mul_lo_u32 v6, s29, v7
	v_mul_lo_u32 v3, s29, v3
	v_mul_lo_u32 v5, s28, v5
	s_lshl_b32 s5, s5, 7
	v_xor_b32_e32 v2, v2, v50
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s8, 8
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v6, v6, s4, v1
	v_add3_u32 v1, v3, s4, v1
	v_or_b32_e32 v51, v2, v42
	s_mov_b32 s4, 0
	v_add3_u32 v52, v5, s19, v4
	v_subrev_nc_u32_e32 v53, s5, v6
	v_subrev_nc_u32_e32 v54, s5, v1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_xor_b32_e32 v55, 16, v51
	v_xor_b32_e32 v56, 32, v51
	v_xor_b32_e32 v57, 48, v51
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v21, 0
	s_add_i32 s34, s1, -2
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s28, 0, 0x4800
	s_add_i32 s33, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[17:18], v52, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v54, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v53, s[24:27], 0 offen
	s_mov_b32 s6, s4
	s_mov_b32 s7, s1
	v_add_nc_u32_e32 v61, s6, v51
	v_add_nc_u32_e32 v62, s6, v55
	v_add_nc_u32_e32 v63, s6, v56
	v_add_nc_u32_e32 v64, s6, v57
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s7, v37
	v_add_nc_u32_e32 v59, s7, v38
	v_add_nc_u32_e32 v60, s7, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[74:77], v61
	ds_load_b128 v[78:81], v62
	ds_load_b128 v[82:85], v63
	ds_load_b128 v[86:89], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v61, v58 offset:96
	ds_load_u8 v62, v58 offset:64
	ds_load_u8 v63, v58
	ds_load_u8 v64, v58 offset:16
	ds_load_u8 v65, v58 offset:32
	ds_load_u8 v66, v58 offset:112
	ds_load_u8 v67, v58 offset:80
	ds_load_u8 v68, v58 offset:48
	ds_load_u8 v69, v58 offset:416
	ds_load_u8 v70, v58 offset:384
	ds_load_u8 v71, v58 offset:480
	ds_load_u8 v72, v58 offset:448
	ds_load_u8 v73, v58 offset:496
	ds_load_u8 v90, v58 offset:464
	ds_load_u8 v91, v58 offset:432
	ds_load_u8 v92, v58 offset:400
	ds_load_u8 v93, v58 offset:288
	ds_load_u8 v94, v58 offset:256
	ds_load_u8 v95, v58 offset:352
	ds_load_u8 v96, v58 offset:320
	ds_load_u8 v97, v58 offset:368
	ds_load_u8 v98, v58 offset:336
	ds_load_u8 v99, v58 offset:304
	ds_load_u8 v100, v58 offset:272
	ds_load_u8 v101, v58 offset:160
	ds_load_u8 v102, v58 offset:128
	ds_load_u8 v103, v58 offset:224
	ds_load_u8 v104, v58 offset:192
	ds_load_u8 v105, v58 offset:240
	ds_load_u8 v106, v58 offset:208
	ds_load_u8 v107, v58 offset:176
	ds_load_u8 v108, v58 offset:144
	ds_load_u8 v109, v58 offset:928
	ds_load_u8 v110, v58 offset:896
	ds_load_u8 v111, v58 offset:992
	ds_load_u8 v112, v58 offset:960
	ds_load_u8 v113, v58 offset:1024
	ds_load_u8 v114, v58 offset:976
	ds_load_u8 v115, v58 offset:944
	ds_load_u8 v116, v58 offset:912
	ds_load_u8 v117, v58 offset:800
	ds_load_u8 v118, v58 offset:768
	ds_load_u8 v119, v58 offset:864
	ds_load_u8 v120, v58 offset:832
	ds_load_u8 v121, v58 offset:880
	ds_load_u8 v122, v58 offset:848
	ds_load_u8 v123, v58 offset:816
	ds_load_u8 v124, v58 offset:784
	ds_load_u8 v125, v58 offset:672
	ds_load_u8 v126, v58 offset:640
	ds_load_u8 v127, v58 offset:736
	ds_load_u8 v128, v58 offset:704
	ds_load_u8 v129, v58 offset:752
	ds_load_u8 v130, v58 offset:720
	ds_load_u8 v131, v58 offset:688
	ds_load_u8 v132, v58 offset:656
	ds_load_u8 v133, v58 offset:544
	ds_load_u8 v134, v58 offset:512
	ds_load_u8 v135, v58 offset:608
	ds_load_u8 v136, v58 offset:576
	ds_load_u8 v137, v58 offset:624
	ds_load_u8 v138, v58 offset:592
	ds_load_u8 v139, v58 offset:560
	ds_load_u8 v140, v58 offset:528
	ds_load_u8 v141, v58 offset:1440
	ds_load_u8 v142, v58 offset:1504
	ds_load_u8 v143, v58 offset:1472
	ds_load_u8 v144, v58 offset:1536
	ds_load_u8 v145, v58 offset:1520
	ds_load_u8 v146, v58 offset:1488
	ds_load_u8 v147, v58 offset:1456
	ds_load_u8 v148, v58 offset:1424
	ds_load_u8 v149, v58 offset:1408
	ds_load_u8 v150, v58 offset:1312
	ds_load_u8 v151, v58 offset:1376
	ds_load_u8 v152, v58 offset:1344
	ds_load_u8 v153, v58 offset:1392
	ds_load_u8 v154, v58 offset:1360
	ds_load_u8 v155, v58 offset:1328
	ds_load_u8 v156, v58 offset:1296
	ds_load_u8 v157, v58 offset:1280
	ds_load_u8 v158, v58 offset:1184
	ds_load_u8 v159, v58 offset:1248
	ds_load_u8 v160, v58 offset:1216
	ds_load_u8 v161, v58 offset:1264
	ds_load_u8 v162, v58 offset:1232
	ds_load_u8 v163, v58 offset:1200
	ds_load_u8 v164, v58 offset:1168
	ds_load_u8 v165, v58 offset:1152
	ds_load_u8 v166, v58 offset:1056
	ds_load_u8 v167, v58 offset:1120
	ds_load_u8 v168, v58 offset:1088
	ds_load_u8 v169, v58 offset:1136
	ds_load_u8 v170, v58 offset:1104
	ds_load_u8 v171, v58 offset:1072
	ds_load_u8 v172, v58 offset:1040
	ds_load_u8 v173, v58 offset:1952
	ds_load_u8 v174, v58 offset:2016
	ds_load_u8 v175, v58 offset:1984
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v176, v58 offset:2000
	ds_load_u8 v177, v58 offset:1968
	ds_load_u8 v178, v58 offset:1936
	ds_load_u8 v179, v58 offset:1920
	ds_load_u8 v180, v58 offset:1824
	ds_load_u8 v181, v58 offset:1888
	ds_load_u8 v182, v58 offset:1856
	ds_load_u8 v183, v58 offset:1904
	ds_load_u8 v184, v58 offset:1872
	ds_load_u8 v185, v58 offset:1840
	ds_load_u8 v186, v58 offset:1808
	ds_load_u8 v187, v58 offset:1792
	ds_load_u8 v188, v58 offset:1696
	ds_load_u8 v189, v58 offset:1760
	ds_load_u8 v190, v58 offset:1728
	ds_load_u8 v191, v58 offset:1776
	ds_load_u8 v192, v58 offset:1744
	ds_load_u8 v193, v58 offset:1712
	ds_load_u8 v194, v58 offset:1680
	ds_load_u8 v195, v58 offset:1664
	ds_load_u8 v196, v58 offset:1568
	ds_load_u8 v197, v58 offset:1632
	ds_load_u8 v198, v58 offset:1600
	ds_load_u8 v199, v58 offset:1648
	ds_load_u8 v200, v58 offset:1616
	ds_load_u8 v201, v58 offset:1584
	ds_load_u8 v58, v58 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_perm_b32 v71, v94, v93, 0xc0c0004
	v_perm_b32 v72, v96, v95, 0xc0c0004
	v_perm_b32 v93, v102, v101, 0xc0c0004
	v_perm_b32 v94, v104, v103, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_perm_b32 v62, v63, v65, 0xc0c0004
	v_perm_b32 v63, v110, v109, 0xc0c0004
	v_perm_b32 v101, v126, v125, 0xc0c0004
	v_perm_b32 v102, v128, v127, 0xc0c0004
	v_perm_b32 v103, v134, v133, 0xc0c0004
	v_perm_b32 v104, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v109, v149, v141, 0xc0c0004
	v_perm_b32 v110, v143, v142, 0xc0c0004
	v_perm_b32 v136, v92, v91, 0xc0c0004
	v_perm_b32 v73, v90, v73, 0xc0c0004
	v_perm_b32 v141, v100, v99, 0xc0c0004
	v_perm_b32 v142, v98, v97, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v106, v106, v105, 0xc0c0004
	v_perm_b32 v108, v67, v66, 0xc0c0004
	v_perm_b32 v64, v64, v68, 0xc0c0004
	v_perm_b32 v65, v112, v111, 0xc0c0004
	v_perm_b32 v95, v118, v117, 0xc0c0004
	v_perm_b32 v96, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v117, v165, v158, 0xc0c0004
	v_perm_b32 v118, v160, v159, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v59, v114, v59, 0xc0c0004
	v_perm_b32 v114, v124, v123, 0xc0c0004
	v_perm_b32 v116, v122, v121, 0xc0c0004
	v_perm_b32 v121, v132, v131, 0xc0c0004
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_perm_b32 v124, v138, v137, 0xc0c0004
	v_perm_b32 v129, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v143, v178, v177, 0xc0c0004
	v_perm_b32 v60, v176, v60, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v201, 0xc0c0004
	v_perm_b32 v148, v200, v199, 0xc0c0004
	v_lshl_or_b32 v69, v70, 16, v69
	v_lshl_or_b32 v68, v72, 16, v71
	v_lshl_or_b32 v67, v94, 16, v93
	v_lshl_or_b32 v66, v61, 16, v62
	v_lshl_or_b32 v91, v102, 16, v101
	v_lshl_or_b32 v90, v104, 16, v103
	v_lshl_or_b32 v105, v73, 16, v136
	v_lshl_or_b32 v104, v142, 16, v141
	v_lshl_or_b32 v103, v106, 16, v107
	v_lshl_or_b32 v102, v108, 16, v64
	v_perm_b32 v111, v157, v150, 0xc0c0004
	v_perm_b32 v112, v152, v151, 0xc0c0004
	v_perm_b32 v113, v113, v166, 0xc0c0004
	v_perm_b32 v119, v168, v167, 0xc0c0004
	v_perm_b32 v130, v146, v145, 0xc0c0004
	v_perm_b32 v131, v156, v155, 0xc0c0004
	v_perm_b32 v132, v154, v153, 0xc0c0004
	v_perm_b32 v137, v164, v163, 0xc0c0004
	v_perm_b32 v138, v162, v161, 0xc0c0004
	v_perm_b32 v139, v172, v171, 0xc0c0004
	v_perm_b32 v140, v170, v169, 0xc0c0004
	v_lshl_or_b32 v93, v65, 16, v63
	v_lshl_or_b32 v92, v96, 16, v95
	v_lshl_or_b32 v97, v110, 16, v109
	v_lshl_or_b32 v95, v118, 16, v117
	v_lshl_or_b32 v109, v59, 16, v115
	v_lshl_or_b32 v108, v116, 16, v114
	v_lshl_or_b32 v107, v122, 16, v121
	v_lshl_or_b32 v106, v124, 16, v123
	v_lshl_or_b32 v117, v60, 16, v143
	v_lshl_or_b32 v114, v148, 16, v58
	v_wmma_i32_16x16x16_iu8 v[58:65], v[74:77], v[66:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[102:105], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v134, v144, v196, 0xc0c0004
	v_perm_b32 v144, v186, v185, 0xc0c0004
	v_perm_b32 v145, v184, v183, 0xc0c0004
	v_perm_b32 v146, v194, v193, 0xc0c0004
	v_perm_b32 v147, v192, v191, 0xc0c0004
	v_lshl_or_b32 v96, v112, 16, v111
	v_lshl_or_b32 v94, v119, 16, v113
	v_lshl_or_b32 v113, v130, 16, v129
	v_lshl_or_b32 v112, v132, 16, v131
	v_lshl_or_b32 v111, v138, 16, v137
	v_lshl_or_b32 v110, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[106:109], v[66:73] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s5, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v120, v179, v173, 0xc0c0004
	v_perm_b32 v125, v175, v174, 0xc0c0004
	v_perm_b32 v126, v187, v180, 0xc0c0004
	v_perm_b32 v127, v182, v181, 0xc0c0004
	v_perm_b32 v128, v195, v188, 0xc0c0004
	v_perm_b32 v133, v190, v189, 0xc0c0004
	v_perm_b32 v135, v198, v197, 0xc0c0004
	v_lshl_or_b32 v116, v145, 16, v144
	v_lshl_or_b32 v115, v147, 16, v146
	v_wmma_i32_16x16x16_iu8 v[58:65], v[78:81], v[90:93], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[110:113], v[66:73] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s5, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v101, v125, 16, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s5, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v100, v127, 16, v126
	v_lshl_or_b32 v99, v133, 16, v128
	v_lshl_or_b32 v98, v135, 16, v134
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[94:97], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[114:117], v[66:73] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s6, s5, 11
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s6, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[86:89], v[98:101], v[58:65] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v202, s6, v19
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s5, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	s_mov_b32 s4, s33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v26, v58 :: v_dual_add_nc_u32 v53, s30, v53
	v_dual_add_f32 v35, v35, v60 :: v_dual_add_nc_u32 v54, s30, v54
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v59
	v_add_f32_e32 v34, v34, v61
	v_dual_add_f32 v33, v33, v62 :: v_dual_add_nc_u32 v52, s31, v52
	v_dual_add_f32 v32, v32, v63 :: v_dual_add_nc_u32 v205, s33, v45
	v_dual_add_f32 v31, v31, v64 :: v_dual_add_f32 v30, v30, v65
	v_dual_add_f32 v24, v24, v70 :: v_dual_add_nc_u32 v203, s33, v43
	v_dual_add_f32 v21, v21, v73 :: v_dual_add_nc_u32 v204, s33, v44
	v_dual_add_f32 v22, v22, v72 :: v_dual_add_nc_u32 v207, s33, v47
	v_dual_add_f32 v28, v28, v67 :: v_dual_add_nc_u32 v209, s33, v49
	v_add_f32_e32 v29, v29, v66
	v_add_f32_e32 v27, v27, v68
	v_add_f32_e32 v23, v23, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s34, s34, -1
	s_mov_b32 s1, s28
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s28, s6, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s34, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v206, s33, v46
	v_add_nc_u32_e32 v208, s33, v48
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v202, v[17:18] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v58, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v59, v16, v12, 0x5010400
	v_perm_b32 v60, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v61, 8, v17
	v_lshrrev_b32_e32 v62, 24, v17
	v_lshrrev_b32_e32 v63, 8, v13
	v_lshrrev_b32_e32 v64, 24, v13
	v_lshrrev_b32_e32 v65, 8, v18
	v_and_b16 v9.l, 0xff, v17.l
	v_lshrrev_b32_e32 v66, 24, v18
	v_lshrrev_b32_e32 v67, 8, v14
	v_lshrrev_b32_e32 v68, 24, v14
	v_lshrrev_b32_e32 v69, 8, v58
	v_lshrrev_b32_e32 v70, 24, v58
	v_lshrrev_b32_e32 v71, 8, v15
	v_lshrrev_b32_e32 v72, 24, v15
	v_lshrrev_b32_e32 v73, 8, v59
	v_lshrrev_b32_e32 v74, 24, v59
	v_lshrrev_b32_e32 v75, 8, v60
	v_lshrrev_b32_e32 v76, 24, v60
	v_lshlrev_b16 v17.l, 8, v61.l
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v62.l
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v63.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v64.l
	v_and_b16 v13.l, 0xff, v58.l
	v_lshlrev_b16 v58.l, 8, v65.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.h, 0xff, v58.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v59.l
	v_and_b16 v15.h, 0xff, v59.h
	v_and_b16 v16.l, 0xff, v60.l
	v_and_b16 v16.h, 0xff, v60.h
	v_lshlrev_b16 v58.h, 8, v66.l
	v_lshlrev_b16 v59.l, 8, v67.l
	v_lshlrev_b16 v59.h, 8, v68.l
	v_lshlrev_b16 v60.l, 8, v69.l
	v_lshlrev_b16 v60.h, 8, v70.l
	v_lshlrev_b16 v61.l, 8, v71.l
	v_lshlrev_b16 v61.h, 8, v72.l
	v_lshlrev_b16 v62.l, 8, v73.l
	v_lshlrev_b16 v62.h, 8, v74.l
	v_lshlrev_b16 v63.l, 8, v75.l
	v_lshlrev_b16 v63.h, 8, v76.l
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v58.l
	v_or_b16 v11.h, v11.h, v58.h
	v_or_b16 v12.l, v12.l, v59.l
	v_or_b16 v12.h, v12.h, v59.h
	v_or_b16 v13.l, v13.l, v60.l
	v_or_b16 v13.h, v13.h, v60.h
	v_or_b16 v14.l, v14.l, v61.l
	v_or_b16 v14.h, v14.h, v61.h
	v_or_b16 v15.l, v15.l, v62.l
	v_or_b16 v15.h, v15.h, v62.h
	v_or_b16 v16.l, v16.l, v63.l
	v_or_b16 v16.h, v16.h, v63.h
	ds_store_b16 v203, v9
	ds_store_b16_d16_hi v203, v9 offset:64
	ds_store_b16 v204, v10
	ds_store_b16_d16_hi v204, v10 offset:64
	ds_store_b16 v205, v11
	ds_store_b16_d16_hi v205, v11 offset:64
	ds_store_b16 v206, v12
	ds_store_b16_d16_hi v206, v12 offset:64
	ds_store_b16 v207, v13
	ds_store_b16_d16_hi v207, v13 offset:64
	ds_store_b16 v203, v14 offset:640
	ds_store_b16_d16_hi v203, v14 offset:704
	ds_store_b16 v208, v15
	ds_store_b16_d16_hi v208, v15 offset:64
	ds_store_b16 v209, v16
	ds_store_b16_d16_hi v209, v16 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v38 :: v_dual_mov_b32 v3, v39
	v_dual_mov_b32 v7, v42 :: v_dual_mov_b32 v10, v40
	v_mov_b32_e32 v11, v41
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s28, 0, 0x4800
	s_add_i32 s33, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	s_mov_b32 s8, 0
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
	v_xor_b32_e32 v1, v1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v7
	v_xor_b32_e32 v4, 16, v1
	v_xor_b32_e32 v5, 32, v1
	v_xor_b32_e32 v6, 48, v1
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
	v_add_nc_u32_e32 v62, s1, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v7, v62 offset:416
	ds_load_u8 v8, v62 offset:384
	ds_load_u8 v9, v62 offset:480
	ds_load_u8 v10, v62 offset:448
	ds_load_u8 v13, v62 offset:288
	ds_load_u8 v14, v62 offset:256
	ds_load_u8 v15, v62 offset:352
	ds_load_u8 v16, v62 offset:320
	ds_load_u8 v17, v62 offset:160
	ds_load_u8 v18, v62 offset:128
	ds_load_u8 v38, v62 offset:224
	ds_load_u8 v39, v62 offset:192
	ds_load_u8 v63, v62 offset:464
	ds_load_u8 v64, v62 offset:432
	ds_load_u8 v65, v62 offset:400
	ds_load_u8 v66, v62 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s4, v4
	v_add_nc_u32_e32 v12, s4, v1
	v_add_nc_u32_e32 v54, s4, v6
	v_add_nc_u32_e32 v58, s4, v5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v115, s1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v42, v18, v17, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[15:18], v11
	ds_load_b128 v[46:49], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v11, s1, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v8, v10, v9, 0xc0c0004
	ds_load_u8 v9, v62 offset:96
	ds_load_u8 v10, v62 offset:64
	ds_load_u8 v40, v62
	ds_load_u8 v41, v62 offset:32
	ds_load_u8 v67, v62 offset:336
	ds_load_u8 v68, v62 offset:304
	ds_load_u8 v69, v62 offset:272
	ds_load_u8 v70, v62 offset:240
	v_lshl_or_b32 v52, v14, 16, v13
	v_lshl_or_b32 v51, v38, 16, v42
	ds_load_u8 v77, v62 offset:16
	ds_load_u8 v78, v11
	v_lshl_or_b32 v53, v8, 16, v7
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v40, v41, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v65, v69, v68, 0xc0c0004
	v_lshl_or_b32 v50, v7, 16, v8
	v_mov_b32_e32 v7, s8
	ds_load_u8 v38, v62 offset:928
	ds_load_u8 v39, v62 offset:896
	ds_load_u8 v40, v62 offset:992
	ds_load_u8 v41, v62 offset:960
	ds_load_u8 v42, v62 offset:800
	ds_load_u8 v43, v62 offset:768
	ds_load_u8 v44, v62 offset:864
	ds_load_u8 v45, v62 offset:832
	ds_load_u8 v55, v62 offset:672
	ds_load_u8 v56, v62 offset:640
	ds_load_u8 v57, v62 offset:736
	ds_load_u8 v59, v62 offset:704
	ds_load_u8 v79, v62 offset:976
	ds_load_u8 v80, v62 offset:944
	ds_load_u8 v81, v62 offset:912
	ds_load_u8 v82, v62 offset:880
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	v_dual_mov_b32 v10, s11 :: v_dual_mov_b32 v11, s12
	v_dual_mov_b32 v12, s13 :: v_dual_mov_b32 v13, s14
	v_mov_b32_e32 v14, s15
	ds_load_u8 v71, v62 offset:208
	ds_load_u8 v72, v62 offset:176
	ds_load_u8 v73, v62 offset:144
	ds_load_u8 v74, v62 offset:112
	ds_load_u8 v75, v62 offset:80
	ds_load_u8 v76, v62 offset:48
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v87, v43, v42, 0xc0c0004
	ds_load_u8 v89, v62 offset:720
	ds_load_u8 v90, v62 offset:688
	ds_load_u8 v91, v62 offset:656
	ds_load_u8 v92, v62 offset:624
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v88, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v59, v57, 0xc0c0004
	ds_load_u8 v57, v62 offset:1440
	ds_load_u8 v59, v62 offset:1408
	ds_load_u8 v93, v62 offset:1504
	ds_load_u8 v94, v62 offset:1472
	ds_load_u8 v95, v62 offset:592
	ds_load_u8 v96, v62 offset:560
	ds_load_u8 v97, v62 offset:528
	ds_load_u8 v98, v62 offset:496
	v_perm_b32 v60, v39, v38, 0xc0c0004
	v_perm_b32 v61, v41, v40, 0xc0c0004
	ds_load_u8 v38, v62 offset:544
	ds_load_u8 v39, v62 offset:512
	ds_load_u8 v40, v62 offset:608
	ds_load_u8 v41, v62 offset:576
	ds_load_u8 v83, v62 offset:848
	ds_load_u8 v84, v62 offset:816
	ds_load_u8 v85, v62 offset:784
	ds_load_u8 v86, v62 offset:752
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v68, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v67, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v69, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v70, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v59, v57, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v62 offset:1184
	ds_load_u8 v102, v62 offset:1152
	ds_load_u8 v103, v62 offset:1248
	ds_load_u8 v104, v62 offset:1216
	ds_load_u8 v105, v62 offset:1056
	ds_load_u8 v106, v62 offset:1024
	ds_load_u8 v107, v62 offset:1120
	ds_load_u8 v108, v62 offset:1088
	ds_load_u8 v109, v62 offset:1392
	ds_load_u8 v110, v62 offset:1360
	ds_load_u8 v111, v62 offset:1328
	ds_load_u8 v112, v62 offset:1296
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v99, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v100, v41, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[50:53], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v61, 16, v60
	v_lshl_or_b32 v52, v88, 16, v87
	v_lshl_or_b32 v51, v56, 16, v55
	v_lshl_or_b32 v50, v100, 16, v99
	ds_load_u8 v55, v62 offset:1312
	ds_load_u8 v56, v62 offset:1280
	ds_load_u8 v60, v62 offset:1376
	ds_load_u8 v61, v62 offset:1344
	ds_load_u8 v87, v62 offset:1520
	ds_load_u8 v88, v62 offset:1488
	ds_load_u8 v99, v62 offset:1456
	ds_load_u8 v100, v62 offset:1424
	v_perm_b32 v63, v63, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[15:18], v[50:53], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v50, v102, v94, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v51, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	ds_load_u8 v107, v62 offset:1952
	ds_load_u8 v108, v62 offset:1920
	ds_load_u8 v116, v62 offset:2016
	ds_load_u8 v117, v62 offset:1984
	v_lshl_or_b32 v53, v93, 16, v101
	v_lshl_or_b32 v51, v51, 16, v50
	ds_load_u8 v94, v62 offset:1136
	ds_load_u8 v102, v62 offset:1104
	ds_load_u8 v103, v62 offset:1072
	ds_load_u8 v104, v62 offset:1040
	v_lshl_or_b32 v50, v106, 16, v105
	ds_load_u8 v105, v62 offset:1824
	ds_load_u8 v106, v62 offset:1792
	ds_load_u8 v118, v62 offset:1888
	ds_load_u8 v119, v62 offset:1856
	ds_load_u8 v120, v62 offset:1696
	ds_load_u8 v121, v62 offset:1664
	ds_load_u8 v122, v62 offset:1760
	ds_load_u8 v123, v62 offset:1728
	ds_load_u8 v124, v62 offset:1568
	ds_load_u8 v125, v62 offset:1536
	ds_load_u8 v126, v62 offset:1632
	ds_load_u8 v127, v62 offset:1600
	ds_load_u8 v115, v115
	ds_load_u8 v128, v62 offset:2000
	ds_load_u8 v129, v62 offset:1968
	ds_load_u8 v130, v62 offset:1936
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v113, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v114, v61, v60, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[54:57], v54
	ds_load_b128 v[58:61], v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_lshl_or_b32 v52, v114, 16, v113
	ds_load_u8 v93, v62 offset:1264
	ds_load_u8 v101, v62 offset:1232
	ds_load_u8 v113, v62 offset:1200
	ds_load_u8 v114, v62 offset:1168
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v106, v119, v118, 0xc0c0004
	ds_load_u8 v118, v62 offset:1776
	ds_load_u8 v119, v62 offset:1744
	ds_load_u8 v133, v62 offset:1712
	ds_load_u8 v134, v62 offset:1680
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v121, v123, v122, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v108, v117, v116, 0xc0c0004
	ds_load_u8 v116, v62 offset:1904
	ds_load_u8 v117, v62 offset:1872
	ds_load_u8 v131, v62 offset:1840
	ds_load_u8 v132, v62 offset:1808
	ds_load_u8 v122, v62 offset:1648
	ds_load_u8 v123, v62 offset:1616
	ds_load_u8 v135, v62 offset:1584
	ds_load_u8 v62, v62 offset:1552
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v125, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[50:53], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v108, 16, v107
	v_lshl_or_b32 v52, v106, 16, v105
	v_lshl_or_b32 v51, v121, 16, v120
	v_lshl_or_b32 v50, v125, 16, v124
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[50:53], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v63, 16, v64
	v_lshl_or_b32 v52, v66, 16, v65
	v_lshl_or_b32 v51, v68, 16, v67
	v_lshl_or_b32 v50, v69, 16, v70
	v_perm_b32 v63, v81, v80, 0xc0c0004
	v_perm_b32 v64, v79, v115, 0xc0c0004
	v_perm_b32 v65, v85, v84, 0xc0c0004
	v_perm_b32 v66, v83, v82, 0xc0c0004
	v_perm_b32 v67, v91, v90, 0xc0c0004
	v_perm_b32 v68, v89, v86, 0xc0c0004
	v_perm_b32 v69, v97, v96, 0xc0c0004
	v_perm_b32 v70, v95, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[46:49], v[50:53], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v64, 16, v63
	v_lshl_or_b32 v48, v66, 16, v65
	v_lshl_or_b32 v47, v68, 16, v67
	v_lshl_or_b32 v46, v70, 16, v69
	v_perm_b32 v50, v100, v99, 0xc0c0004
	v_perm_b32 v51, v88, v87, 0xc0c0004
	v_perm_b32 v52, v112, v111, 0xc0c0004
	v_perm_b32 v53, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v114, v113, 0xc0c0004
	v_perm_b32 v64, v101, v93, 0xc0c0004
	v_perm_b32 v65, v104, v103, 0xc0c0004
	v_perm_b32 v66, v102, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[15:18], v[46:49], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v51, 16, v50
	v_lshl_or_b32 v17, v53, 16, v52
	v_lshl_or_b32 v16, v64, 16, v63
	v_lshl_or_b32 v15, v66, 16, v65
	v_perm_b32 v46, v130, v129, 0xc0c0004
	v_perm_b32 v47, v128, v78, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v132, v131, 0xc0c0004
	v_perm_b32 v49, v117, v116, 0xc0c0004
	v_perm_b32 v50, v134, v133, 0xc0c0004
	v_perm_b32 v51, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v62, v135, 0xc0c0004
	v_perm_b32 v53, v123, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[58:61], v[15:18], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v47, 16, v46
	v_lshl_or_b32 v17, v49, 16, v48
	v_lshl_or_b32 v16, v51, 16, v50
	v_lshl_or_b32 v15, v53, 16, v52
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[7:14], v[54:57], v[15:18], v[7:14] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v40
	v_cvt_f32_i32_e32 v18, v43
	v_cvt_f32_i32_e32 v16, v41
	v_cvt_f32_i32_e32 v17, v42
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v45
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v39 :: v_dual_add_f32 v33, v33, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v39, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v18 :: v_dual_add_f32 v29, v29, v7
	v_dual_add_f32 v30, v30, v15 :: v_dual_add_f32 v27, v27, v9
	v_dual_add_f32 v28, v28, v8 :: v_dual_add_f32 v25, v25, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v11
	v_cvt_f32_i32_e32 v8, v12
	v_cvt_f32_i32_e32 v9, v13
	v_cvt_f32_i32_e32 v10, v14
	v_cvt_f32_i32_e32 v11, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v34, v34, v16 :: v_dual_add_f32 v31, v31, v39
	v_dual_add_f32 v24, v24, v7 :: v_dual_add_f32 v23, v23, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v22, v22, v9 :: v_dual_add_f32 v21, v21, v10
	v_add_f32_e32 v26, v26, v11
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v75, s28, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s28, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s33, v4
	v_add_nc_u32_e32 v54, s33, v6
	v_add_nc_u32_e32 v7, s33, v5
	v_add_nc_u32_e32 v1, s33, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v5, v58 offset:416
	ds_load_u8 v6, v58 offset:384
	ds_load_u8 v8, v58 offset:480
	ds_load_u8 v9, v58 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[46:49], v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s28, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v3, v58 offset:288
	ds_load_u8 v4, v58 offset:256
	ds_load_u8 v10, v58 offset:352
	ds_load_u8 v11, v58 offset:320
	ds_load_u8 v12, v58 offset:160
	ds_load_u8 v13, v58 offset:128
	ds_load_u8 v14, v58 offset:224
	ds_load_u8 v38, v58 offset:192
	ds_load_u8 v39, v58 offset:96
	ds_load_u8 v40, v58 offset:64
	ds_load_u8 v41, v58
	ds_load_u8 v42, v58 offset:32
	ds_load_u8 v59, v58 offset:464
	ds_load_u8 v60, v58 offset:432
	ds_load_u8 v61, v58 offset:400
	ds_load_u8 v62, v58 offset:368
	ds_load_u8 v73, v58 offset:16
	ds_load_u8 v74, v1
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v11, v10, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v40, v39, 0xc0c0004
	v_perm_b32 v6, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v41, v42, 0xc0c0004
	v_perm_b32 v9, v38, v14, 0xc0c0004
	v_dual_mov_b32 v45, s11 :: v_dual_mov_b32 v44, s10
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v4, 16, v3
	v_lshl_or_b32 v3, v10, 16, v1
	ds_load_u8 v1, v58 offset:928
	ds_load_u8 v55, v58 offset:896
	ds_load_u8 v56, v58 offset:992
	ds_load_u8 v57, v58 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[50:53], v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v8, v13, v12, 0xc0c0004
	v_dual_mov_b32 v43, s9 :: v_dual_mov_b32 v42, s8
	v_dual_mov_b32 v41, s7 :: v_dual_mov_b32 v40, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v4, v9, 16, v8
	v_dual_mov_b32 v39, s5 :: v_dual_mov_b32 v38, s4
	ds_load_u8 v63, v58 offset:336
	ds_load_u8 v64, v58 offset:304
	ds_load_u8 v65, v58 offset:272
	ds_load_u8 v66, v58 offset:240
	ds_load_u8 v67, v58 offset:208
	ds_load_u8 v68, v58 offset:176
	ds_load_u8 v69, v58 offset:144
	ds_load_u8 v70, v58 offset:112
	ds_load_u8 v71, v58 offset:80
	ds_load_u8 v72, v58 offset:48
	ds_load_u8 v109, v58 offset:1264
	ds_load_u8 v110, v58 offset:1232
	ds_load_u8 v111, v58 offset:1200
	ds_load_u8 v112, v58 offset:1168
	v_wmma_i32_16x16x16_iu8 v[7:14], v[46:49], v[3:6], v[38:45] neg_lo:[1,1,0]
	ds_load_u8 v2, v58 offset:800
	ds_load_u8 v3, v58 offset:768
	ds_load_u8 v4, v58 offset:864
	ds_load_u8 v5, v58 offset:832
	ds_load_u8 v6, v58 offset:672
	ds_load_u8 v76, v58 offset:640
	ds_load_u8 v77, v58 offset:736
	ds_load_u8 v78, v58 offset:704
	ds_load_u8 v79, v58 offset:976
	ds_load_u8 v80, v58 offset:944
	ds_load_u8 v81, v58 offset:912
	ds_load_u8 v82, v58 offset:880
	ds_load_u8 v125, v58 offset:1776
	ds_load_u8 v126, v58 offset:1744
	ds_load_u8 v127, v58 offset:1712
	ds_load_u8 v128, v58 offset:1680
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v1, v55, v1, 0xc0c0004
	ds_load_u8 v55, v58 offset:544
	ds_load_u8 v83, v58 offset:512
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v58 offset:608
	ds_load_u8 v84, v58 offset:576
	ds_load_u8 v85, v58 offset:848
	ds_load_u8 v86, v58 offset:816
	ds_load_u8 v87, v58 offset:784
	ds_load_u8 v88, v58 offset:752
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v56, 16, v1
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v6, v76, v6, 0xc0c0004
	ds_load_u8 v5, v58 offset:720
	ds_load_u8 v89, v58 offset:688
	ds_load_u8 v90, v58 offset:656
	ds_load_u8 v91, v58 offset:624
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	ds_load_u8 v77, v58 offset:592
	ds_load_u8 v78, v58 offset:560
	ds_load_u8 v92, v58 offset:528
	ds_load_u8 v93, v58 offset:496
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v63, v69, v68, 0xc0c0004
	v_lshl_or_b32 v2, v76, 16, v6
	v_perm_b32 v65, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v57, v84, v57, 0xc0c0004
	ds_load_u8 v84, v58 offset:1504
	ds_load_u8 v95, v58 offset:1472
	v_perm_b32 v55, v83, v55, 0xc0c0004
	ds_load_u8 v83, v58 offset:1440
	ds_load_u8 v94, v58 offset:1408
	v_perm_b32 v66, v71, v70, 0xc0c0004
	v_perm_b32 v67, v73, v72, 0xc0c0004
	v_lshl_or_b32 v1, v57, 16, v55
	ds_load_u8 v6, v58 offset:1312
	ds_load_u8 v55, v58 offset:1280
	ds_load_u8 v56, v58 offset:1376
	ds_load_u8 v57, v58 offset:1344
	ds_load_u8 v76, v58 offset:1184
	ds_load_u8 v96, v58 offset:1152
	ds_load_u8 v97, v58 offset:1248
	ds_load_u8 v98, v58 offset:1216
	ds_load_u8 v99, v58 offset:1520
	ds_load_u8 v100, v58 offset:1488
	ds_load_u8 v101, v58 offset:1456
	ds_load_u8 v102, v58 offset:1424
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v5, v5, v88, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[15:18], v[1:4], v[7:14] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v68, v77, v91, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v59, v59, v93, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v55, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_perm_b32 v84, v95, v84, 0xc0c0004
	ds_load_u8 v95, v58 offset:1120
	ds_load_u8 v104, v58 offset:1088
	ds_load_u8 v105, v58 offset:1392
	ds_load_u8 v106, v58 offset:1360
	ds_load_u8 v107, v58 offset:1328
	ds_load_u8 v108, v58 offset:1296
	v_perm_b32 v83, v94, v83, 0xc0c0004
	ds_load_u8 v94, v58 offset:1056
	ds_load_u8 v103, v58 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v96, v76, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v57, v98, v97, 0xc0c0004
	v_lshl_or_b32 v3, v55, 16, v6
	v_lshl_or_b32 v4, v84, 16, v83
	ds_load_u8 v76, v58 offset:1136
	ds_load_u8 v96, v58 offset:1104
	ds_load_u8 v97, v58 offset:1072
	ds_load_u8 v98, v58 offset:1040
	v_lshl_or_b32 v61, v59, 16, v60
	v_lshl_or_b32 v2, v57, 16, v56
	v_lshl_or_b32 v60, v62, 16, v64
	v_lshl_or_b32 v59, v65, 16, v63
	v_perm_b32 v62, v81, v80, 0xc0c0004
	v_perm_b32 v64, v87, v86, 0xc0c0004
	v_perm_b32 v65, v85, v82, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v95, v104, v95, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v94, v103, v94, 0xc0c0004
	ds_load_u8 v103, v58 offset:1952
	ds_load_u8 v113, v58 offset:1920
	ds_load_u8 v114, v58 offset:2016
	ds_load_u8 v115, v58 offset:1984
	v_lshl_or_b32 v1, v95, 16, v94
	ds_load_u8 v6, v58 offset:1824
	ds_load_u8 v55, v58 offset:1792
	ds_load_u8 v56, v58 offset:1888
	ds_load_u8 v57, v58 offset:1856
	ds_load_u8 v83, v58 offset:1696
	ds_load_u8 v84, v58 offset:1664
	ds_load_u8 v94, v58 offset:1760
	ds_load_u8 v95, v58 offset:1728
	ds_load_u8 v75, v75
	ds_load_u8 v104, v58 offset:2000
	ds_load_u8 v116, v58 offset:1968
	ds_load_u8 v117, v58 offset:1936
	v_wmma_i32_16x16x16_iu8 v[7:14], v[50:53], v[1:4], v[7:14] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v55, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v57, v56, 0xc0c0004
	v_perm_b32 v103, v113, v103, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v113, v115, v114, 0xc0c0004
	ds_load_u8 v114, v58 offset:1568
	ds_load_u8 v115, v58 offset:1536
	ds_load_u8 v118, v58 offset:1632
	ds_load_u8 v119, v58 offset:1600
	ds_load_u8 v120, v58 offset:1904
	ds_load_u8 v121, v58 offset:1872
	ds_load_u8 v122, v58 offset:1840
	ds_load_u8 v123, v58 offset:1808
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v84, v95, v94, 0xc0c0004
	v_lshl_or_b32 v3, v124, 16, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[54:57], v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v79, v75, 0xc0c0004
	v_lshl_or_b32 v4, v113, 16, v103
	v_lshl_or_b32 v2, v84, 16, v83
	ds_load_u8 v6, v58 offset:1648
	ds_load_u8 v83, v58 offset:1616
	ds_load_u8 v84, v58 offset:1584
	ds_load_u8 v94, v58 offset:1552
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v58, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v58, 16, v1
	v_lshl_or_b32 v58, v66, 16, v67
	v_perm_b32 v66, v90, v89, 0xc0c0004
	v_perm_b32 v67, v92, v78, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v83, v6, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[54:57], v[1:4], v[7:14] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[58:61], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v63, 16, v62
	v_lshl_or_b32 v48, v65, 16, v64
	v_lshl_or_b32 v47, v5, 16, v66
	v_lshl_or_b32 v46, v68, 16, v67
	v_perm_b32 v5, v102, v101, 0xc0c0004
	v_perm_b32 v58, v100, v99, 0xc0c0004
	v_perm_b32 v59, v108, v107, 0xc0c0004
	v_perm_b32 v60, v106, v105, 0xc0c0004
	v_perm_b32 v61, v112, v111, 0xc0c0004
	v_perm_b32 v62, v110, v109, 0xc0c0004
	v_perm_b32 v63, v98, v97, 0xc0c0004
	v_perm_b32 v64, v96, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[15:18], v[46:49], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v58, 16, v5
	v_lshl_or_b32 v17, v60, 16, v59
	v_lshl_or_b32 v16, v62, 16, v61
	v_lshl_or_b32 v15, v64, 16, v63
	v_perm_b32 v5, v117, v116, 0xc0c0004
	v_perm_b32 v46, v104, v74, 0xc0c0004
	v_perm_b32 v47, v123, v122, 0xc0c0004
	v_perm_b32 v48, v121, v120, 0xc0c0004
	v_perm_b32 v49, v128, v127, 0xc0c0004
	v_perm_b32 v58, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v94, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[15:18], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v46, 16, v5
	v_lshl_or_b32 v17, v48, 16, v47
	v_lshl_or_b32 v16, v58, 16, v49
	v_lshl_or_b32 v15, v6, 16, v59
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[15:18], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v38
	v_cvt_f32_i32_e32 v16, v39
	v_cvt_f32_i32_e32 v17, v40
	v_cvt_f32_i32_e32 v18, v41
	v_cvt_f32_i32_e32 v38, v42
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v40, v44
	v_cvt_f32_i32_e32 v41, v45
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s19, v37
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v36, v8 :: v_dual_and_b32 v1, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v26, v7 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v1, v3, v1, s18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v3, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v30, v14 :: v_dual_and_b32 v45, 0x7f, v0
	v_dual_add_f32 v10, v34, v10 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	v_or_b32_e32 v4, 4, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 12, v1
	v_or_b32_e32 v37, 16, v1
	v_or_b32_e32 v42, 20, v1
	v_or_b32_e32 v43, 24, v1
	v_or_b32_e32 v44, 28, v1
	s_clause 0x7
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v46, v0, 7, 1
	v_lshrrev_b32_e32 v47, 7, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v23, v39 :: v_dual_and_b32 v48, 14, v0
	v_dual_add_f32 v41, v21, v41 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v49, 0x440, 0, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v9, v35, v9 :: v_dual_add_f32 v12, v32, v12
	v_dual_add_f32 v11, v33, v11 :: v_dual_add_f32 v16, v28, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v31, v13 :: v_dual_and_b32 v0, 0x3f8, v0
	v_add_f32_e32 v18, v25, v18
	v_dual_add_f32 v15, v29, v15 :: v_dual_add_f32 v38, v24, v38
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v49, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v35, v9, s2
	v_cndmask_b32_e64 v10, v34, v10, s2
	v_cndmask_b32_e64 v11, v33, v11, s2
	v_cndmask_b32_e64 v12, v32, v12, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v48, 10, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v31, v13, s2
	v_cndmask_b32_e64 v14, v30, v14, s2
	v_cndmask_b32_e64 v15, v29, v15, s2
	v_cndmask_b32_e64 v16, v28, v16, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v28, 0, v0
	v_xad_u32 v29, v0, 8, 0
	v_xad_u32 v30, v0, 16, 0
	v_xad_u32 v31, v0, 24, 0
	v_xad_u32 v32, v0, 32, 0
	v_xad_u32 v33, v0, 40, 0
	v_xad_u32 v34, v0, 48, 0
	v_xad_u32 v35, v0, 56, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v27, v17 :: v_dual_add_f32 v40, v22, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v18, v25, v18, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v25, s29, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v27, v17, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s19, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v36, v8, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s3, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v38, s2
	v_cndmask_b32_e64 v23, v23, v39, s2
	v_cndmask_b32_e64 v22, v22, v40, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v25, s3, v45, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v41, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s4, s29, 1
	s_lshl_b32 s5, s29, 2
	s_mul_i32 s8, s29, 6
	s_lshl_b32 s9, s29, 3
	s_mul_i32 s10, s29, 10
	s_mul_i32 s11, s29, 12
	s_mul_i32 s12, s29, 14
	s_lshl_b32 s13, s29, 4
	s_mul_i32 s14, s29, 18
	s_mul_i32 s15, s29, 20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s20, s29, 22
	s_mul_i32 s21, s29, 24
	s_mul_i32 s22, s29, 26
	s_mul_i32 s23, s29, 28
	s_mul_i32 s1, s29, 30
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v0, 16, v2
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v2, 16, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v4
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v4, 16, v5
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v5, 16, v6
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v6, 16, v37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v42
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v43
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v44
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v55, v2, v5
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v27, 2, v48
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v48, v0, v4 :: v_dual_and_b32 v19, 0x380, v19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v20, 6, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v0, v1
	v_dual_mul_f32 v1, v2, v1 :: v_dual_mul_f32 v52, v0, v42
	v_dual_mul_f32 v47, v0, v3 :: v_dual_and_b32 v26, 0x440, v46
	v_mul_f32_e32 v51, v0, v37
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v15, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v3, v2, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v20, v26, v20
	v_add_lshl_u32 v26, v25, s4, 2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v16, v3
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v0, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_or3_b32 v19, v19, v27, v20
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v56, v2, v6
	v_dual_mul_f32 v53, v0, v43 :: v_dual_lshlrev_b32 v20, 2, v25
	v_mul_f32_e32 v43, v2, v43
	v_dual_mul_f32 v54, v2, v4 :: v_dual_mul_f32 v49, v0, v5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v36, 0, v19
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v0, v7, v44 :: v_dual_mul_f32 v37, v2, v37
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v42, v2, v42
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xad_u32 v38, 0x808, v19, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v8, v47 :: v_dual_mul_f32 v5, v17, v54
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v39, 0x1010, v19, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v9, v48 :: v_dual_mul_f32 v7, v18, v55
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v40, 0x1818, v19, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v6, v10, v49 :: v_dual_mul_f32 v15, v21, v43
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v41, 0x2020, v19, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v11, v50
	v_dual_mul_f32 v10, v12, v51 :: v_dual_mul_f32 v11, v23, v37
	v_dual_mul_f32 v14, v14, v53 :: v_dual_mul_f32 v9, v24, v56
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v13, v22, v42
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v45, 0x2828, v19, 0
	v_xad_u32 v46, 0x3030, v19, 0
	v_xad_u32 v19, 0x3838, v19, 0
	ds_store_b64 v28, v[0:1]
	ds_store_b64 v29, v[2:3]
	ds_store_b64 v30, v[4:5]
	ds_store_b64 v31, v[6:7]
	ds_store_b64 v32, v[8:9]
	ds_store_b64 v33, v[10:11]
	ds_store_b64 v34, v[12:13]
	ds_store_b64 v35, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v36
	ds_load_b64 v[2:3], v38
	ds_load_b64 v[4:5], v39
	ds_load_b64 v[6:7], v40
	ds_load_b64 v[8:9], v41
	ds_load_b64 v[10:11], v45
	ds_load_b64 v[12:13], v46
	ds_load_b64 v[14:15], v19
	v_add_lshl_u32 v27, v25, s5, 2
	v_add_lshl_u32 v16, v25, s8, 2
	v_add_lshl_u32 v17, v25, s9, 2
	v_add_lshl_u32 v18, v25, s10, 2
	v_add_lshl_u32 v19, v25, s11, 2
	v_add_lshl_u32 v21, v25, s12, 2
	v_add_lshl_u32 v22, v25, s13, 2
	v_add_lshl_u32 v23, v25, s14, 2
	v_add_lshl_u32 v24, v25, s15, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v20, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v26, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v27, s[16:19], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v16, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v17, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v18, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v19, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v21, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v22, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v23, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v24, s[16:19], 0 offen
	v_add_lshl_u32 v28, v25, s20, 2
	v_add_lshl_u32 v29, v25, s21, 2
	v_add_lshl_u32 v30, v25, s22, 2
	v_add_lshl_u32 v31, v25, s23, 2
	v_add_lshl_u32 v0, v25, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v28, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v29, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v30, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v31, s[16:19], 0 offen
	buffer_atomic_add_f32 v15, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 35
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 210
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12664
; TotalNumSgprs: 37
; NumVgprs: 210
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     210
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
