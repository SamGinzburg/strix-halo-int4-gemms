	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v83, 2, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	v_lshlrev_b32_e32 v86, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v38, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v7, v0, 0, 1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v84, 62, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 6, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v54, 0, v86
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v8, 48, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x420, v7
	v_and_b32_e32 v88, 32, v0
	v_and_b32_e32 v87, 8, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s30, 63
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s31, v84
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[12:13], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b64 s[16:17], s[26:27]
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
	s_lshl_b32 s7, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v85, v1, 4, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_i32 s10, s4, s6
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s19, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s18, v84
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s3, s8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s6, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s10, s31, s18
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s33, s10, v85
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s6, s4
.Ltmp19:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s31, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s18, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s13, s13, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v4, s[12:15], 0 offen
	buffer_load_b128 v[24:27], v2, s[12:15], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s30, v83
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 48, v86
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s31, 6, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s18, 64
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v29, v2, v4, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s35, v84
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s30, s18
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s7, v29
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s19, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s31, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b128 v[30:33], v3, s[12:15], 0 offen
	buffer_load_b128 v[34:37], v4, s[12:15], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[39:42], v2, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s35, v83
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 15, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s30, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, s7, s4, v29
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v65, v4, 16, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v4, v5, 1, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v7, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	v_lshlrev_b32_e32 v3, 3, v6
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v66, 32, v65
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v89, v6, 10, v5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 4, v4
	v_or_b32_e32 v10, 6, v4
	v_or_b32_e32 v11, 8, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v55, 0, v89
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[43:46], v2, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v90, 0x90, v89
	v_xor_b32_e32 v91, 0x120, v89
	v_xor_b32_e32 v92, 0x1b0, v89
	v_xor_b32_e32 v93, 0x210, v89
	v_xor_b32_e32 v94, 0x330, v89
	v_xor_b32_e32 v95, 0x3a0, v89
	v_add_nc_u32_e32 v56, 0, v90
	v_add_nc_u32_e32 v57, 0, v91
	v_add_nc_u32_e32 v58, 0, v92
	v_add_nc_u32_e32 v59, 0, v93
	v_add_nc_u32_e32 v60, 0, v94
	v_add_nc_u32_e32 v61, 0, v95
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 10, v4
	v_or_b32_e32 v13, 12, v4
	v_or_b32_e32 v14, 14, v4
	v_or_b32_e32 v15, 64, v4
	v_or_b32_e32 v16, 0x42, v4
	v_or_b32_e32 v17, 0x44, v4
	v_or_b32_e32 v18, 0x46, v4
	v_or_b32_e32 v19, 0x48, v4
	v_or_b32_e32 v5, 0x4a, v4
	v_or_b32_e32 v6, 0x4c, v4
	v_or_b32_e32 v7, 0x4e, v4
	s_mov_b32 s4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v28, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v47, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v48, v26, v22, 0x5010400
	v_lshrrev_b32_e32 v51, 8, v28
	v_lshrrev_b32_e32 v52, 24, v28
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v49, v27, v23, 0x5010400
	v_perm_b32 v50, v27, v23, 0x7030602
	v_lshrrev_b32_e32 v53, 8, v24
	v_and_b16 v20.l, 0xff, v28.l
	v_and_b16 v20.h, 0xff, v28.h
	v_lshrrev_b32_e32 v62, 24, v24
	v_lshlrev_b16 v28.l, 8, v51.l
	v_lshlrev_b16 v28.h, 8, v52.l
	v_lshrrev_b32_e32 v63, 8, v47
	v_lshrrev_b32_e32 v64, 24, v47
	v_lshrrev_b32_e32 v67, 8, v25
	v_lshrrev_b32_e32 v68, 24, v25
	v_lshrrev_b32_e32 v69, 8, v48
	v_lshrrev_b32_e32 v70, 24, v48
	v_lshrrev_b32_e32 v71, 8, v26
	v_lshrrev_b32_e32 v72, 24, v26
	v_lshrrev_b32_e32 v73, 8, v49
	v_lshrrev_b32_e32 v74, 24, v49
	v_lshrrev_b32_e32 v75, 8, v50
	v_lshrrev_b32_e32 v76, 24, v50
	v_and_b16 v21.l, 0xff, v24.l
	v_and_b16 v22.l, 0xff, v47.l
	v_lshlrev_b16 v47.l, 8, v53.l
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.h, 0xff, v47.h
	v_lshlrev_b16 v47.h, 8, v62.l
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v28, v34, v30, 0x5010400
	v_and_b16 v23.l, 0xff, v25.l
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v48.l
	v_and_b16 v24.h, 0xff, v48.h
	v_and_b16 v25.l, 0xff, v26.l
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v49.l
	v_and_b16 v26.h, 0xff, v49.h
	v_and_b16 v27.l, 0xff, v50.l
	v_and_b16 v27.h, 0xff, v50.h
	v_lshlrev_b16 v48.l, 8, v63.l
	v_lshlrev_b16 v48.h, 8, v64.l
	v_lshlrev_b16 v49.l, 8, v67.l
	v_lshlrev_b16 v49.h, 8, v68.l
	v_lshlrev_b16 v50.l, 8, v69.l
	v_lshlrev_b16 v50.h, 8, v70.l
	v_lshlrev_b16 v51.l, 8, v71.l
	v_lshlrev_b16 v51.h, 8, v72.l
	v_lshlrev_b16 v52.l, 8, v73.l
	v_lshlrev_b16 v52.h, 8, v74.l
	v_lshlrev_b16 v53.l, 8, v75.l
	v_lshlrev_b16 v53.h, 8, v76.l
	v_perm_b32 v30, v34, v30, 0x7030602
	v_or_b16 v21.l, v21.l, v47.l
	v_perm_b32 v34, v35, v31, 0x5010400
	v_perm_b32 v31, v35, v31, 0x7030602
	v_perm_b32 v35, v36, v32, 0x5010400
	v_perm_b32 v32, v36, v32, 0x7030602
	v_perm_b32 v36, v37, v33, 0x5010400
	v_perm_b32 v33, v37, v33, 0x7030602
	v_or_b16 v21.h, v21.h, v47.h
	v_lshrrev_b32_e32 v37, 8, v28
	v_or_b16 v22.l, v22.l, v48.l
	v_or_b16 v22.h, v22.h, v48.h
	v_or_b16 v23.l, v23.l, v49.l
	v_or_b16 v23.h, v23.h, v49.h
	v_or_b16 v24.l, v24.l, v50.l
	v_or_b16 v24.h, v24.h, v50.h
	v_or_b16 v25.l, v25.l, v51.l
	v_or_b16 v25.h, v25.h, v51.h
	v_or_b16 v26.l, v26.l, v52.l
	v_or_b16 v26.h, v26.h, v52.h
	v_or_b16 v27.l, v27.l, v53.l
	v_or_b16 v27.h, v27.h, v53.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v54, v[39:42] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v20
	ds_store_b16_d16_hi v55, v20 offset:64
	ds_store_b16 v56, v21
	ds_store_b16_d16_hi v56, v21 offset:64
	ds_store_b16 v57, v22
	ds_store_b16_d16_hi v57, v22 offset:64
	ds_store_b16 v58, v23
	ds_store_b16_d16_hi v58, v23 offset:64
	ds_store_b16 v59, v24
	ds_store_b16_d16_hi v59, v24 offset:64
	ds_store_b16 v55, v25 offset:640
	ds_store_b16_d16_hi v55, v25 offset:704
	ds_store_b16 v60, v26
	ds_store_b16_d16_hi v60, v26 offset:64
	ds_store_b16 v61, v27
	ds_store_b16_d16_hi v61, v27 offset:64
	v_lshrrev_b32_e32 v39, 24, v28
	v_lshrrev_b32_e32 v40, 8, v30
	v_lshrrev_b32_e32 v41, 24, v30
	v_and_b16 v22.l, 0xff, v34.l
	v_lshrrev_b32_e32 v42, 8, v34
	v_lshrrev_b32_e32 v47, 24, v34
	v_and_b16 v22.h, 0xff, v34.h
	v_lshrrev_b32_e32 v34, 8, v31
	v_lshrrev_b32_e32 v48, 24, v31
	v_and_b16 v24.l, 0xff, v35.l
	v_lshrrev_b32_e32 v49, 8, v35
	v_lshrrev_b32_e32 v50, 24, v35
	v_and_b16 v24.h, 0xff, v35.h
	v_lshrrev_b32_e32 v35, 8, v32
	v_lshrrev_b32_e32 v51, 24, v32
	v_and_b16 v26.l, 0xff, v36.l
	v_lshrrev_b32_e32 v52, 8, v36
	v_lshrrev_b32_e32 v53, 24, v36
	v_and_b16 v26.h, 0xff, v36.h
	v_lshrrev_b32_e32 v36, 8, v33
	v_lshrrev_b32_e32 v62, 24, v33
	v_and_b16 v20.l, 0xff, v28.l
	v_lshlrev_b16 v28.l, 8, v37.l
	v_and_b16 v20.h, 0xff, v28.h
	v_lshlrev_b16 v28.h, 8, v39.l
	v_and_b16 v21.l, 0xff, v30.l
	v_lshlrev_b16 v30.l, 8, v40.l
	v_and_b16 v21.h, 0xff, v30.h
	v_lshlrev_b16 v30.h, 8, v41.l
	v_and_b16 v23.l, 0xff, v31.l
	v_and_b16 v23.h, 0xff, v31.h
	v_and_b16 v25.l, 0xff, v32.l
	v_and_b16 v25.h, 0xff, v32.h
	v_and_b16 v27.l, 0xff, v33.l
	v_and_b16 v27.h, 0xff, v33.h
	v_lshlrev_b16 v31.l, 8, v42.l
	v_lshlrev_b16 v31.h, 8, v47.l
	v_lshlrev_b16 v32.l, 8, v34.l
	v_lshlrev_b16 v32.h, 8, v48.l
	v_lshlrev_b16 v33.l, 8, v49.l
	v_lshlrev_b16 v33.h, 8, v50.l
	v_lshlrev_b16 v34.l, 8, v35.l
	v_lshlrev_b16 v34.h, 8, v51.l
	v_lshlrev_b16 v35.l, 8, v52.l
	v_lshlrev_b16 v35.h, 8, v53.l
	v_lshlrev_b16 v36.l, 8, v36.l
	v_lshlrev_b16 v36.h, 8, v62.l
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v21.l, v21.l, v30.l
	v_or_b16 v21.h, v21.h, v30.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.l, v22.l, v31.l
	v_or_b16 v22.h, v22.h, v31.h
	v_or_b16 v23.l, v23.l, v32.l
	v_or_b16 v23.h, v23.h, v32.h
	v_or_b16 v24.l, v24.l, v33.l
	v_or_b16 v24.h, v24.h, v33.h
	v_or_b16 v25.l, v25.l, v34.l
	v_or_b16 v25.h, v25.h, v34.h
	v_or_b16 v26.l, v26.l, v35.l
	v_or_b16 v26.h, v26.h, v35.h
	v_or_b16 v27.l, v27.l, v36.l
	v_or_b16 v27.h, v27.h, v36.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v54, v[43:46] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v20 offset:8192
	ds_store_b16_d16_hi v55, v20 offset:8256
	ds_store_b16 v56, v21 offset:8192
	ds_store_b16_d16_hi v56, v21 offset:8256
	ds_store_b16 v57, v22 offset:8192
	ds_store_b16_d16_hi v57, v22 offset:8256
	ds_store_b16 v58, v23 offset:8192
	ds_store_b16_d16_hi v58, v23 offset:8256
	ds_store_b16 v59, v24 offset:8192
	ds_store_b16_d16_hi v59, v24 offset:8256
	ds_store_b16 v55, v25 offset:8832
	ds_store_b16_d16_hi v55, v25 offset:8896
	ds_store_b16 v60, v26 offset:8192
	ds_store_b16_d16_hi v60, v26 offset:8256
	ds_store_b16 v61, v27 offset:8192
	ds_store_b16_d16_hi v61, v27 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v20, 8, v0
	v_and_b32_e32 v21, 32, v0
	v_and_b32_e32 v96, 0x800, v2
	v_lshl_or_b32 v97, v1, 6, v3
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
.LBB0_3:                                ; %Flow161
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v22, s34, v65
	v_or_b32_e32 v23, s34, v66
	s_ashr_i32 s0, s5, 6
	v_or_b32_e32 v80, s33, v4
	v_or_b32_e32 v79, s33, v8
	v_mul_lo_u32 v81, v22, s0
	v_mul_lo_u32 v82, v23, s0
	v_or_b32_e32 v78, s33, v9
	v_or_b32_e32 v77, s33, v10
	v_or_b32_e32 v76, s33, v11
	v_or_b32_e32 v75, s33, v12
	v_or_b32_e32 v74, s33, v13
	v_or_b32_e32 v73, s33, v14
	v_or_b32_e32 v72, s33, v15
	v_or_b32_e32 v71, s33, v16
	v_or_b32_e32 v70, s33, v17
	v_or_b32_e32 v69, s33, v18
	v_or_b32_e32 v67, s33, v19
	v_or_b32_e32 v68, s33, v5
	v_or_b32_e32 v39, s33, v6
	v_or_b32_e32 v40, s33, v7
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v4, 0x420, v4
	v_lshl_or_b32 v97, v1, 6, v3
	v_and_b32_e32 v96, 0x800, v2
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v98, s31, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v5, v4
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_xor_b32_e32 v1, v1, v97
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v99, v1, v96
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v3, s6
	v_xor_b32_e32 v100, 16, v99
	v_xor_b32_e32 v101, 32, v99
	v_xor_b32_e32 v102, 48, v99
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v42, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s27, s0, 3
	s_add_i32 s26, s35, 64
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s44, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s27, s27, -3
	s_mov_b32 s45, 1
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s7, s5, 6
	s_mov_b32 s6, s4
	s_mov_b32 s4, s18
	s_mov_b32 s18, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s26, s7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v119, s46, v65
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s35, v83
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s35, s30, v[29:30]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v111, s6, v99
	v_add_nc_u32_e32 v115, s6, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v11
	s_mov_b32 s46, s44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[25:28], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v119 offset:832
	ds_load_u8 v10, v119 offset:768
	ds_load_u8 v11, v119 offset:960
	ds_load_u8 v12, v119 offset:896
	ds_load_u8 v13, v119 offset:576
	ds_load_u8 v14, v119 offset:512
	ds_load_u8 v15, v119 offset:704
	ds_load_u8 v16, v119 offset:640
	ds_load_u8 v17, v119 offset:320
	ds_load_u8 v18, v119 offset:256
	ds_load_u8 v19, v119 offset:448
	ds_load_u8 v20, v119 offset:384
	ds_load_u8 v21, v119 offset:64
	ds_load_u8 v22, v119
	ds_load_u8 v23, v119 offset:192
	ds_load_u8 v24, v119 offset:128
	ds_load_u8 v103, v119 offset:1856
	ds_load_u8 v104, v119 offset:1792
	ds_load_u8 v105, v119 offset:1984
	ds_load_u8 v106, v119 offset:1920
	ds_load_u8 v107, v119 offset:1600
	ds_load_u8 v108, v119 offset:1536
	ds_load_u8 v109, v119 offset:1728
	ds_load_u8 v110, v119 offset:1664
	ds_load_u8 v112, v119 offset:1344
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:1280
	ds_load_u8 v120, v119 offset:1152
	ds_load_u8 v114, v119 offset:1024
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v119 offset:1472
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v119 offset:1408
	ds_load_u8 v117, v119 offset:1216
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v119 offset:1088
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v113, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v116, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v118, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v24, v23, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v111
	ds_load_b128 v[21:24], v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v10, v112, 0xc0c0004
	v_lshl_or_b32 v10, v116, 16, v113
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v14, v12, 0xc0c0004
	v_lshl_or_b32 v12, v11, 16, v9
	v_lshl_or_b32 v11, v15, 16, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v114, v16, 0xc0c0004
	v_perm_b32 v13, v120, v117, 0xc0c0004
	v_lshl_or_b32 v9, v121, 16, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v111 offset:4096
	ds_load_b128 v[115:118], v115 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v16, v104, 16, v103
	v_lshl_or_b32 v15, v106, 16, v105
	v_lshl_or_b32 v14, v14, 16, v107
	v_lshl_or_b32 v13, v13, 16, v108
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[17:20], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[21:24], v[13:16], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[111:114], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v119 offset:864
	ds_load_u8 v10, v119 offset:800
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[115:118], v[13:16], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:992
	ds_load_u8 v11, v119 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v119 offset:608
	ds_load_u8 v12, v119 offset:544
	v_lshl_or_b32 v131, v10, 16, v9
	ds_load_u8 v9, v119 offset:352
	ds_load_u8 v10, v119 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v119 offset:736
	ds_load_u8 v13, v119 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v12, 16, v11
	ds_load_u8 v10, v119 offset:480
	ds_load_u8 v11, v119 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v129, v10, 16, v9
	ds_load_u8 v9, v119 offset:32
	ds_load_u8 v10, v119 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v119 offset:224
	ds_load_u8 v11, v119 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v119 offset:1888
	ds_load_u8 v10, v119 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:2016
	ds_load_u8 v11, v119 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v119 offset:1632
	ds_load_u8 v12, v119 offset:1568
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v119 offset:1376
	ds_load_u8 v10, v119 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v119 offset:1760
	ds_load_u8 v13, v119 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v12, 16, v11
	ds_load_u8 v10, v119 offset:1504
	ds_load_u8 v11, v119 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v133, v10, 16, v9
	ds_load_u8 v9, v119 offset:1120
	ds_load_u8 v10, v119 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v119 offset:1248
	ds_load_u8 v11, v119 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v132, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[132:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[111:114], v[128:131], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v111, v119 offset:2880
	ds_load_u8 v112, v119 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v128, s6, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[115:118], v[132:135], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:3008
	ds_load_u8 v113, v119 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v119 offset:2624
	ds_load_u8 v114, v119 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v119 offset:2752
	ds_load_u8 v115, v119 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v119 offset:2368
	ds_load_u8 v112, v119 offset:2304
	v_lshl_or_b32 v113, v115, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:2496
	ds_load_u8 v115, v119 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v119 offset:2112
	ds_load_u8 v115, v119 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	ds_load_u8 v115, v119 offset:2240
	ds_load_u8 v116, v119 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v115, 16, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v128
	ds_load_b128 v[128:131], v128 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[115:118], v[111:114], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[128:131], v[111:114], v[120:127] neg_lo:[1,1,0]
	ds_load_u8 v111, v119 offset:2912
	ds_load_u8 v112, v119 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:3040
	ds_load_u8 v113, v119 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v119 offset:2656
	ds_load_u8 v114, v119 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v119 offset:2784
	ds_load_u8 v132, v119 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v119 offset:2400
	ds_load_u8 v112, v119 offset:2336
	v_lshl_or_b32 v113, v132, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:2528
	ds_load_u8 v132, v119 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v132, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v119 offset:2144
	ds_load_u8 v132, v119 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v132, v111, 0xc0c0004
	ds_load_u8 v132, v119 offset:2272
	ds_load_u8 v133, v119 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v111, v132, 16, v111
	v_wmma_i32_16x16x16_iu8 v[9:16], v[115:118], v[111:114], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[128:131], v[111:114], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v111, v119 offset:3904
	ds_load_u8 v112, v119 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v128, s6, v102
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s35, s31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s33
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:4032
	ds_load_u8 v113, v119 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v119 offset:3648
	ds_load_u8 v114, v119 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v119 offset:3776
	ds_load_u8 v115, v119 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v119 offset:3392
	ds_load_u8 v112, v119 offset:3328
	v_lshl_or_b32 v113, v115, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:3520
	ds_load_u8 v115, v119 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v119 offset:3136
	ds_load_u8 v115, v119 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	ds_load_u8 v115, v119 offset:3264
	ds_load_u8 v116, v119 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v115, 16, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v128
	ds_load_b128 v[128:131], v128 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[115:118], v[111:114], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[128:131], v[111:114], v[120:127] neg_lo:[1,1,0]
	ds_load_u8 v111, v119 offset:3936
	ds_load_u8 v112, v119 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:4064
	ds_load_u8 v113, v119 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v119 offset:3680
	ds_load_u8 v114, v119 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v119 offset:3808
	ds_load_u8 v132, v119 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v119 offset:3424
	ds_load_u8 v112, v119 offset:3360
	v_lshl_or_b32 v113, v132, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v119 offset:3552
	ds_load_u8 v132, v119 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v132, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v119 offset:3168
	ds_load_u8 v132, v119 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v132, v111, 0xc0c0004
	ds_load_u8 v132, v119 offset:3296
	ds_load_u8 v119, v119 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v119, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v111, v119, 16, v111
	v_cvt_f32_i32_e32 v119, v103
	v_cvt_f32_i32_e32 v103, v127
	v_wmma_i32_16x16x16_iu8 v[9:16], v[115:118], v[111:114], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[128:131], v[111:114], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v116, v106
	v_cvt_f32_i32_e32 v115, v107
	v_cvt_f32_i32_e32 v107, v124
	v_cvt_f32_i32_e32 v132, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v18
	v_cvt_f32_i32_e32 v18, v17
	v_cvt_f32_i32_e32 v17, v19
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v19, s35, v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v133, v11
	v_cvt_f32_i32_e32 v11, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s6, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v118, v104
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v19, s6, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v108
	v_cvt_f32_i32_e32 v113, v109
	v_cvt_f32_i32_e32 v109, v122
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v123
	v_cvt_f32_i32_e32 v106, v125
	v_cvt_f32_i32_e32 v104, v126
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[122:125], v19, s[12:15], 0 offen
	buffer_load_b128 v[126:129], v20, s[12:15], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s6, s4, 31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v110
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s6, s6, 26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v120
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s4, s6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v110, v121
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v105
	v_cvt_f32_i32_e32 v131, v9
	v_cvt_f32_i32_e32 v105, v15
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v15, v23
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s6, s4, s31
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v130, v10
	v_cvt_f32_i32_e32 v134, v13
	v_cvt_f32_i32_e32 v13, v16
	v_cvt_f32_i32_e32 v10, v22
	v_cvt_f32_i32_e32 v16, v21
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v135, v74, s6, 1
	v_add_lshl_u32 v136, v73, s6, 1
	v_add_lshl_u32 v137, v72, s6, 1
	v_add_lshl_u32 v138, v71, s6, 1
	v_add_lshl_u32 v139, v70, s6, 1
	v_add_lshl_u32 v140, v69, s6, 1
	v_add_lshl_u32 v141, v67, s6, 1
	v_add_lshl_u32 v142, v68, s6, 1
	v_add_lshl_u32 v143, v39, s6, 1
	v_add_lshl_u32 v144, v40, s6, 1
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s45, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s7, 2
	s_cselect_b32 s45, s7, 0
	s_add_i32 s8, s5, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v121, v126, v122, 0x5010400
	v_perm_b32 v120, v126, v122, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v122, v81, s4, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v24, v127, v123, 0x5010400
	v_perm_b32 v23, v127, v123, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v123, v82, s4, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v22, v128, v124, 0x5010400
	v_perm_b32 v21, v128, v124, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v124, v80, s6, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v20, v129, v125, 0x5010400
	v_perm_b32 v19, v129, v125, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v125, v79, s6, 1
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v122, v122, s[36:39], 0 offen
	buffer_load_u16 v123, v123, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v126, v78, s6, 1
	v_add_lshl_u32 v127, v77, s6, 1
	v_add_lshl_u32 v128, v76, s6, 1
	v_add_lshl_u32 v129, v75, s6, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_cndmask_b32 v126, 0x80000000, v126
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	s_clause 0xf
	buffer_load_u16 v124, v124, s[40:43], 0 offen
	buffer_load_u16 v125, v125, s[40:43], 0 offen
	buffer_load_u16 v126, v126, s[40:43], 0 offen
	buffer_load_u16 v127, v127, s[40:43], 0 offen
	buffer_load_u16 v128, v128, s[40:43], 0 offen
	buffer_load_u16 v129, v129, s[40:43], 0 offen
	buffer_load_u16 v135, v135, s[40:43], 0 offen
	buffer_load_u16 v136, v136, s[40:43], 0 offen
	buffer_load_u16 v137, v137, s[40:43], 0 offen
	buffer_load_u16 v138, v138, s[40:43], 0 offen
	buffer_load_u16 v139, v139, s[40:43], 0 offen
	buffer_load_u16 v140, v140, s[40:43], 0 offen
	buffer_load_u16 v141, v141, s[40:43], 0 offen
	buffer_load_u16 v142, v142, s[40:43], 0 offen
	buffer_load_u16 v143, v143, s[40:43], 0 offen
	buffer_load_u16 v144, v144, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s6, s45, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s6, 0
	s_barrier
	v_add_nc_u32_e32 v145, s7, v86
	s_mov_b32 s4, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s7, s6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s44, s7, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s27
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v145, v[25:28] offset:16384
	s_mov_b32 s5, s8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v26, 16, v124
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v25, 16, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v26, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v41, v27, v119
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v27, 16, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v27, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v64, v28, v118
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v28, 16, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v28, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v60, v118, v117 :: v_dual_lshlrev_b32 v117, 16, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v117, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v62, v118, v116
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v116, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v116, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v56, v118, v115 :: v_dual_lshlrev_b32 v115, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v115, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v58, v118, v114
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v114, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v114, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v52, v118, v113 :: v_dual_lshlrev_b32 v113, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v113, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v54, v118, v112
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v112, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v112, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v48, v118, v111 :: v_dual_lshlrev_b32 v111, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v111, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v50, v118, v110
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v110, 16, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v110, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v44, v118, v109 :: v_dual_lshlrev_b32 v109, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v109, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v118, v108
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v108, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v108, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v37, v118, v107
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v107, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v107, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v36, v118, v106
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v106, 16, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v106, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v118, v104
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v104, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v104, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v30, v25, v103
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v25, 16, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v26, v25, v26 :: v_dual_add_nc_u32 v103, s1, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v63, v26, v131
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v25, v27
	v_mul_f32_e32 v27, v25, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v61, v26, v130
	v_dual_fmac_f32 v53, v27, v12 :: v_dual_mul_f32 v12, v25, v114
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v26, v25, v28 :: v_dual_add_nc_u32 v27, s1, v90
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v28, s1, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v51, v12, v105 :: v_dual_add_nc_u32 v114, s1, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v25, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v59, v26, v133
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v25, v117
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v105, s1, v93
	v_add_nc_u32_e32 v113, s1, v94
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v49, v12, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v25, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v57, v26, v132
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v25, v112
	v_mul_f32_e32 v26, v25, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v111, 24, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v45, v13, v14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v25, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v47, v12, v18
	v_dual_fmac_f32 v55, v26, v134 :: v_dual_add_nc_u32 v26, s1, v89
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v18, 8, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v43, v14, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v25, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v17, 8, v120
	v_and_b16 v12.l, 0xff, v121.l
	v_and_b16 v13.l, 0xff, v120.l
	v_lshrrev_b32_e32 v110, 24, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v14, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v25, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v108, 24, v24
	v_and_b16 v11.l, 0xff, v24.l
	v_lshrrev_b32_e32 v109, 8, v24
	v_and_b16 v11.h, 0xff, v24.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v35, v14, v16 :: v_dual_mul_f32 v16, v25, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v24, 8, v23
	v_and_b16 v12.h, 0xff, v121.h
	v_and_b16 v13.h, 0xff, v120.h
	v_and_b16 v14.l, 0xff, v23.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v34, v16, v10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v25, v106
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v107, 24, v23
	v_and_b16 v10.l, 0xff, v23.h
	v_and_b16 v10.h, 0xff, v22.l
	v_lshrrev_b32_e32 v23, 8, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v33, v16, v15
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v25, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.h, 8, v108.l
	v_lshrrev_b32_e32 v25, 24, v22
	v_and_b16 v14.h, 0xff, v22.h
	v_lshrrev_b32_e32 v22, 8, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v31, v15, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.h, 8, v18.l
	v_lshlrev_b16 v15.h, 8, v17.l
	v_and_b16 v9.l, 0xff, v21.l
	v_lshrrev_b32_e32 v104, 24, v21
	v_lshlrev_b16 v15.l, 8, v111.l
	v_or_b16 v9.h, v12.l, v9.h
	v_and_b16 v12.l, 0xff, v21.h
	v_or_b16 v13.l, v13.l, v15.h
	v_lshrrev_b32_e32 v21, 8, v20
	v_lshlrev_b16 v15.h, 8, v110.l
	v_lshrrev_b32_e32 v106, 24, v20
	v_lshlrev_b16 v16.l, 8, v109.l
	v_or_b16 v11.h, v11.h, v16.h
	v_lshrrev_b32_e32 v108, 8, v19
	v_lshlrev_b16 v16.h, 8, v24.l
	v_lshrrev_b32_e32 v24, 24, v19
	v_or_b16 v12.h, v12.h, v15.l
	v_and_b16 v15.l, 0xff, v20.l
	v_or_b16 v13.h, v13.h, v15.h
	v_and_b16 v15.h, 0xff, v20.h
	v_or_b16 v11.l, v11.l, v16.l
	v_and_b16 v16.l, 0xff, v19.l
	v_or_b16 v14.l, v14.l, v16.h
	v_and_b16 v16.h, 0xff, v19.h
	v_lshlrev_b16 v17.l, 8, v107.l
	v_lshlrev_b16 v17.h, 8, v23.l
	v_lshlrev_b16 v18.l, 8, v25.l
	v_lshlrev_b16 v18.h, 8, v22.l
	v_lshlrev_b16 v19.l, 8, v104.l
	v_lshlrev_b16 v19.h, 8, v21.l
	v_lshlrev_b16 v20.l, 8, v106.l
	v_lshlrev_b16 v20.h, 8, v108.l
	v_lshlrev_b16 v21.l, 8, v24.l
	v_or_b16 v10.l, v10.l, v17.l
	v_or_b16 v10.h, v10.h, v17.h
	v_or_b16 v14.h, v14.h, v18.l
	v_or_b16 v9.l, v9.l, v18.h
	v_or_b16 v12.l, v12.l, v19.l
	v_or_b16 v15.l, v15.l, v19.h
	v_or_b16 v15.h, v15.h, v20.l
	v_or_b16 v16.l, v16.l, v20.h
	v_or_b16 v16.h, v16.h, v21.l
	ds_store_b16_d16_hi v26, v9
	ds_store_b16_d16_hi v26, v12 offset:64
	ds_store_b16 v27, v13
	ds_store_b16_d16_hi v27, v13 offset:64
	ds_store_b16 v28, v11
	ds_store_b16_d16_hi v28, v11 offset:64
	ds_store_b16 v103, v14
	ds_store_b16 v103, v10 offset:64
	ds_store_b16_d16_hi v105, v10
	ds_store_b16_d16_hi v105, v14 offset:64
	ds_store_b16 v26, v9 offset:640
	ds_store_b16 v26, v12 offset:704
	ds_store_b16 v113, v15
	ds_store_b16_d16_hi v113, v15 offset:64
	ds_store_b16 v114, v16
	ds_store_b16_d16_hi v114, v16 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v20, v87 :: v_dual_mov_b32 v21, v88
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v41, 0
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s44, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v20
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v16, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v21
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v1, v2
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_xor_b32_e32 v1, v1, v97
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v111, v1, v96
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v26, 0
	v_xor_b32_e32 v112, 16, v111
	v_xor_b32_e32 v114, 32, v111
	v_xor_b32_e32 v116, 48, v111
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_add_nc_u32_e32 v5, s4, v116
	v_add_nc_u32_e32 v14, s4, v114
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v18, s46, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[10:13], v14 offset:4096
	ds_load_b128 v[14:17], v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v19, v18 offset:832
	ds_load_u8 v20, v18 offset:768
	ds_load_u8 v21, v18 offset:960
	ds_load_u8 v22, v18 offset:896
	ds_load_u8 v25, v18 offset:576
	ds_load_u8 v26, v18 offset:512
	ds_load_u8 v27, v18 offset:704
	ds_load_u8 v28, v18 offset:640
	ds_load_u8 v29, v18 offset:320
	ds_load_u8 v83, v18 offset:256
	ds_load_u8 v84, v18 offset:448
	ds_load_u8 v85, v18 offset:384
	ds_load_u8 v86, v18 offset:64
	ds_load_u8 v87, v18
	ds_load_u8 v88, v18 offset:192
	ds_load_u8 v89, v18 offset:128
	ds_load_u8 v109, v18 offset:992
	ds_load_u8 v110, v18 offset:928
	ds_load_u8 v113, v18 offset:864
	ds_load_u8 v115, v18 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v24, s4, v111
	v_add_nc_u32_e32 v23, s4, v112
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v22, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v27, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v89, v88, 0xc0c0004
	v_mov_b32_e32 v95, s15
	v_perm_b32 v21, v26, v25, 0xc0c0004
	v_perm_b32 v25, v83, v29, 0xc0c0004
	v_perm_b32 v26, v85, v84, 0xc0c0004
	v_lshl_or_b32 v120, v20, 16, v19
	v_mov_b32_e32 v93, s13
	ds_load_u8 v19, v18 offset:1856
	ds_load_u8 v20, v18 offset:1792
	v_lshl_or_b32 v119, v22, 16, v21
	v_lshl_or_b32 v118, v26, 16, v25
	v_lshl_or_b32 v117, v87, 16, v27
	v_dual_mov_b32 v92, s12 :: v_dual_mov_b32 v91, s11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[83:86], v24 offset:4096
	ds_load_b128 v[104:107], v24
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v21, v18 offset:1984
	ds_load_u8 v22, v18 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[125:128], v23 offset:4096
	ds_load_b128 v[129:132], v23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v23, v18 offset:1600
	ds_load_u8 v24, v18 offset:1536
	ds_load_u8 v25, v18 offset:1728
	ds_load_u8 v26, v18 offset:1664
	ds_load_u8 v27, v18 offset:1344
	ds_load_u8 v87, v18 offset:1280
	ds_load_u8 v108, v18 offset:1472
	ds_load_u8 v121, v18 offset:1408
	ds_load_u8 v147, v18 offset:2016
	ds_load_u8 v148, v18 offset:1952
	ds_load_u8 v149, v18 offset:1888
	ds_load_u8 v150, v18 offset:1824
	ds_load_u8 v133, v18 offset:3008
	ds_load_u8 v134, v18 offset:2944
	ds_load_u8 v137, v18 offset:736
	ds_load_u8 v138, v18 offset:672
	ds_load_u8 v139, v18 offset:608
	ds_load_u8 v140, v18 offset:544
	ds_load_u8 v28, v18 offset:480
	ds_load_u8 v141, v18 offset:416
	ds_load_u8 v142, v18 offset:352
	ds_load_u8 v143, v18 offset:288
	ds_load_u8 v29, v18 offset:224
	ds_load_u8 v144, v18 offset:160
	ds_load_u8 v145, v18 offset:96
	ds_load_u8 v146, v18 offset:32
	ds_load_u8 v155, v18 offset:1504
	ds_load_u8 v156, v18 offset:1440
	ds_load_u8 v157, v18 offset:1376
	ds_load_u8 v158, v18 offset:1312
	ds_load_u8 v170, v18 offset:2528
	ds_load_u8 v171, v18 offset:2464
	ds_load_u8 v172, v18 offset:2400
	ds_load_u8 v173, v18 offset:2336
	ds_load_u8 v174, v18 offset:2272
	ds_load_u8 v175, v18 offset:2208
	ds_load_u8 v176, v18 offset:2144
	ds_load_u8 v177, v18 offset:2080
	v_mov_b32_e32 v94, s14
	v_dual_mov_b32 v90, s10 :: v_dual_mov_b32 v89, s9
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v18 offset:1088
	ds_load_u8 v122, v18 offset:1024
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v24, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v25, v87, v27, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v26, v121, v108, 0xc0c0004
	ds_load_u8 v27, v18 offset:2880
	ds_load_u8 v108, v18 offset:2816
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v18 offset:1216
	ds_load_u8 v123, v18 offset:1152
	ds_load_u8 v151, v18 offset:1760
	ds_load_u8 v152, v18 offset:1696
	ds_load_u8 v153, v18 offset:1632
	ds_load_u8 v154, v18 offset:1568
	ds_load_u8 v87, v18 offset:1248
	ds_load_u8 v159, v18 offset:1184
	ds_load_u8 v160, v18 offset:1120
	ds_load_u8 v161, v18 offset:1056
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v18 offset:2240
	ds_load_u8 v136, v18 offset:2176
	ds_load_u8 v166, v18 offset:2784
	ds_load_u8 v167, v18 offset:2720
	ds_load_u8 v168, v18 offset:2656
	ds_load_u8 v169, v18 offset:2592
	v_lshl_or_b32 v124, v21, 16, v19
	v_mov_b32_e32 v88, s8
	ds_load_u8 v187, v18 offset:3808
	ds_load_u8 v188, v18 offset:3744
	ds_load_u8 v189, v18 offset:3680
	ds_load_u8 v190, v18 offset:3616
	ds_load_u8 v192, v18 offset:3552
	ds_load_u8 v193, v18 offset:3488
	ds_load_u8 v194, v18 offset:3424
	ds_load_u8 v195, v18 offset:3360
	v_perm_b32 v113, v115, v113, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[96:103], v[104:107], v[117:120], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v110, v140, v139, 0xc0c0004
	v_perm_b32 v115, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v20, v122, v20, 0xc0c0004
	v_lshl_or_b32 v122, v26, 16, v25
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v123, v22, 0xc0c0004
	v_lshl_or_b32 v123, v24, 16, v23
	v_perm_b32 v27, v108, v27, 0xc0c0004
	ds_load_u8 v108, v18 offset:2112
	ds_load_u8 v135, v18 offset:2048
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v178, v136, v134, 0xc0c0004
	v_lshl_or_b32 v121, v22, 16, v20
	ds_load_u8 v19, v18 offset:2624
	ds_load_u8 v20, v18 offset:2560
	ds_load_u8 v21, v18 offset:2752
	ds_load_u8 v22, v18 offset:2688
	ds_load_u8 v23, v18 offset:2368
	ds_load_u8 v24, v18 offset:2304
	ds_load_u8 v25, v18 offset:2496
	ds_load_u8 v26, v18 offset:2432
	ds_load_u8 v162, v18 offset:3040
	ds_load_u8 v163, v18 offset:2976
	ds_load_u8 v164, v18 offset:2912
	ds_load_u8 v165, v18 offset:2848
	v_lshl_or_b32 v136, v133, 16, v27
	v_perm_b32 v28, v141, v28, 0xc0c0004
	v_perm_b32 v29, v144, v29, 0xc0c0004
	v_lshl_or_b32 v140, v109, 16, v113
	v_lshl_or_b32 v139, v115, 16, v110
	v_perm_b32 v109, v154, v153, 0xc0c0004
	v_perm_b32 v110, v152, v151, 0xc0c0004
	v_perm_b32 v113, v158, v157, 0xc0c0004
	v_perm_b32 v115, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v141, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v22, v21, 0xc0c0004
	v_perm_b32 v87, v159, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v24, v23, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[96:103], v[129:132], v[121:124], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v26, v25, 0xc0c0004
	v_perm_b32 v23, v135, v108, 0xc0c0004
	ds_load_u8 v24, v18 offset:3904
	ds_load_u8 v25, v18 offset:3840
	ds_load_u8 v26, v18 offset:4032
	ds_load_u8 v108, v18 offset:3968
	v_lshl_or_b32 v135, v20, 16, v19
	v_lshl_or_b32 v141, v87, 16, v141
	v_lshl_or_b32 v134, v22, 16, v21
	v_lshl_or_b32 v133, v178, 16, v23
	ds_load_u8 v19, v18 offset:3648
	ds_load_u8 v20, v18 offset:3584
	ds_load_u8 v21, v18 offset:3776
	ds_load_u8 v22, v18 offset:3712
	ds_load_u8 v23, v18 offset:3392
	ds_load_u8 v27, v18 offset:3328
	ds_load_u8 v178, v18 offset:3520
	ds_load_u8 v179, v18 offset:3456
	ds_load_u8 v180, v18 offset:4064
	ds_load_u8 v181, v18 offset:4000
	ds_load_u8 v182, v18 offset:3936
	ds_load_u8 v183, v18 offset:3872
	v_perm_b32 v87, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[96:103], v[14:17], v[133:136], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v191, v22, v21, 0xc0c0004
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v27, v23, 0xc0c0004
	v_perm_b32 v25, v108, v26, 0xc0c0004
	ds_load_u8 v26, v18 offset:3136
	ds_load_u8 v184, v18 offset:3072
	ds_load_u8 v185, v18 offset:3264
	ds_load_u8 v186, v18 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v18 offset:3296
	ds_load_u8 v197, v18 offset:3232
	ds_load_u8 v198, v18 offset:3168
	ds_load_u8 v18, v18 offset:3104
	v_lshl_or_b32 v108, v25, 16, v24
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v184, v184, v26, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[83:86], v[117:120], v[88:95] neg_lo:[1,1,0]
	v_perm_b32 v117, v143, v142, 0xc0c0004
	v_perm_b32 v118, v146, v145, 0xc0c0004
	v_lshl_or_b32 v143, v110, 16, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[125:128], v[121:124], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v115, 16, v113
	v_lshl_or_b32 v138, v28, 16, v117
	v_lshl_or_b32 v137, v29, 16, v118
	v_perm_b32 v28, v150, v149, 0xc0c0004
	v_perm_b32 v29, v148, v147, 0xc0c0004
	v_perm_b32 v109, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[104:107], v[137:140], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v29, 16, v28
	v_perm_b32 v28, v165, v164, 0xc0c0004
	v_perm_b32 v29, v163, v162, 0xc0c0004
	v_perm_b32 v104, v167, v166, 0xc0c0004
	v_perm_b32 v105, v173, v172, 0xc0c0004
	v_perm_b32 v106, v171, v170, 0xc0c0004
	v_perm_b32 v107, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[129:132], v[141:144], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v29, 16, v28
	v_lshl_or_b32 v131, v104, 16, v87
	v_lshl_or_b32 v130, v106, 16, v105
	v_lshl_or_b32 v129, v109, 16, v107
	v_wmma_i32_16x16x16_iu8 v[88:95], v[83:86], v[137:140], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v191, 16, v19
	v_perm_b32 v19, v188, v187, 0xc0c0004
	v_perm_b32 v28, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[14:17], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_perm_b32 v14, v183, v182, 0xc0c0004
	v_perm_b32 v15, v181, v180, 0xc0c0004
	v_perm_b32 v16, v190, v189, 0xc0c0004
	v_perm_b32 v29, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v198, 0xc0c0004
	v_perm_b32 v83, v197, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[88:95], v[125:128], v[141:144], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v178, 16, v196
	v_lshl_or_b32 v105, v185, 16, v184
	v_wmma_i32_16x16x16_iu8 v[20:27], v[10:13], v[133:136], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v15, 16, v14
	v_lshl_or_b32 v16, v19, 16, v16
	v_lshl_or_b32 v15, v29, 16, v28
	v_lshl_or_b32 v14, v83, 16, v18
	v_wmma_i32_16x16x16_iu8 v[88:95], v[10:13], v[129:132], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[5:8], v[105:108], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[1:4], v[105:108], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[5:8], v[14:17], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[1:4], v[14:17], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v97
	v_cvt_f32_i32_e32 v12, v98
	v_cvt_f32_i32_e32 v16, v99
	v_cvt_f32_i32_e32 v13, v100
	v_cvt_f32_i32_e32 v17, v101
	v_cvt_f32_i32_e32 v14, v102
	v_cvt_f32_i32_e32 v18, v103
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v6, v24
	v_cvt_f32_i32_e32 v5, v25
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v1, v27
	v_cvt_f32_i32_e32 v25, v117
	v_cvt_f32_i32_e32 v84, v118
	v_cvt_f32_i32_e32 v29, v119
	v_cvt_f32_i32_e32 v87, v120
	v_cvt_f32_i32_e32 v24, v121
	v_cvt_f32_i32_e32 v28, v122
	v_cvt_f32_i32_e32 v26, v123
	v_cvt_f32_i32_e32 v85, v124
	v_cvt_f32_i32_e32 v27, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v83, v90
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v8, v92
	v_cvt_f32_i32_e32 v7, v93
	v_cvt_f32_i32_e32 v4, v94
	v_cvt_f32_i32_e32 v3, v95
	v_cvt_f32_i32_e32 v23, v96
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s18, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s4, s18, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v81, s4, 1
	v_add_lshl_u32 v11, v82, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v80, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v90, v79, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v109, v10, s[24:27], 0 offen
	buffer_load_u16 v110, v11, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v10, v78, s4, 1
	v_cndmask_b32_e32 v11, 0x80000000, v89, vcc_lo
	v_add_lshl_u32 v92, v75, s4, 1
	v_cndmask_b32_e32 v89, 0x80000000, v90, vcc_lo
	v_add_lshl_u32 v90, v77, s4, 1
	v_add_lshl_u32 v91, v76, s4, 1
	v_add_lshl_u32 v93, v74, s4, 1
	v_add_lshl_u32 v94, v73, s4, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v97, v72, s4, 1
	s_and_b32 s17, s17, 0xffff
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	v_add_lshl_u32 v98, v71, s4, 1
	v_add_lshl_u32 v99, v70, s4, 1
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	s_clause 0x7
	buffer_load_u16 v113, v11, s[16:19], 0 offen
	buffer_load_u16 v115, v89, s[16:19], 0 offen
	buffer_load_u16 v106, v10, s[16:19], 0 offen
	buffer_load_u16 v108, v90, s[16:19], 0 offen
	buffer_load_u16 v101, v91, s[16:19], 0 offen
	buffer_load_u16 v102, v92, s[16:19], 0 offen
	buffer_load_u16 v95, v93, s[16:19], 0 offen
	buffer_load_u16 v96, v94, s[16:19], 0 offen
	v_add_lshl_u32 v90, v69, s4, 1
	v_add_lshl_u32 v91, v67, s4, 1
	v_dual_cndmask_b32 v10, 0x80000000, v97 :: v_dual_cndmask_b32 v11, 0x80000000, v98
	v_add_lshl_u32 v92, v68, s4, 1
	v_add_lshl_u32 v93, v39, s4, 1
	v_add_lshl_u32 v94, v40, s4, 1
	v_dual_cndmask_b32 v89, 0x80000000, v99 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v91 :: v_dual_cndmask_b32 v98, 0x80000000, v92
	v_dual_cndmask_b32 v99, 0x80000000, v93 :: v_dual_cndmask_b32 v100, 0x80000000, v94
	s_clause 0x7
	buffer_load_u16 v93, v10, s[16:19], 0 offen
	buffer_load_u16 v94, v11, s[16:19], 0 offen
	buffer_load_u16 v91, v89, s[16:19], 0 offen
	buffer_load_u16 v92, v90, s[16:19], 0 offen
	buffer_load_u16 v89, v97, s[16:19], 0 offen
	buffer_load_u16 v90, v98, s[16:19], 0 offen
	buffer_load_u16 v11, v99, s[16:19], 0 offen
	buffer_load_u16 v10, v100, s[16:19], 0 offen
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v99, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
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
	v_dual_mov_b32 v146, s11 :: v_dual_add_nc_u32 v9, s1, v116
	v_dual_mov_b32 v145, s10 :: v_dual_add_nc_u32 v104, s44, v65
	v_dual_mov_b32 v144, s9 :: v_dual_add_nc_u32 v103, s1, v114
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v9 offset:4096
	ds_load_b128 v[116:119], v9
	ds_load_b128 v[155:158], v103 offset:4096
	ds_load_b128 v[159:162], v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v140, s5 :: v_dual_add_nc_u32 v103, s1, v111
	v_dual_mov_b32 v142, s7 :: v_dual_add_nc_u32 v9, s1, v112
	ds_load_u8 v105, v104 offset:832
	ds_load_u8 v107, v104 offset:768
	ds_load_u8 v111, v104 offset:960
	ds_load_u8 v112, v104 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[163:166], v103 offset:4096
	ds_load_b128 v[167:170], v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v103, v104 offset:576
	ds_load_u8 v114, v104 offset:512
	ds_load_u8 v120, v104 offset:704
	ds_load_u8 v121, v104 offset:640
	ds_load_u8 v122, v104 offset:320
	ds_load_u8 v123, v104 offset:256
	ds_load_u8 v124, v104 offset:448
	ds_load_u8 v125, v104 offset:384
	ds_load_u8 v126, v104 offset:64
	ds_load_u8 v127, v104
	ds_load_u8 v128, v104 offset:192
	ds_load_u8 v129, v104 offset:128
	ds_load_u8 v137, v104 offset:992
	ds_load_u8 v138, v104 offset:928
	ds_load_u8 v183, v104 offset:864
	ds_load_u8 v184, v104 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v105, v107, v105, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v107, v112, v111, 0xc0c0004
	ds_load_u8 v111, v104 offset:736
	ds_load_u8 v112, v104 offset:672
	ds_load_u8 v185, v104 offset:608
	ds_load_u8 v187, v104 offset:544
	ds_load_u8 v191, v104 offset:224
	ds_load_u8 v192, v104 offset:160
	ds_load_u8 v193, v104 offset:96
	ds_load_u8 v194, v104 offset:32
	ds_load_u8 v203, v104 offset:1504
	ds_load_u8 v204, v104 offset:1440
	ds_load_u8 v205, v104 offset:1376
	ds_load_u8 v206, v104 offset:1312
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v103, v114, v103, 0xc0c0004
	v_lshl_or_b32 v150, v107, 16, v105
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v114, v121, v120, 0xc0c0004
	ds_load_u8 v120, v104 offset:480
	ds_load_u8 v188, v104 offset:416
	ds_load_u8 v189, v104 offset:352
	ds_load_u8 v190, v104 offset:288
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v121, v123, v122, 0xc0c0004
	ds_load_u8 v207, v104 offset:1248
	ds_load_u8 v208, v104 offset:1184
	ds_load_u8 v209, v104 offset:1120
	ds_load_u8 v210, v104 offset:1056
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v122, v125, v124, 0xc0c0004
	v_lshl_or_b32 v149, v114, 16, v103
	ds_load_u8 v103, v104 offset:1856
	ds_load_u8 v105, v104 offset:1792
	ds_load_u8 v107, v104 offset:1984
	ds_load_u8 v114, v104 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[171:174], v9 offset:4096
	ds_load_b128 v[175:178], v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v124, v129, v128, 0xc0c0004
	ds_load_u8 v9, v104 offset:1600
	ds_load_u8 v129, v104 offset:1536
	ds_load_u8 v130, v104 offset:1728
	ds_load_u8 v131, v104 offset:1664
	ds_load_u8 v132, v104 offset:1344
	ds_load_u8 v133, v104 offset:1280
	ds_load_u8 v134, v104 offset:1472
	ds_load_u8 v135, v104 offset:1408
	ds_load_u8 v195, v104 offset:2016
	ds_load_u8 v196, v104 offset:1952
	ds_load_u8 v197, v104 offset:1888
	ds_load_u8 v198, v104 offset:1824
	v_perm_b32 v123, v127, v126, 0xc0c0004
	ds_load_u8 v221, v104 offset:2272
	ds_load_u8 v222, v104 offset:2208
	ds_load_u8 v223, v104 offset:2144
	ds_load_u8 v224, v104 offset:2080
	v_lshl_or_b32 v148, v122, 16, v121
	v_mov_b32_e32 v143, s8
	v_mov_b32_e32 v141, s6
	v_lshl_or_b32 v147, v124, 16, v123
	v_mov_b32_e32 v139, s4
	ds_load_u8 v232, v104 offset:3808
	ds_load_u8 v233, v104 offset:3744
	ds_load_u8 v234, v104 offset:3680
	ds_load_u8 v235, v104 offset:3616
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v129, v9, 0xc0c0004
	v_perm_b32 v138, v187, v185, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v129, v131, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[121:128], v[167:170], v[147:150], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v130, v133, v132, 0xc0c0004
	ds_load_u8 v132, v104 offset:2880
	ds_load_u8 v133, v104 offset:2816
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v104 offset:1088
	ds_load_u8 v136, v104 offset:1024
	v_perm_b32 v107, v114, v107, 0xc0c0004
	ds_load_u8 v114, v104 offset:1216
	ds_load_u8 v151, v104 offset:1152
	ds_load_u8 v199, v104 offset:1760
	ds_load_u8 v200, v104 offset:1696
	ds_load_u8 v201, v104 offset:1632
	ds_load_u8 v202, v104 offset:1568
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v131, v135, v134, 0xc0c0004
	ds_load_u8 v134, v104 offset:3008
	ds_load_u8 v135, v104 offset:2944
	v_lshl_or_b32 v153, v129, 16, v9
	v_lshl_or_b32 v154, v107, 16, v103
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_lshl_or_b32 v152, v131, 16, v130
	v_perm_b32 v112, v190, v189, 0xc0c0004
	v_perm_b32 v120, v188, v120, 0xc0c0004
	v_perm_b32 v185, v208, v207, 0xc0c0004
	v_lshl_or_b32 v189, v111, 16, v138
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v111, v198, v197, 0xc0c0004
	v_perm_b32 v138, v206, v205, 0xc0c0004
	v_lshl_or_b32 v188, v120, 16, v112
	v_perm_b32 v112, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v114, v151, v114, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v105, v136, v105, 0xc0c0004
	ds_load_u8 v133, v104 offset:2112
	ds_load_u8 v136, v104 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_lshl_or_b32 v151, v114, 16, v105
	ds_load_u8 v9, v104 offset:2624
	ds_load_u8 v103, v104 offset:2560
	ds_load_u8 v105, v104 offset:2752
	ds_load_u8 v107, v104 offset:2688
	ds_load_u8 v114, v104 offset:2368
	ds_load_u8 v129, v104 offset:2304
	ds_load_u8 v130, v104 offset:2496
	ds_load_u8 v131, v104 offset:2432
	ds_load_u8 v211, v104 offset:3040
	ds_load_u8 v212, v104 offset:2976
	ds_load_u8 v213, v104 offset:2912
	ds_load_u8 v214, v104 offset:2848
	ds_load_u8 v135, v104 offset:2240
	ds_load_u8 v179, v104 offset:2176
	ds_load_u8 v215, v104 offset:2784
	ds_load_u8 v216, v104 offset:2720
	ds_load_u8 v217, v104 offset:2656
	ds_load_u8 v218, v104 offset:2592
	v_lshl_or_b32 v182, v134, 16, v132
	v_wmma_i32_16x16x16_iu8 v[121:128], v[175:178], v[151:154], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v103, v9, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v107, v105, 0xc0c0004
	ds_load_u8 v105, v104 offset:2528
	ds_load_u8 v107, v104 offset:2464
	ds_load_u8 v219, v104 offset:2400
	ds_load_u8 v220, v104 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v129, v114, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v129, v131, v130, 0xc0c0004
	v_perm_b32 v130, v136, v133, 0xc0c0004
	ds_load_u8 v131, v104 offset:3904
	ds_load_u8 v133, v104 offset:3840
	ds_load_u8 v136, v104 offset:4032
	ds_load_u8 v186, v104 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v179, v135, 0xc0c0004
	v_lshl_or_b32 v181, v103, 16, v9
	v_lshl_or_b32 v180, v129, 16, v114
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v179, v135, 16, v130
	ds_load_u8 v9, v104 offset:3648
	ds_load_u8 v103, v104 offset:3584
	ds_load_u8 v114, v104 offset:3776
	ds_load_u8 v129, v104 offset:3712
	ds_load_u8 v130, v104 offset:3392
	ds_load_u8 v132, v104 offset:3328
	ds_load_u8 v134, v104 offset:3520
	ds_load_u8 v135, v104 offset:3456
	ds_load_u8 v225, v104 offset:4064
	ds_load_u8 v226, v104 offset:4000
	ds_load_u8 v227, v104 offset:3936
	ds_load_u8 v228, v104 offset:3872
	v_wmma_i32_16x16x16_iu8 v[121:128], v[159:162], v[179:182], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v105, v107, v105, 0xc0c0004
	v_perm_b32 v107, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v103, v9, 0xc0c0004
	v_perm_b32 v131, v133, v131, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v103, v129, v114, 0xc0c0004
	v_perm_b32 v133, v186, v136, 0xc0c0004
	ds_load_u8 v136, v104 offset:3136
	ds_load_u8 v229, v104 offset:3072
	ds_load_u8 v230, v104 offset:3264
	ds_load_u8 v231, v104 offset:3200
	ds_load_u8 v114, v104 offset:3552
	ds_load_u8 v236, v104 offset:3488
	ds_load_u8 v237, v104 offset:3424
	ds_load_u8 v238, v104 offset:3360
	ds_load_u8 v241, v104 offset:3296
	ds_load_u8 v242, v104 offset:3232
	ds_load_u8 v243, v104 offset:3168
	ds_load_u8 v104, v104 offset:3104
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v239, v132, v130, 0xc0c0004
	v_lshl_or_b32 v186, v133, 16, v131
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v240, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v229, v229, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[129:136], v[163:166], v[147:150], v[139:146] neg_lo:[1,1,0]
	v_perm_b32 v147, v184, v183, 0xc0c0004
	v_perm_b32 v148, v194, v193, 0xc0c0004
	v_perm_b32 v149, v192, v191, 0xc0c0004
	v_perm_b32 v183, v204, v203, 0xc0c0004
	v_perm_b32 v184, v210, v209, 0xc0c0004
	v_lshl_or_b32 v190, v137, 16, v147
	v_perm_b32 v137, v200, v199, 0xc0c0004
	v_lshl_or_b32 v187, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[129:136], v[171:174], v[151:154], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v104, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[147:154], v[167:170], v[187:190], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v112, 16, v111
	v_lshl_or_b32 v169, v137, 16, v120
	v_lshl_or_b32 v168, v183, 16, v138
	v_lshl_or_b32 v167, v185, 16, v184
	v_perm_b32 v111, v214, v213, 0xc0c0004
	v_perm_b32 v112, v212, v211, 0xc0c0004
	v_perm_b32 v120, v218, v217, 0xc0c0004
	v_perm_b32 v137, v216, v215, 0xc0c0004
	v_perm_b32 v138, v220, v219, 0xc0c0004
	v_perm_b32 v183, v222, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[187:190], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[167:170], v[147:154] neg_lo:[1,1,0]
	v_lshl_or_b32 v178, v112, 16, v111
	v_lshl_or_b32 v177, v137, 16, v120
	v_lshl_or_b32 v176, v105, 16, v138
	v_lshl_or_b32 v175, v183, 16, v107
	v_lshl_or_b32 v185, v103, 16, v9
	v_perm_b32 v9, v228, v227, 0xc0c0004
	v_perm_b32 v103, v226, v225, 0xc0c0004
	v_perm_b32 v105, v235, v234, 0xc0c0004
	v_perm_b32 v107, v233, v232, 0xc0c0004
	v_perm_b32 v111, v238, v237, 0xc0c0004
	v_perm_b32 v112, v236, v114, 0xc0c0004
	v_perm_b32 v114, v242, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[171:174], v[167:170], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v240, 16, v239
	v_lshl_or_b32 v183, v230, 16, v229
	v_wmma_i32_16x16x16_iu8 v[129:136], v[155:158], v[179:182], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[175:178], v[147:154] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v103, 16, v9
	v_lshl_or_b32 v161, v107, 16, v105
	v_lshl_or_b32 v160, v112, 16, v111
	v_lshl_or_b32 v159, v114, 16, v104
	v_wmma_i32_16x16x16_iu8 v[139:146], v[155:158], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[116:119], v[183:186], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[97:100], v[183:186], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[116:119], v[159:162], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[97:100], v[159:162], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v117, v123
	v_cvt_f32_i32_e32 v123, v124
	v_cvt_f32_i32_e32 v118, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v119, v127
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v120, v129
	v_cvt_f32_i32_e32 v126, v130
	v_cvt_f32_i32_e32 v121, v131
	v_cvt_f32_i32_e32 v127, v132
	v_cvt_f32_i32_e32 v103, v133
	v_cvt_f32_i32_e32 v104, v134
	v_cvt_f32_i32_e32 v98, v135
	v_cvt_f32_i32_e32 v97, v136
	v_cvt_f32_i32_e32 v129, v147
	v_cvt_f32_i32_e32 v135, v148
	v_cvt_f32_i32_e32 v133, v149
	v_cvt_f32_i32_e32 v138, v150
	v_cvt_f32_i32_e32 v128, v151
	v_cvt_f32_i32_e32 v132, v152
	v_cvt_f32_i32_e32 v130, v153
	v_cvt_f32_i32_e32 v136, v154
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v137, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v139, v142
	v_cvt_f32_i32_e32 v105, v143
	v_cvt_f32_i32_e32 v107, v144
	v_cvt_f32_i32_e32 v99, v145
	v_cvt_f32_i32_e32 v100, v146
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s35, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v93.h, v101.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v101.h, v93.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v81, v81, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v80, v80, s0, 1
	v_add_lshl_u32 v79, v79, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v82, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v78, v78, s0, 1
	v_add_lshl_u32 v77, v77, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v76, v76, s0, 1
	v_add_lshl_u32 v75, v75, s0, 1
	v_add_lshl_u32 v74, v74, s0, 1
	v_add_lshl_u32 v73, v73, s0, 1
	v_add_lshl_u32 v72, v72, s0, 1
	v_add_lshl_u32 v71, v71, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v111, 0x80000000, v80 :: v_dual_cndmask_b32 v112, 0x80000000, v79
	v_add_lshl_u32 v70, v70, s0, 1
	v_add_lshl_u32 v69, v69, s0, 1
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v79, v81, s[24:27], 0 offen
	buffer_load_u16 v80, v82, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	s_clause 0xb
	buffer_load_u16 v81, v112, s[16:19], 0 offen
	buffer_load_u16 v82, v111, s[16:19], 0 offen
	buffer_load_u16 v77, v77, s[16:19], 0 offen
	buffer_load_u16 v78, v78, s[16:19], 0 offen
	buffer_load_u16 v75, v75, s[16:19], 0 offen
	buffer_load_u16 v76, v76, s[16:19], 0 offen
	buffer_load_u16 v73, v73, s[16:19], 0 offen
	buffer_load_u16 v74, v74, s[16:19], 0 offen
	buffer_load_u16 v71, v71, s[16:19], 0 offen
	buffer_load_u16 v72, v72, s[16:19], 0 offen
	buffer_load_u16 v111, v69, s[16:19], 0 offen
	buffer_load_u16 v112, v70, s[16:19], 0 offen
	v_add_lshl_u32 v69, v67, s0, 1
	v_add_lshl_u32 v70, v68, s0, 1
	v_add_lshl_u32 v39, v39, s0, 1
	v_add_lshl_u32 v40, v40, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v67.l, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v67.h, v110.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x3
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	buffer_load_u16 v70, v70, s[16:19], 0 offen
	buffer_load_u16 v152, v39, s[16:19], 0 offen
	buffer_load_u16 v40, v40, s[16:19], 0 offen
	v_mov_b16_e32 v93.l, v67.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v68.h, v109.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(23)
	v_mov_b16_e32 v91.h, v106.l
	s_waitcnt vmcnt(22)
	v_mov_b16_e32 v92.h, v102.l
	v_mov_b16_e32 v102.h, v92.l
	v_mov_b16_e32 v106.h, v91.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v68.l, v67.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v92.l, v67.l
	v_mov_b16_e32 v101.l, v67.l
	v_mov_b16_e32 v102.l, v67.l
	v_mov_b16_e32 v106.l, v67.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v153, v67, v93
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(21)
	v_mov_b16_e32 v89.h, v113.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e32 v90.h, v108.l
	v_mov_b16_e32 v94.h, v96.l
	v_mov_b16_e32 v95.h, v95.l
	v_mov_b16_e32 v96.h, v94.l
	v_mov_b16_e32 v108.h, v90.l
	v_mov_b16_e32 v110.h, v89.l
	v_mov_b16_e32 v89.l, v67.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v109, 56, v38
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v38, s31, v66
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v66.h, v115.l
	v_mov_b16_e32 v66.l, v67.l
	v_mov_b16_e32 v90.l, v67.l
	v_mov_b16_e32 v91.l, v67.l
	v_mov_b16_e32 v94.l, v67.l
	v_mov_b16_e32 v95.l, v67.l
	v_mov_b16_e32 v96.l, v67.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v67, v92
	v_dual_mul_f32 v92, v92, v68 :: v_dual_mul_f32 v157, v67, v101
	v_dual_mul_f32 v101, v101, v68 :: v_dual_mul_f32 v160, v67, v102
	v_dual_mul_f32 v159, v67, v106 :: v_dual_mul_f32 v102, v102, v68
	v_mul_f32_e32 v106, v106, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v153, v24, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v148, v67, v89
	v_dual_mul_f32 v149, v67, v66 :: v_dual_mul_f32 v66, v66, v68
	v_dual_mul_f32 v89, v89, v68 :: v_dual_mul_f32 v150, v67, v91
	v_dual_mul_f32 v151, v67, v90 :: v_dual_mul_f32 v90, v90, v68
	v_mul_f32_e32 v91, v91, v68
	v_dual_mul_f32 v93, v93, v68 :: v_dual_mul_f32 v156, v67, v94
	v_dual_mul_f32 v155, v67, v95 :: v_dual_mul_f32 v94, v94, v68
	v_mul_f32_e32 v158, v67, v96
	v_mul_f32_e32 v96, v96, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v157, v27, v47
	v_fma_f32 v19, v101, v19, v48
	v_fma_f32 v22, v102, v22, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v55, v24, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v110.l, v67.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v95, v95, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v149, v84, v61
	v_fma_f32 v25, v148, v25, v63
	v_fma_f32 v23, v89, v23, v41
	v_fma_f32 v16, v90, v16, v62
	v_fma_f32 v26, v155, v26, v51
	v_fma_f32 v18, v94, v18, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v47, v27, s2
	v_cndmask_b32_e64 v19, v48, v19, s2
	v_cndmask_b32_e64 v22, v46, v22, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v114.h, v67.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v63, v25, s2
	v_cndmask_b32_e64 v61, v61, v84, s2
	v_cndmask_b32_e64 v23, v41, v23, s2
	v_cndmask_b32_e64 v16, v62, v16, s2
	v_cndmask_b32_e64 v26, v51, v26, s2
	v_cndmask_b32_e64 v18, v54, v18, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v96, v21, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v161, v110, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v66, v15, v64
	v_fma_f32 v66, v151, v87, v57
	v_fma_f32 v29, v150, v29, v59
	v_fma_f32 v17, v92, v17, v58
	v_fma_f32 v13, v93, v13, v56
	v_fma_f32 v85, v156, v85, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v50, v21, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v113.h, v67.l
	v_mov_b16_e64 v141.h, v67.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v64, v15, s2
	v_cndmask_b32_e64 v29, v59, v29, s2
	v_cndmask_b32_e64 v41, v57, v66, s2
	v_cndmask_b32_e64 v17, v58, v17, s2
	v_cndmask_b32_e64 v13, v56, v13, s2
	v_cndmask_b32_e64 v49, v49, v85, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v115.h, v67.l
	v_mov_b16_e64 v142.h, v67.l
	v_mov_b16_e64 v145.h, v67.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v159, v83, v43
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s34, s31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v160, v88, v42
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s33
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.h, v67.l
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v83, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v162, s1, v109
	v_add3_u32 v39, s1, v109, 64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v87, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v116.h, v67.l
	v_mov_b16_e64 v146.h, v67.l
	v_mov_b16_e64 v147.h, v67.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v108.l, v67.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v140.h, v67.l
	v_mov_b16_e64 v144.h, v67.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v65, s31, v65
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	v_and_b32_e32 v0, 16, v0
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v47, 16, v81
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v48, 16, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v154, v28, v53
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v51, 16, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v95, v14, v52
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v50, 16, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v158, v86, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v55, 16, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v106, v20, v44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v46, 16, v80
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v54, 16, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v53, v28, s2
	v_cndmask_b32_e64 v14, v52, v14, s2
	v_cndmask_b32_e64 v20, v44, v20, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v44, 16, v79
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v91, v12, v60
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v52, 16, v75
	v_lshlrev_b32_e32 v53, 16, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v86, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v62, v47, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v60, v12, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v60, v48, v44
	v_mul_f32_e32 v48, v46, v48
	v_mul_f32_e32 v47, v46, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v57, 16, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v51, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v60, v9, v23
	v_fma_f32 v48, v48, v129, v25
	v_fma_f32 v47, v47, v135, v61
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v56, 16, v71
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v52, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v23, v9, s3
	v_cndmask_b32_e64 v23, v25, v48, s3
	v_cndmask_b32_e64 v25, v61, v47, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v50, v44
	v_mul_f32_e32 v50, v46, v50
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v58, 16, v111
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v59, 16, v112
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v55, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v113.l, v25.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v73, v54, v44
	v_mul_f32_e32 v54, v46, v54
	v_mul_f32_e32 v66, v53, v44
	v_dual_mul_f32 v76, v59, v44 :: v_dual_mul_f32 v59, v46, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v62, v122, v15
	v_fma_f32 v62, v63, v117, v12
	v_fma_f32 v63, v64, v123, v16
	v_fma_f32 v50, v50, v138, v41
	v_fma_f32 v64, v66, v118, v13
	v_fma_f32 v66, v71, v124, v17
	v_fma_f32 v71, v72, v119, v14
	v_fma_f32 v54, v54, v136, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v62, s3
	v_cndmask_b32_e64 v41, v41, v50, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v74, v57, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v71, s3
	v_cndmask_b32_e64 v47, v49, v54, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v48, v9, 16, 1
	v_bfe_u32 v50, v12, 16, 1
	v_mov_b16_e32 v115.l, v41.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v75, v56, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v54, v14, 16, 1
	v_mov_b16_e64 v142.l, v47.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v77, v58, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v60, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s5, v12, v12
	v_cmp_o_f32_e64 s13, v14, v14
	v_add3_u32 v9, v9, v48, 0x7fff
	v_and_b32_e32 v48, 1, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v73, v125, v18
	v_fma_f32 v73, v74, v120, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v12, v50, 0x7fff
	v_and_b32_e32 v50, 1, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v75, v126, v21
	v_fma_f32 v75, v76, v121, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v14, v54, 0x7fff
	v_and_b32_e32 v54, 1, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v77, v127, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v49, v15, 16, 1
	v_mov_b16_e32 v114.l, v23.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v59, v134, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v15, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v76, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v15, v15, v49, 0x7fff
	v_and_b32_e32 v49, 1, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v59, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v25, v25
	v_bfe_u32 v59, v22, 16, 1
	v_cmp_o_f32_e64 s4, v23, v23
	v_cmp_o_f32_e64 s7, v41, v41
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s0
	v_add3_u32 v15, v23, v49, 0x7fff
	v_add3_u32 v23, v25, v48, 0x7fff
	v_add3_u32 v25, v41, v50, 0x7fff
	v_cmp_o_f32_e64 s22, v22, v22
	v_add3_u32 v22, v22, v59, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v15.h, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v72, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v15.h, 0x7fff, v25.h, s7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v67, v110
	v_mul_f32_e32 v55, v46, v55
	v_mul_f32_e32 v53, v46, v53
	v_mul_f32_e32 v51, v46, v51
	v_mul_f32_e32 v58, v46, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v64, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v55, v55, v130, v26
	v_fma_f32 v53, v53, v128, v24
	v_fma_f32 v51, v51, v133, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v66, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s14, v18, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v55, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v55, v18, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v58, v139, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v53, s3
	v_cndmask_b32_e64 v20, v20, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.l, v26.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v52, v46, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v18, v55, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v63, s3
	v_cndmask_b32_e64 v29, v29, v51, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v55, 1, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v52, v132, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v53, v17, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v58, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.l, v24.h
	v_bfe_u32 v58, v20, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v52, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v52, v13, 16, 1
	v_bfe_u32 v51, v16, 16, 1
	v_mov_b16_e32 v116.l, v29.h
	v_cmp_o_f32_e64 s9, v13, v13
	v_cmp_o_f32_e64 s10, v17, v17
	v_add3_u32 v13, v13, v52, 0x7fff
	v_add3_u32 v17, v17, v53, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v46, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s21, v20, v20
	v_mov_b16_e64 v146.l, v42.h
	v_mov_b16_e64 v147.l, v43.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v56, v46, v56 :: v_dual_and_b32 v53, 1, v141
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v20, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_add3_u32 v16, v16, v51, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s9
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s10
	v_and_b32_e32 v51, 1, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v57, v131, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v140.l, v28.h
	v_cmp_o_f32_e64 s12, v24, v24
	v_cmp_o_f32_e64 s15, v47, v47
	v_cmp_o_f32_e64 s16, v26, v26
	v_and_b32_e32 v58, 1, v146
	v_and_b32_e32 v59, 1, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v56, v137, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v24, v53, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v14.h, 0x7fff, v18.h, s14
	v_add3_u32 v18, v26, v55, 0x7fff
	v_add3_u32 v26, v47, v54, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s21
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s22
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v108, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v16.h, s6
	v_add3_u32 v16, v29, v51, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v73, s3
	v_cndmask_b32_e64 v21, v21, v74, s3
	v_cndmask_b32_e64 v27, v27, v57, s3
	v_cndmask_b32_e64 v45, v45, v56, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s12
	v_cndmask_b16 v17.h, 0x7fff, v26.h, s15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v161, v6, v37
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v23, v5, v36
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v23, 16, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v52, 1, v140
	v_cmp_o_f32_e64 s8, v29, v29
	v_cmp_o_f32_e64 s11, v28, v28
	v_bfe_u32 v56, v19, 16, 1
	v_bfe_u32 v57, v21, 16, 1
	v_mov_b16_e64 v144.l, v45.h
	v_mov_b16_e64 v145.l, v27.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v37, v6, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v23, v44
	v_mul_f32_e32 v23, v46, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v28, v52, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v26, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s17, v19, v19
	v_cmp_o_f32_e64 s18, v21, v21
	v_add3_u32 v19, v19, v56, 0x7fff
	v_add3_u32 v21, v21, v57, 0x7fff
	v_and_b32_e32 v56, 1, v144
	v_and_b32_e32 v57, 1, v145
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v25, v8, v35
	v_fma_f32 v25, v28, v103, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s19, v45, v45
	v_cmp_o_f32_e64 s20, v27, v27
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s17
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s18
	v_add3_u32 v21, v27, v57, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v25, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v46, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v27, v45, v56, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v36, v5, s2
	v_cndmask_b32_e64 v8, v35, v8, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v26, v6, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v27.h, s19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v67, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s8
	v_cndmask_b16 v16.h, 0x7fff, v24.h, s11
	v_add3_u32 v24, v42, v58, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v27, v7, v34
	v_fma_f32 v27, v29, v104, v5
	v_fma_f32 v25, v25, v105, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v6, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v34, v7, s2
	v_cndmask_b32_e64 v5, v5, v27, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s20
	v_add3_u32 v21, v43, v59, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v107, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v27, v5, 16, 1
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v6, v5, v27, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v7, v23, s3
	v_cndmask_b32_e64 v7, v8, v25, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.h, v67.l
	v_cndmask_b16 v24.l, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v21.h, v67.l
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v21.l, v7.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v23.h, v11.l
	v_mov_b16_e32 v11.l, v67.l
	v_mov_b16_e32 v23.l, v67.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v10, 1, v21
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b16 v6.l, 0x7fff, v26.h, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v67, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v67, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v7, v10, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v21, v4, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v5, v3, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v11, v68
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v152
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v33, v4, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	v_mov_b16_e32 v10.h, v67.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v23, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v5, v1, v30
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v31, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v21, v2, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v11, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v23, v46, v5
	v_mul_f32_e32 v11, v46, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v30, v1, s2
	v_cndmask_b32_e64 v2, v32, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v5, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v23, v100, v3
	v_fma_f32 v11, v11, v99, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, v21, v98, v2
	v_fma_f32 v5, v5, v97, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	v_cndmask_b32_e64 v4, v4, v11, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.h, v67.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v21, s3
	v_cndmask_b32_e64 v1, v1, v5, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v3.h
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s1, v3, v3
	v_bfe_u32 v5, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_bfe_u32 v11, v1, 16, 1
	v_cmp_o_f32_e64 s0, v1, v1
	v_cmp_o_f32_e64 s2, v4, v4
	v_add3_u32 v5, v2, v5, 0x7fff
	v_and_b32_e32 v2, 1, v10
	v_add3_u32 v10, v1, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v7, 1, v7
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b32_e32 v2, v9, v13, vcc_lo
	v_add3_u32 v1, v4, v7, 0x7fff
	v_cndmask_b32_e32 v4, v14, v12, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b32_e32 v1, v13, v9, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_cndmask_b32 v7, v6, v19 :: v_dual_cndmask_b32 v6, v19, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_dual_cndmask_b32 v9, v3, v20 :: v_dual_and_b32 v10, 0x540054, v10
	v_cndmask_b32_e32 v3, v20, v3, vcc_lo
	v_cndmask_b32_e32 v13, v22, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v11, v11, 8, v11
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v10, v10, 4, v10
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v11, 0x760076, v11
	v_and_b32_e32 v19, 0x5040504, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v11, v11, 4, v11
	v_cndmask_b32_e32 v5, v12, v14, vcc_lo
	v_cndmask_b32_e32 v12, v16, v22, vcc_lo
	v_dual_cndmask_b32 v14, v17, v15 :: v_dual_cndmask_b32 v15, v15, v17
	v_cndmask_b32_e32 v16, v8, v18, vcc_lo
	v_cndmask_b32_e32 v8, v18, v8, vcc_lo
	v_cndmask_b32_e32 v17, v0, v24, vcc_lo
	v_cndmask_b32_e32 v0, v24, v0, vcc_lo
	v_permlanex16_b32 v18, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 0x7060706, v11
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v6, v7, v19
	v_perm_b32 v5, v6, v7, v20
	v_perm_b32 v6, v18, v9, v19
	v_perm_b32 v7, v18, v9, v20
	v_perm_b32 v8, v13, v12, v19
	v_perm_b32 v9, v13, v12, v20
	v_perm_b32 v12, v15, v16, v19
	v_perm_b32 v13, v15, v16, v20
	v_add_lshl_u32 v16, v162, v65, 1
	v_perm_b32 v10, v11, v14, v19
	v_perm_b32 v11, v11, v14, v20
	v_perm_b32 v14, v21, v17, v19
	v_perm_b32 v15, v21, v17, v20
	v_add_lshl_u32 v17, v39, v65, 1
	v_add_lshl_u32 v18, v162, v38, 1
	v_add_lshl_u32 v19, v39, v38, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v18, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v19, s[28:31], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 244
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 244
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17788
; TotalNumSgprs: 49
; NumVgprs: 244
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 244
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     244
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
