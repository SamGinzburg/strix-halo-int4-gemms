	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	v_and_b32_e32 v2, 0xf8, v0
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 1, v0
	v_and_b32_e32 v36, 8, v0
	v_and_b32_e32 v37, 32, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v15, 2, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v11, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v9, 3, v0
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s29, v15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
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
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v29, v1, 4, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s34, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s34, v15
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s29, s34
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s18, s4, v29
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 0xff
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s29, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s28, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s28
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s19, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v2, s[20:23], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v30, 3, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s29, 8, v3
	v_lshlrev_b32_e32 v38, 6, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s30, v2
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s34, v30
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v31, v2, v30, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s28
	s_cmpk_gt_i32 s5, 0x1ff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s34, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s34, 0x100
	v_or_b32_e32 v8, s34, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s29, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[47:48], v2, s[12:15], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s34, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_clause 0x1
	buffer_load_b128 v[20:23], v3, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v8, s[20:23], 0 offen
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s34, v31
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v3, 48, v0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 6, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x2ff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_xor_b32_e32 v39, v9, v3
	v_lshlrev_b32_e32 v3, 3, v8
	buffer_load_b64 v[49:50], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v35, 0, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 0x420, v2
	v_xor_b32_e32 v12, v2, v15
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v8, 10, v12
	v_xor_b32_e32 v41, 0x90, v40
	v_xor_b32_e32 v42, 0x120, v40
	v_xor_b32_e32 v43, 0x1b0, v40
	v_xor_b32_e32 v44, 0x210, v40
	v_xor_b32_e32 v45, 0x330, v40
	v_xor_b32_e32 v46, 0x3a0, v40
	v_add_nc_u32_e32 v51, 0, v40
	v_add_nc_u32_e32 v52, 0, v41
	v_add_nc_u32_e32 v53, 0, v42
	v_add_nc_u32_e32 v54, 0, v43
	v_add_nc_u32_e32 v55, 0, v44
	v_add_nc_u32_e32 v56, 0, v45
	v_add_nc_u32_e32 v57, 0, v46
	s_waitcnt vmcnt(4)
	v_perm_b32 v8, v16, v4, 0x5010400
	v_perm_b32 v12, v16, v4, 0x7030602
	v_perm_b32 v13, v17, v5, 0x5010400
	v_perm_b32 v14, v17, v5, 0x7030602
	v_perm_b32 v16, v18, v6, 0x5010400
	v_lshrrev_b32_e32 v28, 8, v8
	v_lshrrev_b32_e32 v32, 24, v8
	v_perm_b32 v17, v18, v6, 0x7030602
	v_lshrrev_b32_e32 v33, 8, v12
	v_lshrrev_b32_e32 v34, 24, v12
	v_perm_b32 v18, v19, v7, 0x5010400
	v_perm_b32 v19, v19, v7, 0x7030602
	v_lshrrev_b32_e32 v58, 8, v13
	v_lshrrev_b32_e32 v59, 24, v13
	v_lshrrev_b32_e32 v60, 8, v14
	v_lshrrev_b32_e32 v61, 24, v14
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v8.l, 0xff, v16.l
	v_lshrrev_b32_e32 v62, 8, v16
	v_lshrrev_b32_e32 v63, 24, v16
	v_and_b16 v8.h, 0xff, v16.h
	v_lshlrev_b16 v16.l, 8, v28.l
	v_lshlrev_b16 v16.h, 8, v32.l
	v_and_b16 v5.l, 0xff, v12.l
	v_and_b16 v5.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v17.l
	v_lshrrev_b32_e32 v64, 8, v17
	v_lshrrev_b32_e32 v65, 24, v17
	v_and_b16 v12.h, 0xff, v17.h
	v_lshlrev_b16 v17.l, 8, v33.l
	v_lshlrev_b16 v17.h, 8, v34.l
	v_and_b16 v6.l, 0xff, v13.l
	v_and_b16 v6.h, 0xff, v13.h
	v_and_b16 v7.l, 0xff, v14.l
	v_and_b16 v7.h, 0xff, v14.h
	v_and_b16 v13.l, 0xff, v18.l
	v_lshrrev_b32_e32 v66, 8, v18
	v_lshrrev_b32_e32 v67, 24, v18
	v_and_b16 v13.h, 0xff, v18.h
	v_and_b16 v14.l, 0xff, v19.l
	v_lshrrev_b32_e32 v68, 8, v19
	v_lshrrev_b32_e32 v69, 24, v19
	v_and_b16 v14.h, 0xff, v19.h
	v_lshlrev_b16 v18.l, 8, v58.l
	v_lshlrev_b16 v18.h, 8, v59.l
	v_lshlrev_b16 v19.l, 8, v60.l
	v_lshlrev_b16 v19.h, 8, v61.l
	v_or_b16 v4.l, v4.l, v16.l
	v_or_b16 v4.h, v4.h, v16.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v16, v24, v20, 0x5010400
	v_or_b16 v5.l, v5.l, v17.l
	v_or_b16 v5.h, v5.h, v17.h
	v_perm_b32 v17, v24, v20, 0x7030602
	v_lshlrev_b16 v28.l, 8, v62.l
	v_lshlrev_b16 v28.h, 8, v63.l
	v_lshlrev_b16 v32.l, 8, v64.l
	v_lshlrev_b16 v32.h, 8, v65.l
	v_lshlrev_b16 v33.l, 8, v66.l
	v_lshlrev_b16 v33.h, 8, v67.l
	v_lshlrev_b16 v34.l, 8, v68.l
	v_lshlrev_b16 v34.h, 8, v69.l
	v_or_b16 v6.l, v6.l, v18.l
	v_or_b16 v6.h, v6.h, v18.h
	v_or_b16 v7.l, v7.l, v19.l
	v_or_b16 v7.h, v7.h, v19.h
	v_perm_b32 v18, v25, v21, 0x5010400
	v_perm_b32 v19, v25, v21, 0x7030602
	v_perm_b32 v20, v26, v22, 0x5010400
	v_perm_b32 v21, v26, v22, 0x7030602
	v_perm_b32 v22, v27, v23, 0x5010400
	v_perm_b32 v23, v27, v23, 0x7030602
	v_lshrrev_b32_e32 v24, 8, v16
	v_lshrrev_b32_e32 v25, 24, v16
	v_lshrrev_b32_e32 v26, 8, v17
	v_lshrrev_b32_e32 v27, 24, v17
	v_or_b16 v8.l, v8.l, v28.l
	v_or_b16 v8.h, v8.h, v28.h
	v_or_b16 v12.l, v12.l, v32.l
	v_or_b16 v12.h, v12.h, v32.h
	v_or_b16 v13.l, v13.l, v33.l
	v_or_b16 v13.h, v13.h, v33.h
	v_or_b16 v14.l, v14.l, v34.l
	v_or_b16 v14.h, v14.h, v34.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v35, v[47:48] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v4
	ds_store_b16_d16_hi v51, v4 offset:64
	ds_store_b16 v52, v5
	ds_store_b16_d16_hi v52, v5 offset:64
	ds_store_b16 v53, v6
	ds_store_b16_d16_hi v53, v6 offset:64
	ds_store_b16 v54, v7
	ds_store_b16_d16_hi v54, v7 offset:64
	ds_store_b16 v55, v8
	ds_store_b16_d16_hi v55, v8 offset:64
	ds_store_b16 v51, v12 offset:640
	ds_store_b16_d16_hi v51, v12 offset:704
	ds_store_b16 v56, v13
	ds_store_b16_d16_hi v56, v13 offset:64
	ds_store_b16 v57, v14
	ds_store_b16_d16_hi v57, v14 offset:64
	v_lshrrev_b32_e32 v28, 8, v18
	v_lshrrev_b32_e32 v32, 24, v18
	v_lshrrev_b32_e32 v33, 8, v19
	v_lshrrev_b32_e32 v34, 24, v19
	v_lshrrev_b32_e32 v47, 8, v20
	v_lshrrev_b32_e32 v48, 24, v20
	v_lshrrev_b32_e32 v58, 8, v21
	v_lshrrev_b32_e32 v59, 24, v21
	v_lshrrev_b32_e32 v60, 8, v22
	v_lshrrev_b32_e32 v61, 24, v22
	v_lshrrev_b32_e32 v62, 8, v23
	v_lshrrev_b32_e32 v63, 24, v23
	v_and_b16 v4.l, 0xff, v16.l
	v_lshlrev_b16 v16.l, 8, v24.l
	v_and_b16 v4.h, 0xff, v16.h
	v_lshlrev_b16 v16.h, 8, v25.l
	v_and_b16 v5.l, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v27.l
	v_and_b16 v6.l, 0xff, v18.l
	v_and_b16 v6.h, 0xff, v18.h
	v_and_b16 v7.l, 0xff, v19.l
	v_and_b16 v7.h, 0xff, v19.h
	v_and_b16 v8.l, 0xff, v20.l
	v_and_b16 v8.h, 0xff, v20.h
	v_and_b16 v12.l, 0xff, v21.l
	v_and_b16 v12.h, 0xff, v21.h
	v_and_b16 v13.l, 0xff, v22.l
	v_and_b16 v13.h, 0xff, v22.h
	v_and_b16 v14.l, 0xff, v23.l
	v_and_b16 v14.h, 0xff, v23.h
	v_lshlrev_b16 v18.l, 8, v28.l
	v_lshlrev_b16 v18.h, 8, v32.l
	v_lshlrev_b16 v19.l, 8, v33.l
	v_lshlrev_b16 v19.h, 8, v34.l
	v_lshlrev_b16 v20.l, 8, v47.l
	v_lshlrev_b16 v20.h, 8, v48.l
	v_lshlrev_b16 v21.l, 8, v58.l
	v_lshlrev_b16 v21.h, 8, v59.l
	v_lshlrev_b16 v22.l, 8, v60.l
	v_lshlrev_b16 v22.h, 8, v61.l
	v_lshlrev_b16 v23.l, 8, v62.l
	v_lshlrev_b16 v23.h, 8, v63.l
	v_or_b16 v4.l, v4.l, v16.l
	v_or_b16 v4.h, v4.h, v16.h
	v_or_b16 v5.l, v5.l, v17.l
	v_or_b16 v5.h, v5.h, v17.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v6.l, v18.l
	v_or_b16 v6.h, v6.h, v18.h
	v_or_b16 v7.l, v7.l, v19.l
	v_or_b16 v7.h, v7.h, v19.h
	v_or_b16 v8.l, v8.l, v20.l
	v_or_b16 v8.h, v8.h, v20.h
	v_or_b16 v12.l, v12.l, v21.l
	v_or_b16 v12.h, v12.h, v21.h
	v_or_b16 v13.l, v13.l, v22.l
	v_or_b16 v13.h, v13.h, v22.h
	v_or_b16 v14.l, v14.l, v23.l
	v_or_b16 v14.h, v14.h, v23.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v35, v[49:50] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v4 offset:8192
	ds_store_b16_d16_hi v51, v4 offset:8256
	ds_store_b16 v52, v5 offset:8192
	ds_store_b16_d16_hi v52, v5 offset:8256
	ds_store_b16 v53, v6 offset:8192
	ds_store_b16_d16_hi v53, v6 offset:8256
	ds_store_b16 v54, v7 offset:8192
	ds_store_b16_d16_hi v54, v7 offset:8256
	ds_store_b16 v55, v8 offset:8192
	ds_store_b16_d16_hi v55, v8 offset:8256
	ds_store_b16 v51, v12 offset:8832
	ds_store_b16_d16_hi v51, v12 offset:8896
	ds_store_b16 v56, v13 offset:8192
	ds_store_b16_d16_hi v56, v13 offset:8256
	ds_store_b16 v57, v14 offset:8192
	ds_store_b16_d16_hi v57, v14 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v32, v11, 6, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v4, 8, v0
	v_and_b32_e32 v5, 32, v0
	v_and_or_b32 v47, 0x1800, v2, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v33, 16, v32
	v_xor_b32_e32 v35, 32, v32
	v_xor_b32_e32 v34, 48, v32
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr47
.LBB0_3:                                ; %Flow21
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v10
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
	v_and_or_b32 v47, 0x1800, v2, v3
	v_lshl_or_b32 v32, v11, 6, v3
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s5, 8
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v1, 0x420, v1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v1, 0x210, v4, v1
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_xor_b32_e32 v1, v1, v47
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v48, s29, v29
	v_xor_b32_e32 v33, 16, v32
	v_xor_b32_e32 v35, 32, v32
	v_xor_b32_e32 v34, 48, v32
	v_or_b32_e32 v49, v1, v38
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v5, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v51, 32, v49
	v_xor_b32_e32 v52, 48, v49
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_addk_i32 s34, 0x100
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s31, 0, 0x4800
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s5, 8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s36, 1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s1, s34, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v53, s1, v30
	v_or_b32_e32 v54, s1, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s1, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v55, s1, v31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s6, s18
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s1, s30, v53
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v56, s6, v29
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v54
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v57, s6, v48
	s_mov_b32 s6, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v53, 0x80000000, v55, s1
	s_mov_b32 s1, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v54, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v56, s1, v34
	buffer_load_b64 v[121:122], v53, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[69:72], v54, s[20:23], 0 offen
	buffer_load_b128 v[73:76], v55, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v53, s1, v32
	v_add_nc_u32_e32 v54, s1, v33
	v_add_nc_u32_e32 v55, s1, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s6, v49
	v_add_nc_u32_e32 v58, s6, v50
	v_add_nc_u32_e32 v59, s6, v51
	v_add_nc_u32_e32 v60, s6, v52
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[61:64], v53
	ds_load_b128 v[77:80], v53 offset:1024
	ds_load_b128 v[81:84], v54
	ds_load_b128 v[85:88], v54 offset:1024
	ds_load_b128 v[89:92], v55
	ds_load_b128 v[93:96], v55 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[101:104], v56
	ds_load_b128 v[105:108], v56 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v58
	ds_load_b128 v[113:116], v59
	ds_load_b128 v[117:120], v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s7, 2
	s_mov_b32 s4, s33
	s_cselect_b32 s36, s7, 0
	s_add_i32 s1, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s6, s36, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s36, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s6, s6, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s7, 0
	s_mov_b32 s3, s31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s31, s6, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v127, s33, v43
	v_add_nc_u32_e32 v128, s33, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[97:100], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[97:100], v[77:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v130, s33, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[109:112], v[81:84], v[53:60] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[109:112], v[85:88], v[61:68] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[113:116], v[89:92], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[113:116], v[93:96], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[117:120], v[101:104], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[117:120], v[105:108], v[61:68] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v57 :: v_dual_add_f32 v24, v24, v58
	v_dual_add_f32 v23, v23, v59 :: v_dual_add_f32 v22, v22, v60
	v_dual_add_f32 v21, v21, v61 :: v_dual_add_f32 v20, v20, v62
	v_add_f32_e32 v19, v19, v63
	v_dual_add_f32 v18, v18, v64 :: v_dual_add_nc_u32 v123, s6, v39
	v_dual_add_f32 v17, v17, v65 :: v_dual_add_nc_u32 v124, s33, v40
	v_dual_add_f32 v16, v16, v66 :: v_dual_add_nc_u32 v125, s33, v41
	v_dual_add_f32 v13, v13, v68 :: v_dual_add_nc_u32 v126, s33, v42
	v_dual_add_f32 v14, v14, v67 :: v_dual_add_nc_u32 v129, s33, v45
	v_add_f32_e32 v12, v12, v53
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v123, v[121:122] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v73, v69, 0x5010400
	v_perm_b32 v55, v73, v69, 0x7030602
	v_perm_b32 v56, v74, v70, 0x5010400
	v_perm_b32 v57, v74, v70, 0x7030602
	v_perm_b32 v58, v75, v71, 0x5010400
	v_perm_b32 v59, v75, v71, 0x7030602
	v_perm_b32 v60, v76, v72, 0x5010400
	v_perm_b32 v61, v76, v72, 0x7030602
	v_lshrrev_b32_e32 v62, 8, v54
	v_lshrrev_b32_e32 v63, 24, v54
	v_lshrrev_b32_e32 v64, 8, v55
	v_lshrrev_b32_e32 v65, 24, v55
	v_lshrrev_b32_e32 v66, 8, v56
	v_and_b16 v53.l, 0xff, v54.l
	v_and_b16 v54.l, 0xff, v55.l
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v67, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v68, 8, v57
	v_lshrrev_b32_e32 v69, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v70, 8, v58
	v_lshrrev_b32_e32 v71, 24, v58
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v72, 8, v59
	v_lshrrev_b32_e32 v73, 24, v59
	v_and_b16 v59.l, 0xff, v60.l
	v_lshrrev_b32_e32 v74, 8, v60
	v_lshrrev_b32_e32 v75, 24, v60
	v_and_b16 v60.l, 0xff, v61.l
	v_lshrrev_b32_e32 v76, 8, v61
	v_lshrrev_b32_e32 v77, 24, v61
	v_lshlrev_b16 v61.l, 8, v62.l
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_and_b16 v58.h, 0xff, v59.h
	v_and_b16 v59.h, 0xff, v60.h
	v_and_b16 v60.h, 0xff, v61.h
	v_lshlrev_b16 v61.h, 8, v63.l
	v_lshlrev_b16 v62.l, 8, v64.l
	v_lshlrev_b16 v62.h, 8, v65.l
	v_lshlrev_b16 v63.l, 8, v66.l
	v_lshlrev_b16 v63.h, 8, v67.l
	v_lshlrev_b16 v64.l, 8, v68.l
	v_lshlrev_b16 v64.h, 8, v69.l
	v_lshlrev_b16 v65.l, 8, v70.l
	v_lshlrev_b16 v65.h, 8, v71.l
	v_lshlrev_b16 v66.l, 8, v72.l
	v_lshlrev_b16 v66.h, 8, v73.l
	v_lshlrev_b16 v67.l, 8, v74.l
	v_lshlrev_b16 v67.h, 8, v75.l
	v_lshlrev_b16 v68.l, 8, v76.l
	v_lshlrev_b16 v68.h, 8, v77.l
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
	v_or_b16 v58.l, v58.l, v66.l
	v_or_b16 v58.h, v58.h, v66.h
	v_or_b16 v59.l, v59.l, v67.l
	v_or_b16 v59.h, v59.h, v67.h
	v_or_b16 v60.l, v60.l, v68.l
	v_or_b16 v60.h, v60.h, v68.h
	ds_store_b16 v124, v53
	ds_store_b16_d16_hi v124, v53 offset:64
	ds_store_b16 v125, v54
	ds_store_b16_d16_hi v125, v54 offset:64
	ds_store_b16 v126, v55
	ds_store_b16_d16_hi v126, v55 offset:64
	ds_store_b16 v127, v56
	ds_store_b16_d16_hi v127, v56 offset:64
	ds_store_b16 v128, v57
	ds_store_b16_d16_hi v128, v57 offset:64
	ds_store_b16 v124, v58 offset:640
	ds_store_b16_d16_hi v124, v58 offset:704
	ds_store_b16 v129, v59
	ds_store_b16_d16_hi v129, v59 offset:64
	ds_store_b16 v130, v60
	ds_store_b16_d16_hi v130, v60 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v38 :: v_dual_mov_b32 v4, v36
	v_mov_b32_e32 v5, v37
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v12, 0
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s31, 0, 0x4800
	s_add_i32 s33, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v2, v3
	v_xor_b32_e32 v2, v2, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v2, v1
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v5, s4, v2
	v_add_nc_u32_e32 v15, s4, v1
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[52:55], v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v15, s3, v35
	v_add_nc_u32_e32 v31, s3, v32
	v_add_nc_u32_e32 v36, s3, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v29, s4, v4
	v_add_nc_u32_e32 v30, s4, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[72:75], v15
	ds_load_b128 v[76:79], v36 offset:1024
	ds_load_b128 v[80:83], v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s15 :: v_dual_mov_b32 v38, s10
	v_mov_b32_e32 v36, s8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[56:59], v31 offset:1024
	ds_load_b128 v[60:63], v31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[64:67], v29
	ds_load_b128 v[68:71], v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v42, s14 :: v_dual_add_nc_u32 v29, s3, v34
	v_dual_mov_b32 v41, s13 :: v_dual_mov_b32 v40, s12
	v_mov_b32_e32 v39, s11
	v_mov_b32_e32 v37, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[88:91], v29
	ds_load_b128 v[92:95], v29 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[60:63], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[5:8], v[80:83], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[72:75], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[88:91], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v30, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v29, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v22, v22, v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[56:59], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[5:8], v[76:79], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v45
	v_cvt_f32_i32_e32 v6, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v8, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[84:87], v15 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v24, v24, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v12, v12, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[68:71], v[84:87], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[64:67], v[92:95], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v38
	v_cvt_f32_i32_e32 v7, v39
	v_cvt_f32_i32_e32 v31, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v8 :: v_dual_add_f32 v20, v20, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v18, v18, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v41
	v_cvt_f32_i32_e32 v8, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v29
	v_add_f32_e32 v21, v21, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v17, v17, v5 :: v_dual_add_f32 v16, v16, v6
	v_dual_add_f32 v14, v14, v7 :: v_dual_add_f32 v13, v13, v8
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v33, s31, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v15, s33, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v37, s31, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v36, s33, v1
	ds_load_b128 v[29:32], v15
	ds_load_b128 v[52:55], v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[56:59], v37 offset:1024
	ds_load_b128 v[60:63], v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s11 :: v_dual_add_nc_u32 v4, s33, v4
	v_dual_mov_b32 v36, s4 :: v_dual_add_nc_u32 v15, s31, v35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[68:71], v33 offset:1024
	ds_load_b128 v[72:75], v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v42, s10 :: v_dual_add_nc_u32 v5, s33, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v4
	ds_load_b128 v[5:8], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, s7 :: v_dual_add_nc_u32 v34, s31, v34
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[64:67], v15
	ds_load_b128 v[76:79], v15 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v38, s6 :: v_dual_mov_b32 v37, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[80:83], v34
	ds_load_b128 v[84:87], v34 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[60:63], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[56:59], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[29:32], v[72:75], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[29:32], v[68:71], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[5:8], v[64:67], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[5:8], v[76:79], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[1:4], v[80:83], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[1:4], v[84:87], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v44
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v15, v48
	v_cvt_f32_i32_e32 v29, v49
	v_cvt_f32_i32_e32 v30, v50
	v_cvt_f32_i32_e32 v31, v51
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s19, v11
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v28, v6 :: v_dual_and_b32 v1, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v5, v12, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v1, v3, v1, s18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v3, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v23, v30 :: v_dual_and_b32 v45, 0x7f, v0
	v_dual_add_f32 v8, v26, v8 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s27, 0xffff
	s_mov_b32 s4, s26
	v_or_b32_e32 v4, 4, v1
	v_or_b32_e32 v11, 8, v1
	v_or_b32_e32 v32, 12, v1
	v_or_b32_e32 v33, 16, v1
	v_or_b32_e32 v34, 20, v1
	v_or_b32_e32 v35, 24, v1
	v_or_b32_e32 v44, 28, v1
	s_clause 0x7
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v46, v0, 7, 1
	v_lshrrev_b32_e32 v47, 7, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v22, v31 :: v_dual_and_b32 v48, 14, v0
	v_dual_add_f32 v39, v18, v39 :: v_dual_lshlrev_b32 v0, 2, v0
	v_add_f32_e32 v43, v13, v43
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v49, 0x440, 0, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v27, v7 :: v_dual_add_f32 v36, v21, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v15, v25, v15 :: v_dual_and_b32 v0, 0x3f8, v0
	v_dual_add_f32 v38, v19, v38 :: v_dual_add_f32 v29, v24, v29
	v_add_f32_e32 v40, v17, v40
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v49, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v37, v20, v37 :: v_dual_add_f32 v42, v14, v42
	v_dual_add_f32 v41, v16, v41 :: v_dual_lshlrev_b32 v10, 6, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v48, 10, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v12, v5, s2
	v_cndmask_b32_e64 v12, v25, v15, s2
	v_cndmask_b32_e64 v23, v23, v30, s2
	v_cndmask_b32_e64 v22, v22, v31, s2
	v_cndmask_b32_e64 v21, v21, v36, s2
	v_cndmask_b32_e64 v20, v20, v37, s2
	v_cndmask_b32_e64 v19, v19, v38, s2
	v_cndmask_b32_e64 v18, v18, v39, s2
	v_cndmask_b32_e64 v17, v17, v40, s2
	v_cndmask_b32_e64 v16, v16, v41, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v30, 0, v0
	v_xad_u32 v31, v0, 8, 0
	v_xad_u32 v36, v0, 16, 0
	v_xad_u32 v37, v0, 24, 0
	v_xad_u32 v38, v0, 32, 0
	v_xad_u32 v39, v0, 40, 0
	v_xad_u32 v40, v0, 48, 0
	v_xad_u32 v41, v0, 56, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v24, v29, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v24, s29, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v27, v7, s2
	v_cndmask_b32_e64 v8, v26, v8, s2
	v_cndmask_b32_e64 v27, v13, v43, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s19, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v28, v6, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s3, s18
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v24, s3, v45, v24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s4, s29, 1
	s_lshl_b32 s5, s29, 2
	s_mul_i32 s8, s29, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v28, v24, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s9, s29, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v29, v24, s5, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
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
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v25, 0x440, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v10, v25, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v14, v42, s2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v13, 16, v35
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v44
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v2, 16, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v26, 2, v48
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v3, 16, v4
	v_lshlrev_b32_e32 v4, 16, v11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v9, 0x380, v9
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v11, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v34, v0, v4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v9, v9, v26, v10
	v_lshlrev_b32_e32 v26, 2, v24
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v10, 16, v33
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v33, v0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v3, v2, v3 :: v_dual_add_nc_u32 v42, 0, v9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v43, 0x808, v9, 0
	v_xad_u32 v45, 0x1010, v9, 0
	v_xad_u32 v46, 0x1818, v9, 0
	v_xad_u32 v47, 0x2020, v9, 0
	v_xad_u32 v48, 0x2828, v9, 0
	v_xad_u32 v49, 0x3030, v9, 0
	v_xad_u32 v50, 0x3838, v9, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v53, v0, v14
	v_dual_mul_f32 v56, v2, v14 :: v_dual_lshlrev_b32 v9, 16, v32
	v_mul_f32_e32 v52, v0, v13
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v20, v3
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v20, v24, s12, 2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v35, v0, v9
	v_mul_f32_e32 v9, v2, v9
	v_dual_mul_f32 v54, v2, v4 :: v_dual_mul_f32 v51, v0, v11
	v_dual_mul_f32 v11, v2, v11 :: v_dual_mul_f32 v44, v0, v10
	v_mul_f32_e32 v32, v0, v1
	v_mul_f32_e32 v1, v2, v1
	v_mul_f32_e32 v55, v2, v10
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v7, v34
	v_dual_mul_f32 v10, v15, v51 :: v_dual_mul_f32 v7, v18, v9
	v_dual_mul_f32 v0, v5, v32 :: v_dual_mul_f32 v13, v2, v13
	v_mul_f32_e32 v1, v21, v1
	v_mul_f32_e32 v2, v6, v33
	v_mul_f32_e32 v6, v8, v35
	v_dual_mul_f32 v8, v12, v44 :: v_dual_mul_f32 v5, v19, v54
	v_dual_mul_f32 v12, v23, v52 :: v_dual_mul_f32 v9, v17, v55
	v_dual_mul_f32 v14, v22, v53 :: v_dual_mul_f32 v11, v16, v11
	v_mul_f32_e32 v13, v25, v13
	v_mul_f32_e32 v15, v27, v56
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_b64 v30, v[0:1]
	ds_store_b64 v31, v[2:3]
	ds_store_b64 v36, v[4:5]
	ds_store_b64 v37, v[6:7]
	ds_store_b64 v38, v[8:9]
	ds_store_b64 v39, v[10:11]
	ds_store_b64 v40, v[12:13]
	ds_store_b64 v41, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v42
	ds_load_b64 v[2:3], v43
	ds_load_b64 v[4:5], v45
	ds_load_b64 v[6:7], v46
	ds_load_b64 v[8:9], v47
	ds_load_b64 v[10:11], v48
	ds_load_b64 v[12:13], v49
	ds_load_b64 v[14:15], v50
	v_add_lshl_u32 v16, v24, s8, 2
	v_add_lshl_u32 v17, v24, s9, 2
	v_add_lshl_u32 v18, v24, s10, 2
	v_add_lshl_u32 v19, v24, s11, 2
	v_add_lshl_u32 v21, v24, s13, 2
	v_add_lshl_u32 v22, v24, s14, 2
	v_add_lshl_u32 v23, v24, s15, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v26, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v28, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v29, s[16:19], 0 offen
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
	buffer_atomic_add_f32 v14, v20, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v21, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v22, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v23, s[16:19], 0 offen
	v_add_lshl_u32 v25, v24, s20, 2
	v_add_lshl_u32 v27, v24, s21, 2
	v_add_lshl_u32 v30, v24, s22, 2
	v_add_lshl_u32 v31, v24, s23, 2
	v_add_lshl_u32 v0, v24, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v25, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v27, s[16:19], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6548
; TotalNumSgprs: 39
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
