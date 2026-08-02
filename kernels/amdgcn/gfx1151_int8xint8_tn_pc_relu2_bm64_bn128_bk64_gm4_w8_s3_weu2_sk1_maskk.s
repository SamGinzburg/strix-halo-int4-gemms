	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v42, 4, v0
	v_and_b32_e32 v43, 8, v0
	v_and_b32_e32 v4, 62, v2
	v_and_b32_e32 v44, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v52, 0, v42
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
	s_add_i32 s7, s31, 63
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s7, 63
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
	buffer_load_b128 v[10:13], v6, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v5, s[24:27], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v6, s28, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s9, s8, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s33, s29, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s9, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s33, v7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v6, v6, v5, s19
	s_mul_i32 s4, s28, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s29, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v8, s4, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	s_clause 0x1
	buffer_load_b128 v[18:21], v7, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v9, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s3, s28, 6
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_and_b32_e32 v9, 6, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v6, s4, s3, v6
	s_mov_b32 s4, 0
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[26:29], v7, s[12:15], 0 offen
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s9, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s7, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	buffer_load_b128 v[30:33], v6, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 0x420, v6
	v_xor_b32_e32 v8, v6, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v45, v9, 10, v8
	v_lshlrev_b32_e32 v8, 5, v0
	v_lshlrev_b32_e32 v9, 3, v9
	v_xor_b32_e32 v46, 0x90, v45
	v_xor_b32_e32 v47, 0x120, v45
	v_xor_b32_e32 v48, 0x1b0, v45
	v_xor_b32_e32 v49, 0x210, v45
	v_xor_b32_e32 v50, 0x330, v45
	v_xor_b32_e32 v51, 0x3a0, v45
	v_add_nc_u32_e32 v53, 0, v45
	v_add_nc_u32_e32 v54, 0, v46
	v_add_nc_u32_e32 v55, 0, v47
	v_add_nc_u32_e32 v56, 0, v48
	v_add_nc_u32_e32 v57, 0, v49
	v_add_nc_u32_e32 v58, 0, v50
	v_add_nc_u32_e32 v59, 0, v51
	s_waitcnt vmcnt(4)
	v_perm_b32 v34, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v35, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v36, v16, v12, 0x5010400
	v_lshrrev_b32_e32 v39, 8, v34
	v_lshrrev_b32_e32 v40, 24, v34
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v37, v17, v13, 0x5010400
	v_perm_b32 v38, v17, v13, 0x7030602
	v_lshrrev_b32_e32 v41, 8, v14
	v_and_b16 v10.l, 0xff, v34.l
	v_and_b16 v10.h, 0xff, v34.h
	v_lshrrev_b32_e32 v60, 24, v14
	v_lshlrev_b16 v34.l, 8, v39.l
	v_lshlrev_b16 v34.h, 8, v40.l
	v_lshrrev_b32_e32 v61, 8, v35
	v_lshrrev_b32_e32 v62, 24, v35
	v_lshrrev_b32_e32 v63, 8, v15
	v_lshrrev_b32_e32 v64, 24, v15
	v_lshrrev_b32_e32 v65, 8, v36
	v_lshrrev_b32_e32 v66, 24, v36
	v_lshrrev_b32_e32 v67, 8, v16
	v_lshrrev_b32_e32 v68, 24, v16
	v_lshrrev_b32_e32 v69, 8, v37
	v_lshrrev_b32_e32 v70, 24, v37
	v_lshrrev_b32_e32 v71, 8, v38
	v_lshrrev_b32_e32 v72, 24, v38
	v_and_b16 v11.l, 0xff, v14.l
	v_and_b16 v12.l, 0xff, v35.l
	v_lshlrev_b16 v35.l, 8, v41.l
	v_and_b16 v11.h, 0xff, v14.h
	v_and_b16 v12.h, 0xff, v35.h
	v_lshlrev_b16 v35.h, 8, v60.l
	v_or_b16 v10.l, v10.l, v34.l
	v_or_b16 v10.h, v10.h, v34.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v34, v22, v18, 0x5010400
	v_and_b16 v13.l, 0xff, v15.l
	v_and_b16 v13.h, 0xff, v15.h
	v_and_b16 v14.l, 0xff, v36.l
	v_and_b16 v14.h, 0xff, v36.h
	v_and_b16 v15.l, 0xff, v16.l
	v_and_b16 v15.h, 0xff, v16.h
	v_and_b16 v16.l, 0xff, v37.l
	v_and_b16 v16.h, 0xff, v37.h
	v_and_b16 v17.l, 0xff, v38.l
	v_and_b16 v17.h, 0xff, v38.h
	v_lshlrev_b16 v36.l, 8, v61.l
	v_lshlrev_b16 v36.h, 8, v62.l
	v_lshlrev_b16 v37.l, 8, v63.l
	v_lshlrev_b16 v37.h, 8, v64.l
	v_lshlrev_b16 v38.l, 8, v65.l
	v_lshlrev_b16 v38.h, 8, v66.l
	v_lshlrev_b16 v39.l, 8, v67.l
	v_lshlrev_b16 v39.h, 8, v68.l
	v_lshlrev_b16 v40.l, 8, v69.l
	v_lshlrev_b16 v40.h, 8, v70.l
	v_lshlrev_b16 v41.l, 8, v71.l
	v_lshlrev_b16 v41.h, 8, v72.l
	v_perm_b32 v18, v22, v18, 0x7030602
	v_or_b16 v11.l, v11.l, v35.l
	v_perm_b32 v22, v23, v19, 0x5010400
	v_perm_b32 v19, v23, v19, 0x7030602
	v_perm_b32 v23, v24, v20, 0x5010400
	v_perm_b32 v20, v24, v20, 0x7030602
	v_perm_b32 v24, v25, v21, 0x5010400
	v_perm_b32 v21, v25, v21, 0x7030602
	v_or_b16 v11.h, v11.h, v35.h
	v_lshrrev_b32_e32 v25, 8, v34
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v52, v[26:29] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v53, v10
	ds_store_b16_d16_hi v53, v10 offset:64
	ds_store_b16 v54, v11
	ds_store_b16_d16_hi v54, v11 offset:64
	ds_store_b16 v55, v12
	ds_store_b16_d16_hi v55, v12 offset:64
	ds_store_b16 v56, v13
	ds_store_b16_d16_hi v56, v13 offset:64
	ds_store_b16 v57, v14
	ds_store_b16_d16_hi v57, v14 offset:64
	ds_store_b16 v53, v15 offset:640
	ds_store_b16_d16_hi v53, v15 offset:704
	ds_store_b16 v58, v16
	ds_store_b16_d16_hi v58, v16 offset:64
	ds_store_b16 v59, v17
	ds_store_b16_d16_hi v59, v17 offset:64
	v_lshrrev_b32_e32 v26, 24, v34
	v_lshrrev_b32_e32 v27, 8, v18
	v_lshrrev_b32_e32 v28, 24, v18
	v_and_b16 v10.l, 0xff, v34.l
	v_and_b16 v10.h, 0xff, v34.h
	v_and_b16 v12.l, 0xff, v22.l
	v_lshrrev_b32_e32 v29, 8, v22
	v_lshrrev_b32_e32 v34, 24, v22
	v_and_b16 v12.h, 0xff, v22.h
	v_lshrrev_b32_e32 v22, 8, v19
	v_lshrrev_b32_e32 v35, 24, v19
	v_and_b16 v14.l, 0xff, v23.l
	v_lshrrev_b32_e32 v36, 8, v23
	v_lshrrev_b32_e32 v37, 24, v23
	v_and_b16 v14.h, 0xff, v23.h
	v_lshrrev_b32_e32 v23, 8, v20
	v_lshrrev_b32_e32 v38, 24, v20
	v_lshrrev_b32_e32 v39, 8, v24
	v_lshrrev_b32_e32 v40, 24, v24
	v_lshrrev_b32_e32 v41, 8, v21
	v_lshrrev_b32_e32 v60, 24, v21
	v_and_b16 v11.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v25.l
	v_and_b16 v11.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v26.l
	v_and_b16 v13.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v27.l
	v_and_b16 v13.h, 0xff, v19.h
	v_lshlrev_b16 v19.h, 8, v28.l
	v_and_b16 v15.l, 0xff, v20.l
	v_and_b16 v15.h, 0xff, v20.h
	v_and_b16 v16.l, 0xff, v24.l
	v_and_b16 v16.h, 0xff, v24.h
	v_and_b16 v17.l, 0xff, v21.l
	v_and_b16 v17.h, 0xff, v21.h
	v_lshlrev_b16 v20.l, 8, v29.l
	v_lshlrev_b16 v20.h, 8, v34.l
	v_lshlrev_b16 v21.l, 8, v22.l
	v_lshlrev_b16 v21.h, 8, v35.l
	v_lshlrev_b16 v22.l, 8, v36.l
	v_lshlrev_b16 v22.h, 8, v37.l
	v_lshlrev_b16 v23.l, 8, v23.l
	v_lshlrev_b16 v23.h, 8, v38.l
	v_lshlrev_b16 v24.l, 8, v39.l
	v_lshlrev_b16 v24.h, 8, v40.l
	v_lshlrev_b16 v25.l, 8, v41.l
	v_lshlrev_b16 v25.h, 8, v60.l
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
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
	ds_store_b128 v52, v[30:33] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v53, v10 offset:8192
	ds_store_b16_d16_hi v53, v10 offset:8256
	ds_store_b16 v54, v11 offset:8192
	ds_store_b16_d16_hi v54, v11 offset:8256
	ds_store_b16 v55, v12 offset:8192
	ds_store_b16_d16_hi v55, v12 offset:8256
	ds_store_b16 v56, v13 offset:8192
	ds_store_b16_d16_hi v56, v13 offset:8256
	ds_store_b16 v57, v14 offset:8192
	ds_store_b16_d16_hi v57, v14 offset:8256
	ds_store_b16 v53, v15 offset:8832
	ds_store_b16_d16_hi v53, v15 offset:8896
	ds_store_b16 v58, v16 offset:8192
	ds_store_b16_d16_hi v58, v16 offset:8256
	ds_store_b16 v59, v17 offset:8192
	ds_store_b16_d16_hi v59, v17 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v54, 8, v0
	v_and_b32_e32 v55, 32, v0
	v_and_b32_e32 v52, 0x800, v8
	v_lshl_or_b32 v53, v3, 6, v9
	s_mov_b32 s9, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
