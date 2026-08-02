	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v77, 2, v0
	v_lshlrev_b32_e32 v22, 4, v0
	v_and_b32_e32 v23, 0x80, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v24, 0x60, v0
	v_and_b32_e32 v80, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v78, 62, v77
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, 0, v22
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v6, 3, v23
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v7, 1, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v25, 1, v0
	v_and_b32_e32 v81, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v76, v0, 15, v6
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 63
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
	v_mul_lo_u32 v2, s35, v78
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v20, 32, v76
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s16, s6, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s16
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v79, v1, 4, v2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s6
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s16
	s_mul_i32 s17, s4, s6
	s_ashr_i32 s18, s10, 31
	s_sub_i32 s5, s5, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s17, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s31, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v78
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s3, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s6, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s17, s35, s30
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s26, s17, v79
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s6, s4
.Ltmp19:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s35, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s30, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 6, v0
	s_clause 0x1
	buffer_load_b128 v[26:29], v4, s[36:39], 0 offen
	buffer_load_b128 v[30:33], v2, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s34, v77
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 48, v22
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s6, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s35, 7, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s33, s30, 0x80
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v21, v2, v4, s27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s33, v78
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s34, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s7, v21
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v3
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
	buffer_load_b128 v[34:37], v3, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v4, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[42:45], v2, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s33, v77
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s34, 7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v4, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, s7, s4, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0x420, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v4, v3, 1, v7
	v_lshlrev_b32_e32 v3, 3, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s6, 0x17f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v6, v8, v78
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v4
	v_or_b32_e32 v9, 4, v4
	v_or_b32_e32 v10, 6, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[46:49], v2, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v82, v5, 10, v6
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v11, 8, v4
	v_or_b32_e32 v12, 10, v4
	v_or_b32_e32 v13, 12, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v83, 0x90, v82
	v_xor_b32_e32 v84, 0x120, v82
	v_xor_b32_e32 v85, 0x1b0, v82
	v_xor_b32_e32 v86, 0x210, v82
	v_xor_b32_e32 v87, 0x330, v82
	v_xor_b32_e32 v88, 0x3a0, v82
	v_add_nc_u32_e32 v59, 0, v82
	v_add_nc_u32_e32 v60, 0, v83
	v_add_nc_u32_e32 v61, 0, v84
	v_add_nc_u32_e32 v62, 0, v85
	v_add_nc_u32_e32 v63, 0, v86
	v_add_nc_u32_e32 v64, 0, v87
	v_add_nc_u32_e32 v65, 0, v88
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 14, v4
	v_or_b32_e32 v15, 64, v4
	v_or_b32_e32 v16, 0x42, v4
	v_or_b32_e32 v17, 0x44, v4
	v_or_b32_e32 v18, 0x46, v4
	v_or_b32_e32 v19, 0x48, v4
	v_or_b32_e32 v5, 0x4a, v4
	v_or_b32_e32 v6, 0x4c, v4
	v_or_b32_e32 v7, 0x4e, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v50, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v51, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v52, v32, v28, 0x5010400
	v_lshrrev_b32_e32 v55, 8, v50
	v_lshrrev_b32_e32 v56, 24, v50
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v53, v33, v29, 0x5010400
	v_perm_b32 v54, v33, v29, 0x7030602
	v_lshrrev_b32_e32 v57, 8, v30
	v_and_b16 v26.l, 0xff, v50.l
	v_and_b16 v26.h, 0xff, v50.h
	v_lshrrev_b32_e32 v66, 24, v30
	v_lshlrev_b16 v50.l, 8, v55.l
	v_lshlrev_b16 v50.h, 8, v56.l
	v_lshrrev_b32_e32 v67, 8, v51
	v_lshrrev_b32_e32 v68, 24, v51
	v_lshrrev_b32_e32 v69, 8, v31
	v_lshrrev_b32_e32 v70, 24, v31
	v_lshrrev_b32_e32 v71, 8, v52
	v_lshrrev_b32_e32 v72, 24, v52
	v_lshrrev_b32_e32 v73, 8, v32
	v_lshrrev_b32_e32 v74, 24, v32
	v_lshrrev_b32_e32 v75, 8, v53
	v_lshrrev_b32_e32 v89, 24, v53
	v_lshrrev_b32_e32 v90, 8, v54
	v_lshrrev_b32_e32 v91, 24, v54
	v_and_b16 v27.l, 0xff, v30.l
	v_and_b16 v28.l, 0xff, v51.l
	v_lshlrev_b16 v51.l, 8, v57.l
	v_and_b16 v27.h, 0xff, v30.h
	v_and_b16 v28.h, 0xff, v51.h
	v_lshlrev_b16 v51.h, 8, v66.l
	v_or_b16 v26.l, v26.l, v50.l
	v_or_b16 v26.h, v26.h, v50.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v50, v38, v34, 0x5010400
	v_and_b16 v29.l, 0xff, v31.l
	v_and_b16 v29.h, 0xff, v31.h
	v_and_b16 v30.l, 0xff, v52.l
	v_and_b16 v30.h, 0xff, v52.h
	v_and_b16 v31.l, 0xff, v32.l
	v_and_b16 v31.h, 0xff, v32.h
	v_and_b16 v32.l, 0xff, v53.l
	v_and_b16 v32.h, 0xff, v53.h
	v_and_b16 v33.l, 0xff, v54.l
	v_and_b16 v33.h, 0xff, v54.h
	v_lshlrev_b16 v52.l, 8, v67.l
	v_lshlrev_b16 v52.h, 8, v68.l
	v_lshlrev_b16 v53.l, 8, v69.l
	v_lshlrev_b16 v53.h, 8, v70.l
	v_lshlrev_b16 v54.l, 8, v71.l
	v_lshlrev_b16 v54.h, 8, v72.l
	v_lshlrev_b16 v55.l, 8, v73.l
	v_lshlrev_b16 v55.h, 8, v74.l
	v_lshlrev_b16 v56.l, 8, v75.l
	v_lshlrev_b16 v56.h, 8, v89.l
	v_lshlrev_b16 v57.l, 8, v90.l
	v_lshlrev_b16 v57.h, 8, v91.l
	v_perm_b32 v34, v38, v34, 0x7030602
	v_or_b16 v27.l, v27.l, v51.l
	v_perm_b32 v38, v39, v35, 0x5010400
	v_perm_b32 v35, v39, v35, 0x7030602
	v_perm_b32 v39, v40, v36, 0x5010400
	v_perm_b32 v36, v40, v36, 0x7030602
	v_perm_b32 v40, v41, v37, 0x5010400
	v_perm_b32 v37, v41, v37, 0x7030602
	v_or_b16 v27.h, v27.h, v51.h
	v_lshrrev_b32_e32 v41, 8, v50
	v_or_b16 v28.l, v28.l, v52.l
	v_or_b16 v28.h, v28.h, v52.h
	v_or_b16 v29.l, v29.l, v53.l
	v_or_b16 v29.h, v29.h, v53.h
	v_or_b16 v30.l, v30.l, v54.l
	v_or_b16 v30.h, v30.h, v54.h
	v_or_b16 v31.l, v31.l, v55.l
	v_or_b16 v31.h, v31.h, v55.h
	v_or_b16 v32.l, v32.l, v56.l
	v_or_b16 v32.h, v32.h, v56.h
	v_or_b16 v33.l, v33.l, v57.l
	v_or_b16 v33.h, v33.h, v57.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v58, v[42:45] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v26
	ds_store_b16_d16_hi v59, v26 offset:64
	ds_store_b16 v60, v27
	ds_store_b16_d16_hi v60, v27 offset:64
	ds_store_b16 v61, v28
	ds_store_b16_d16_hi v61, v28 offset:64
	ds_store_b16 v62, v29
	ds_store_b16_d16_hi v62, v29 offset:64
	ds_store_b16 v63, v30
	ds_store_b16_d16_hi v63, v30 offset:64
	ds_store_b16 v59, v31 offset:640
	ds_store_b16_d16_hi v59, v31 offset:704
	ds_store_b16 v64, v32
	ds_store_b16_d16_hi v64, v32 offset:64
	ds_store_b16 v65, v33
	ds_store_b16_d16_hi v65, v33 offset:64
	v_lshrrev_b32_e32 v42, 24, v50
	v_lshrrev_b32_e32 v43, 8, v34
	v_lshrrev_b32_e32 v44, 24, v34
	v_and_b16 v26.l, 0xff, v50.l
	v_and_b16 v26.h, 0xff, v50.h
	v_and_b16 v28.l, 0xff, v38.l
	v_lshrrev_b32_e32 v45, 8, v38
	v_lshrrev_b32_e32 v50, 24, v38
	v_and_b16 v28.h, 0xff, v38.h
	v_lshrrev_b32_e32 v38, 8, v35
	v_lshrrev_b32_e32 v51, 24, v35
	v_and_b16 v30.l, 0xff, v39.l
	v_lshrrev_b32_e32 v52, 8, v39
	v_lshrrev_b32_e32 v53, 24, v39
	v_and_b16 v30.h, 0xff, v39.h
	v_lshrrev_b32_e32 v39, 8, v36
	v_lshrrev_b32_e32 v54, 24, v36
	v_lshrrev_b32_e32 v55, 8, v40
	v_lshrrev_b32_e32 v56, 24, v40
	v_lshrrev_b32_e32 v57, 8, v37
	v_lshrrev_b32_e32 v66, 24, v37
	v_and_b16 v27.l, 0xff, v34.l
	v_lshlrev_b16 v34.l, 8, v41.l
	v_and_b16 v27.h, 0xff, v34.h
	v_lshlrev_b16 v34.h, 8, v42.l
	v_and_b16 v29.l, 0xff, v35.l
	v_lshlrev_b16 v35.l, 8, v43.l
	v_and_b16 v29.h, 0xff, v35.h
	v_lshlrev_b16 v35.h, 8, v44.l
	v_and_b16 v31.l, 0xff, v36.l
	v_and_b16 v31.h, 0xff, v36.h
	v_and_b16 v32.l, 0xff, v40.l
	v_and_b16 v32.h, 0xff, v40.h
	v_and_b16 v33.l, 0xff, v37.l
	v_and_b16 v33.h, 0xff, v37.h
	v_lshlrev_b16 v36.l, 8, v45.l
	v_lshlrev_b16 v36.h, 8, v50.l
	v_lshlrev_b16 v37.l, 8, v38.l
	v_lshlrev_b16 v37.h, 8, v51.l
	v_lshlrev_b16 v38.l, 8, v52.l
	v_lshlrev_b16 v38.h, 8, v53.l
	v_lshlrev_b16 v39.l, 8, v39.l
	v_lshlrev_b16 v39.h, 8, v54.l
	v_lshlrev_b16 v40.l, 8, v55.l
	v_lshlrev_b16 v40.h, 8, v56.l
	v_lshlrev_b16 v41.l, 8, v57.l
	v_lshlrev_b16 v41.h, 8, v66.l
	v_or_b16 v26.l, v26.l, v34.l
	v_or_b16 v26.h, v26.h, v34.h
	v_or_b16 v27.l, v27.l, v35.l
	v_or_b16 v27.h, v27.h, v35.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v28.l, v28.l, v36.l
	v_or_b16 v28.h, v28.h, v36.h
	v_or_b16 v29.l, v29.l, v37.l
	v_or_b16 v29.h, v29.h, v37.h
	v_or_b16 v30.l, v30.l, v38.l
	v_or_b16 v30.h, v30.h, v38.h
	v_or_b16 v31.l, v31.l, v39.l
	v_or_b16 v31.h, v31.h, v39.h
	v_or_b16 v32.l, v32.l, v40.l
	v_or_b16 v32.h, v32.h, v40.h
	v_or_b16 v33.l, v33.l, v41.l
	v_or_b16 v33.h, v33.h, v41.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[46:49] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v59, v26 offset:8192
	ds_store_b16_d16_hi v59, v26 offset:8256
	ds_store_b16 v60, v27 offset:8192
	ds_store_b16_d16_hi v60, v27 offset:8256
	ds_store_b16 v61, v28 offset:8192
	ds_store_b16_d16_hi v61, v28 offset:8256
	ds_store_b16 v62, v29 offset:8192
	ds_store_b16_d16_hi v62, v29 offset:8256
	ds_store_b16 v63, v30 offset:8192
	ds_store_b16_d16_hi v63, v30 offset:8256
	ds_store_b16 v59, v31 offset:8832
	ds_store_b16_d16_hi v59, v31 offset:8896
	ds_store_b16 v64, v32 offset:8192
	ds_store_b16_d16_hi v64, v32 offset:8256
	ds_store_b16 v65, v33 offset:8192
	ds_store_b16_d16_hi v65, v33 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v91, 8, v0
	v_and_b32_e32 v92, 32, v0
	v_and_b32_e32 v89, 0x800, v2
	v_lshl_or_b32 v90, v1, 6, v3
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
.LBB0_3:                                ; %Flow39
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v26, s27, v76
	v_or_b32_e32 v20, s27, v20
	s_ashr_i32 s1, s5, 7
	v_cmp_eq_u32_e64 s0, 0, v25
	v_or_b32_e32 v73, s26, v4
	v_mul_lo_u32 v74, v26, s1
	v_mul_lo_u32 v75, v20, s1
	v_or_b32_e32 v72, s26, v8
	v_or_b32_e32 v71, s26, v9
	v_or_b32_e32 v70, s26, v10
	v_or_b32_e32 v69, s26, v11
	v_or_b32_e32 v68, s26, v12
	v_or_b32_e32 v67, s26, v13
	v_or_b32_e32 v66, s26, v14
	v_or_b32_e32 v65, s26, v15
	v_or_b32_e32 v64, s26, v16
	v_or_b32_e32 v63, s26, v17
	v_or_b32_e32 v61, s26, v18
	v_or_b32_e32 v59, s26, v19
	v_or_b32_e32 v62, s26, v5
	v_or_b32_e32 v60, s26, v6
	v_or_b32_e32 v58, s26, v7
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 0x420, v4
	v_lshl_or_b32 v90, v1, 6, v3
	v_and_b32_e32 v89, 0x800, v2
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v91, s35, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v5, v4
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_xor_b32_e32 v1, v1, v90
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v92, v1, v89
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_xor_b32_e32 v93, 16, v92
	v_xor_b32_e32 v94, 32, v92
	v_xor_b32_e32 v95, 48, v92
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v57, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s15, s1, 3
	s_add_i32 s14, s33, 0x80
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s47, 0, 0x4000
	s_add_i32 s45, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s15, s15, -3
	s_mov_b32 s46, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 7
	s_mov_b32 s18, s16
	s_mov_b32 s16, s30
	s_mov_b32 s30, s33
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s33, s14, s19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v144, s47, v76
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s33, v77
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s33, s34, v[21:22]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v96, s18, v92
	v_add_nc_u32_e32 v97, s18, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	s_mov_b32 s47, s45
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v13, v144 offset:832
	ds_load_u8 v14, v144 offset:768
	ds_load_u8 v15, v144 offset:960
	ds_load_u8 v16, v144 offset:896
	ds_load_u8 v17, v144 offset:576
	ds_load_u8 v18, v144 offset:512
	ds_load_u8 v19, v144 offset:704
	ds_load_u8 v20, v144 offset:640
	ds_load_u8 v98, v144 offset:320
	ds_load_u8 v99, v144 offset:256
	ds_load_u8 v100, v144 offset:448
	ds_load_u8 v101, v144 offset:384
	ds_load_u8 v102, v144 offset:64
	ds_load_u8 v103, v144
	ds_load_u8 v104, v144 offset:192
	ds_load_u8 v105, v144 offset:128
	ds_load_u8 v106, v144 offset:1856
	ds_load_u8 v107, v144 offset:1792
	ds_load_u8 v108, v144 offset:1984
	ds_load_u8 v109, v144 offset:1920
	ds_load_u8 v110, v144 offset:1600
	ds_load_u8 v111, v144 offset:1536
	ds_load_u8 v112, v144 offset:1728
	ds_load_u8 v113, v144 offset:1664
	ds_load_u8 v114, v144 offset:1344
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v144 offset:1280
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v144 offset:1472
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v144 offset:1408
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v144 offset:1088
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v144 offset:1216
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v144 offset:1152
	ds_load_u8 v99, v144 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v117, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v118, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v120, v111, v110, 0xc0c0004
	v_perm_b32 v116, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v121, v113, v112, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[104:107], v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v119, v118, 16, v117
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v14, v14, v114, 0xc0c0004
	v_lshl_or_b32 v111, v15, 16, v13
	v_lshl_or_b32 v118, v121, 16, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[120:123], v96 offset:4096
	ds_load_b128 v[124:127], v97 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	v_lshl_or_b32 v110, v19, 16, v17
	v_lshl_or_b32 v109, v100, 16, v98
	v_lshl_or_b32 v108, v116, 16, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v117, v16, 16, v14
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v103, v101, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v99, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v13, 16, v18
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[104:107], v[108:111], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[120:123], v[108:111], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v108, v144 offset:864
	ds_load_u8 v109, v144 offset:800
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[124:127], v[116:119], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[112:115], v[116:119], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v144 offset:992
	ds_load_u8 v110, v144 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v144 offset:608
	ds_load_u8 v111, v144 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v144 offset:736
	ds_load_u8 v116, v144 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v111, 0xc0c0004
	v_lshl_or_b32 v111, v109, 16, v108
	ds_load_u8 v108, v144 offset:352
	ds_load_u8 v109, v144 offset:288
	v_lshl_or_b32 v110, v116, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v144 offset:480
	ds_load_u8 v116, v144 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v116, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v109, 16, v108
	ds_load_u8 v108, v144 offset:32
	ds_load_u8 v116, v144 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v116, 0xc0c0004
	ds_load_u8 v116, v144 offset:224
	ds_load_u8 v117, v144 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v116, 16, v108
	ds_load_u8 v116, v144 offset:1888
	ds_load_u8 v117, v144 offset:1824
	v_wmma_i32_16x16x16_iu8 v[136:143], v[120:123], v[108:111], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v144 offset:2016
	ds_load_u8 v118, v144 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v144 offset:1632
	ds_load_u8 v119, v144 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v144 offset:1760
	ds_load_u8 v128, v144 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v128, v119, 0xc0c0004
	v_lshl_or_b32 v119, v117, 16, v116
	ds_load_u8 v116, v144 offset:1376
	ds_load_u8 v117, v144 offset:1312
	v_lshl_or_b32 v118, v128, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v144 offset:1504
	ds_load_u8 v128, v144 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v128, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v117, 16, v116
	ds_load_u8 v116, v144 offset:1120
	ds_load_u8 v128, v144 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v128, v116, 0xc0c0004
	ds_load_u8 v128, v144 offset:1248
	ds_load_u8 v129, v144 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v128, 16, v116
	v_wmma_i32_16x16x16_iu8 v[128:135], v[104:107], v[108:111], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:2880
	ds_load_u8 v105, v144 offset:2816
	v_wmma_i32_16x16x16_iu8 v[136:143], v[124:127], v[116:119], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[112:115], v[116:119], v[128:135] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s18, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3008
	ds_load_u8 v106, v144 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:2624
	ds_load_u8 v107, v144 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:2752
	ds_load_u8 v108, v144 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:2368
	ds_load_u8 v105, v144 offset:2304
	v_lshl_or_b32 v106, v108, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:2496
	ds_load_u8 v108, v144 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v108, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:2112
	ds_load_u8 v108, v144 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v108, v104, 0xc0c0004
	ds_load_u8 v108, v144 offset:2240
	ds_load_u8 v109, v144 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v108, 16, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v112
	ds_load_b128 v[112:115], v112 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[108:111], v[104:107], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[112:115], v[104:107], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:2912
	ds_load_u8 v105, v144 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3040
	ds_load_u8 v106, v144 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:2656
	ds_load_u8 v107, v144 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:2784
	ds_load_u8 v116, v144 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:2400
	ds_load_u8 v105, v144 offset:2336
	v_lshl_or_b32 v106, v116, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:2528
	ds_load_u8 v116, v144 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v116, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:2144
	ds_load_u8 v116, v144 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v116, v104, 0xc0c0004
	ds_load_u8 v116, v144 offset:2272
	ds_load_u8 v117, v144 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v104, v116, 16, v104
	v_wmma_i32_16x16x16_iu8 v[128:135], v[108:111], v[104:107], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[112:115], v[104:107], v[136:143] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:3904
	ds_load_u8 v105, v144 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s18, v95
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s33, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, s26
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:4032
	ds_load_u8 v106, v144 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:3648
	ds_load_u8 v107, v144 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:3776
	ds_load_u8 v108, v144 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:3392
	ds_load_u8 v105, v144 offset:3328
	v_lshl_or_b32 v106, v108, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3520
	ds_load_u8 v108, v144 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v108, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:3136
	ds_load_u8 v108, v144 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v108, v104, 0xc0c0004
	ds_load_u8 v108, v144 offset:3264
	ds_load_u8 v109, v144 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v108, 16, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v112
	ds_load_b128 v[112:115], v112 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[108:111], v[104:107], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[112:115], v[104:107], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v104, v144 offset:3936
	ds_load_u8 v105, v144 offset:3872
	v_cvt_f32_i32_e32 v127, v13
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s33, v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v14
	v_cvt_f32_i32_e32 v120, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s18, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v17
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s18, v79
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s16, 31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v16
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s16, s16, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s16, 7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v18
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:4064
	ds_load_u8 v106, v144 offset:4000
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v121, v19
	v_cvt_f32_i32_e32 v119, v96
	v_cvt_f32_i32_e32 v118, v97
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v145, v58, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:3680
	ds_load_u8 v107, v144 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:3808
	ds_load_u8 v116, v144 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v107, 0xc0c0004
	v_lshl_or_b32 v107, v105, 16, v104
	ds_load_u8 v104, v144 offset:3424
	ds_load_u8 v105, v144 offset:3360
	v_lshl_or_b32 v106, v116, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v144 offset:3552
	ds_load_u8 v116, v144 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v116, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v144 offset:3168
	ds_load_u8 v116, v144 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v116, v104, 0xc0c0004
	ds_load_u8 v116, v144 offset:3296
	ds_load_u8 v117, v144 offset:3232
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v144, v60, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_cvt_f32_i32_e32 v117, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v104, v116, 16, v104
	v_cvt_f32_i32_e32 v116, v99
	v_wmma_i32_16x16x16_iu8 v[128:135], v[108:111], v[104:107], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[112:115], v[104:107], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v115, v100
	v_cvt_f32_i32_e32 v114, v101
	v_cvt_f32_i32_e32 v113, v102
	v_cvt_f32_i32_e32 v107, v132
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v132, v71, s18, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v17, 0x80000000, v14, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v128
	v_cvt_f32_i32_e32 v110, v129
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v109, v130
	v_cvt_f32_i32_e32 v105, v134
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v134, v69, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v131
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v131, v72, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v133
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v133, v70, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v103
	v_cvt_f32_i32_e32 v104, v135
	v_cvt_f32_i32_e32 v103, v136
	v_cvt_f32_i32_e32 v102, v137
	v_cvt_f32_i32_e32 v101, v138
	v_cvt_f32_i32_e32 v100, v139
	v_cvt_f32_i32_e32 v99, v140
	v_cvt_f32_i32_e32 v98, v141
	v_cvt_f32_i32_e32 v97, v142
	v_cvt_f32_i32_e32 v96, v143
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v135, v68, s18, 1
	v_add_lshl_u32 v136, v67, s18, 1
	v_add_lshl_u32 v137, v66, s18, 1
	v_add_lshl_u32 v138, v65, s18, 1
	v_add_lshl_u32 v139, v64, s18, 1
	v_add_lshl_u32 v140, v63, s18, 1
	v_add_lshl_u32 v141, v61, s18, 1
	v_add_lshl_u32 v142, v59, s18, 1
	v_add_lshl_u32 v143, v62, s18, 1
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v136, 0x80000000, v136
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_cndmask_b32_e32 v145, 0x80000000, v145, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s46, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v134, 0x80000000, v134, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s19, 2
	s_cselect_b32 s46, s19, 0
	s_add_i32 s20, s17, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v17, v13, 0x5010400
	v_perm_b32 v129, v17, v13, 0x7030602
	v_perm_b32 v128, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v14, v20, v16, 0x5010400
	v_perm_b32 v13, v20, v16, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v74, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v17, v19, v15, 0x5010400
	v_perm_b32 v15, v19, v15, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v75, s16, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v20, v73, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s46, 12
	s_mov_b32 s16, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x1
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0xf
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v131, v131, s[40:43], 0 offen
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	buffer_load_u16 v133, v133, s[40:43], 0 offen
	buffer_load_u16 v134, v134, s[40:43], 0 offen
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
	buffer_load_u16 v145, v145, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s19, s18, 0
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v146, s19, v22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s19, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s45, s19, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v146, v[9:12] offset:16384
	s_mov_b32 s17, s20
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v10, 16, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v9, 16, v16
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v9, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v26, v11, v127
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v11, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v9, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v27, v12, v126 :: v_dual_lshlrev_b32 v12, 16, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v9, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v28, v16, v125
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v16, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v9, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v29, v20, v124 :: v_dual_lshlrev_b32 v20, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v30, v124, v123
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v123, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v31, v124, v122 :: v_dual_lshlrev_b32 v122, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v124, v121
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v121, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v33, v124, v120 :: v_dual_lshlrev_b32 v120, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v34, v124, v119
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v119, 16, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v35, v124, v118 :: v_dual_lshlrev_b32 v118, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v36, v124, v117
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v117, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v37, v124, v116 :: v_dual_lshlrev_b32 v116, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v38, v124, v115
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v115, 16, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v39, v124, v114 :: v_dual_lshlrev_b32 v114, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v9, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v40, v124, v113
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v113, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v41, v9, v112
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v9, v111
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v11
	v_mul_f32_e32 v11, v19, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v111, 24, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v43, v9, v110
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v53, v11, v101
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v101, 8, v129
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v11, v19, v117 :: v_dual_add_nc_u32 v110, s44, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v44, v9, v109 :: v_dual_mul_f32 v9, v19, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v16, v19, v115 :: v_dual_add_nc_u32 v109, s44, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v54, v11, v100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v100, 8, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v45, v9, v108
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v20
	v_mul_f32_e32 v12, v19, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v20, 8, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v56, v16, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v98, 8, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v9, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v123
	v_mul_f32_e32 v16, v19, v114
	v_mul_f32_e32 v10, v19, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v55, v12, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.l, 0xff, v18.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v47, v9, v106
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v122
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.h, 0xff, v18.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v57, v16, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v18, 8, v17
	v_lshrrev_b32_e32 v97, 24, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v48, v9, v105
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v9, v19, v121 :: v_dual_add_nc_u32 v106, s44, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v16.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v20.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v52, v10, v102 :: v_dual_fmac_f32 v49, v9, v104
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v108, s44, v84
	v_add_nc_u32_e32 v104, s44, v87
	v_and_b16 v10.l, 0xff, v129.l
	v_lshrrev_b32_e32 v102, 24, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v51, v9, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v130.l
	v_lshrrev_b32_e32 v103, 24, v129
	v_and_b16 v10.h, 0xff, v129.h
	v_lshrrev_b32_e32 v99, 24, v128
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v19, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v17.h
	v_lshlrev_b16 v17.h, 8, v101.l
	v_and_b16 v9.h, 0xff, v130.h
	v_and_b16 v11.h, 0xff, v128.h
	v_and_b16 v16.l, 0xff, v17.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v50, v19, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v10.l, v17.h
	v_lshlrev_b16 v17.h, 8, v103.l
	v_and_b16 v17.l, 0xff, v15.l
	v_lshrrev_b32_e32 v19, 8, v15
	v_lshrrev_b32_e32 v20, 24, v15
	v_and_b16 v15.l, 0xff, v15.h
	v_lshlrev_b16 v15.h, 8, v102.l
	v_or_b16 v10.h, v10.h, v17.h
	v_lshlrev_b16 v17.h, 8, v99.l
	v_and_b16 v11.l, 0xff, v128.l
	v_lshrrev_b32_e32 v96, 8, v14
	v_or_b16 v9.h, v9.h, v15.h
	v_and_b16 v15.h, 0xff, v14.l
	v_lshrrev_b32_e32 v101, 24, v14
	v_and_b16 v14.l, 0xff, v14.h
	v_lshlrev_b16 v14.h, 8, v100.l
	v_or_b16 v11.h, v11.h, v17.h
	v_lshrrev_b32_e32 v99, 8, v13
	v_lshlrev_b16 v17.h, 8, v98.l
	v_lshrrev_b32_e32 v98, 24, v13
	v_add_nc_u32_e32 v107, s44, v82
	v_or_b16 v11.l, v11.l, v14.h
	v_and_b16 v14.h, 0xff, v13.l
	v_or_b16 v12.l, v12.l, v17.h
	v_and_b16 v13.l, 0xff, v13.h
	v_lshlrev_b16 v13.h, 8, v111.l
	v_lshlrev_b16 v17.h, 8, v18.l
	v_lshlrev_b16 v18.l, 8, v97.l
	v_lshlrev_b16 v18.h, 8, v19.l
	v_lshlrev_b16 v19.l, 8, v20.l
	v_lshlrev_b16 v19.h, 8, v96.l
	v_lshlrev_b16 v20.l, 8, v101.l
	v_lshlrev_b16 v20.h, 8, v99.l
	v_lshlrev_b16 v96.l, 8, v98.l
	v_add_nc_u32_e32 v105, s44, v85
	v_or_b16 v12.h, v12.h, v13.h
	v_or_b16 v13.h, v16.l, v17.h
	v_or_b16 v16.l, v16.h, v18.l
	v_or_b16 v16.h, v17.l, v18.h
	v_or_b16 v15.l, v15.l, v19.l
	v_or_b16 v15.h, v15.h, v19.h
	v_or_b16 v14.l, v14.l, v20.l
	v_or_b16 v14.h, v14.h, v20.h
	v_or_b16 v13.l, v13.l, v96.l
	ds_store_b16 v107, v9
	ds_store_b16_d16_hi v107, v9 offset:64
	ds_store_b16 v106, v10
	ds_store_b16_d16_hi v106, v10 offset:64
	ds_store_b16 v108, v11
	ds_store_b16_d16_hi v108, v11 offset:64
	ds_store_b16 v105, v12
	ds_store_b16_d16_hi v105, v12 offset:64
	ds_store_b16_d16_hi v109, v13
	ds_store_b16 v109, v16 offset:64
	ds_store_b16_d16_hi v107, v16 offset:640
	ds_store_b16 v107, v15 offset:704
	ds_store_b16_d16_hi v104, v15
	ds_store_b16 v104, v14 offset:64
	ds_store_b16_d16_hi v110, v14
	ds_store_b16 v110, v13 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v91, v80 :: v_dual_mov_b32 v92, v81
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_add_i32 s47, 0, 0x4000
	s_add_i32 s45, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v91
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_xor_b32_e32 v6, v2, v90
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v107, v6, v89
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_xor_b32_e32 v108, 16, v107
	v_xor_b32_e32 v109, 32, v107
	v_xor_b32_e32 v110, 48, v107
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v87, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s16, v110
	v_add_nc_u32_e32 v10, s16, v109
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v89, s47, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[18:21], v10 offset:4096
	ds_load_b128 v[77:80], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v10, v89 offset:832
	ds_load_u8 v11, v89 offset:768
	ds_load_u8 v12, v89 offset:960
	ds_load_u8 v13, v89 offset:896
	ds_load_u8 v16, v89 offset:576
	ds_load_u8 v17, v89 offset:512
	ds_load_u8 v81, v89 offset:704
	ds_load_u8 v82, v89 offset:640
	ds_load_u8 v83, v89 offset:320
	ds_load_u8 v84, v89 offset:256
	ds_load_u8 v85, v89 offset:448
	ds_load_u8 v86, v89 offset:384
	ds_load_u8 v87, v89 offset:64
	ds_load_u8 v88, v89
	ds_load_u8 v90, v89 offset:192
	ds_load_u8 v91, v89 offset:128
	ds_load_u8 v105, v89 offset:992
	ds_load_u8 v106, v89 offset:928
	ds_load_u8 v131, v89 offset:864
	ds_load_u8 v132, v89 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v14, s16, v108
	v_add_nc_u32_e32 v15, s16, v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v91, v90, 0xc0c0004
	v_perm_b32 v12, v17, v16, 0xc0c0004
	v_perm_b32 v16, v84, v83, 0xc0c0004
	v_perm_b32 v17, v86, v85, 0xc0c0004
	v_lshl_or_b32 v100, v11, 16, v10
	v_lshl_or_b32 v97, v82, 16, v81
	v_mov_b32_e32 v88, s11
	ds_load_u8 v90, v89 offset:1856
	ds_load_u8 v91, v89 offset:1792
	v_mov_b32_e32 v83, s6
	ds_load_u8 v92, v89 offset:1984
	ds_load_u8 v93, v89 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[119:122], v14 offset:4096
	ds_load_b128 v[123:126], v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v94, v89 offset:1600
	ds_load_u8 v95, v89 offset:1536
	ds_load_u8 v96, v89 offset:1728
	ds_load_u8 v101, v89 offset:1664
	ds_load_u8 v102, v89 offset:1344
	ds_load_u8 v103, v89 offset:1280
	ds_load_u8 v104, v89 offset:1472
	ds_load_u8 v127, v89 offset:1408
	ds_load_u8 v146, v89 offset:2016
	ds_load_u8 v147, v89 offset:1952
	ds_load_u8 v148, v89 offset:1888
	ds_load_u8 v149, v89 offset:1824
	ds_load_u8 v133, v89 offset:736
	ds_load_u8 v135, v89 offset:672
	ds_load_u8 v136, v89 offset:608
	ds_load_u8 v137, v89 offset:544
	ds_load_u8 v138, v89 offset:480
	ds_load_u8 v139, v89 offset:416
	ds_load_u8 v140, v89 offset:352
	ds_load_u8 v141, v89 offset:288
	ds_load_u8 v142, v89 offset:224
	ds_load_u8 v143, v89 offset:160
	ds_load_u8 v144, v89 offset:96
	ds_load_u8 v145, v89 offset:32
	v_mov_b32_e32 v86, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v15 offset:4096
	ds_load_b128 v[115:118], v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v154, v89 offset:1504
	ds_load_u8 v155, v89 offset:1440
	ds_load_u8 v156, v89 offset:1376
	ds_load_u8 v157, v89 offset:1312
	ds_load_u8 v158, v89 offset:1248
	ds_load_u8 v159, v89 offset:1184
	ds_load_u8 v160, v89 offset:1120
	ds_load_u8 v161, v89 offset:1056
	ds_load_u8 v172, v89 offset:2528
	ds_load_u8 v173, v89 offset:2464
	ds_load_u8 v174, v89 offset:2400
	ds_load_u8 v175, v89 offset:2336
	ds_load_u8 v176, v89 offset:2272
	ds_load_u8 v177, v89 offset:2208
	ds_load_u8 v178, v89 offset:2144
	ds_load_u8 v179, v89 offset:2080
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_lshl_or_b32 v99, v13, 16, v12
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v95, v101, v96, 0xc0c0004
	v_lshl_or_b32 v98, v17, 16, v16
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v96, v103, v102, 0xc0c0004
	v_mov_b32_e32 v87, s10
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v101, v127, v104, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v89 offset:1088
	ds_load_u8 v128, v89 offset:1024
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v89 offset:1216
	ds_load_u8 v129, v89 offset:1152
	ds_load_u8 v150, v89 offset:1760
	ds_load_u8 v151, v89 offset:1696
	ds_load_u8 v152, v89 offset:1632
	ds_load_u8 v153, v89 offset:1568
	v_lshl_or_b32 v103, v95, 16, v94
	v_lshl_or_b32 v102, v101, 16, v96
	v_mov_b32_e32 v85, s8
	v_lshl_or_b32 v104, v92, 16, v90
	v_dual_mov_b32 v84, s7 :: v_dual_mov_b32 v81, s4
	v_mov_b32_e32 v82, s5
	ds_load_u8 v189, v89 offset:3808
	ds_load_u8 v190, v89 offset:3744
	ds_load_u8 v191, v89 offset:3680
	ds_load_u8 v192, v89 offset:3616
	ds_load_u8 v195, v89 offset:3552
	ds_load_u8 v196, v89 offset:3488
	ds_load_u8 v197, v89 offset:3424
	ds_load_u8 v198, v89 offset:3360
	s_waitcnt lgkmcnt(32)
	v_wmma_i32_16x16x16_iu8 v[10:17], v[115:118], v[97:100], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v129, v93, 0xc0c0004
	ds_load_u8 v129, v89 offset:3008
	ds_load_u8 v130, v89 offset:2944
	v_perm_b32 v91, v128, v91, 0xc0c0004
	ds_load_u8 v127, v89 offset:2880
	ds_load_u8 v128, v89 offset:2816
	v_lshl_or_b32 v101, v93, 16, v91
	ds_load_u8 v90, v89 offset:2624
	ds_load_u8 v91, v89 offset:2560
	ds_load_u8 v92, v89 offset:2752
	ds_load_u8 v93, v89 offset:2688
	ds_load_u8 v94, v89 offset:2368
	ds_load_u8 v95, v89 offset:2304
	ds_load_u8 v96, v89 offset:2496
	ds_load_u8 v134, v89 offset:2432
	ds_load_u8 v162, v89 offset:3040
	ds_load_u8 v163, v89 offset:2976
	ds_load_u8 v164, v89 offset:2912
	ds_load_u8 v165, v89 offset:2848
	v_wmma_i32_16x16x16_iu8 v[10:17], v[123:126], v[101:104], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v93, v92, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v89 offset:2240
	ds_load_u8 v167, v89 offset:2176
	ds_load_u8 v168, v89 offset:2784
	ds_load_u8 v169, v89 offset:2720
	ds_load_u8 v170, v89 offset:2656
	ds_load_u8 v171, v89 offset:2592
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v89 offset:2112
	ds_load_u8 v166, v89 offset:2048
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v134, v96, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v167, v130, 0xc0c0004
	v_lshl_or_b32 v130, v129, 16, v127
	v_lshl_or_b32 v129, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v166, v128, 0xc0c0004
	ds_load_u8 v95, v89 offset:3904
	ds_load_u8 v96, v89 offset:3840
	ds_load_u8 v134, v89 offset:4032
	ds_load_u8 v166, v89 offset:3968
	v_lshl_or_b32 v128, v93, 16, v92
	v_lshl_or_b32 v127, v167, 16, v94
	ds_load_u8 v90, v89 offset:3648
	ds_load_u8 v91, v89 offset:3584
	ds_load_u8 v92, v89 offset:3776
	ds_load_u8 v93, v89 offset:3712
	ds_load_u8 v94, v89 offset:3392
	ds_load_u8 v167, v89 offset:3328
	ds_load_u8 v180, v89 offset:3520
	ds_load_u8 v181, v89 offset:3456
	ds_load_u8 v182, v89 offset:4064
	ds_load_u8 v183, v89 offset:4000
	ds_load_u8 v184, v89 offset:3936
	ds_load_u8 v185, v89 offset:3872
	v_wmma_i32_16x16x16_iu8 v[10:17], v[77:80], v[127:130], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v193, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v194, v93, v92, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v167, v94, 0xc0c0004
	v_perm_b32 v96, v166, v134, 0xc0c0004
	ds_load_u8 v166, v89 offset:3136
	ds_load_u8 v186, v89 offset:3072
	ds_load_u8 v187, v89 offset:3264
	ds_load_u8 v188, v89 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v89 offset:3296
	ds_load_u8 v199, v89 offset:3232
	ds_load_u8 v200, v89 offset:3168
	ds_load_u8 v201, v89 offset:3104
	v_lshl_or_b32 v134, v96, 16, v95
	v_wmma_i32_16x16x16_iu8 v[89:96], v[111:114], v[97:100], v[81:88] neg_lo:[1,1,0]
	v_perm_b32 v97, v132, v131, 0xc0c0004
	v_perm_b32 v98, v106, v105, 0xc0c0004
	v_perm_b32 v99, v137, v136, 0xc0c0004
	v_perm_b32 v100, v135, v133, 0xc0c0004
	v_perm_b32 v105, v141, v140, 0xc0c0004
	v_perm_b32 v106, v139, v138, 0xc0c0004
	v_perm_b32 v131, v145, v144, 0xc0c0004
	v_perm_b32 v132, v143, v142, 0xc0c0004
	v_lshl_or_b32 v138, v98, 16, v97
	v_lshl_or_b32 v137, v100, 16, v99
	v_lshl_or_b32 v136, v106, 16, v105
	v_perm_b32 v105, v149, v148, 0xc0c0004
	v_lshl_or_b32 v135, v132, 16, v131
	v_perm_b32 v106, v147, v146, 0xc0c0004
	v_perm_b32 v131, v153, v152, 0xc0c0004
	v_perm_b32 v132, v151, v150, 0xc0c0004
	v_perm_b32 v133, v157, v156, 0xc0c0004
	v_perm_b32 v139, v155, v154, 0xc0c0004
	v_perm_b32 v140, v161, v160, 0xc0c0004
	v_perm_b32 v141, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[89:96], v[119:122], v[101:104], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[115:118], v[135:138], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v118, v106, 16, v105
	v_lshl_or_b32 v117, v132, 16, v131
	v_lshl_or_b32 v116, v139, 16, v133
	v_lshl_or_b32 v115, v141, 16, v140
	v_perm_b32 v105, v165, v164, 0xc0c0004
	v_perm_b32 v106, v163, v162, 0xc0c0004
	v_perm_b32 v131, v171, v170, 0xc0c0004
	v_perm_b32 v132, v169, v168, 0xc0c0004
	v_perm_b32 v133, v175, v174, 0xc0c0004
	v_perm_b32 v139, v173, v172, 0xc0c0004
	v_perm_b32 v140, v179, v178, 0xc0c0004
	v_perm_b32 v141, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[97:104], v[123:126], v[115:118], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v106, 16, v105
	v_lshl_or_b32 v125, v132, 16, v131
	v_lshl_or_b32 v124, v139, 16, v133
	v_lshl_or_b32 v123, v141, 16, v140
	v_wmma_i32_16x16x16_iu8 v[81:88], v[111:114], v[135:138], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v186, v166, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v186, v188, v187, 0xc0c0004
	v_perm_b32 v105, v190, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[97:104], v[77:80], v[123:126], v[97:104] neg_lo:[1,1,0]
	v_perm_b32 v77, v185, v184, 0xc0c0004
	v_perm_b32 v78, v183, v182, 0xc0c0004
	v_perm_b32 v79, v192, v191, 0xc0c0004
	v_perm_b32 v106, v198, v197, 0xc0c0004
	v_perm_b32 v111, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v201, v200, 0xc0c0004
	v_perm_b32 v113, v199, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[119:122], v[115:118], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v194, 16, v193
	v_lshl_or_b32 v132, v180, 16, v167
	v_lshl_or_b32 v131, v186, 16, v166
	v_wmma_i32_16x16x16_iu8 v[89:96], v[18:21], v[127:130], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v78, 16, v77
	v_lshl_or_b32 v79, v105, 16, v79
	v_lshl_or_b32 v78, v111, 16, v106
	v_lshl_or_b32 v77, v113, 16, v112
	v_wmma_i32_16x16x16_iu8 v[81:88], v[18:21], v[123:126], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[6:9], v[131:134], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[2:5], v[131:134], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[6:9], v[77:80], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[2:5], v[77:80], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v11
	v_cvt_f32_i32_e32 v3, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v5, v14
	v_cvt_f32_i32_e32 v6, v15
	v_cvt_f32_i32_e32 v7, v16
	v_cvt_f32_i32_e32 v8, v17
	v_cvt_f32_i32_e32 v9, v89
	v_cvt_f32_i32_e32 v11, v90
	v_cvt_f32_i32_e32 v12, v91
	v_cvt_f32_i32_e32 v13, v92
	v_cvt_f32_i32_e32 v14, v93
	v_cvt_f32_i32_e32 v15, v94
	v_cvt_f32_i32_e32 v16, v95
	v_cvt_f32_i32_e32 v17, v96
	v_cvt_f32_i32_e32 v18, v97
	v_cvt_f32_i32_e32 v19, v98
	v_cvt_f32_i32_e32 v20, v99
	v_cvt_f32_i32_e32 v21, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v10, v10
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v89, v74, s4, 1
	v_add_lshl_u32 v90, v75, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v91, v73, s4, 1
	v_add_lshl_u32 v99, v65, s4, 1
	v_add_lshl_u32 v92, v72, s4, 1
	v_add_lshl_u32 v100, v64, s4, 1
	v_add_lshl_u32 v93, v71, s4, 1
	v_add_lshl_u32 v101, v63, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v94, v70, s4, 1
	v_add_lshl_u32 v102, v61, s4, 1
	v_add_lshl_u32 v95, v69, s4, 1
	v_add_lshl_u32 v96, v68, s4, 1
	v_add_lshl_u32 v97, v67, s4, 1
	v_add_lshl_u32 v98, v66, s4, 1
	v_add_lshl_u32 v103, v59, s4, 1
	v_add_lshl_u32 v104, v62, s4, 1
	v_add_lshl_u32 v105, v60, s4, 1
	v_add_lshl_u32 v106, v58, s4, 1
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	s_clause 0xf
	buffer_load_u16 v91, v91, s[28:31], 0 offen
	buffer_load_u16 v92, v92, s[28:31], 0 offen
	buffer_load_u16 v93, v93, s[28:31], 0 offen
	buffer_load_u16 v94, v94, s[28:31], 0 offen
	buffer_load_u16 v95, v95, s[28:31], 0 offen
	buffer_load_u16 v96, v96, s[28:31], 0 offen
	buffer_load_u16 v97, v97, s[28:31], 0 offen
	buffer_load_u16 v98, v98, s[28:31], 0 offen
	buffer_load_u16 v99, v99, s[28:31], 0 offen
	buffer_load_u16 v100, v100, s[28:31], 0 offen
	buffer_load_u16 v101, v101, s[28:31], 0 offen
	buffer_load_u16 v102, v102, s[28:31], 0 offen
	buffer_load_u16 v103, v103, s[28:31], 0 offen
	buffer_load_u16 v104, v104, s[28:31], 0 offen
	buffer_load_u16 v105, v105, s[28:31], 0 offen
	buffer_load_u16 v106, v106, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v89, v89, s[12:15], 0 offen
	buffer_load_u16 v90, v90, s[12:15], 0 offen
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v141, 0
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
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s44, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v141, s11 :: v_dual_add_nc_u32 v76, s45, v76
	v_dual_mov_b32 v138, s8 :: v_dual_add_nc_u32 v109, s44, v109
	v_dual_mov_b32 v134, s4 :: v_dual_add_nc_u32 v107, s44, v107
	v_mov_b32_e32 v140, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[142:145], v1 offset:4096
	ds_load_b128 v[146:149], v1
	ds_load_b128 v[150:153], v109 offset:4096
	ds_load_b128 v[154:157], v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v136, s6 :: v_dual_add_nc_u32 v1, s44, v108
	ds_load_u8 v108, v76 offset:832
	ds_load_u8 v109, v76 offset:768
	ds_load_u8 v110, v76 offset:960
	ds_load_u8 v111, v76 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[158:161], v107 offset:4096
	ds_load_b128 v[162:165], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v107, v76 offset:576
	ds_load_u8 v112, v76 offset:512
	ds_load_u8 v113, v76 offset:704
	ds_load_u8 v114, v76 offset:640
	ds_load_u8 v115, v76 offset:320
	ds_load_u8 v116, v76 offset:256
	ds_load_u8 v117, v76 offset:448
	ds_load_u8 v118, v76 offset:384
	ds_load_u8 v119, v76 offset:64
	ds_load_u8 v120, v76
	ds_load_u8 v121, v76 offset:192
	ds_load_u8 v122, v76 offset:128
	ds_load_u8 v178, v76 offset:992
	ds_load_u8 v179, v76 offset:928
	ds_load_u8 v180, v76 offset:864
	ds_load_u8 v182, v76 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	ds_load_u8 v183, v76 offset:736
	ds_load_u8 v184, v76 offset:672
	ds_load_u8 v185, v76 offset:608
	ds_load_u8 v186, v76 offset:544
	ds_load_u8 v187, v76 offset:480
	ds_load_u8 v188, v76 offset:416
	ds_load_u8 v189, v76 offset:352
	ds_load_u8 v190, v76 offset:288
	ds_load_u8 v191, v76 offset:224
	ds_load_u8 v192, v76 offset:160
	ds_load_u8 v193, v76 offset:96
	ds_load_u8 v194, v76 offset:32
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v107, v112, v107, 0xc0c0004
	v_lshl_or_b32 v129, v109, 16, v108
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v110, v114, v113, 0xc0c0004
	ds_load_u8 v203, v76 offset:1504
	ds_load_u8 v204, v76 offset:1440
	ds_load_u8 v205, v76 offset:1376
	ds_load_u8 v206, v76 offset:1312
	ds_load_u8 v207, v76 offset:1248
	ds_load_u8 v208, v76 offset:1184
	ds_load_u8 v209, v76 offset:1120
	ds_load_u8 v210, v76 offset:1056
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v111, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v112, v118, v117, 0xc0c0004
	v_lshl_or_b32 v128, v110, 16, v107
	ds_load_u8 v107, v76 offset:1856
	ds_load_u8 v108, v76 offset:1792
	ds_load_u8 v109, v76 offset:1984
	ds_load_u8 v118, v76 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[166:169], v1 offset:4096
	ds_load_b128 v[170:173], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v113, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v114, v122, v121, 0xc0c0004
	ds_load_u8 v1, v76 offset:1600
	ds_load_u8 v119, v76 offset:1536
	ds_load_u8 v120, v76 offset:1728
	ds_load_u8 v121, v76 offset:1664
	ds_load_u8 v122, v76 offset:1344
	ds_load_u8 v123, v76 offset:1280
	ds_load_u8 v124, v76 offset:1472
	ds_load_u8 v125, v76 offset:1408
	ds_load_u8 v195, v76 offset:2016
	ds_load_u8 v196, v76 offset:1952
	ds_load_u8 v197, v76 offset:1888
	ds_load_u8 v198, v76 offset:1824
	ds_load_u8 v221, v76 offset:2272
	ds_load_u8 v222, v76 offset:2208
	ds_load_u8 v223, v76 offset:2144
	ds_load_u8 v224, v76 offset:2080
	v_lshl_or_b32 v127, v112, 16, v111
	v_mov_b32_e32 v139, s9
	v_lshl_or_b32 v126, v114, 16, v113
	v_mov_b32_e32 v137, s7
	v_mov_b32_e32 v135, s5
	ds_load_u8 v233, v76 offset:3808
	ds_load_u8 v234, v76 offset:3744
	ds_load_u8 v235, v76 offset:3680
	ds_load_u8 v236, v76 offset:3616
	ds_load_u8 v237, v76 offset:3552
	ds_load_u8 v238, v76 offset:3488
	ds_load_u8 v239, v76 offset:3424
	ds_load_u8 v240, v76 offset:3360
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v1, v119, v1, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[162:165], v[126:129], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v120, v123, v122, 0xc0c0004
	ds_load_u8 v122, v76 offset:2880
	ds_load_u8 v123, v76 offset:2816
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v76 offset:1088
	ds_load_u8 v130, v76 offset:1024
	v_perm_b32 v109, v118, v109, 0xc0c0004
	ds_load_u8 v118, v76 offset:1216
	ds_load_u8 v131, v76 offset:1152
	ds_load_u8 v199, v76 offset:1760
	ds_load_u8 v200, v76 offset:1696
	ds_load_u8 v201, v76 offset:1632
	ds_load_u8 v202, v76 offset:1568
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v121, v125, v124, 0xc0c0004
	ds_load_u8 v124, v76 offset:3008
	ds_load_u8 v125, v76 offset:2944
	v_lshl_or_b32 v132, v119, 16, v1
	v_lshl_or_b32 v133, v109, 16, v107
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v108, v130, v108, 0xc0c0004
	ds_load_u8 v123, v76 offset:2112
	ds_load_u8 v174, v76 offset:2048
	v_lshl_or_b32 v131, v121, 16, v120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_lshl_or_b32 v130, v118, 16, v108
	ds_load_u8 v1, v76 offset:2624
	ds_load_u8 v107, v76 offset:2560
	ds_load_u8 v108, v76 offset:2752
	ds_load_u8 v109, v76 offset:2688
	ds_load_u8 v118, v76 offset:2368
	ds_load_u8 v119, v76 offset:2304
	ds_load_u8 v120, v76 offset:2496
	ds_load_u8 v121, v76 offset:2432
	ds_load_u8 v211, v76 offset:3040
	ds_load_u8 v212, v76 offset:2976
	ds_load_u8 v213, v76 offset:2912
	ds_load_u8 v214, v76 offset:2848
	ds_load_u8 v125, v76 offset:2240
	ds_load_u8 v175, v76 offset:2176
	ds_load_u8 v215, v76 offset:2784
	ds_load_u8 v216, v76 offset:2720
	ds_load_u8 v217, v76 offset:2656
	ds_load_u8 v218, v76 offset:2592
	v_lshl_or_b32 v177, v124, 16, v122
	v_wmma_i32_16x16x16_iu8 v[110:117], v[170:173], v[130:133], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v107, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v109, v108, 0xc0c0004
	ds_load_u8 v108, v76 offset:2528
	ds_load_u8 v109, v76 offset:2464
	ds_load_u8 v219, v76 offset:2400
	ds_load_u8 v220, v76 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	v_perm_b32 v120, v174, v123, 0xc0c0004
	ds_load_u8 v121, v76 offset:3904
	ds_load_u8 v123, v76 offset:3840
	ds_load_u8 v181, v76 offset:4032
	ds_load_u8 v225, v76 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v175, v125, 0xc0c0004
	v_lshl_or_b32 v176, v107, 16, v1
	v_lshl_or_b32 v175, v119, 16, v118
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v174, v125, 16, v120
	ds_load_u8 v1, v76 offset:3648
	ds_load_u8 v107, v76 offset:3584
	ds_load_u8 v118, v76 offset:3776
	ds_load_u8 v119, v76 offset:3712
	ds_load_u8 v120, v76 offset:3392
	ds_load_u8 v122, v76 offset:3328
	ds_load_u8 v124, v76 offset:3520
	ds_load_u8 v125, v76 offset:3456
	ds_load_u8 v226, v76 offset:4064
	ds_load_u8 v227, v76 offset:4000
	ds_load_u8 v228, v76 offset:3936
	ds_load_u8 v229, v76 offset:3872
	v_wmma_i32_16x16x16_iu8 v[110:117], v[154:157], v[174:177], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v107, v1, 0xc0c0004
	v_perm_b32 v121, v123, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v119, v118, 0xc0c0004
	v_perm_b32 v123, v225, v181, 0xc0c0004
	ds_load_u8 v225, v76 offset:3136
	ds_load_u8 v230, v76 offset:3072
	ds_load_u8 v231, v76 offset:3264
	ds_load_u8 v232, v76 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v241, v122, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v242, v125, v124, 0xc0c0004
	ds_load_u8 v243, v76 offset:3296
	ds_load_u8 v244, v76 offset:3232
	ds_load_u8 v245, v76 offset:3168
	ds_load_u8 v76, v76 offset:3104
	v_lshl_or_b32 v181, v123, 16, v121
	v_wmma_i32_16x16x16_iu8 v[118:125], v[158:161], v[126:129], v[134:141] neg_lo:[1,1,0]
	v_perm_b32 v126, v182, v180, 0xc0c0004
	v_perm_b32 v127, v179, v178, 0xc0c0004
	v_perm_b32 v128, v186, v185, 0xc0c0004
	v_perm_b32 v129, v184, v183, 0xc0c0004
	v_perm_b32 v178, v190, v189, 0xc0c0004
	v_perm_b32 v179, v188, v187, 0xc0c0004
	v_perm_b32 v180, v194, v193, 0xc0c0004
	v_perm_b32 v182, v192, v191, 0xc0c0004
	v_lshl_or_b32 v185, v127, 16, v126
	v_lshl_or_b32 v184, v129, 16, v128
	v_lshl_or_b32 v183, v179, 16, v178
	v_perm_b32 v178, v198, v197, 0xc0c0004
	v_lshl_or_b32 v182, v182, 16, v180
	v_perm_b32 v179, v196, v195, 0xc0c0004
	v_perm_b32 v180, v202, v201, 0xc0c0004
	v_perm_b32 v186, v200, v199, 0xc0c0004
	v_perm_b32 v187, v206, v205, 0xc0c0004
	v_perm_b32 v188, v204, v203, 0xc0c0004
	v_perm_b32 v189, v210, v209, 0xc0c0004
	v_perm_b32 v190, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[130:133], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[162:165], v[182:185], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v179, 16, v178
	v_lshl_or_b32 v164, v186, 16, v180
	v_lshl_or_b32 v163, v188, 16, v187
	v_lshl_or_b32 v162, v190, 16, v189
	v_perm_b32 v178, v214, v213, 0xc0c0004
	v_perm_b32 v179, v212, v211, 0xc0c0004
	v_perm_b32 v180, v218, v217, 0xc0c0004
	v_perm_b32 v186, v216, v215, 0xc0c0004
	v_perm_b32 v187, v220, v219, 0xc0c0004
	v_perm_b32 v188, v222, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[126:133], v[170:173], v[162:165], v[126:133] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v179, 16, v178
	v_lshl_or_b32 v172, v186, 16, v180
	v_lshl_or_b32 v171, v108, 16, v187
	v_lshl_or_b32 v170, v188, 16, v109
	v_wmma_i32_16x16x16_iu8 v[134:141], v[158:161], v[182:185], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v225, v230, v225, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v230, v232, v231, 0xc0c0004
	v_lshl_or_b32 v180, v107, 16, v1
	v_wmma_i32_16x16x16_iu8 v[126:133], v[154:157], v[170:173], v[126:133] neg_lo:[1,1,0]
	v_perm_b32 v1, v229, v228, 0xc0c0004
	v_perm_b32 v107, v227, v226, 0xc0c0004
	v_perm_b32 v108, v236, v235, 0xc0c0004
	v_perm_b32 v109, v234, v233, 0xc0c0004
	v_perm_b32 v154, v240, v239, 0xc0c0004
	v_perm_b32 v155, v238, v237, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v245, 0xc0c0004
	v_perm_b32 v158, v244, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[134:141], v[166:169], v[162:165], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v179, v242, 16, v241
	v_lshl_or_b32 v178, v230, 16, v225
	v_wmma_i32_16x16x16_iu8 v[118:125], v[150:153], v[174:177], v[118:125] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v107, 16, v1
	v_lshl_or_b32 v156, v109, 16, v108
	v_lshl_or_b32 v155, v155, 16, v154
	v_lshl_or_b32 v154, v158, 16, v76
	v_wmma_i32_16x16x16_iu8 v[134:141], v[150:153], v[170:173], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[146:149], v[178:181], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[142:145], v[178:181], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[146:149], v[154:157], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[142:145], v[154:157], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s33, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s33, s4
	v_mov_b16_e32 v76.l, 0
	s_ashr_i32 s4, s4, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v76.h, v90.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v74, v74, s4, 1
	v_add_lshl_u32 v75, v75, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v73, v73, s4, 1
	v_add_lshl_u32 v72, v72, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v71, v71, s4, 1
	v_add_lshl_u32 v70, v70, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v69, v69, s4, 1
	v_add_lshl_u32 v68, v68, s4, 1
	v_add_lshl_u32 v67, v67, s4, 1
	v_add_lshl_u32 v66, v66, s4, 1
	v_add_lshl_u32 v65, v65, s4, 1
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v72, 0x80000000, v72
	v_add_lshl_u32 v64, v64, s4, 1
	v_add_lshl_u32 v63, v63, s4, 1
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	v_add_lshl_u32 v61, v61, s4, 1
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v62, v62, s4, 1
	v_add_lshl_u32 v60, v60, s4, 1
	v_add_lshl_u32 v58, v58, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v74, v74, s[12:15], 0 offen
	buffer_load_u16 v75, v75, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v64, 0x80000000, v64
	s_clause 0x7
	buffer_load_u16 v73, v73, s[28:31], 0 offen
	buffer_load_u16 v72, v72, s[28:31], 0 offen
	buffer_load_u16 v71, v71, s[28:31], 0 offen
	buffer_load_u16 v70, v70, s[28:31], 0 offen
	buffer_load_u16 v69, v69, s[28:31], 0 offen
	buffer_load_u16 v68, v68, s[28:31], 0 offen
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	buffer_load_u16 v66, v66, s[28:31], 0 offen
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_clause 0x7
	buffer_load_u16 v65, v65, s[28:31], 0 offen
	buffer_load_u16 v64, v64, s[28:31], 0 offen
	buffer_load_u16 v63, v63, s[28:31], 0 offen
	buffer_load_u16 v61, v61, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v62, v62, s[28:31], 0 offen
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	v_mov_b16_e32 v90.h, v106.l
	v_mov_b16_e32 v91.h, v105.l
	v_mov_b16_e32 v93.h, v103.l
	v_mov_b16_e32 v95.h, v101.l
	v_mov_b16_e32 v101.h, v95.l
	v_mov_b16_e32 v103.h, v93.l
	v_mov_b16_e32 v105.h, v91.l
	v_mov_b16_e32 v91.l, v76.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v106, 0x7f, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v93.l, v76.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v108, 14, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v95.l, v76.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v92.h, v104.l
	v_mov_b16_e32 v97.h, v99.l
	v_mov_b16_e32 v99.h, v97.l
	v_mov_b16_e32 v104.h, v92.l
	v_mov_b16_e32 v97.l, v76.l
	v_mov_b16_e32 v104.l, v76.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v147, v76, v95 :: v_dual_and_b32 v0, 0x78, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v107, 7, v23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v109, 0x840, 0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v149, v76, v97
	v_mul_f32_e32 v156, v76, v104
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v24, 3, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v94.h, v102.l
	v_mov_b16_e32 v96.h, v100.l
	v_mov_b16_e32 v98.h, v98.l
	v_mov_b16_e32 v100.h, v96.l
	v_mov_b16_e32 v102.h, v94.l
	v_mov_b16_e32 v90.l, v76.l
	v_mov_b16_e32 v92.l, v76.l
	v_mov_b16_e32 v94.l, v76.l
	v_mov_b16_e32 v96.l, v76.l
	v_mov_b16_e32 v98.l, v76.l
	v_mov_b16_e32 v99.l, v76.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v110, 6, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v100.l, v76.l
	v_mov_b16_e32 v101.l, v76.l
	v_mov_b16_e32 v102.l, v76.l
	v_mov_b16_e32 v103.l, v76.l
	v_mov_b16_e32 v105.l, v76.l
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v25, s35, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v145, v76, v93
	v_dual_mul_f32 v142, v76, v90 :: v_dual_lshlrev_b32 v107, 11, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v156, v19, v43
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v0, v109
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v143, v76, v91
	v_mul_f32_e32 v144, v76, v92
	v_mul_f32_e32 v146, v76, v94
	v_mul_f32_e32 v148, v76, v96
	v_mul_f32_e32 v150, v76, v98
	v_mul_f32_e32 v151, v76, v99
	v_mul_f32_e32 v152, v76, v100
	v_mul_f32_e32 v154, v76, v102
	v_mul_f32_e32 v155, v76, v103
	v_mul_f32_e32 v157, v76, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v43, v19, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v43, v0, v107, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v153, v76, v101
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v76.h, v89.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v142, v88, v50
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s38, s27, s35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v154, v21, v45
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s38, s26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v88, v76, v91
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v89, s38, v106, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v143, v87, v57
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v87, v76, v90
	v_mul_f32_e32 v90, v76, v92
	v_mul_f32_e32 v91, v76, v93
	v_mul_f32_e32 v92, v76, v94
	v_mul_f32_e32 v93, v76, v95
	v_mul_f32_e32 v94, v76, v96
	v_mul_f32_e32 v95, v76, v97
	v_mul_f32_e32 v96, v76, v98
	v_mul_f32_e32 v97, v76, v99
	v_mul_f32_e32 v98, v76, v100
	v_mul_f32_e32 v99, v76, v101
	v_mul_f32_e32 v100, v76, v102
	v_mul_f32_e32 v101, v76, v103
	v_mul_f32_e32 v102, v76, v104
	v_mul_f32_e32 v76, v76, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v88, v16, v40
	v_fma_f32 v8, v96, v8, v33
	v_fma_f32 v3, v101, v3, v28
	v_fma_f32 v2, v102, v2, v27
	v_fma_f32 v10, v76, v10, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v16, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v155, v20, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v50, v24, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v90, v15, v39
	v_fma_f32 v6, v98, v6, v31
	v_fma_f32 v4, v100, v4, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v28, v3, s2
	v_cndmask_b32_e64 v2, v27, v2, s2
	v_cndmask_b32_e64 v0, v26, v10, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v149, v81, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v25, s2
	v_cndmask_b32_e64 v21, v45, v21, s2
	v_cndmask_b32_e64 v44, v44, v20, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v92, v13, v37
	v_fma_f32 v11, v94, v11, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v39, v15, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v147, v83, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v81, s2
	v_cndmask_b32_e64 v13, v37, v13, s2
	v_cndmask_b32_e64 v11, v35, v11, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v151, v79, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v83, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v145, v85, v55
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v35, v43, 8, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v79, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v85, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v37, v43, 24, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s27, s35, 1
	s_lshl_b32 s37, s35, 2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s33, s35, 6
	s_lshl_b32 s36, s35, 3
	s_mul_i32 s31, s35, 10
	s_mul_i32 s30, s35, 12
	s_mul_i32 s29, s35, 14
	s_lshl_b32 s34, s35, 4
	s_mul_i32 s28, s35, 18
	s_mul_i32 s23, s35, 20
	s_mul_i32 s22, s35, 22
	s_mul_i32 s21, s35, 24
	s_mul_i32 s20, s35, 26
	s_mul_i32 s19, s35, 28
	s_mul_i32 s18, s35, 30
	s_lshl_b32 s0, s35, 5
	s_mul_i32 s17, s35, 34
	s_mul_i32 s16, s35, 36
	s_mul_i32 s13, s35, 38
	s_mul_i32 s12, s35, 40
	s_mul_i32 s11, s35, 42
	s_mul_i32 s10, s35, 44
	s_mul_i32 s9, s35, 46
	s_mul_i32 s8, s35, 48
	s_mul_i32 s7, s35, 50
	s_mul_i32 s6, s35, 52
	s_mul_i32 s5, s35, 54
	s_mul_i32 s4, s35, 56
	s_mul_i32 s1, s35, 58
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v10, 16, v73
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v16, 16, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v91, v14, v38
	v_fma_f32 v17, v87, v17, v41
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v24, 16, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v93, v12, v36
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v26, 16, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v97, v7, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v14, s2
	v_cndmask_b32_e64 v14, v33, v8, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v8, 16, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v157, v18, v42
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v27, 16, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v146, v84, v54
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v28, 16, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v99, v5, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v18, s2
	v_cndmask_b32_e64 v17, v41, v17, s2
	v_cndmask_b32_e64 v25, v54, v84, s2
	v_cndmask_b32_e64 v20, v36, v12, s2
	v_cndmask_b32_e64 v7, v32, v7, s2
	v_cndmask_b32_e64 v12, v31, v6, s2
	v_cndmask_b32_e64 v5, v30, v5, s2
	v_cndmask_b32_e64 v6, v29, v4, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v4, 16, v74
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v95, v9, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v29, 16, v66
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v30, 16, v65
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v31, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v32, 16, v63
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v33, 16, v61
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v39, 16, v59
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v41, 16, v62
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v61, v4, v24 :: v_dual_lshlrev_b32 v54, 16, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v148, v82, v52
	v_fma_f32 v78, v152, v78, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v34, v9, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v4, v10
	v_mul_f32_e32 v59, v4, v16
	v_mul_f32_e32 v60, v4, v18
	v_mul_f32_e32 v62, v4, v26
	v_mul_f32_e32 v63, v4, v27
	v_mul_f32_e32 v64, v4, v28
	v_mul_f32_e32 v65, v4, v29
	v_mul_f32_e32 v66, v4, v30
	v_mul_f32_e32 v67, v4, v31
	v_mul_f32_e32 v68, v4, v32
	v_mul_f32_e32 v69, v4, v33
	v_mul_f32_e32 v70, v4, v39
	v_mul_f32_e32 v71, v4, v41
	v_mul_f32_e32 v72, v4, v45
	v_mul_f32_e32 v4, v4, v54
	v_mul_f32_e32 v10, v8, v10
	v_mul_f32_e32 v30, v8, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v82, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v8, v16
	v_mul_f32_e32 v31, v8, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v78, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v8, v18
	v_mul_f32_e32 v24, v8, v24
	v_mul_f32_e32 v26, v8, v26
	v_mul_f32_e32 v27, v8, v27
	v_mul_f32_e32 v28, v8, v28
	v_mul_f32_e32 v29, v8, v29
	v_mul_f32_e32 v32, v8, v32
	v_mul_f32_e32 v33, v8, v33
	v_mul_f32_e32 v39, v8, v39
	v_mul_f32_e32 v41, v8, v41
	v_mul_f32_e32 v45, v8, v45
	v_mul_f32_e32 v8, v8, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v58, v1, v0
	v_fma_f32 v54, v59, v111, v2
	v_fma_f32 v58, v60, v112, v3
	v_fma_f32 v59, v61, v113, v6
	v_fma_f32 v60, v62, v114, v5
	v_fma_f32 v61, v63, v115, v12
	v_fma_f32 v62, v64, v116, v7
	v_fma_f32 v63, v65, v117, v14
	v_fma_f32 v64, v66, v118, v9
	v_fma_f32 v65, v67, v119, v11
	v_fma_f32 v66, v68, v120, v20
	v_fma_f32 v67, v69, v121, v13
	v_fma_f32 v68, v70, v122, v38
	v_fma_f32 v69, v71, v123, v15
	v_fma_f32 v70, v72, v124, v40
	v_fma_f32 v71, v4, v125, v17
	v_fma_f32 v72, v10, v126, v42
	v_fma_f32 v78, v30, v134, v51
	v_fma_f32 v73, v16, v127, v19
	v_fma_f32 v31, v31, v135, v52
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v34, 0, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v32, v136, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	v_cndmask_b32_e64 v16, v9, v64, s3
	v_cndmask_b32_e64 v32, v17, v71, s3
	v_cndmask_b32_e64 v1, v42, v72, s3
	v_cndmask_b32_e64 v17, v51, v78, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v153, v77, v46
	v_fma_f32 v74, v18, v128, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v54, s3
	v_cndmask_b32_e64 v4, v3, v58, s3
	v_cndmask_b32_e64 v18, v11, v65, s3
	v_cndmask_b32_e64 v3, v19, v73, s3
	v_cndmask_b32_e64 v19, v52, v31, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v144, v86, v56
	v_fma_f32 v80, v150, v80, v49
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v34, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v35, v[2:3], v[18:19] offset1:2
	v_cndmask_b32_e64 v0, 0x840, 0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v77, s2
	v_cndmask_b32_e64 v56, v56, v86, s2
	v_cndmask_b32_e64 v49, v49, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v24, v129, v21
	v_fma_f32 v33, v33, v137, v25
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v1, 0x700, v22
	v_lshlrev_b32_e32 v2, 2, v108
	v_xor_b32_e32 v0, v0, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v26, v130, v46
	v_fma_f32 v27, v27, v131, v47
	v_fma_f32 v39, v39, v138, v55
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v36, v43, 16, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v133, v49
	v_fma_f32 v41, v41, v139, v56
	v_fma_f32 v80, v8, v141, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v5, v60, s3
	v_cndmask_b32_e64 v10, v12, v61, s3
	v_cndmask_b32_e64 v12, v7, v62, s3
	v_cndmask_b32_e64 v20, v20, v66, s3
	v_cndmask_b32_e64 v5, v44, v74, s3
	v_cndmask_b32_e64 v7, v21, v75, s3
	v_cndmask_b32_e64 v21, v53, v79, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v28, v132, v48
	v_fma_f32 v45, v45, v140, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v59, s3
	v_cndmask_b32_e64 v24, v13, v67, s3
	v_cndmask_b32_e64 v25, v25, v33, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v16, v1, v2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v38, v68, s3
	v_cndmask_b32_e64 v9, v46, v76, s3
	v_cndmask_b32_e64 v11, v47, v27, s3
	v_cndmask_b32_e64 v27, v55, v39, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v3, v43, 32, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v15, v69, s3
	v_cndmask_b32_e64 v15, v49, v29, s3
	v_cndmask_b32_e64 v29, v56, v41, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v36, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v37, v[6:7], v[24:25] offset1:2
	v_xad_u32 v4, v43, 40, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v40, v70, s3
	v_cndmask_b32_e64 v13, v48, v77, s3
	v_cndmask_b32_e64 v31, v57, v45, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v5, v43, 48, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v63, s3
	v_cndmask_b32_e64 v33, v50, v80, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v6, v43, 56, 0
	v_add_nc_u32_e32 v0, 0, v16
	ds_store_2addr_stride64_b64 v3, v[8:9], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v4, v[10:11], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v5, v[12:13], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v6, v[14:15], v[32:33] offset1:2
	v_xad_u32 v4, 0x1008, v16, 0
	s_waitcnt lgkmcnt(0)
	v_xad_u32 v8, 0x2010, v16, 0
	s_barrier
	ds_load_2addr_b64 v[0:3], v0 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	v_xad_u32 v17, 0x4020, v16, 0
	v_xad_u32 v12, 0x3018, v16, 0
	v_xad_u32 v20, 0x5028, v16, 0
	v_xad_u32 v24, 0x6030, v16, 0
	ds_load_2addr_b64 v[8:11], v8 offset1:16
	v_xad_u32 v28, 0x7038, v16, 0
	ds_load_2addr_b64 v[16:19], v17 offset1:16
	ds_load_2addr_b64 v[20:23], v20 offset1:16
	ds_load_2addr_b64 v[24:27], v24 offset1:16
	ds_load_2addr_b64 v[12:15], v12 offset1:16
	v_lshlrev_b32_e32 v32, 2, v89
	v_add_lshl_u32 v33, v89, s27, 2
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	s_mov_b32 s27, s15
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s37, 2
	v_add_lshl_u32 v4, v89, s33, 2
	v_add_lshl_u32 v32, v89, s36, 2
	v_add_lshl_u32 v33, v89, s31, 2
	v_add_lshl_u32 v34, v89, s30, 2
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v16, v32, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v33, s[24:27], 0 offen
	buffer_atomic_add_f32 v24, v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s29, 2
	v_add_lshl_u32 v4, v89, s34, 2
	v_add_lshl_u32 v8, v89, s28, 2
	v_add_lshl_u32 v12, v89, s23, 2
	v_add_lshl_u32 v16, v89, s22, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v12, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v16, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s21, 2
	v_add_lshl_u32 v2, v89, s20, 2
	v_add_lshl_u32 v4, v89, s19, 2
	v_add_lshl_u32 v6, v89, s18, 2
	v_add_lshl_u32 v8, v89, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v6, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v8, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s17, 2
	v_add_lshl_u32 v1, v89, s16, 2
	v_add_lshl_u32 v2, v89, s13, 2
	v_add_lshl_u32 v4, v89, s12, 2
	v_add_lshl_u32 v6, v89, s11, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v6, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s10, 2
	v_add_lshl_u32 v1, v89, s9, 2
	v_add_lshl_u32 v2, v89, s8, 2
	v_add_lshl_u32 v4, v89, s7, 2
	v_add_lshl_u32 v5, v89, s6, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, v89, s5, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s35, 60
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v89, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s35, 62
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v89, s1, 2
	v_add_lshl_u32 v3, v89, s2, 2
	v_add_lshl_u32 v4, v89, s3, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v23, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v31, v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 246
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 246
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16948
; TotalNumSgprs: 50
; NumVgprs: 246
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 246
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     246
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
