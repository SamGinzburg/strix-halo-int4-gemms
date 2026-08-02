	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v9, v0, 0, 1
	v_and_b32_e32 v33, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v6, 62, v3
	v_and_b32_e32 v34, 32, v0
	v_lshlrev_b32_e32 v35, 6, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v9, 0x420, v9
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
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s29, v6
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v7, s12, v4
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v10, v2, 4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s13
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s18, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s2
	s_abs_i32 s16, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s19, 0, s16
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s17, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v5, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s19, s19, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s17, s19
	s_add_i32 s17, s17, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s14, s17
	s_xor_b32 s17, s2, s18
	s_mul_i32 s19, s13, s16
	s_ashr_i32 s20, s17, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s17, s13, 1
	s_sub_i32 s19, s14, s16
	s_cmp_ge_u32 s14, s16
	s_cselect_b32 s13, s17, s13
	s_cselect_b32 s14, s19, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_cselect_b32 s6, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s14, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s6, s20
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s22, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, s6, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s22, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s6, s18
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s6, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s21, s22, s3
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s20, s2, 4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s14
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s12, s20, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s28, s2, v10
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v7, v5, s12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s22, 63
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s29, v3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s29, 6, v3
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v8, s[16:19], 0 offen
	buffer_load_b128 v[20:23], v7, s[16:19], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s30, s14, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s29, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s14, v12
	v_add_nc_u32_e32 v7, s30, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_mov_b32 s15, 0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[24:27], v3, s[16:19], 0 offen
	buffer_load_b128 v[28:31], v8, s[16:19], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b32 v50, v5, s[4:7], 0 offen
	buffer_load_b32 v51, v7, s[4:7], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 6, v0
	v_lshlrev_b32_e32 v3, 5, v0
	s_mov_b64 s[12:13], s[10:11]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v13, 48, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v11, 0x70, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s22, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v36, v7, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v7, v9, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v5, v4, 1, v11
	v_lshlrev_b32_e32 v4, 3, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v52, 0, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v37, v8, 10, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 2, v5
	v_or_b32_e32 v13, 4, v5
	v_or_b32_e32 v14, 6, v5
	v_or_b32_e32 v15, 8, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v38, 0x90, v37
	v_xor_b32_e32 v39, 0x120, v37
	v_xor_b32_e32 v40, 0x1b0, v37
	v_xor_b32_e32 v41, 0x210, v37
	v_xor_b32_e32 v42, 0x330, v37
	v_xor_b32_e32 v43, 0x3a0, v37
	v_add_nc_u32_e32 v53, 0, v37
	v_add_nc_u32_e32 v54, 0, v38
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 10, v5
	v_or_b32_e32 v7, 12, v5
	v_or_b32_e32 v8, 14, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v55, 0, v39
	v_add_nc_u32_e32 v56, 0, v40
	v_add_nc_u32_e32 v57, 0, v41
	v_add_nc_u32_e32 v58, 0, v42
	v_add_nc_u32_e32 v59, 0, v43
	s_waitcnt vmcnt(4)
	v_perm_b32 v32, v20, v16, 0x5010400
	v_perm_b32 v44, v21, v17, 0x5010400
	v_perm_b32 v20, v20, v16, 0x7030602
	v_perm_b32 v21, v21, v17, 0x7030602
	v_perm_b32 v45, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	v_perm_b32 v46, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_lshrrev_b32_e32 v47, 8, v32
	v_lshrrev_b32_e32 v60, 8, v44
	s_waitcnt vmcnt(2)
	v_perm_b32 v69, v28, v24, 0x5010400
	v_lshrrev_b32_e32 v48, 24, v32
	v_lshrrev_b32_e32 v61, 24, v44
	v_and_b16 v11.l, 0xff, v32.l
	v_and_b16 v11.h, 0xff, v32.h
	v_lshrrev_b32_e32 v32, 8, v20
	v_lshrrev_b32_e32 v62, 24, v21
	v_perm_b32 v70, v28, v24, 0x7030602
	v_lshrrev_b32_e32 v49, 24, v20
	v_lshrrev_b32_e32 v63, 8, v45
	v_and_b16 v17.l, 0xff, v44.l
	v_and_b16 v17.h, 0xff, v44.h
	v_and_b16 v18.l, 0xff, v21.l
	v_lshrrev_b32_e32 v44, 8, v21
	v_and_b16 v18.h, 0xff, v21.h
	v_and_b16 v19.l, 0xff, v45.l
	v_lshrrev_b32_e32 v64, 24, v45
	v_and_b16 v19.h, 0xff, v45.h
	v_lshrrev_b32_e32 v45, 8, v22
	v_lshrrev_b32_e32 v65, 24, v22
	v_and_b16 v21.l, 0xff, v46.l
	v_lshrrev_b32_e32 v66, 8, v46
	v_lshrrev_b32_e32 v67, 24, v46
	v_and_b16 v21.h, 0xff, v46.h
	v_lshrrev_b32_e32 v46, 8, v23
	v_lshrrev_b32_e32 v68, 24, v23
	v_perm_b32 v71, v29, v25, 0x5010400
	v_perm_b32 v72, v29, v25, 0x7030602
	v_perm_b32 v73, v30, v26, 0x5010400
	v_perm_b32 v74, v30, v26, 0x7030602
	v_perm_b32 v75, v31, v27, 0x5010400
	v_perm_b32 v76, v31, v27, 0x7030602
	v_and_b16 v16.l, 0xff, v20.l
	v_and_b16 v20.l, 0xff, v22.l
	v_and_b16 v22.l, 0xff, v23.l
	v_lshlrev_b16 v23.l, 8, v47.l
	v_lshlrev_b16 v25.l, 8, v60.l
	v_lshrrev_b32_e32 v60, 8, v69
	v_and_b16 v16.h, 0xff, v20.h
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v22.h, 0xff, v23.h
	v_lshlrev_b16 v23.h, 8, v48.l
	v_lshlrev_b16 v25.h, 8, v61.l
	v_lshrrev_b32_e32 v61, 24, v69
	v_lshlrev_b16 v24.l, 8, v32.l
	v_lshlrev_b16 v26.h, 8, v62.l
	v_lshrrev_b32_e32 v62, 8, v70
	v_lshlrev_b16 v24.h, 8, v49.l
	v_lshlrev_b16 v27.l, 8, v63.l
	v_lshrrev_b32_e32 v63, 24, v70
	v_lshlrev_b16 v26.l, 8, v44.l
	v_lshlrev_b16 v27.h, 8, v64.l
	v_lshlrev_b16 v28.l, 8, v45.l
	v_lshlrev_b16 v28.h, 8, v65.l
	v_lshlrev_b16 v29.l, 8, v66.l
	v_lshlrev_b16 v29.h, 8, v67.l
	v_lshlrev_b16 v30.l, 8, v46.l
	v_lshlrev_b16 v30.h, 8, v68.l
	v_and_b16 v31.l, 0xff, v69.l
	v_and_b16 v31.h, 0xff, v69.h
	v_and_b16 v32.l, 0xff, v70.l
	v_and_b16 v32.h, 0xff, v70.h
	v_and_b16 v44.l, 0xff, v71.l
	v_lshrrev_b32_e32 v64, 8, v71
	v_lshrrev_b32_e32 v65, 24, v71
	v_and_b16 v44.h, 0xff, v71.h
	v_and_b16 v45.l, 0xff, v72.l
	v_lshrrev_b32_e32 v66, 8, v72
	v_lshrrev_b32_e32 v67, 24, v72
	v_and_b16 v45.h, 0xff, v72.h
	v_and_b16 v46.l, 0xff, v73.l
	v_lshrrev_b32_e32 v68, 8, v73
	v_lshrrev_b32_e32 v69, 24, v73
	v_and_b16 v46.h, 0xff, v73.h
	v_and_b16 v47.l, 0xff, v74.l
	v_lshrrev_b32_e32 v70, 8, v74
	v_lshrrev_b32_e32 v71, 24, v74
	v_and_b16 v47.h, 0xff, v74.h
	v_and_b16 v48.l, 0xff, v75.l
	v_lshrrev_b32_e32 v72, 8, v75
	v_lshrrev_b32_e32 v73, 24, v75
	v_and_b16 v48.h, 0xff, v75.h
	v_lshrrev_b32_e32 v74, 8, v76
	v_lshrrev_b32_e32 v75, 24, v76
	v_or_b16 v11.l, v11.l, v23.l
	v_lshlrev_b16 v23.l, 8, v60.l
	v_or_b16 v11.h, v11.h, v23.h
	v_lshlrev_b16 v23.h, 8, v61.l
	v_or_b16 v16.l, v16.l, v24.l
	v_lshlrev_b16 v24.l, 8, v62.l
	v_or_b16 v16.h, v16.h, v24.h
	v_lshlrev_b16 v24.h, 8, v63.l
	v_and_b16 v49.l, 0xff, v76.l
	v_and_b16 v49.h, 0xff, v76.h
	v_or_b16 v17.l, v17.l, v25.l
	v_or_b16 v17.h, v17.h, v25.h
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v19.h, v19.h, v27.h
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v21.l, v21.l, v29.l
	v_or_b16 v21.h, v21.h, v29.h
	v_or_b16 v22.l, v22.l, v30.l
	v_or_b16 v22.h, v22.h, v30.h
	v_lshlrev_b16 v25.l, 8, v64.l
	v_lshlrev_b16 v25.h, 8, v65.l
	v_lshlrev_b16 v26.l, 8, v66.l
	v_lshlrev_b16 v26.h, 8, v67.l
	v_lshlrev_b16 v27.l, 8, v68.l
	v_lshlrev_b16 v27.h, 8, v69.l
	v_lshlrev_b16 v28.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v71.l
	v_lshlrev_b16 v29.l, 8, v72.l
	v_lshlrev_b16 v29.h, 8, v73.l
	v_lshlrev_b16 v30.l, 8, v74.l
	v_lshlrev_b16 v30.h, 8, v75.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v52, v50 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v53, v11
	ds_store_b16_d16_hi v53, v11 offset:64
	ds_store_b16 v54, v16
	ds_store_b16_d16_hi v54, v16 offset:64
	ds_store_b16 v55, v17
	ds_store_b16_d16_hi v55, v17 offset:64
	ds_store_b16 v56, v18
	ds_store_b16_d16_hi v56, v18 offset:64
	ds_store_b16 v57, v19
	ds_store_b16_d16_hi v57, v19 offset:64
	ds_store_b16 v53, v20 offset:640
	ds_store_b16_d16_hi v53, v20 offset:704
	ds_store_b16 v58, v21
	ds_store_b16_d16_hi v58, v21 offset:64
	ds_store_b16 v59, v22
	ds_store_b16_d16_hi v59, v22 offset:64
	v_or_b16 v11.l, v31.l, v23.l
	v_or_b16 v11.h, v31.h, v23.h
	v_or_b16 v16.l, v32.l, v24.l
	v_or_b16 v16.h, v32.h, v24.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v17.l, v44.l, v25.l
	v_or_b16 v17.h, v44.h, v25.h
	v_or_b16 v18.l, v45.l, v26.l
	v_or_b16 v18.h, v45.h, v26.h
	v_or_b16 v19.l, v46.l, v27.l
	v_or_b16 v19.h, v46.h, v27.h
	v_or_b16 v20.l, v47.l, v28.l
	v_or_b16 v20.h, v47.h, v28.h
	v_or_b16 v21.l, v48.l, v29.l
	v_or_b16 v21.h, v48.h, v29.h
	v_or_b16 v22.l, v49.l, v30.l
	v_or_b16 v22.h, v49.h, v30.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v52, v51 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v53, v11 offset:8192
	ds_store_b16_d16_hi v53, v11 offset:8256
	ds_store_b16 v54, v16 offset:8192
	ds_store_b16_d16_hi v54, v16 offset:8256
	ds_store_b16 v55, v17 offset:8192
	ds_store_b16_d16_hi v55, v17 offset:8256
	ds_store_b16 v56, v18 offset:8192
	ds_store_b16_d16_hi v56, v18 offset:8256
	ds_store_b16 v57, v19 offset:8192
	ds_store_b16_d16_hi v57, v19 offset:8256
	ds_store_b16 v53, v20 offset:8832
	ds_store_b16_d16_hi v53, v20 offset:8896
	ds_store_b16 v58, v21 offset:8192
	ds_store_b16_d16_hi v58, v21 offset:8256
	ds_store_b16 v59, v22 offset:8192
	ds_store_b16_d16_hi v59, v22 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v29, v1, 6, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v45, 6, v2
	v_and_b32_e32 v2, 8, v0
	v_and_b32_e32 v46, 32, v0
	v_and_or_b32 v44, 0x1800, v3, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v32, 16, v29
	v_xor_b32_e32 v30, 32, v29
	v_xor_b32_e32 v31, 48, v29
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow15
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v11, s20, v1
	s_ashr_i32 s31, s21, 6
	v_or_b32_e32 v27, s28, v5
	v_or_b32_e32 v26, s28, v9
	v_or_b32_e32 v25, s28, v13
	v_mul_lo_u32 v28, v11, s31
	v_or_b32_e32 v23, s28, v14
	v_or_b32_e32 v21, s28, v15
	v_or_b32_e32 v24, s28, v6
	v_or_b32_e32 v22, s28, v7
	v_or_b32_e32 v20, s28, v8
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	v_lshl_or_b32 v29, v1, 6, v4
	v_and_or_b32 v44, 0x1800, v3, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v2, 0x420, v2
	v_mov_b32_e32 v13, 0
	v_xor_b32_e32 v32, 16, v29
	v_xor_b32_e32 v30, 32, v29
	v_xor_b32_e32 v31, 48, v29
	v_and_or_b32 v1, 0x210, v5, v2
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s35, s31, 3
	s_add_i32 s11, s30, 64
	v_xor_b32_e32 v1, v1, v44
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	v_or_b32_e32 v46, v1, v35
	v_mov_b32_e32 v1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v45, s29, v10
	v_mov_b32_e32 v9, 0
	s_add_i32 s10, 0, 0x4000
	v_xor_b32_e32 v47, 16, v46
	v_xor_b32_e32 v48, 32, v46
	v_xor_b32_e32 v49, 48, v46
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v17, 0
	s_add_i32 s33, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s37, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_mov_b32 s38, s14
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s39, s37, 6
	s_mov_b32 s14, s30
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s30, s11, s39
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s39, s38, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v50, s30, v12
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s39, s39, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s40, s30, s29
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s38, s38, s39
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s40, s40, s28
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s38, s38, 6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v98, v50, s[4:7], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s38, s31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v50, v28, s38, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s38, s38, s29
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v51, s40, v10
	v_add_nc_u32_e32 v52, s40, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v53, v27, s38, 1
	v_add_lshl_u32 v54, v26, s38, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v55, v25, s38, 1
	v_add_lshl_u32 v56, v23, s38, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v21, s38, 1
	v_add_lshl_u32 v66, v24, s38, 1
	v_add_lshl_u32 v67, v22, s38, 1
	v_add_lshl_u32 v68, v20, s38, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[58:61], v51, s[16:19], 0 offen
	buffer_load_b128 v[62:65], v52, s[16:19], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v51, 0x80000000, v53
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v52, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v55
	v_dual_cndmask_b32 v54, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v57
	v_dual_cndmask_b32 v56, 0x80000000, v66 :: v_dual_cndmask_b32 v57, 0x80000000, v67
	v_cndmask_b32_e32 v66, 0x80000000, v68, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v99, v50, s[20:23], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v100, v51, s[24:27], 0 offen
	buffer_load_u16 v101, v52, s[24:27], 0 offen
	buffer_load_u16 v102, v53, s[24:27], 0 offen
	buffer_load_u16 v103, v54, s[24:27], 0 offen
	buffer_load_u16 v104, v55, s[24:27], 0 offen
	buffer_load_u16 v105, v56, s[24:27], 0 offen
	buffer_load_u16 v106, v57, s[24:27], 0 offen
	buffer_load_u16 v107, v66, s[24:27], 0 offen
	s_mov_b32 s38, s10
	s_mov_b32 s10, s33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v50, s38, v29
	v_add_nc_u32_e32 v51, s38, v32
	s_mov_b32 s33, s15
	v_add_nc_u32_e32 v52, s38, v30
	v_add_nc_u32_e32 v53, s38, v31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v54, s33, v46
	v_add_nc_u32_e32 v55, s33, v47
	v_add_nc_u32_e32 v56, s33, v48
	v_add_nc_u32_e32 v57, s33, v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[66:69], v50
	ds_load_b128 v[70:73], v51
	ds_load_b128 v[74:77], v52
	ds_load_b128 v[78:81], v53
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v54
	ds_load_b128 v[86:89], v55
	ds_load_b128 v[90:93], v56
	ds_load_b128 v[94:97], v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s33, s36, 1
	s_mov_b32 s15, s34
	s_cmp_lt_i32 s33, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s33, 0
	s_add_i32 s38, s37, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s33, s36, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s34, s36, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s39, s33, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s34, s34, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s33, s39, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s37, s35
	s_mov_b32 s37, s38
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v113, s34, v41
	v_add_nc_u32_e32 v114, s34, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[82:85], v[66:69], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s34, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[86:89], v[70:73], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[90:93], v[74:77], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[94:97], v[78:81], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v66, v50
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v51, v62, v58, 0x5010400
	v_perm_b32 v52, v62, v58, 0x7030602
	v_perm_b32 v53, v63, v59, 0x5010400
	v_perm_b32 v54, v63, v59, 0x7030602
	v_perm_b32 v55, v64, v60, 0x5010400
	v_perm_b32 v56, v64, v60, 0x7030602
	v_perm_b32 v57, v65, v61, 0x5010400
	v_perm_b32 v58, v65, v61, 0x7030602
	v_lshrrev_b32_e32 v59, 8, v51
	v_lshrrev_b32_e32 v60, 24, v51
	v_lshrrev_b32_e32 v61, 8, v52
	v_lshrrev_b32_e32 v62, 24, v52
	v_lshrrev_b32_e32 v63, 8, v53
	v_lshrrev_b32_e32 v64, 24, v53
	v_lshrrev_b32_e32 v65, 8, v54
	v_lshrrev_b32_e32 v74, 24, v54
	v_lshrrev_b32_e32 v75, 8, v55
	v_lshrrev_b32_e32 v76, 24, v55
	v_lshrrev_b32_e32 v77, 8, v56
	v_lshrrev_b32_e32 v78, 24, v56
	v_lshrrev_b32_e32 v79, 8, v57
	v_lshrrev_b32_e32 v80, 24, v57
	v_lshrrev_b32_e32 v81, 8, v58
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v83, 16, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v84, 16, v100
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v85, 16, v101
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v86, 16, v102
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v87, 16, v103
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v88, 16, v104
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v89, 16, v105
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v90, 16, v106
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v50.l, 0xff, v51.l
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.l, 0xff, v52.l
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.l, 0xff, v53.l
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.l, 0xff, v54.l
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.l, 0xff, v55.l
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.l, 0xff, v56.l
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.l, 0xff, v57.l
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v82, 24, v58
	v_and_b16 v57.h, 0xff, v58.h
	v_lshlrev_b16 v58.l, 8, v59.l
	v_lshlrev_b16 v58.h, 8, v60.l
	v_lshlrev_b16 v59.l, 8, v61.l
	v_lshlrev_b16 v59.h, 8, v62.l
	v_lshlrev_b16 v60.l, 8, v63.l
	v_lshlrev_b16 v60.h, 8, v64.l
	v_lshlrev_b16 v61.l, 8, v65.l
	v_lshlrev_b16 v61.h, 8, v74.l
	v_lshlrev_b16 v62.l, 8, v75.l
	v_lshlrev_b16 v62.h, 8, v76.l
	v_lshlrev_b16 v63.l, 8, v77.l
	v_lshlrev_b16 v63.h, 8, v78.l
	v_lshlrev_b16 v64.l, 8, v79.l
	v_lshlrev_b16 v64.h, 8, v80.l
	v_lshlrev_b16 v65.l, 8, v81.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v74, v83, v84
	v_mul_f32_e32 v75, v83, v85
	v_mul_f32_e32 v76, v83, v86
	v_mul_f32_e32 v77, v83, v87
	v_mul_f32_e32 v78, v83, v88
	v_mul_f32_e32 v79, v83, v89
	v_mul_f32_e32 v80, v83, v90
	v_dual_mul_f32 v81, v83, v91 :: v_dual_add_nc_u32 v108, s39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v17, v78, v70
	v_dual_fmac_f32 v18, v79, v71 :: v_dual_add_nc_u32 v109, s34, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v19, v80, v72 :: v_dual_add_nc_u32 v110, s34, v38
	v_dual_fmac_f32 v16, v77, v69 :: v_dual_add_nc_u32 v111, s34, v39
	v_dual_fmac_f32 v13, v81, v73 :: v_dual_add_nc_u32 v112, s34, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v65.h, 8, v82.l
	v_or_b16 v50.l, v50.l, v58.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v9, v74, v66 :: v_dual_fmac_f32 v14, v75, v67
	v_fmac_f32_e32 v15, v76, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v108, v98 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	v_or_b16 v54.h, v54.h, v62.h
	v_or_b16 v55.l, v55.l, v63.l
	v_or_b16 v55.h, v55.h, v63.h
	v_or_b16 v56.l, v56.l, v64.l
	v_or_b16 v56.h, v56.h, v64.h
	v_or_b16 v57.l, v57.l, v65.l
	v_or_b16 v57.h, v57.h, v65.h
	ds_store_b16 v109, v50
	ds_store_b16_d16_hi v109, v50 offset:64
	ds_store_b16 v110, v51
	ds_store_b16_d16_hi v110, v51 offset:64
	ds_store_b16 v111, v52
	ds_store_b16_d16_hi v111, v52 offset:64
	ds_store_b16 v112, v53
	ds_store_b16_d16_hi v112, v53 offset:64
	ds_store_b16 v113, v54
	ds_store_b16_d16_hi v113, v54 offset:64
	ds_store_b16 v109, v55 offset:640
	ds_store_b16_d16_hi v109, v55 offset:704
	ds_store_b16 v114, v56
	ds_store_b16_d16_hi v114, v56 offset:64
	ds_store_b16 v115, v57
	ds_store_b16_d16_hi v115, v57 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v45, v35 :: v_dual_mov_b32 v2, v33
	v_mov_b32_e32 v46, v34
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v9, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s33, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %Flow16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_and_b32_e32 v12, 0xf0, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v8, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	v_mov_b32_e32 v10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v5, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v1, v2
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v6, v2, v44
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v51, v6, v45
	v_mov_b32_e32 v6, 0
	v_xor_b32_e32 v52, 16, v51
	v_xor_b32_e32 v49, 32, v51
	v_xor_b32_e32 v50, 48, v51
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v2, s15, v52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s15, v51
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, s10, v32
	v_add_nc_u32_e32 v8, s10, v29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v10, s15, v50
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v37, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[41:44], v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[53:56], v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s15, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v7, s10, v31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s10, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v10
	ds_load_b128 v[61:64], v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[65:68], v7
	ds_load_b128 v[69:72], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v40, v33
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[53:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[2:5], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[65:68], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v2, v34
	v_cvt_f32_i32_e32 v3, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v36
	v_cvt_f32_i32_e32 v6, v37
	v_cvt_f32_i32_e32 v7, v38
	v_cvt_f32_i32_e32 v8, v39
	v_cvt_f32_i32_e32 v10, v40
	v_cvt_f32_i32_e32 v4, v33
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
	v_add_lshl_u32 v33, v28, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v27, s4, 1
	v_add_lshl_u32 v35, v26, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v36, v25, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v38, v24, s4, 1
	v_add_lshl_u32 v37, v21, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v40, v33, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v33, 0x80000000, v34 :: v_dual_cndmask_b32 v34, 0x80000000, v35
	v_dual_cndmask_b32 v35, 0x80000000, v36 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_add_lshl_u32 v36, v23, s4, 1
	v_add_lshl_u32 v39, v22, s4, 1
	v_add_lshl_u32 v41, v20, s4, 1
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v48, 0x80000000, v41
	s_clause 0x7
	buffer_load_u16 v41, v33, s[12:15], 0 offen
	buffer_load_u16 v42, v34, s[12:15], 0 offen
	buffer_load_u16 v43, v35, s[12:15], 0 offen
	buffer_load_u16 v44, v36, s[12:15], 0 offen
	buffer_load_u16 v45, v37, s[12:15], 0 offen
	buffer_load_u16 v46, v38, s[12:15], 0 offen
	buffer_load_u16 v47, v39, s[12:15], 0 offen
	buffer_load_u16 v48, v48, s[12:15], 0 offen
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v39, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s34, v52
	v_add_nc_u32_e32 v33, s34, v51
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v32, s33, v32
	v_add_nc_u32_e32 v29, s33, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v34, s34, v50
	ds_load_b128 v[50:53], v1
	ds_load_b128 v[54:57], v33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[58:61], v32
	ds_load_b128 v[62:65], v29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v1, s34, v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v29, s33, v31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v35, v32 :: v_dual_add_nc_u32 v30, s33, v30
	v_mov_b32_e32 v33, v32
	v_mov_b32_e32 v38, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[66:69], v34
	ds_load_b128 v[70:73], v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[74:77], v29
	ds_load_b128 v[78:81], v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v34, v32
	v_mov_b32_e32 v36, v32
	v_mov_b32_e32 v37, v32
	v_mov_b32_e32 v39, v32
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[54:57], v[62:65], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[50:53], v[58:61], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[70:73], v[78:81], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[66:69], v[74:77], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v32
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v29.h, v40.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v31.h, v47.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v31.l, v29.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v28, v28, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s29
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v27, v27, s4, 1
	v_add_lshl_u32 v26, v26, s4, 1
	v_add_lshl_u32 v25, v25, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v23, v23, s4, 1
	v_add_lshl_u32 v21, v21, s4, 1
	v_add_lshl_u32 v24, v24, s4, 1
	v_add_lshl_u32 v22, v22, s4, 1
	v_add_lshl_u32 v20, v20, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_mul_f32 v31, v29, v31
	s_clause 0x7
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v41.h, v44.l
	v_mov_b16_e32 v44.h, v41.l
	v_mov_b16_e32 v41.l, v29.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v30.h, v48.l
	v_mov_b16_e32 v32.h, v46.l
	v_mov_b16_e32 v40.h, v45.l
	v_mov_b16_e32 v42.h, v43.l
	v_mov_b16_e32 v43.h, v42.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v46, 0x7632 :: v_dual_mul_f32 v41, v29, v41
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v30.l, v29.l
	v_mov_b16_e32 v32.l, v29.l
	v_mov_b16_e32 v40.l, v29.l
	v_mov_b16_e32 v42.l, v29.l
	v_mov_b16_e32 v43.l, v29.l
	v_mov_b16_e32 v44.l, v29.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.h, v29.l
	v_mov_b16_e32 v48.h, v29.l
	v_mov_b16_e32 v49.h, v29.l
	v_mov_b16_e32 v50.h, v29.l
	v_mov_b16_e32 v51.h, v29.l
	v_mov_b16_e32 v52.h, v29.l
	v_mov_b16_e32 v53.h, v29.l
	v_mov_b16_e32 v54.h, v29.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v29, v30
	v_mul_f32_e32 v32, v29, v32
	v_mul_f32_e32 v40, v29, v40
	v_mul_f32_e32 v42, v29, v42
	v_mul_f32_e32 v43, v29, v43
	v_mul_f32_e32 v29, v29, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v41, v5, v16
	v_fma_f32 v8, v31, v8, v19
	v_fma_f32 v3, v42, v3, v15
	v_fma_f32 v2, v43, v2, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v16, v5, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v3, v15, v3, s2
	v_cndmask_b32_e64 v2, v14, v2, s2
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v12, 1, v12
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v11, v11, s29
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v14, 16, v26
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v15, 16, v25
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v29, v4, v9
	v_fma_f32 v6, v40, v6, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v9, v4, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v30, v10, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v17, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v16, v9, v16 :: v_dual_lshlrev_b32 v19, 16, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v13, v10, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v13, 16, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v32, v7, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v9, v14
	v_dual_mul_f32 v15, v9, v15 :: v_dual_lshlrev_b32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v13, v9, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v18, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v24
	s_mov_b32 s2, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v13, v1, v4
	v_fma_f32 v13, v14, v33, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v9, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v15, v34, v3
	v_fma_f32 v15, v16, v35, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v4, v1, s3
	v_cndmask_b32_e64 v2, v2, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v9, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v14, s3
	v_cndmask_b32_e64 v4, v5, v15, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v19, v9, v19 :: v_dual_max_f32 v2, v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v17, v36, v6
	v_fma_f32 v17, v18, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v19, v38, v8
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v6, v16, s3
	v_cndmask_b32_e64 v6, v7, v17, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v8, v18, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, v5, v5
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v39, v10
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, 0, v3
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v4, 0, v4
	v_max_f32_e32 v6, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v9, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v2, v2, v2
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_max_f32 v1, 0, v1
	v_mul_f32_e32 v4, v4, v4
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, v6.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v2.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v5.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v51
	v_mov_b16_e32 v49.l, v4.h
	v_mov_b16_e32 v53.l, v8.h
	v_and_b32_e32 v10, 1, v52
	v_mov_b16_e32 v48.l, v1.h
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b16_e32 v54.l, v7.h
	v_and_b32_e32 v0, 1, v49
	v_add3_u32 v5, v5, v10, 0x7fff
	v_dual_cndmask_b32 v10, 0x1054, v45 :: v_dual_and_b32 v9, 1, v48
	v_mov_b16_e32 v50.l, v3.h
	s_mov_b32 s3, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v6.l, v5.h
	v_and_b32_e32 v13, 1, v47
	v_and_b32_e32 v5, 1, v53
	v_add3_u32 v1, v1, v9, 0x7fff
	v_add3_u32 v2, v2, v13, 0x7fff
	v_cndmask_b32_e32 v13, 0x3276, v46, vcc_lo
	v_add3_u32 v0, v4, v0, 0x7fff
	v_add3_u32 v5, v8, v5, 0x7fff
	v_and_b32_e32 v14, 1, v54
	v_mov_b16_e32 v2.l, v1.h
	v_lshl_or_b32 v4, v13, 8, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v7, v14, 0x7fff
	v_cndmask_b32_e32 v9, v6, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v5.l, v7.h
	v_and_b32_e32 v1, 1, v50
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_or_b32_e32 v7, s28, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v3, v1, 0x7fff
	v_lshl_or_b32 v3, v10, 8, v10
	v_mov_b16_e32 v0.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v1, 0x540054, v3
	v_and_b32_e32 v3, 0x760076, v4
	v_cndmask_b32_e32 v4, v0, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v5, v5, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v4, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x7060706, v3
	s_mov_b32 s2, s10
	v_perm_b32 v0, v2, v9, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v1, v2, v9, v3
	v_perm_b32 v2, v4, v5, v6
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v7, v11, 1
	buffer_store_b128 v[0:3], v4, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6580
; TotalNumSgprs: 43
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
