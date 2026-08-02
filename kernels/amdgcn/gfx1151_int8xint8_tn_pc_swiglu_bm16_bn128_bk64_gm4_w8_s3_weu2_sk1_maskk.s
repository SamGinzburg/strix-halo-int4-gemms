	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v27, 2, v0
	v_and_b32_e32 v32, 8, v0
	v_and_b32_e32 v33, 32, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v30, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v28, 62, v27
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v20, 12, v30
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v64, 0, v30
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s23
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
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
	s_lshl_b32 s37, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s37, v28
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s33, s15, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s33, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s30, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s33, s37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v21, s37, v27
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s6, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v29, v1, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v2, s28, s4, v29
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s14, s37
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s33, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v4, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v34, 6, v1
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v3, s[24:27], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s15, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s15, 7, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s33, v3
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v24, s15, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v16, 0x80000000, v12, vcc_lo
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v21
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v3, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s14, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v31, s33, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s37, s37, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v25, v3, v20, s29
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v20, s37, v28
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s4, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s33, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v26, 0x80000000, v20, s3
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v26, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v24, s3
	v_cndmask_b32_e64 v24, 0x80000000, v31, s3
	s_clause 0x1
	buffer_load_b128 v[46:49], v2, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v24, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v2, 0x80000000, v3 :: v_dual_and_b32 v3, 6, v0
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s3, s14, 6
	v_or_b32_e32 v31, 0x3f0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v63, v2, s[20:23], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x420, v2
	v_xor_b32_e32 v24, v2, v28
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v35, v3, 10, v24
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v24, s37, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v36, 0x90, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v24
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v24, s4, s3, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v37, 0x120, v35
	v_add_nc_u32_e32 v65, 0, v35
	v_xor_b32_e32 v38, 0x1b0, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v3, 3, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v39, 0x210, v35
	v_add_nc_u32_e32 v66, 0, v36
	v_xor_b32_e32 v40, 0x330, v35
	v_add_nc_u32_e32 v67, 0, v37
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v72, v24, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v41, 0x3a0, v35
	v_add_nc_u32_e32 v68, 0, v38
	v_add_nc_u32_e32 v69, 0, v39
	v_add_nc_u32_e32 v70, 0, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, 0, v41
	s_waitcnt vmcnt(8)
	v_perm_b32 v24, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v26, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v54, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v55, v11, v7, 0x5010400
	v_perm_b32 v56, v11, v7, 0x7030602
	v_and_b16 v4.l, 0xff, v24.l
	v_lshrrev_b32_e32 v57, 8, v24
	v_lshrrev_b32_e32 v58, 24, v24
	v_and_b16 v4.h, 0xff, v24.h
	v_and_b16 v5.l, 0xff, v8.l
	v_lshrrev_b32_e32 v24, 8, v8
	v_lshrrev_b32_e32 v59, 24, v8
	v_and_b16 v5.h, 0xff, v8.h
	v_and_b16 v6.l, 0xff, v26.l
	v_lshrrev_b32_e32 v60, 8, v26
	v_lshrrev_b32_e32 v61, 24, v26
	v_and_b16 v6.h, 0xff, v26.h
	v_and_b16 v7.l, 0xff, v9.l
	v_lshrrev_b32_e32 v26, 8, v9
	v_lshrrev_b32_e32 v62, 24, v9
	v_and_b16 v7.h, 0xff, v9.h
	v_and_b16 v8.l, 0xff, v54.l
	v_lshrrev_b32_e32 v73, 8, v54
	v_lshrrev_b32_e32 v74, 24, v54
	v_and_b16 v8.h, 0xff, v54.h
	v_and_b16 v9.l, 0xff, v10.l
	v_lshrrev_b32_e32 v54, 8, v10
	v_lshrrev_b32_e32 v75, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v55.l
	v_lshrrev_b32_e32 v76, 8, v55
	v_lshrrev_b32_e32 v77, 24, v55
	v_and_b16 v10.h, 0xff, v55.h
	v_and_b16 v11.l, 0xff, v56.l
	v_lshrrev_b32_e32 v55, 8, v56
	v_lshrrev_b32_e32 v78, 24, v56
	v_and_b16 v11.h, 0xff, v56.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v56, v16, v12, 0x5010400
	v_perm_b32 v79, v16, v12, 0x7030602
	v_perm_b32 v80, v17, v13, 0x5010400
	v_perm_b32 v81, v17, v13, 0x7030602
	v_perm_b32 v82, v18, v14, 0x5010400
	v_perm_b32 v83, v18, v14, 0x7030602
	v_perm_b32 v84, v19, v15, 0x5010400
	v_perm_b32 v85, v19, v15, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v12.l, 8, v57.l
	v_lshlrev_b16 v12.h, 8, v58.l
	v_lshlrev_b16 v13.l, 8, v24.l
	v_lshlrev_b16 v13.h, 8, v59.l
	v_lshlrev_b16 v14.l, 8, v60.l
	v_lshlrev_b16 v14.h, 8, v61.l
	v_lshlrev_b16 v15.l, 8, v26.l
	v_lshlrev_b16 v15.h, 8, v62.l
	v_lshlrev_b16 v16.l, 8, v73.l
	v_lshlrev_b16 v16.h, 8, v74.l
	v_lshlrev_b16 v17.l, 8, v54.l
	v_lshlrev_b16 v17.h, 8, v75.l
	v_lshlrev_b16 v18.l, 8, v76.l
	v_lshlrev_b16 v18.h, 8, v77.l
	v_lshlrev_b16 v19.l, 8, v55.l
	v_lshlrev_b16 v19.h, 8, v78.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v24.l, 0xff, v56.l
	v_lshrrev_b32_e32 v60, 8, v56
	v_lshrrev_b32_e32 v61, 24, v56
	v_and_b16 v24.h, 0xff, v56.h
	v_and_b16 v26.l, 0xff, v79.l
	v_lshrrev_b32_e32 v62, 8, v79
	v_lshrrev_b32_e32 v73, 24, v79
	v_and_b16 v26.h, 0xff, v79.h
	v_and_b16 v54.l, 0xff, v80.l
	v_lshrrev_b32_e32 v74, 8, v80
	v_lshrrev_b32_e32 v75, 24, v80
	v_and_b16 v54.h, 0xff, v80.h
	v_and_b16 v55.l, 0xff, v81.l
	v_lshrrev_b32_e32 v76, 8, v81
	v_lshrrev_b32_e32 v77, 24, v81
	v_and_b16 v55.h, 0xff, v81.h
	v_and_b16 v56.l, 0xff, v82.l
	v_lshrrev_b32_e32 v78, 8, v82
	v_lshrrev_b32_e32 v79, 24, v82
	v_and_b16 v56.h, 0xff, v82.h
	v_and_b16 v57.l, 0xff, v83.l
	v_lshrrev_b32_e32 v80, 8, v83
	v_lshrrev_b32_e32 v81, 24, v83
	v_and_b16 v57.h, 0xff, v83.h
	v_and_b16 v58.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v58.h, 0xff, v84.h
	v_and_b16 v59.l, 0xff, v85.l
	v_lshrrev_b32_e32 v84, 8, v85
	v_lshrrev_b32_e32 v86, 24, v85
	v_and_b16 v59.h, 0xff, v85.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v85, v42, v20, 0x5010400
	v_perm_b32 v42, v42, v20, 0x7030602
	v_perm_b32 v87, v43, v21, 0x5010400
	v_perm_b32 v43, v43, v21, 0x7030602
	v_perm_b32 v88, v44, v22, 0x5010400
	v_perm_b32 v44, v44, v22, 0x7030602
	v_perm_b32 v89, v45, v23, 0x5010400
	v_perm_b32 v90, v45, v23, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v91, v50, v46, 0x5010400
	v_perm_b32 v50, v50, v46, 0x7030602
	v_perm_b32 v92, v51, v47, 0x5010400
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v93, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v94, v53, v49, 0x5010400
	v_perm_b32 v95, v53, v49, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v4.l, v12.l
	v_or_b16 v7.l, v7.l, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v60.l
	v_lshlrev_b16 v15.l, 8, v76.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v60, 8, v85
	v_or_b16 v4.h, v4.h, v12.h
	v_or_b16 v7.h, v7.h, v15.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.h, 8, v61.l
	v_lshlrev_b16 v15.h, 8, v77.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v61, 24, v85
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v8.l, v8.l, v16.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.l, 8, v62.l
	v_lshlrev_b16 v16.l, 8, v78.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v62, 8, v42
	v_or_b16 v5.h, v5.h, v13.h
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.h, 8, v73.l
	v_lshlrev_b16 v16.h, 8, v79.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v73, 24, v42
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v9.l, v9.l, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.l, 8, v74.l
	v_lshlrev_b16 v17.l, 8, v80.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v74, 8, v87
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.h, 8, v75.l
	v_lshlrev_b16 v17.h, 8, v81.l
	v_lshlrev_b16 v18.l, 8, v82.l
	v_lshlrev_b16 v18.h, 8, v83.l
	v_lshlrev_b16 v19.l, 8, v84.l
	v_lshlrev_b16 v19.h, 8, v86.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v20.l, 0xff, v85.l
	v_and_b16 v20.h, 0xff, v85.h
	v_and_b16 v21.l, 0xff, v42.l
	v_and_b16 v21.h, 0xff, v42.h
	v_and_b16 v22.l, 0xff, v87.l
	v_lshrrev_b32_e32 v75, 24, v87
	v_and_b16 v22.h, 0xff, v87.h
	v_and_b16 v23.l, 0xff, v43.l
	v_lshrrev_b32_e32 v76, 8, v43
	v_lshrrev_b32_e32 v77, 24, v43
	v_and_b16 v23.h, 0xff, v43.h
	v_and_b16 v42.l, 0xff, v88.l
	v_lshrrev_b32_e32 v78, 8, v88
	v_lshrrev_b32_e32 v79, 24, v88
	v_and_b16 v42.h, 0xff, v88.h
	v_and_b16 v43.l, 0xff, v44.l
	v_lshrrev_b32_e32 v80, 8, v44
	v_lshrrev_b32_e32 v81, 24, v44
	v_and_b16 v43.h, 0xff, v44.h
	v_and_b16 v44.l, 0xff, v89.l
	v_lshrrev_b32_e32 v82, 8, v89
	v_lshrrev_b32_e32 v83, 24, v89
	v_and_b16 v44.h, 0xff, v89.h
	v_and_b16 v45.l, 0xff, v90.l
	v_lshrrev_b32_e32 v84, 8, v90
	v_lshrrev_b32_e32 v85, 24, v90
	v_and_b16 v45.h, 0xff, v90.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v46.l, 0xff, v91.l
	v_lshrrev_b32_e32 v86, 8, v91
	v_lshrrev_b32_e32 v87, 24, v91
	v_and_b16 v46.h, 0xff, v91.h
	v_and_b16 v47.l, 0xff, v50.l
	v_lshrrev_b32_e32 v88, 8, v50
	v_lshrrev_b32_e32 v89, 24, v50
	v_and_b16 v47.h, 0xff, v50.h
	v_and_b16 v48.l, 0xff, v92.l
	v_lshrrev_b32_e32 v90, 8, v92
	v_lshrrev_b32_e32 v91, 24, v92
	v_and_b16 v48.h, 0xff, v92.h
	v_and_b16 v49.l, 0xff, v51.l
	v_lshrrev_b32_e32 v92, 8, v51
	v_lshrrev_b32_e32 v96, 24, v51
	v_and_b16 v49.h, 0xff, v51.h
	v_and_b16 v50.l, 0xff, v93.l
	v_lshrrev_b32_e32 v97, 8, v93
	v_lshrrev_b32_e32 v98, 24, v93
	v_and_b16 v50.h, 0xff, v93.h
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v93, 8, v52
	v_lshrrev_b32_e32 v99, 24, v52
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.l, 0xff, v94.l
	v_lshrrev_b32_e32 v100, 8, v94
	v_lshrrev_b32_e32 v101, 24, v94
	v_and_b16 v52.h, 0xff, v94.h
	v_lshrrev_b32_e32 v94, 8, v95
	v_lshrrev_b32_e32 v102, 24, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v4
	ds_store_b16_d16_hi v65, v4 offset:64
	ds_store_b16 v66, v5
	ds_store_b16_d16_hi v66, v5 offset:64
	ds_store_b16 v67, v6
	ds_store_b16_d16_hi v67, v6 offset:64
	ds_store_b16 v68, v7
	ds_store_b16_d16_hi v68, v7 offset:64
	ds_store_b16 v69, v8
	ds_store_b16_d16_hi v69, v8 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v6.h, v55.l, v15.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.l, 8, v60.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v24.l, v12.l
	v_or_b16 v7.l, v55.h, v15.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.h, 8, v61.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v7.h, v56.l, v16.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.l, 8, v62.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v8.l, v56.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.h, 8, v73.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.l, v24.h, v12.h
	v_or_b16 v8.h, v57.l, v17.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.l, 8, v74.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v53.l, 0xff, v95.l
	v_and_b16 v53.h, 0xff, v95.h
	v_or_b16 v4.h, v26.l, v13.l
	v_or_b16 v5.l, v26.h, v13.h
	v_or_b16 v5.h, v54.l, v14.l
	v_or_b16 v6.l, v54.h, v14.h
	v_or_b16 v12.h, v57.h, v17.h
	v_or_b16 v13.l, v58.l, v18.l
	v_or_b16 v13.h, v58.h, v18.h
	v_or_b16 v14.l, v59.l, v19.l
	v_or_b16 v14.h, v59.h, v19.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.h, 8, v75.l
	v_lshlrev_b16 v18.l, 8, v76.l
	v_lshlrev_b16 v18.h, 8, v77.l
	v_lshlrev_b16 v19.l, 8, v78.l
	v_lshlrev_b16 v19.h, 8, v79.l
	v_lshlrev_b16 v24.l, 8, v80.l
	v_lshlrev_b16 v24.h, 8, v81.l
	v_lshlrev_b16 v26.l, 8, v82.l
	v_lshlrev_b16 v26.h, 8, v83.l
	v_lshlrev_b16 v54.l, 8, v84.l
	v_lshlrev_b16 v54.h, 8, v85.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v55.l, 8, v86.l
	v_lshlrev_b16 v55.h, 8, v87.l
	v_lshlrev_b16 v56.l, 8, v88.l
	v_lshlrev_b16 v56.h, 8, v89.l
	v_lshlrev_b16 v57.l, 8, v90.l
	v_lshlrev_b16 v57.h, 8, v91.l
	v_lshlrev_b16 v58.l, 8, v92.l
	v_lshlrev_b16 v58.h, 8, v96.l
	v_lshlrev_b16 v59.l, 8, v97.l
	v_lshlrev_b16 v59.h, 8, v98.l
	v_lshlrev_b16 v60.l, 8, v93.l
	v_lshlrev_b16 v60.h, 8, v99.l
	v_lshlrev_b16 v61.l, 8, v100.l
	v_lshlrev_b16 v61.h, 8, v101.l
	v_lshlrev_b16 v62.l, 8, v94.l
	v_lshlrev_b16 v62.h, 8, v102.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v64, v63 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v65, v12 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v9 offset:640
	ds_store_b16_d16_hi v65, v9 offset:704
	ds_store_b16 v70, v10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v65, v4 offset:16448
	ds_store_b16_d16_hi v66, v4 offset:16384
	ds_store_b16 v66, v5 offset:16448
	ds_store_b16_d16_hi v67, v5 offset:16384
	ds_store_b16 v67, v6 offset:16448
	ds_store_b16_d16_hi v68, v6 offset:16384
	ds_store_b16 v68, v7 offset:16448
	ds_store_b16_d16_hi v69, v7 offset:16384
	ds_store_b16 v69, v8 offset:16448
	ds_store_b16_d16_hi v65, v8 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v70, v10 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v65, v12 offset:17088
	ds_store_b16 v70, v13 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v70, v13 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v71, v11 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v14 offset:16384
	ds_store_b16_d16_hi v71, v14 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v20.l, v15.l
	v_or_b16 v4.h, v20.h, v15.h
	v_or_b16 v5.l, v21.l, v16.l
	v_or_b16 v5.h, v21.h, v16.h
	v_or_b16 v6.l, v22.l, v17.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.h, v22.h, v17.h
	v_or_b16 v7.l, v23.l, v18.l
	v_or_b16 v7.h, v23.h, v18.h
	v_or_b16 v8.l, v42.l, v19.l
	v_or_b16 v8.h, v42.h, v19.h
	v_or_b16 v9.l, v43.l, v24.l
	v_or_b16 v9.h, v43.h, v24.h
	v_or_b16 v10.l, v44.l, v26.l
	v_or_b16 v10.h, v44.h, v26.h
	v_or_b16 v11.l, v45.l, v54.l
	v_or_b16 v11.h, v45.h, v54.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v46.l, v55.l
	v_or_b16 v12.h, v46.h, v55.h
	v_or_b16 v13.l, v47.l, v56.l
	v_or_b16 v13.h, v47.h, v56.h
	v_or_b16 v14.l, v48.l, v57.l
	v_or_b16 v14.h, v48.h, v57.h
	v_or_b16 v15.l, v49.l, v58.l
	v_or_b16 v15.h, v49.h, v58.h
	v_or_b16 v16.l, v50.l, v59.l
	v_or_b16 v16.h, v50.h, v59.h
	v_or_b16 v17.l, v51.l, v60.l
	v_or_b16 v17.h, v51.h, v60.h
	v_or_b16 v18.l, v52.l, v61.l
	v_or_b16 v18.h, v52.h, v61.h
	v_or_b16 v19.l, v53.l, v62.l
	v_or_b16 v19.h, v53.h, v62.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v4 offset:8192
	ds_store_b16_d16_hi v65, v4 offset:8256
	ds_store_b16 v66, v5 offset:8192
	ds_store_b16_d16_hi v66, v5 offset:8256
	ds_store_b16 v67, v6 offset:8192
	ds_store_b16_d16_hi v67, v6 offset:8256
	ds_store_b16 v68, v7 offset:8192
	ds_store_b16_d16_hi v68, v7 offset:8256
	ds_store_b16 v69, v8 offset:8192
	ds_store_b16_d16_hi v69, v8 offset:8256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v64, v72 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v65, v12 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v65, v9 offset:8832
	ds_store_b16_d16_hi v65, v9 offset:8896
	ds_store_b16 v70, v10 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v65, v12 offset:24640
	ds_store_b16 v66, v13 offset:24576
	ds_store_b16_d16_hi v66, v13 offset:24640
	ds_store_b16 v67, v14 offset:24576
	ds_store_b16_d16_hi v67, v14 offset:24640
	ds_store_b16 v68, v15 offset:24576
	ds_store_b16_d16_hi v68, v15 offset:24640
	ds_store_b16 v69, v16 offset:24576
	ds_store_b16_d16_hi v69, v16 offset:24640
	ds_store_b16 v65, v17 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v70, v10 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v65, v17 offset:25280
	ds_store_b16 v70, v18 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v11 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v70, v18 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v71, v11 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v19 offset:24576
	ds_store_b16_d16_hi v71, v19 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v5, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v4, 8, v0
	v_and_b32_e32 v6, 32, v0
	v_and_or_b32 v42, 0x1800, v2, v3
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr42
.LBB0_3:                                ; %Flow73
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_b32_e32 v26, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s38, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v42, 0x1800, v2, v3
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v43, s33, v29
	v_mov_b32_e32 v9, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_and_or_b32 v1, 0x210, v4, v1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v1, v1, v42
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v16, 0
	v_or_b32_e32 v44, v1, v34
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v46, 32, v44
	v_xor_b32_e32 v47, 48, v44
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v21, 0
	s_add_i32 s37, s37, 64
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s34, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_mov_b32 s0, s1
	s_mov_b32 s1, s3
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s3, s5, 6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v60, s0, v44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s3, s37, s3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v61, s0, v45
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v56, s3, v27
	v_or_b32_e32 v57, s3, v28
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v62, s0, v46
	v_add_nc_u32_e32 v63, s0, v47
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s0, s3, s33
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[48:49], null, s3, s14, v[25:26]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s0, s0, s28
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v56
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v49, s0, v29
	v_add_nc_u32_e32 v58, s0, v43
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s3, s0, s15
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v57
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v56, s3, v29
	v_add_nc_u32_e32 v57, s3, v43
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_mov_b32 s6, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	v_cndmask_b32_e64 v80, 0x80000000, v58, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v84, 0x80000000, v56, s0
	v_cndmask_b32_e64 v88, 0x80000000, v57, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v124, v48, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[76:79], v49, s[24:27], 0 offen
	buffer_load_b128 v[80:83], v80, s[24:27], 0 offen
	buffer_load_b128 v[84:87], v84, s[24:27], 0 offen
	buffer_load_b128 v[88:91], v88, s[24:27], 0 offen
	v_add_nc_u32_e32 v52, s6, v44
	v_add_nc_u32_e32 v53, s6, v45
	s_mov_b32 s7, s36
	v_add_nc_u32_e32 v54, s6, v46
	v_add_nc_u32_e32 v55, s6, v47
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v50, s7, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[56:59], v52
	ds_load_b128 v[64:67], v53
	ds_load_b128 v[68:71], v54
	ds_load_b128 v[72:75], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v48, v50 offset:208
	ds_load_u8 v52, v50 offset:240
	ds_load_u8 v53, v50 offset:224
	ds_load_u8 v54, v50 offset:192
	ds_load_u8 v55, v50 offset:144
	ds_load_u8 v108, v50 offset:176
	ds_load_u8 v109, v50 offset:160
	ds_load_u8 v110, v50 offset:128
	ds_load_u8 v111, v50 offset:80
	ds_load_u8 v112, v50 offset:112
	ds_load_u8 v113, v50 offset:96
	ds_load_u8 v114, v50 offset:64
	ds_load_u8 v115, v50
	ds_load_u8 v116, v50 offset:16
	ds_load_u8 v117, v50 offset:32
	ds_load_u8 v118, v50 offset:48
	ds_load_u8 v119, v50 offset:464
	ds_load_u8 v120, v50 offset:496
	ds_load_u8 v121, v50 offset:480
	ds_load_u8 v122, v50 offset:448
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v51, s7, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v49, v50 offset:400
	ds_load_u8 v123, v50 offset:432
	ds_load_u8 v125, v50 offset:416
	ds_load_u8 v126, v50 offset:384
	ds_load_u8 v127, v50 offset:336
	ds_load_u8 v128, v50 offset:368
	ds_load_u8 v129, v50 offset:352
	ds_load_u8 v130, v50 offset:320
	ds_load_u8 v131, v50 offset:272
	ds_load_u8 v132, v50 offset:304
	ds_load_u8 v133, v50 offset:288
	ds_load_u8 v134, v50 offset:256
	ds_load_u8 v135, v50 offset:720
	ds_load_u8 v136, v50 offset:752
	ds_load_u8 v137, v50 offset:736
	ds_load_u8 v138, v50 offset:704
	ds_load_u8 v139, v50 offset:656
	ds_load_u8 v140, v50 offset:688
	ds_load_u8 v141, v50 offset:672
	ds_load_u8 v142, v50 offset:640
	ds_load_u8 v143, v50 offset:592
	ds_load_u8 v144, v50 offset:624
	ds_load_u8 v145, v50 offset:608
	ds_load_u8 v146, v50 offset:576
	ds_load_u8 v147, v50 offset:528
	ds_load_u8 v148, v50 offset:560
	ds_load_u8 v149, v50 offset:544
	ds_load_u8 v150, v50 offset:512
	ds_load_u8 v151, v50 offset:976
	ds_load_u8 v51, v51
	ds_load_u8 v152, v50 offset:992
	ds_load_u8 v153, v50 offset:960
	ds_load_u8 v154, v50 offset:912
	ds_load_u8 v155, v50 offset:944
	ds_load_u8 v156, v50 offset:928
	ds_load_u8 v157, v50 offset:896
	ds_load_u8 v158, v50 offset:848
	ds_load_u8 v159, v50 offset:880
	ds_load_u8 v160, v50 offset:864
	ds_load_u8 v161, v50 offset:832
	ds_load_u8 v162, v50 offset:784
	ds_load_u8 v163, v50 offset:816
	ds_load_u8 v164, v50 offset:800
	ds_load_u8 v50, v50 offset:768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[92:95], v60
	ds_load_b128 v[96:99], v61
	ds_load_b128 v[100:103], v62
	ds_load_b128 v[104:107], v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v48, v54, v48, 0xc0c0004
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v54, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v53, v110, v55, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v49, v126, v49, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v51, v152, v51, 0xc0c0004
	v_perm_b32 v60, v113, v112, 0xc0c0004
	v_perm_b32 v55, v114, v111, 0xc0c0004
	v_perm_b32 v113, v125, v123, 0xc0c0004
	v_perm_b32 v61, v115, v116, 0xc0c0004
	v_perm_b32 v116, v130, v127, 0xc0c0004
	v_perm_b32 v62, v117, v118, 0xc0c0004
	v_perm_b32 v117, v129, v128, 0xc0c0004
	v_perm_b32 v118, v134, v131, 0xc0c0004
	v_perm_b32 v112, v121, v120, 0xc0c0004
	v_perm_b32 v63, v122, v119, 0xc0c0004
	v_perm_b32 v119, v133, v132, 0xc0c0004
	v_perm_b32 v120, v138, v135, 0xc0c0004
	v_perm_b32 v121, v137, v136, 0xc0c0004
	v_perm_b32 v122, v142, v139, 0xc0c0004
	v_perm_b32 v123, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v129, v153, v151, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v50, v162, 0xc0c0004
	v_perm_b32 v134, v164, v163, 0xc0c0004
	v_lshl_or_b32 v111, v52, 16, v48
	v_lshl_or_b32 v110, v54, 16, v53
	v_lshl_or_b32 v109, v60, 16, v55
	v_lshl_or_b32 v108, v62, 16, v61
	v_perm_b32 v125, v146, v143, 0xc0c0004
	v_perm_b32 v126, v145, v144, 0xc0c0004
	v_perm_b32 v127, v150, v147, 0xc0c0004
	v_perm_b32 v128, v149, v148, 0xc0c0004
	v_lshl_or_b32 v115, v112, 16, v63
	v_lshl_or_b32 v114, v113, 16, v49
	v_lshl_or_b32 v113, v117, 16, v116
	v_lshl_or_b32 v112, v119, 16, v118
	v_lshl_or_b32 v119, v121, 16, v120
	v_lshl_or_b32 v118, v123, 16, v122
	v_lshl_or_b32 v123, v51, 16, v129
	v_lshl_or_b32 v120, v134, 16, v50
	v_wmma_i32_16x16x16_iu8 v[48:55], v[56:59], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v130, v157, v154, 0xc0c0004
	v_perm_b32 v131, v156, v155, 0xc0c0004
	v_perm_b32 v132, v161, v158, 0xc0c0004
	v_perm_b32 v133, v160, v159, 0xc0c0004
	v_lshl_or_b32 v117, v126, 16, v125
	v_lshl_or_b32 v116, v128, 16, v127
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[92:95], v[108:111], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[48:55], v[64:67], v[112:115], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v131, 16, v130
	v_lshl_or_b32 v121, v133, 16, v132
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[96:99], v[112:115], v[56:63] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s8, s39, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[116:119], v[48:55] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s8, 2
	s_mov_b32 s4, s34
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[100:103], v[116:119], v[56:63] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s39, s8, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[48:55], v[72:75], v[120:123], v[48:55] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s3, s39, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s39, 13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[104:107], v[120:123], v[56:63] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s0, s3, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v49 :: v_dual_add_f32 v23, v23, v50
	v_dual_add_f32 v24, v24, v51 :: v_dual_add_nc_u32 v165, s0, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v16, v16, v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v14, v53 :: v_dual_add_f32 v13, v13, v52
	v_dual_add_f32 v22, v22, v55 :: v_dual_add_f32 v21, v21, v54
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v10, v10, v57 :: v_dual_add_f32 v9, v9, v56
	v_dual_add_f32 v20, v20, v59 :: v_dual_add_f32 v19, v19, v58
	v_dual_add_f32 v12, v12, v61 :: v_dual_add_f32 v11, v11, v60
	v_add_f32_e32 v15, v15, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v17, v17, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s34, s7, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v166, s34, v35
	s_mov_b32 s36, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s35, s0, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v167, s34, v36
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s3, s34, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v168, s34, v37
	v_add_nc_u32_e32 v169, s34, v38
	v_add_nc_u32_e32 v170, s34, v39
	v_add_nc_u32_e32 v171, s34, v40
	v_add_nc_u32_e32 v172, s34, v41
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v165, v124 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v49, v80, v76, 0x5010400
	v_perm_b32 v50, v80, v76, 0x7030602
	v_perm_b32 v51, v81, v77, 0x5010400
	v_perm_b32 v52, v81, v77, 0x7030602
	v_perm_b32 v53, v82, v78, 0x5010400
	v_perm_b32 v54, v82, v78, 0x7030602
	v_perm_b32 v55, v83, v79, 0x5010400
	v_perm_b32 v56, v83, v79, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v57, v88, v84, 0x5010400
	v_perm_b32 v58, v88, v84, 0x7030602
	v_perm_b32 v59, v89, v85, 0x5010400
	v_perm_b32 v60, v89, v85, 0x7030602
	v_perm_b32 v61, v90, v86, 0x5010400
	v_perm_b32 v62, v90, v86, 0x7030602
	v_perm_b32 v63, v91, v87, 0x5010400
	v_perm_b32 v64, v91, v87, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v65, 8, v49
	v_lshrrev_b32_e32 v66, 24, v49
	v_lshrrev_b32_e32 v67, 8, v50
	v_lshrrev_b32_e32 v68, 24, v50
	v_lshrrev_b32_e32 v69, 8, v51
	v_and_b16 v48.l, 0xff, v49.l
	v_and_b16 v49.l, 0xff, v50.l
	v_and_b16 v50.l, 0xff, v51.l
	v_lshrrev_b32_e32 v70, 24, v51
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v71, 8, v52
	v_lshrrev_b32_e32 v72, 24, v52
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v73, 8, v53
	v_lshrrev_b32_e32 v74, 24, v53
	v_and_b16 v53.l, 0xff, v54.l
	v_lshrrev_b32_e32 v75, 8, v54
	v_lshrrev_b32_e32 v76, 24, v54
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v77, 8, v55
	v_lshrrev_b32_e32 v78, 24, v55
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v79, 8, v56
	v_lshrrev_b32_e32 v80, 24, v56
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v81, 8, v57
	v_lshrrev_b32_e32 v82, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v83, 8, v58
	v_lshrrev_b32_e32 v84, 24, v58
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v85, 8, v59
	v_lshrrev_b32_e32 v86, 24, v59
	v_and_b16 v59.l, 0xff, v60.l
	v_lshrrev_b32_e32 v87, 8, v60
	v_lshrrev_b32_e32 v88, 24, v60
	v_and_b16 v60.l, 0xff, v61.l
	v_lshrrev_b32_e32 v89, 8, v61
	v_lshrrev_b32_e32 v90, 24, v61
	v_and_b16 v61.l, 0xff, v62.l
	v_lshrrev_b32_e32 v91, 8, v62
	v_lshrrev_b32_e32 v92, 24, v62
	v_and_b16 v62.l, 0xff, v63.l
	v_lshrrev_b32_e32 v93, 8, v63
	v_lshrrev_b32_e32 v94, 24, v63
	v_and_b16 v63.l, 0xff, v64.l
	v_lshrrev_b32_e32 v95, 8, v64
	v_lshrrev_b32_e32 v96, 24, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v64.l, 8, v65.l
	v_and_b16 v48.h, 0xff, v49.h
	v_and_b16 v49.h, 0xff, v50.h
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_and_b16 v58.h, 0xff, v59.h
	v_and_b16 v59.h, 0xff, v60.h
	v_and_b16 v60.h, 0xff, v61.h
	v_and_b16 v61.h, 0xff, v62.h
	v_and_b16 v62.h, 0xff, v63.h
	v_and_b16 v63.h, 0xff, v64.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v64.h, 8, v66.l
	v_lshlrev_b16 v65.l, 8, v67.l
	v_lshlrev_b16 v65.h, 8, v68.l
	v_lshlrev_b16 v66.l, 8, v69.l
	v_lshlrev_b16 v66.h, 8, v70.l
	v_lshlrev_b16 v67.l, 8, v71.l
	v_lshlrev_b16 v67.h, 8, v72.l
	v_lshlrev_b16 v68.l, 8, v73.l
	v_lshlrev_b16 v68.h, 8, v74.l
	v_lshlrev_b16 v69.l, 8, v75.l
	v_lshlrev_b16 v69.h, 8, v76.l
	v_lshlrev_b16 v70.l, 8, v77.l
	v_lshlrev_b16 v70.h, 8, v78.l
	v_lshlrev_b16 v71.l, 8, v79.l
	v_lshlrev_b16 v71.h, 8, v80.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v72.l, 8, v81.l
	v_lshlrev_b16 v72.h, 8, v82.l
	v_lshlrev_b16 v73.l, 8, v83.l
	v_lshlrev_b16 v73.h, 8, v84.l
	v_lshlrev_b16 v74.l, 8, v85.l
	v_lshlrev_b16 v74.h, 8, v86.l
	v_lshlrev_b16 v75.l, 8, v87.l
	v_lshlrev_b16 v75.h, 8, v88.l
	v_lshlrev_b16 v76.l, 8, v89.l
	v_lshlrev_b16 v76.h, 8, v90.l
	v_lshlrev_b16 v77.l, 8, v91.l
	v_lshlrev_b16 v77.h, 8, v92.l
	v_lshlrev_b16 v78.l, 8, v93.l
	v_lshlrev_b16 v78.h, 8, v94.l
	v_lshlrev_b16 v79.l, 8, v95.l
	v_lshlrev_b16 v79.h, 8, v96.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v48.l, v48.l, v64.l
	v_or_b16 v48.h, v48.h, v64.h
	v_or_b16 v49.l, v49.l, v65.l
	v_or_b16 v49.h, v49.h, v65.h
	v_or_b16 v50.l, v50.l, v66.l
	v_or_b16 v50.h, v50.h, v66.h
	v_or_b16 v51.l, v51.l, v67.l
	v_or_b16 v51.h, v51.h, v67.h
	v_or_b16 v52.l, v52.l, v68.l
	v_or_b16 v52.h, v52.h, v68.h
	v_or_b16 v53.l, v53.l, v69.l
	v_or_b16 v53.h, v53.h, v69.h
	v_or_b16 v54.l, v54.l, v70.l
	v_or_b16 v54.h, v54.h, v70.h
	v_or_b16 v55.l, v55.l, v71.l
	v_or_b16 v55.h, v55.h, v71.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	v_or_b16 v61.l, v61.l, v77.l
	v_or_b16 v61.h, v61.h, v77.h
	v_or_b16 v62.l, v62.l, v78.l
	v_or_b16 v62.h, v62.h, v78.h
	v_or_b16 v63.l, v63.l, v79.l
	v_or_b16 v63.h, v63.h, v79.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v166, v48
	ds_store_b16_d16_hi v166, v48 offset:64
	ds_store_b16 v167, v49
	ds_store_b16_d16_hi v167, v49 offset:64
	ds_store_b16 v168, v50
	ds_store_b16_d16_hi v168, v50 offset:64
	ds_store_b16 v169, v51
	ds_store_b16_d16_hi v169, v51 offset:64
	ds_store_b16 v170, v52
	ds_store_b16_d16_hi v170, v52 offset:64
	ds_store_b16 v166, v53 offset:640
	ds_store_b16_d16_hi v166, v53 offset:704
	ds_store_b16 v171, v54
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v166, v56 offset:16384
	ds_store_b16_d16_hi v166, v56 offset:16448
	ds_store_b16 v167, v57 offset:16384
	ds_store_b16_d16_hi v167, v57 offset:16448
	ds_store_b16 v168, v58 offset:16384
	ds_store_b16_d16_hi v168, v58 offset:16448
	ds_store_b16 v169, v59 offset:16384
	ds_store_b16_d16_hi v169, v59 offset:16448
	ds_store_b16 v170, v60 offset:16384
	ds_store_b16_d16_hi v170, v60 offset:16448
	ds_store_b16 v166, v61 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v171, v54 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v166, v61 offset:17088
	ds_store_b16 v171, v62 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v172, v55
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v171, v62 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v172, v55 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v172, v63 offset:16384
	ds_store_b16_d16_hi v172, v63 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v31 :: v_dual_mov_b32 v4, v32
	v_dual_mov_b32 v1, v34 :: v_dual_mov_b32 v6, v33
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s34, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v10, v9
	s_add_i32 s3, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v11, v9
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v13, v9
	v_dual_mov_b32 v20, v10 :: v_dual_mov_b32 v19, v9
	v_dual_mov_b32 v24, v10 :: v_dual_mov_b32 v23, v9
	v_dual_mov_b32 v16, v10 :: v_dual_mov_b32 v15, v9
	v_dual_mov_b32 v22, v10 :: v_dual_mov_b32 v21, v9
