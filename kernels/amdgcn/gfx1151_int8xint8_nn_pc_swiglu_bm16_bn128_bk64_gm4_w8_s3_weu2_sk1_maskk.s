	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v33, 15, v0
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v35, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v19, 6, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v11, 2, v33
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 15
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
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s19
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s18
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v12, s30, v34
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
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v9, 62, v1
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
	s_lshl_b32 s35, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s35, v9
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s31, s15, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s14, s3, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s31, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s29, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s31, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v17, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v14, s35, v11
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s28, s30
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v10, v17, 4, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v12, v12, v11, s2
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v13, s14, s4, v10
	v_add_nc_u32_e32 v1, s31, v13
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v1, s[20:23], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s15, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v13, s15, 7, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s31, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v16, s15, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v14
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v14, s35, v12
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v18, s31, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	s_cmpk_gt_i32 s5, 0x7f
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s35, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v15, s35, v9
	v_or_b32_e32 v32, s35, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v15, s31, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	s_clause 0x1
	buffer_load_b128 v[28:31], v13, s[20:23], 0 offen
	buffer_load_b128 v[42:45], v15, s[20:23], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v13, 0x80000000, v16, s3
	v_cndmask_b32_e64 v15, 0x80000000, v18, s3
	s_clause 0x1
	buffer_load_b128 v[46:49], v13, s[20:23], 0 offen
	buffer_load_b128 v[50:53], v15, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v13, 0x80000000, v14 :: v_dual_lshlrev_b32 v14, 2, v0
	v_and_b32_e32 v15, 48, v35
	v_lshlrev_b32_e32 v18, 5, v0
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v32
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v64, v13, s[16:19], 0 offen
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v32, s35, v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v15, v14, v15
	v_lshlrev_b32_e32 v14, 6, v17
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_add_nc_u32 v65, 0, v15
	buffer_load_b32 v73, v32, s[16:19], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v13, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 0x420, v13
	v_xor_b32_e32 v13, v13, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v16, v19, 10, v13
	v_and_b32_e32 v13, 8, v0
	v_lshlrev_b32_e32 v19, 3, v19
	v_xor_b32_e32 v36, 0x90, v16
	v_xor_b32_e32 v37, 0x120, v16
	v_add_nc_u32_e32 v66, 0, v16
	v_xor_b32_e32 v38, 0x1b0, v16
	v_xor_b32_e32 v39, 0x210, v16
	v_add_nc_u32_e32 v67, 0, v36
	v_xor_b32_e32 v40, 0x330, v16
	v_add_nc_u32_e32 v68, 0, v37
	v_xor_b32_e32 v41, 0x3a0, v16
	v_add_nc_u32_e32 v69, 0, v38
	v_add_nc_u32_e32 v70, 0, v39
	v_add_nc_u32_e32 v71, 0, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v72, 0, v41
	s_waitcnt vmcnt(8)
	v_perm_b32 v32, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v54, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v55, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v56, v27, v23, 0x5010400
	v_perm_b32 v57, v27, v23, 0x7030602
	v_and_b16 v20.l, 0xff, v32.l
	v_lshrrev_b32_e32 v58, 8, v32
	v_lshrrev_b32_e32 v59, 24, v32
	v_and_b16 v20.h, 0xff, v32.h
	v_and_b16 v21.l, 0xff, v24.l
	v_lshrrev_b32_e32 v32, 8, v24
	v_lshrrev_b32_e32 v60, 24, v24
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v54.l
	v_lshrrev_b32_e32 v61, 8, v54
	v_lshrrev_b32_e32 v62, 24, v54
	v_and_b16 v22.h, 0xff, v54.h
	v_and_b16 v23.l, 0xff, v25.l
	v_lshrrev_b32_e32 v54, 8, v25
	v_lshrrev_b32_e32 v63, 24, v25
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v55.l
	v_lshrrev_b32_e32 v74, 8, v55
	v_lshrrev_b32_e32 v75, 24, v55
	v_and_b16 v24.h, 0xff, v55.h
	v_and_b16 v25.l, 0xff, v26.l
	v_lshrrev_b32_e32 v55, 8, v26
	v_lshrrev_b32_e32 v76, 24, v26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v56.l
	v_lshrrev_b32_e32 v77, 8, v56
	v_lshrrev_b32_e32 v78, 24, v56
	v_and_b16 v26.h, 0xff, v56.h
	v_and_b16 v27.l, 0xff, v57.l
	v_lshrrev_b32_e32 v56, 8, v57
	v_lshrrev_b32_e32 v79, 24, v57
	v_and_b16 v27.h, 0xff, v57.h
	s_waitcnt vmcnt(6)
	v_perm_b32 v88, v43, v29, 0x5010400
	v_perm_b32 v43, v43, v29, 0x7030602
	v_perm_b32 v89, v44, v30, 0x5010400
	v_perm_b32 v44, v44, v30, 0x7030602
	v_perm_b32 v90, v45, v31, 0x5010400
	v_perm_b32 v91, v45, v31, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(4)
	v_perm_b32 v92, v50, v46, 0x5010400
	v_perm_b32 v50, v50, v46, 0x7030602
	v_perm_b32 v95, v53, v49, 0x5010400
	v_perm_b32 v93, v51, v47, 0x5010400
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v94, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v96, v53, v49, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v31.l, 0xff, v43.l
	v_and_b16 v31.h, 0xff, v43.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v57, v5, v1, 0x5010400
	v_perm_b32 v80, v5, v1, 0x7030602
	v_perm_b32 v81, v6, v2, 0x5010400
	v_perm_b32 v82, v6, v2, 0x7030602
	v_perm_b32 v83, v7, v3, 0x5010400
	v_perm_b32 v84, v7, v3, 0x7030602
	v_perm_b32 v85, v8, v4, 0x5010400
	v_perm_b32 v86, v8, v4, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v1.l, 8, v58.l
	v_lshlrev_b16 v1.h, 8, v59.l
	v_lshlrev_b16 v2.l, 8, v32.l
	v_lshlrev_b16 v2.h, 8, v60.l
	v_lshlrev_b16 v3.l, 8, v61.l
	v_lshlrev_b16 v3.h, 8, v62.l
	v_lshlrev_b16 v4.l, 8, v54.l
	v_lshlrev_b16 v4.h, 8, v63.l
	v_lshlrev_b16 v5.l, 8, v74.l
	v_lshlrev_b16 v5.h, 8, v75.l
	v_lshlrev_b16 v6.l, 8, v55.l
	v_lshlrev_b16 v6.h, 8, v76.l
	v_lshlrev_b16 v7.l, 8, v77.l
	v_lshlrev_b16 v7.h, 8, v78.l
	v_lshlrev_b16 v8.l, 8, v56.l
	v_lshlrev_b16 v8.h, 8, v79.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v32.l, 0xff, v57.l
	v_lshrrev_b32_e32 v61, 8, v57
	v_lshrrev_b32_e32 v62, 24, v57
	v_and_b16 v32.h, 0xff, v57.h
	v_and_b16 v54.l, 0xff, v80.l
	v_lshrrev_b32_e32 v63, 8, v80
	v_lshrrev_b32_e32 v74, 24, v80
	v_and_b16 v54.h, 0xff, v80.h
	v_and_b16 v55.l, 0xff, v81.l
	v_lshrrev_b32_e32 v75, 8, v81
	v_lshrrev_b32_e32 v76, 24, v81
	v_and_b16 v55.h, 0xff, v81.h
	v_and_b16 v56.l, 0xff, v82.l
	v_lshrrev_b32_e32 v77, 8, v82
	v_lshrrev_b32_e32 v78, 24, v82
	v_and_b16 v56.h, 0xff, v82.h
	v_and_b16 v57.l, 0xff, v83.l
	v_lshrrev_b32_e32 v79, 8, v83
	v_lshrrev_b32_e32 v80, 24, v83
	v_and_b16 v57.h, 0xff, v83.h
	v_and_b16 v58.l, 0xff, v84.l
	v_lshrrev_b32_e32 v81, 8, v84
	v_lshrrev_b32_e32 v82, 24, v84
	v_and_b16 v58.h, 0xff, v84.h
	v_and_b16 v59.l, 0xff, v85.l
	v_lshrrev_b32_e32 v83, 8, v85
	v_lshrrev_b32_e32 v84, 24, v85
	v_and_b16 v59.h, 0xff, v85.h
	v_and_b16 v60.l, 0xff, v86.l
	v_lshrrev_b32_e32 v85, 8, v86
	v_lshrrev_b32_e32 v87, 24, v86
	v_and_b16 v60.h, 0xff, v86.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v86, v42, v28, 0x5010400
	v_perm_b32 v42, v42, v28, 0x7030602
	v_or_b16 v1.l, v20.l, v1.l
	v_or_b16 v1.h, v20.h, v1.h
	v_or_b16 v2.l, v21.l, v2.l
	v_or_b16 v2.h, v21.h, v2.h
	v_or_b16 v4.l, v23.l, v4.l
	v_or_b16 v4.h, v23.h, v4.h
	v_or_b16 v5.l, v24.l, v5.l
	v_or_b16 v5.h, v24.h, v5.h
	v_or_b16 v6.l, v25.l, v6.l
	v_or_b16 v6.h, v25.h, v6.h
	v_or_b16 v7.l, v26.l, v7.l
	v_or_b16 v7.h, v26.h, v7.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v20.l, 8, v61.l
	v_lshlrev_b16 v20.h, 8, v62.l
	v_lshlrev_b16 v21.l, 8, v63.l
	v_lshlrev_b16 v21.h, 8, v74.l
	v_lshlrev_b16 v23.l, 8, v77.l
	v_lshlrev_b16 v23.h, 8, v78.l
	v_lshlrev_b16 v24.l, 8, v79.l
	v_lshlrev_b16 v24.h, 8, v80.l
	v_lshlrev_b16 v25.l, 8, v81.l
	v_lshlrev_b16 v25.h, 8, v82.l
	v_lshlrev_b16 v26.l, 8, v83.l
	v_lshlrev_b16 v26.h, 8, v84.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v61, 8, v86
	v_lshrrev_b32_e32 v62, 24, v86
	v_and_b16 v29.l, 0xff, v42.l
	v_lshrrev_b32_e32 v63, 8, v42
	v_lshrrev_b32_e32 v74, 24, v42
	v_and_b16 v29.h, 0xff, v42.h
	v_lshrrev_b32_e32 v77, 8, v43
	v_lshrrev_b32_e32 v78, 24, v43
	v_and_b16 v42.l, 0xff, v89.l
	v_lshrrev_b32_e32 v79, 8, v89
	v_lshrrev_b32_e32 v80, 24, v89
	v_and_b16 v42.h, 0xff, v89.h
	v_and_b16 v43.l, 0xff, v44.l
	v_lshrrev_b32_e32 v81, 8, v44
	v_lshrrev_b32_e32 v82, 24, v44
	v_and_b16 v43.h, 0xff, v44.h
	v_and_b16 v44.l, 0xff, v90.l
	v_lshrrev_b32_e32 v83, 8, v90
	v_lshrrev_b32_e32 v84, 24, v90
	v_and_b16 v44.h, 0xff, v90.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v89, 8, v50
	v_lshrrev_b32_e32 v90, 24, v50
	v_lshrrev_b32_e32 v101, 8, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v22.l, v3.l
	v_or_b16 v8.l, v27.l, v8.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v75.l
	v_lshlrev_b16 v27.l, 8, v85.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v85, 8, v91
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v102, 24, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.h, v22.h, v3.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.h, 8, v76.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v28.l, 0xff, v86.l
	v_and_b16 v28.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 24, v91
	v_or_b16 v8.h, v27.h, v8.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v27.h, 8, v87.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v30.l, 0xff, v88.l
	v_lshrrev_b32_e32 v75, 8, v88
	v_lshrrev_b32_e32 v76, 24, v88
	v_and_b16 v30.h, 0xff, v88.h
	v_and_b16 v45.l, 0xff, v91.l
	v_and_b16 v45.h, 0xff, v91.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v46.l, 0xff, v92.l
	v_lshrrev_b32_e32 v87, 8, v92
	v_lshrrev_b32_e32 v88, 24, v92
	v_and_b16 v46.h, 0xff, v92.h
	v_and_b16 v47.l, 0xff, v50.l
	v_and_b16 v47.h, 0xff, v50.h
	v_and_b16 v48.l, 0xff, v93.l
	v_lshrrev_b32_e32 v91, 8, v93
	v_lshrrev_b32_e32 v92, 24, v93
	v_and_b16 v48.h, 0xff, v93.h
	v_and_b16 v49.l, 0xff, v51.l
	v_lshrrev_b32_e32 v93, 8, v51
	v_lshrrev_b32_e32 v97, 24, v51
	v_and_b16 v49.h, 0xff, v51.h
	v_and_b16 v50.l, 0xff, v94.l
	v_lshrrev_b32_e32 v98, 8, v94
	v_lshrrev_b32_e32 v99, 24, v94
	v_and_b16 v50.h, 0xff, v94.h
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v94, 8, v52
	v_lshrrev_b32_e32 v100, 24, v52
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.l, 0xff, v95.l
	v_and_b16 v52.h, 0xff, v95.h
	v_lshrrev_b32_e32 v95, 8, v96
	v_lshrrev_b32_e32 v103, 24, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v66, v1
	ds_store_b16_d16_hi v66, v1 offset:64
	ds_store_b16 v67, v2
	ds_store_b16_d16_hi v67, v2 offset:64
	ds_store_b16 v68, v3
	ds_store_b16_d16_hi v68, v3 offset:64
	ds_store_b16 v69, v4
	ds_store_b16_d16_hi v69, v4 offset:64
	ds_store_b16 v70, v5
	ds_store_b16_d16_hi v70, v5 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v54.l, v21.l
	v_or_b16 v3.h, v56.l, v23.l
	v_or_b16 v4.l, v56.h, v23.h
	v_or_b16 v4.h, v57.l, v24.l
	v_or_b16 v5.l, v57.h, v24.h
	v_or_b16 v21.l, v59.l, v26.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v23.l, 8, v61.l
	v_lshlrev_b16 v23.h, 8, v62.l
	v_lshlrev_b16 v26.l, 8, v77.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v57.l, 8, v89.l
	v_lshlrev_b16 v57.h, 8, v90.l
	v_lshlrev_b16 v62.l, 8, v101.l
	v_or_b16 v20.l, v32.l, v20.l
	v_or_b16 v2.h, v55.l, v22.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v55.l, 8, v85.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v2.l, v54.h, v21.h
	v_or_b16 v21.h, v59.h, v26.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.l, 8, v63.l
	v_lshlrev_b16 v26.h, 8, v78.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v62.h, 8, v102.l
	v_or_b16 v3.l, v55.h, v22.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.h, 8, v74.l
	v_lshlrev_b16 v55.h, 8, v86.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v53.l, 0xff, v96.l
	v_or_b16 v1.l, v32.h, v20.h
	v_or_b16 v5.h, v58.l, v25.l
	v_or_b16 v22.l, v60.l, v27.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.l, 8, v75.l
	v_lshlrev_b16 v27.l, 8, v79.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v63.l, 8, v95.l
	v_and_b16 v53.h, 0xff, v96.h
	v_or_b16 v20.h, v58.h, v25.h
	v_or_b16 v22.h, v60.h, v27.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.h, 8, v76.l
	v_lshlrev_b16 v27.h, 8, v80.l
	v_lshlrev_b16 v32.l, 8, v81.l
	v_lshlrev_b16 v32.h, 8, v82.l
	v_lshlrev_b16 v54.l, 8, v83.l
	v_lshlrev_b16 v54.h, 8, v84.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v56.l, 8, v87.l
	v_lshlrev_b16 v56.h, 8, v88.l
	v_lshlrev_b16 v58.l, 8, v91.l
	v_lshlrev_b16 v58.h, 8, v92.l
	v_lshlrev_b16 v59.l, 8, v93.l
	v_lshlrev_b16 v59.h, 8, v97.l
	v_lshlrev_b16 v60.l, 8, v98.l
	v_lshlrev_b16 v60.h, 8, v99.l
	v_lshlrev_b16 v61.l, 8, v94.l
	v_lshlrev_b16 v61.h, 8, v100.l
	v_lshlrev_b16 v63.h, 8, v103.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v65, v64 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v66, v20 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v66, v6 offset:640
	ds_store_b16_d16_hi v66, v6 offset:704
	ds_store_b16 v71, v7
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v66, v1 offset:16448
	ds_store_b16_d16_hi v67, v1 offset:16384
	ds_store_b16 v67, v2 offset:16448
	ds_store_b16_d16_hi v68, v2 offset:16384
	ds_store_b16 v68, v3 offset:16448
	ds_store_b16_d16_hi v69, v3 offset:16384
	ds_store_b16 v69, v4 offset:16448
	ds_store_b16_d16_hi v70, v4 offset:16384
	ds_store_b16 v70, v5 offset:16448
	ds_store_b16_d16_hi v66, v5 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v71, v7 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v66, v20 offset:17088
	ds_store_b16 v71, v21 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v72, v8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v21 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v72, v8 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v72, v22 offset:16384
	ds_store_b16_d16_hi v72, v22 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v28.l, v23.l
	v_or_b16 v4.l, v31.l, v26.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v21.l, v47.l, v57.l
	v_or_b16 v21.h, v47.h, v57.h
	v_or_b16 v26.l, v52.l, v62.l
	v_and_b32_e32 v47, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.h, v28.h, v23.h
	v_or_b16 v8.l, v45.l, v55.l
	v_or_b16 v2.l, v29.l, v24.l
	v_or_b16 v4.h, v31.h, v26.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.h, v52.h, v62.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v2.h, v29.h, v24.h
	v_or_b16 v8.h, v45.h, v55.h
	v_or_b16 v3.l, v30.l, v25.l
	v_or_b16 v5.l, v42.l, v27.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v27.l, v53.l, v63.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.h, v30.h, v25.h
	v_or_b16 v5.h, v42.h, v27.h
	v_or_b16 v6.l, v43.l, v32.l
	v_or_b16 v6.h, v43.h, v32.h
	v_or_b16 v7.l, v44.l, v54.l
	v_or_b16 v7.h, v44.h, v54.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v20.l, v46.l, v56.l
	v_or_b16 v20.h, v46.h, v56.h
	v_or_b16 v22.l, v48.l, v58.l
	v_or_b16 v22.h, v48.h, v58.h
	v_or_b16 v23.l, v49.l, v59.l
	v_or_b16 v23.h, v49.h, v59.h
	v_or_b16 v24.l, v50.l, v60.l
	v_or_b16 v24.h, v50.h, v60.h
	v_or_b16 v25.l, v51.l, v61.l
	v_or_b16 v25.h, v51.h, v61.h
	v_or_b16 v27.h, v53.h, v63.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v66, v1 offset:8192
	ds_store_b16_d16_hi v66, v1 offset:8256
	ds_store_b16 v67, v2 offset:8192
	ds_store_b16_d16_hi v67, v2 offset:8256
	ds_store_b16 v68, v3 offset:8192
	ds_store_b16_d16_hi v68, v3 offset:8256
	ds_store_b16 v69, v4 offset:8192
	ds_store_b16_d16_hi v69, v4 offset:8256
	ds_store_b16 v70, v5 offset:8192
	ds_store_b16_d16_hi v70, v5 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v65, v73 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v66, v20 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v66, v6 offset:8832
	ds_store_b16_d16_hi v66, v6 offset:8896
	ds_store_b16 v71, v7 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v66, v20 offset:24640
	ds_store_b16 v67, v21 offset:24576
	ds_store_b16_d16_hi v67, v21 offset:24640
	ds_store_b16 v68, v22 offset:24576
	ds_store_b16_d16_hi v68, v22 offset:24640
	ds_store_b16 v69, v23 offset:24576
	ds_store_b16_d16_hi v69, v23 offset:24640
	ds_store_b16 v70, v24 offset:24576
	ds_store_b16_d16_hi v70, v24 offset:24640
	ds_store_b16 v66, v25 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v71, v7 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v66, v25 offset:25280
	ds_store_b16 v71, v26 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v72, v8 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v26 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v72, v8 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v72, v27 offset:24576
	ds_store_b16_d16_hi v72, v27 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v42, v33, 6, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v48, 6, v17
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v2, 32, v0
	v_and_or_b32 v46, 0x1800, v18, v19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v43, 16, v42
	v_xor_b32_e32 v44, 32, v42
	v_xor_b32_e32 v45, 48, v42
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr46
.LBB0_3:                                ; %Flow88
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v2, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s36, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v46, 0x1800, v18, v19
	v_lshl_or_b32 v42, v33, 6, v19
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v48, s31, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x210, v2, v1
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_xor_b32_e32 v43, 16, v42
	v_xor_b32_e32 v44, 32, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v46
	v_xor_b32_e32 v45, 48, v42
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v20, 0
	v_or_b32_e32 v49, v1, v14
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v6, s9
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v51, 32, v49
	v_xor_b32_e32 v52, 48, v49
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_add_i32 s35, s35, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s34, 0, 0x8400
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	s_mov_b32 s8, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s35, s6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v65, s8, v49
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v53, s6, v11
	v_or_b32_e32 v54, s6, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v55, s6, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s31
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v66, s8, v50
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v53
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s7, s14
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v56, s6, v10
	v_add_nc_u32_e32 v57, s6, v48
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s6, s6, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v53, 0x80000000, v55, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v54
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v54, s6, v10
	v_add_nc_u32_e32 v55, s6, v48
	s_mov_b32 s6, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, s7, v50
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v129, v53, s[16:19], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v53, 0x80000000, v57 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[69:72], v56, s[20:23], 0 offen
	buffer_load_b128 v[73:76], v53, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v54, s[20:23], 0 offen
	buffer_load_b128 v[81:84], v55, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v53, s6, v42
	v_add_nc_u32_e32 v54, s6, v43
	v_add_nc_u32_e32 v55, s6, v44
	v_add_nc_u32_e32 v56, s6, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s7, v49
	v_add_nc_u32_e32 v59, s7, v51
	v_add_nc_u32_e32 v60, s7, v52
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v67, s8, v51
	v_add_nc_u32_e32 v68, s8, v52
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[85:88], v53
	ds_load_b128 v[89:92], v54
	ds_load_b128 v[93:96], v55
	ds_load_b128 v[97:100], v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[61:64], v57
	ds_load_b128 v[101:104], v58
	ds_load_b128 v[105:108], v59
	ds_load_b128 v[109:112], v60
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[113:116], v65
	ds_load_b128 v[117:120], v66
	ds_load_b128 v[121:124], v67
	ds_load_b128 v[125:128], v68
	s_mov_b32 s1, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s37, 1
	s_mov_b32 s4, s33
	s_cmp_lt_i32 s3, 2
	s_mov_b32 s0, s34
	s_cselect_b32 s37, s3, 0
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s3, s37, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s37, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s3, s3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s7, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v130, s3, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[85:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v131, s33, v16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s34, s3, 0x8000
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[113:116], v[85:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[101:104], v[89:92], v[53:60] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v132, s33, v36
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s3, s33, 0x4000
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[117:120], v[89:92], v[61:68] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[105:108], v[93:96], v[53:60] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v133, s33, v37
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[121:124], v[93:96], v[61:68] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v134, s33, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[109:112], v[97:100], v[53:60] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v135, s33, v39
	v_add_nc_u32_e32 v136, s33, v40
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[125:128], v[97:100], v[61:68] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v137, s33, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v26, v54 :: v_dual_add_f32 v31, v31, v55
	v_add_f32_e32 v32, v32, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v22, v58 :: v_dual_add_f32 v21, v21, v57
	v_dual_add_f32 v30, v30, v60 :: v_dual_add_f32 v29, v29, v59
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v18, v18, v62 :: v_dual_add_f32 v17, v17, v61
	v_dual_add_f32 v28, v28, v64 :: v_dual_add_f32 v27, v27, v63
	v_dual_add_f32 v20, v20, v66 :: v_dual_add_f32 v19, v19, v65
	v_dual_add_f32 v24, v24, v68 :: v_dual_add_f32 v23, v23, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v53
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v130, v129 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v54, v73, v69, 0x5010400
	v_perm_b32 v55, v73, v69, 0x7030602
	v_perm_b32 v56, v74, v70, 0x5010400
	v_perm_b32 v57, v74, v70, 0x7030602
	v_perm_b32 v58, v75, v71, 0x5010400
	v_perm_b32 v59, v75, v71, 0x7030602
	v_perm_b32 v60, v76, v72, 0x5010400
	v_perm_b32 v61, v76, v72, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v62, v81, v77, 0x5010400
	v_perm_b32 v63, v81, v77, 0x7030602
	v_perm_b32 v64, v82, v78, 0x5010400
	v_perm_b32 v65, v82, v78, 0x7030602
	v_perm_b32 v66, v83, v79, 0x5010400
	v_perm_b32 v67, v83, v79, 0x7030602
	v_perm_b32 v68, v84, v80, 0x5010400
	v_perm_b32 v69, v84, v80, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v70, 8, v54
	v_lshrrev_b32_e32 v71, 24, v54
	v_lshrrev_b32_e32 v72, 8, v55
	v_lshrrev_b32_e32 v73, 24, v55
	v_lshrrev_b32_e32 v74, 8, v56
	v_and_b16 v53.l, 0xff, v54.l
	v_and_b16 v54.l, 0xff, v55.l
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v75, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v76, 8, v57
	v_lshrrev_b32_e32 v77, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v78, 8, v58
	v_lshrrev_b32_e32 v79, 24, v58
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v80, 8, v59
	v_lshrrev_b32_e32 v81, 24, v59
	v_and_b16 v59.l, 0xff, v60.l
	v_lshrrev_b32_e32 v82, 8, v60
	v_lshrrev_b32_e32 v83, 24, v60
	v_and_b16 v60.l, 0xff, v61.l
	v_lshrrev_b32_e32 v84, 8, v61
	v_lshrrev_b32_e32 v85, 24, v61
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v61.l, 0xff, v62.l
	v_lshrrev_b32_e32 v86, 8, v62
	v_lshrrev_b32_e32 v87, 24, v62
	v_and_b16 v62.l, 0xff, v63.l
	v_lshrrev_b32_e32 v88, 8, v63
	v_lshrrev_b32_e32 v89, 24, v63
	v_and_b16 v63.l, 0xff, v64.l
	v_lshrrev_b32_e32 v90, 8, v64
	v_lshrrev_b32_e32 v91, 24, v64
	v_and_b16 v64.l, 0xff, v65.l
	v_lshrrev_b32_e32 v92, 8, v65
	v_lshrrev_b32_e32 v93, 24, v65
	v_and_b16 v65.l, 0xff, v66.l
	v_lshrrev_b32_e32 v94, 8, v66
	v_lshrrev_b32_e32 v95, 24, v66
	v_and_b16 v66.l, 0xff, v67.l
	v_lshrrev_b32_e32 v96, 8, v67
	v_lshrrev_b32_e32 v97, 24, v67
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v98, 8, v68
	v_lshrrev_b32_e32 v99, 24, v68
	v_and_b16 v68.l, 0xff, v69.l
	v_lshrrev_b32_e32 v100, 8, v69
	v_lshrrev_b32_e32 v101, 24, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v69.l, 8, v70.l
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_and_b16 v58.h, 0xff, v59.h
	v_and_b16 v59.h, 0xff, v60.h
	v_and_b16 v60.h, 0xff, v61.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v61.h, 0xff, v62.h
	v_and_b16 v62.h, 0xff, v63.h
	v_and_b16 v63.h, 0xff, v64.h
	v_and_b16 v64.h, 0xff, v65.h
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	v_and_b16 v68.h, 0xff, v69.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v69.h, 8, v71.l
	v_lshlrev_b16 v70.l, 8, v72.l
	v_lshlrev_b16 v70.h, 8, v73.l
	v_lshlrev_b16 v71.l, 8, v74.l
	v_lshlrev_b16 v71.h, 8, v75.l
	v_lshlrev_b16 v72.l, 8, v76.l
	v_lshlrev_b16 v72.h, 8, v77.l
	v_lshlrev_b16 v73.l, 8, v78.l
	v_lshlrev_b16 v73.h, 8, v79.l
	v_lshlrev_b16 v74.l, 8, v80.l
	v_lshlrev_b16 v74.h, 8, v81.l
	v_lshlrev_b16 v75.l, 8, v82.l
	v_lshlrev_b16 v75.h, 8, v83.l
	v_lshlrev_b16 v76.l, 8, v84.l
	v_lshlrev_b16 v76.h, 8, v85.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v77.l, 8, v86.l
	v_lshlrev_b16 v77.h, 8, v87.l
	v_lshlrev_b16 v78.l, 8, v88.l
	v_lshlrev_b16 v78.h, 8, v89.l
	v_lshlrev_b16 v79.l, 8, v90.l
	v_lshlrev_b16 v79.h, 8, v91.l
	v_lshlrev_b16 v80.l, 8, v92.l
	v_lshlrev_b16 v80.h, 8, v93.l
	v_lshlrev_b16 v81.l, 8, v94.l
	v_lshlrev_b16 v81.h, 8, v95.l
	v_lshlrev_b16 v82.l, 8, v96.l
	v_lshlrev_b16 v82.h, 8, v97.l
	v_lshlrev_b16 v83.l, 8, v98.l
	v_lshlrev_b16 v83.h, 8, v99.l
	v_lshlrev_b16 v84.l, 8, v100.l
	v_lshlrev_b16 v84.h, 8, v101.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v53.l, v53.l, v69.l
	v_or_b16 v53.h, v53.h, v69.h
	v_or_b16 v54.l, v54.l, v70.l
	v_or_b16 v54.h, v54.h, v70.h
	v_or_b16 v55.l, v55.l, v71.l
	v_or_b16 v55.h, v55.h, v71.h
	v_or_b16 v56.l, v56.l, v72.l
	v_or_b16 v56.h, v56.h, v72.h
	v_or_b16 v57.l, v57.l, v73.l
	v_or_b16 v57.h, v57.h, v73.h
	v_or_b16 v58.l, v58.l, v74.l
	v_or_b16 v58.h, v58.h, v74.h
	v_or_b16 v59.l, v59.l, v75.l
	v_or_b16 v59.h, v59.h, v75.h
	v_or_b16 v60.l, v60.l, v76.l
	v_or_b16 v60.h, v60.h, v76.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v61.l, v61.l, v77.l
	v_or_b16 v61.h, v61.h, v77.h
	v_or_b16 v62.l, v62.l, v78.l
	v_or_b16 v62.h, v62.h, v78.h
	v_or_b16 v63.l, v63.l, v79.l
	v_or_b16 v63.h, v63.h, v79.h
	v_or_b16 v64.l, v64.l, v80.l
	v_or_b16 v64.h, v64.h, v80.h
	v_or_b16 v65.l, v65.l, v81.l
	v_or_b16 v65.h, v65.h, v81.h
	v_or_b16 v66.l, v66.l, v82.l
	v_or_b16 v66.h, v66.h, v82.h
	v_or_b16 v67.l, v67.l, v83.l
	v_or_b16 v67.h, v67.h, v83.h
	v_or_b16 v68.l, v68.l, v84.l
	v_or_b16 v68.h, v68.h, v84.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v131, v53
	ds_store_b16_d16_hi v131, v53 offset:64
	ds_store_b16 v132, v54
	ds_store_b16_d16_hi v132, v54 offset:64
	ds_store_b16 v133, v55
	ds_store_b16_d16_hi v133, v55 offset:64
	ds_store_b16 v134, v56
	ds_store_b16_d16_hi v134, v56 offset:64
	ds_store_b16 v135, v57
	ds_store_b16_d16_hi v135, v57 offset:64
	ds_store_b16 v131, v58 offset:640
	ds_store_b16_d16_hi v131, v58 offset:704
	ds_store_b16 v136, v59
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v131, v61 offset:16384
	ds_store_b16_d16_hi v131, v61 offset:16448
	ds_store_b16 v132, v62 offset:16384
	ds_store_b16_d16_hi v132, v62 offset:16448
	ds_store_b16 v133, v63 offset:16384
	ds_store_b16_d16_hi v133, v63 offset:16448
	ds_store_b16 v134, v64 offset:16384
	ds_store_b16_d16_hi v134, v64 offset:16448
	ds_store_b16 v135, v65 offset:16384
	ds_store_b16_d16_hi v135, v65 offset:16448
	ds_store_b16 v131, v66 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v136, v59 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v131, v66 offset:17088
	ds_store_b16 v136, v67 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v137, v60
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v136, v67 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v137, v60 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v137, v68 offset:16384
	ds_store_b16_d16_hi v137, v68 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v48, v14 :: v_dual_mov_b32 v1, v13
	v_mov_b32_e32 v2, v47
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v17, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s34, 0, 0x8400
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v18, v17
	s_add_i32 s3, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v21, v17
	v_dual_mov_b32 v28, v18 :: v_dual_mov_b32 v27, v17
	v_dual_mov_b32 v32, v18 :: v_dual_mov_b32 v31, v17
	v_dual_mov_b32 v24, v18 :: v_dual_mov_b32 v23, v17
	v_dual_mov_b32 v30, v18 :: v_dual_mov_b32 v29, v17
.LBB0_8:                                ; %Flow89
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s0, v42
	v_add_nc_u32_e32 v9, s0, v44
	v_add_nc_u32_e32 v4, s0, v43
	v_add_nc_u32_e32 v37, s0, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[5:8], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v39, 0, 1, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_and_b32_e32 v36, 0xf0, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v38, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[9:12], v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v37
	v_xor_b32_e32 v37, v38, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v38, v37, v48
	v_xor_b32_e32 v39, 16, v38
	v_xor_b32_e32 v37, 32, v38
	v_xor_b32_e32 v40, 48, v38
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v41, s6, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v47, s6, v39
	v_add_nc_u32_e32 v48, s6, v37
	ds_load_b128 v[54:57], v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v50, v46 :: v_dual_add_nc_u32 v41, s6, v40
	v_mov_b32_e32 v49, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[58:61], v47
	ds_load_b128 v[62:65], v41
	ds_load_b128 v[66:69], v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v48, v46
	v_mov_b32_e32 v51, v46
	v_mov_b32_e32 v52, v46
	v_mov_b32_e32 v53, v46
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[13:16], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[58:61], v[5:8], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[66:69], v[9:12], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[62:65], v[1:4], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v48 :: v_dual_add_f32 v31, v31, v41
	v_dual_add_f32 v22, v22, v50 :: v_dual_add_f32 v21, v21, v49
	v_dual_add_f32 v30, v30, v52 :: v_dual_add_f32 v29, v29, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v26, v26, v47 :: v_dual_add_f32 v25, v25, v46
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v41, s1, v38
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v47, s1, v39
	v_add_nc_u32_e32 v48, s1, v37
	ds_load_b128 v[54:57], v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v50, v46 :: v_dual_add_nc_u32 v41, s1, v40
	v_mov_b32_e32 v49, v46
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[58:61], v47
	ds_load_b128 v[62:65], v41
	ds_load_b128 v[66:69], v48
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v48, v46
	v_mov_b32_e32 v51, v46
	v_mov_b32_e32 v52, v46
	v_mov_b32_e32 v53, v46
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[13:16], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[58:61], v[5:8], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[66:69], v[9:12], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[62:65], v[1:4], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v48
	v_cvt_f32_i32_e32 v2, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v50
	v_cvt_f32_i32_e32 v4, v51
	v_cvt_f32_i32_e32 v5, v52
	v_cvt_f32_i32_e32 v6, v53
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v28, v28, v2 :: v_dual_add_f32 v27, v27, v1
	v_dual_add_f32 v20, v20, v4 :: v_dual_add_f32 v19, v19, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v18, v18, v8
	v_dual_add_f32 v24, v24, v6 :: v_dual_add_f32 v23, v23, v5
	v_add_f32_e32 v17, v17, v7
.LBB0_12:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v1, s34, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v42, 0, 1, s2
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, s34, v43
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s34, v44
	v_mov_b32_e32 v44, 0
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v4, s34, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v42
	v_mov_b32_e32 v42, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[1:4], v4
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v45, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v42, s33, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v46, s33, v39
	v_add_nc_u32_e32 v47, s33, v40
	v_add_nc_u32_e32 v48, s33, v37
	ds_load_b128 v[42:45], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v50, v49
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v53, v49
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v46
	ds_load_b128 v[61:64], v47
	ds_load_b128 v[65:68], v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v56, v49
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[42:45], v[13:16], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[9:12], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[5:8], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[1:4], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v43, v51
	v_cvt_f32_i32_e32 v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v53
	v_cvt_f32_i32_e32 v44, v54
	v_cvt_f32_i32_e32 v45, v55
	v_cvt_f32_i32_e32 v48, v56
	v_cvt_f32_i32_e32 v47, v49
	v_cvt_f32_i32_e32 v49, v50
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_mov_b32_e32 v56, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v39, s3, v39
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v38, s3, v38
	v_add_nc_u32_e32 v41, s3, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v55, v52 :: v_dual_add_nc_u32 v50, s3, v37
	v_mov_b32_e32 v53, v52
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[60:63], v38
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v54, v52
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[37:40], v39
	ds_load_b128 v[64:67], v41
	ds_load_b128 v[68:71], v50
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v56, v52
	v_mov_b32_e32 v57, v52
	v_mov_b32_e32 v58, v52
	v_mov_b32_e32 v59, v52
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[60:63], v[13:16], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[37:40], v[9:12], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[5:8], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[64:67], v[1:4], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v52
	v_cvt_f32_i32_e32 v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
	v_cvt_f32_i32_e32 v56, v59
.LBB0_16:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v38, v26, v49 :: v_dual_and_b32 v1, 0x70, v35
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s14, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v2, v34, 1, v1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v1, s28, v33
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_mov_b32 s8, s24
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v41, v17, v41
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v11, s14, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v9, 1, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v3, 14, v2
	v_or_b32_e32 v4, 12, v2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v12, s14, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v21, v42 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v5, 10, v2
	v_or_b32_e32 v6, 8, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v32, v46 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v10, 6, v2
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_clause 0x2
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v34, v2, s[8:11], 0 offen
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v2, s0, v8, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v13, s14, v7
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v7, s0, v7, 1
	v_add_lshl_u32 v8, s0, v10, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v14, s14, v10
	v_or_b32_e32 v15, s14, v6
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v16, s14, v5
	v_or_b32_e32 v33, s14, v4
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v10, s0, v3, 1
	s_clause 0x6
	buffer_load_u16 v35, v2, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s14, v3
	.loc	1 435 14 is_stmt 0              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v14
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v31, v43 :: v_dual_lshlrev_b32 v13, 1, v13
	v_dual_add_f32 v45, v29, v45 :: v_dual_lshlrev_b32 v14, 1, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v46, v18, v50 :: v_dual_lshlrev_b32 v15, 1, v16
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v22, v44
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v16, v2, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	v_lshlrev_b32_e32 v2, 1, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v30, v48
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x3
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v33, v3, s[8:11], 0 offen
	buffer_load_u16 v37, v2, s[8:11], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v48, v27, v52 :: v_dual_add_f32 v49, v20, v53
	v_dual_add_f32 v50, v19, v51 :: v_dual_add_f32 v51, v24, v56
	v_add_f32_e32 v52, v23, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v54, 0x7632
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v25, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v47, v28, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v41, s2
	v_cndmask_b32_e64 v18, v18, v46, s2
	v_cndmask_b32_e64 v20, v20, v49, s2
	v_cndmask_b32_e64 v25, v25, v36, s2
	v_cndmask_b32_e64 v28, v28, v47, s2
	v_cndmask_b32_e64 v24, v24, v51, s2
	v_cndmask_b32_e64 v27, v27, v48, s2
	v_cndmask_b32_e64 v22, v22, v43, s2
	v_cndmask_b32_e64 v19, v19, v50, s2
	v_cndmask_b32_e64 v23, v23, v52, s2
	v_cndmask_b32_e64 v26, v26, v38, s2
	v_cndmask_b32_e64 v31, v31, v40, s2
	v_cndmask_b32_e64 v21, v21, v42, s2
	v_cndmask_b32_e64 v32, v32, v39, s2
	v_cndmask_b32_e64 v29, v29, v45, s2
	v_cndmask_b32_e64 v30, v30, v44, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, 0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v36.h, v3.h
	v_mov_b16_e32 v38.h, v3.h
	v_mov_b16_e32 v40.h, v3.h
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v11, v9, v11 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v34, v9, v34
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v11, v25, v11 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v17, v17, v34 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v8, v9, v8 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v35, v9, v35 :: v_dual_lshlrev_b32 v6, 16, v6
	v_mul_f32_e32 v4, v9, v4
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v5, v9, v5 :: v_dual_lshlrev_b32 v10, 16, v10
	v_dual_mul_f32 v6, v9, v6 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v12, v9, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v25, 0xbfb8aa3b, v17 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v10, v9, v10 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v18, v18, v35 :: v_dual_lshlrev_b32 v33, 16, v33
	v_dual_mul_f32 v8, v28, v8 :: v_dual_mul_f32 v7, v9, v7
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v13, v9, v13 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v37
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v16, v9, v16 :: v_dual_mul_f32 v5, v20, v5
	v_dual_mul_f32 v15, v9, v15 :: v_dual_mul_f32 v10, v24, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v8
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v7, v27, v7 :: v_dual_mul_f32 v14, v9, v14
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v13, v31, v13
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v6, v19, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v19, v9, v34 :: v_dual_mul_f32 v4, v23, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v15, v22, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v9, v9, v33 :: v_dual_mul_f32 v12, v26, v12
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v14, v21, v14 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v17
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_dual_mul_f32 v22, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v19, v29, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v21
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v8
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v16, v32, v16 :: v_dual_mul_f32 v9, v30, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s3
	v_mul_f32_e32 v26, 0xbfb8aa3b, v4
	v_exp_f32_e32 v25, v25
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cndmask_b32_e64 v22, 0, 0x42800000, s2
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	v_dual_mul_f32 v24, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v25, v25, v30
	v_ldexp_f32 v23, v23, v28
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v24
	v_ldexp_f32 v21, v21, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v25, v25, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_exp_f32_e32 v20, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v22, v22, v32
	v_cndmask_b32_e64 v27, 0, 0x42800000, s4
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v10
	v_exp_f32_e32 v24, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v33, v49, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v20, v29
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v26, v26, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v41, null, v22, v22, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v51, v41
	v_div_scale_f32 v29, vcc_lo, v17, v23, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v27, v27, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v23, v23, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, null, v20, v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v61, -v41, v51, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v27, 1.0, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v61, v51
	v_div_scale_f32 v47, null, v26, v26, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v35, null, v24, v24, v7
	v_fma_f32 v55, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v57, v47
	v_div_scale_f32 v43, null, v21, v21, v6
	v_rcp_f32_e32 v50, v35
	v_div_scale_f32 v32, s0, v18, v20, v18
	v_div_scale_f32 v45, null, v27, v27, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v52, v43
	v_div_scale_f32 v34, s1, v8, v25, v8
	v_fma_f32 v64, -v47, v57, 1.0
	v_fmac_f32_e32 v30, v55, v30
	v_fma_f32 v55, -v31, v48, 1.0
	v_rcp_f32_e32 v56, v45
	v_div_scale_f32 v58, s6, v4, v26, v4
	v_fmac_f32_e32 v57, v64, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v65, v29, v30 :: v_dual_fmac_f32 v48, v55, v48
	v_fma_f32 v60, -v35, v50, 1.0
	v_div_scale_f32 v37, s2, v7, v24, v7
	v_fma_f32 v55, -v28, v65, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v32, v48
	v_fma_f32 v62, -v43, v52, 1.0
	v_mul_f32_e32 v66, v58, v57
	v_div_scale_f32 v42, s3, v5, v22, v5
	v_fmac_f32_e32 v65, v55, v30
	v_fma_f32 v55, -v31, v59, v32
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v44, s4, v6, v21, v6
	v_fma_f32 v63, -v45, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v60, v34, v49 :: v_dual_fmac_f32 v59, v55, v48
	v_dual_fmac_f32 v52, v62, v52 :: v_dual_mul_f32 v61, v37, v50
	v_mul_f32_e32 v62, v42, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v67, -v33, v60, v34
	v_fma_f32 v28, -v28, v65, v29
	v_fma_f32 v29, -v31, v59, v32
	v_fma_f32 v68, -v35, v61, v37
	v_fmac_f32_e32 v56, v63, v56
	v_mul_f32_e32 v63, v44, v52
	v_fma_f32 v69, -v41, v62, v42
	v_div_fmas_f32 v28, v28, v30, v65
	v_fmac_f32_e32 v61, v68, v50
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v43, v63, v44
	v_fmac_f32_e32 v60, v67, v49
	v_fmac_f32_e32 v62, v69, v51
	v_fma_f32 v31, -v35, v61, v37
	v_div_fixup_f32 v17, v28, v23, v17
	v_fmac_f32_e32 v63, v70, v52
	v_fma_f32 v30, -v33, v60, v34
	v_div_fmas_f32 v23, v29, v48, v59
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s5, v10, v27, v10
	v_fma_f32 v32, -v41, v62, v42
	v_div_fmas_f32 v28, v30, v49, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v33, -v43, v63, v44
	v_div_fmas_f32 v29, v31, v50, v61
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v64, v46, v56 :: v_dual_mul_f32 v11, v11, v17
	v_div_fmas_f32 v17, v32, v51, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v23, v20, v18
	v_div_fmas_f32 v20, v33, v52, v63
	v_fma_f32 v71, -v45, v64, v46
	v_fma_f32 v72, -v47, v66, v58
	v_div_fixup_f32 v7, v29, v24, v7
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v11.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v20, v21, v6
	v_fmac_f32_e32 v64, v71, v56
	v_fmac_f32_e32 v66, v72, v57
	v_div_fixup_f32 v5, v17, v22, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v7, v13, v7 :: v_dual_mul_f32 v6, v14, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v45, v64, v46
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v28, v25, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e32 v39.l, v6.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v12, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v47, v66, v58
	v_div_fmas_f32 v18, v34, v56, v64
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v15, v5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v15, 1, v39
	v_mov_b16_e32 v36.l, v12.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v10, v18, v27, v10
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v16, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v35, v57, v66
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v36
	v_cmp_o_f32_e64 s0, v11, v11
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v11, v11, v13, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v16, v26, v4
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v10
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v8.h
	v_add3_u32 v12, v12, v14, 0x7fff
	v_mov_b16_e32 v38.l, v7.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v19, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_cmp_o_f32_e64 s3, v5, v5
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e32 v3.l, v5.h
	v_and_b32_e32 v13, 1, v38
	v_mov_b16_e32 v40.l, v4.h
	v_cmp_o_f32_e64 s1, v8, v8
	v_cmp_o_f32_e64 s2, v7, v7
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e32 v3.l, v9.h
	v_and_b32_e32 v12, 1, v40
	v_add3_u32 v0, v7, v13, 0x7fff
	v_cndmask_b32_e32 v7, 0x1054, v53, vcc_lo
	v_add3_u32 v5, v5, v14, 0x7fff
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v6, v6
	v_add3_u32 v6, v6, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v4, v12, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	v_add3_u32 v3, v9, v3, 0x7fff
	v_lshl_or_b32 v7, v7, 8, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s3
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v4, v1, s15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v1, v11, v5, vcc_lo
	v_add3_u32 v8, v8, v10, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v54, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s0
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	v_lshl_or_b32 v9, v10, 8, v10
	v_cndmask_b32_e32 v6, v5, v11, vcc_lo
	v_and_b32_e32 v3, 0x540054, v7
	s_mov_b32 s15, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 0x760076, v9
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v9, s14, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s14, s10
	v_lshl_or_b32 v5, v7, 4, v7
	v_cndmask_b32_e32 v7, v8, v0, vcc_lo
	v_cndmask_b32_e32 v8, v0, v8, vcc_lo
	v_lshl_or_b32 v3, v3, 4, v3
	v_add_lshl_u32 v4, v9, v4, 1
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v7, v7, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 0x5040504, v3
	v_perm_b32 v0, v1, v6, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v1, v1, v6, v5
	v_perm_b32 v2, v7, v8, v3
	v_perm_b32 v3, v7, v8, v5
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 138
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10364
; TotalNumSgprs: 40
; NumVgprs: 138
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     138
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
