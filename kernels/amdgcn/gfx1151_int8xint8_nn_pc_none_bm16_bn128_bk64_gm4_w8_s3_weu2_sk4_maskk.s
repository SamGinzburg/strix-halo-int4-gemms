	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v12, 1, v0
	v_lshlrev_b32_e32 v11, 2, v0
	v_and_b32_e32 v25, 8, v0
	s_load_b32 s22, s[0:1], 0x38
	v_lshlrev_b32_e32 v27, 6, v9
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v10, 15, v0
	v_and_b32_e32 v26, 32, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v15, 2, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s14, 15
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
	s_lshl_b32 s10, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s10
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
	s_xor_b32 s8, s2, s10
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s11, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s11, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s11, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s12, s11, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s11, s11, s10
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s12
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s11
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s13, s4, 4
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s13
	s_abs_i32 s11, s2
	s_cvt_f32_u32 s8, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s16, s8, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[8:9], s[6:7]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v13, 62, v1
	s_mov_b32 s7, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s16
	s_sub_i32 s16, 0, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s15, v13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s16, s16, s6
	s_mul_hi_u32 s10, s6, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s10
	s_mul_hi_u32 s10, s11, s6
	s_xor_b32 s6, s2, s13
	s_mul_i32 s16, s10, s14
	s_ashr_i32 s17, s6, 31
	s_sub_i32 s11, s11, s16
	s_add_i32 s16, s10, 1
	s_sub_i32 s18, s11, s14
	s_cmp_ge_u32 s11, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v14, v9, 4, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s10, s16, s10
	s_cselect_b32 s11, s18, s11
	s_add_i32 s16, s10, 1
	s_cmp_ge_u32 s11, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s10, s16, s10
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s25, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s10, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s25, v13
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s10, s15, s25
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s11, s3, s13
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s14, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s14, s10, v14
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s12
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s23, s22, 0xff
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s20, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s23, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s15, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s21, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s10, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s11, s7
	v_cndmask_b32_e32 v3, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[8:11], 0 offen
	buffer_load_b128 v[17:20], v1, s[8:11], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s25, v15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s20, s22
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s15, 8, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s22, v1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s21
	s_cmpk_gt_i32 s23, 0x1ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v16, v1, v15, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s25, v16
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s25, 0x100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v7, s25, v13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s22, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s15, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v46, v1, s[4:7], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s25, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_clause 0x1
	buffer_load_b128 v[21:24], v2, s[8:11], 0 offen
	buffer_load_b128 v[37:40], v7, s[8:11], 0 offen
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s25, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 6, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 48, v12
	s_mov_b32 s3, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s23, 0x2ff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_xor_b32_e32 v29, v11, v7
	buffer_load_b32 v47, v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v48, 0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v8, v1, v13
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v30, v2, 10, v8
	v_lshlrev_b32_e32 v2, 3, v2
	v_xor_b32_e32 v31, 0x90, v30
	v_xor_b32_e32 v32, 0x120, v30
	v_xor_b32_e32 v33, 0x1b0, v30
	v_xor_b32_e32 v34, 0x210, v30
	v_xor_b32_e32 v35, 0x330, v30
	v_xor_b32_e32 v36, 0x3a0, v30
	v_add_nc_u32_e32 v49, 0, v30
	v_add_nc_u32_e32 v50, 0, v31
	v_add_nc_u32_e32 v51, 0, v32
	v_add_nc_u32_e32 v52, 0, v33
	v_add_nc_u32_e32 v53, 0, v34
	v_add_nc_u32_e32 v54, 0, v35
	v_add_nc_u32_e32 v55, 0, v36
	s_waitcnt vmcnt(4)
	v_perm_b32 v7, v17, v3, 0x5010400
	v_perm_b32 v8, v17, v3, 0x7030602
	v_perm_b32 v17, v18, v4, 0x5010400
	v_perm_b32 v28, v19, v5, 0x5010400
	v_perm_b32 v19, v19, v5, 0x7030602
	v_lshrrev_b32_e32 v42, 8, v7
	v_lshrrev_b32_e32 v43, 24, v7
	v_perm_b32 v18, v18, v4, 0x7030602
	v_perm_b32 v41, v20, v6, 0x5010400
	v_perm_b32 v20, v20, v6, 0x7030602
	v_lshrrev_b32_e32 v44, 8, v8
	v_lshrrev_b32_e32 v45, 24, v8
	v_lshrrev_b32_e32 v56, 8, v17
	v_lshrrev_b32_e32 v57, 24, v17
	v_and_b16 v3.l, 0xff, v7.l
	v_and_b16 v3.h, 0xff, v7.h
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v8.l, 0xff, v19.l
	v_lshrrev_b32_e32 v62, 8, v19
	v_lshrrev_b32_e32 v63, 24, v19
	v_and_b16 v8.h, 0xff, v19.h
	v_lshlrev_b16 v19.l, 8, v42.l
	v_lshlrev_b16 v19.h, 8, v43.l
	v_and_b16 v6.l, 0xff, v18.l
	v_lshrrev_b32_e32 v58, 8, v18
	v_lshrrev_b32_e32 v59, 24, v18
	v_and_b16 v6.h, 0xff, v18.h
	v_and_b16 v18.l, 0xff, v20.l
	v_lshrrev_b32_e32 v66, 8, v20
	v_lshrrev_b32_e32 v67, 24, v20
	v_and_b16 v18.h, 0xff, v20.h
	v_lshlrev_b16 v20.l, 8, v44.l
	v_lshlrev_b16 v20.h, 8, v45.l
	v_lshrrev_b32_e32 v60, 8, v28
	v_lshrrev_b32_e32 v61, 24, v28
	v_lshrrev_b32_e32 v64, 8, v41
	v_lshrrev_b32_e32 v65, 24, v41
	v_and_b16 v5.l, 0xff, v17.l
	v_and_b16 v5.h, 0xff, v17.h
	v_and_b16 v7.l, 0xff, v28.l
	v_and_b16 v7.h, 0xff, v28.h
	v_lshlrev_b16 v28.l, 8, v56.l
	v_lshlrev_b16 v28.h, 8, v57.l
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v3.h, v3.h, v19.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v19, v37, v21, 0x5010400
	v_or_b16 v4.l, v4.l, v20.l
	v_or_b16 v4.h, v4.h, v20.h
	v_perm_b32 v20, v37, v21, 0x7030602
	v_and_b16 v17.l, 0xff, v41.l
	v_and_b16 v17.h, 0xff, v41.h
	v_lshlrev_b16 v41.l, 8, v58.l
	v_lshlrev_b16 v41.h, 8, v59.l
	v_lshlrev_b16 v42.l, 8, v60.l
	v_lshlrev_b16 v42.h, 8, v61.l
	v_lshlrev_b16 v44.l, 8, v64.l
	v_lshlrev_b16 v44.h, 8, v65.l
	v_lshlrev_b16 v43.l, 8, v62.l
	v_lshlrev_b16 v43.h, 8, v63.l
	v_lshlrev_b16 v45.l, 8, v66.l
	v_lshlrev_b16 v45.h, 8, v67.l
	v_or_b16 v5.l, v5.l, v28.l
	v_or_b16 v5.h, v5.h, v28.h
	v_perm_b32 v21, v38, v22, 0x5010400
	v_perm_b32 v22, v38, v22, 0x7030602
	v_perm_b32 v28, v39, v23, 0x5010400
	v_perm_b32 v23, v39, v23, 0x7030602
	v_perm_b32 v37, v40, v24, 0x5010400
	v_perm_b32 v24, v40, v24, 0x7030602
	v_lshrrev_b32_e32 v38, 8, v19
	v_lshrrev_b32_e32 v39, 24, v19
	v_lshrrev_b32_e32 v40, 8, v20
	v_or_b16 v6.l, v6.l, v41.l
	v_or_b16 v6.h, v6.h, v41.h
	v_or_b16 v7.l, v7.l, v42.l
	v_or_b16 v7.h, v7.h, v42.h
	v_or_b16 v17.l, v17.l, v44.l
	v_or_b16 v17.h, v17.h, v44.h
	v_lshrrev_b32_e32 v41, 24, v20
	v_or_b16 v8.l, v8.l, v43.l
	v_or_b16 v8.h, v8.h, v43.h
	v_or_b16 v18.l, v18.l, v45.l
	v_or_b16 v18.h, v18.h, v45.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v48, v46 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v49, v3
	ds_store_b16_d16_hi v49, v3 offset:64
	ds_store_b16 v50, v4
	ds_store_b16_d16_hi v50, v4 offset:64
	ds_store_b16 v51, v5
	ds_store_b16_d16_hi v51, v5 offset:64
	ds_store_b16 v52, v6
	ds_store_b16_d16_hi v52, v6 offset:64
	ds_store_b16 v53, v7
	ds_store_b16_d16_hi v53, v7 offset:64
	ds_store_b16 v49, v8 offset:640
	ds_store_b16_d16_hi v49, v8 offset:704
	ds_store_b16 v54, v17
	ds_store_b16_d16_hi v54, v17 offset:64
	ds_store_b16 v55, v18
	ds_store_b16_d16_hi v55, v18 offset:64
	v_lshrrev_b32_e32 v42, 8, v21
	v_lshrrev_b32_e32 v43, 24, v21
	v_lshrrev_b32_e32 v44, 8, v22
	v_lshrrev_b32_e32 v45, 24, v22
	v_and_b16 v7.l, 0xff, v28.l
	v_lshrrev_b32_e32 v46, 8, v28
	v_lshrrev_b32_e32 v56, 24, v28
	v_and_b16 v7.h, 0xff, v28.h
	v_lshrrev_b32_e32 v28, 8, v23
	v_lshrrev_b32_e32 v57, 24, v23
	v_and_b16 v17.l, 0xff, v37.l
	v_lshrrev_b32_e32 v58, 8, v37
	v_lshrrev_b32_e32 v59, 24, v37
	v_and_b16 v17.h, 0xff, v37.h
	v_lshrrev_b32_e32 v37, 8, v24
	v_lshrrev_b32_e32 v60, 24, v24
	v_and_b16 v3.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v38.l
	v_and_b16 v3.h, 0xff, v19.h
	v_lshlrev_b16 v19.h, 8, v39.l
	v_and_b16 v4.l, 0xff, v20.l
	v_lshlrev_b16 v20.l, 8, v40.l
	v_and_b16 v4.h, 0xff, v20.h
	v_lshlrev_b16 v20.h, 8, v41.l
	v_and_b16 v5.l, 0xff, v21.l
	v_and_b16 v5.h, 0xff, v21.h
	v_and_b16 v6.l, 0xff, v22.l
	v_and_b16 v6.h, 0xff, v22.h
	v_and_b16 v8.l, 0xff, v23.l
	v_and_b16 v8.h, 0xff, v23.h
	v_and_b16 v18.l, 0xff, v24.l
	v_and_b16 v18.h, 0xff, v24.h
	v_lshlrev_b16 v21.l, 8, v42.l
	v_lshlrev_b16 v21.h, 8, v43.l
	v_lshlrev_b16 v22.l, 8, v44.l
	v_lshlrev_b16 v22.h, 8, v45.l
	v_lshlrev_b16 v23.l, 8, v46.l
	v_lshlrev_b16 v23.h, 8, v56.l
	v_lshlrev_b16 v24.l, 8, v28.l
	v_lshlrev_b16 v24.h, 8, v57.l
	v_lshlrev_b16 v28.l, 8, v58.l
	v_lshlrev_b16 v28.h, 8, v59.l
	v_lshlrev_b16 v37.l, 8, v37.l
	v_lshlrev_b16 v37.h, 8, v60.l
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v3.h, v3.h, v19.h
	v_or_b16 v4.l, v4.l, v20.l
	v_or_b16 v4.h, v4.h, v20.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v5.l, v21.l
	v_or_b16 v5.h, v5.h, v21.h
	v_or_b16 v6.l, v6.l, v22.l
	v_or_b16 v6.h, v6.h, v22.h
	v_or_b16 v7.l, v7.l, v23.l
	v_or_b16 v7.h, v7.h, v23.h
	v_or_b16 v8.l, v8.l, v24.l
	v_or_b16 v8.h, v8.h, v24.h
	v_or_b16 v17.l, v17.l, v28.l
	v_or_b16 v17.h, v17.h, v28.h
	v_or_b16 v18.l, v18.l, v37.l
	v_or_b16 v18.h, v18.h, v37.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v48, v47 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v49, v3 offset:8192
	ds_store_b16_d16_hi v49, v3 offset:8256
	ds_store_b16 v50, v4 offset:8192
	ds_store_b16_d16_hi v50, v4 offset:8256
	ds_store_b16 v51, v5 offset:8192
	ds_store_b16_d16_hi v51, v5 offset:8256
	ds_store_b16 v52, v6 offset:8192
	ds_store_b16_d16_hi v52, v6 offset:8256
	ds_store_b16 v53, v7 offset:8192
	ds_store_b16_d16_hi v53, v7 offset:8256
	ds_store_b16 v49, v8 offset:8832
	ds_store_b16_d16_hi v49, v8 offset:8896
	ds_store_b16 v54, v17 offset:8192
	ds_store_b16_d16_hi v54, v17 offset:8256
	ds_store_b16 v55, v18 offset:8192
	ds_store_b16_d16_hi v55, v18 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v28, v10, 6, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v3, 6, v9
	v_and_b32_e32 v4, 8, v0
	v_and_b32_e32 v5, 32, v0
	v_and_or_b32 v40, 0x1800, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v39, 16, v28
	v_xor_b32_e32 v37, 32, v28
	v_xor_b32_e32 v38, 48, v28
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v17, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s24, 0, 0x4400
	s_add_i32 s23, 0, 0x2000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr40
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
	v_and_or_b32 v40, 0x1800, v1, v2
	v_lshl_or_b32 v28, v10, 6, v2
	v_mov_b32_e32 v21, 0
	v_and_b32_e32 v3, 0x420, v3
	v_mov_b32_e32 v19, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s26, s23, 8
	v_xor_b32_e32 v39, 16, v28
	v_xor_b32_e32 v37, 32, v28
	v_and_or_b32 v1, 0x210, v4, v3
	v_xor_b32_e32 v38, 48, v28
	s_addk_i32 s25, 0x100
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s24, 0, 0x4400
	v_xor_b32_e32 v2, v1, v40
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v24, 0
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v41, s15, v14
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v42, v2, v27
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v43, 16, v42
	v_xor_b32_e32 v44, 32, v42
	v_xor_b32_e32 v45, 48, v42
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v23, 0
	s_add_i32 s23, 0, 0x2000
	s_mov_b32 s27, 1
	s_add_i32 s26, s26, -3
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s28, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s0, s28, 8
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s0, s25, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v46, s0, v15
	v_or_b32_e32 v47, s0, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s29, s0, s15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v48, s0, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s29, s29, s14
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s0, s22, v46
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v49, s29, v14
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v47
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v50, s29, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v46, 0x80000000, v48, s0
	s_mov_b32 s0, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v47, 0x80000000, v49 :: v_dual_cndmask_b32 v48, 0x80000000, v50
	s_mov_b32 s1, s24
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v94, v46, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[54:57], v47, s[8:11], 0 offen
	buffer_load_b128 v[58:61], v48, s[8:11], 0 offen
	s_mov_b32 s24, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v46, s0, v28
	v_add_nc_u32_e32 v47, s0, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v50, s24, v42
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v48, s0, v37
	v_add_nc_u32_e32 v49, s0, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v51, s24, v43
	v_add_nc_u32_e32 v52, s24, v44
	v_add_nc_u32_e32 v53, s24, v45
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[62:65], v46
	ds_load_b128 v[66:69], v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[70:73], v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[74:77], v48
	ds_load_b128 v[78:81], v49
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v51
	ds_load_b128 v[86:89], v52
	ds_load_b128 v[90:93], v53
	s_mov_b32 s3, s23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s23, s27, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s23, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s27, s23, 0
	s_add_i32 s0, s28, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s23, s27, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s24, s27, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s29, s23, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s23, s24, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v95, s29, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v96, s23, v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s24, s29, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[62:65], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v97, s23, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s28, s26
	s_mov_b32 s28, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[46:53], v[82:85], v[66:69], v[46:53] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v98, s23, v32
	v_add_nc_u32_e32 v99, s23, v33
	v_add_nc_u32_e32 v100, s23, v34
	v_add_nc_u32_e32 v101, s23, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[46:53], v[86:89], v[74:77], v[46:53] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v102, s23, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[46:53], v[90:93], v[78:81], v[46:53] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v47 :: v_dual_add_f32 v23, v23, v48
	v_add_f32_e32 v22, v22, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v21, v21, v50 :: v_dual_add_f32 v20, v20, v51
	v_dual_add_f32 v19, v19, v52 :: v_dual_add_f32 v18, v18, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v17, v17, v46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v95, v94 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v47, v58, v54, 0x5010400
	v_perm_b32 v48, v58, v54, 0x7030602
	v_perm_b32 v49, v59, v55, 0x5010400
	v_perm_b32 v50, v59, v55, 0x7030602
	v_perm_b32 v51, v60, v56, 0x5010400
	v_perm_b32 v52, v60, v56, 0x7030602
	v_perm_b32 v53, v61, v57, 0x5010400
	v_perm_b32 v54, v61, v57, 0x7030602
	v_lshrrev_b32_e32 v55, 8, v47
	v_lshrrev_b32_e32 v56, 24, v47
	v_lshrrev_b32_e32 v57, 8, v48
	v_lshrrev_b32_e32 v58, 24, v48
	v_lshrrev_b32_e32 v59, 8, v49
	v_and_b16 v46.l, 0xff, v47.l
	v_and_b16 v47.l, 0xff, v48.l
	v_and_b16 v48.l, 0xff, v49.l
	v_lshrrev_b32_e32 v60, 24, v49
	v_and_b16 v49.l, 0xff, v50.l
	v_lshrrev_b32_e32 v61, 8, v50
	v_lshrrev_b32_e32 v62, 24, v50
	v_and_b16 v50.l, 0xff, v51.l
	v_lshrrev_b32_e32 v63, 8, v51
	v_lshrrev_b32_e32 v64, 24, v51
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v65, 8, v52
	v_lshrrev_b32_e32 v66, 24, v52
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v67, 8, v53
	v_lshrrev_b32_e32 v68, 24, v53
	v_and_b16 v53.l, 0xff, v54.l
	v_lshrrev_b32_e32 v69, 8, v54
	v_lshrrev_b32_e32 v70, 24, v54
	v_lshlrev_b16 v54.l, 8, v55.l
	v_and_b16 v46.h, 0xff, v47.h
	v_and_b16 v47.h, 0xff, v48.h
	v_and_b16 v48.h, 0xff, v49.h
	v_and_b16 v49.h, 0xff, v50.h
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_lshlrev_b16 v54.h, 8, v56.l
	v_lshlrev_b16 v55.l, 8, v57.l
	v_lshlrev_b16 v55.h, 8, v58.l
	v_lshlrev_b16 v56.l, 8, v59.l
	v_lshlrev_b16 v56.h, 8, v60.l
	v_lshlrev_b16 v57.l, 8, v61.l
	v_lshlrev_b16 v57.h, 8, v62.l
	v_lshlrev_b16 v58.l, 8, v63.l
	v_lshlrev_b16 v58.h, 8, v64.l
	v_lshlrev_b16 v59.l, 8, v65.l
	v_lshlrev_b16 v59.h, 8, v66.l
	v_lshlrev_b16 v60.l, 8, v67.l
	v_lshlrev_b16 v60.h, 8, v68.l
	v_lshlrev_b16 v61.l, 8, v69.l
	v_lshlrev_b16 v61.h, 8, v70.l
	v_or_b16 v46.l, v46.l, v54.l
	v_or_b16 v46.h, v46.h, v54.h
	v_or_b16 v47.l, v47.l, v55.l
	v_or_b16 v47.h, v47.h, v55.h
	v_or_b16 v48.l, v48.l, v56.l
	v_or_b16 v48.h, v48.h, v56.h
	v_or_b16 v49.l, v49.l, v57.l
	v_or_b16 v49.h, v49.h, v57.h
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	ds_store_b16 v96, v46
	ds_store_b16_d16_hi v96, v46 offset:64
	ds_store_b16 v97, v47
	ds_store_b16_d16_hi v97, v47 offset:64
	ds_store_b16 v98, v48
	ds_store_b16_d16_hi v98, v48 offset:64
	ds_store_b16 v99, v49
	ds_store_b16_d16_hi v99, v49 offset:64
	ds_store_b16 v100, v50
	ds_store_b16_d16_hi v100, v50 offset:64
	ds_store_b16 v96, v51 offset:640
	ds_store_b16_d16_hi v96, v51 offset:704
	ds_store_b16 v101, v52
	ds_store_b16_d16_hi v101, v52 offset:64
	ds_store_b16 v102, v53
	ds_store_b16_d16_hi v102, v53 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v27 :: v_dual_mov_b32 v4, v25
	v_mov_b32_e32 v5, v26