.LBB0_8:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s36, v26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s36, v5
	ds_load_u8_d16 v69, v2
	ds_load_u8_d16 v71, v2 offset:16
	ds_load_u8_d16 v68, v2 offset:32
	ds_load_u8_d16 v70, v2 offset:48
	ds_load_u8_d16 v77, v2 offset:64
	ds_load_u8_d16 v79, v2 offset:80
	ds_load_u8_d16 v76, v2 offset:96
	ds_load_u8_d16 v78, v2 offset:112
	ds_load_u8_d16 v81, v2 offset:128
	ds_load_u8_d16 v83, v2 offset:144
	ds_load_u8_d16 v80, v2 offset:160
	ds_load_u8_d16 v82, v2 offset:176
	ds_load_u8_d16 v85, v2 offset:192
	ds_load_u8_d16 v87, v2 offset:208
	ds_load_u8_d16 v84, v2 offset:224
	ds_load_u8_d16 v86, v2 offset:240
	ds_load_u8_d16 v41, v2 offset:256
	ds_load_u8_d16 v47, v2 offset:272
	ds_load_u8_d16 v39, v2 offset:288
	ds_load_u8_d16 v43, v2 offset:304
	ds_load_u8_d16 v54, v2 offset:320
	ds_load_u8_d16 v59, v2 offset:336
	ds_load_u8_d16 v52, v2 offset:352
	ds_load_u8_d16 v55, v2 offset:368
	ds_load_u8_d16 v65, v2 offset:384
	ds_load_u8_d16 v67, v2 offset:400
	ds_load_u8_d16 v64, v2 offset:416
	ds_load_u8_d16 v66, v2 offset:432
	ds_load_u8_d16 v73, v2 offset:448
	ds_load_u8_d16 v75, v2 offset:464
	ds_load_u8_d16 v72, v2 offset:480
	ds_load_u8_d16 v74, v2 offset:496
	ds_load_u8_d16 v27, v2 offset:512
	ds_load_u8_d16 v30, v2 offset:528
	ds_load_u8_d16 v7, v2 offset:544
	ds_load_u8_d16 v28, v2 offset:560
	ds_load_u8_d16 v35, v2 offset:576
	ds_load_u8_d16 v38, v2 offset:592
	ds_load_u8_d16 v32, v2 offset:608
	ds_load_u8_d16 v36, v2 offset:624
	ds_load_u8_d16 v44, v2 offset:640
	ds_load_u8_d16 v48, v2 offset:656
	ds_load_u8_d16 v40, v2 offset:672
	ds_load_u8_d16 v45, v2 offset:688
	ds_load_u8_d16 v56, v2 offset:704
	ds_load_u8_d16 v60, v2 offset:720
	ds_load_u8_d16 v53, v2 offset:736
	ds_load_u8_d16 v57, v2 offset:752
	ds_load_u8_d16 v49, v2 offset:896
	ds_load_u8_d16 v51, v2 offset:912
	ds_load_u8_d16 v46, v2 offset:928
	ds_load_u8_d16 v50, v2 offset:944
	ds_load_u8_d16 v61, v2 offset:960
	ds_load_u8_d16 v63, v2 offset:976
	ds_load_u8_d16 v58, v2 offset:992
	ds_load_u8_d16 v62, v62
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v8, v2 offset:768
	ds_load_u8_d16 v29, v2 offset:784
	ds_load_u8_d16 v6, v2 offset:800
	ds_load_u8_d16 v25, v2 offset:816
	ds_load_u8_d16 v33, v2 offset:832
	ds_load_u8_d16 v37, v2 offset:848
	ds_load_u8_d16 v31, v2 offset:864
	ds_load_u8_d16 v34, v2 offset:880
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v3, v4
	v_xor_b32_e32 v2, v3, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v3, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v2, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v42, s6, v4
	v_add_nc_u32_e32 v88, s6, v3
	v_add_nc_u32_e32 v89, s6, v2
	v_add_nc_u32_e32 v90, s6, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v91, v80, v82, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[96:99], v42
	ds_load_b128 v[100:103], v88
	ds_load_b128 v[104:107], v89
	ds_load_b128 v[108:111], v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v42, v85, v87, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v89, v84, v86, 0xc0c0004
	v_perm_b32 v90, v81, v83, 0xc0c0004
	v_perm_b32 v92, v77, v79, 0xc0c0004
	v_perm_b32 v93, v76, v78, 0xc0c0004
	v_perm_b32 v94, v69, v71, 0xc0c0004
	v_perm_b32 v95, v68, v70, 0xc0c0004
	v_mov_b32_e32 v88, 0
	v_lshl_or_b32 v115, v89, 16, v42
	v_lshl_or_b32 v114, v91, 16, v90
	v_lshl_or_b32 v113, v93, 16, v92
	v_lshl_or_b32 v112, v95, 16, v94
	v_mov_b32_e32 v89, v88
	v_mov_b32_e32 v90, v88
	v_mov_b32_e32 v91, v88
	v_mov_b32_e32 v92, v88
	v_mov_b32_e32 v93, v88
	v_mov_b32_e32 v94, v88
	v_mov_b32_e32 v95, v88
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v42, v73, v75, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v116, v72, v74, 0xc0c0004
	v_perm_b32 v117, v65, v67, 0xc0c0004
	v_perm_b32 v118, v64, v66, 0xc0c0004
	v_perm_b32 v119, v54, v59, 0xc0c0004
	v_perm_b32 v120, v52, v55, 0xc0c0004
	v_perm_b32 v121, v41, v47, 0xc0c0004
	v_perm_b32 v122, v39, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[108:111], v[112:115], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v116, 16, v42
	v_lshl_or_b32 v110, v118, 16, v117
	v_lshl_or_b32 v109, v120, 16, v119
	v_lshl_or_b32 v108, v122, 16, v121
	v_perm_b32 v42, v56, v60, 0xc0c0004
	v_perm_b32 v112, v53, v57, 0xc0c0004
	v_perm_b32 v113, v44, v48, 0xc0c0004
	v_perm_b32 v114, v40, v45, 0xc0c0004
	v_perm_b32 v115, v35, v38, 0xc0c0004
	v_perm_b32 v116, v32, v36, 0xc0c0004
	v_perm_b32 v117, v27, v30, 0xc0c0004
	v_perm_b32 v118, v7, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[88:95], v[104:107], v[108:111], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v112, 16, v42
	v_lshl_or_b32 v106, v114, 16, v113
	v_lshl_or_b32 v105, v116, 16, v115
	v_lshl_or_b32 v104, v118, 16, v117
	v_perm_b32 v42, v61, v63, 0xc0c0004
	v_perm_b32 v108, v58, v62, 0xc0c0004
	v_perm_b32 v109, v49, v51, 0xc0c0004
	v_perm_b32 v110, v46, v50, 0xc0c0004
	v_perm_b32 v111, v33, v37, 0xc0c0004
	v_perm_b32 v112, v31, v34, 0xc0c0004
	v_perm_b32 v113, v8, v29, 0xc0c0004
	v_perm_b32 v114, v6, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[88:95], v[100:103], v[104:107], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v108, 16, v42
	v_lshl_or_b32 v102, v110, 16, v109
	v_lshl_or_b32 v101, v112, 16, v111
	v_lshl_or_b32 v100, v114, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[96:99], v[100:103], v[88:95] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v42, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v42
	v_add_f32_e32 v23, v23, v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v42, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v14, v14, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v90, v95
	v_cvt_f32_i32_e32 v91, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v89 :: v_dual_add_f32 v13, v13, v42
	v_dual_add_f32 v17, v17, v88 :: v_dual_add_f32 v22, v22, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v21, v21, v91
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v81, v81, v83, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v80, v80, v82, 0xc0c0004
	v_perm_b32 v77, v77, v79, 0xc0c0004
	v_perm_b32 v78, v76, v78, 0xc0c0004
	v_perm_b32 v79, v69, v71, 0xc0c0004
	v_perm_b32 v68, v68, v70, 0xc0c0004
	v_mov_b32_e32 v76, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v42, s1, v4
	v_add_nc_u32_e32 v92, s1, v3
	v_add_nc_u32_e32 v96, s1, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v83, v76 :: v_dual_add_nc_u32 v100, s1, v1
	v_lshl_or_b32 v70, v80, 16, v81
	v_lshl_or_b32 v69, v78, 16, v77
	v_lshl_or_b32 v68, v68, 16, v79
	v_mov_b32_e32 v77, v76
	v_mov_b32_e32 v79, v76
	v_mov_b32_e32 v81, v76
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[88:91], v42
	ds_load_b128 v[92:95], v92
	ds_load_b128 v[96:99], v96
	ds_load_b128 v[100:103], v100
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v42, v85, v87, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v84, v84, v86, 0xc0c0004
	v_mov_b32_e32 v78, v76
	v_mov_b32_e32 v80, v76
	v_mov_b32_e32 v82, v76
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v72, v72, v74, 0xc0c0004
	v_lshl_or_b32 v71, v84, 16, v42
	v_perm_b32 v42, v73, v75, 0xc0c0004
	v_perm_b32 v65, v65, v67, 0xc0c0004
	v_perm_b32 v64, v64, v66, 0xc0c0004
	v_perm_b32 v54, v54, v59, 0xc0c0004
	v_perm_b32 v52, v52, v55, 0xc0c0004
	v_perm_b32 v41, v41, v47, 0xc0c0004
	v_perm_b32 v39, v39, v43, 0xc0c0004
	v_lshl_or_b32 v67, v72, 16, v42
	v_lshl_or_b32 v66, v64, 16, v65
	v_lshl_or_b32 v65, v52, 16, v54
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v42, v44, v48, 0xc0c0004
	v_lshl_or_b32 v64, v39, 16, v41
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[68:71], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v39, v56, v60, 0xc0c0004
	v_perm_b32 v41, v53, v57, 0xc0c0004
	v_perm_b32 v40, v40, v45, 0xc0c0004
	v_perm_b32 v35, v35, v38, 0xc0c0004
	v_perm_b32 v32, v32, v36, 0xc0c0004
	v_perm_b32 v27, v27, v30, 0xc0c0004
	v_perm_b32 v7, v7, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[96:99], v[64:67], v[76:83] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v41, 16, v39
	v_lshl_or_b32 v40, v40, 16, v42
	v_lshl_or_b32 v39, v32, 16, v35
	v_lshl_or_b32 v38, v7, 16, v27
	v_perm_b32 v7, v61, v63, 0xc0c0004
	v_perm_b32 v27, v58, v62, 0xc0c0004
	v_perm_b32 v28, v49, v51, 0xc0c0004
	v_perm_b32 v32, v46, v50, 0xc0c0004
	v_perm_b32 v33, v33, v37, 0xc0c0004
	v_perm_b32 v31, v31, v34, 0xc0c0004
	v_perm_b32 v8, v8, v29, 0xc0c0004
	v_perm_b32 v6, v6, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[38:41], v[76:83] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v27, 16, v7
	v_lshl_or_b32 v29, v32, 16, v28
	v_lshl_or_b32 v28, v31, 16, v33
	v_lshl_or_b32 v27, v6, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[88:91], v[27:30], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v78
	v_cvt_f32_i32_e32 v8, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v77
	v_cvt_f32_i32_e32 v27, v76
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v20, v20, v6 :: v_dual_add_f32 v19, v19, v7
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v6, v80
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v12, v12, v8
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v7, v83
	v_cvt_f32_i32_e32 v8, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v10, v10, v25 :: v_dual_add_f32 v11, v11, v6
	v_add_f32_e32 v9, v9, v27
	v_dual_add_f32 v16, v16, v7 :: v_dual_add_f32 v15, v15, v8
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(18)
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v39, s35, v26
	s_waitcnt lgkmcnt(8)
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v45, s35, v5
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v47, 0, 1, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v76, v39
	ds_load_u8_d16 v78, v39 offset:16
	ds_load_u8_d16 v75, v39 offset:32
	ds_load_u8_d16 v77, v39 offset:48
	ds_load_u8_d16 v84, v39 offset:64
	ds_load_u8_d16 v86, v39 offset:80
	ds_load_u8_d16 v83, v39 offset:96
	ds_load_u8_d16 v85, v39 offset:112
	ds_load_u8_d16 v88, v39 offset:128
	ds_load_u8_d16 v90, v39 offset:144
	ds_load_u8_d16 v87, v39 offset:160
	ds_load_u8_d16 v89, v39 offset:176
	ds_load_u8_d16 v92, v39 offset:192
	ds_load_u8_d16 v94, v39 offset:208
	ds_load_u8_d16 v91, v39 offset:224
	ds_load_u8_d16 v93, v39 offset:240
	ds_load_u8_d16 v50, v39 offset:256
	ds_load_u8_d16 v55, v39 offset:272
	ds_load_u8_d16 v48, v39 offset:288
	ds_load_u8_d16 v51, v39 offset:304
	ds_load_u8_d16 v65, v39 offset:320
	ds_load_u8_d16 v69, v39 offset:336
	ds_load_u8_d16 v63, v39 offset:352
	ds_load_u8_d16 v66, v39 offset:368
	ds_load_u8_d16 v72, v39 offset:384
	ds_load_u8_d16 v74, v39 offset:400
	ds_load_u8_d16 v71, v39 offset:416
	ds_load_u8_d16 v73, v39 offset:432
	ds_load_u8_d16 v80, v39 offset:448
	ds_load_u8_d16 v82, v39 offset:464
	ds_load_u8_d16 v79, v39 offset:480
	ds_load_u8_d16 v81, v39 offset:496
	ds_load_u8_d16 v32, v39 offset:512
	s_waitcnt lgkmcnt(33)
	ds_load_u8_d16 v34, v39 offset:528
	ds_load_u8_d16 v31, v39 offset:544
	ds_load_u8_d16 v33, v39 offset:560
	ds_load_u8_d16 v40, v39 offset:576
	ds_load_u8_d16 v42, v39 offset:592
	ds_load_u8_d16 v38, v39 offset:608
	ds_load_u8_d16 v41, v39 offset:624
	ds_load_u8_d16 v52, v39 offset:640
	ds_load_u8_d16 v56, v39 offset:656
	ds_load_u8_d16 v49, v39 offset:672
	ds_load_u8_d16 v53, v39 offset:688
	ds_load_u8_d16 v67, v39 offset:704
	ds_load_u8_d16 v70, v39 offset:720
	ds_load_u8_d16 v64, v39 offset:736
	ds_load_u8_d16 v68, v39 offset:752
	ds_load_u8_d16 v7, v39 offset:768
	ds_load_u8_d16 v25, v39 offset:784
	ds_load_u8_d16 v6, v39 offset:800
	ds_load_u8_d16 v8, v39 offset:816
	ds_load_u8_d16 v28, v39 offset:832
	ds_load_u8_d16 v30, v39 offset:848
	ds_load_u8_d16 v27, v39 offset:864
	ds_load_u8_d16 v29, v39 offset:880
	ds_load_u8_d16 v35, v39 offset:896
	ds_load_u8_d16 v37, v39 offset:912
	ds_load_u8_d16 v5, v39 offset:928
	ds_load_u8_d16 v36, v39 offset:944
	ds_load_u8_d16 v44, v39 offset:960
	ds_load_u8_d16 v46, v39 offset:976
	ds_load_u8_d16 v43, v39 offset:992
	ds_load_u8_d16 v45, v45
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v54, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v47
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v61, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v54, s34, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v47, s34, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v96, v84, v86, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v97, v83, v85, 0xc0c0004
	v_perm_b32 v98, v76, v78, 0xc0c0004
	v_perm_b32 v99, v75, v77, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v61, s34, v2
	v_add_nc_u32_e32 v62, s34, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v116, v97, 16, v96
	v_mov_b32_e32 v96, v95
	v_lshl_or_b32 v115, v99, 16, v98
	v_mov_b32_e32 v97, v95
	v_mov_b32_e32 v98, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v47
	ds_load_b128 v[103:106], v54
	ds_load_b128 v[107:110], v61
	ds_load_b128 v[111:114], v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v47, v92, v94, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v54, v91, v93, 0xc0c0004
	v_perm_b32 v61, v88, v90, 0xc0c0004
	v_perm_b32 v62, v87, v89, 0xc0c0004
	v_mov_b32_e32 v99, v95
	v_mov_b32_e32 v100, v95
	v_lshl_or_b32 v118, v54, 16, v47
	v_mov_b32_e32 v101, v95
	v_lshl_or_b32 v117, v62, 16, v61
	v_mov_b32_e32 v102, v95
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v47, v80, v82, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v54, v79, v81, 0xc0c0004
	v_perm_b32 v61, v72, v74, 0xc0c0004
	v_perm_b32 v62, v71, v73, 0xc0c0004
	v_perm_b32 v119, v65, v69, 0xc0c0004
	v_perm_b32 v120, v63, v66, 0xc0c0004
	v_perm_b32 v121, v50, v55, 0xc0c0004
	v_perm_b32 v122, v48, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[115:118], v[95:102] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v54, 16, v47
	v_lshl_or_b32 v113, v62, 16, v61
	v_lshl_or_b32 v112, v120, 16, v119
	v_lshl_or_b32 v111, v122, 16, v121
	v_perm_b32 v47, v67, v70, 0xc0c0004
	v_perm_b32 v54, v64, v68, 0xc0c0004
	v_perm_b32 v61, v52, v56, 0xc0c0004
	v_perm_b32 v62, v49, v53, 0xc0c0004
	v_perm_b32 v115, v40, v42, 0xc0c0004
	v_perm_b32 v116, v38, v41, 0xc0c0004
	v_perm_b32 v117, v32, v34, 0xc0c0004
	v_perm_b32 v118, v31, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[107:110], v[111:114], v[95:102] neg_lo:[1,1,0]
	v_lshl_or_b32 v110, v54, 16, v47
	v_lshl_or_b32 v109, v62, 16, v61
	v_lshl_or_b32 v108, v116, 16, v115
	v_lshl_or_b32 v107, v118, 16, v117
	v_perm_b32 v47, v44, v46, 0xc0c0004
	v_perm_b32 v54, v43, v45, 0xc0c0004
	v_perm_b32 v61, v35, v37, 0xc0c0004
	v_perm_b32 v62, v5, v36, 0xc0c0004
	v_perm_b32 v111, v28, v30, 0xc0c0004
	v_perm_b32 v112, v27, v29, 0xc0c0004
	v_perm_b32 v113, v7, v25, 0xc0c0004
	v_perm_b32 v114, v6, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[103:106], v[107:110], v[95:102] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v54, 16, v47
	v_lshl_or_b32 v105, v62, 16, v61
	v_lshl_or_b32 v104, v112, 16, v111
	v_lshl_or_b32 v103, v114, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[57:60], v[103:106], v[95:102] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v54, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v59, v98
	v_cvt_f32_i32_e32 v47, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v100
	v_cvt_f32_i32_e32 v58, v101
	v_cvt_f32_i32_e32 v61, v102
	v_cvt_f32_i32_e32 v60, v95
	v_cvt_f32_i32_e32 v62, v96
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v101, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v4, s3, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v88, v88, v90, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v87, v87, v89, 0xc0c0004
	v_perm_b32 v84, v84, v86, 0xc0c0004
	v_perm_b32 v85, v83, v85, 0xc0c0004
	v_perm_b32 v86, v76, v78, 0xc0c0004
	v_perm_b32 v75, v75, v77, 0xc0c0004
	v_mov_b32_e32 v83, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v39, s3, v3
	v_add_nc_u32_e32 v99, s3, v2
	v_add_nc_u32_e32 v103, s3, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v77, v87, 16, v88
	v_lshl_or_b32 v76, v85, 16, v84
	v_lshl_or_b32 v75, v75, 16, v86
	v_mov_b32_e32 v84, v83
	v_mov_b32_e32 v86, v83
	v_mov_b32_e32 v88, v83
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[1:4], v4
	ds_load_b128 v[95:98], v39
	ds_load_b128 v[99:102], v99
	ds_load_b128 v[103:106], v103
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v39, v92, v94, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v91, v91, v93, 0xc0c0004
	v_mov_b32_e32 v85, v83
	v_mov_b32_e32 v87, v83
	v_mov_b32_e32 v89, v83
	v_mov_b32_e32 v90, v83
	v_lshl_or_b32 v78, v91, 16, v39
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v39, v80, v82, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v79, v79, v81, 0xc0c0004
	v_perm_b32 v72, v72, v74, 0xc0c0004
	v_perm_b32 v71, v71, v73, 0xc0c0004
	v_perm_b32 v65, v65, v69, 0xc0c0004
	v_perm_b32 v63, v63, v66, 0xc0c0004
	v_perm_b32 v50, v50, v55, 0xc0c0004
	v_perm_b32 v48, v48, v51, 0xc0c0004
	v_lshl_or_b32 v74, v79, 16, v39
	v_lshl_or_b32 v73, v71, 16, v72
	v_lshl_or_b32 v72, v63, 16, v65
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v39, v67, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[75:78], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v48, 16, v50
	v_perm_b32 v48, v64, v68, 0xc0c0004
	v_perm_b32 v50, v52, v56, 0xc0c0004
	v_perm_b32 v49, v49, v53, 0xc0c0004
	v_perm_b32 v40, v40, v42, 0xc0c0004
	v_perm_b32 v38, v38, v41, 0xc0c0004
	v_perm_b32 v41, v32, v34, 0xc0c0004
	v_perm_b32 v31, v31, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[83:90], v[99:102], v[71:74], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v48, 16, v39
	v_lshl_or_b32 v33, v49, 16, v50
	v_lshl_or_b32 v32, v38, 16, v40
	v_lshl_or_b32 v31, v31, 16, v41
	v_perm_b32 v38, v44, v46, 0xc0c0004
	v_perm_b32 v39, v43, v45, 0xc0c0004
	v_perm_b32 v35, v35, v37, 0xc0c0004
	v_perm_b32 v5, v5, v36, 0xc0c0004
	v_perm_b32 v28, v28, v30, 0xc0c0004
	v_perm_b32 v27, v27, v29, 0xc0c0004
	v_perm_b32 v25, v7, v25, 0xc0c0004
	v_perm_b32 v29, v6, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[83:90], v[95:98], v[31:34], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v39, 16, v38
	v_lshl_or_b32 v7, v5, 16, v35
	v_lshl_or_b32 v6, v27, 16, v28
	v_lshl_or_b32 v5, v29, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[1:4], v[5:8], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v39, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v84
	v_cvt_f32_i32_e32 v97, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v100, v86
	v_cvt_f32_i32_e32 v96, v87
	v_cvt_f32_i32_e32 v98, v88
	v_cvt_f32_i32_e32 v99, v89
	v_cvt_f32_i32_e32 v101, v90