.LBB0_3:                                ; %Flow49
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_and_or_b32 v41, v7, 16, v6
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v6, v0, 5, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s7, 6
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s1, s6, 7
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v4, s8, v4
	v_bfe_i32 v7, v0, 3, 1
	v_add3_u32 v55, s8, v2, 0x80
	s_mov_b32 s8, s4
	v_and_b32_e32 v6, 0x420, v6
	v_add_nc_u32_e32 v10, 0x81, v4
	v_add_nc_u32_e32 v54, 0x80, v4
	v_lshl_or_b32 v53, v3, 6, v9
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v52, 0x800, v8
	v_and_or_b32 v3, 0x210, v7, v6
	v_mul_lo_u32 v4, s29, v10
	v_mul_lo_u32 v6, s29, v54
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v2, v3, v53
	v_mul_lo_u32 v3, s28, v55
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v27, 0
	v_add3_u32 v4, v4, s1, v1
	v_add3_u32 v1, v6, s1, v1
	v_or_b32_e32 v56, v2, v52
	s_lshl_b32 s1, s5, 7
	s_mov_b32 s5, s4
	v_subrev_nc_u32_e32 v57, s1, v4
	v_subrev_nc_u32_e32 v58, s1, v1
	v_add3_u32 v62, v3, s19, v5
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v59, 16, v56
	v_xor_b32_e32 v60, 32, v56
	v_xor_b32_e32 v61, 48, v56
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v10, 0
	s_add_i32 s34, s0, -2
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s0, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v55
	s_mov_b32 s6, s28
	s_mov_b32 s28, s1
	s_mov_b32 s1, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v65, s6, v41
	v_cndmask_b32_e32 v63, 0x80000000, v62, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v54, 64, v54
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v66, s1, v56
	v_add_nc_u32_e32 v67, s1, v59
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[95:98], v63, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v64, 0x80000000, v58 :: v_dual_add_nc_u32 v55, 64, v55
	v_cndmask_b32_e32 v63, 0x80000000, v57, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[99:102], v64, s[24:27], 0 offen
	v_add_nc_u32_e32 v68, s1, v60
	buffer_load_b128 v[131:134], v63, s[24:27], 0 offen
	v_add_nc_u32_e32 v69, s1, v61
	ds_load_b128 v[87:90], v66
	ds_load_b128 v[103:106], v66 offset:4096
	ds_load_b128 v[107:110], v67
	ds_load_b128 v[111:114], v67 offset:4096
	ds_load_b128 v[115:118], v68
	ds_load_b128 v[119:122], v68 offset:4096
	ds_load_b128 v[123:126], v69
	ds_load_b128 v[127:130], v69 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v64, v65 offset:64
	ds_load_u8 v66, v65
	ds_load_u8 v67, v65 offset:192
	ds_load_u8 v68, v65 offset:128
	ds_load_u8 v69, v65 offset:224
	ds_load_u8 v70, v65 offset:160
	ds_load_u8 v71, v65 offset:96
	ds_load_u8 v72, v65 offset:32
	ds_load_u8 v73, v65 offset:2624
	ds_load_u8 v74, v65 offset:2560
	ds_load_u8 v75, v65 offset:2752
	ds_load_u8 v76, v65 offset:832
	ds_load_u8 v77, v65 offset:768
	ds_load_u8 v78, v65 offset:960
	ds_load_u8 v79, v65 offset:896
	ds_load_u8 v80, v65 offset:992
	ds_load_u8 v81, v65 offset:928
	ds_load_u8 v82, v65 offset:864
	ds_load_u8 v83, v65 offset:800
	ds_load_u8 v84, v65 offset:576
	ds_load_u8 v85, v65 offset:512
	ds_load_u8 v86, v65 offset:704
	ds_load_u8 v91, v65 offset:640
	ds_load_u8 v92, v65 offset:736
	ds_load_u8 v93, v65 offset:672
	ds_load_u8 v94, v65 offset:608
	ds_load_u8 v135, v65 offset:544
	ds_load_u8 v136, v65 offset:320
	ds_load_u8 v137, v65 offset:256
	ds_load_u8 v138, v65 offset:448
	ds_load_u8 v139, v65 offset:384
	ds_load_u8 v140, v65 offset:480
	ds_load_u8 v141, v65 offset:416
	ds_load_u8 v142, v65 offset:352
	ds_load_u8 v143, v65 offset:288
	ds_load_u8 v144, v65 offset:1856
	ds_load_u8 v145, v65 offset:1792
	ds_load_u8 v146, v65 offset:1984
	ds_load_u8 v147, v65 offset:1920
	ds_load_u8 v148, v65 offset:2016
	ds_load_u8 v149, v65 offset:1952
	ds_load_u8 v150, v65 offset:1888
	ds_load_u8 v151, v65 offset:1824
	ds_load_u8 v152, v65 offset:1600
	ds_load_u8 v153, v65 offset:1536
	ds_load_u8 v154, v65 offset:1728
	ds_load_u8 v155, v65 offset:1664
	ds_load_u8 v156, v65 offset:1760
	ds_load_u8 v157, v65 offset:1696
	ds_load_u8 v158, v65 offset:1632
	ds_load_u8 v159, v65 offset:1568
	ds_load_u8 v160, v65 offset:1344
	ds_load_u8 v161, v65 offset:1280
	ds_load_u8 v162, v65 offset:1472
	ds_load_u8 v163, v65 offset:1408
	ds_load_u8 v164, v65 offset:1504
	ds_load_u8 v165, v65 offset:1440
	ds_load_u8 v166, v65 offset:1376
	ds_load_u8 v167, v65 offset:1312
	ds_load_u8 v168, v65 offset:1088
	ds_load_u8 v169, v65 offset:1024
	ds_load_u8 v170, v65 offset:1216
	ds_load_u8 v171, v65 offset:1152
	ds_load_u8 v172, v65 offset:1248
	ds_load_u8 v173, v65 offset:1184
	ds_load_u8 v174, v65 offset:1120
	ds_load_u8 v175, v65 offset:1056
	ds_load_u8 v176, v65 offset:2880
	ds_load_u8 v177, v65 offset:2816
	ds_load_u8 v178, v65 offset:3008
	ds_load_u8 v179, v65 offset:2944
	ds_load_u8 v180, v65 offset:3040
	ds_load_u8 v181, v65 offset:2976
	ds_load_u8 v182, v65 offset:2912
	ds_load_u8 v183, v65 offset:2848
	ds_load_u8 v63, v65 offset:2688
	ds_load_u8 v184, v65 offset:2784
	ds_load_u8 v185, v65 offset:2720
	ds_load_u8 v186, v65 offset:2656
	ds_load_u8 v187, v65 offset:2592
	ds_load_u8 v188, v65 offset:2368
	ds_load_u8 v189, v65 offset:2304
	ds_load_u8 v190, v65 offset:2496
	ds_load_u8 v191, v65 offset:2432
	ds_load_u8 v192, v65 offset:2528
	ds_load_u8 v193, v65 offset:2464
	ds_load_u8 v194, v65 offset:2400
	ds_load_u8 v195, v65 offset:2336
	ds_load_u8 v196, v65 offset:2112
	ds_load_u8 v197, v65 offset:2048
	ds_load_u8 v198, v65 offset:2240
	ds_load_u8 v199, v65 offset:2176
	ds_load_u8 v200, v65 offset:2272
	ds_load_u8 v201, v65 offset:2208
	ds_load_u8 v202, v65 offset:2144
	ds_load_u8 v203, v65 offset:2080
	ds_load_u8 v204, v65 offset:3904
	ds_load_u8 v205, v65 offset:3840
	ds_load_u8 v206, v65 offset:4032
	ds_load_u8 v207, v65 offset:3968
	ds_load_u8 v208, v65 offset:4064
	ds_load_u8 v209, v65 offset:4000
	ds_load_u8 v210, v65 offset:3936
	ds_load_u8 v211, v65 offset:3872
	ds_load_u8 v212, v65 offset:3648
	ds_load_u8 v213, v65 offset:3584
	ds_load_u8 v214, v65 offset:3776
	ds_load_u8 v215, v65 offset:3712
	ds_load_u8 v216, v65 offset:3808
	ds_load_u8 v217, v65 offset:3744
	ds_load_u8 v218, v65 offset:3680
	ds_load_u8 v219, v65 offset:3616
	ds_load_u8 v220, v65 offset:3392
	ds_load_u8 v221, v65 offset:3328
	ds_load_u8 v222, v65 offset:3520
	ds_load_u8 v223, v65 offset:3456
	ds_load_u8 v224, v65 offset:3552
	ds_load_u8 v225, v65 offset:3488
	ds_load_u8 v226, v65 offset:3424
	ds_load_u8 v227, v65 offset:3360
	ds_load_u8 v228, v65 offset:3136
	ds_load_u8 v229, v65 offset:3072
	ds_load_u8 v230, v65 offset:3264
	ds_load_u8 v231, v65 offset:3200
	ds_load_u8 v232, v65 offset:3296
	ds_load_u8 v233, v65 offset:3232
	ds_load_u8 v234, v65 offset:3168
	ds_load_u8 v65, v65 offset:3104
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v77, v79, v78, 0xc0c0004
	v_perm_b32 v78, v85, v84, 0xc0c0004
	v_perm_b32 v79, v91, v86, 0xc0c0004
	v_perm_b32 v84, v137, v136, 0xc0c0004
	v_perm_b32 v85, v139, v138, 0xc0c0004
	v_perm_b32 v64, v66, v64, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v145, v144, 0xc0c0004
	v_perm_b32 v68, v147, v146, 0xc0c0004
	v_perm_b32 v86, v153, v152, 0xc0c0004
	v_perm_b32 v91, v155, v154, 0xc0c0004
	v_perm_b32 v136, v161, v160, 0xc0c0004
	v_perm_b32 v139, v163, v162, 0xc0c0004
	v_perm_b32 v144, v169, v168, 0xc0c0004
	v_perm_b32 v145, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v146, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v147, v179, v178, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v63, v63, v75, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v152, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v153, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v154, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v155, v207, v206, 0xc0c0004
	v_perm_b32 v83, v83, v82, 0xc0c0004
	v_perm_b32 v170, v81, v80, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_perm_b32 v70, v151, v150, 0xc0c0004
	v_perm_b32 v72, v149, v148, 0xc0c0004
	v_perm_b32 v151, v159, v158, 0xc0c0004
	v_perm_b32 v156, v157, v156, 0xc0c0004
	v_perm_b32 v158, v165, v164, 0xc0c0004
	v_perm_b32 v159, v175, v174, 0xc0c0004
	v_perm_b32 v164, v173, v172, 0xc0c0004
	v_perm_b32 v165, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v234, 0xc0c0004
	v_perm_b32 v183, v233, v232, 0xc0c0004
	v_lshl_or_b32 v82, v77, 16, v76
	v_lshl_or_b32 v81, v79, 16, v78
	v_lshl_or_b32 v80, v85, 16, v84
	v_lshl_or_b32 v79, v66, 16, v64
	v_perm_b32 v74, v189, v188, 0xc0c0004
	v_perm_b32 v75, v191, v190, 0xc0c0004
	v_perm_b32 v94, v135, v94, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v93, v143, v142, 0xc0c0004
	v_perm_b32 v171, v141, v140, 0xc0c0004
	v_lshl_or_b32 v138, v68, 16, v67
	v_lshl_or_b32 v137, v91, 16, v86
	v_lshl_or_b32 v136, v139, 16, v136
	v_lshl_or_b32 v135, v145, 16, v144
	v_lshl_or_b32 v142, v147, 16, v146
	v_lshl_or_b32 v141, v63, 16, v73
	v_lshl_or_b32 v139, v153, 16, v152
	v_lshl_or_b32 v146, v155, 16, v154
	v_lshl_or_b32 v147, v69, 16, v71
	v_lshl_or_b32 v154, v72, 16, v70
	v_lshl_or_b32 v153, v156, 16, v151
	v_lshl_or_b32 v151, v164, 16, v159
	v_lshl_or_b32 v159, v183, 16, v65
	v_wmma_i32_16x16x16_iu8 v[63:70], v[87:90], v[79:82], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v160, v213, v212, 0xc0c0004
	v_perm_b32 v161, v215, v214, 0xc0c0004
	v_perm_b32 v162, v221, v220, 0xc0c0004
	v_perm_b32 v163, v223, v222, 0xc0c0004
	v_perm_b32 v168, v229, v228, 0xc0c0004
	v_perm_b32 v169, v231, v230, 0xc0c0004
	v_perm_b32 v157, v167, v166, 0xc0c0004
	v_lshl_or_b32 v140, v75, 16, v74
	v_lshl_or_b32 v150, v170, 16, v83
	v_lshl_or_b32 v149, v92, 16, v94
	v_lshl_or_b32 v148, v171, 16, v93
	v_wmma_i32_16x16x16_iu8 v[71:78], v[103:106], v[79:82], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[107:110], v[135:138], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v166, v181, v180, 0xc0c0004
	v_perm_b32 v167, v187, v186, 0xc0c0004
	v_perm_b32 v172, v185, v184, 0xc0c0004
	v_perm_b32 v173, v195, v194, 0xc0c0004
	v_perm_b32 v174, v193, v192, 0xc0c0004
	v_perm_b32 v175, v203, v202, 0xc0c0004
	v_perm_b32 v176, v201, v200, 0xc0c0004
	v_lshl_or_b32 v145, v161, 16, v160
	v_lshl_or_b32 v144, v163, 16, v162
	v_lshl_or_b32 v143, v169, 16, v168
	v_lshl_or_b32 v152, v158, 16, v157
	v_wmma_i32_16x16x16_iu8 v[79:86], v[87:90], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[111:114], v[135:138], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[115:118], v[139:142], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v177, v211, v210, 0xc0c0004
	v_perm_b32 v178, v209, v208, 0xc0c0004
	v_perm_b32 v179, v219, v218, 0xc0c0004
	v_perm_b32 v180, v217, v216, 0xc0c0004
	v_perm_b32 v181, v227, v226, 0xc0c0004
	v_perm_b32 v182, v225, v224, 0xc0c0004
	v_lshl_or_b32 v158, v166, 16, v165
	v_lshl_or_b32 v157, v172, 16, v167
	v_lshl_or_b32 v156, v174, 16, v173
	v_lshl_or_b32 v155, v176, 16, v175
	v_wmma_i32_16x16x16_iu8 v[79:86], v[107:110], v[151:154], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[111:114], v[151:154], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[119:122], v[139:142], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[123:126], v[143:146], v[63:70] neg_lo:[1,1,0]
	s_mov_b32 s4, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s5, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v162, v178, 16, v177
	v_lshl_or_b32 v161, v180, 16, v179
	v_lshl_or_b32 v160, v182, 16, v181
	v_wmma_i32_16x16x16_iu8 v[79:86], v[115:118], v[155:158], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[119:122], v[155:158], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[127:130], v[143:146], v[71:78] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s0, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s0, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s0, s5, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[79:86], v[123:126], v[159:162], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[127:130], v[159:162], v[87:94] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v39, v65 :: v_dual_add_nc_u32 v58, s33, v58
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s0, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s6, s0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v66
	v_dual_add_f32 v37, v37, v67 :: v_dual_add_nc_u32 v62, s3, v62
	v_dual_add_f32 v34, v34, v70 :: v_dual_add_nc_u32 v57, s33, v57
	v_dual_add_f32 v32, v32, v72 :: v_dual_add_nc_u32 v235, s6, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v68 :: v_dual_add_f32 v35, v35, v69
	v_add_f32_e32 v33, v33, v71
	v_dual_add_f32 v31, v31, v73 :: v_dual_add_nc_u32 v238, s0, v47
	v_dual_add_f32 v30, v30, v74 :: v_dual_add_nc_u32 v239, s0, v48
	v_dual_add_f32 v29, v29, v75 :: v_dual_add_nc_u32 v236, s0, v45
	v_dual_add_f32 v27, v27, v76 :: v_dual_add_nc_u32 v240, s0, v49
	v_dual_add_f32 v26, v26, v77 :: v_dual_add_nc_u32 v237, s0, v46
	v_dual_add_f32 v24, v24, v79 :: v_dual_add_nc_u32 v241, s0, v50
	v_dual_add_f32 v25, v25, v78 :: v_dual_add_nc_u32 v242, s0, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v28, v28, v63 :: v_dual_add_f32 v23, v23, v80
	v_dual_add_f32 v22, v22, v81 :: v_dual_add_f32 v21, v21, v82
	v_dual_add_f32 v20, v20, v83 :: v_dual_add_f32 v19, v19, v84
	v_dual_add_f32 v18, v18, v85 :: v_dual_add_f32 v17, v17, v86
	v_dual_add_f32 v16, v16, v87 :: v_dual_add_f32 v15, v15, v88
	v_dual_add_f32 v14, v14, v89 :: v_dual_add_f32 v13, v13, v90
	v_dual_add_f32 v12, v12, v91 :: v_dual_add_f32 v11, v11, v92
	v_dual_add_f32 v10, v10, v93 :: v_dual_add_f32 v9, v9, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s34, s34, -1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s6, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s34, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v235, v[95:98] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v64, v131, v99, 0x5010400
	v_perm_b32 v65, v131, v99, 0x7030602
	v_perm_b32 v66, v132, v100, 0x5010400
	v_perm_b32 v67, v132, v100, 0x7030602
	v_perm_b32 v68, v133, v101, 0x5010400
	v_perm_b32 v69, v133, v101, 0x7030602
	v_perm_b32 v70, v134, v102, 0x5010400
	v_perm_b32 v71, v134, v102, 0x7030602
	v_lshrrev_b32_e32 v72, 8, v64
	v_lshrrev_b32_e32 v73, 24, v64
	v_lshrrev_b32_e32 v74, 8, v65
	v_lshrrev_b32_e32 v75, 24, v65
	v_lshrrev_b32_e32 v76, 8, v66
	v_and_b16 v63.l, 0xff, v64.l
	v_and_b16 v64.l, 0xff, v65.l
	v_and_b16 v65.l, 0xff, v66.l
	v_lshrrev_b32_e32 v77, 24, v66
	v_and_b16 v66.l, 0xff, v67.l
	v_lshrrev_b32_e32 v78, 8, v67
	v_lshrrev_b32_e32 v79, 24, v67
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v80, 8, v68
	v_lshrrev_b32_e32 v81, 24, v68
	v_and_b16 v68.l, 0xff, v69.l
	v_lshrrev_b32_e32 v82, 8, v69
	v_lshrrev_b32_e32 v83, 24, v69
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v84, 8, v70
	v_lshrrev_b32_e32 v85, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v86, 8, v71
	v_lshrrev_b32_e32 v87, 24, v71
	v_lshlrev_b16 v71.l, 8, v72.l
	v_and_b16 v63.h, 0xff, v64.h
	v_and_b16 v64.h, 0xff, v65.h
	v_and_b16 v65.h, 0xff, v66.h
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.h, 0xff, v68.h
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.h
	v_lshlrev_b16 v71.h, 8, v73.l
	v_lshlrev_b16 v72.l, 8, v74.l
	v_lshlrev_b16 v72.h, 8, v75.l
	v_lshlrev_b16 v73.l, 8, v76.l
	v_lshlrev_b16 v73.h, 8, v77.l
	v_lshlrev_b16 v74.l, 8, v78.l
	v_lshlrev_b16 v74.h, 8, v79.l
	v_lshlrev_b16 v75.l, 8, v80.l
	v_lshlrev_b16 v75.h, 8, v81.l
	v_lshlrev_b16 v76.l, 8, v82.l
	v_lshlrev_b16 v76.h, 8, v83.l
	v_lshlrev_b16 v77.l, 8, v84.l
	v_lshlrev_b16 v77.h, 8, v85.l
	v_lshlrev_b16 v78.l, 8, v86.l
	v_lshlrev_b16 v78.h, 8, v87.l
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
	v_or_b16 v68.l, v68.l, v76.l
	v_or_b16 v68.h, v68.h, v76.h
	v_or_b16 v69.l, v69.l, v77.l
	v_or_b16 v69.h, v69.h, v77.h
	v_or_b16 v70.l, v70.l, v78.l
	v_or_b16 v70.h, v70.h, v78.h
	ds_store_b16 v236, v63
	ds_store_b16_d16_hi v236, v63 offset:64
	ds_store_b16 v237, v64
	ds_store_b16_d16_hi v237, v64 offset:64
	ds_store_b16 v238, v65
	ds_store_b16_d16_hi v238, v65 offset:64
	ds_store_b16 v239, v66
	ds_store_b16_d16_hi v239, v66 offset:64
	ds_store_b16 v240, v67
	ds_store_b16_d16_hi v240, v67 offset:64
	ds_store_b16 v236, v68 offset:640
	ds_store_b16_d16_hi v236, v68 offset:704
	ds_store_b16 v241, v69
	ds_store_b16_d16_hi v241, v69 offset:64
	ds_store_b16 v242, v70
	ds_store_b16_d16_hi v242, v70 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v54, v43 :: v_dual_mov_b32 v55, v44
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v28, 0
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s0, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v52
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
	v_add_nc_u32_e32 v58, s28, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v43, v58 offset:832
	ds_load_u8 v44, v58 offset:768
	ds_load_u8 v45, v58 offset:960
	ds_load_u8 v46, v58 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v110, s4, v4
	v_add_nc_u32_e32 v42, s4, v2
	ds_load_b128 v[5:8], v110
	ds_load_b128 v[74:77], v42 offset:4096
	ds_load_b128 v[78:81], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v42, v58 offset:576
	ds_load_u8 v48, v58 offset:512
	ds_load_u8 v49, v58 offset:704
	ds_load_u8 v50, v58 offset:640
	ds_load_u8 v51, v58 offset:320
	ds_load_u8 v52, v58 offset:256
	ds_load_u8 v53, v58 offset:448
	ds_load_u8 v54, v58 offset:384
	ds_load_u8 v106, v58 offset:992
	ds_load_u8 v107, v58 offset:928
	ds_load_u8 v108, v58 offset:864
	ds_load_u8 v109, v58 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v47, s4, v1
	ds_load_b128 v[82:85], v47 offset:4096
	ds_load_b128 v[86:89], v47
	v_add_nc_u32_e32 v59, s4, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v48, v42, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v50, v49, 0xc0c0004
	v_perm_b32 v44, v46, v45, 0xc0c0004
	ds_load_u8 v45, v58 offset:64
	ds_load_u8 v46, v58
	ds_load_u8 v55, v58 offset:192
	ds_load_u8 v56, v58 offset:128
	ds_load_u8 v111, v58 offset:736
	ds_load_u8 v112, v58 offset:672
	ds_load_u8 v113, v58 offset:608
	ds_load_u8 v114, v58 offset:544
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_lshl_or_b32 v68, v48, 16, v42
	v_lshl_or_b32 v69, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v50, 16, v49
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v42, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v56, v55, 0xc0c0004
	v_lshl_or_b32 v66, v43, 16, v42
	v_mov_b32_e32 v49, s15
	ds_load_u8 v50, v58 offset:1856
	ds_load_u8 v51, v58 offset:1792
	ds_load_u8 v52, v58 offset:1984
	ds_load_u8 v53, v58 offset:1920
	ds_load_u8 v54, v58 offset:1600
	ds_load_u8 v55, v58 offset:1536
	ds_load_u8 v56, v58 offset:1728
	ds_load_u8 v57, v58 offset:1664
	ds_load_u8 v60, v58 offset:1344
	ds_load_u8 v61, v58 offset:1280
	ds_load_u8 v62, v58 offset:1472
	ds_load_u8 v63, v58 offset:1408
	ds_load_u8 v123, v58 offset:2016
	ds_load_u8 v124, v58 offset:1952
	ds_load_u8 v125, v58 offset:1888
	ds_load_u8 v126, v58 offset:1824
	ds_load_u8 v98, v58 offset:2368
	ds_load_u8 v99, v58 offset:2304
	ds_load_u8 v102, v58 offset:2496
	ds_load_u8 v103, v58 offset:2432
	ds_load_u8 v104, v58 offset:2112
	ds_load_u8 v105, v58 offset:2048
	ds_load_u8 v143, v58 offset:2240
	ds_load_u8 v144, v58 offset:2176
	ds_load_u8 v145, v58 offset:2784
	ds_load_u8 v146, v58 offset:2720
	ds_load_u8 v147, v58 offset:2656
	ds_load_u8 v148, v58 offset:2592
	v_dual_mov_b32 v48, s14 :: v_dual_mov_b32 v47, s13
	v_dual_mov_b32 v46, s12 :: v_dual_mov_b32 v45, s11
	v_dual_mov_b32 v44, s10 :: v_dual_mov_b32 v43, s9
	v_mov_b32_e32 v42, s8
	ds_load_u8 v115, v58 offset:480
	ds_load_u8 v116, v58 offset:416
	ds_load_u8 v117, v58 offset:352
	ds_load_u8 v118, v58 offset:288
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v70, v55, v54, 0xc0c0004
	ds_load_u8 v119, v58 offset:224
	ds_load_u8 v120, v58 offset:160
	ds_load_u8 v121, v58 offset:96
	ds_load_u8 v122, v58 offset:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v71, v57, v56, 0xc0c0004
	ds_load_u8 v131, v58 offset:1504
	ds_load_u8 v132, v58 offset:1440
	ds_load_u8 v133, v58 offset:1376
	ds_load_u8 v134, v58 offset:1312
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v149, v58 offset:2528
	ds_load_u8 v150, v58 offset:2464
	ds_load_u8 v151, v58 offset:2400
	ds_load_u8 v152, v58 offset:2336
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v61, v63, v62, 0xc0c0004
	v_perm_b32 v64, v51, v50, 0xc0c0004
	ds_load_u8 v62, v58 offset:2880
	ds_load_u8 v63, v58 offset:2816
	ds_load_u8 v90, v58 offset:3008
	ds_load_u8 v91, v58 offset:2944
	ds_load_u8 v135, v58 offset:1248
	ds_load_u8 v136, v58 offset:1184
	ds_load_u8 v137, v58 offset:1120
	ds_load_u8 v138, v58 offset:1056
	v_perm_b32 v65, v53, v52, 0xc0c0004
	ds_load_u8 v50, v58 offset:1088
	ds_load_u8 v51, v58 offset:1024
	ds_load_u8 v52, v58 offset:1216
	ds_load_u8 v53, v58 offset:1152
	ds_load_u8 v127, v58 offset:1760
	ds_load_u8 v128, v58 offset:1696
	ds_load_u8 v129, v58 offset:1632
	ds_load_u8 v130, v58 offset:1568
	v_lshl_or_b32 v72, v71, 16, v70
	v_lshl_or_b32 v71, v61, 16, v60
	ds_load_u8 v153, v58 offset:2272
	ds_load_u8 v154, v58 offset:2208
	ds_load_u8 v155, v58 offset:2144
	ds_load_u8 v156, v58 offset:2080
	v_lshl_or_b32 v73, v65, 16, v64
	ds_load_u8 v60, v58 offset:2624
	ds_load_u8 v61, v58 offset:2560
	ds_load_u8 v64, v58 offset:2752
	ds_load_u8 v65, v58 offset:2688
	ds_load_u8 v139, v58 offset:3040
	ds_load_u8 v140, v58 offset:2976
	ds_load_u8 v141, v58 offset:2912
	ds_load_u8 v142, v58 offset:2848
	ds_load_u8 v164, v58 offset:3808
	ds_load_u8 v165, v58 offset:3744
	ds_load_u8 v166, v58 offset:3680
	ds_load_u8 v167, v58 offset:3616
	ds_load_u8 v168, v58 offset:3552
	ds_load_u8 v169, v58 offset:3488
	ds_load_u8 v170, v58 offset:3424
	ds_load_u8 v171, v58 offset:3360
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v92, v51, v50, 0xc0c0004
	v_perm_b32 v63, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v93, v53, v52, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[50:57], v[86:89], v[66:69], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_lshl_or_b32 v101, v63, 16, v62
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v61, v65, v64, 0xc0c0004
	v_lshl_or_b32 v70, v93, 16, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[90:93], v59 offset:4096
	ds_load_b128 v[94:97], v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v59, v99, v98, 0xc0c0004
	v_perm_b32 v62, v144, v143, 0xc0c0004
	v_lshl_or_b32 v100, v61, 16, v60
	v_perm_b32 v60, v103, v102, 0xc0c0004
	v_perm_b32 v61, v105, v104, 0xc0c0004
	ds_load_u8 v63, v58 offset:3904
	ds_load_u8 v64, v58 offset:3840
	ds_load_u8 v65, v58 offset:4032
	ds_load_u8 v102, v58 offset:3968
	v_wmma_i32_16x16x16_iu8 v[50:57], v[78:81], v[70:73], v[50:57] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v60, 16, v59
	v_lshl_or_b32 v98, v62, 16, v61
	ds_load_u8 v59, v58 offset:3648
	ds_load_u8 v60, v58 offset:3584
	ds_load_u8 v61, v58 offset:3776
	ds_load_u8 v62, v58 offset:3712
	ds_load_u8 v103, v58 offset:3392
	ds_load_u8 v104, v58 offset:3328
	ds_load_u8 v105, v58 offset:3520
	ds_load_u8 v143, v58 offset:3456
	ds_load_u8 v144, v58 offset:3136
	ds_load_u8 v157, v58 offset:3072
	ds_load_u8 v158, v58 offset:3264
	ds_load_u8 v159, v58 offset:3200
	ds_load_u8 v160, v58 offset:4064
	ds_load_u8 v161, v58 offset:4000
	ds_load_u8 v162, v58 offset:3936
	ds_load_u8 v163, v58 offset:3872
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v62, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[50:57], v[94:97], v[98:101], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v61, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v143, v105, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v143, v58 offset:3296
	ds_load_u8 v172, v58 offset:3232
	ds_load_u8 v173, v58 offset:3168
	ds_load_u8 v174, v58 offset:3104
	v_perm_b32 v64, v102, v65, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v157, v144, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v159, v158, 0xc0c0004
	v_lshl_or_b32 v104, v60, 16, v59
	v_lshl_or_b32 v103, v62, 16, v61
	v_lshl_or_b32 v105, v64, 16, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v65, 16, v58
	v_wmma_i32_16x16x16_iu8 v[50:57], v[5:8], v[102:105], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[66:69], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v66, v109, v108, 0xc0c0004
	v_perm_b32 v67, v107, v106, 0xc0c0004
	v_perm_b32 v68, v114, v113, 0xc0c0004
	v_perm_b32 v69, v112, v111, 0xc0c0004
	v_perm_b32 v106, v118, v117, 0xc0c0004
	v_perm_b32 v107, v116, v115, 0xc0c0004
	v_perm_b32 v111, v122, v121, 0xc0c0004
	v_perm_b32 v112, v120, v119, 0xc0c0004
	v_lshl_or_b32 v109, v67, 16, v66
	v_lshl_or_b32 v108, v69, 16, v68
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
	v_wmma_i32_16x16x16_iu8 v[58:65], v[74:77], v[70:73], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[106:109], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v112, 16, v111
	v_lshl_or_b32 v88, v114, 16, v113
	v_lshl_or_b32 v87, v116, 16, v115
	v_lshl_or_b32 v86, v118, 16, v117
	v_perm_b32 v111, v142, v141, 0xc0c0004
	v_perm_b32 v112, v140, v139, 0xc0c0004
	v_perm_b32 v113, v148, v147, 0xc0c0004
	v_perm_b32 v114, v146, v145, 0xc0c0004
	v_perm_b32 v115, v152, v151, 0xc0c0004
	v_perm_b32 v116, v150, v149, 0xc0c0004
	v_perm_b32 v117, v156, v155, 0xc0c0004
	v_perm_b32 v118, v154, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[86:89], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v112, 16, v111
	v_lshl_or_b32 v80, v114, 16, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[110:113], v110 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v79, v116, 16, v115
	v_lshl_or_b32 v78, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[42:49], v[82:85], v[106:109], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v82, v171, v170, 0xc0c0004
	v_perm_b32 v83, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v84, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[94:97], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_perm_b32 v94, v163, v162, 0xc0c0004
	v_perm_b32 v95, v161, v160, 0xc0c0004
	v_perm_b32 v96, v167, v166, 0xc0c0004
	v_perm_b32 v97, v165, v164, 0xc0c0004
	v_perm_b32 v85, v172, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[90:93], v[98:101], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[74:77], v[86:89], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v95, 16, v94
	v_lshl_or_b32 v76, v97, 16, v96
	v_lshl_or_b32 v75, v83, 16, v82
	v_lshl_or_b32 v74, v85, 16, v84
	v_wmma_i32_16x16x16_iu8 v[42:49], v[90:93], v[78:81], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[110:113], v[102:105], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[5:8], v[74:77], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v53
	v_cvt_f32_i32_e32 v6, v54
	v_cvt_f32_i32_e32 v7, v55
	v_cvt_f32_i32_e32 v8, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v51, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v38, v38, v5 :: v_dual_add_f32 v37, v37, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v35, v35, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v7, v60
	v_cvt_f32_i32_e32 v8, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v51, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v6 :: v_dual_add_f32 v31, v31, v7
	v_add_f32_e32 v30, v30, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v64
	v_cvt_f32_i32_e32 v7, v65
	v_cvt_f32_i32_e32 v8, v66
	v_wmma_i32_16x16x16_iu8 v[42:49], v[110:113], v[74:77], v[42:49] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v29, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v51, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v27, v5 :: v_dual_add_f32 v26, v26, v6
	v_dual_add_f32 v25, v25, v7 :: v_dual_add_f32 v24, v24, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v23, v23, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v68
	v_cvt_f32_i32_e32 v6, v69
	v_cvt_f32_i32_e32 v7, v70
	v_cvt_f32_i32_e32 v8, v71
	v_cvt_f32_i32_e32 v51, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v22, v5 :: v_dual_add_f32 v21, v21, v6
	v_dual_add_f32 v20, v20, v7 :: v_dual_add_f32 v19, v19, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v73
	v_cvt_f32_i32_e32 v6, v42
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v42, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v51 :: v_dual_add_f32 v17, v17, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v16, v16, v6 :: v_dual_add_f32 v15, v15, v7
	v_dual_add_f32 v14, v14, v8 :: v_dual_add_f32 v13, v13, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v46
	v_cvt_f32_i32_e32 v6, v47
	v_cvt_f32_i32_e32 v7, v48
	v_cvt_f32_i32_e32 v8, v49
	v_cvt_f32_i32_e32 v42, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v12, v12, v5 :: v_dual_add_f32 v11, v11, v6
	v_dual_add_f32 v10, v10, v7 :: v_dual_add_f32 v9, v9, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v28, v28, v42
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
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
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s0, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s1, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s0, v3
	v_add_nc_u32_e32 v1, s0, v1
	ds_load_b128 v[50:53], v4 offset:4096
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[58:61], v3 offset:4096
	ds_load_b128 v[79:82], v3
	v_add_nc_u32_e32 v42, s0, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v62 offset:832
	ds_load_u8 v3, v62 offset:768
	ds_load_u8 v4, v62 offset:960
	ds_load_u8 v5, v62 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[83:86], v1 offset:4096
	ds_load_b128 v[87:90], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v62 offset:576
	ds_load_u8 v6, v62 offset:512
	ds_load_u8 v7, v62 offset:704
	ds_load_u8 v8, v62 offset:640
	ds_load_u8 v43, v62 offset:320
	ds_load_u8 v44, v62 offset:256
	ds_load_u8 v45, v62 offset:448
	ds_load_u8 v46, v62 offset:384
	ds_load_u8 v47, v62 offset:64
	ds_load_u8 v48, v62
	ds_load_u8 v49, v62 offset:192
	ds_load_u8 v63, v62 offset:128
	ds_load_u8 v103, v62 offset:992
	ds_load_u8 v104, v62 offset:928
	ds_load_u8 v105, v62 offset:864
	ds_load_u8 v107, v62 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v74, v3, 16, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v46, v45, 0xc0c0004
	v_lshl_or_b32 v73, v4, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v63, v49, 0xc0c0004
	v_lshl_or_b32 v72, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v71, v8, 16, v7
	v_mov_b32_e32 v1, s4
	ds_load_u8 v63, v62 offset:1856
	ds_load_u8 v64, v62 offset:1792
	v_mov_b32_e32 v5, s8
	ds_load_u8 v65, v62 offset:1984
	ds_load_u8 v66, v62 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[91:94], v42 offset:4096
	ds_load_b128 v[95:98], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v67, v62 offset:1600
	ds_load_u8 v68, v62 offset:1536
	ds_load_u8 v69, v62 offset:1728
	ds_load_u8 v70, v62 offset:1664
	ds_load_u8 v75, v62 offset:1344
	ds_load_u8 v76, v62 offset:1280
	ds_load_u8 v77, v62 offset:1472
	ds_load_u8 v78, v62 offset:1408
	ds_load_u8 v120, v62 offset:2016
	ds_load_u8 v121, v62 offset:1952
	ds_load_u8 v122, v62 offset:1888
	ds_load_u8 v123, v62 offset:1824
	ds_load_u8 v108, v62 offset:736
	ds_load_u8 v109, v62 offset:672
	ds_load_u8 v110, v62 offset:608
	ds_load_u8 v111, v62 offset:544
	ds_load_u8 v112, v62 offset:480
	ds_load_u8 v113, v62 offset:416
	ds_load_u8 v114, v62 offset:352
	ds_load_u8 v115, v62 offset:288
	ds_load_u8 v116, v62 offset:224
	ds_load_u8 v117, v62 offset:160
	ds_load_u8 v118, v62 offset:96
	ds_load_u8 v119, v62 offset:32
	ds_load_u8 v128, v62 offset:1504
	ds_load_u8 v129, v62 offset:1440
	ds_load_u8 v130, v62 offset:1376
	ds_load_u8 v131, v62 offset:1312
	ds_load_u8 v132, v62 offset:1248
	ds_load_u8 v133, v62 offset:1184
	ds_load_u8 v134, v62 offset:1120
	ds_load_u8 v135, v62 offset:1056
	ds_load_u8 v145, v62 offset:2528
	ds_load_u8 v146, v62 offset:2464
	ds_load_u8 v147, v62 offset:2400
	ds_load_u8 v148, v62 offset:2336
	ds_load_u8 v149, v62 offset:2272
	ds_load_u8 v150, v62 offset:2208
	ds_load_u8 v151, v62 offset:2144
	ds_load_u8 v152, v62 offset:2080
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v69, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v70, v78, v77, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v62 offset:1088
	ds_load_u8 v99, v62 offset:1024
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v62 offset:1216
	ds_load_u8 v100, v62 offset:1152
	ds_load_u8 v124, v62 offset:1760
	ds_load_u8 v125, v62 offset:1696
	ds_load_u8 v126, v62 offset:1632
	ds_load_u8 v127, v62 offset:1568
	v_lshl_or_b32 v77, v68, 16, v67
	v_lshl_or_b32 v76, v70, 16, v69
	v_mov_b32_e32 v8, s11
	v_lshl_or_b32 v78, v65, 16, v63
	ds_load_u8 v162, v62 offset:3808
	ds_load_u8 v163, v62 offset:3744
	ds_load_u8 v164, v62 offset:3680
	ds_load_u8 v165, v62 offset:3616
	ds_load_u8 v168, v62 offset:3552
	ds_load_u8 v169, v62 offset:3488
	ds_load_u8 v170, v62 offset:3424
	ds_load_u8 v171, v62 offset:3360
	v_wmma_i32_16x16x16_iu8 v[42:49], v[87:90], v[71:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v100, v66, 0xc0c0004
	ds_load_u8 v100, v62 offset:3008
	ds_load_u8 v102, v62 offset:2944
	v_perm_b32 v64, v99, v64, 0xc0c0004
	ds_load_u8 v99, v62 offset:2880
	ds_load_u8 v101, v62 offset:2816
	v_lshl_or_b32 v75, v66, 16, v64
	ds_load_u8 v63, v62 offset:2624
	ds_load_u8 v64, v62 offset:2560
	ds_load_u8 v65, v62 offset:2752
	ds_load_u8 v66, v62 offset:2688
	ds_load_u8 v67, v62 offset:2368
	ds_load_u8 v68, v62 offset:2304
	ds_load_u8 v69, v62 offset:2496
	ds_load_u8 v70, v62 offset:2432
	ds_load_u8 v136, v62 offset:3040
	ds_load_u8 v137, v62 offset:2976
	ds_load_u8 v138, v62 offset:2912
	ds_load_u8 v139, v62 offset:2848
	v_wmma_i32_16x16x16_iu8 v[42:49], v[95:98], v[75:78], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v66, v65, 0xc0c0004
	v_perm_b32 v100, v102, v100, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	v_perm_b32 v99, v101, v99, 0xc0c0004
	ds_load_u8 v101, v62 offset:2112
	ds_load_u8 v106, v62 offset:2048
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v70, v69, 0xc0c0004
	ds_load_u8 v102, v62 offset:2240
	ds_load_u8 v140, v62 offset:2176
	ds_load_u8 v141, v62 offset:2784
	ds_load_u8 v142, v62 offset:2720
	ds_load_u8 v143, v62 offset:2656
	ds_load_u8 v144, v62 offset:2592
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v140, v102, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	v_perm_b32 v67, v106, v101, 0xc0c0004
	ds_load_u8 v68, v62 offset:3904
	ds_load_u8 v69, v62 offset:3840
	ds_load_u8 v70, v62 offset:4032
	ds_load_u8 v106, v62 offset:3968
	v_lshl_or_b32 v101, v64, 16, v63
	v_lshl_or_b32 v100, v66, 16, v65
	v_lshl_or_b32 v99, v140, 16, v67
	ds_load_u8 v63, v62 offset:3648
	ds_load_u8 v64, v62 offset:3584
	ds_load_u8 v65, v62 offset:3776
	ds_load_u8 v66, v62 offset:3712
	ds_load_u8 v67, v62 offset:3392
	ds_load_u8 v140, v62 offset:3328
	ds_load_u8 v153, v62 offset:3520
	ds_load_u8 v154, v62 offset:3456
	ds_load_u8 v155, v62 offset:4064
	ds_load_u8 v156, v62 offset:4000
	ds_load_u8 v157, v62 offset:3936
	ds_load_u8 v158, v62 offset:3872
	v_wmma_i32_16x16x16_iu8 v[42:49], v[79:82], v[99:102], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v166, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v66, v65, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v140, v67, 0xc0c0004
	v_perm_b32 v69, v106, v70, 0xc0c0004
	ds_load_u8 v70, v62 offset:3136
	ds_load_u8 v159, v62 offset:3072
	ds_load_u8 v160, v62 offset:3264
	ds_load_u8 v161, v62 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v62 offset:3296
	ds_load_u8 v172, v62 offset:3232
	ds_load_u8 v173, v62 offset:3168
	ds_load_u8 v62, v62 offset:3104
	v_lshl_or_b32 v106, v69, 16, v68
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v159, v70, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[83:86], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v71, v107, v105, 0xc0c0004
	v_perm_b32 v72, v104, v103, 0xc0c0004
	v_perm_b32 v73, v111, v110, 0xc0c0004
	v_perm_b32 v74, v109, v108, 0xc0c0004
	v_perm_b32 v103, v115, v114, 0xc0c0004
	v_perm_b32 v104, v113, v112, 0xc0c0004
	v_perm_b32 v105, v119, v118, 0xc0c0004
	v_perm_b32 v107, v117, v116, 0xc0c0004
	v_lshl_or_b32 v110, v72, 16, v71
	v_lshl_or_b32 v109, v74, 16, v73
	v_lshl_or_b32 v108, v104, 16, v103
	v_perm_b32 v103, v123, v122, 0xc0c0004
	v_lshl_or_b32 v107, v107, 16, v105
	v_perm_b32 v104, v121, v120, 0xc0c0004
	v_perm_b32 v105, v127, v126, 0xc0c0004
	v_perm_b32 v111, v125, v124, 0xc0c0004
	v_perm_b32 v112, v131, v130, 0xc0c0004
	v_perm_b32 v113, v129, v128, 0xc0c0004
	v_perm_b32 v114, v135, v134, 0xc0c0004
	v_perm_b32 v115, v133, v132, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[91:94], v[75:78], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v104, 16, v103
	v_lshl_or_b32 v89, v111, 16, v105
	v_lshl_or_b32 v88, v113, 16, v112
	v_lshl_or_b32 v87, v115, 16, v114
	v_perm_b32 v103, v139, v138, 0xc0c0004
	v_perm_b32 v104, v137, v136, 0xc0c0004
	v_perm_b32 v105, v144, v143, 0xc0c0004
	v_perm_b32 v111, v142, v141, 0xc0c0004
	v_perm_b32 v112, v148, v147, 0xc0c0004
	v_perm_b32 v113, v146, v145, 0xc0c0004
	v_perm_b32 v114, v152, v151, 0xc0c0004
	v_perm_b32 v115, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[95:98], v[87:90], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v104, 16, v103
	v_lshl_or_b32 v97, v111, 16, v105
	v_lshl_or_b32 v96, v113, 16, v112
	v_lshl_or_b32 v95, v115, 16, v114
	v_wmma_i32_16x16x16_iu8 v[1:8], v[83:86], v[107:110], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[58:61], v[99:102], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v99, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[95:98], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v79, v158, v157, 0xc0c0004
	v_perm_b32 v80, v156, v155, 0xc0c0004
	v_perm_b32 v81, v165, v164, 0xc0c0004
	v_perm_b32 v83, v171, v170, 0xc0c0004
	v_perm_b32 v84, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v62, v173, 0xc0c0004
	v_perm_b32 v85, v172, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[91:94], v[87:90], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v167, 16, v166
	v_lshl_or_b32 v104, v153, 16, v140
	v_lshl_or_b32 v103, v160, 16, v159
	v_lshl_or_b32 v82, v80, 16, v79
	v_lshl_or_b32 v81, v99, 16, v81
	v_lshl_or_b32 v80, v84, 16, v83
	v_lshl_or_b32 v79, v85, 16, v62
	v_wmma_i32_16x16x16_iu8 v[1:8], v[58:61], v[95:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[54:57], v[103:106], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[50:53], v[103:106], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[54:57], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[50:53], v[79:82], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v42
	v_cvt_f32_i32_e32 v56, v43
	v_cvt_f32_i32_e32 v57, v44
	v_cvt_f32_i32_e32 v58, v45
	v_cvt_f32_i32_e32 v59, v46
	v_cvt_f32_i32_e32 v60, v47
	v_cvt_f32_i32_e32 v61, v48
	v_cvt_f32_i32_e32 v62, v49
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v1
	v_cvt_f32_i32_e32 v80, v2
	v_cvt_f32_i32_e32 v81, v3
	v_cvt_f32_i32_e32 v82, v4
	v_cvt_f32_i32_e32 v83, v5
	v_cvt_f32_i32_e32 v84, v6
	v_cvt_f32_i32_e32 v85, v7
	v_cvt_f32_i32_e32 v86, v8
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v2, 32, v41
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v1, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v5, s19, v41
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v39, v57 :: v_dual_and_b32 v4, 48, v3
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s19, v2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v1, v1, v4, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v55, v28, v55 :: v_dual_lshlrev_b32 v4, 1, v5
	v_dual_add_f32 v56, v40, v56 :: v_dual_lshlrev_b32 v5, 1, v6
	v_dual_add_f32 v58, v38, v58 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	s_clause 0x1
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_or_b32_e32 v7, 4, v1
	v_or_b32_e32 v8, 8, v1
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	v_or_b32_e32 v42, 12, v1
	v_or_b32_e32 v43, 16, v1
	v_or_b32_e32 v44, 20, v1
	v_or_b32_e32 v45, 24, v1
	v_or_b32_e32 v46, 28, v1
	v_or_b32_e32 v47, 0x80, v1
	s_clause 0x7
	buffer_load_u16 v6, v1, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	v_or_b32_e32 v48, 0x84, v1
	v_or_b32_e32 v49, 0x88, v1
	v_or_b32_e32 v50, 0x8c, v1
	v_or_b32_e32 v51, 0x90, v1
	v_or_b32_e32 v52, 0x94, v1
	v_or_b32_e32 v53, 0x98, v1
	v_or_b32_e32 v1, 0x9c, v1
	s_clause 0x7
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v1, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v73, v22, v73 :: v_dual_add_f32 v74, v21, v74
	v_dual_add_f32 v65, v31, v65 :: v_dual_add_f32 v66, v30, v66
	v_dual_add_f32 v75, v20, v75 :: v_dual_add_f32 v76, v19, v76
	v_dual_add_f32 v77, v18, v77 :: v_dual_add_f32 v78, v17, v78
	v_dual_add_f32 v83, v12, v83 :: v_dual_add_f32 v84, v11, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v74, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v71, v24, v71 :: v_dual_add_f32 v72, v23, v72
	v_dual_add_f32 v61, v35, v61 :: v_dual_add_f32 v62, v34, v62
	v_dual_add_f32 v67, v29, v67 :: v_dual_add_f32 v68, v27, v68
	v_dual_add_f32 v79, v16, v79 :: v_dual_add_f32 v80, v15, v80
	v_dual_add_f32 v81, v14, v81 :: v_dual_add_f32 v82, v13, v82
	v_dual_add_f32 v85, v10, v85 :: v_dual_add_f32 v86, v9, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v55, s2
	v_cndmask_b32_e64 v39, v39, v57, s2
	v_cndmask_b32_e64 v31, v31, v65, s2
	v_cndmask_b32_e64 v22, v22, v73, s2
	v_cndmask_b32_e64 v20, v20, v75, s2
	v_cndmask_b32_e64 v19, v19, v76, s2
	v_cndmask_b32_e64 v18, v18, v77, s2
	v_cndmask_b32_e64 v12, v12, v83, s2
	v_cndmask_b32_e64 v40, v40, v56, s2
	v_cndmask_b32_e64 v24, v24, v71, s2
	v_cndmask_b32_e64 v38, v38, v58, s2
	v_cndmask_b32_e64 v35, v35, v61, s2
	v_cndmask_b32_e64 v34, v34, v62, s2
	v_cndmask_b32_e64 v27, v27, v68, s2
	v_cndmask_b32_e64 v23, v23, v72, s2
	v_cndmask_b32_e64 v17, v17, v78, s2
	v_cndmask_b32_e64 v16, v16, v79, s2
	v_cndmask_b32_e64 v15, v15, v80, s2
	v_cndmask_b32_e64 v14, v14, v81, s2
	v_cndmask_b32_e64 v13, v13, v82, s2
	v_cndmask_b32_e64 v11, v11, v84, s2
	v_cndmask_b32_e64 v10, v10, v85, s2
	v_cndmask_b32_e64 v9, v9, v86, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v37, v59 :: v_dual_add_f32 v60, v36, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v66, s2
	v_cndmask_b32_e64 v29, v29, v67, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v63, v33, v63 :: v_dual_add_f32 v64, v32, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v59, s2
	v_cndmask_b32_e64 v36, v36, v60, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v26, v69 :: v_dual_add_f32 v70, v25, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v63, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v87, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v64, s2
	v_cndmask_b32_e64 v25, v25, v70, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v55, s29, v2
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_dual_mov_b32 v88, 0x7632 :: v_dual_and_b32 v3, 56, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v69, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s19, s29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.h, v1.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.h, v1.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v68, s1, v3
	v_add3_u32 v69, s1, v3, 64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	s_mov_b32 s0, 0x76543210
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v70.h, v1.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v41, s29, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v72, v68, v41, 1
	v_add_lshl_u32 v41, v69, v41, 1
	v_add_lshl_u32 v68, v68, v55, 1
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v5, 16, v5
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v74, v4, v7
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v7, v5, v7 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v43, 16, v43
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v83, v4, v49 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v51, 16, v51
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v75, v4, v8
	v_mul_f32_e32 v73, v4, v6
	v_mul_f32_e32 v77, v4, v43
	v_mul_f32_e32 v76, v4, v42
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v43, v5, v43 :: v_dual_lshlrev_b32 v54, 16, v54
	v_dual_mul_f32 v6, v5, v6 :: v_dual_mul_f32 v79, v4, v45
	v_mul_f32_e32 v78, v4, v44
	v_mul_f32_e32 v81, v4, v47
	v_mul_f32_e32 v80, v4, v46
	v_mul_f32_e32 v82, v4, v48
	v_mul_f32_e32 v85, v4, v51
	v_mul_f32_e32 v84, v4, v50
	v_mul_f32_e32 v89, v4, v53
	v_mul_f32_e32 v86, v4, v52
	v_dual_mul_f32 v4, v4, v54 :: v_dual_mul_f32 v45, v5, v45
	v_dual_mul_f32 v8, v5, v8 :: v_dual_mul_f32 v39, v39, v75
	v_dual_mul_f32 v42, v5, v42 :: v_dual_mul_f32 v35, v35, v79
	v_dual_mul_f32 v44, v5, v44 :: v_dual_mul_f32 v31, v31, v83
	v_dual_mul_f32 v46, v5, v46 :: v_dual_mul_f32 v7, v23, v7
	v_dual_mul_f32 v47, v5, v47 :: v_dual_mul_f32 v28, v28, v73
	v_dual_mul_f32 v48, v5, v48 :: v_dual_mul_f32 v27, v27, v86
	v_dual_mul_f32 v49, v5, v49 :: v_dual_mul_f32 v6, v24, v6
	v_dual_mul_f32 v50, v5, v50 :: v_dual_mul_f32 v19, v19, v44
	v_dual_mul_f32 v51, v5, v51 :: v_dual_mul_f32 v24, v40, v74
	v_dual_mul_f32 v52, v5, v52 :: v_dual_max_f32 v23, 0, v39
	v_dual_mul_f32 v53, v5, v53 :: v_dual_mul_f32 v38, v38, v76
	v_dual_mul_f32 v5, v5, v54 :: v_dual_mul_f32 v34, v34, v80
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v18, v18, v45 :: v_dual_mul_f32 v13, v13, v50
	v_mul_f32_e32 v14, v14, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v12, v12, v51 :: v_dual_mul_f32 v5, v9, v5
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, 0, v28
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v8, v22, v8 :: v_dual_mul_f32 v17, v17, v46
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v22, 0, v24 :: v_dual_max_f32 v31, 0, v31
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v30, v30, v84 :: v_dual_mul_f32 v29, v29, v85
	v_dual_mul_f32 v16, v16, v47 :: v_dual_mul_f32 v11, v11, v52
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v24, 0, v38
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v18, 0, v18 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v37, v37, v77 :: v_dual_mul_f32 v36, v36, v78
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v22, v22, v22 :: v_dual_mul_f32 v31, v31, v31
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v16, 0, v16
	v_max_f32_e32 v5, 0, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v9.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v24, v24, v24 :: v_dual_mul_f32 v29, v29, v29
	v_dual_mul_f32 v34, v34, v34 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v28, 0, v36 :: v_dual_max_f32 v27, 0, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v22.h
	v_mov_b16_e32 v56.l, v23.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v33, v33, v81 :: v_dual_mul_f32 v32, v32, v82
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v18, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v63.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v36, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v25, v4 :: v_dual_max_f32 v25, 0, v37
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v27, v27, v27
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v37, 1, v56
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v2, 1, v2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v33, 0, v33
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v16, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v9, v5, 0x7fff
	v_and_b32_e32 v9, 1, v1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v26, v26, v89 :: v_dual_mul_f32 v21, v21, v42
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v32, 0, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v14.h
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v2, v22, v2, 0x7fff
	v_add3_u32 v22, v23, v37, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v33, v33, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v24, v9, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v21, 0, v21 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v9.l, v22.h
	v_and_b32_e32 v23, 1, v1
	v_mov_b16_e32 v1.l, v34.h
	v_mov_b16_e32 v59.l, v33.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v21, v21, v21 :: v_dual_cndmask_b32 v22, 0x3276, v88
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v14, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v20, v20, v43 :: v_dual_mul_f32 v15, v15, v48
	v_dual_mul_f32 v10, v10, v53 :: v_dual_max_f32 v35, 0, v35
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v59
	v_add3_u32 v0, v34, v3, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_and_b32 v3, 1, v1
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v10, 0, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v35, v35, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.l, v25.h
	v_add3_u32 v33, v33, v40, 0x7fff
	v_add3_u32 v3, v32, v3, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v19, 0, v19
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v13, v13, v13
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v35.h
	v_mov_b16_e32 v3.l, v33.h
	v_and_b32_e32 v38, 1, v57
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v39, 1, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v64.l, v8.h
	v_mov_b16_e32 v65.l, v20.h
	v_add3_u32 v24, v25, v38, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v17, 0, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v5.h
	v_add3_u32 v5, v28, v23, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v15, 0, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v61.l, v29.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v67.l, v16.h
	v_and_b32_e32 v45, 1, v63
	v_and_b32_e32 v46, 1, v64
	v_add3_u32 v25, v35, v39, 0x7fff
	v_mov_b16_e32 v5.l, v24.h
	v_and_b32_e32 v47, 1, v65
	v_mov_b16_e32 v1.l, v30.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v17, v17, v17
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v61
	v_mov_b16_e32 v71.l, v10.h
	v_and_b32_e32 v49, 1, v67
	v_add3_u32 v35, v7, v45, 0x7fff
	v_add3_u32 v7, v8, v46, 0x7fff
	v_add3_u32 v8, v20, v47, 0x7fff
	v_mov_b16_e32 v0.l, v25.h
	v_cndmask_b32_e32 v20, v5, v2, vcc_lo
	v_dual_cndmask_b32 v2, v2, v5 :: v_dual_cndmask_b32 v5, 0x1054, v87
	v_and_b32_e32 v23, 1, v1
	v_mov_b16_e32 v1.l, v27.h
	v_mov_b16_e32 v62.l, v26.h
	v_dual_cndmask_b32 v24, v0, v9 :: v_dual_and_b32 v51, 1, v71
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v5, 8, v5
	v_lshl_or_b32 v5, v22, 8, v22
	v_add3_u32 v22, v30, v23, 0x7fff
	v_and_b32_e32 v23, 1, v1
	v_mov_b16_e32 v1.l, v4.h
	v_and_b32_e32 v44, 1, v62
	v_add3_u32 v29, v29, v43, 0x7fff
	v_and_b32_e32 v2, 0x540054, v2
	v_add3_u32 v23, v27, v23, 0x7fff
	v_and_b32_e32 v25, 1, v1
	v_add3_u32 v26, v26, v44, 0x7fff
	v_mov_b16_e32 v1.l, v6.h
	v_mov_b16_e32 v23.l, v29.h
	v_and_b32_e32 v5, 0x760076, v5
	v_add3_u32 v4, v4, v25, 0x7fff
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v21.h
	v_mov_b16_e32 v4.l, v26.h
	v_cndmask_b32_e32 v26, v23, v3, vcc_lo
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e32 v3, v3, v23, vcc_lo
	v_and_b32_e32 v23, 0x5040504, v2
	v_add3_u32 v6, v6, v25, 0x7fff
	v_and_b32_e32 v25, 1, v1
	v_and_b32_e32 v27, 0x7060706, v5
	v_mov_b16_e32 v1.l, v19.h
	v_mov_b16_e32 v66.l, v18.h
	v_permlanex16_b32 v29, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v9, v20, v23
	v_perm_b32 v3, v9, v20, v27
	v_and_b32_e32 v9, 1, v1
	v_mov_b16_e32 v1.l, v17.h
	v_mov_b16_e32 v60.l, v31.h
	v_and_b32_e32 v48, 1, v66
	v_mov_b16_e32 v35.l, v6.h
	v_add3_u32 v19, v19, v9, 0x7fff
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v19.l, v8.h
	v_and_b32_e32 v42, 1, v60
	v_add3_u32 v18, v18, v48, 0x7fff
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v17, v17, v20, 0x7fff
	v_mov_b16_e32 v1.l, v15.h
	v_add3_u32 v16, v16, v49, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_cndmask_b32_e32 v18, v19, v35, vcc_lo
	v_cndmask_b32_e32 v19, v35, v19, vcc_lo
	v_add3_u32 v31, v31, v42, 0x7fff
	v_perm_b32 v5, v0, v24, v27
	v_mov_b16_e32 v70.l, v12.h
	v_add3_u32 v10, v10, v51, 0x7fff
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v22.l, v31.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v50, 1, v70
	v_cndmask_b32_e32 v28, v4, v22, vcc_lo
	v_cndmask_b32_e32 v22, v22, v4, vcc_lo
	v_perm_b32 v4, v0, v24, v23
	v_add3_u32 v0, v21, v25, 0x7fff
	v_mov_b16_e32 v0.l, v7.h
	v_add3_u32 v12, v12, v50, 0x7fff
	v_permlanex16_b32 v21, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	v_perm_b32 v7, v29, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v9, v21, v28, v27
	v_add3_u32 v15, v15, v22, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	v_cndmask_b32_e32 v16, v0, v17, vcc_lo
	v_perm_b32 v8, v21, v28, v23
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	v_cndmask_b32_e32 v0, v17, v0, vcc_lo
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v29, v26, v23
	v_add3_u32 v13, v13, v21, 0x7fff
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v36.h
	v_mov_b16_e32 v13.l, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v11, v20, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_mov_b16_e32 v14.l, v12.h
	v_perm_b32 v11, v19, v18, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v36, v1, 0x7fff
	v_mov_b16_e32 v1.l, v10.h
	v_cndmask_b32_e32 v12, v15, v14, vcc_lo
	v_perm_b32 v10, v19, v18, v23
	v_cndmask_b32_e32 v15, v14, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, v13, v1, vcc_lo
	v_permlanex16_b32 v18, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v1, v1, v13, vcc_lo
	v_perm_b32 v12, v16, v0, v23
	v_perm_b32 v13, v16, v0, v27
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v14, v18, v15, v23
	v_perm_b32 v15, v18, v15, v27
	v_add_lshl_u32 v0, v69, v55, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v16, v17, v1, v23
	v_perm_b32 v17, v17, v1, v27
	s_clause 0x3
	buffer_store_b128 v[2:5], v72, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v41, s[16:19], 0 offen
	buffer_store_b128 v[10:13], v68, s[16:19], 0 offen
	buffer_store_b128 v[14:17], v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 243
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 243
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14724
; TotalNumSgprs: 37
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 243
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
