	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v3, 7, v0
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v9, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 62, v2
	v_and_b32_e32 v45, 8, v0
	v_and_b32_e32 v46, 32, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v44, 0, v9
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
	v_lshlrev_b32_e32 v1, 4, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[5:6], null, s29, v4, v[1:2]
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
	v_or_b32_e32 v6, s8, v4
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
	v_add3_u32 v7, s18, s4, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s7, s31, 0x1ff
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s7, 0x1ff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s29, v7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s8, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s30, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v6, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v5, s[24:27], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v6, s28, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_cmpk_gt_i32 s7, 0x3ff
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s9, s8, 0x200
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s33, s29, 9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v10, s9, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s33, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v6, v6, v5, s19
	s_mul_i32 s4, s28, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s29, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s4, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_clause 0x1
	buffer_load_b128 v[20:23], v7, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v10, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s3, s28, 9
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v10, 0x80, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v6, s4, s3, v6
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[28:31], v7, s[12:15], 0 offen
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s9, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 3, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 6, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s7, 0x5ff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	buffer_load_b128 v[32:35], v6, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 0x420, v6
	v_xor_b32_e32 v6, v6, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v47, v7, 10, v6
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshlrev_b32_e32 v7, 3, v7
	v_xor_b32_e32 v48, 0x90, v47
	v_xor_b32_e32 v49, 0x120, v47
	v_xor_b32_e32 v50, 0x1b0, v47
	v_xor_b32_e32 v51, 0x210, v47
	v_xor_b32_e32 v52, 0x330, v47
	v_xor_b32_e32 v53, 0x3a0, v47
	v_add_nc_u32_e32 v54, 0, v47
	v_add_nc_u32_e32 v55, 0, v48
	v_add_nc_u32_e32 v56, 0, v49
	v_add_nc_u32_e32 v57, 0, v50
	v_add_nc_u32_e32 v58, 0, v51
	v_add_nc_u32_e32 v59, 0, v52
	v_add_nc_u32_e32 v60, 0, v53
	s_waitcnt vmcnt(4)
	v_perm_b32 v36, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v37, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v38, v18, v14, 0x5010400
	v_lshrrev_b32_e32 v41, 8, v36
	v_lshrrev_b32_e32 v42, 24, v36
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v39, v19, v15, 0x5010400
	v_perm_b32 v40, v19, v15, 0x7030602
	v_lshrrev_b32_e32 v43, 8, v16
	v_and_b16 v12.l, 0xff, v36.l
	v_and_b16 v12.h, 0xff, v36.h
	v_lshrrev_b32_e32 v61, 24, v16
	v_lshlrev_b16 v36.l, 8, v41.l
	v_lshlrev_b16 v36.h, 8, v42.l
	v_lshrrev_b32_e32 v62, 8, v37
	v_lshrrev_b32_e32 v63, 24, v37
	v_lshrrev_b32_e32 v64, 8, v17
	v_lshrrev_b32_e32 v65, 24, v17
	v_lshrrev_b32_e32 v66, 8, v38
	v_lshrrev_b32_e32 v67, 24, v38
	v_lshrrev_b32_e32 v68, 8, v18
	v_lshrrev_b32_e32 v69, 24, v18
	v_lshrrev_b32_e32 v70, 8, v39
	v_lshrrev_b32_e32 v71, 24, v39
	v_lshrrev_b32_e32 v72, 8, v40
	v_lshrrev_b32_e32 v73, 24, v40
	v_and_b16 v13.l, 0xff, v16.l
	v_and_b16 v14.l, 0xff, v37.l
	v_lshlrev_b16 v37.l, 8, v43.l
	v_and_b16 v13.h, 0xff, v16.h
	v_and_b16 v14.h, 0xff, v37.h
	v_lshlrev_b16 v37.h, 8, v61.l
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v36, v24, v20, 0x5010400
	v_and_b16 v15.l, 0xff, v17.l
	v_and_b16 v15.h, 0xff, v17.h
	v_and_b16 v16.l, 0xff, v38.l
	v_and_b16 v16.h, 0xff, v38.h
	v_and_b16 v17.l, 0xff, v18.l
	v_and_b16 v17.h, 0xff, v18.h
	v_and_b16 v18.l, 0xff, v39.l
	v_and_b16 v18.h, 0xff, v39.h
	v_and_b16 v19.l, 0xff, v40.l
	v_and_b16 v19.h, 0xff, v40.h
	v_lshlrev_b16 v38.l, 8, v62.l
	v_lshlrev_b16 v38.h, 8, v63.l
	v_lshlrev_b16 v39.l, 8, v64.l
	v_lshlrev_b16 v39.h, 8, v65.l
	v_lshlrev_b16 v40.l, 8, v66.l
	v_lshlrev_b16 v40.h, 8, v67.l
	v_lshlrev_b16 v41.l, 8, v68.l
	v_lshlrev_b16 v41.h, 8, v69.l
	v_lshlrev_b16 v42.l, 8, v70.l
	v_lshlrev_b16 v42.h, 8, v71.l
	v_lshlrev_b16 v43.l, 8, v72.l
	v_lshlrev_b16 v43.h, 8, v73.l
	v_perm_b32 v20, v24, v20, 0x7030602
	v_or_b16 v13.l, v13.l, v37.l
	v_perm_b32 v24, v25, v21, 0x5010400
	v_perm_b32 v21, v25, v21, 0x7030602
	v_perm_b32 v25, v26, v22, 0x5010400
	v_perm_b32 v22, v26, v22, 0x7030602
	v_perm_b32 v26, v27, v23, 0x5010400
	v_perm_b32 v23, v27, v23, 0x7030602
	v_or_b16 v13.h, v13.h, v37.h
	v_lshrrev_b32_e32 v27, 8, v36
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	v_or_b16 v18.l, v18.l, v42.l
	v_or_b16 v18.h, v18.h, v42.h
	v_or_b16 v19.l, v19.l, v43.l
	v_or_b16 v19.h, v19.h, v43.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[28:31] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v12
	ds_store_b16_d16_hi v54, v12 offset:64
	ds_store_b16 v55, v13
	ds_store_b16_d16_hi v55, v13 offset:64
	ds_store_b16 v56, v14
	ds_store_b16_d16_hi v56, v14 offset:64
	ds_store_b16 v57, v15
	ds_store_b16_d16_hi v57, v15 offset:64
	ds_store_b16 v58, v16
	ds_store_b16_d16_hi v58, v16 offset:64
	ds_store_b16 v54, v17 offset:640
	ds_store_b16_d16_hi v54, v17 offset:704
	ds_store_b16 v59, v18
	ds_store_b16_d16_hi v59, v18 offset:64
	ds_store_b16 v60, v19
	ds_store_b16_d16_hi v60, v19 offset:64
	v_lshrrev_b32_e32 v28, 24, v36
	v_lshrrev_b32_e32 v29, 8, v20
	v_lshrrev_b32_e32 v30, 24, v20
	v_and_b16 v12.l, 0xff, v36.l
	v_and_b16 v12.h, 0xff, v36.h
	v_and_b16 v14.l, 0xff, v24.l
	v_lshrrev_b32_e32 v31, 8, v24
	v_lshrrev_b32_e32 v36, 24, v24
	v_and_b16 v14.h, 0xff, v24.h
	v_lshrrev_b32_e32 v24, 8, v21
	v_lshrrev_b32_e32 v37, 24, v21
	v_and_b16 v16.l, 0xff, v25.l
	v_lshrrev_b32_e32 v38, 8, v25
	v_lshrrev_b32_e32 v39, 24, v25
	v_and_b16 v16.h, 0xff, v25.h
	v_lshrrev_b32_e32 v25, 8, v22
	v_lshrrev_b32_e32 v40, 24, v22
	v_lshrrev_b32_e32 v41, 8, v26
	v_lshrrev_b32_e32 v42, 24, v26
	v_lshrrev_b32_e32 v43, 8, v23
	v_lshrrev_b32_e32 v61, 24, v23
	v_and_b16 v13.l, 0xff, v20.l
	v_lshlrev_b16 v20.l, 8, v27.l
	v_and_b16 v13.h, 0xff, v20.h
	v_lshlrev_b16 v20.h, 8, v28.l
	v_and_b16 v15.l, 0xff, v21.l
	v_lshlrev_b16 v21.l, 8, v29.l
	v_and_b16 v15.h, 0xff, v21.h
	v_lshlrev_b16 v21.h, 8, v30.l
	v_and_b16 v17.l, 0xff, v22.l
	v_and_b16 v17.h, 0xff, v22.h
	v_and_b16 v18.l, 0xff, v26.l
	v_and_b16 v18.h, 0xff, v26.h
	v_and_b16 v19.l, 0xff, v23.l
	v_and_b16 v19.h, 0xff, v23.h
	v_lshlrev_b16 v22.l, 8, v31.l
	v_lshlrev_b16 v22.h, 8, v36.l
	v_lshlrev_b16 v23.l, 8, v24.l
	v_lshlrev_b16 v23.h, 8, v37.l
	v_lshlrev_b16 v24.l, 8, v38.l
	v_lshlrev_b16 v24.h, 8, v39.l
	v_lshlrev_b16 v25.l, 8, v25.l
	v_lshlrev_b16 v25.h, 8, v40.l
	v_lshlrev_b16 v26.l, 8, v41.l
	v_lshlrev_b16 v26.h, 8, v42.l
	v_lshlrev_b16 v27.l, 8, v43.l
	v_lshlrev_b16 v27.h, 8, v61.l
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v13.h, v13.h, v21.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_or_b16 v17.l, v17.l, v25.l
	v_or_b16 v17.h, v17.h, v25.h
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v19.h, v19.h, v27.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[32:35] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v12 offset:8192
	ds_store_b16_d16_hi v54, v12 offset:8256
	ds_store_b16 v55, v13 offset:8192
	ds_store_b16_d16_hi v55, v13 offset:8256
	ds_store_b16 v56, v14 offset:8192
	ds_store_b16_d16_hi v56, v14 offset:8256
	ds_store_b16 v57, v15 offset:8192
	ds_store_b16_d16_hi v57, v15 offset:8256
	ds_store_b16 v58, v16 offset:8192
	ds_store_b16_d16_hi v58, v16 offset:8256
	ds_store_b16 v54, v17 offset:8832
	ds_store_b16_d16_hi v54, v17 offset:8896
	ds_store_b16 v59, v18 offset:8192
	ds_store_b16_d16_hi v59, v18 offset:8256
	ds_store_b16 v60, v19 offset:8192
	ds_store_b16_d16_hi v60, v19 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v56, 8, v0
	v_and_b32_e32 v57, 32, v0
	v_and_b32_e32 v54, 0x800, v6
	v_lshl_or_b32 v55, v3, 6, v7
	s_mov_b32 s9, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