.LBB0_7:                                ; %Flow14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_and_b32_e32 v2, 0xf0, v0
	v_and_b32_e32 v1, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x210, 0, s0
	v_cndmask_b32_e64 v5, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v4, v4, v5
	v_xor_b32_e32 v4, v4, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v5, v4, v3
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v3, 32, v5
	v_xor_b32_e32 v4, 48, v5
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v8, s3, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v7, s3, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s1, v39
	v_add_nc_u32_e32 v26, s1, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v34, v29 :: v_dual_add_nc_u32 v27, s3, v4
	v_mov_b32_e32 v30, v29
	v_mov_b32_e32 v31, v29
	v_mov_b32_e32 v32, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[13:16], v7
	ds_load_b128 v[40:43], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[44:47], v25
	ds_load_b128 v[48:51], v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v36, v29 :: v_dual_add_nc_u32 v7, s3, v3
	v_dual_mov_b32 v33, v29 :: v_dual_add_nc_u32 v8, s1, v38
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s1, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[52:55], v27
	ds_load_b128 v[56:59], v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[64:67], v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v35, v29
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[40:43], v[48:51], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[13:16], v[44:47], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[56:59], v[64:67], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[52:55], v[60:63], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v7, v30
	v_cvt_f32_i32_e32 v8, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v32
	v_cvt_f32_i32_e32 v14, v33
	v_cvt_f32_i32_e32 v15, v34
	v_cvt_f32_i32_e32 v16, v35
	v_cvt_f32_i32_e32 v25, v36
	v_cvt_f32_i32_e32 v26, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v7 :: v_dual_add_f32 v23, v23, v8
	v_add_f32_e32 v20, v20, v15
	v_dual_add_f32 v22, v22, v13 :: v_dual_add_f32 v21, v21, v14
	v_dual_add_f32 v18, v18, v25 :: v_dual_add_f32 v19, v19, v16
	v_add_f32_e32 v17, v17, v26
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s23, v6
	v_add_nc_u32_e32 v8, s23, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s24, v39
	v_add_nc_u32_e32 v26, s24, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v27, s23, v4
	ds_load_b128 v[4:7], v6
	ds_load_b128 v[13:16], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[33:36], v25
	ds_load_b128 v[39:42], v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v25, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s24, v38
	v_add_nc_u32_e32 v26, s24, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v31, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[43:46], v27
	ds_load_b128 v[47:50], v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[51:54], v8
	ds_load_b128 v[55:58], v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v32, v25
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[13:16], v[39:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[4:7], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[47:50], v[55:58], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[43:46], v[51:54], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v8, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v27
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v15, v29
	v_cvt_f32_i32_e32 v16, v30
	v_cvt_f32_i32_e32 v25, v31
	v_cvt_f32_i32_e32 v26, v32
.LBB0_11:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v17, v7 :: v_dual_and_b32 v4, 0x70, v12
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v5, s20, v10
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v4, s14
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v15, v21, v15 :: v_dual_lshlrev_b32 v4, 1, v5
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v24, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	v_or_b32_e32 v5, 4, v3
	v_or_b32_e32 v6, 8, v3
	v_or_b32_e32 v10, 12, v3
	v_or_b32_e32 v12, 16, v3
	v_or_b32_e32 v27, 20, v3
	v_or_b32_e32 v28, 24, v3
	v_or_b32_e32 v29, 28, v3
	s_clause 0x7
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v22, v14 :: v_dual_add_f32 v25, v19, v25
	v_add_f32_e32 v26, v18, v26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v33, 0x1040, 0, s0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v32, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v22, v14, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v13, v23, v13 :: v_dual_and_b32 v30, 0x7f, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v31, v0, 7, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v17, s15, v32
	s_mul_i32 s1, s20, s15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v24, v8, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s1, s14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v23, v13, s2
	v_cndmask_b32_e64 v15, v21, v15, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s3, s15, 1
	s_mul_i32 s5, s15, 6
	s_lshl_b32 s4, s15, 2
	s_lshl_b32 s8, s15, 3
	s_mul_i32 s9, s15, 10
	s_mul_i32 s10, s15, 12
	s_mul_i32 s0, s15, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v6, 16, v6
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v3, v4, v3 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v2, v9, 2, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v4, v5 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v2, v2, v33
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v4, v10
	v_dual_mul_f32 v27, v4, v27 :: v_dual_and_b32 v0, 28, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v2, v9, 9, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v16, v20, v16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v0, 0x1c0, v11, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v9, s1, v30, v17
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v8, v5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v17, 0, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v20, v16, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v20, 0x204, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v19, v25, s2
	v_cndmask_b32_e64 v18, v18, v26, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v19, v2, 4, 0
	v_xad_u32 v21, v2, 12, 0
	v_xor_b32_e32 v0, v0, v20
	v_xad_u32 v20, v2, 8, 0
	v_xad_u32 v22, v2, 20, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v7, v3
	v_mul_f32_e32 v7, v14, v10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v1, 5, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v4, v28 :: v_dual_lshlrev_b32 v29, 16, v29
	v_mul_f32_e32 v12, v4, v12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v1, v2, 16, 0
	v_add_nc_u32_e32 v24, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v11, v11, v28 :: v_dual_mul_f32 v6, v4, v6
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v4, v29
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xad_u32 v25, 0x408, v0, 0
	v_xad_u32 v30, 0xc18, v0, 0
	v_xad_u32 v26, 0x810, v0, 0
	v_xad_u32 v31, 0x1040, v0, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v13, v6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v32, 0x1448, v0, 0
	v_xad_u32 v23, v2, 24, 0
	v_xad_u32 v2, v2, 28, 0
	v_xad_u32 v33, 0x1850, v0, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v15, v12
	v_mul_f32_e32 v10, v16, v27
	v_mul_f32_e32 v4, v18, v4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b32 v17, v3
	ds_store_b32 v19, v5
	ds_store_b32 v20, v6
	ds_store_b32 v21, v7
	ds_store_b32 v1, v8
	ds_store_b32 v22, v10
	ds_store_b32 v23, v11
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v24
	ds_load_b32 v2, v25
	ds_load_b32 v3, v26
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v30
	ds_load_b32 v5, v31
	ds_load_b32 v6, v32
	ds_load_b32 v7, v33
	ds_load_b32 v0, v0
	v_lshlrev_b32_e32 v8, 2, v9
	v_add_lshl_u32 v10, v9, s3, 2
	v_add_lshl_u32 v12, v9, s5, 2
	v_add_lshl_u32 v11, v9, s4, 2
	v_add_lshl_u32 v13, v9, s8, 2
	v_add_lshl_u32 v14, v9, s9, 2
	v_add_lshl_u32 v15, v9, s10, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v10, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v11, s[12:15], 0 offen
	v_add_lshl_u32 v1, v9, s0, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v4, v12, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v5, v13, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v6, v14, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v7, v15, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v1, s[12:15], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 103
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5632
; TotalNumSgprs: 32
; NumVgprs: 103
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     103
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
