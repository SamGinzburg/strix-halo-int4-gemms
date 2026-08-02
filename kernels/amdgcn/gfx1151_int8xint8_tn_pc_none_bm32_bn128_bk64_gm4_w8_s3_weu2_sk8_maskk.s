	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
	v_and_b32_e32 v6, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v4, 2, v0
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v9, 3, v0
	v_or_b32_e32 v28, 0x3f0, v0
	v_or_b32_e32 v29, 0x7f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v5, 62, v4
	v_and_b32_e32 v30, 8, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v50, 0, v9
	v_and_b32_e32 v31, 32, v0
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
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s9, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s9
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s10, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s10
	s_xor_b32 s5, s2, s10
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_ashr_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[2:3], null, s29, v5, v[1:2]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s4, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s7
	s_mul_i32 s7, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s8, s7
	s_add_i32 s8, s4, 1
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s7, s11, s7
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s8, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s8, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s4, s5
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s8, v5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s6, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s29, s8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s10, s3, s10
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s18, s4, v2
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s7, s31, 0x1ff
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s7, 0x1ff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s29, v2
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s8, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s30, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v7, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s28, s8
	v_lshlrev_b32_e32 v32, 6, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_cmpk_gt_i32 s7, 0x3ff
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s9, s8, 0x200
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s33, s29, 9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v10, s9, v5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s33, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s34, s28, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s29, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v10, s[24:27], 0 offen
	v_and_b32_e32 v10, 1, v0
	s_clause 0x1
	buffer_load_b128 v[12:15], v7, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v3, s[24:27], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s28, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v7, 24, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v3, v3, v7, s19
	v_add_nc_u32_e32 v8, s4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v8, vcc_lo
	v_lshlrev_b32_e32 v8, 5, v0
	buffer_load_b64 v[46:47], v2, s[12:15], 0 offen
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s9, v4
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, s4, s34, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 6, v0
	s_mov_b32 s4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s7, 0x5ff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v11, 3, v3
	buffer_load_b64 v[48:49], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	v_and_b32_e32 v2, 0x420, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v5
	v_lshl_or_b32 v33, v3, 10, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v34, 0x90, v33
	v_xor_b32_e32 v35, 0x120, v33
	v_xor_b32_e32 v36, 0x1b0, v33
	v_xor_b32_e32 v37, 0x210, v33
	v_xor_b32_e32 v38, 0x330, v33
	v_xor_b32_e32 v39, 0x3a0, v33
	v_add_nc_u32_e32 v51, 0, v33
	v_add_nc_u32_e32 v52, 0, v34
	v_add_nc_u32_e32 v53, 0, v35
	v_add_nc_u32_e32 v54, 0, v36
	v_add_nc_u32_e32 v55, 0, v37
	v_add_nc_u32_e32 v56, 0, v38
	v_add_nc_u32_e32 v57, 0, v39
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v16, v12, 0x5010400
	v_perm_b32 v12, v16, v12, 0x7030602
	v_perm_b32 v40, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v16, v17, v13, 0x5010400
	v_lshrrev_b32_e32 v42, 8, v3
	v_lshrrev_b32_e32 v43, 24, v3
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v41, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_lshrrev_b32_e32 v44, 8, v12
	v_lshrrev_b32_e32 v45, 24, v12
	v_and_b16 v2.l, 0xff, v3.l
	v_and_b16 v2.h, 0xff, v3.h
	v_and_b16 v15.l, 0xff, v18.l
	v_lshrrev_b32_e32 v64, 8, v18
	v_lshrrev_b32_e32 v65, 24, v18
	v_and_b16 v15.h, 0xff, v18.h
	v_lshlrev_b16 v18.l, 8, v42.l
	v_lshlrev_b16 v18.h, 8, v43.l
	v_and_b16 v3.l, 0xff, v12.l
	v_and_b16 v3.h, 0xff, v12.h
	v_lshrrev_b32_e32 v58, 8, v16
	v_lshrrev_b32_e32 v59, 24, v16
	v_and_b16 v13.l, 0xff, v17.l
	v_lshrrev_b32_e32 v60, 8, v17
	v_lshrrev_b32_e32 v61, 24, v17
	v_and_b16 v13.h, 0xff, v17.h
	v_and_b16 v17.l, 0xff, v19.l
	v_lshrrev_b32_e32 v68, 8, v19
	v_lshrrev_b32_e32 v69, 24, v19
	v_and_b16 v17.h, 0xff, v19.h
	v_lshlrev_b16 v19.l, 8, v44.l
	v_lshlrev_b16 v19.h, 8, v45.l
	v_lshrrev_b32_e32 v62, 8, v40
	v_lshrrev_b32_e32 v63, 24, v40
	v_lshrrev_b32_e32 v66, 8, v41
	v_lshrrev_b32_e32 v67, 24, v41
	v_or_b16 v2.l, v2.l, v18.l
	v_or_b16 v2.h, v2.h, v18.h
	v_perm_b32 v18, v24, v20, 0x5010400
	v_and_b16 v12.l, 0xff, v16.l
	v_and_b16 v12.h, 0xff, v16.h
	v_and_b16 v14.l, 0xff, v40.l
	v_and_b16 v14.h, 0xff, v40.h
	v_lshlrev_b16 v40.l, 8, v58.l
	v_lshlrev_b16 v40.h, 8, v59.l
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v3.h, v3.h, v19.h
	v_perm_b32 v19, v24, v20, 0x7030602
	v_and_b16 v16.l, 0xff, v41.l
	v_and_b16 v16.h, 0xff, v41.h
	v_lshlrev_b16 v41.l, 8, v60.l
	v_lshlrev_b16 v41.h, 8, v61.l
	v_lshlrev_b16 v42.l, 8, v62.l
	v_lshlrev_b16 v42.h, 8, v63.l
	v_lshlrev_b16 v44.l, 8, v66.l
	v_lshlrev_b16 v44.h, 8, v67.l
	v_lshlrev_b16 v43.l, 8, v64.l
	v_lshlrev_b16 v43.h, 8, v65.l
	v_lshlrev_b16 v45.l, 8, v68.l
	v_lshlrev_b16 v45.h, 8, v69.l
	v_perm_b32 v20, v25, v21, 0x5010400
	v_perm_b32 v21, v25, v21, 0x7030602
	v_perm_b32 v24, v26, v22, 0x5010400
	v_perm_b32 v22, v26, v22, 0x7030602
	v_perm_b32 v25, v27, v23, 0x5010400
	v_perm_b32 v23, v27, v23, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v18
	v_lshrrev_b32_e32 v27, 24, v18
	v_or_b16 v12.l, v12.l, v40.l
	v_or_b16 v12.h, v12.h, v40.h
	v_lshrrev_b32_e32 v40, 8, v19
	v_or_b16 v13.l, v13.l, v41.l
	v_or_b16 v13.h, v13.h, v41.h
	v_or_b16 v14.l, v14.l, v42.l
	v_or_b16 v14.h, v14.h, v42.h
	v_or_b16 v16.l, v16.l, v44.l
	v_or_b16 v16.h, v16.h, v44.h
	v_lshrrev_b32_e32 v41, 24, v19
	v_or_b16 v15.l, v15.l, v43.l
	v_or_b16 v15.h, v15.h, v43.h
	v_or_b16 v17.l, v17.l, v45.l
	v_or_b16 v17.h, v17.h, v45.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v50, v[46:47] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v2
	ds_store_b16_d16_hi v51, v2 offset:64
	ds_store_b16 v52, v3
	ds_store_b16_d16_hi v52, v3 offset:64
	ds_store_b16 v53, v12
	ds_store_b16_d16_hi v53, v12 offset:64
	ds_store_b16 v54, v13
	ds_store_b16_d16_hi v54, v13 offset:64
	ds_store_b16 v55, v14
	ds_store_b16_d16_hi v55, v14 offset:64
	ds_store_b16 v51, v15 offset:640
	ds_store_b16_d16_hi v51, v15 offset:704
	ds_store_b16 v56, v16
	ds_store_b16_d16_hi v56, v16 offset:64
	ds_store_b16 v57, v17
	ds_store_b16_d16_hi v57, v17 offset:64
	v_lshrrev_b32_e32 v42, 8, v20
	v_lshrrev_b32_e32 v43, 24, v20
	v_lshrrev_b32_e32 v44, 8, v21
	v_lshrrev_b32_e32 v45, 24, v21
	v_and_b16 v14.l, 0xff, v24.l
	v_lshrrev_b32_e32 v46, 8, v24
	v_lshrrev_b32_e32 v47, 24, v24
	v_and_b16 v14.h, 0xff, v24.h
	v_lshrrev_b32_e32 v24, 8, v22
	v_lshrrev_b32_e32 v58, 24, v22
	v_and_b16 v16.l, 0xff, v25.l
	v_lshrrev_b32_e32 v59, 8, v25
	v_lshrrev_b32_e32 v60, 24, v25
	v_and_b16 v16.h, 0xff, v25.h
	v_lshrrev_b32_e32 v25, 8, v23
	v_lshrrev_b32_e32 v61, 24, v23
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v26.l
	v_and_b16 v2.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v27.l
	v_and_b16 v3.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v40.l
	v_and_b16 v3.h, 0xff, v19.h
	v_lshlrev_b16 v19.h, 8, v41.l
	v_and_b16 v12.l, 0xff, v20.l
	v_and_b16 v12.h, 0xff, v20.h
	v_and_b16 v13.l, 0xff, v21.l
	v_and_b16 v13.h, 0xff, v21.h
	v_and_b16 v15.l, 0xff, v22.l
	v_and_b16 v15.h, 0xff, v22.h
	v_and_b16 v17.l, 0xff, v23.l
	v_and_b16 v17.h, 0xff, v23.h
	v_lshlrev_b16 v20.l, 8, v42.l
	v_lshlrev_b16 v20.h, 8, v43.l
	v_lshlrev_b16 v21.l, 8, v44.l
	v_lshlrev_b16 v21.h, 8, v45.l
	v_lshlrev_b16 v22.l, 8, v46.l
	v_lshlrev_b16 v22.h, 8, v47.l
	v_lshlrev_b16 v23.l, 8, v24.l
	v_lshlrev_b16 v23.h, 8, v58.l
	v_lshlrev_b16 v24.l, 8, v59.l
	v_lshlrev_b16 v24.h, 8, v60.l
	v_lshlrev_b16 v25.l, 8, v25.l
	v_lshlrev_b16 v25.h, 8, v61.l
	v_or_b16 v2.l, v2.l, v18.l
	v_or_b16 v2.h, v2.h, v18.h
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v3.h, v3.h, v19.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_or_b16 v17.l, v17.l, v25.l
	v_or_b16 v17.h, v17.h, v25.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v50, v[48:49] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v2 offset:8192
	ds_store_b16_d16_hi v51, v2 offset:8256
	ds_store_b16 v52, v3 offset:8192
	ds_store_b16_d16_hi v52, v3 offset:8256
	ds_store_b16 v53, v12 offset:8192
	ds_store_b16_d16_hi v53, v12 offset:8256
	ds_store_b16 v54, v13 offset:8192
	ds_store_b16_d16_hi v54, v13 offset:8256
	ds_store_b16 v55, v14 offset:8192
	ds_store_b16_d16_hi v55, v14 offset:8256
	ds_store_b16 v51, v15 offset:8832
	ds_store_b16_d16_hi v51, v15 offset:8896
	ds_store_b16 v56, v16 offset:8192
	ds_store_b16_d16_hi v56, v16 offset:8256
	ds_store_b16 v57, v17 offset:8192
	ds_store_b16_d16_hi v57, v17 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v6, 6, v6
	v_and_b32_e32 v41, 8, v0
	v_and_b32_e32 v42, 32, v0
	v_and_or_b32 v40, 0x1800, v8, v11
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr40
.LBB0_3:                                ; %Flow31
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v10
	v_and_b32_e32 v27, 15, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v3, s8, v5
	v_bfe_i32 v2, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	v_add3_u32 v42, s8, v4, 0x400
	v_and_or_b32 v40, 0x1800, v8, v11
	v_add_nc_u32_e32 v6, 0x401, v3
	v_add_nc_u32_e32 v41, 0x400, v3
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v2, 0x420, v2
	s_lshl_b32 s3, s6, 7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s29, v6
	v_mul_lo_u32 v4, s29, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v2, 0x210, v5, v2
	v_mul_lo_u32 v5, s28, v42
	s_lshl_b32 s4, s5, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s7, 9
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_xor_b32_e32 v2, v2, v40
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v3, v3, s3, v1
	v_add3_u32 v1, v4, s3, v1
	v_add3_u32 v44, v5, s19, v7
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_or_b32_e32 v43, v2, v32
	v_subrev_nc_u32_e32 v45, s4, v3
	v_subrev_nc_u32_e32 v46, s4, v1
	s_mov_b32 s4, 0
	v_mov_b32_e32 v26, 0
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_xor_b32_e32 v47, 16, v43
	v_xor_b32_e32 v48, 32, v43
	v_xor_b32_e32 v49, 48, v43
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s35, s1, -2
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s3, 0, 0x4800
	s_add_i32 s28, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v42
	s_mov_b32 s6, s1
	s_mov_b32 s1, s3
	s_mov_b32 s3, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v52, s6, v27
	v_cndmask_b32_e32 v50, 0x80000000, v44, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v55, s3, v43
	v_add_nc_u32_e32 v56, s3, v47
	v_add_nc_u32_e32 v57, s3, v48
	v_add_nc_u32_e32 v58, s3, v49
	v_cndmask_b32_e32 v51, 0x80000000, v46, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[118:119], v50, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v50, 0x80000000, v45, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[66:69], v51, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v53, s6, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[86:89], v50, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v54, s6, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[70:73], v55
	ds_load_b128 v[74:77], v56
	ds_load_b128 v[78:81], v57
	ds_load_b128 v[82:85], v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v51, v52 offset:96
	ds_load_u8 v55, v52 offset:64
	ds_load_u8 v56, v52
	ds_load_u8 v57, v52 offset:16
	ds_load_u8 v58, v52 offset:32
	ds_load_u8 v59, v52 offset:112
	ds_load_u8 v60, v52 offset:80
	ds_load_u8 v61, v52 offset:48
	ds_load_u8 v62, v52 offset:416
	ds_load_u8 v63, v52 offset:384
	ds_load_u8 v64, v52 offset:480
	ds_load_u8 v65, v52 offset:448
	ds_load_u8 v90, v52 offset:496
	ds_load_u8 v91, v52 offset:464
	ds_load_u8 v92, v52 offset:432
	ds_load_u8 v93, v52 offset:400
	ds_load_u8 v94, v52 offset:288
	ds_load_u8 v95, v52 offset:256
	ds_load_u8 v96, v52 offset:352
	ds_load_u8 v97, v52 offset:320
	ds_load_u8 v98, v52 offset:368
	ds_load_u8 v99, v52 offset:336
	ds_load_u8 v100, v52 offset:304
	ds_load_u8 v101, v52 offset:272
	ds_load_u8 v102, v52 offset:160
	ds_load_u8 v103, v52 offset:128
	ds_load_u8 v104, v52 offset:224
	ds_load_u8 v105, v52 offset:192
	ds_load_u8 v106, v52 offset:240
	ds_load_u8 v107, v52 offset:208
	ds_load_u8 v108, v52 offset:176
	ds_load_u8 v109, v52 offset:144
	ds_load_u8 v110, v52 offset:928
	ds_load_u8 v111, v52 offset:896
	ds_load_u8 v112, v52 offset:992
	ds_load_u8 v113, v52 offset:960
	ds_load_u8 v114, v52 offset:1024
	ds_load_u8 v115, v52 offset:976
	ds_load_u8 v116, v52 offset:944
	ds_load_u8 v117, v52 offset:912
	ds_load_u8 v50, v52 offset:800
	ds_load_u8 v120, v52 offset:768
	ds_load_u8 v121, v52 offset:864
	ds_load_u8 v122, v52 offset:832
	ds_load_u8 v123, v52 offset:880
	ds_load_u8 v124, v52 offset:848
	ds_load_u8 v125, v52 offset:816
	ds_load_u8 v126, v52 offset:784
	ds_load_u8 v127, v52 offset:672
	ds_load_u8 v128, v52 offset:640
	ds_load_u8 v129, v52 offset:736
	ds_load_u8 v130, v52 offset:704
	ds_load_u8 v131, v52 offset:752
	ds_load_u8 v132, v52 offset:720
	ds_load_u8 v133, v52 offset:688
	ds_load_u8 v134, v52 offset:656
	ds_load_u8 v135, v52 offset:544
	ds_load_u8 v136, v52 offset:512
	ds_load_u8 v137, v52 offset:608
	ds_load_u8 v138, v52 offset:576
	ds_load_u8 v139, v52 offset:624
	ds_load_u8 v140, v52 offset:592
	ds_load_u8 v141, v52 offset:560
	ds_load_u8 v142, v52 offset:528
	ds_load_u8 v143, v52 offset:1440
	ds_load_u8 v144, v52 offset:1504
	ds_load_u8 v145, v52 offset:1472
	ds_load_u8 v146, v52 offset:1536
	ds_load_u8 v147, v52 offset:1520
	ds_load_u8 v148, v52 offset:1488
	ds_load_u8 v149, v52 offset:1456
	ds_load_u8 v150, v52 offset:1424
	ds_load_u8 v151, v52 offset:1408
	ds_load_u8 v152, v52 offset:1312
	ds_load_u8 v153, v52 offset:1376
	ds_load_u8 v154, v52 offset:1344
	ds_load_u8 v155, v52 offset:1392
	ds_load_u8 v156, v52 offset:1360
	ds_load_u8 v157, v52 offset:1328
	ds_load_u8 v158, v52 offset:1296
	ds_load_u8 v159, v52 offset:1280
	ds_load_u8 v160, v52 offset:1184
	ds_load_u8 v161, v52 offset:1248
	ds_load_u8 v162, v52 offset:1216
	ds_load_u8 v163, v52 offset:1264
	ds_load_u8 v164, v52 offset:1232
	ds_load_u8 v165, v52 offset:1200
	ds_load_u8 v166, v52 offset:1168
	ds_load_u8 v167, v52 offset:1152
	ds_load_u8 v168, v52 offset:1056
	ds_load_u8 v169, v52 offset:1120
	ds_load_u8 v170, v52 offset:1088
	ds_load_u8 v171, v52 offset:1136
	ds_load_u8 v172, v52 offset:1104
	ds_load_u8 v173, v52 offset:1072
	ds_load_u8 v174, v52 offset:1040
	ds_load_u8 v175, v52 offset:1952
	ds_load_u8 v176, v52 offset:2016
	ds_load_u8 v177, v52 offset:1984
	ds_load_u8 v53, v53
	ds_load_u8 v54, v54
	ds_load_u8 v178, v52 offset:2000
	ds_load_u8 v179, v52 offset:1968
	ds_load_u8 v180, v52 offset:1936
	ds_load_u8 v181, v52 offset:1920
	ds_load_u8 v182, v52 offset:1824
	ds_load_u8 v183, v52 offset:1888
	ds_load_u8 v184, v52 offset:1856
	ds_load_u8 v185, v52 offset:1904
	ds_load_u8 v186, v52 offset:1872
	ds_load_u8 v187, v52 offset:1840
	ds_load_u8 v188, v52 offset:1808
	ds_load_u8 v189, v52 offset:1792
	ds_load_u8 v190, v52 offset:1696
	ds_load_u8 v191, v52 offset:1760
	ds_load_u8 v192, v52 offset:1728
	ds_load_u8 v193, v52 offset:1776
	ds_load_u8 v194, v52 offset:1744
	ds_load_u8 v195, v52 offset:1712
	ds_load_u8 v196, v52 offset:1680
	ds_load_u8 v197, v52 offset:1664
	ds_load_u8 v198, v52 offset:1568
	ds_load_u8 v199, v52 offset:1632
	ds_load_u8 v200, v52 offset:1600
	ds_load_u8 v201, v52 offset:1648
	ds_load_u8 v202, v52 offset:1616
	ds_load_u8 v203, v52 offset:1584
	ds_load_u8 v52, v52 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_perm_b32 v64, v95, v94, 0xc0c0004
	v_perm_b32 v65, v97, v96, 0xc0c0004
	v_perm_b32 v94, v103, v102, 0xc0c0004
	v_perm_b32 v51, v55, v51, 0xc0c0004
	v_perm_b32 v95, v105, v104, 0xc0c0004
	v_perm_b32 v55, v56, v58, 0xc0c0004
	v_perm_b32 v50, v120, v50, 0xc0c0004
	v_perm_b32 v97, v122, v121, 0xc0c0004
	v_perm_b32 v102, v128, v127, 0xc0c0004
	v_perm_b32 v103, v130, v129, 0xc0c0004
	v_perm_b32 v56, v111, v110, 0xc0c0004
	v_perm_b32 v104, v136, v135, 0xc0c0004
	v_perm_b32 v96, v113, v112, 0xc0c0004
	v_perm_b32 v105, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v110, v151, v143, 0xc0c0004
	v_perm_b32 v111, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v114, v114, v168, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v122, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v146, v198, 0xc0c0004
	v_perm_b32 v143, v93, v92, 0xc0c0004
	v_perm_b32 v144, v91, v90, 0xc0c0004
	v_perm_b32 v145, v101, v100, 0xc0c0004
	v_perm_b32 v146, v99, v98, 0xc0c0004
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v107, v60, v59, 0xc0c0004
	v_perm_b32 v57, v57, v61, 0xc0c0004
	v_perm_b32 v109, v117, v116, 0xc0c0004
	v_perm_b32 v53, v115, v53, 0xc0c0004
	v_perm_b32 v116, v124, v123, 0xc0c0004
	v_perm_b32 v117, v134, v133, 0xc0c0004
	v_perm_b32 v123, v132, v131, 0xc0c0004
	v_perm_b32 v124, v142, v141, 0xc0c0004
	v_perm_b32 v142, v180, v179, 0xc0c0004
	v_perm_b32 v54, v178, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v52, v203, 0xc0c0004
	v_perm_b32 v151, v202, v201, 0xc0c0004
	v_lshl_or_b32 v61, v63, 16, v62
	v_lshl_or_b32 v60, v65, 16, v64
	v_lshl_or_b32 v59, v95, 16, v94
	v_lshl_or_b32 v58, v51, 16, v55
	v_perm_b32 v112, v159, v152, 0xc0c0004
	v_perm_b32 v113, v154, v153, 0xc0c0004
	v_perm_b32 v120, v167, v160, 0xc0c0004
	v_perm_b32 v121, v162, v161, 0xc0c0004
	v_perm_b32 v115, v126, v125, 0xc0c0004
	v_perm_b32 v125, v140, v139, 0xc0c0004
	v_lshl_or_b32 v93, v96, 16, v56
	v_lshl_or_b32 v92, v97, 16, v50
	v_lshl_or_b32 v91, v103, 16, v102
	v_lshl_or_b32 v90, v105, 16, v104
	v_lshl_or_b32 v94, v122, 16, v114
	v_lshl_or_b32 v105, v144, 16, v143
	v_lshl_or_b32 v104, v146, 16, v145
	v_lshl_or_b32 v103, v106, 16, v108
	v_lshl_or_b32 v102, v107, 16, v57
	v_lshl_or_b32 v109, v53, 16, v109
	v_lshl_or_b32 v107, v123, 16, v117
	v_lshl_or_b32 v117, v54, 16, v142
	v_lshl_or_b32 v114, v151, 16, v52
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v181, v175, 0xc0c0004
	v_perm_b32 v128, v177, v176, 0xc0c0004
	v_perm_b32 v129, v189, v182, 0xc0c0004
	v_perm_b32 v130, v184, v183, 0xc0c0004
	v_perm_b32 v135, v197, v190, 0xc0c0004
	v_perm_b32 v136, v192, v191, 0xc0c0004
	v_perm_b32 v138, v200, v199, 0xc0c0004
	v_perm_b32 v126, v150, v149, 0xc0c0004
	v_perm_b32 v131, v148, v147, 0xc0c0004
	v_perm_b32 v132, v158, v157, 0xc0c0004
	v_perm_b32 v133, v156, v155, 0xc0c0004
	v_perm_b32 v134, v166, v165, 0xc0c0004
	v_perm_b32 v139, v164, v163, 0xc0c0004
	v_perm_b32 v140, v174, v173, 0xc0c0004
	v_perm_b32 v141, v172, v171, 0xc0c0004
	v_lshl_or_b32 v97, v111, 16, v110
	v_lshl_or_b32 v96, v113, 16, v112
	v_lshl_or_b32 v95, v121, 16, v120
	v_lshl_or_b32 v108, v116, 16, v115
	v_lshl_or_b32 v106, v125, 16, v124
	v_wmma_i32_16x16x16_iu8 v[58:65], v[70:73], v[102:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[90:93], v[50:57] neg_lo:[1,1,0]
	v_perm_b32 v147, v188, v187, 0xc0c0004
	v_perm_b32 v148, v186, v185, 0xc0c0004
	v_perm_b32 v149, v196, v195, 0xc0c0004
	v_perm_b32 v150, v194, v193, 0xc0c0004
	v_lshl_or_b32 v101, v128, 16, v127
	v_lshl_or_b32 v100, v130, 16, v129
	v_lshl_or_b32 v99, v136, 16, v135
	v_lshl_or_b32 v98, v138, 16, v137
	v_lshl_or_b32 v113, v131, 16, v126
	v_lshl_or_b32 v112, v133, 16, v132
	v_lshl_or_b32 v111, v139, 16, v134
	v_lshl_or_b32 v110, v141, 16, v140
	v_wmma_i32_16x16x16_iu8 v[58:65], v[74:77], v[106:109], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[78:81], v[94:97], v[50:57] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v148, 16, v147
	v_lshl_or_b32 v115, v150, 16, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s5, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[78:81], v[110:113], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[82:85], v[98:101], v[50:57] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s5, 2
	s_mov_b32 s4, s28
	s_cselect_b32 s5, s5, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[114:117], v[58:65] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v41, 0x200, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v51
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s6, s5, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v52 :: v_dual_add_nc_u32 v46, s33, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s28, s6, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v53
	v_dual_add_f32 v21, v21, v56 :: v_dual_add_nc_u32 v42, 0x200, v42
	v_dual_add_f32 v20, v20, v57 :: v_dual_add_nc_u32 v207, s28, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v23, v54 :: v_dual_add_f32 v22, v22, v55
	v_dual_add_f32 v19, v19, v58 :: v_dual_add_f32 v18, v18, v59
	v_add_f32_e32 v17, v17, v60
	v_dual_add_f32 v16, v16, v61 :: v_dual_add_nc_u32 v211, s28, v39
	v_dual_add_f32 v14, v14, v62 :: v_dual_add_nc_u32 v45, s33, v45
	v_dual_add_f32 v13, v13, v63 :: v_dual_add_nc_u32 v44, s34, v44
	v_add_f32_e32 v15, v15, v50
	v_dual_add_f32 v12, v12, v64 :: v_dual_add_nc_u32 v205, s28, v33
	v_dual_add_f32 v11, v11, v65 :: v_dual_add_nc_u32 v206, s28, v34
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s3, s5, 11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s35, s35, -1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s7, s3, 0
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v204, s7, v9
	s_add_i32 s3, s7, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s35, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v208, s28, v36
	v_add_nc_u32_e32 v209, s28, v37
	v_add_nc_u32_e32 v210, s28, v38
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v204, v[118:119] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v86, v66, 0x5010400
	v_perm_b32 v52, v86, v66, 0x7030602
	v_perm_b32 v53, v87, v67, 0x5010400
	v_perm_b32 v54, v87, v67, 0x7030602
	v_perm_b32 v55, v88, v68, 0x5010400
	v_perm_b32 v56, v88, v68, 0x7030602
	v_perm_b32 v57, v89, v69, 0x5010400
	v_perm_b32 v58, v89, v69, 0x7030602
	v_lshrrev_b32_e32 v59, 8, v51
	v_lshrrev_b32_e32 v60, 24, v51
	v_lshrrev_b32_e32 v61, 8, v52
	v_lshrrev_b32_e32 v62, 24, v52
	v_lshrrev_b32_e32 v63, 8, v53
	v_and_b16 v50.l, 0xff, v51.l
	v_and_b16 v51.l, 0xff, v52.l
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v64, 24, v53
	v_and_b16 v53.l, 0xff, v54.l
	v_lshrrev_b32_e32 v65, 8, v54
	v_lshrrev_b32_e32 v66, 24, v54
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v67, 8, v55
	v_lshrrev_b32_e32 v68, 24, v55
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v69, 8, v56
	v_lshrrev_b32_e32 v70, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v71, 8, v57
	v_lshrrev_b32_e32 v72, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v73, 8, v58
	v_lshrrev_b32_e32 v74, 24, v58
	v_lshlrev_b16 v58.l, 8, v59.l
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_lshlrev_b16 v58.h, 8, v60.l
	v_lshlrev_b16 v59.l, 8, v61.l
	v_lshlrev_b16 v59.h, 8, v62.l
	v_lshlrev_b16 v60.l, 8, v63.l
	v_lshlrev_b16 v60.h, 8, v64.l
	v_lshlrev_b16 v61.l, 8, v65.l
	v_lshlrev_b16 v61.h, 8, v66.l
	v_lshlrev_b16 v62.l, 8, v67.l
	v_lshlrev_b16 v62.h, 8, v68.l
	v_lshlrev_b16 v63.l, 8, v69.l
	v_lshlrev_b16 v63.h, 8, v70.l
	v_lshlrev_b16 v64.l, 8, v71.l
	v_lshlrev_b16 v64.h, 8, v72.l
	v_lshlrev_b16 v65.l, 8, v73.l
	v_lshlrev_b16 v65.h, 8, v74.l
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
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
	ds_store_b16 v205, v50
	ds_store_b16_d16_hi v205, v50 offset:64
	ds_store_b16 v206, v51
	ds_store_b16_d16_hi v206, v51 offset:64
	ds_store_b16 v207, v52
	ds_store_b16_d16_hi v207, v52 offset:64
	ds_store_b16 v208, v53
	ds_store_b16_d16_hi v208, v53 offset:64
	ds_store_b16 v209, v54
	ds_store_b16_d16_hi v209, v54 offset:64
	ds_store_b16 v205, v55 offset:640
	ds_store_b16_d16_hi v205, v55 offset:704
	ds_store_b16 v210, v56
	ds_store_b16_d16_hi v210, v56 offset:64
	ds_store_b16 v211, v57
	ds_store_b16_d16_hi v211, v57 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v28 :: v_dual_mov_b32 v3, v29
	v_dual_mov_b32 v6, v32 :: v_dual_mov_b32 v41, v30
	v_mov_b32_e32 v42, v31
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v15, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s3, 0, 0x4800
	s_add_i32 s28, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v4
	v_xor_b32_e32 v1, v1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v6
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
	v_add_nc_u32_e32 v7, s1, v27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v8, v7 offset:416
	ds_load_u8 v28, v7 offset:384
	ds_load_u8 v29, v7 offset:480
	ds_load_u8 v30, v7 offset:448
	ds_load_u8 v33, v7 offset:288
	ds_load_u8 v34, v7 offset:256
	ds_load_u8 v35, v7 offset:352
	ds_load_u8 v36, v7 offset:320
	ds_load_u8 v37, v7 offset:160
	ds_load_u8 v38, v7 offset:128
	ds_load_u8 v39, v7 offset:224
	ds_load_u8 v40, v7 offset:192
	ds_load_u8 v64, v7 offset:464
	ds_load_u8 v65, v7 offset:432
	ds_load_u8 v66, v7 offset:400
	ds_load_u8 v67, v7 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v31, s4, v4
	v_add_nc_u32_e32 v32, s4, v1
	ds_load_b128 v[44:47], v31
	ds_load_b128 v[48:51], v32
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v31, s1, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, s4, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v77, v7 offset:16
	ds_load_u8 v78, v31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v34, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v35, v38, v37, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v60, s4, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_perm_b32 v8, v28, v8, 0xc0c0004
	v_lshl_or_b32 v54, v34, 16, v33
	v_perm_b32 v28, v30, v29, 0xc0c0004
	ds_load_u8 v29, v7 offset:96
	ds_load_u8 v30, v7 offset:64
	ds_load_u8 v41, v7
	ds_load_u8 v42, v7 offset:32
	ds_load_u8 v68, v7 offset:336
	ds_load_u8 v69, v7 offset:304
	ds_load_u8 v70, v7 offset:272
	ds_load_u8 v71, v7 offset:240
	v_lshl_or_b32 v53, v36, 16, v35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v115, s1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v55, v28, 16, v8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v41, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v66, v70, v69, 0xc0c0004
	v_lshl_or_b32 v52, v28, 16, v29
	v_dual_mov_b32 v35, s15 :: v_dual_mov_b32 v34, s14
	ds_load_u8 v36, v7 offset:928
	ds_load_u8 v37, v7 offset:896
	ds_load_u8 v38, v7 offset:992
	ds_load_u8 v39, v7 offset:960
	ds_load_u8 v40, v7 offset:800
	ds_load_u8 v41, v7 offset:768
	ds_load_u8 v42, v7 offset:864
	ds_load_u8 v43, v7 offset:832
	ds_load_u8 v57, v7 offset:672
	ds_load_u8 v58, v7 offset:640
	ds_load_u8 v59, v7 offset:736
	ds_load_u8 v61, v7 offset:704
	ds_load_u8 v79, v7 offset:976
	ds_load_u8 v80, v7 offset:944
	ds_load_u8 v81, v7 offset:912
	ds_load_u8 v82, v7 offset:880
	v_dual_mov_b32 v33, s13 :: v_dual_mov_b32 v32, s12
	v_dual_mov_b32 v31, s11 :: v_dual_mov_b32 v30, s10
	v_dual_mov_b32 v29, s9 :: v_dual_mov_b32 v28, s8
	ds_load_u8 v72, v7 offset:208
	ds_load_u8 v73, v7 offset:176
	ds_load_u8 v74, v7 offset:144
	ds_load_u8 v75, v7 offset:112
	ds_load_u8 v8, v7 offset:80
	ds_load_u8 v76, v7 offset:48
	ds_load_u8 v89, v7 offset:720
	ds_load_u8 v90, v7 offset:688
	ds_load_u8 v91, v7 offset:656
	ds_load_u8 v92, v7 offset:624
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v87, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v88, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v58, v61, v59, 0xc0c0004
	ds_load_u8 v59, v7 offset:1440
	ds_load_u8 v61, v7 offset:1408
	ds_load_u8 v93, v7 offset:1504
	ds_load_u8 v94, v7 offset:1472
	ds_load_u8 v95, v7 offset:592
	ds_load_u8 v96, v7 offset:560
	ds_load_u8 v97, v7 offset:528
	ds_load_u8 v98, v7 offset:496
	v_perm_b32 v62, v37, v36, 0xc0c0004
	v_perm_b32 v63, v39, v38, 0xc0c0004
	ds_load_u8 v36, v7 offset:544
	ds_load_u8 v37, v7 offset:512
	ds_load_u8 v38, v7 offset:608
	ds_load_u8 v39, v7 offset:576
	ds_load_u8 v83, v7 offset:848
	ds_load_u8 v84, v7 offset:816
	ds_load_u8 v85, v7 offset:784
	ds_load_u8 v86, v7 offset:752
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v69, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v68, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v8, v8, v75, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v70, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v61, v59, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v7 offset:1184
	ds_load_u8 v102, v7 offset:1152
	ds_load_u8 v103, v7 offset:1248
	ds_load_u8 v104, v7 offset:1216
	ds_load_u8 v105, v7 offset:1056
	ds_load_u8 v106, v7 offset:1024
	ds_load_u8 v107, v7 offset:1120
	ds_load_u8 v108, v7 offset:1088
	ds_load_u8 v109, v7 offset:1392
	ds_load_u8 v110, v7 offset:1360
	ds_load_u8 v111, v7 offset:1328
	ds_load_u8 v112, v7 offset:1296
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v99, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v100, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[48:51], v[52:55], v[28:35] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v63, 16, v62
	v_lshl_or_b32 v54, v88, 16, v87
	v_lshl_or_b32 v53, v58, 16, v57
	v_lshl_or_b32 v52, v100, 16, v99
	ds_load_u8 v57, v7 offset:1312
	ds_load_u8 v58, v7 offset:1280
	ds_load_u8 v62, v7 offset:1376
	ds_load_u8 v63, v7 offset:1344
	ds_load_u8 v87, v7 offset:1520
	ds_load_u8 v88, v7 offset:1488
	ds_load_u8 v99, v7 offset:1456
	ds_load_u8 v100, v7 offset:1424
	v_perm_b32 v64, v64, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[52:55], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v52, v102, v94, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	ds_load_u8 v107, v7 offset:1952
	ds_load_u8 v108, v7 offset:1920
	ds_load_u8 v116, v7 offset:2016
	ds_load_u8 v117, v7 offset:1984
	v_lshl_or_b32 v55, v93, 16, v101
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v94, v7 offset:1136
	ds_load_u8 v102, v7 offset:1104
	ds_load_u8 v103, v7 offset:1072
	ds_load_u8 v104, v7 offset:1040
	v_lshl_or_b32 v52, v106, 16, v105
	ds_load_u8 v105, v7 offset:1824
	ds_load_u8 v106, v7 offset:1792
	ds_load_u8 v118, v7 offset:1888
	ds_load_u8 v119, v7 offset:1856
	ds_load_u8 v120, v7 offset:1696
	ds_load_u8 v121, v7 offset:1664
	ds_load_u8 v122, v7 offset:1760
	ds_load_u8 v123, v7 offset:1728
	ds_load_u8 v124, v7 offset:1568
	ds_load_u8 v125, v7 offset:1536
	ds_load_u8 v126, v7 offset:1632
	ds_load_u8 v127, v7 offset:1600
	ds_load_u8 v115, v115
	ds_load_u8 v128, v7 offset:2000
	ds_load_u8 v129, v7 offset:1968
	ds_load_u8 v130, v7 offset:1936
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v113, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v114, v63, v62, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[56:59], v56
	ds_load_b128 v[60:63], v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_lshl_or_b32 v54, v114, 16, v113
	ds_load_u8 v93, v7 offset:1264
	ds_load_u8 v101, v7 offset:1232
	ds_load_u8 v113, v7 offset:1200
	ds_load_u8 v114, v7 offset:1168
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v106, v119, v118, 0xc0c0004
	ds_load_u8 v118, v7 offset:1776
	ds_load_u8 v119, v7 offset:1744
	ds_load_u8 v133, v7 offset:1712
	ds_load_u8 v134, v7 offset:1680
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v121, v123, v122, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v108, v117, v116, 0xc0c0004
	ds_load_u8 v116, v7 offset:1904
	ds_load_u8 v117, v7 offset:1872
	ds_load_u8 v131, v7 offset:1840
	ds_load_u8 v132, v7 offset:1808
	ds_load_u8 v122, v7 offset:1648
	ds_load_u8 v123, v7 offset:1616
	ds_load_u8 v135, v7 offset:1584
	ds_load_u8 v7, v7 offset:1552
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v125, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[60:63], v[52:55], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v108, 16, v107
	v_lshl_or_b32 v54, v106, 16, v105
	v_lshl_or_b32 v53, v121, 16, v120
	v_lshl_or_b32 v52, v125, 16, v124
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[52:55], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v64, 16, v65
	v_lshl_or_b32 v54, v67, 16, v66
	v_lshl_or_b32 v53, v69, 16, v68
	v_lshl_or_b32 v52, v8, 16, v70
	v_perm_b32 v8, v81, v80, 0xc0c0004
	v_perm_b32 v64, v79, v115, 0xc0c0004
	v_perm_b32 v65, v85, v84, 0xc0c0004
	v_perm_b32 v66, v83, v82, 0xc0c0004
	v_perm_b32 v67, v91, v90, 0xc0c0004
	v_perm_b32 v68, v89, v86, 0xc0c0004
	v_perm_b32 v69, v97, v96, 0xc0c0004
	v_perm_b32 v70, v95, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[28:35], v[48:51], v[52:55], v[28:35] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v64, 16, v8
	v_lshl_or_b32 v50, v66, 16, v65
	v_lshl_or_b32 v49, v68, 16, v67
	v_lshl_or_b32 v48, v70, 16, v69
	v_perm_b32 v8, v100, v99, 0xc0c0004
	v_perm_b32 v52, v88, v87, 0xc0c0004
	v_perm_b32 v53, v112, v111, 0xc0c0004
	v_perm_b32 v54, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v114, v113, 0xc0c0004
	v_perm_b32 v64, v101, v93, 0xc0c0004
	v_perm_b32 v65, v104, v103, 0xc0c0004
	v_perm_b32 v66, v102, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[28:35], v[44:47], v[48:51], v[28:35] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v52, 16, v8
	v_lshl_or_b32 v46, v54, 16, v53
	v_lshl_or_b32 v45, v64, 16, v55
	v_lshl_or_b32 v44, v66, 16, v65
	v_perm_b32 v8, v130, v129, 0xc0c0004
	v_perm_b32 v48, v128, v78, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v132, v131, 0xc0c0004
	v_perm_b32 v50, v117, v116, 0xc0c0004
	v_perm_b32 v51, v134, v133, 0xc0c0004
	v_perm_b32 v52, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v135, 0xc0c0004
	v_perm_b32 v53, v123, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[28:35], v[60:63], v[44:47], v[28:35] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v48, 16, v8
	v_lshl_or_b32 v46, v50, 16, v49
	v_lshl_or_b32 v45, v52, 16, v51
	v_lshl_or_b32 v44, v53, 16, v7
	v_cvt_f32_i32_e32 v7, v37
	v_cvt_f32_i32_e32 v8, v39
	v_cvt_f32_i32_e32 v39, v42
	v_cvt_f32_i32_e32 v37, v40
	v_wmma_i32_16x16x16_iu8 v[28:35], v[56:59], v[44:47], v[28:35] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v8, v28
	v_cvt_f32_i32_e32 v28, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v21, v21, v39 :: v_dual_add_f32 v18, v18, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v20, v20, v7 :: v_dual_add_f32 v19, v19, v8
	v_dual_add_f32 v17, v17, v29 :: v_dual_add_f32 v16, v16, v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v32
	v_cvt_f32_i32_e32 v8, v33
	v_cvt_f32_i32_e32 v28, v34
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v30, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v23, v37 :: v_dual_add_f32 v22, v22, v38
	v_dual_add_f32 v14, v14, v7 :: v_dual_add_f32 v13, v13, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v12, v12, v28 :: v_dual_add_f32 v11, v11, v29
	v_add_f32_e32 v15, v15, v30
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v8, s3, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s28, v4
	v_add_nc_u32_e32 v32, s28, v6
	v_add_nc_u32_e32 v33, s28, v5
	v_add_nc_u32_e32 v1, s28, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v34, v8 offset:416
	ds_load_u8 v35, v8 offset:384
	ds_load_u8 v36, v8 offset:480
	ds_load_u8 v37, v8 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[4:7], v4
	ds_load_b128 v[28:31], v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s3, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v3, v8 offset:288
	ds_load_u8 v38, v8 offset:256
	ds_load_u8 v39, v8 offset:352
	ds_load_u8 v40, v8 offset:320
	ds_load_u8 v41, v8 offset:160
	ds_load_u8 v42, v8 offset:128
	ds_load_u8 v43, v8 offset:224
	ds_load_u8 v44, v8 offset:192
	ds_load_u8 v45, v8 offset:96
	ds_load_u8 v46, v8 offset:64
	ds_load_u8 v47, v8
	ds_load_u8 v48, v8 offset:32
	ds_load_u8 v62, v8 offset:464
	ds_load_u8 v63, v8 offset:432
	ds_load_u8 v64, v8 offset:400
	ds_load_u8 v65, v8 offset:368
	ds_load_u8 v76, v8 offset:16
	ds_load_u8 v77, v1
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v38, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v44, v43, 0xc0c0004
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_perm_b32 v35, v37, v36, 0xc0c0004
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_perm_b32 v37, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v47, v48, 0xc0c0004
	v_lshl_or_b32 v53, v35, 16, v34
	v_lshl_or_b32 v52, v36, 16, v3
	v_lshl_or_b32 v51, v38, 16, v37
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v50, v39, 16, v1
	v_mov_b32_e32 v41, s11
	ds_load_u8 v1, v8 offset:928
	ds_load_u8 v3, v8 offset:896
	v_mov_b32_e32 v40, s10
	ds_load_u8 v58, v8 offset:992
	ds_load_u8 v59, v8 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[54:57], v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, s9 :: v_dual_mov_b32 v38, s8
	v_dual_mov_b32 v37, s7 :: v_dual_mov_b32 v36, s6
	v_dual_mov_b32 v35, s5 :: v_dual_mov_b32 v34, s4
	ds_load_u8 v66, v8 offset:336
	ds_load_u8 v67, v8 offset:304
	ds_load_u8 v68, v8 offset:272
	ds_load_u8 v69, v8 offset:240
	ds_load_u8 v70, v8 offset:208
	ds_load_u8 v71, v8 offset:176
	ds_load_u8 v72, v8 offset:144
	ds_load_u8 v73, v8 offset:112
	ds_load_u8 v74, v8 offset:80
	ds_load_u8 v75, v8 offset:48
	ds_load_u8 v89, v8 offset:720
	ds_load_u8 v90, v8 offset:688
	ds_load_u8 v91, v8 offset:656
	ds_load_u8 v92, v8 offset:624
	v_wmma_i32_16x16x16_iu8 v[42:49], v[28:31], v[50:53], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v33, v8 offset:800
	ds_load_u8 v50, v8 offset:768
	ds_load_u8 v51, v8 offset:864
	ds_load_u8 v52, v8 offset:832
	ds_load_u8 v53, v8 offset:672
	ds_load_u8 v60, v8 offset:640
	ds_load_u8 v61, v8 offset:736
	ds_load_u8 v78, v8 offset:704
	ds_load_u8 v79, v8 offset:976
	ds_load_u8 v80, v8 offset:944
	ds_load_u8 v81, v8 offset:912
	ds_load_u8 v82, v8 offset:880
	ds_load_u8 v124, v8 offset:1776
	ds_load_u8 v125, v8 offset:1744
	ds_load_u8 v126, v8 offset:1712
	ds_load_u8 v127, v8 offset:1680
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v8 offset:544
	ds_load_u8 v83, v8 offset:512
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v8 offset:608
	ds_load_u8 v84, v8 offset:576
	ds_load_u8 v85, v8 offset:848
	ds_load_u8 v86, v8 offset:816
	ds_load_u8 v87, v8 offset:784
	ds_load_u8 v88, v8 offset:752
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v33, v50, v33, 0xc0c0004
	v_perm_b32 v66, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v50, v52, v51, 0xc0c0004
	v_perm_b32 v64, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v51, v60, v53, 0xc0c0004
	v_lshl_or_b32 v53, v58, 16, v1
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v78, v61, 0xc0c0004
	v_lshl_or_b32 v52, v50, 16, v33
	ds_load_u8 v78, v8 offset:592
	ds_load_u8 v93, v8 offset:560
	ds_load_u8 v94, v8 offset:528
	ds_load_u8 v95, v8 offset:496
	v_perm_b32 v67, v72, v71, 0xc0c0004
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_lshl_or_b32 v51, v60, 16, v51
	v_perm_b32 v69, v74, v73, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v84, v59, 0xc0c0004
	ds_load_u8 v84, v8 offset:1504
	ds_load_u8 v96, v8 offset:1472
	v_perm_b32 v3, v83, v3, 0xc0c0004
	ds_load_u8 v61, v8 offset:1440
	ds_load_u8 v83, v8 offset:1408
	v_lshl_or_b32 v64, v66, 16, v64
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v66, v85, v82, 0xc0c0004
	v_lshl_or_b32 v50, v59, 16, v3
	ds_load_u8 v1, v8 offset:1312
	ds_load_u8 v3, v8 offset:1280
	ds_load_u8 v33, v8 offset:1376
	ds_load_u8 v58, v8 offset:1344
	ds_load_u8 v59, v8 offset:1184
	ds_load_u8 v60, v8 offset:1152
	ds_load_u8 v97, v8 offset:1248
	ds_load_u8 v98, v8 offset:1216
	ds_load_u8 v99, v8 offset:1520
	ds_load_u8 v100, v8 offset:1488
	ds_load_u8 v101, v8 offset:1456
	ds_load_u8 v102, v8 offset:1424
	v_wmma_i32_16x16x16_iu8 v[42:49], v[4:7], v[50:53], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v62, v95, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v65, v62, 16, v63
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v58, v33, 0xc0c0004
	v_perm_b32 v84, v96, v84, 0xc0c0004
	ds_load_u8 v96, v8 offset:1120
	ds_load_u8 v104, v8 offset:1088
	ds_load_u8 v105, v8 offset:1392
	ds_load_u8 v106, v8 offset:1360
	ds_load_u8 v107, v8 offset:1328
	ds_load_u8 v108, v8 offset:1296
	v_perm_b32 v61, v83, v61, 0xc0c0004
	ds_load_u8 v83, v8 offset:1056
	ds_load_u8 v103, v8 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v98, v97, 0xc0c0004
	v_lshl_or_b32 v52, v3, 16, v1
	v_lshl_or_b32 v53, v84, 16, v61
	ds_load_u8 v33, v8 offset:1264
	ds_load_u8 v109, v8 offset:1232
	ds_load_u8 v110, v8 offset:1200
	ds_load_u8 v111, v8 offset:1168
	ds_load_u8 v97, v8 offset:1136
	ds_load_u8 v98, v8 offset:1104
	ds_load_u8 v112, v8 offset:1072
	ds_load_u8 v113, v8 offset:1040
	v_lshl_or_b32 v51, v59, 16, v58
	v_lshl_or_b32 v63, v68, 16, v67
	v_lshl_or_b32 v62, v69, 16, v70
	v_perm_b32 v67, v91, v90, 0xc0c0004
	v_perm_b32 v68, v89, v88, 0xc0c0004
	v_perm_b32 v69, v94, v93, 0xc0c0004
	v_perm_b32 v70, v78, v92, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v96, v104, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[28:31], v[62:65], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v68, 16, v67
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v106, v105, 0xc0c0004
	v_lshl_or_b32 v28, v70, 16, v69
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v103, v83, 0xc0c0004
	ds_load_u8 v83, v8 offset:1952
	ds_load_u8 v103, v8 offset:1920
	ds_load_u8 v114, v8 offset:2016
	ds_load_u8 v115, v8 offset:1984
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v109, v33, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v98, v97, 0xc0c0004
	v_lshl_or_b32 v50, v96, 16, v60
	ds_load_u8 v1, v8 offset:1824
	ds_load_u8 v3, v8 offset:1792
	ds_load_u8 v58, v8 offset:1888
	ds_load_u8 v59, v8 offset:1856
	ds_load_u8 v60, v8 offset:1696
	ds_load_u8 v61, v8 offset:1664
	ds_load_u8 v84, v8 offset:1760
	ds_load_u8 v96, v8 offset:1728
	ds_load_u8 v2, v2
	ds_load_u8 v104, v8 offset:2000
	ds_load_u8 v116, v8 offset:1968
	ds_load_u8 v117, v8 offset:1936
	v_perm_b32 v63, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v64, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[54:57], v[50:53], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v59, v58, 0xc0c0004
	v_perm_b32 v83, v103, v83, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v128, v61, v60, 0xc0c0004
	v_perm_b32 v103, v115, v114, 0xc0c0004
	ds_load_u8 v114, v8 offset:1568
	ds_load_u8 v115, v8 offset:1536
	ds_load_u8 v118, v8 offset:1632
	ds_load_u8 v119, v8 offset:1600
	ds_load_u8 v120, v8 offset:1904
	ds_load_u8 v121, v8 offset:1872
	ds_load_u8 v122, v8 offset:1840
	ds_load_u8 v123, v8 offset:1808
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v84, v96, v84, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[58:61], v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v52, v3, 16, v1
	v_lshl_or_b32 v53, v103, 16, v83
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v79, v2, 0xc0c0004
	v_lshl_or_b32 v51, v84, 16, v128
	ds_load_u8 v32, v8 offset:1648
	ds_load_u8 v83, v8 offset:1616
	ds_load_u8 v84, v8 offset:1584
	ds_load_u8 v8, v8 offset:1552
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v3, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v50, v3, 16, v1
	v_perm_b32 v1, v81, v80, 0xc0c0004
	v_perm_b32 v3, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[58:61], v[50:53], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v31, v2, 16, v1
	v_lshl_or_b32 v30, v66, 16, v3
	v_perm_b32 v1, v102, v101, 0xc0c0004
	v_perm_b32 v2, v100, v99, 0xc0c0004
	v_perm_b32 v3, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v8, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[4:7], v[28:31], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v5, v117, v116, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	v_lshl_or_b32 v3, v62, 16, v3
	v_lshl_or_b32 v2, v33, 16, v63
	v_lshl_or_b32 v1, v65, 16, v64
	v_perm_b32 v6, v104, v77, 0xc0c0004
	v_perm_b32 v7, v123, v122, 0xc0c0004
	v_perm_b32 v28, v121, v120, 0xc0c0004
	v_perm_b32 v29, v127, v126, 0xc0c0004
	v_perm_b32 v30, v125, v124, 0xc0c0004
	v_perm_b32 v31, v83, v32, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[54:57], v[1:4], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v6, 16, v5
	v_lshl_or_b32 v3, v28, 16, v7
	v_lshl_or_b32 v2, v30, 16, v29
	v_lshl_or_b32 v1, v31, 16, v8
	v_cvt_f32_i32_e32 v7, v42
	v_cvt_f32_i32_e32 v8, v43
	v_cvt_f32_i32_e32 v28, v44
	v_cvt_f32_i32_e32 v29, v45
	v_wmma_i32_16x16x16_iu8 v[34:41], v[58:61], v[1:4], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v30, v46
	v_cvt_f32_i32_e32 v31, v47
	v_cvt_f32_i32_e32 v32, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s19, v27
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v26, v8 :: v_dual_and_b32 v1, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v15, v7 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v1, v3, v1, s18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v3, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v23, v30 :: v_dual_and_b32 v45, 0x7f, v0
	v_dual_add_f32 v28, v25, v28 :: v_dual_lshlrev_b32 v1, 1, v1
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
	v_or_b32_e32 v27, 16, v1
	v_or_b32_e32 v42, 20, v1
	v_or_b32_e32 v43, 24, v1
	v_or_b32_e32 v44, 28, v1
	s_clause 0x7
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v46, v0, 7, 1
	v_lshrrev_b32_e32 v47, 7, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v13, v39 :: v_dual_and_b32 v48, 14, v0
	v_dual_add_f32 v41, v11, v41 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v49, 0x440, 0, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v29, v24, v29 :: v_dual_add_f32 v32, v21, v32
	v_dual_add_f32 v31, v22, v31 :: v_dual_add_f32 v34, v19, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v33, v20, v33 :: v_dual_and_b32 v0, 0x3f8, v0
	v_dual_add_f32 v36, v17, v36 :: v_dual_add_f32 v35, v18, v35
	v_add_f32_e32 v40, v12, v40
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v49, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v37, v16, v37 :: v_dual_add_f32 v38, v14, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v26, v8, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v26, 0x440, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v0, v48, 10, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v15, v7, s2
	v_cndmask_b32_e64 v15, v25, v28, s2
	v_cndmask_b32_e64 v24, v24, v29, s2
	v_cndmask_b32_e64 v20, v20, v33, s2
	v_cndmask_b32_e64 v19, v19, v34, s2
	v_cndmask_b32_e64 v18, v18, v35, s2
	v_cndmask_b32_e64 v17, v17, v36, s2
	v_cndmask_b32_e64 v16, v16, v37, s2
	v_cndmask_b32_e64 v28, v14, v38, s2
	v_cndmask_b32_e64 v13, v13, v39, s2
	v_cndmask_b32_e64 v29, v11, v41, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v34, v0, 8, 0
	v_xad_u32 v35, v0, 16, 0
	v_xad_u32 v36, v0, 24, 0
	v_xad_u32 v37, v0, 32, 0
	v_xad_u32 v38, v0, 40, 0
	v_xad_u32 v39, v0, 48, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v25, s29, v47
	s_mul_i32 s3, s19, s29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v30, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s3, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v31, s2
	v_cndmask_b32_e64 v21, v21, v32, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v25, s3, v45, v25
	s_lshl_b32 s4, s29, 1
	s_lshl_b32 s5, s29, 2
	s_mul_i32 s8, s29, 6
	s_lshl_b32 s9, s29, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v31, v25, s4, 2
	v_add_lshl_u32 v32, v25, s5, 2
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
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v10, 6, v10
	v_add_nc_u32_e32 v33, 0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v10, v26, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v12, v40, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v40, v0, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v0, 16, v2
	v_lshlrev_b32_e32 v2, 16, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v4
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v44
	v_lshlrev_b32_e32 v4, 16, v5
	v_lshlrev_b32_e32 v5, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v55, v2, v5
	v_mul_f32_e32 v12, v0, v1
	v_mul_f32_e32 v1, v2, v1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v9, 0x380, v9
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v1, v19, v1 :: v_dual_lshlrev_b32 v6, 16, v27
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v59, v2, v11 :: v_dual_lshlrev_b32 v14, 2, v48
	v_mul_f32_e32 v54, v2, v4
	v_mul_f32_e32 v27, v0, v4
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v19, v25, s11, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or3_b32 v9, v9, v14, v10
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v10, 16, v43
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v41, 0, v9
	v_xad_u32 v45, 0x808, v9, 0
	v_xad_u32 v46, 0x1010, v9, 0
	v_xad_u32 v47, 0x1818, v9, 0
	v_xad_u32 v48, 0x2020, v9, 0
	v_xad_u32 v49, 0x2828, v9, 0
	v_xad_u32 v50, 0x3030, v9, 0
	v_xad_u32 v51, 0x3838, v9, 0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v9, 16, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v0, v9
	v_mul_f32_e32 v42, v0, v5
	v_mul_f32_e32 v14, v0, v3
	v_mul_f32_e32 v3, v2, v3
	v_mul_f32_e32 v57, v2, v9
	v_mul_f32_e32 v43, v0, v6
	v_mul_f32_e32 v56, v2, v6
	v_dual_mul_f32 v53, v0, v11 :: v_dual_lshlrev_b32 v30, 2, v25
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v17, v54
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v0, v10
	v_mul_f32_e32 v58, v2, v10
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v0, v7, v12
	v_dual_mul_f32 v2, v8, v14 :: v_dual_mul_f32 v3, v18, v3
	v_dual_mul_f32 v4, v15, v27 :: v_dual_mul_f32 v9, v28, v56
	v_dual_mul_f32 v6, v24, v42 :: v_dual_mul_f32 v11, v13, v57
	v_mul_f32_e32 v7, v16, v55
	v_dual_mul_f32 v8, v23, v43 :: v_dual_mul_f32 v13, v26, v58
	v_dual_mul_f32 v10, v22, v44 :: v_dual_mul_f32 v15, v29, v59
	v_mul_f32_e32 v12, v21, v52
	v_mul_f32_e32 v14, v20, v53
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_b64 v33, v[0:1]
	ds_store_b64 v34, v[2:3]
	ds_store_b64 v35, v[4:5]
	ds_store_b64 v36, v[6:7]
	ds_store_b64 v37, v[8:9]
	ds_store_b64 v38, v[10:11]
	ds_store_b64 v39, v[12:13]
	ds_store_b64 v40, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v41
	ds_load_b64 v[2:3], v45
	ds_load_b64 v[4:5], v46
	ds_load_b64 v[6:7], v47
	ds_load_b64 v[8:9], v48
	ds_load_b64 v[10:11], v49
	ds_load_b64 v[12:13], v50
	ds_load_b64 v[14:15], v51
	v_add_lshl_u32 v16, v25, s8, 2
	v_add_lshl_u32 v17, v25, s9, 2
	v_add_lshl_u32 v18, v25, s10, 2
	v_add_lshl_u32 v20, v25, s12, 2
	v_add_lshl_u32 v21, v25, s13, 2
	v_add_lshl_u32 v22, v25, s14, 2
	v_add_lshl_u32 v23, v25, s15, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v30, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v31, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v32, s[16:19], 0 offen
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
	v_add_lshl_u32 v24, v25, s20, 2
	v_add_lshl_u32 v26, v25, s21, 2
	v_add_lshl_u32 v27, v25, s22, 2
	v_add_lshl_u32 v28, v25, s23, 2
	v_add_lshl_u32 v0, v25, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v24, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v26, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v27, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v28, s[16:19], 0 offen
	buffer_atomic_add_f32 v15, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 212
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12756
; TotalNumSgprs: 38
; NumVgprs: 212
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
