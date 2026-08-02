	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 0xf8, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 48, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v11, v0, 0, 1
	v_and_b32_e32 v8, 6, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v6, 2, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v9, 15, v0
	v_and_b32_e32 v43, 8, v0
	v_and_b32_e32 v44, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v12, 0x70, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s27, v6
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s12, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_min_i32 s16, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v37, v1, 4, v2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v4, 3, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	v_lshlrev_b32_e32 v45, 6, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_mov_b64 s[20:21], s[6:7]
	s_cselect_b32 s6, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s6, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, s6, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s6, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s6, 7
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
	s_add_i32 s13, s14, s3
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s27, s30
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s12, s26, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s2, v37
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v38, v3, v4, s12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s27, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s27, 6, v2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v5, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v4, s[20:23], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s30, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s27, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s30, v38
	v_add_nc_u32_e32 v4, s34, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_mov_b32 s12, 0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v2, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v5, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b64 v[41:42], v3, s[4:7], 0 offen
	buffer_load_b64 v[54:55], v4, s[4:7], 0 offen
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v46, v5, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x420, v11
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v5, v3, 1, v12
	v_lshlrev_b32_e32 v3, 3, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v56, 0, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v6, v7, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v11, 2, v5
	v_or_b32_e32 v12, 4, v5
	v_or_b32_e32 v13, 6, v5
	v_or_b32_e32 v14, 8, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v47, v8, 10, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 10, v5
	v_or_b32_e32 v7, 12, v5
	v_or_b32_e32 v8, 14, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v48, 0x90, v47
	v_xor_b32_e32 v49, 0x120, v47
	v_xor_b32_e32 v50, 0x1b0, v47
	v_xor_b32_e32 v51, 0x210, v47
	v_xor_b32_e32 v52, 0x330, v47
	v_xor_b32_e32 v53, 0x3a0, v47
	v_add_nc_u32_e32 v57, 0, v47
	v_add_nc_u32_e32 v58, 0, v48
	v_add_nc_u32_e32 v59, 0, v49
	v_add_nc_u32_e32 v60, 0, v50
	v_add_nc_u32_e32 v61, 0, v51
	v_add_nc_u32_e32 v62, 0, v52
	v_add_nc_u32_e32 v63, 0, v53
	s_waitcnt vmcnt(4)
	v_perm_b32 v31, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v32, v20, v16, 0x5010400
	v_perm_b32 v20, v20, v16, 0x7030602
	v_perm_b32 v33, v21, v17, 0x5010400
	v_perm_b32 v21, v21, v17, 0x7030602
	v_perm_b32 v34, v22, v18, 0x5010400
	v_perm_b32 v35, v22, v18, 0x7030602
	v_and_b16 v15.l, 0xff, v31.l
	v_lshrrev_b32_e32 v36, 8, v31
	v_lshrrev_b32_e32 v39, 24, v31
	v_and_b16 v15.h, 0xff, v31.h
	v_and_b16 v16.l, 0xff, v19.l
	v_lshrrev_b32_e32 v31, 8, v19
	v_lshrrev_b32_e32 v40, 24, v19
	v_and_b16 v16.h, 0xff, v19.h
	v_and_b16 v17.l, 0xff, v32.l
	v_lshrrev_b32_e32 v64, 8, v32
	v_lshrrev_b32_e32 v65, 24, v32
	v_and_b16 v17.h, 0xff, v32.h
	v_and_b16 v18.l, 0xff, v20.l
	v_lshrrev_b32_e32 v32, 8, v20
	v_lshrrev_b32_e32 v66, 24, v20
	v_and_b16 v18.h, 0xff, v20.h
	v_and_b16 v19.l, 0xff, v33.l
	v_lshrrev_b32_e32 v67, 8, v33
	v_lshrrev_b32_e32 v68, 24, v33
	v_and_b16 v19.h, 0xff, v33.h
	v_and_b16 v20.l, 0xff, v21.l
	v_lshrrev_b32_e32 v33, 8, v21
	v_lshrrev_b32_e32 v69, 24, v21
	v_and_b16 v20.h, 0xff, v21.h
	v_and_b16 v21.l, 0xff, v34.l
	v_lshrrev_b32_e32 v70, 8, v34
	v_lshrrev_b32_e32 v71, 24, v34
	v_and_b16 v21.h, 0xff, v34.h
	v_and_b16 v22.l, 0xff, v35.l
	v_lshrrev_b32_e32 v34, 8, v35
	v_lshrrev_b32_e32 v72, 24, v35
	v_and_b16 v22.h, 0xff, v35.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v35, v27, v23, 0x5010400
	v_perm_b32 v73, v27, v23, 0x7030602
	v_perm_b32 v74, v28, v24, 0x5010400
	v_perm_b32 v75, v28, v24, 0x7030602
	v_perm_b32 v76, v29, v25, 0x5010400
	v_perm_b32 v77, v29, v25, 0x7030602
	v_perm_b32 v78, v30, v26, 0x5010400
	v_perm_b32 v79, v30, v26, 0x7030602
	v_lshlrev_b16 v23.l, 8, v36.l
	v_lshlrev_b16 v25.l, 8, v64.l
	v_lshrrev_b32_e32 v64, 8, v35
	v_lshlrev_b16 v23.h, 8, v39.l
	v_lshlrev_b16 v25.h, 8, v65.l
	v_lshrrev_b32_e32 v65, 24, v35
	v_lshlrev_b16 v24.l, 8, v31.l
	v_lshlrev_b16 v26.h, 8, v66.l
	v_lshrrev_b32_e32 v66, 8, v73
	v_lshlrev_b16 v24.h, 8, v40.l
	v_lshlrev_b16 v27.l, 8, v67.l
	v_lshrrev_b32_e32 v67, 24, v73
	v_lshlrev_b16 v26.l, 8, v32.l
	v_lshlrev_b16 v27.h, 8, v68.l
	v_lshlrev_b16 v28.l, 8, v33.l
	v_lshlrev_b16 v28.h, 8, v69.l
	v_lshlrev_b16 v29.l, 8, v70.l
	v_lshlrev_b16 v29.h, 8, v71.l
	v_lshlrev_b16 v30.l, 8, v34.l
	v_lshlrev_b16 v30.h, 8, v72.l
	v_and_b16 v31.l, 0xff, v35.l
	v_and_b16 v31.h, 0xff, v35.h
	v_and_b16 v32.l, 0xff, v73.l
	v_and_b16 v32.h, 0xff, v73.h
	v_and_b16 v33.l, 0xff, v74.l
	v_lshrrev_b32_e32 v68, 8, v74
	v_lshrrev_b32_e32 v69, 24, v74
	v_and_b16 v33.h, 0xff, v74.h
	v_and_b16 v34.l, 0xff, v75.l
	v_lshrrev_b32_e32 v70, 8, v75
	v_lshrrev_b32_e32 v71, 24, v75
	v_and_b16 v34.h, 0xff, v75.h
	v_and_b16 v35.l, 0xff, v76.l
	v_lshrrev_b32_e32 v72, 8, v76
	v_lshrrev_b32_e32 v73, 24, v76
	v_and_b16 v35.h, 0xff, v76.h
	v_and_b16 v36.l, 0xff, v77.l
	v_lshrrev_b32_e32 v74, 8, v77
	v_lshrrev_b32_e32 v75, 24, v77
	v_and_b16 v36.h, 0xff, v77.h
	v_and_b16 v39.l, 0xff, v78.l
	v_lshrrev_b32_e32 v76, 8, v78
	v_lshrrev_b32_e32 v77, 24, v78
	v_and_b16 v39.h, 0xff, v78.h
	v_lshrrev_b32_e32 v78, 8, v79
	v_lshrrev_b32_e32 v80, 24, v79
	v_or_b16 v15.l, v15.l, v23.l
	v_lshlrev_b16 v23.l, 8, v64.l
	v_or_b16 v15.h, v15.h, v23.h
	v_lshlrev_b16 v23.h, 8, v65.l
	v_or_b16 v16.l, v16.l, v24.l
	v_lshlrev_b16 v24.l, 8, v66.l
	v_or_b16 v16.h, v16.h, v24.h
	v_lshlrev_b16 v24.h, 8, v67.l
	v_and_b16 v40.l, 0xff, v79.l
	v_and_b16 v40.h, 0xff, v79.h
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
	v_lshlrev_b16 v25.l, 8, v68.l
	v_lshlrev_b16 v25.h, 8, v69.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v26.h, 8, v71.l
	v_lshlrev_b16 v27.l, 8, v72.l
	v_lshlrev_b16 v27.h, 8, v73.l
	v_lshlrev_b16 v28.l, 8, v74.l
	v_lshlrev_b16 v28.h, 8, v75.l
	v_lshlrev_b16 v29.l, 8, v76.l
	v_lshlrev_b16 v29.h, 8, v77.l
	v_lshlrev_b16 v30.l, 8, v78.l
	v_lshlrev_b16 v30.h, 8, v80.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v56, v[41:42] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v15
	ds_store_b16_d16_hi v57, v15 offset:64
	ds_store_b16 v58, v16
	ds_store_b16_d16_hi v58, v16 offset:64
	ds_store_b16 v59, v17
	ds_store_b16_d16_hi v59, v17 offset:64
	ds_store_b16 v60, v18
	ds_store_b16_d16_hi v60, v18 offset:64
	ds_store_b16 v61, v19
	ds_store_b16_d16_hi v61, v19 offset:64
	ds_store_b16 v57, v20 offset:640
	ds_store_b16_d16_hi v57, v20 offset:704
	ds_store_b16 v62, v21
	ds_store_b16_d16_hi v62, v21 offset:64
	ds_store_b16 v63, v22
	ds_store_b16_d16_hi v63, v22 offset:64
	v_or_b16 v15.l, v31.l, v23.l
	v_or_b16 v15.h, v31.h, v23.h
	v_or_b16 v16.l, v32.l, v24.l
	v_or_b16 v16.h, v32.h, v24.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v17.l, v33.l, v25.l
	v_or_b16 v17.h, v33.h, v25.h
	v_or_b16 v18.l, v34.l, v26.l
	v_or_b16 v18.h, v34.h, v26.h
	v_or_b16 v19.l, v35.l, v27.l
	v_or_b16 v19.h, v35.h, v27.h
	v_or_b16 v20.l, v36.l, v28.l
	v_or_b16 v20.h, v36.h, v28.h
	v_or_b16 v21.l, v39.l, v29.l
	v_or_b16 v21.h, v39.h, v29.h
	v_or_b16 v22.l, v40.l, v30.l
	v_or_b16 v22.h, v40.h, v30.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[54:55] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v15 offset:8192
	ds_store_b16_d16_hi v57, v15 offset:8256
	ds_store_b16 v58, v16 offset:8192
	ds_store_b16_d16_hi v58, v16 offset:8256
	ds_store_b16 v59, v17 offset:8192
	ds_store_b16_d16_hi v59, v17 offset:8256
	ds_store_b16 v60, v18 offset:8192
	ds_store_b16_d16_hi v60, v18 offset:8256
	ds_store_b16 v61, v19 offset:8192
	ds_store_b16_d16_hi v61, v19 offset:8256
	ds_store_b16 v57, v20 offset:8832
	ds_store_b16_d16_hi v57, v20 offset:8896
	ds_store_b16 v62, v21 offset:8192
	ds_store_b16_d16_hi v62, v21 offset:8256
	ds_store_b16 v63, v22 offset:8192
	ds_store_b16_d16_hi v63, v22 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v39, v9, 6, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v55, 6, v1
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v56, 32, v0
	v_and_or_b32 v54, 0x1800, v2, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v40, 16, v39
	v_xor_b32_e32 v42, 32, v39
	v_xor_b32_e32 v41, 48, v39
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr54
.LBB0_3:                                ; %Flow23
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v15, s26, v9
	v_or_b32_e32 v4, s26, v4
	s_ashr_i32 s0, s13, 6
	v_or_b32_e32 v34, s33, v5
	v_or_b32_e32 v33, s33, v11
	v_mul_lo_u32 v35, v15, s0
	v_mul_lo_u32 v36, v4, s0
	v_or_b32_e32 v32, s33, v12
	v_or_b32_e32 v30, s33, v13
	v_or_b32_e32 v28, s33, v14
	v_or_b32_e32 v31, s33, v6
	v_or_b32_e32 v29, s33, v7
	v_or_b32_e32 v27, s33, v8
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v54, 0x1800, v2, v3
	v_lshl_or_b32 v39, v9, 6, v3
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v55, s27, v37
	v_mov_b32_e32 v11, 0
	v_and_or_b32 v1, 0x210, v4, v1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_xor_b32_e32 v40, 16, v39
	v_xor_b32_e32 v42, 32, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v54
	v_xor_b32_e32 v41, 48, v39
	v_mov_b32_e32 v12, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v20, 0
	v_or_b32_e32 v56, v1, v45
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v57, 16, v56
	v_xor_b32_e32 v58, 32, v56
	v_xor_b32_e32 v59, 48, v56
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v19, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s31, s0, 3
	s_add_i32 s11, s34, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s31, s31, -3
	s_mov_b32 s44, 1
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s30
	s_mov_b32 s30, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s34, s27
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v60, s34, v38
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v61, s16, v37
	v_add_nc_u32_e32 v62, s16, v55
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[128:129], v60, s[4:7], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[76:79], v61, s[20:23], 0 offen
	buffer_load_b128 v[80:83], v62, s[20:23], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v35, s14, 1
	v_add_lshl_u32 v63, v36, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v64, v34, s14, 1
	v_add_lshl_u32 v65, v33, s14, 1
	v_add_lshl_u32 v66, v32, s14, 1
	v_add_lshl_u32 v67, v30, s14, 1
	v_add_lshl_u32 v68, v28, s14, 1
	v_add_lshl_u32 v69, v31, s14, 1
	v_add_lshl_u32 v70, v29, s14, 1
	v_add_lshl_u32 v71, v27, s14, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v63
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v62, 0x80000000, v64 :: v_dual_cndmask_b32 v63, 0x80000000, v65
	v_dual_cndmask_b32 v64, 0x80000000, v66 :: v_dual_cndmask_b32 v65, 0x80000000, v67
	v_dual_cndmask_b32 v66, 0x80000000, v68 :: v_dual_cndmask_b32 v67, 0x80000000, v69
	v_dual_cndmask_b32 v68, 0x80000000, v70 :: v_dual_cndmask_b32 v69, 0x80000000, v71
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v130, v60, s[36:39], 0 offen
	buffer_load_u16 v131, v61, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v132, v62, s[40:43], 0 offen
	buffer_load_u16 v133, v63, s[40:43], 0 offen
	buffer_load_u16 v134, v64, s[40:43], 0 offen
	buffer_load_u16 v135, v65, s[40:43], 0 offen
	buffer_load_u16 v136, v66, s[40:43], 0 offen
	buffer_load_u16 v137, v67, s[40:43], 0 offen
	buffer_load_u16 v138, v68, s[40:43], 0 offen
	buffer_load_u16 v139, v69, s[40:43], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s10, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v60, s14, v39
	v_add_nc_u32_e32 v61, s14, v40
	s_mov_b32 s1, s12
	v_add_nc_u32_e32 v62, s14, v42
	v_add_nc_u32_e32 v63, s14, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, s1, v56
	v_add_nc_u32_e32 v65, s1, v57
	v_add_nc_u32_e32 v66, s1, v58
	v_add_nc_u32_e32 v67, s1, v59
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[68:71], v60
	ds_load_b128 v[84:87], v60 offset:1024
	ds_load_b128 v[88:91], v61
	ds_load_b128 v[92:95], v61 offset:1024
	ds_load_b128 v[96:99], v62
	ds_load_b128 v[100:103], v62 offset:1024
	ds_load_b128 v[104:107], v63
	ds_load_b128 v[108:111], v63 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v64
	ds_load_b128 v[116:119], v65
	ds_load_b128 v[120:123], v66
	ds_load_b128 v[124:127], v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s44, 1
	s_mov_b32 s12, s35
	s_cmp_lt_i32 s1, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s44, s1, 0
	s_add_i32 s14, s13, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s44, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s44, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s35, s15, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s16, s1, 0
	s_barrier
	s_add_i32 s1, s16, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s31
	s_mov_b32 s13, s14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[60:67], v[112:115], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[84:87], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[116:119], v[88:91], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[116:119], v[92:95], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[120:123], v[96:99], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[120:123], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[124:127], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[124:127], v[108:111], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v86, v62
	v_cvt_f32_i32_e32 v89, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v61
	v_cvt_f32_i32_e32 v87, v63
	v_cvt_f32_i32_e32 v88, v64
	v_cvt_f32_i32_e32 v90, v66
	v_cvt_f32_i32_e32 v91, v67
	v_cvt_f32_i32_e32 v96, v72
	v_cvt_f32_i32_e32 v93, v69
	v_cvt_f32_i32_e32 v92, v68
	v_cvt_f32_i32_e32 v94, v70
	v_cvt_f32_i32_e32 v95, v71
	v_cvt_f32_i32_e32 v98, v74
	v_cvt_f32_i32_e32 v97, v73
	v_cvt_f32_i32_e32 v99, v75
	v_cvt_f32_i32_e32 v84, v60
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(10)
	v_perm_b32 v62, v80, v76, 0x7030602
	v_perm_b32 v65, v82, v78, 0x5010400
	v_perm_b32 v61, v80, v76, 0x5010400
	v_perm_b32 v63, v81, v77, 0x5010400
	v_perm_b32 v64, v81, v77, 0x7030602
	v_perm_b32 v66, v82, v78, 0x7030602
	v_perm_b32 v67, v83, v79, 0x5010400
	v_lshrrev_b32_e32 v72, 24, v62
	v_lshrrev_b32_e32 v77, 8, v65
	v_lshrrev_b32_e32 v69, 8, v61
	v_perm_b32 v68, v83, v79, 0x7030602
	v_lshrrev_b32_e32 v74, 24, v63
	v_lshrrev_b32_e32 v80, 24, v66
	v_lshrrev_b32_e32 v81, 8, v67
	v_lshlrev_b16 v69.h, 8, v72.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v101, 16, v130
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v72.l, 8, v77.l
	v_lshrrev_b32_e32 v70, 24, v61
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v104, 16, v133
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v73, 8, v63
	v_lshrrev_b32_e32 v100, 24, v68
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v107, 16, v136
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v77, v101, v104 :: v_dual_lshlrev_b32 v108, 16, v137
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v70.h, 8, v74.l
	v_lshlrev_b16 v73.h, 8, v80.l
	v_lshlrev_b16 v74.l, 8, v81.l
	v_lshrrev_b32_e32 v75, 8, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v12, v77, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v80, v101, v107
	v_dual_mul_f32 v81, v101, v108 :: v_dual_lshlrev_b32 v102, 16, v131
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v103, 16, v132
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v71, 8, v62
	v_lshrrev_b32_e32 v82, 24, v67
	v_lshrrev_b32_e32 v83, 8, v68
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v110, 16, v139
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v75.h, 8, v100.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v15, v80, v88 :: v_dual_fmac_f32 v16, v81, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v100, v102, v103 :: v_dual_lshlrev_b32 v109, 16, v138
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v60.l, 0xff, v61.l
	v_and_b16 v61.l, 0xff, v62.l
	v_and_b16 v62.l, 0xff, v63.l
	v_and_b16 v63.l, 0xff, v64.l
	v_lshrrev_b32_e32 v76, 24, v64
	v_and_b16 v64.l, 0xff, v65.l
	v_lshrrev_b32_e32 v78, 24, v65
	v_and_b16 v65.l, 0xff, v66.l
	v_lshrrev_b32_e32 v79, 8, v66
	v_and_b16 v66.l, 0xff, v67.l
	v_and_b16 v67.l, 0xff, v68.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v106, 16, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v68.l, 8, v69.l
	v_lshlrev_b16 v69.l, 8, v71.l
	v_lshlrev_b16 v71.l, 8, v75.l
	v_lshlrev_b16 v74.h, 8, v82.l
	v_lshlrev_b16 v75.l, 8, v83.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v83, v101, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v20, v100, v92 :: v_dual_lshlrev_b32 v105, 16, v134
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v82, v101, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v60.h, 0xff, v61.h
	v_and_b16 v61.h, 0xff, v62.h
	v_and_b16 v62.h, 0xff, v63.h
	v_and_b16 v63.h, 0xff, v64.h
	v_and_b16 v64.h, 0xff, v65.h
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	v_lshlrev_b16 v68.h, 8, v70.l
	v_lshlrev_b16 v70.l, 8, v73.l
	v_lshlrev_b16 v71.h, 8, v76.l
	v_lshlrev_b16 v72.h, 8, v78.l
	v_lshlrev_b16 v73.l, 8, v79.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v101, v103
	v_mul_f32_e32 v79, v101, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v17, v82, v90 :: v_dual_fmac_f32 v18, v83, v91
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v78, v101, v105 :: v_dual_mul_f32 v101, v102, v104
	v_dual_mul_f32 v103, v102, v105 :: v_dual_add_nc_u32 v142, s35, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v11, v76, v84 :: v_dual_add_nc_u32 v144, s35, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v101, v93
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v104, v102, v106 :: v_dual_add_nc_u32 v141, s35, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v22, v103, v94
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v105, v102, v107 :: v_dual_add_nc_u32 v140, s16, v46
	v_mul_f32_e32 v107, v102, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v23, v104, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v106, v102, v108 :: v_dual_add_nc_u32 v143, s35, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v13, v78, v86 :: v_dual_add_nc_u32 v146, s35, v52
	v_dual_fmac_f32 v14, v79, v87 :: v_dual_add_nc_u32 v147, s35, v53
	v_fmac_f32_e32 v25, v106, v97
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v102, v102, v110 :: v_dual_add_nc_u32 v145, s35, v51
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v60.l, v60.l, v68.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v24, v105, v96
	v_fmac_f32_e32 v26, v107, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v60.h, v60.h, v68.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v19, v102, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v61.l, v61.l, v69.l
	v_or_b16 v61.h, v61.h, v69.h
	v_or_b16 v62.l, v62.l, v70.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v140, v[128:129] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v62.h, v62.h, v70.h
	v_or_b16 v63.l, v63.l, v71.l
	v_or_b16 v63.h, v63.h, v71.h
	v_or_b16 v64.l, v64.l, v72.l
	v_or_b16 v64.h, v64.h, v72.h
	v_or_b16 v65.l, v65.l, v73.l
	v_or_b16 v65.h, v65.h, v73.h
	v_or_b16 v66.l, v66.l, v74.l
	v_or_b16 v66.h, v66.h, v74.h
	v_or_b16 v67.l, v67.l, v75.l
	v_or_b16 v67.h, v67.h, v75.h
	ds_store_b16 v141, v60
	ds_store_b16_d16_hi v141, v60 offset:64
	ds_store_b16 v142, v61
	ds_store_b16_d16_hi v142, v61 offset:64
	ds_store_b16 v143, v62
	ds_store_b16_d16_hi v143, v62 offset:64
	ds_store_b16 v144, v63
	ds_store_b16_d16_hi v144, v63 offset:64
	ds_store_b16 v145, v64
	ds_store_b16_d16_hi v145, v64 offset:64
	ds_store_b16 v141, v65 offset:640
	ds_store_b16_d16_hi v141, v65 offset:704
	ds_store_b16 v146, v66
	ds_store_b16_d16_hi v146, v66 offset:64
	ds_store_b16 v147, v67
	ds_store_b16_d16_hi v147, v67 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v55, v45 :: v_dual_mov_b32 v56, v44
	v_mov_b32_e32 v1, v43
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s35, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v2, v1, v2
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	v_mov_b32_e32 v3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v7, v2, v54
	v_mov_b32_e32 v2, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v8, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v75, v7, v55
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v76, 16, v75
	v_xor_b32_e32 v77, 32, v75
	v_xor_b32_e32 v78, 48, v75
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s12, v76
	v_add_nc_u32_e32 v6, s12, v75
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v37, s10, v39
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v50, s23 :: v_dual_add_nc_u32 v7, s12, v78
	v_dual_mov_b32 v45, s18 :: v_dual_add_nc_u32 v8, s12, v77
	v_mov_b32_e32 v49, s22
	v_mov_b32_e32 v47, s20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[59:62], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s16 :: v_dual_add_nc_u32 v6, s10, v42
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, s10, v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v48, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[63:66], v37 offset:1024
	ds_load_b128 v[67:70], v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[71:74], v7
	ds_load_b128 v[79:82], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[83:86], v6
	ds_load_b128 v[87:90], v38 offset:1024
	ds_load_b128 v[91:94], v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v46, s19 :: v_dual_add_nc_u32 v7, s10, v41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[95:98], v6 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v44, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[99:102], v7
	ds_load_b128 v[103:106], v7 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[59:62], v[67:70], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[63:66], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[2:5], v[91:94], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[2:5], v[87:90], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[79:82], v[83:86], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[79:82], v[95:98], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[71:74], v[99:102], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[71:74], v[103:106], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v52
	v_cvt_f32_i32_e32 v3, v53
	v_cvt_f32_i32_e32 v4, v54
	v_cvt_f32_i32_e32 v5, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v37, v58
	v_cvt_f32_i32_e32 v38, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v6, v51
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v50, v35, s4, 1
	v_add_lshl_u32 v51, v36, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v52, v34, s4, 1
	v_add_lshl_u32 v53, v33, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v66, v51, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v51, v32, s4, 1
	v_add_lshl_u32 v54, v30, s4, 1
	v_add_lshl_u32 v55, v28, s4, 1
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_add_lshl_u32 v56, v31, s4, 1
	v_add_lshl_u32 v57, v29, s4, 1
	v_add_lshl_u32 v58, v27, s4, 1
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_clause 0x7
	buffer_load_u16 v67, v52, s[28:31], 0 offen
	buffer_load_u16 v68, v53, s[28:31], 0 offen
	buffer_load_u16 v69, v51, s[28:31], 0 offen
	buffer_load_u16 v70, v54, s[28:31], 0 offen
	buffer_load_u16 v71, v55, s[28:31], 0 offen
	buffer_load_u16 v72, v56, s[28:31], 0 offen
	buffer_load_u16 v73, v57, s[28:31], 0 offen
	buffer_load_u16 v74, v58, s[28:31], 0 offen
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v65, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s35, v78
	v_add_nc_u32_e32 v55, s35, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v65, s19 :: v_dual_add_nc_u32 v56, s35, v76
	v_mov_b32_e32 v64, s18
	v_mov_b32_e32 v62, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[51:54], v1
	ds_load_b128 v[83:86], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v58, s12 :: v_dual_add_nc_u32 v1, s1, v39
	v_dual_mov_b32 v60, s14 :: v_dual_add_nc_u32 v57, s35, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[87:90], v56
	ds_load_b128 v[91:94], v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v63, s17 :: v_dual_add_nc_u32 v56, s1, v40
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[95:98], v1 offset:1024
	ds_load_b128 v[99:102], v1
	v_add_nc_u32_e32 v55, s1, v42
	ds_load_b128 v[103:106], v56 offset:1024
	ds_load_b128 v[107:110], v56
	v_add_nc_u32_e32 v1, s1, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v61, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[39:42], v55
	ds_load_b128 v[111:114], v55 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v59, s13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[115:118], v1
	ds_load_b128 v[119:122], v1 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[99:102], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[91:94], v[95:98], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[87:90], v[107:110], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[87:90], v[103:106], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[39:42], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[83:86], v[111:114], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[51:54], v[115:118], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[51:54], v[119:122], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v75
	v_cvt_f32_i32_e32 v51, v76
	v_cvt_f32_i32_e32 v52, v77
	v_cvt_f32_i32_e32 v53, v78
	v_cvt_f32_i32_e32 v54, v79
	v_cvt_f32_i32_e32 v55, v80
	v_cvt_f32_i32_e32 v56, v81
	v_cvt_f32_i32_e32 v57, v82
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s34, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s34, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 6
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v9, s27, v9
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v35, v35, s1, 1
	v_add_lshl_u32 v36, v36, s1, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v34, s1, 1
	v_add_lshl_u32 v33, v33, s1, 1
	v_add_lshl_u32 v32, v32, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v30, v30, s1, 1
	v_add_lshl_u32 v28, v28, s1, 1
	v_add_lshl_u32 v31, v31, s1, 1
	v_add_lshl_u32 v29, v29, s1, 1
	v_add_lshl_u32 v27, v27, s1, 1
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_clause 0x7
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v27, v27, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	s_clause 0x1
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v39.h, v66.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v40.h, v74.l
	v_mov_b16_e32 v41.h, v73.l
	v_mov_b16_e32 v42.h, v72.l
	v_mov_b16_e32 v66.h, v71.l
	v_mov_b16_e32 v67.h, v70.l
	v_mov_b16_e32 v68.h, v69.l
	v_mov_b16_e32 v69.h, v68.l
	v_mov_b16_e32 v70.h, v67.l
	v_mov_b16_e32 v40.l, v39.l
	v_mov_b16_e32 v41.l, v39.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v10, 0x78, v10
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v42.l, v39.l
	v_mov_b16_e32 v66.l, v39.l
	v_mov_b16_e32 v67.l, v39.l
	v_mov_b16_e32 v68.l, v39.l
	v_mov_b16_e32 v69.l, v39.l
	v_mov_b16_e32 v70.l, v39.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s26, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v72, 0x7632 :: v_dual_mul_f32 v91, v39, v66
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s33
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v89, v39, v41
	v_mul_f32_e32 v90, v39, v42
	v_mul_f32_e32 v92, v39, v67
	v_mul_f32_e32 v93, v39, v68
	v_mul_f32_e32 v94, v39, v69
	v_mul_f32_e32 v95, v39, v70
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v9, s1, v10, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v88, v39, v40
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v39.h, v50.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v89, v48, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v50.h, v39.l
	v_mov_b16_e32 v73.h, v39.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v88, v49, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v39, v40
	v_mul_f32_e32 v49, v39, v66
	v_mul_f32_e32 v42, v39, v42
	v_mul_f32_e32 v66, v39, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v19, v10, s2
	v_cndmask_b32_e64 v19, v26, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v39, v68
	v_mul_f32_e32 v41, v39, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v42, v7, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v74.h, v39.l
	v_mov_b16_e32 v75.h, v39.l
	v_mov_b16_e32 v76.h, v39.l
	v_mov_b16_e32 v77.h, v39.l
	v_mov_b16_e32 v78.h, v39.l
	v_mov_b16_e32 v79.h, v39.l
	v_mov_b16_e32 v80.h, v39.l
	v_mov_b16_e32 v81.h, v39.l
	v_mov_b16_e32 v82.h, v39.l
	v_mov_b16_e32 v83.h, v39.l
	v_mov_b16_e32 v84.h, v39.l
	v_mov_b16_e32 v85.h, v39.l
	v_mov_b16_e32 v86.h, v39.l
	v_mov_b16_e32 v87.h, v39.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v16, v7, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v91, v46, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v71, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s0, 0x76543210
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_lshl_b32 s4, s27, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v46, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_and_b32 s25, s25, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v41, v8, v17
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v40, v37, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v17, v8, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v28
	v_lshlrev_b32_e32 v28, 16, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v67, v3, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v26, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v26, 16, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v49, v5, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v13, v3, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v13, 16, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v92, v45, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v15, v5, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v68, v39, v69 :: v_dual_lshlrev_b32 v15, 16, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v94, v43, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v45, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshlrev_b32_e32 v69, 1, v9
	v_add_lshl_u32 v9, v9, s4, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v68, v2, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v43, s2
	v_cndmask_b32_e64 v2, v12, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v39, v39, v70 :: v_dual_lshlrev_b32 v12, 16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v95, v38, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, v39, v6, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v6, v11, v6, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v11, 16, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v90, v47, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v11, v13
	v_mul_f32_e32 v13, v12, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v66, v4, v14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v11, v15
	v_mul_f32_e32 v34, v11, v26
	v_mul_f32_e32 v35, v11, v28
	v_mul_f32_e32 v15, v12, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v14, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v14, 16, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v33, v11, v17 :: v_dual_mul_f32 v28, v12, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v93, v44, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v17, v12, v17 :: v_dual_mul_f32 v30, v11, v14
	v_mul_f32_e32 v14, v12, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v29, v1, v6
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v12, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v31, v52, v3
	v_fma_f32 v31, v33, v54, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v47, s2
	v_cndmask_b32_e64 v1, v6, v1, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v11, v16
	v_dual_mul_f32 v11, v11, v27 :: v_dual_mul_f32 v16, v12, v16
	v_mul_f32_e32 v12, v12, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v30, v51, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v44, s2
	v_cndmask_b32_e64 v5, v5, v31, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v35, v56, v8
	v_fma_f32 v13, v13, v58, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v27, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v59, v21
	v_fma_f32 v15, v15, v60, v22
	v_fma_f32 v16, v16, v61, v23
	v_fma_f32 v17, v17, v62, v24
	v_fma_f32 v26, v26, v63, v25
	v_fma_f32 v28, v28, v64, v19
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v32, v53, v4
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v2, v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v57, v18
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v5, v5, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v34, v55, v7
	v_fma_f32 v12, v12, v65, v10
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, 0, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v29, s3
	v_cndmask_b32_e64 v4, v4, v30, s3
	v_cndmask_b32_e64 v6, v7, v32, s3
	v_cndmask_b32_e64 v7, v8, v33, s3
	v_cndmask_b32_e64 v8, v18, v11, s3
	v_cndmask_b32_e64 v11, v20, v13, s3
	v_cndmask_b32_e64 v13, v21, v14, s3
	v_cndmask_b32_e64 v14, v22, v15, s3
	v_cndmask_b32_e64 v15, v23, v16, s3
	v_cndmask_b32_e64 v16, v24, v17, s3
	v_cndmask_b32_e64 v17, v25, v26, s3
	v_cndmask_b32_e64 v18, v19, v28, s3
	v_cndmask_b32_e64 v10, v10, v12, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v12, v13, v13 :: v_dual_max_f32 v13, v14, v14
	v_dual_max_f32 v14, v15, v15 :: v_dual_max_f32 v15, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v16, v17, v17 :: v_dual_max_f32 v17, v18, v18
	v_dual_max_f32 v10, v10, v10 :: v_dual_mul_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, 0, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v73.l, v1.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v16, v16, v16 :: v_dual_mul_f32 v17, v17, v17
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v19, 1, v73
	v_dual_mul_f32 v14, v14, v14 :: v_dual_mul_f32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.l, v17.h
	v_mov_b16_e32 v86.l, v10.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v12, v12 :: v_dual_mul_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v82.l, v14.h
	v_and_b32_e32 v33, 1, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v32, 1, v86
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v11, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v83.l, v13.h
	v_and_b32_e32 v28, 1, v82
	v_add3_u32 v17, v17, v33, 0x7fff
	v_add3_u32 v0, v10, v32, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, 0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v14, v28, 0x7fff
	v_mov_b16_e32 v0.l, v17.h
	v_and_b32_e32 v29, 1, v83
	v_mov_b16_e32 v85.l, v15.h
	v_mov_b16_e32 v84.l, v16.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v13, v29, 0x7fff
	v_mov_b16_e32 v80.l, v12.h
	v_and_b32_e32 v30, 1, v84
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v13.h
	v_and_b32_e32 v31, 1, v85
	v_mov_b16_e32 v81.l, v11.h
	v_and_b32_e32 v26, 1, v80
	v_add3_u32 v16, v16, v30, 0x7fff
	v_cndmask_b32_e32 v10, v0, v14, vcc_lo
	v_cndmask_b32_e32 v0, v14, v0, vcc_lo
	v_add3_u32 v15, v15, v31, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v12, v26, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v15.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v27, 1, v81
	v_mul_f32_e32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v78.l, v8.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v11, v27, 0x7fff
	v_mov_b16_e32 v79.l, v7.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v11.h
	v_and_b32_e32 v24, 1, v78
	v_mov_b16_e32 v76.l, v6.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v77.l, v5.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v8, v24, 0x7fff
	v_and_b32_e32 v25, 1, v79
	v_and_b32_e32 v22, 1, v76
	v_mov_b16_e32 v75.l, v3.h
	v_mov_b16_e32 v74.l, v4.h
	v_mov_b16_e32 v50.l, v2.h
	v_add3_u32 v7, v7, v25, 0x7fff
	v_add3_u32 v6, v6, v22, 0x7fff
	v_add3_u32 v1, v1, v19, 0x7fff
	v_and_b32_e32 v20, 1, v74
	v_and_b32_e32 v18, 1, v50
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v23, 1, v77
	v_cndmask_b32_e32 v7, v16, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v5, v23, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_and_b32_e32 v21, 1, v75
	v_cndmask_b32_e32 v5, 0x3276, v72, vcc_lo
	v_add3_u32 v4, v4, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v3, v21, 0x7fff
	v_lshl_or_b32 v5, v5, 8, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v3.h
	v_cndmask_b32_e32 v3, 0x1054, v71, vcc_lo
	v_add3_u32 v2, v2, v18, 0x7fff
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v5, 0x760076, v5
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v1, v6, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_dual_cndmask_b32 v6, v8, v4 :: v_dual_and_b32 v3, 0x540054, v3
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e32 v8, v12, v16, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 0x7060706, v5
	v_permlanex16_b32 v5, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x5040504, v3
	v_permlanex16_b32 v3, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v11
	v_perm_b32 v1, v2, v1, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v3, v6, v11
	v_perm_b32 v3, v3, v6, v12
	v_perm_b32 v4, v5, v7, v11
	v_perm_b32 v5, v5, v7, v12
	v_perm_b32 v6, v8, v10, v11
	v_perm_b32 v7, v8, v10, v12
	s_clause 0x1
	buffer_store_b128 v[0:3], v69, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v9, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 148
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8020
; TotalNumSgprs: 47
; NumVgprs: 148
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     148
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