.LBB0_3:                                ; %Flow47
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v11
	v_and_or_b32 v44, v0, 15, v8
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v4, s8, v4
	v_lshl_or_b32 v55, v3, 6, v7
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s4, s6, 7
	v_bfe_i32 v8, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v13, 0x401, v4
	v_add_nc_u32_e32 v56, 0x400, v4
	v_bfe_i32 v12, v0, 3, 1
	v_add3_u32 v57, s8, v2, 0x400
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s7, 9
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mul_lo_u32 v4, s29, v13
	v_mul_lo_u32 v7, s29, v56
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_add3_u32 v4, v4, s4, v1
	v_add3_u32 v1, v7, s4, v1
	s_lshl_b32 s4, s5, 7
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v59, s4, v4
	v_subrev_nc_u32_e32 v60, s4, v1
	s_mov_b32 s4, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v8, 0x420, v8
	v_and_b32_e32 v54, 0x800, v6
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v3, 0x210, v12, v8
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v41, 0
	v_xor_b32_e32 v2, v3, v55
	v_mul_lo_u32 v3, s28, v57
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v58, v2, v54
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_add3_u32 v64, v3, s19, v5
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v61, 16, v58
	v_xor_b32_e32 v62, 32, v58
	v_xor_b32_e32 v63, 48, v58
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, 0
	s_add_i32 s35, s1, -2
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s28, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v57
	s_mov_b32 s7, s34
	s_mov_b32 s6, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v67, s7, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v68, s6, v58
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v65, 0x80000000, v64, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v69, s6, v61
	v_add_nc_u32_e32 v70, s6, v62
	v_add_nc_u32_e32 v71, s6, v63
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[97:100], v65, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v66, 0x80000000, v60 :: v_dual_cndmask_b32 v65, 0x80000000, v59
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s4, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[101:104], v66, s[24:27], 0 offen
	buffer_load_b128 v[133:136], v65, s[24:27], 0 offen
	ds_load_b128 v[89:92], v68
	ds_load_b128 v[105:108], v68 offset:4096
	ds_load_b128 v[109:112], v69
	ds_load_b128 v[113:116], v69 offset:4096
	ds_load_b128 v[117:120], v70
	ds_load_b128 v[121:124], v70 offset:4096
	ds_load_b128 v[125:128], v71
	ds_load_b128 v[129:132], v71 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v67 offset:64
	ds_load_u8 v68, v67
	ds_load_u8 v69, v67 offset:192
	ds_load_u8 v70, v67 offset:128
	ds_load_u8 v71, v67 offset:224
	ds_load_u8 v72, v67 offset:160
	ds_load_u8 v73, v67 offset:96
	ds_load_u8 v74, v67 offset:32
	ds_load_u8 v75, v67 offset:2624
	ds_load_u8 v76, v67 offset:2560
	ds_load_u8 v77, v67 offset:2752
	ds_load_u8 v78, v67 offset:832
	ds_load_u8 v79, v67 offset:768
	ds_load_u8 v80, v67 offset:960
	ds_load_u8 v81, v67 offset:896
	ds_load_u8 v82, v67 offset:992
	ds_load_u8 v83, v67 offset:928
	ds_load_u8 v84, v67 offset:864
	ds_load_u8 v85, v67 offset:800
	ds_load_u8 v86, v67 offset:576
	ds_load_u8 v87, v67 offset:512
	ds_load_u8 v88, v67 offset:704
	ds_load_u8 v93, v67 offset:640
	ds_load_u8 v94, v67 offset:736
	ds_load_u8 v95, v67 offset:672
	ds_load_u8 v96, v67 offset:608
	ds_load_u8 v137, v67 offset:544
	ds_load_u8 v138, v67 offset:320
	ds_load_u8 v139, v67 offset:256
	ds_load_u8 v140, v67 offset:448
	ds_load_u8 v141, v67 offset:384
	ds_load_u8 v142, v67 offset:480
	ds_load_u8 v143, v67 offset:416
	ds_load_u8 v144, v67 offset:352
	ds_load_u8 v145, v67 offset:288
	ds_load_u8 v146, v67 offset:1856
	ds_load_u8 v147, v67 offset:1792
	ds_load_u8 v148, v67 offset:1984
	ds_load_u8 v149, v67 offset:1920
	ds_load_u8 v150, v67 offset:2016
	ds_load_u8 v151, v67 offset:1952
	ds_load_u8 v152, v67 offset:1888
	ds_load_u8 v153, v67 offset:1824
	ds_load_u8 v154, v67 offset:1600
	ds_load_u8 v155, v67 offset:1536
	ds_load_u8 v156, v67 offset:1728
	ds_load_u8 v157, v67 offset:1664
	ds_load_u8 v158, v67 offset:1760
	ds_load_u8 v159, v67 offset:1696
	ds_load_u8 v160, v67 offset:1632
	ds_load_u8 v161, v67 offset:1568
	ds_load_u8 v162, v67 offset:1344
	ds_load_u8 v163, v67 offset:1280
	ds_load_u8 v164, v67 offset:1472
	ds_load_u8 v165, v67 offset:1408
	ds_load_u8 v166, v67 offset:1504
	ds_load_u8 v167, v67 offset:1440
	ds_load_u8 v168, v67 offset:1376
	ds_load_u8 v169, v67 offset:1312
	ds_load_u8 v170, v67 offset:1088
	ds_load_u8 v171, v67 offset:1024
	ds_load_u8 v172, v67 offset:1216
	ds_load_u8 v173, v67 offset:1152
	ds_load_u8 v174, v67 offset:1248
	ds_load_u8 v175, v67 offset:1184
	ds_load_u8 v176, v67 offset:1120
	ds_load_u8 v177, v67 offset:1056
	ds_load_u8 v178, v67 offset:2880
	ds_load_u8 v179, v67 offset:2816
	ds_load_u8 v180, v67 offset:3008
	ds_load_u8 v181, v67 offset:2944
	ds_load_u8 v182, v67 offset:3040
	ds_load_u8 v183, v67 offset:2976
	ds_load_u8 v184, v67 offset:2912
	ds_load_u8 v185, v67 offset:2848
	ds_load_u8 v65, v67 offset:2688
	ds_load_u8 v186, v67 offset:2784
	ds_load_u8 v187, v67 offset:2720
	ds_load_u8 v188, v67 offset:2656
	ds_load_u8 v189, v67 offset:2592
	ds_load_u8 v190, v67 offset:2368
	ds_load_u8 v191, v67 offset:2304
	ds_load_u8 v192, v67 offset:2496
	ds_load_u8 v193, v67 offset:2432
	ds_load_u8 v194, v67 offset:2528
	ds_load_u8 v195, v67 offset:2464
	ds_load_u8 v196, v67 offset:2400
	ds_load_u8 v197, v67 offset:2336
	ds_load_u8 v198, v67 offset:2112
	ds_load_u8 v199, v67 offset:2048
	ds_load_u8 v200, v67 offset:2240
	ds_load_u8 v201, v67 offset:2176
	ds_load_u8 v202, v67 offset:2272
	ds_load_u8 v203, v67 offset:2208
	ds_load_u8 v204, v67 offset:2144
	ds_load_u8 v205, v67 offset:2080
	ds_load_u8 v206, v67 offset:3904
	ds_load_u8 v207, v67 offset:3840
	ds_load_u8 v208, v67 offset:4032
	ds_load_u8 v209, v67 offset:3968
	ds_load_u8 v210, v67 offset:4064
	ds_load_u8 v211, v67 offset:4000
	ds_load_u8 v212, v67 offset:3936
	ds_load_u8 v213, v67 offset:3872
	ds_load_u8 v214, v67 offset:3648
	ds_load_u8 v215, v67 offset:3584
	ds_load_u8 v216, v67 offset:3776
	ds_load_u8 v217, v67 offset:3712
	ds_load_u8 v218, v67 offset:3808
	ds_load_u8 v219, v67 offset:3744
	ds_load_u8 v220, v67 offset:3680
	ds_load_u8 v221, v67 offset:3616
	ds_load_u8 v222, v67 offset:3392
	ds_load_u8 v223, v67 offset:3328
	ds_load_u8 v224, v67 offset:3520
	ds_load_u8 v225, v67 offset:3456
	ds_load_u8 v226, v67 offset:3552
	ds_load_u8 v227, v67 offset:3488
	ds_load_u8 v228, v67 offset:3424
	ds_load_u8 v229, v67 offset:3360
	ds_load_u8 v230, v67 offset:3136
	ds_load_u8 v231, v67 offset:3072
	ds_load_u8 v232, v67 offset:3264
	ds_load_u8 v233, v67 offset:3200
	ds_load_u8 v234, v67 offset:3296
	ds_load_u8 v235, v67 offset:3232
	ds_load_u8 v236, v67 offset:3168
	ds_load_u8 v67, v67 offset:3104
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v79, v81, v80, 0xc0c0004
	v_perm_b32 v80, v87, v86, 0xc0c0004
	v_perm_b32 v81, v93, v88, 0xc0c0004
	v_perm_b32 v86, v139, v138, 0xc0c0004
	v_perm_b32 v87, v141, v140, 0xc0c0004
	v_perm_b32 v66, v68, v66, 0xc0c0004
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_perm_b32 v69, v147, v146, 0xc0c0004
	v_perm_b32 v70, v149, v148, 0xc0c0004
	v_perm_b32 v88, v155, v154, 0xc0c0004
	v_perm_b32 v93, v157, v156, 0xc0c0004
	v_perm_b32 v138, v163, v162, 0xc0c0004
	v_perm_b32 v141, v165, v164, 0xc0c0004
	v_perm_b32 v146, v171, v170, 0xc0c0004
	v_perm_b32 v147, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v148, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v149, v181, v180, 0xc0c0004
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v65, v65, v77, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v154, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v155, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v156, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v157, v209, v208, 0xc0c0004
	v_perm_b32 v85, v85, v84, 0xc0c0004
	v_perm_b32 v172, v83, v82, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v153, v152, 0xc0c0004
	v_perm_b32 v74, v151, v150, 0xc0c0004
	v_perm_b32 v153, v161, v160, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	v_perm_b32 v160, v167, v166, 0xc0c0004
	v_perm_b32 v161, v177, v176, 0xc0c0004
	v_perm_b32 v166, v175, v174, 0xc0c0004
	v_perm_b32 v167, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v236, 0xc0c0004
	v_perm_b32 v185, v235, v234, 0xc0c0004
	v_lshl_or_b32 v84, v79, 16, v78
	v_lshl_or_b32 v83, v81, 16, v80
	v_lshl_or_b32 v82, v87, 16, v86
	v_lshl_or_b32 v81, v68, 16, v66
	v_perm_b32 v76, v191, v190, 0xc0c0004
	v_perm_b32 v77, v193, v192, 0xc0c0004
	v_perm_b32 v96, v137, v96, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v145, v144, 0xc0c0004
	v_perm_b32 v173, v143, v142, 0xc0c0004
	v_lshl_or_b32 v140, v70, 16, v69
	v_lshl_or_b32 v139, v93, 16, v88
	v_lshl_or_b32 v138, v141, 16, v138
	v_lshl_or_b32 v137, v147, 16, v146
	v_lshl_or_b32 v144, v149, 16, v148
	v_lshl_or_b32 v143, v65, 16, v75
	v_lshl_or_b32 v141, v155, 16, v154
	v_lshl_or_b32 v148, v157, 16, v156
	v_lshl_or_b32 v149, v71, 16, v73
	v_lshl_or_b32 v156, v74, 16, v72
	v_lshl_or_b32 v155, v158, 16, v153
	v_lshl_or_b32 v153, v166, 16, v161
	v_lshl_or_b32 v161, v185, 16, v67
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v162, v215, v214, 0xc0c0004
	v_perm_b32 v163, v217, v216, 0xc0c0004
	v_perm_b32 v164, v223, v222, 0xc0c0004
	v_perm_b32 v165, v225, v224, 0xc0c0004
	v_perm_b32 v170, v231, v230, 0xc0c0004
	v_perm_b32 v171, v233, v232, 0xc0c0004
	v_perm_b32 v159, v169, v168, 0xc0c0004
	v_lshl_or_b32 v142, v77, 16, v76
	v_lshl_or_b32 v152, v172, 16, v85
	v_lshl_or_b32 v151, v94, 16, v96
	v_lshl_or_b32 v150, v173, 16, v95
	v_wmma_i32_16x16x16_iu8 v[73:80], v[105:108], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[109:112], v[137:140], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v168, v183, v182, 0xc0c0004
	v_perm_b32 v169, v189, v188, 0xc0c0004
	v_perm_b32 v174, v187, v186, 0xc0c0004
	v_perm_b32 v175, v197, v196, 0xc0c0004
	v_perm_b32 v176, v195, v194, 0xc0c0004
	v_perm_b32 v177, v205, v204, 0xc0c0004
	v_perm_b32 v178, v203, v202, 0xc0c0004
	v_lshl_or_b32 v147, v163, 16, v162
	v_lshl_or_b32 v146, v165, 16, v164
	v_lshl_or_b32 v145, v171, 16, v170
	v_lshl_or_b32 v154, v160, 16, v159
	v_wmma_i32_16x16x16_iu8 v[81:88], v[89:92], v[149:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[105:108], v[149:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[113:116], v[137:140], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[117:120], v[141:144], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v179, v213, v212, 0xc0c0004
	v_perm_b32 v180, v211, v210, 0xc0c0004
	v_perm_b32 v181, v221, v220, 0xc0c0004
	v_perm_b32 v182, v219, v218, 0xc0c0004
	v_perm_b32 v183, v229, v228, 0xc0c0004
	v_perm_b32 v184, v227, v226, 0xc0c0004
	v_lshl_or_b32 v160, v168, 16, v167
	v_lshl_or_b32 v159, v174, 16, v169
	v_lshl_or_b32 v158, v176, 16, v175
	v_lshl_or_b32 v157, v178, 16, v177
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[153:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[113:116], v[153:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[121:124], v[141:144], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[125:128], v[145:148], v[65:72] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v164, v180, 16, v179
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s1, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v163, v182, 16, v181
	v_lshl_or_b32 v162, v184, 16, v183
	v_wmma_i32_16x16x16_iu8 v[81:88], v[117:120], v[157:160], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[121:124], v[157:160], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[129:132], v[145:148], v[73:80] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s5, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v43, v43, v66 :: v_dual_add_nc_u32 v64, s3, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[81:88], v[125:128], v[161:164], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[129:132], v[161:164], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s6, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v68
	v_dual_add_f32 v39, v39, v70 :: v_dual_add_nc_u32 v56, 0x200, v56
	v_dual_add_f32 v38, v38, v71 :: v_dual_add_nc_u32 v57, 0x200, v57
	v_dual_add_f32 v35, v35, v74 :: v_dual_add_nc_u32 v238, s1, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v40, v69 :: v_dual_add_f32 v37, v37, v72
	v_add_f32_e32 v36, v36, v73
	v_add_f32_e32 v34, v34, v75
	v_dual_add_f32 v33, v33, v76 :: v_dual_add_nc_u32 v240, s1, v49
	v_dual_add_f32 v32, v32, v77 :: v_dual_add_nc_u32 v59, s33, v59
	v_dual_add_f32 v30, v30, v78 :: v_dual_add_nc_u32 v237, s6, v9
	v_dual_add_f32 v31, v31, v65 :: v_dual_add_nc_u32 v60, s33, v60
	v_dual_add_f32 v26, v26, v82 :: v_dual_add_nc_u32 v239, s1, v48
	v_dual_add_f32 v28, v28, v80 :: v_dual_add_nc_u32 v241, s1, v50
	v_dual_add_f32 v27, v27, v81 :: v_dual_add_nc_u32 v242, s1, v51
	v_dual_add_f32 v22, v22, v86 :: v_dual_add_nc_u32 v243, s1, v52
	v_dual_add_f32 v29, v29, v79 :: v_dual_add_nc_u32 v244, s1, v53
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v83 :: v_dual_add_f32 v24, v24, v84
	v_dual_add_f32 v23, v23, v85 :: v_dual_add_f32 v20, v20, v88
	v_dual_add_f32 v21, v21, v87 :: v_dual_add_f32 v18, v18, v90
	v_dual_add_f32 v19, v19, v89 :: v_dual_add_f32 v16, v16, v92
	v_dual_add_f32 v17, v17, v91 :: v_dual_add_f32 v14, v14, v94
	v_dual_add_f32 v15, v15, v93 :: v_dual_add_f32 v12, v12, v96
	v_add_f32_e32 v13, v13, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s35, s35, -1
	s_mov_b32 s34, s28
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s28, s6, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s35, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v237, v[97:100] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v66, v133, v101, 0x5010400
	v_perm_b32 v67, v133, v101, 0x7030602
	v_perm_b32 v68, v134, v102, 0x5010400
	v_perm_b32 v69, v134, v102, 0x7030602
	v_perm_b32 v70, v135, v103, 0x5010400
	v_perm_b32 v71, v135, v103, 0x7030602
	v_perm_b32 v72, v136, v104, 0x5010400
	v_perm_b32 v73, v136, v104, 0x7030602
	v_lshrrev_b32_e32 v74, 8, v66
	v_lshrrev_b32_e32 v75, 24, v66
	v_lshrrev_b32_e32 v76, 8, v67
	v_lshrrev_b32_e32 v77, 24, v67
	v_lshrrev_b32_e32 v78, 8, v68
	v_and_b16 v65.l, 0xff, v66.l
	v_and_b16 v66.l, 0xff, v67.l
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v79, 24, v68
	v_and_b16 v68.l, 0xff, v69.l
	v_lshrrev_b32_e32 v80, 8, v69
	v_lshrrev_b32_e32 v81, 24, v69
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v82, 8, v70
	v_lshrrev_b32_e32 v83, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v84, 8, v71
	v_lshrrev_b32_e32 v85, 24, v71
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v86, 8, v72
	v_lshrrev_b32_e32 v87, 24, v72
	v_and_b16 v72.l, 0xff, v73.l
	v_lshrrev_b32_e32 v88, 8, v73
	v_lshrrev_b32_e32 v89, 24, v73
	v_lshlrev_b16 v73.l, 8, v74.l
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.h
	v_and_b16 v71.h, 0xff, v72.h
	v_and_b16 v72.h, 0xff, v73.h
	v_lshlrev_b16 v73.h, 8, v75.l
	v_lshlrev_b16 v74.l, 8, v76.l
	v_lshlrev_b16 v74.h, 8, v77.l
	v_lshlrev_b16 v75.l, 8, v78.l
	v_lshlrev_b16 v75.h, 8, v79.l
	v_lshlrev_b16 v76.l, 8, v80.l
	v_lshlrev_b16 v76.h, 8, v81.l
	v_lshlrev_b16 v77.l, 8, v82.l
	v_lshlrev_b16 v77.h, 8, v83.l
	v_lshlrev_b16 v78.l, 8, v84.l
	v_lshlrev_b16 v78.h, 8, v85.l
	v_lshlrev_b16 v79.l, 8, v86.l
	v_lshlrev_b16 v79.h, 8, v87.l
	v_lshlrev_b16 v80.l, 8, v88.l
	v_lshlrev_b16 v80.h, 8, v89.l
	v_or_b16 v65.l, v65.l, v73.l
	v_or_b16 v65.h, v65.h, v73.h
	v_or_b16 v66.l, v66.l, v74.l
	v_or_b16 v66.h, v66.h, v74.h
	v_or_b16 v67.l, v67.l, v75.l
	v_or_b16 v67.h, v67.h, v75.h
	v_or_b16 v68.l, v68.l, v76.l
	v_or_b16 v68.h, v68.h, v76.h
	v_or_b16 v69.l, v69.l, v77.l
	v_or_b16 v69.h, v69.h, v77.h
	v_or_b16 v70.l, v70.l, v78.l
	v_or_b16 v70.h, v70.h, v78.h
	v_or_b16 v71.l, v71.l, v79.l
	v_or_b16 v71.h, v71.h, v79.h
	v_or_b16 v72.l, v72.l, v80.l
	v_or_b16 v72.h, v72.h, v80.h
	ds_store_b16 v238, v65
	ds_store_b16_d16_hi v238, v65 offset:64
	ds_store_b16 v239, v66
	ds_store_b16_d16_hi v239, v66 offset:64
	ds_store_b16 v240, v67
	ds_store_b16_d16_hi v240, v67 offset:64
	ds_store_b16 v241, v68
	ds_store_b16_d16_hi v241, v68 offset:64
	ds_store_b16 v242, v69
	ds_store_b16_d16_hi v242, v69 offset:64
	ds_store_b16 v238, v70 offset:640
	ds_store_b16_d16_hi v238, v70 offset:704
	ds_store_b16 v243, v71
	ds_store_b16_d16_hi v243, v71 offset:64
	ds_store_b16 v244, v72
	ds_store_b16_d16_hi v244, v72 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v56, v45 :: v_dual_mov_b32 v57, v46
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s28, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v57
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v54
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
	v_add_nc_u32_e32 v61, s34, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v46, v61 offset:832
	ds_load_u8 v47, v61 offset:768
	ds_load_u8 v48, v61 offset:960
	ds_load_u8 v49, v61 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v113, s4, v4
	v_add_nc_u32_e32 v45, s4, v2
	ds_load_b128 v[5:8], v113
	ds_load_b128 v[77:80], v45 offset:4096
	ds_load_b128 v[81:84], v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v45, v61 offset:576
	ds_load_u8 v51, v61 offset:512
	ds_load_u8 v52, v61 offset:704
	ds_load_u8 v53, v61 offset:640
	ds_load_u8 v54, v61 offset:320
	ds_load_u8 v55, v61 offset:256
	ds_load_u8 v56, v61 offset:448
	ds_load_u8 v57, v61 offset:384
	ds_load_u8 v109, v61 offset:992
	ds_load_u8 v110, v61 offset:928
	ds_load_u8 v111, v61 offset:864
	ds_load_u8 v112, v61 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v50, s4, v1
	ds_load_b128 v[85:88], v50 offset:4096
	ds_load_b128 v[89:92], v50
	v_add_nc_u32_e32 v62, s4, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v51, v45, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v47, v49, v48, 0xc0c0004
	ds_load_u8 v48, v61 offset:64
	ds_load_u8 v49, v61
	ds_load_u8 v58, v61 offset:192
	ds_load_u8 v59, v61 offset:128
	ds_load_u8 v114, v61 offset:736
	ds_load_u8 v115, v61 offset:672
	ds_load_u8 v116, v61 offset:608
	ds_load_u8 v117, v61 offset:544
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v52, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v53, v57, v56, 0xc0c0004
	v_lshl_or_b32 v71, v51, 16, v45
	v_lshl_or_b32 v72, v47, 16, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v53, 16, v52
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v59, v58, 0xc0c0004
	v_lshl_or_b32 v69, v46, 16, v45
	v_mov_b32_e32 v52, s15
	ds_load_u8 v53, v61 offset:1856
	ds_load_u8 v54, v61 offset:1792
	ds_load_u8 v55, v61 offset:1984
	ds_load_u8 v56, v61 offset:1920
	ds_load_u8 v57, v61 offset:1600
	ds_load_u8 v58, v61 offset:1536
	ds_load_u8 v59, v61 offset:1728
	ds_load_u8 v60, v61 offset:1664
	ds_load_u8 v63, v61 offset:1344
	ds_load_u8 v64, v61 offset:1280
	ds_load_u8 v65, v61 offset:1472
	ds_load_u8 v66, v61 offset:1408
	ds_load_u8 v126, v61 offset:2016
	ds_load_u8 v127, v61 offset:1952
	ds_load_u8 v128, v61 offset:1888
	ds_load_u8 v129, v61 offset:1824
	ds_load_u8 v101, v61 offset:2368
	ds_load_u8 v102, v61 offset:2304
	ds_load_u8 v105, v61 offset:2496
	ds_load_u8 v106, v61 offset:2432
	ds_load_u8 v107, v61 offset:2112
	ds_load_u8 v108, v61 offset:2048
	ds_load_u8 v146, v61 offset:2240
	ds_load_u8 v147, v61 offset:2176
	ds_load_u8 v148, v61 offset:2784
	ds_load_u8 v149, v61 offset:2720
	ds_load_u8 v150, v61 offset:2656
	ds_load_u8 v151, v61 offset:2592
	v_dual_mov_b32 v51, s14 :: v_dual_mov_b32 v50, s13
	v_dual_mov_b32 v49, s12 :: v_dual_mov_b32 v48, s11
	v_dual_mov_b32 v47, s10 :: v_dual_mov_b32 v46, s9
	v_mov_b32_e32 v45, s8
	ds_load_u8 v118, v61 offset:480
	ds_load_u8 v119, v61 offset:416
	ds_load_u8 v120, v61 offset:352
	ds_load_u8 v121, v61 offset:288
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v73, v58, v57, 0xc0c0004
	ds_load_u8 v122, v61 offset:224
	ds_load_u8 v123, v61 offset:160
	ds_load_u8 v124, v61 offset:96
	ds_load_u8 v125, v61 offset:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v74, v60, v59, 0xc0c0004
	ds_load_u8 v134, v61 offset:1504
	ds_load_u8 v135, v61 offset:1440
	ds_load_u8 v136, v61 offset:1376
	ds_load_u8 v137, v61 offset:1312
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v152, v61 offset:2528
	ds_load_u8 v153, v61 offset:2464
	ds_load_u8 v154, v61 offset:2400
	ds_load_u8 v155, v61 offset:2336
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v64, v66, v65, 0xc0c0004
	v_perm_b32 v67, v54, v53, 0xc0c0004
	ds_load_u8 v65, v61 offset:2880
	ds_load_u8 v66, v61 offset:2816
	ds_load_u8 v93, v61 offset:3008
	ds_load_u8 v94, v61 offset:2944
	ds_load_u8 v138, v61 offset:1248
	ds_load_u8 v139, v61 offset:1184
	ds_load_u8 v140, v61 offset:1120
	ds_load_u8 v141, v61 offset:1056
	v_perm_b32 v68, v56, v55, 0xc0c0004
	ds_load_u8 v53, v61 offset:1088
	ds_load_u8 v54, v61 offset:1024
	ds_load_u8 v55, v61 offset:1216
	ds_load_u8 v56, v61 offset:1152
	ds_load_u8 v130, v61 offset:1760
	ds_load_u8 v131, v61 offset:1696
	ds_load_u8 v132, v61 offset:1632
	ds_load_u8 v133, v61 offset:1568
	v_lshl_or_b32 v75, v74, 16, v73
	v_lshl_or_b32 v74, v64, 16, v63
	ds_load_u8 v156, v61 offset:2272
	ds_load_u8 v157, v61 offset:2208
	ds_load_u8 v158, v61 offset:2144
	ds_load_u8 v159, v61 offset:2080
	v_lshl_or_b32 v76, v68, 16, v67
	ds_load_u8 v63, v61 offset:2624
	ds_load_u8 v64, v61 offset:2560
	ds_load_u8 v67, v61 offset:2752
	ds_load_u8 v68, v61 offset:2688
	ds_load_u8 v142, v61 offset:3040
	ds_load_u8 v143, v61 offset:2976
	ds_load_u8 v144, v61 offset:2912
	ds_load_u8 v145, v61 offset:2848
	ds_load_u8 v167, v61 offset:3808
	ds_load_u8 v168, v61 offset:3744
	ds_load_u8 v169, v61 offset:3680
	ds_load_u8 v170, v61 offset:3616
	ds_load_u8 v171, v61 offset:3552
	ds_load_u8 v172, v61 offset:3488
	ds_load_u8 v173, v61 offset:3424
	ds_load_u8 v174, v61 offset:3360
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v95, v54, v53, 0xc0c0004
	v_perm_b32 v66, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v96, v56, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[53:60], v[89:92], v[69:72], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v104, v66, 16, v65
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v64, v68, v67, 0xc0c0004
	v_lshl_or_b32 v73, v96, 16, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v62 offset:4096
	ds_load_b128 v[97:100], v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v62, v102, v101, 0xc0c0004
	v_perm_b32 v65, v147, v146, 0xc0c0004
	v_lshl_or_b32 v103, v64, 16, v63
	v_perm_b32 v63, v106, v105, 0xc0c0004
	v_perm_b32 v64, v108, v107, 0xc0c0004
	ds_load_u8 v66, v61 offset:3904
	ds_load_u8 v67, v61 offset:3840
	ds_load_u8 v68, v61 offset:4032
	ds_load_u8 v105, v61 offset:3968
	v_wmma_i32_16x16x16_iu8 v[53:60], v[81:84], v[73:76], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v63, 16, v62
	v_lshl_or_b32 v101, v65, 16, v64
	ds_load_u8 v62, v61 offset:3648
	ds_load_u8 v63, v61 offset:3584
	ds_load_u8 v64, v61 offset:3776
	ds_load_u8 v65, v61 offset:3712
	ds_load_u8 v106, v61 offset:3392
	ds_load_u8 v107, v61 offset:3328
	ds_load_u8 v108, v61 offset:3520
	ds_load_u8 v146, v61 offset:3456
	ds_load_u8 v147, v61 offset:3136
	ds_load_u8 v160, v61 offset:3072
	ds_load_u8 v161, v61 offset:3264
	ds_load_u8 v162, v61 offset:3200
	ds_load_u8 v163, v61 offset:4064
	ds_load_u8 v164, v61 offset:4000
	ds_load_u8 v165, v61 offset:3936
	ds_load_u8 v166, v61 offset:3872
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[53:60], v[97:100], v[101:104], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v64, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v146, v108, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v146, v61 offset:3296
	ds_load_u8 v175, v61 offset:3232
	ds_load_u8 v176, v61 offset:3168
	ds_load_u8 v177, v61 offset:3104
	v_perm_b32 v67, v105, v68, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v61, v160, v147, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v162, v161, 0xc0c0004
	v_lshl_or_b32 v107, v63, 16, v62
	v_lshl_or_b32 v106, v65, 16, v64
	v_lshl_or_b32 v108, v67, 16, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v68, 16, v61
	v_wmma_i32_16x16x16_iu8 v[53:60], v[5:8], v[105:108], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[85:88], v[69:72], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v69, v112, v111, 0xc0c0004
	v_perm_b32 v70, v110, v109, 0xc0c0004
	v_perm_b32 v71, v117, v116, 0xc0c0004
	v_perm_b32 v72, v115, v114, 0xc0c0004
	v_perm_b32 v109, v121, v120, 0xc0c0004
	v_perm_b32 v110, v119, v118, 0xc0c0004
	v_perm_b32 v114, v125, v124, 0xc0c0004
	v_perm_b32 v115, v123, v122, 0xc0c0004
	v_lshl_or_b32 v112, v70, 16, v69
	v_lshl_or_b32 v111, v72, 16, v71
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
	v_wmma_i32_16x16x16_iu8 v[61:68], v[77:80], v[73:76], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[89:92], v[109:112], v[45:52] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v115, 16, v114
	v_lshl_or_b32 v91, v117, 16, v116
	v_lshl_or_b32 v90, v119, 16, v118
	v_lshl_or_b32 v89, v121, 16, v120
	v_perm_b32 v114, v145, v144, 0xc0c0004
	v_perm_b32 v115, v143, v142, 0xc0c0004
	v_perm_b32 v116, v151, v150, 0xc0c0004
	v_perm_b32 v117, v149, v148, 0xc0c0004
	v_perm_b32 v118, v155, v154, 0xc0c0004
	v_perm_b32 v119, v153, v152, 0xc0c0004
	v_perm_b32 v120, v159, v158, 0xc0c0004
	v_perm_b32 v121, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[81:84], v[89:92], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v115, 16, v114
	v_lshl_or_b32 v83, v117, 16, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v113 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v82, v119, 16, v118
	v_lshl_or_b32 v81, v121, 16, v120
	v_wmma_i32_16x16x16_iu8 v[45:52], v[85:88], v[109:112], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v85, v174, v173, 0xc0c0004
	v_perm_b32 v86, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v87, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[97:100], v[81:84], v[69:76] neg_lo:[1,1,0]
	v_perm_b32 v97, v166, v165, 0xc0c0004
	v_perm_b32 v98, v164, v163, 0xc0c0004
	v_perm_b32 v99, v170, v169, 0xc0c0004
	v_perm_b32 v100, v168, v167, 0xc0c0004
	v_perm_b32 v88, v175, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[93:96], v[101:104], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[77:80], v[89:92], v[45:52] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v98, 16, v97
	v_lshl_or_b32 v79, v100, 16, v99
	v_lshl_or_b32 v78, v86, 16, v85
	v_lshl_or_b32 v77, v88, 16, v87
	v_wmma_i32_16x16x16_iu8 v[45:52], v[93:96], v[81:84], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[113:116], v[105:108], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[5:8], v[77:80], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v56
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v8, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v41, v41, v5 :: v_dual_add_f32 v40, v40, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v38, v38, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v62
	v_cvt_f32_i32_e32 v7, v63
	v_cvt_f32_i32_e32 v8, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v34, v34, v7 :: v_dual_add_f32 v33, v33, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v67
	v_cvt_f32_i32_e32 v7, v68
	v_cvt_f32_i32_e32 v8, v69
	v_wmma_i32_16x16x16_iu8 v[45:52], v[113:116], v[77:80], v[45:52] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v5 :: v_dual_add_f32 v29, v29, v6
	v_dual_add_f32 v28, v28, v7 :: v_dual_add_f32 v27, v27, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v26, v26, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v71
	v_cvt_f32_i32_e32 v6, v72
	v_cvt_f32_i32_e32 v7, v73
	v_cvt_f32_i32_e32 v8, v74
	v_cvt_f32_i32_e32 v54, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v5 :: v_dual_add_f32 v24, v24, v6
	v_dual_add_f32 v23, v23, v7 :: v_dual_add_f32 v22, v22, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v76
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v45, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v21, v21, v54 :: v_dual_add_f32 v20, v20, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v19, v6 :: v_dual_add_f32 v18, v18, v7
	v_dual_add_f32 v17, v17, v8 :: v_dual_add_f32 v16, v16, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v49
	v_cvt_f32_i32_e32 v6, v50
	v_cvt_f32_i32_e32 v7, v51
	v_cvt_f32_i32_e32 v8, v52
	v_cvt_f32_i32_e32 v45, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v15, v15, v5 :: v_dual_add_f32 v14, v14, v6
	v_dual_add_f32 v13, v13, v7 :: v_dual_add_f32 v12, v12, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v31, v31, v45
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v72, s11 :: v_dual_add_nc_u32 v7, s1, v4
	v_dual_mov_b32 v70, s9 :: v_dual_add_nc_u32 v53, s28, v44
	v_dual_mov_b32 v71, s10 :: v_dual_add_nc_u32 v8, s1, v3
	v_dual_mov_b32 v68, s7 :: v_dual_add_nc_u32 v1, s1, v1
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	ds_load_b128 v[3:6], v7 offset:4096
	ds_load_b128 v[61:64], v7
	ds_load_b128 v[81:84], v8 offset:4096
	ds_load_b128 v[85:88], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v7, v53 offset:832
	ds_load_u8 v8, v53 offset:768
	ds_load_u8 v45, v53 offset:960
	ds_load_u8 v46, v53 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[89:92], v1 offset:4096
	ds_load_b128 v[93:96], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v53 offset:576
	ds_load_u8 v47, v53 offset:512
	ds_load_u8 v48, v53 offset:704
	ds_load_u8 v49, v53 offset:640
	ds_load_u8 v50, v53 offset:320
	ds_load_u8 v51, v53 offset:256
	ds_load_u8 v52, v53 offset:448
	ds_load_u8 v54, v53 offset:384
	ds_load_u8 v55, v53 offset:64
	ds_load_u8 v56, v53
	ds_load_u8 v57, v53 offset:192
	ds_load_u8 v58, v53 offset:128
	ds_load_u8 v109, v53 offset:992
	ds_load_u8 v110, v53 offset:928
	ds_load_u8 v111, v53 offset:864
	ds_load_u8 v113, v53 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v46, v45, 0xc0c0004
	v_dual_mov_b32 v69, s8 :: v_dual_add_nc_u32 v2, s1, v2
	ds_load_u8 v114, v53 offset:736
	ds_load_u8 v115, v53 offset:672
	ds_load_u8 v116, v53 offset:608
	ds_load_u8 v117, v53 offset:544
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v47, v1, 0xc0c0004
	v_lshl_or_b32 v76, v8, 16, v7
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	ds_load_u8 v118, v53 offset:480
	ds_load_u8 v119, v53 offset:416
	ds_load_u8 v120, v53 offset:352
	ds_load_u8 v121, v53 offset:288
	ds_load_u8 v122, v53 offset:224
	ds_load_u8 v123, v53 offset:160
	ds_load_u8 v124, v53 offset:96
	ds_load_u8 v125, v53 offset:32
	ds_load_u8 v134, v53 offset:1504
	ds_load_u8 v135, v53 offset:1440
	ds_load_u8 v136, v53 offset:1376
	ds_load_u8 v137, v53 offset:1312
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v47, v54, v52, 0xc0c0004
	v_lshl_or_b32 v75, v45, 16, v1
	ds_load_u8 v1, v53 offset:1856
	ds_load_u8 v7, v53 offset:1792
	ds_load_u8 v8, v53 offset:1984
	ds_load_u8 v54, v53 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v2 offset:4096
	ds_load_b128 v[101:104], v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v48, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v49, v58, v57, 0xc0c0004
	ds_load_u8 v2, v53 offset:1600
	ds_load_u8 v55, v53 offset:1536
	ds_load_u8 v56, v53 offset:1728
	ds_load_u8 v57, v53 offset:1664
	ds_load_u8 v58, v53 offset:1344
	ds_load_u8 v59, v53 offset:1280
	ds_load_u8 v60, v53 offset:1472
	ds_load_u8 v77, v53 offset:1408
	ds_load_u8 v126, v53 offset:2016
	ds_load_u8 v127, v53 offset:1952
	ds_load_u8 v128, v53 offset:1888
	ds_load_u8 v129, v53 offset:1824
	ds_load_u8 v138, v53 offset:1248
	ds_load_u8 v139, v53 offset:1184
	ds_load_u8 v140, v53 offset:1120
	ds_load_u8 v141, v53 offset:1056
	v_perm_b32 v46, v51, v50, 0xc0c0004
	ds_load_u8 v152, v53 offset:2272
	ds_load_u8 v153, v53 offset:2208
	ds_load_u8 v154, v53 offset:2144
	ds_load_u8 v155, v53 offset:2080
	v_lshl_or_b32 v73, v49, 16, v48
	v_dual_mov_b32 v67, s6 :: v_dual_mov_b32 v66, s5
	v_lshl_or_b32 v74, v47, 16, v46
	v_mov_b32_e32 v65, s4
	ds_load_u8 v165, v53 offset:3808
	ds_load_u8 v166, v53 offset:3744
	ds_load_u8 v167, v53 offset:3680
	ds_load_u8 v168, v53 offset:3616
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v2, v55, v2, 0xc0c0004
	ds_load_u8 v169, v53 offset:3552
	ds_load_u8 v170, v53 offset:3488
	ds_load_u8 v171, v53 offset:3424
	ds_load_u8 v172, v53 offset:3360
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[45:52], v[93:96], v[73:76], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v56, v59, v58, 0xc0c0004
	v_perm_b32 v1, v7, v1, 0xc0c0004
	ds_load_u8 v7, v53 offset:1088
	ds_load_u8 v78, v53 offset:1024
	ds_load_u8 v58, v53 offset:2880
	ds_load_u8 v59, v53 offset:2816
	v_perm_b32 v8, v54, v8, 0xc0c0004
	ds_load_u8 v54, v53 offset:1216
	ds_load_u8 v79, v53 offset:1152
	ds_load_u8 v130, v53 offset:1760
	ds_load_u8 v131, v53 offset:1696
	ds_load_u8 v132, v53 offset:1632
	ds_load_u8 v133, v53 offset:1568
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v57, v77, v60, 0xc0c0004
	ds_load_u8 v60, v53 offset:3008
	ds_load_u8 v105, v53 offset:2944
	ds_load_u8 v174, v53 offset:3296
	ds_load_u8 v175, v53 offset:3232
	ds_load_u8 v176, v53 offset:3168
	ds_load_u8 v177, v53 offset:3104
	v_lshl_or_b32 v80, v8, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v79, v54, 0xc0c0004
	v_perm_b32 v7, v78, v7, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v53 offset:2112
	ds_load_u8 v106, v53 offset:2048
	v_lshl_or_b32 v79, v55, 16, v2
	v_lshl_or_b32 v78, v57, 16, v56
	v_lshl_or_b32 v77, v54, 16, v7
	ds_load_u8 v1, v53 offset:2624
	ds_load_u8 v2, v53 offset:2560
	ds_load_u8 v7, v53 offset:2752
	ds_load_u8 v8, v53 offset:2688
	ds_load_u8 v54, v53 offset:2368
	ds_load_u8 v55, v53 offset:2304
	ds_load_u8 v56, v53 offset:2496
	ds_load_u8 v57, v53 offset:2432
	ds_load_u8 v142, v53 offset:3040
	ds_load_u8 v143, v53 offset:2976
	ds_load_u8 v144, v53 offset:2912
	ds_load_u8 v145, v53 offset:2848
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v60, v105, v60, 0xc0c0004
	ds_load_u8 v105, v53 offset:2240
	ds_load_u8 v107, v53 offset:2176
	ds_load_u8 v146, v53 offset:2784
	ds_load_u8 v147, v53 offset:2720
	ds_load_u8 v148, v53 offset:2656
	ds_load_u8 v149, v53 offset:2592
	v_wmma_i32_16x16x16_iu8 v[45:52], v[101:104], v[77:80], v[45:52] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v60, 16, v58
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v8, v7, 0xc0c0004
	ds_load_u8 v7, v53 offset:2528
	ds_load_u8 v8, v53 offset:2464
	ds_load_u8 v150, v53 offset:2400
	ds_load_u8 v151, v53 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_perm_b32 v56, v106, v59, 0xc0c0004
	ds_load_u8 v57, v53 offset:3904
	ds_load_u8 v59, v53 offset:3840
	ds_load_u8 v112, v53 offset:4032
	ds_load_u8 v156, v53 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v107, v105, 0xc0c0004
	v_lshl_or_b32 v107, v2, 16, v1
	v_lshl_or_b32 v106, v55, 16, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v105, v105, 16, v56
	ds_load_u8 v1, v53 offset:3648
	ds_load_u8 v2, v53 offset:3584
	ds_load_u8 v54, v53 offset:3776
	ds_load_u8 v55, v53 offset:3712
	ds_load_u8 v56, v53 offset:3392
	ds_load_u8 v58, v53 offset:3328
	ds_load_u8 v60, v53 offset:3520
	ds_load_u8 v157, v53 offset:3456
	ds_load_u8 v158, v53 offset:4064
	ds_load_u8 v159, v53 offset:4000
	ds_load_u8 v160, v53 offset:3936
	ds_load_u8 v161, v53 offset:3872
	v_wmma_i32_16x16x16_iu8 v[45:52], v[85:88], v[105:108], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_perm_b32 v8, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v55, v54, 0xc0c0004
	v_perm_b32 v59, v156, v112, 0xc0c0004
	ds_load_u8 v156, v53 offset:3136
	ds_load_u8 v162, v53 offset:3072
	ds_load_u8 v163, v53 offset:3264
	ds_load_u8 v164, v53 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v173, v58, v56, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v157, v157, v60, 0xc0c0004
	v_lshl_or_b32 v112, v59, 16, v57
	v_wmma_i32_16x16x16_iu8 v[53:60], v[89:92], v[73:76], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v73, v113, v111, 0xc0c0004
	v_perm_b32 v74, v110, v109, 0xc0c0004
	v_perm_b32 v75, v117, v116, 0xc0c0004
	v_perm_b32 v76, v115, v114, 0xc0c0004
	v_perm_b32 v109, v121, v120, 0xc0c0004
	v_perm_b32 v110, v119, v118, 0xc0c0004
	v_perm_b32 v111, v125, v124, 0xc0c0004
	v_perm_b32 v113, v123, v122, 0xc0c0004
	v_lshl_or_b32 v116, v74, 16, v73
	v_lshl_or_b32 v115, v76, 16, v75
	v_lshl_or_b32 v114, v110, 16, v109
	v_perm_b32 v109, v129, v128, 0xc0c0004
	v_lshl_or_b32 v113, v113, 16, v111
	v_perm_b32 v110, v127, v126, 0xc0c0004
	v_perm_b32 v111, v133, v132, 0xc0c0004
	v_perm_b32 v117, v131, v130, 0xc0c0004
	v_perm_b32 v118, v137, v136, 0xc0c0004
	v_perm_b32 v119, v135, v134, 0xc0c0004
	v_perm_b32 v120, v141, v140, 0xc0c0004
	v_perm_b32 v121, v139, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[53:60], v[97:100], v[77:80], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[93:96], v[113:116], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v110, 16, v109
	v_lshl_or_b32 v95, v117, 16, v111
	v_lshl_or_b32 v94, v119, 16, v118
	v_lshl_or_b32 v93, v121, 16, v120
	v_perm_b32 v109, v145, v144, 0xc0c0004
	v_perm_b32 v110, v143, v142, 0xc0c0004
	v_perm_b32 v111, v149, v148, 0xc0c0004
	v_perm_b32 v117, v147, v146, 0xc0c0004
	v_perm_b32 v118, v151, v150, 0xc0c0004
	v_perm_b32 v119, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[93:96], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v110, 16, v109
	v_lshl_or_b32 v103, v117, 16, v111
	v_lshl_or_b32 v102, v7, 16, v118
	v_lshl_or_b32 v101, v119, 16, v8
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[113:116], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v162, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v164, v163, 0xc0c0004
	v_lshl_or_b32 v111, v2, 16, v1
	v_wmma_i32_16x16x16_iu8 v[73:80], v[85:88], v[101:104], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v1, v161, v160, 0xc0c0004
	v_perm_b32 v2, v159, v158, 0xc0c0004
	v_perm_b32 v7, v168, v167, 0xc0c0004
	v_perm_b32 v8, v166, v165, 0xc0c0004
	v_perm_b32 v85, v172, v171, 0xc0c0004
	v_perm_b32 v86, v170, v169, 0xc0c0004
	v_perm_b32 v89, v177, v176, 0xc0c0004
	v_perm_b32 v90, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[97:100], v[93:96], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v110, v157, 16, v173
	v_lshl_or_b32 v109, v162, 16, v156
	v_wmma_i32_16x16x16_iu8 v[53:60], v[81:84], v[105:108], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v2, 16, v1
	v_lshl_or_b32 v87, v8, 16, v7
	v_lshl_or_b32 v86, v86, 16, v85
	v_lshl_or_b32 v85, v90, 16, v89
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[101:104], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[109:112], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[3:6], v[109:112], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[61:64], v[85:88], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[3:6], v[85:88], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v45
	v_cvt_f32_i32_e32 v6, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v8, v48
	v_cvt_f32_i32_e32 v45, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v48, v52
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v50, v54
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v52, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v56, v60
	v_cvt_f32_i32_e32 v57, v73
	v_cvt_f32_i32_e32 v58, v74
	v_cvt_f32_i32_e32 v59, v75
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
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
	v_dual_add_f32 v6, v43, v6 :: v_dual_and_b32 v1, 0x60, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s19, v44
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v5, v31, v5
	s_mov_b32 s7, 0x31027000
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v2, 1, v2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v4, s18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v46, v39, v46 :: v_dual_and_b32 v87, 0x7f, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v4, 64, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v41, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	v_or_b32_e32 v44, 4, v3
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
	buffer_load_u16 v44, v44, s[4:7], 0 offen
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
	v_add_f32_e32 v69, v15, v69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v89, 14, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v47, v38, v47 :: v_dual_add_f32 v52, v33, v52
	v_dual_add_f32 v67, v17, v67 :: v_dual_add_f32 v72, v12, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v71, v13, v71 :: v_dual_and_b32 v0, 0x78, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v11, 6, v11
	v_cndmask_b32_e64 v91, 0x840, 0, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v49, v36, v49 :: v_dual_add_f32 v54, v30, v54
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v90, 0x840, 0, s0
	v_and_b32_e32 v9, 0x700, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v47, s2
	v_cndmask_b32_e64 v47, v17, v67, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v17, 2, v89
	v_xor_b32_e32 v11, v91, v11
	v_lshl_or_b32 v0, v1, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v88, 7, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v42, v7 :: v_dual_add_f32 v48, v37, v48
	v_dual_add_f32 v63, v21, v63 :: v_dual_add_f32 v68, v16, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v49, s2
	v_cndmask_b32_e64 v49, v15, v69, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v1, v9, v17, v11
	v_xor_b32_e32 v0, v0, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v48, s2
	v_cndmask_b32_e64 v48, v16, v68, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v16, s29, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v45, v40, v45 :: v_dual_add_f32 v50, v35, v50
	v_dual_add_f32 v51, v34, v51 :: v_dual_add_f32 v56, v28, v56
	v_dual_add_f32 v53, v32, v53 :: v_dual_add_f32 v58, v26, v58
	v_dual_add_f32 v55, v29, v55 :: v_dual_add_f32 v60, v24, v60
	v_dual_add_f32 v57, v27, v57 :: v_dual_add_f32 v62, v22, v62
	v_dual_add_f32 v59, v25, v59 :: v_dual_add_f32 v64, v20, v64
	v_dual_add_f32 v61, v23, v61 :: v_dual_add_f32 v66, v18, v66
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s19, s19, s29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v65, v19, v65 :: v_dual_add_f32 v70, v14, v70
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s19, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v31, v5, s2
	v_cndmask_b32_e64 v7, v42, v7, s2
	v_cndmask_b32_e64 v8, v41, v8, s2
	v_cndmask_b32_e64 v31, v40, v45, s2
	v_cndmask_b32_e64 v34, v34, v51, s2
	v_cndmask_b32_e64 v32, v32, v53, s2
	v_cndmask_b32_e64 v30, v30, v54, s2
	v_cndmask_b32_e64 v29, v29, v55, s2
	v_cndmask_b32_e64 v40, v28, v56, s2
	v_cndmask_b32_e64 v27, v27, v57, s2
	v_cndmask_b32_e64 v41, v26, v58, s2
	v_cndmask_b32_e64 v25, v25, v59, s2
	v_cndmask_b32_e64 v42, v24, v60, s2
	v_cndmask_b32_e64 v23, v23, v61, s2
	v_cndmask_b32_e64 v45, v20, v64, s2
	v_cndmask_b32_e64 v51, v13, v71, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v53, s0, v87, v16
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_xad_u32 v55, 0x1008, v1, 0
	v_xad_u32 v56, 0x2010, v1, 0
	v_xad_u32 v57, 0x3018, v1, 0
	v_xad_u32 v58, 0x4020, v1, 0
	v_xad_u32 v59, 0x5028, v1, 0
	v_xad_u32 v60, 0x6030, v1, 0
	v_xad_u32 v61, 0x7038, v1, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v46, s2
	v_cndmask_b32_e64 v46, v18, v66, s2
	v_cndmask_b32_e64 v6, v43, v6, s2
	v_cndmask_b32_e64 v35, v35, v50, s2
	v_cndmask_b32_e64 v43, v22, v62, s2
	v_cndmask_b32_e64 v50, v14, v70, s2
	v_cndmask_b32_e64 v33, v33, v52, s2
	v_cndmask_b32_e64 v52, v12, v72, s2
	v_cndmask_b32_e64 v19, v19, v65, s2
	v_cndmask_b32_e64 v21, v21, v63, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s21, s29, 1
	s_lshl_b32 s22, s29, 2
	s_mul_i32 s23, s29, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v63, v53, s21, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s24, s29, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v64, v53, s22, 2
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
	v_add_lshl_u32 v65, v53, s23, 2
	v_add_lshl_u32 v66, v53, s24, 2
	v_add_lshl_u32 v67, v53, s25, 2
	v_add_lshl_u32 v68, v53, s26, 2
	v_add_lshl_u32 v69, v53, s27, 2
	v_add_lshl_u32 v70, v53, s28, 2
	v_add_lshl_u32 v71, v53, s30, 2
	v_add_lshl_u32 v72, v53, s31, 2
	v_add_lshl_u32 v87, v53, s33, 2
	v_add_lshl_u32 v88, v53, s34, 2
	v_add_lshl_u32 v90, v53, s36, 2
	v_add_lshl_u32 v91, v53, s37, 2
	v_add_lshl_u32 v92, v53, s38, 2
	v_add_lshl_u32 v93, v53, s39, 2
	v_add_lshl_u32 v94, v53, s40, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s29, 54
	s_mul_i32 s5, s29, 56
	s_mul_i32 s4, s29, 58
	s_mul_i32 s3, s29, 60
	s_mul_i32 s1, s29, 62
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v81
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v17, 16, v82
	v_lshlrev_b32_e32 v15, 16, v80
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v9, 11, v89
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v84
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v86
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v89, v53, s35, 2
	v_or3_b32 v0, v0, v9, v10
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v9, 16, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v95, 0, v0
	v_xad_u32 v96, v0, 8, 0
	v_xad_u32 v97, v0, 16, 0
	v_xad_u32 v98, v0, 24, 0
	v_xad_u32 v99, v0, 32, 0
	v_xad_u32 v100, v0, 40, 0
	v_xad_u32 v101, v0, 48, 0
	v_xad_u32 v102, v0, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v0, 16, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v10, 16, v74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v54, 0, v1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v13, 16, v77
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v1, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	v_lshlrev_b32_e32 v18, 16, v83
	v_lshlrev_b32_e32 v4, 16, v44
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v0, v9
	v_dual_mul_f32 v9, v1, v9 :: v_dual_lshlrev_b32 v14, 16, v78
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v22, 16, v85
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v85, v0, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 16, v79
	v_lshlrev_b32_e32 v12, 16, v76
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v84, v0, v24
	v_mul_f32_e32 v76, v0, v13
	v_mul_f32_e32 v13, v1, v13
	v_dual_mul_f32 v81, v0, v18 :: v_dual_mul_f32 v86, v1, v4
	v_dual_mul_f32 v80, v0, v17 :: v_dual_lshlrev_b32 v11, 16, v75
	v_mul_f32_e32 v77, v0, v14
	v_mul_f32_e32 v26, v0, v2
	v_mul_f32_e32 v2, v1, v2
	v_mul_f32_e32 v108, v1, v17
	v_mul_f32_e32 v78, v0, v15
	v_mul_f32_e32 v106, v1, v15
	v_mul_f32_e32 v28, v0, v4
	v_mul_f32_e32 v79, v0, v16
	v_mul_f32_e32 v103, v1, v10
	v_mul_f32_e32 v105, v1, v14
	v_dual_mul_f32 v83, v0, v22 :: v_dual_lshlrev_b32 v62, 2, v53
	v_mul_f32_e32 v75, v0, v12
	v_mul_f32_e32 v107, v1, v16
	v_mul_f32_e32 v73, v0, v10
	v_mul_f32_e32 v74, v0, v11
	v_dual_mul_f32 v11, v1, v11 :: v_dual_mul_f32 v82, v0, v20
	v_mul_f32_e32 v109, v1, v18
	v_mul_f32_e32 v104, v1, v12
	v_mul_f32_e32 v110, v1, v20
	v_dual_mul_f32 v111, v1, v22 :: v_dual_mul_f32 v4, v7, v44
	v_mul_f32_e32 v112, v1, v24
	v_mul_f32_e32 v113, v1, v3
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v0, v5, v26
	v_dual_mul_f32 v1, v27, v2 :: v_dual_mul_f32 v14, v37, v77
	v_mul_f32_e32 v17, v19, v106
	v_dual_mul_f32 v16, v36, v78 :: v_dual_mul_f32 v15, v45, v105
	v_mul_f32_e32 v2, v6, v28
	v_dual_mul_f32 v10, v39, v75 :: v_dual_mul_f32 v3, v41, v86
	v_mul_f32_e32 v18, v35, v79
	v_dual_mul_f32 v22, v33, v81 :: v_dual_mul_f32 v19, v46, v107
	v_mul_f32_e32 v6, v8, v73
	v_dual_mul_f32 v8, v31, v74 :: v_dual_mul_f32 v5, v25, v9
	v_dual_mul_f32 v12, v38, v76 :: v_dual_mul_f32 v13, v21, v13
	v_dual_mul_f32 v24, v32, v82 :: v_dual_mul_f32 v21, v47, v108
	v_mul_f32_e32 v7, v42, v103
	v_dual_mul_f32 v20, v34, v80 :: v_dual_mul_f32 v25, v49, v110
	v_mul_f32_e32 v9, v23, v11
	v_dual_mul_f32 v23, v48, v109 :: v_dual_mul_f32 v26, v30, v83
	v_dual_mul_f32 v28, v29, v84 :: v_dual_mul_f32 v27, v50, v111
	v_dual_mul_f32 v30, v40, v85 :: v_dual_mul_f32 v11, v43, v104
	v_mul_f32_e32 v29, v51, v112
	v_mul_f32_e32 v31, v52, v113
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v95, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v96, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v97, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v98, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v99, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v100, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v101, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v102, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v54 offset1:16
	ds_load_2addr_b64 v[4:7], v55 offset1:16
	ds_load_2addr_b64 v[8:11], v56 offset1:16
	ds_load_2addr_b64 v[12:15], v57 offset1:16
	ds_load_2addr_b64 v[16:19], v58 offset1:16
	ds_load_2addr_b64 v[20:23], v59 offset1:16
	ds_load_2addr_b64 v[24:27], v60 offset1:16
	ds_load_2addr_b64 v[28:31], v61 offset1:16
	v_add_lshl_u32 v32, v53, s20, 2
	v_add_lshl_u32 v33, v53, s15, 2
	v_add_lshl_u32 v34, v53, s14, 2
	v_add_lshl_u32 v35, v53, s13, 2
	v_add_lshl_u32 v36, v53, s12, 2
	v_add_lshl_u32 v37, v53, s11, 2
	v_add_lshl_u32 v38, v53, s10, 2
	v_add_lshl_u32 v39, v53, s9, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v62, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v63, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v64, s[16:19], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v65, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v66, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v67, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v68, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v69, s[16:19], 0 offen
	buffer_atomic_add_f32 v2, v70, s[16:19], 0 offen
	buffer_atomic_add_f32 v6, v71, s[16:19], 0 offen
	buffer_atomic_add_f32 v10, v72, s[16:19], 0 offen
	buffer_atomic_add_f32 v14, v87, s[16:19], 0 offen
	buffer_atomic_add_f32 v18, v88, s[16:19], 0 offen
	buffer_atomic_add_f32 v22, v89, s[16:19], 0 offen
	buffer_atomic_add_f32 v26, v90, s[16:19], 0 offen
	buffer_atomic_add_f32 v30, v91, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v92, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v93, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v94, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v32, s[16:19], 0 offen
	buffer_atomic_add_f32 v17, v33, s[16:19], 0 offen
	buffer_atomic_add_f32 v21, v34, s[16:19], 0 offen
	buffer_atomic_add_f32 v25, v35, s[16:19], 0 offen
	buffer_atomic_add_f32 v29, v36, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v37, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v38, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v39, s[16:19], 0 offen
	v_add_lshl_u32 v40, v53, s8, 2
	v_add_lshl_u32 v41, v53, s5, 2
	v_add_lshl_u32 v42, v53, s4, 2
	v_add_lshl_u32 v43, v53, s3, 2
	v_add_lshl_u32 v0, v53, s1, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 245
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14280
; TotalNumSgprs: 43
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 245
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