.LBB0_16:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s29, v26
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt lgkmcnt(6)
	v_dual_add_f32 v37, v17, v60 :: v_dual_and_b32 v4, 0x70, v1
	s_waitcnt lgkmcnt(5)
	v_dual_add_f32 v40, v24, v59 :: v_dual_lshlrev_b32 v5, 1, v2
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v3, v3, 1, v4
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s8, s16
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s28, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v4, v5, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s9, s19, 0xffff
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v3
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v28, s28, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v5, 14, v3
	v_or_b32_e32 v6, 12, v3
	v_or_b32_e32 v7, 10, v3
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v29, s28, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v41, v23, v54 :: v_dual_lshlrev_b32 v28, 1, v28
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v25, 4, v3
	v_or_b32_e32 v26, 6, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v38, v18, v62 :: v_dual_lshlrev_b32 v29, 1, v29
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v27, 8, v3
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_mov_b32 s8, s18
	s_clause 0x2
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	buffer_load_u16 v35, v3, s[8:11], 0 offen
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v3, s0, v8, 1
	v_add_lshl_u32 v8, s0, v25, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v30, s28, v25
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v25, s0, v26, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v31, s28, v26
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v26, s0, v27, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v32, s28, v27
	v_or_b32_e32 v33, s28, v7
	v_or_b32_e32 v34, s28, v6
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v7, s0, v7, 1
	v_add_lshl_u32 v6, s0, v6, 1
	v_add_lshl_u32 v27, s0, v5, 1
	s_waitcnt lgkmcnt(4)
	s_clause 0x6
	buffer_load_u16 v36, v3, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v5, s28, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v14, v57 :: v_dual_lshlrev_b32 v3, 1, v31
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v43, v13, v47 :: v_dual_lshlrev_b32 v30, 1, v30
	v_dual_add_f32 v44, v22, v61 :: v_dual_lshlrev_b32 v31, 1, v32
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v45, v21, v58 :: v_dual_lshlrev_b32 v32, 1, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v50, v11, v96 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v33, v3, s[8:11], 0 offen
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v46, v10, v95 :: v_dual_lshlrev_b32 v3, 1, v34
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x3
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v34, v3, s[8:11], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v39, v9, v39 :: v_dual_add_f32 v48, v19, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v53, 0x5410
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v47, v20, v100 :: v_dual_add_f32 v52, v15, v99
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v39, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v49, v12, v98 :: v_dual_and_b32 v0, 16, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v46, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v51, v16, v101 :: v_dual_mov_b32 v54, 0x7632
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v37, s2
	v_cndmask_b32_e64 v19, v19, v48, s2
	v_cndmask_b32_e64 v20, v20, v47, s2
	v_cndmask_b32_e64 v12, v12, v49, s2
	v_cndmask_b32_e64 v18, v18, v38, s2
	v_cndmask_b32_e64 v24, v24, v40, s2
	v_cndmask_b32_e64 v14, v14, v42, s2
	v_cndmask_b32_e64 v11, v11, v50, s2
	v_cndmask_b32_e64 v15, v15, v52, s2
	v_cndmask_b32_e64 v16, v16, v51, s2
	v_cndmask_b32_e64 v23, v23, v41, s2
	v_cndmask_b32_e64 v13, v13, v43, s2
	v_cndmask_b32_e64 v21, v21, v45, s2
	v_cndmask_b32_e64 v22, v22, v44, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, 0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v37.h, v3.h
	v_mov_b16_e32 v38.h, v3.h
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v40.h, v3.h
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v28, v4, v28 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v35, v4, v35 :: v_dual_lshlrev_b32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v17, v17, v28
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v9, v9, v35
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v4, v36 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v25, v4, v25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v8, v4, v8 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v10, v10, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v7, v4, v7
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v26, v4, v26 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v27, v4, v27 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v6, v4, v6 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v29, v4, v29 :: v_dual_lshlrev_b32 v34, 16, v34
	v_dual_mul_f32 v30, v4, v30 :: v_dual_lshlrev_b32 v5, 16, v5
	v_mul_f32_e32 v33, v4, v33
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v20, v20, v25 :: v_dual_mul_f32 v11, v11, v26
	v_dual_mul_f32 v8, v19, v8 :: v_dual_mul_f32 v19, v4, v31
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v25, v4, v32 :: v_dual_mul_f32 v6, v15, v6
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v7, v12, v7
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v12, v4, v34 :: v_dual_mul_f32 v15, v18, v29
	v_dual_mul_f32 v4, v4, v5 :: v_dual_mul_f32 v23, v23, v30
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v5, v16, v27 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v10
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v24, v24, v33 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v20
	v_dual_mul_f32 v14, v14, v25 :: v_dual_mul_f32 v13, v13, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v25, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v12, v21, v12
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v19, 0xbfb8aa3b, v11 :: v_dual_mul_f32 v4, v22, v4
	v_dual_mul_f32 v21, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v19
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	v_cndmask_b32_e64 v25, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v21
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v10 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s5
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v20
	v_exp_f32_e32 v18, v18
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v11
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v6
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s2
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v18, v18, v28
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	v_ldexp_f32 v16, v16, v29
	v_ldexp_f32 v27, v27, v30
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v26, v31
	v_ldexp_f32 v25, v25, v32
	v_ldexp_f32 v19, v19, v33
	v_ldexp_f32 v22, v22, v28
	v_ldexp_f32 v21, v21, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_add_f32 v25, 1.0, v25
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v18, v18, v9
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v28
	v_div_scale_f32 v31, null, v16, v16, v10
	v_div_scale_f32 v41, null, v25, v25, v7
	v_div_scale_f32 v33, null, v27, v27, v20
	v_div_scale_f32 v35, null, v26, v26, v8
	v_div_scale_f32 v45, null, v22, v22, v5
	v_rcp_f32_e32 v48, v31
	v_rcp_f32_e32 v51, v41
	v_rcp_f32_e32 v49, v33
	v_rcp_f32_e32 v50, v35
	v_div_scale_f32 v43, null, v19, v19, v11
	v_div_scale_f32 v47, null, v21, v21, v6
	v_fma_f32 v55, -v28, v30, 1.0
	v_rcp_f32_e32 v56, v45
	v_div_scale_f32 v29, vcc_lo, v9, v18, v9
	v_rcp_f32_e32 v52, v43
	v_rcp_f32_e32 v57, v47
	v_fma_f32 v61, -v41, v51, 1.0
	v_fmac_f32_e32 v30, v55, v30
	v_fma_f32 v55, -v31, v48, 1.0
	v_fma_f32 v59, -v33, v49, 1.0
	v_fma_f32 v60, -v35, v50, 1.0
	v_div_scale_f32 v32, s0, v10, v16, v10
	v_fma_f32 v63, -v45, v56, 1.0
	v_dual_fmac_f32 v48, v55, v48 :: v_dual_fmac_f32 v51, v61, v51
	v_mul_f32_e32 v65, v29, v30
	v_div_scale_f32 v34, s1, v20, v27, v20
	v_dual_fmac_f32 v49, v59, v49 :: v_dual_fmac_f32 v50, v60, v50
	v_div_scale_f32 v36, s2, v8, v26, v8
	v_div_scale_f32 v46, s5, v5, v22, v5
	v_fma_f32 v62, -v43, v52, 1.0
	v_fma_f32 v64, -v47, v57, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v56, v63, v56 :: v_dual_mul_f32 v61, v36, v50
	v_fma_f32 v55, -v28, v65, v29
	v_dual_mul_f32 v59, v32, v48 :: v_dual_mul_f32 v60, v34, v49
	v_div_scale_f32 v42, s3, v7, v25, v7
	v_div_scale_f32 v58, s6, v6, v21, v6
	v_dual_fmac_f32 v52, v62, v52 :: v_dual_fmac_f32 v57, v64, v57
	v_dual_mul_f32 v64, v46, v56 :: v_dual_fmac_f32 v65, v55, v30
	v_fma_f32 v55, -v31, v59, v32
	v_div_scale_f32 v44, s4, v11, v19, v11
	v_mul_f32_e32 v62, v42, v51
	v_fma_f32 v67, -v33, v60, v34
	v_fma_f32 v68, -v35, v61, v36
	v_dual_mul_f32 v66, v58, v57 :: v_dual_fmac_f32 v59, v55, v48
	v_fma_f32 v28, -v28, v65, v29
	v_mul_f32_e32 v63, v44, v52
	v_fma_f32 v69, -v41, v62, v42
	v_dual_fmac_f32 v60, v67, v49 :: v_dual_fmac_f32 v61, v68, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v30, v65
	v_fma_f32 v29, -v31, v59, v32
	v_fma_f32 v70, -v43, v63, v44
	v_fmac_f32_e32 v62, v69, v51
	v_fma_f32 v30, -v33, v60, v34
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v31, -v35, v61, v36
	v_div_fixup_f32 v9, v28, v18, v9
	v_div_fmas_f32 v18, v29, v48, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v71, -v45, v64, v46
	v_fmac_f32_e32 v63, v70, v52
	v_fma_f32 v32, -v41, v62, v42
	v_div_fmas_f32 v28, v30, v49, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v72, -v47, v66, v58
	v_div_fmas_f32 v29, v31, v50, v61
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v64, v71, v56 :: v_dual_mul_f32 v9, v17, v9
	v_fma_f32 v33, -v43, v63, v44
	v_div_fixup_f32 v10, v18, v16, v10
	v_div_fmas_f32 v16, v32, v51, v62
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v34, -v45, v64, v46
	v_div_fixup_f32 v17, v28, v27, v20
	v_div_fmas_f32 v18, v33, v52, v63
	v_div_fixup_f32 v7, v16, v25, v7
	v_fmac_f32_e32 v66, v72, v57
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v9.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v24, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v11, v18, v19, v11
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v15, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v34, v56, v64
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v14, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v47, v66, v58
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v8, v29, v26, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v15, v22, v5
	v_div_fmas_f32 v17, v35, v57, v66
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v16.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v13, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v10.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v23, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v17, v21, v6
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v4, v4, v5 :: v_dual_and_b32 v5, 1, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v37
	v_mov_b16_e32 v3.l, v7.h
	v_cmp_o_f32_e64 s0, v9, v9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s1, v16, v16
	v_mov_b16_e32 v38.l, v8.h
	v_add3_u32 v9, v9, v18, 0x7fff
	v_add3_u32 v10, v10, v13, 0x7fff
	v_and_b32_e32 v13, 1, v3
	v_add3_u32 v5, v16, v5, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v12, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v40.l, v6.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s1
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v7, v7, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_mov_b16_e32 v39.l, v11.h
	v_add3_u32 v0, v8, v12, 0x7fff
	v_and_b32_e32 v12, 1, v40
	v_cmp_o_f32_e64 s0, v4, v4
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v3, v4, v3, 0x7fff
	v_add3_u32 v6, v6, v12, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v0.h, s2
	v_cmp_o_f32_e64 s4, v11, v11
	v_cndmask_b32_e32 v10, 0x1054, v53, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s3
	v_and_b32_e32 v14, 1, v39
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v6, v2, s15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v4, v10, 8, v10
	s_mov_b32 s15, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v11, v14, 0x7fff
	v_and_b32_e32 v3, 0x540054, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v7.l, 0x7fff, v11.h, s4
	v_cndmask_b32_e32 v11, 0x3276, v54, vcc_lo
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v8, v7, v9, vcc_lo
	v_lshl_or_b32 v10, v11, 8, v11
	v_cndmask_b32_e32 v2, v9, v7, vcc_lo
	v_cndmask_b32_e32 v7, v5, v0, vcc_lo
	v_cndmask_b32_e32 v5, v0, v5, vcc_lo
	v_and_b32_e32 v3, 0x5040504, v3
	v_and_b32_e32 v4, 0x760076, v10
	v_permlanex16_b32 v2, v2, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_and_or_b32 v9, 0x78, v1, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v4, v4, 4, v4
	v_perm_b32 v0, v2, v8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 0x7060706, v4
	v_perm_b32 v1, v2, v8, v4
	v_perm_b32 v2, v7, v5, v3
	v_perm_b32 v3, v7, v5, v4
	v_add_lshl_u32 v4, v9, v6, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 173
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14420
; TotalNumSgprs: 42
; NumVgprs: 173
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     173
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
