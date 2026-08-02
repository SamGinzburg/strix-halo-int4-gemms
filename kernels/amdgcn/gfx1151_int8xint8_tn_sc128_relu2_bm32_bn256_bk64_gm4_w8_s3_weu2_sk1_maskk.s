	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v26, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v25, 15, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v64, 2, v0
	v_or_b32_e32 v67, 0x3f0, v0
	v_or_b32_e32 v68, 0x7f0, v0
	v_lshrrev_b32_e32 v65, 2, v26
	v_and_b32_e32 v69, 8, v0
	v_and_b32_e32 v70, 32, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s35, v65
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v17, v25, 4, v3
	v_mad_u64_u32 v[18:19], null, s35, 3, v[17:18]
	v_lshl_add_u32 v66, s35, 1, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s14, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s15, s7, s14
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s15, s15, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s16, s15
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v64
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s12, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s12
	s_mul_hi_u32 s12, s13, s17
	s_xor_b32 s17, s2, s15
	s_mul_i32 s18, s12, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s16
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s12, s12, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s27, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s12, s12, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s26, v64
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s15, s12, s15
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s14
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s27, 63
.Ltmp19:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s12, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s3, s16
.Ltmp21:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s40, s2, 5
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s26, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s17, s35, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v63, 3, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s17
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s27, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v66
	v_add_nc_u32_e32 v5, s12, v18
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 24, v63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v17
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s18, s34, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v19, v1, v2, s40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s35, v3
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v5, s18, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[6:9], v2, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v4, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s41, s26, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[14:15], v2, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v1, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v3, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s41, v65
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	v_and_b32_e32 v71, 48, v63
	v_add_nc_u32_e32 v2, s12, v17
	v_add_nc_u32_e32 v3, s12, v66
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v18
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s12, s34, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x3
	buffer_load_b128 v[31:34], v2, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v1, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v3, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v4, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s41, v64
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v5, 16, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s18, s12, v19
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b64 v[47:48], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x420, v1
	v_and_b32_e32 v1, 14, v0
	v_xor_b32_e32 v4, v2, v65
	v_lshlrev_b32_e32 v2, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v1, 10, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v4, 0, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v74, 0x90, v73
	v_xor_b32_e32 v75, 0x120, v73
	v_xor_b32_e32 v76, 0x1b0, v73
	v_xor_b32_e32 v77, 0x210, v73
	v_add_nc_u32_e32 v16, 0, v73
	v_xor_b32_e32 v78, 0x330, v73
	v_xor_b32_e32 v79, 0x3a0, v73
	v_add_nc_u32_e32 v24, 0, v74
	v_add_nc_u32_e32 v49, 0, v75
	v_add_nc_u32_e32 v50, 0, v76
	v_add_nc_u32_e32 v51, 0, v77
	v_add_nc_u32_e32 v52, 0, v78
	v_add_nc_u32_e32 v53, 0, v79
	v_add_nc_u32_e32 v54, 0x4000, v16
	v_add_nc_u32_e32 v55, 0x4000, v24
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	s_waitcnt vmcnt(8)
	v_perm_b32 v61, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	v_perm_b32 v10, v11, v7, 0x4000501
	v_perm_b32 v7, v11, v7, 0x6020703
	v_perm_b32 v11, v12, v8, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	v_perm_b32 v12, v13, v9, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(7)
	ds_store_b64 v4, v[14:15] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v13, v27, v20, 0x4000501
	v_perm_b32 v14, v27, v20, 0x6020703
	v_perm_b32 v15, v28, v21, 0x4000501
	v_perm_b32 v20, v28, v21, 0x6020703
	v_perm_b32 v21, v29, v22, 0x4000501
	v_perm_b32 v22, v29, v22, 0x6020703
	v_perm_b32 v27, v30, v23, 0x4000501
	v_perm_b32 v23, v30, v23, 0x6020703
	v_perm_b32 v28, v61, v13, 0x7060302
	v_perm_b32 v13, v61, v13, 0x5040100
	v_perm_b32 v29, v6, v14, 0x7060302
	v_perm_b32 v6, v6, v14, 0x5040100
	v_perm_b32 v14, v10, v15, 0x7060302
	v_perm_b32 v10, v10, v15, 0x5040100
	v_perm_b32 v15, v7, v20, 0x7060302
	v_perm_b32 v7, v7, v20, 0x5040100
	v_perm_b32 v20, v11, v21, 0x7060302
	v_perm_b32 v11, v11, v21, 0x5040100
	v_perm_b32 v21, v8, v22, 0x7060302
	v_perm_b32 v8, v8, v22, 0x5040100
	v_perm_b32 v22, v12, v27, 0x7060302
	v_perm_b32 v12, v12, v27, 0x5040100
	v_perm_b32 v27, v9, v23, 0x7060302
	v_perm_b32 v9, v9, v23, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v23, v35, v31, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v30, v43, v39, 0x4000501
	v_perm_b32 v31, v35, v31, 0x6020703
	v_perm_b32 v35, v43, v39, 0x6020703
	v_perm_b32 v39, v36, v32, 0x4000501
	v_perm_b32 v43, v44, v40, 0x4000501
	v_perm_b32 v32, v36, v32, 0x6020703
	v_perm_b32 v36, v44, v40, 0x6020703
	v_perm_b32 v40, v37, v33, 0x4000501
	v_perm_b32 v44, v45, v41, 0x4000501
	v_perm_b32 v33, v37, v33, 0x6020703
	v_perm_b32 v37, v45, v41, 0x6020703
	v_perm_b32 v41, v38, v34, 0x4000501
	v_perm_b32 v45, v46, v42, 0x4000501
	v_perm_b32 v34, v38, v34, 0x6020703
	v_perm_b32 v38, v46, v42, 0x6020703
	ds_store_2addr_b32 v16, v28, v13 offset1:16
	ds_store_2addr_b32 v24, v29, v6 offset1:16
	ds_store_2addr_b32 v49, v14, v10 offset1:16
	ds_store_2addr_b32 v50, v15, v7 offset1:16
	ds_store_2addr_b32 v51, v20, v11 offset1:16
	ds_store_2addr_b32 v16, v21, v8 offset0:160 offset1:176
	ds_store_2addr_b32 v52, v22, v12 offset1:16
	ds_store_2addr_b32 v53, v27, v9 offset1:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v4, v[47:48] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v4, v30, v23, 0x7060302
	v_perm_b32 v6, v30, v23, 0x5040100
	v_perm_b32 v7, v35, v31, 0x7060302
	v_perm_b32 v8, v35, v31, 0x5040100
	v_perm_b32 v9, v43, v39, 0x7060302
	v_perm_b32 v10, v43, v39, 0x5040100
	v_perm_b32 v11, v36, v32, 0x7060302
	v_perm_b32 v12, v36, v32, 0x5040100
	v_perm_b32 v13, v44, v40, 0x7060302
	v_perm_b32 v14, v44, v40, 0x5040100
	v_perm_b32 v15, v37, v33, 0x7060302
	v_perm_b32 v16, v37, v33, 0x5040100
	v_perm_b32 v20, v45, v41, 0x7060302
	v_perm_b32 v21, v45, v41, 0x5040100
	v_perm_b32 v22, v38, v34, 0x7060302
	v_perm_b32 v23, v38, v34, 0x5040100
	ds_store_2addr_b32 v54, v4, v6 offset1:16
	ds_store_2addr_b32 v55, v7, v8 offset1:16
	ds_store_2addr_b32 v56, v9, v10 offset1:16
	ds_store_2addr_b32 v57, v11, v12 offset1:16
	ds_store_2addr_b32 v58, v13, v14 offset1:16
	ds_store_2addr_b32 v54, v15, v16 offset0:160 offset1:176
	ds_store_2addr_b32 v59, v20, v21 offset1:16
	ds_store_2addr_b32 v60, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0x1800, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v95, 0x3f0, v0
	v_or_b32_e32 v97, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v4, 48, v63
	v_and_b32_e32 v7, 8, v0
	v_and_b32_e32 v6, 32, v0
	v_and_or_b32 v72, 0x1c0, v2, v8
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr72
.LBB0_3:                                ; %Flow58
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v8, s40, v25
	v_or_b32_e32 v5, s40, v5
	s_ashr_i32 s42, s14, 7
	v_and_b32_e32 v9, 1, v0
	v_or_b32_e32 v60, s33, v0
	v_mul_lo_u32 v61, v8, s42
	v_mul_lo_u32 v59, v5, s42
	v_lshlrev_b32_e32 v24, 2, v26
	v_lshlrev_b32_e32 v22, 1, v1
	v_lshlrev_b32_e32 v62, 5, v9
	v_lshlrev_b32_e32 v23, 1, v26
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s45, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 0x1800, v3
	v_and_b32_e32 v1, 0x210, v1
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v9, 0, v24, v62
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v80, s35, v17
	v_and_or_b32 v72, 0x1c0, v2, v3
	v_xor_b32_e32 v1, v1, v71
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v85, v9, v22
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v72, v1
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v86, 0, v23
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, 0
	v_xor_b32_e32 v81, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v82, 16, v81
	v_xor_b32_e32 v83, 32, v81
	v_xor_b32_e32 v84, 48, v81
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s10, s41, 64
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_mov_b32 s11, 1
	s_add_i32 s46, 0, 0x8000
	s_add_i32 s43, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s45, s45, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s12
	s_mov_b32 s12, s26
	s_mov_b32 s26, s41
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s41, s10, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v138, s46, v25
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s41, v64
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s41, s34, v[19:20]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s14, v81
	v_add_nc_u32_e32 v12, s14, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[20:21], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v138 offset:416
	ds_load_u8 v10, v138 offset:384
	ds_load_u8 v13, v138 offset:480
	ds_load_u8 v14, v138 offset:448
	ds_load_u8 v15, v138 offset:288
	ds_load_u8 v16, v138 offset:256
	ds_load_u8 v87, v138 offset:352
	ds_load_u8 v88, v138 offset:320
	ds_load_u8 v89, v138 offset:160
	ds_load_u8 v90, v138 offset:128
	ds_load_u8 v91, v138 offset:224
	ds_load_u8 v92, v138 offset:192
	ds_load_u8 v93, v138 offset:96
	ds_load_u8 v94, v138 offset:64
	ds_load_u8 v103, v138
	ds_load_u8 v104, v138 offset:32
	ds_load_u8 v105, v138 offset:928
	ds_load_u8 v106, v138 offset:896
	ds_load_u8 v107, v138 offset:992
	ds_load_u8 v108, v138 offset:960
	ds_load_u8 v109, v138 offset:800
	ds_load_u8 v110, v138 offset:768
	ds_load_u8 v111, v138 offset:864
	ds_load_u8 v112, v138 offset:832
	ds_load_u8 v113, v138 offset:672
	ds_load_u8 v114, v138 offset:640
	ds_load_u8 v115, v138 offset:736
	ds_load_u8 v116, v138 offset:704
	ds_load_u8 v117, v138 offset:544
	ds_load_u8 v118, v138 offset:512
	ds_load_u8 v119, v138 offset:608
	ds_load_u8 v120, v138 offset:576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[95:98], v11
	ds_load_b128 v[99:102], v11 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v15, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v11, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v87, v103, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v88, v106, v105, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[103:106], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v89, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v90, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v91, v112, v111, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v12 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v94, v120, v119, 0xc0c0004
	v_lshl_or_b32 v114, v10, 16, v9
	v_lshl_or_b32 v113, v14, 16, v13
	v_lshl_or_b32 v112, v11, 16, v15
	v_lshl_or_b32 v111, v16, 16, v87
	v_lshl_or_b32 v118, v89, 16, v88
	v_lshl_or_b32 v117, v91, 16, v90
	v_lshl_or_b32 v116, v92, 16, v12
	v_lshl_or_b32 v115, v94, 16, v93
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[99:102], v[111:114], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v111, v138 offset:432
	ds_load_u8 v112, v138 offset:400
	ds_load_u8 v113, v138 offset:496
	ds_load_u8 v114, v138 offset:464
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[115:118], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[107:110], v[115:118], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v138 offset:304
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v138 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v114, v112, 0xc0c0004
	ds_load_u8 v114, v138 offset:368
	ds_load_u8 v115, v138 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_lshl_or_b32 v114, v113, 16, v111
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v115, 16, v112
	ds_load_u8 v111, v138 offset:176
	ds_load_u8 v112, v138 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v138 offset:240
	ds_load_u8 v115, v138 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v138 offset:112
	ds_load_u8 v115, v138 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	ds_load_u8 v115, v138 offset:16
	ds_load_u8 v116, v138 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v111, 16, v115
	ds_load_u8 v115, v138 offset:944
	ds_load_u8 v116, v138 offset:912
	v_wmma_i32_16x16x16_iu8 v[126:133], v[99:102], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v116, s46, v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v116, v116
	ds_load_u8 v117, v138 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v138 offset:816
	ds_load_u8 v118, v138 offset:784
	v_lshl_or_b32 v137, v116, 16, v115
	ds_load_u8 v115, v138 offset:688
	ds_load_u8 v116, v138 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v138 offset:880
	ds_load_u8 v119, v138 offset:848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[118:125], v[95:98], v[111:114], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v95, v138 offset:1440
	ds_load_u8 v96, v138 offset:1408
	ds_load_u8 v97, v138 offset:1504
	ds_load_u8 v98, v138 offset:1472
	ds_load_u8 v116, v138 offset:752
	ds_load_u8 v117, v138 offset:720
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1312
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v138 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v116, 16, v115
	ds_load_u8 v115, v138 offset:560
	ds_load_u8 v116, v138 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v98, v96, 0xc0c0004
	ds_load_u8 v98, v138 offset:1376
	ds_load_u8 v99, v138 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v138 offset:624
	ds_load_u8 v117, v138 offset:592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_lshl_or_b32 v98, v97, 16, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v99, 16, v96
	ds_load_u8 v95, v138 offset:1184
	ds_load_u8 v96, v138 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_lshl_or_b32 v134, v116, 16, v115
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[103:106], v[134:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v103, s14, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[126:133], v[107:110], v[134:137], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1248
	ds_load_u8 v99, v138 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v99, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v138 offset:1056
	ds_load_u8 v99, v138 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v99, v95, 0xc0c0004
	ds_load_u8 v99, v138 offset:1120
	ds_load_u8 v100, v138 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v99, 16, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[99:102], v103
	ds_load_b128 v[103:106], v103 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[99:102], v[95:98], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[95:98], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v95, v138 offset:1456
	ds_load_u8 v96, v138 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1520
	ds_load_u8 v97, v138 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v138 offset:1328
	ds_load_u8 v98, v138 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v138 offset:1392
	ds_load_u8 v107, v138 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v98, 0xc0c0004
	v_lshl_or_b32 v98, v96, 16, v95
	ds_load_u8 v95, v138 offset:1200
	ds_load_u8 v96, v138 offset:1168
	v_lshl_or_b32 v97, v107, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1264
	ds_load_u8 v107, v138 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v107, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v138 offset:1072
	ds_load_u8 v107, v138 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v107, v95, 0xc0c0004
	ds_load_u8 v107, v138 offset:1136
	ds_load_u8 v108, v138 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v107, 16, v95
	v_wmma_i32_16x16x16_iu8 v[118:125], v[99:102], v[95:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[103:106], v[95:98], v[126:133] neg_lo:[1,1,0]
	ds_load_u8 v95, v138 offset:1952
	ds_load_u8 v96, v138 offset:1920
	ds_load_u8 v97, v138 offset:2016
	ds_load_u8 v98, v138 offset:1984
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v103, s14, v84
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s41, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s14, s33
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1824
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v138 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v98, v96, 0xc0c0004
	ds_load_u8 v98, v138 offset:1888
	ds_load_u8 v99, v138 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_lshl_or_b32 v98, v97, 16, v95
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v99, 16, v96
	ds_load_u8 v95, v138 offset:1696
	ds_load_u8 v96, v138 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1760
	ds_load_u8 v99, v138 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v99, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v138 offset:1568
	ds_load_u8 v99, v138 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v99, v95, 0xc0c0004
	ds_load_u8 v99, v138 offset:1632
	ds_load_u8 v100, v138 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v99, 16, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[99:102], v103
	ds_load_b128 v[103:106], v103 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[99:102], v[95:98], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[95:98], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v95, v138 offset:1968
	ds_load_u8 v96, v138 offset:1936
	v_cvt_f32_i32_e32 v109, v16
	v_cvt_f32_i32_e32 v110, v87
	v_cvt_f32_i32_e32 v111, v88
	v_cvt_f32_i32_e32 v112, v89
	v_cvt_f32_i32_e32 v113, v90
	v_cvt_f32_i32_e32 v114, v91
	v_cvt_f32_i32_e32 v115, v92
	v_cvt_f32_i32_e32 v116, v93
	v_cvt_f32_i32_e32 v117, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v96, s46, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v96, v96
	ds_load_u8 v97, v138 offset:2000
	s_mov_b32 s46, s43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v138 offset:1840
	ds_load_u8 v98, v138 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v138 offset:1904
	ds_load_u8 v107, v138 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v98, 0xc0c0004
	v_lshl_or_b32 v98, v96, 16, v95
	ds_load_u8 v95, v138 offset:1712
	ds_load_u8 v96, v138 offset:1680
	v_lshl_or_b32 v97, v107, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v138 offset:1776
	ds_load_u8 v107, v138 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v107, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v138 offset:1584
	ds_load_u8 v107, v138 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v107, v95, 0xc0c0004
	ds_load_u8 v107, v138 offset:1648
	ds_load_u8 v108, v138 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_cvt_f32_i32_e32 v108, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v95, v107, 16, v95
	v_cvt_f32_i32_e32 v107, v14
	v_wmma_i32_16x16x16_iu8 v[118:125], v[99:102], v[95:98], v[118:125] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s41, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[126:133], v[103:106], v[95:98], v[126:133] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v103, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s14, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v104, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s14, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v13
	v_cvt_f32_i32_e32 v105, v12
	v_cvt_f32_i32_e32 v101, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v87, v121
	v_cvt_f32_i32_e32 v88, v122
	v_cvt_f32_i32_e32 v89, v123
	v_cvt_f32_i32_e32 v90, v124
	v_cvt_f32_i32_e32 v91, v125
	v_cvt_f32_i32_e32 v92, v126
	v_cvt_f32_i32_e32 v93, v127
	v_cvt_f32_i32_e32 v94, v128
	v_cvt_f32_i32_e32 v95, v129
	v_cvt_f32_i32_e32 v96, v130
	v_cvt_f32_i32_e32 v97, v131
	v_cvt_f32_i32_e32 v98, v132
	v_cvt_f32_i32_e32 v99, v133
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v119, v13, v9, 0x4000501
	v_perm_b32 v120, v13, v9, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s14, v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v121, v14, v10, 0x4000501
	v_perm_b32 v122, v14, v10, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s14, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v123, v15, v11, 0x4000501
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_perm_b32 v124, v15, v11, 0x6020703
	v_perm_b32 v125, v16, v12, 0x4000501
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	v_perm_b32 v126, v16, v12, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 25
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 7
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s42
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v127, v13, v9, 0x4000501
	v_perm_b32 v13, v13, v9, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v60, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v128, v14, v10, 0x4000501
	v_perm_b32 v14, v14, v10, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v59, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v129, v15, v11, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v15, v15, v11, 0x6020703
	v_perm_b32 v130, v16, v12, 0x4000501
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v16, v16, v12, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s14, s11, 14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v85, v9 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v61, s12, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s12, s11, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s15, s12, 0
	s_mov_b32 s12, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x1
	buffer_load_u16 v9, v9, s[28:31], 0 offen
	buffer_load_u16 v10, v10, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s14, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s43, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s45
	s_mov_b32 s13, s14
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v132, 16, v10
	v_lshlrev_b32_e32 v131, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v86 offset:36864
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v133, v9, v131
	v_mul_f32_e32 v134, v10, v131
	v_mul_f32_e32 v135, v11, v131
	v_dual_mul_f32 v136, v12, v131 :: v_dual_mul_f32 v137, v9, v132
	v_mul_f32_e32 v138, v10, v132
	v_mul_f32_e32 v139, v11, v132
	v_mul_f32_e32 v140, v12, v132
	ds_load_b128 v[9:12], v86 offset:36880
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v27, v133, v102 :: v_dual_fmac_f32 v44, v138, v101
	v_dual_fmac_f32 v28, v134, v103 :: v_dual_fmac_f32 v29, v135, v104
	v_dual_fmac_f32 v30, v136, v105 :: v_dual_fmac_f32 v43, v137, v118
	v_fmac_f32_e32 v45, v139, v100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v100, v129, v123, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v140, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v101, v15, v124, 0x7060302
	v_perm_b32 v15, v15, v124, 0x5040100
	v_perm_b32 v102, v130, v125, 0x7060302
	v_perm_b32 v103, v130, v125, 0x5040100
	v_perm_b32 v104, v16, v126, 0x7060302
	v_perm_b32 v16, v16, v126, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v141, v9, v131
	v_mul_f32_e32 v142, v10, v131
	v_mul_f32_e32 v143, v11, v131
	v_dual_mul_f32 v144, v12, v131 :: v_dual_mul_f32 v145, v9, v132
	v_mul_f32_e32 v146, v10, v132
	v_mul_f32_e32 v147, v11, v132
	v_mul_f32_e32 v148, v12, v132
	ds_load_b128 v[9:12], v86 offset:37376
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v31, v141, v106 :: v_dual_fmac_f32 v32, v142, v107
	v_dual_fmac_f32 v33, v143, v108 :: v_dual_fmac_f32 v48, v146, v89
	v_fmac_f32_e32 v34, v144, v109
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v50, v148, v91 :: v_dual_mul_f32 v153, v9, v132
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v10, v132
	v_mul_f32_e32 v155, v11, v132
	v_dual_mul_f32 v156, v12, v132 :: v_dual_mul_f32 v149, v9, v131
	v_mul_f32_e32 v150, v10, v131
	v_mul_f32_e32 v151, v11, v131
	v_mul_f32_e32 v152, v12, v131
	ds_load_b128 v[9:12], v86 offset:37392
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v52, v153, v92
	v_fmac_f32_e32 v36, v150, v111
	v_fmac_f32_e32 v54, v155, v94
	v_fmac_f32_e32 v38, v152, v113
	v_fmac_f32_e32 v55, v156, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v157, v9, v131
	v_mul_f32_e32 v158, v10, v131
	v_mul_f32_e32 v159, v11, v131
	v_mul_f32_e32 v131, v12, v131
	v_mul_f32_e32 v9, v9, v132
	v_mul_f32_e32 v10, v10, v132
	v_mul_f32_e32 v11, v11, v132
	v_mul_f32_e32 v12, v12, v132
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v132, s15, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v40, v158, v115
	v_dual_fmac_f32 v42, v131, v117 :: v_dual_fmac_f32 v35, v149, v110
	v_fmac_f32_e32 v37, v151, v112
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v132, v[20:21] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v20, v127, v119, 0x7060302
	v_perm_b32 v21, v127, v119, 0x5040100
	v_add_nc_u32_e32 v119, s44, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v41, v159, v116
	v_fmac_f32_e32 v47, v145, v88
	v_dual_fmac_f32 v49, v147, v90 :: v_dual_fmac_f32 v56, v9, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v119, v20, v21 offset1:16
	v_perm_b32 v20, v13, v120, 0x7060302
	v_perm_b32 v13, v13, v120, 0x5040100
	v_add_nc_u32_e32 v21, s44, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v53, v154, v93 :: v_dual_fmac_f32 v58, v11, v98
	v_fmac_f32_e32 v57, v10, v97
	v_fmac_f32_e32 v51, v12, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v21, v20, v13 offset1:16
	v_perm_b32 v13, v128, v121, 0x7060302
	v_perm_b32 v20, v128, v121, 0x5040100
	v_add_nc_u32_e32 v21, s44, v75
	ds_store_2addr_b32 v21, v13, v20 offset1:16
	v_perm_b32 v13, v14, v122, 0x7060302
	v_perm_b32 v14, v14, v122, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v39, v157, v114 :: v_dual_add_nc_u32 v20, s44, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v21, v129, v123, 0x7060302
	ds_store_2addr_b32 v20, v13, v14 offset1:16
	v_add_nc_u32_e32 v13, s44, v77
	v_add_nc_u32_e32 v14, s44, v78
	v_add_nc_u32_e32 v20, s44, v79
	ds_store_2addr_b32 v13, v21, v100 offset1:16
	ds_store_2addr_b32 v119, v101, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v14, v102, v103 offset1:16
	ds_store_2addr_b32 v20, v104, v16 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v95, v67 :: v_dual_mov_b32 v6, v70
	v_dual_mov_b32 v97, v68 :: v_dual_mov_b32 v4, v71
	v_mov_b32_e32 v7, v69
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	s_add_i32 s46, 0, 0x8000
	s_add_i32 s43, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v4
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_mov_b32_e32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_or_b32_e32 v1, v72, v1
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v78, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v18, v1, v2
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_xor_b32_e32 v19, 16, v18
	v_xor_b32_e32 v20, 32, v18
	v_xor_b32_e32 v21, 48, v18
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v93, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_add_nc_u32_e32 v5, s12, v21
	v_add_nc_u32_e32 v13, s12, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v94, s23 :: v_dual_add_nc_u32 v79, s46, v25
	v_mov_b32_e32 v92, s21
	v_mov_b32_e32 v90, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:8192
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[9:12], v13 offset:8192
	ds_load_b128 v[13:16], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v68, v79 offset:288
	ds_load_u8 v69, v79 offset:256
	ds_load_u8 v70, v79 offset:352
	ds_load_u8 v72, v79 offset:320
	ds_load_u8 v73, v79 offset:160
	ds_load_u8 v74, v79 offset:128
	ds_load_u8 v75, v79 offset:224
	ds_load_u8 v76, v79 offset:192
	ds_load_u8 v96, v79 offset:464
	ds_load_u8 v118, v79 offset:432
	ds_load_u8 v119, v79 offset:400
	ds_load_u8 v120, v79 offset:368
	ds_load_u8 v80, v79 offset:96
	ds_load_u8 v81, v79 offset:64
	ds_load_u8 v82, v79
	ds_load_u8 v83, v79 offset:32
	ds_load_u8 v122, v79 offset:336
	ds_load_u8 v123, v79 offset:304
	ds_load_u8 v124, v79 offset:272
	ds_load_u8 v125, v79 offset:240
	v_dual_mov_b32 v88, s17 :: v_dual_add_nc_u32 v71, s12, v19
	ds_load_u8 v85, v79 offset:800
	ds_load_u8 v86, v79 offset:768
	ds_load_u8 v102, v79 offset:864
	ds_load_u8 v103, v79 offset:832
	ds_load_u8 v104, v79 offset:672
	ds_load_u8 v105, v79 offset:640
	ds_load_u8 v114, v79 offset:736
	ds_load_u8 v115, v79 offset:704
	ds_load_u8 v134, v79 offset:976
	ds_load_u8 v135, v79 offset:944
	ds_load_u8 v136, v79 offset:912
	ds_load_u8 v137, v79 offset:880
	ds_load_u8 v63, v79 offset:416
	ds_load_u8 v64, v79 offset:384
	ds_load_u8 v65, v79 offset:480
	ds_load_u8 v66, v79 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v67, s12, v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v126, v79 offset:208
	ds_load_u8 v127, v79 offset:176
	ds_load_u8 v128, v79 offset:144
	ds_load_u8 v129, v79 offset:112
	ds_load_u8 v130, v79 offset:80
	ds_load_u8 v131, v79 offset:48
	ds_load_u8 v146, v79 offset:592
	ds_load_u8 v147, v79 offset:560
	ds_load_u8 v148, v79 offset:528
	ds_load_u8 v149, v79 offset:496
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v84, v69, v68, 0xc0c0004
	v_mov_b32_e32 v93, s22
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v72, v72, v70, 0xc0c0004
	ds_load_u8 v142, v79 offset:720
	ds_load_u8 v143, v79 offset:688
	ds_load_u8 v144, v79 offset:656
	ds_load_u8 v145, v79 offset:624
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_lshl_or_b32 v100, v72, 16, v84
	v_perm_b32 v72, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v86, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v103, v115, v114, 0xc0c0004
	v_lshl_or_b32 v99, v74, 16, v73
	v_perm_b32 v73, v82, v83, 0xc0c0004
	ds_load_u8 v80, v79 offset:928
	ds_load_u8 v81, v79 offset:896
	ds_load_u8 v82, v79 offset:992
	ds_load_u8 v83, v79 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[106:109], v71 offset:8192
	ds_load_b128 v[110:113], v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v79 offset:1440
	ds_load_u8 v115, v79 offset:1408
	v_perm_b32 v102, v105, v104, 0xc0c0004
	v_lshl_or_b32 v104, v86, 16, v85
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v75, s46, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v77, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v78, v66, v65, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v67 offset:8192
	ds_load_b128 v[67:70], v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v132, v79 offset:16
	ds_load_u8 v133, v75
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v84, s46, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v161, v79 offset:1264
	ds_load_u8 v162, v79 offset:1232
	ds_load_u8 v163, v79 offset:1200
	ds_load_u8 v164, v79 offset:1168
	v_lshl_or_b32 v101, v78, 16, v77
	v_lshl_or_b32 v98, v72, 16, v73
	v_mov_b32_e32 v91, s20
	v_mov_b32_e32 v89, s18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v79 offset:544
	ds_load_u8 v116, v79 offset:512
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v79 offset:608
	ds_load_u8 v117, v79 offset:576
	ds_load_u8 v138, v79 offset:848
	ds_load_u8 v139, v79 offset:816
	ds_load_u8 v140, v79 offset:784
	ds_load_u8 v141, v79 offset:752
	v_mov_b32_e32 v87, s16
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v79 offset:1056
	ds_load_u8 v155, v79 offset:1024
	v_lshl_or_b32 v105, v82, 16, v80
	ds_load_u8 v177, v79 offset:1904
	ds_load_u8 v178, v79 offset:1872
	ds_load_u8 v179, v79 offset:1840
	ds_load_u8 v180, v79 offset:1808
	ds_load_u8 v183, v79 offset:1776
	ds_load_u8 v184, v79 offset:1744
	ds_load_u8 v185, v79 offset:1712
	ds_load_u8 v186, v79 offset:1680
	v_perm_b32 v96, v96, v149, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[67:70], v[98:101], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v83, v117, v83, 0xc0c0004
	v_perm_b32 v81, v116, v81, 0xc0c0004
	ds_load_u8 v116, v79 offset:1504
	ds_load_u8 v117, v79 offset:1472
	v_lshl_or_b32 v102, v83, 16, v81
	ds_load_u8 v80, v79 offset:1312
	ds_load_u8 v81, v79 offset:1280
	ds_load_u8 v82, v79 offset:1376
	ds_load_u8 v83, v79 offset:1344
	ds_load_u8 v85, v79 offset:1184
	ds_load_u8 v86, v79 offset:1152
	ds_load_u8 v121, v79 offset:1248
	ds_load_u8 v150, v79 offset:1216
	ds_load_u8 v151, v79 offset:1520
	ds_load_u8 v152, v79 offset:1488
	ds_load_u8 v153, v79 offset:1456
	ds_load_u8 v154, v79 offset:1424
	v_wmma_i32_16x16x16_iu8 v[71:78], v[110:113], v[102:105], v[71:78] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v79 offset:1120
	ds_load_u8 v156, v79 offset:1088
	ds_load_u8 v157, v79 offset:1392
	ds_load_u8 v158, v79 offset:1360
	ds_load_u8 v159, v79 offset:1328
	ds_load_u8 v160, v79 offset:1296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v83, v150, v121, 0xc0c0004
	v_perm_b32 v85, v155, v115, 0xc0c0004
	ds_load_u8 v86, v79 offset:1952
	ds_load_u8 v121, v79 offset:1920
	ds_load_u8 v155, v79 offset:2016
	ds_load_u8 v168, v79 offset:1984
	ds_load_u8 v150, v79 offset:1136
	ds_load_u8 v165, v79 offset:1104
	ds_load_u8 v166, v79 offset:1072
	ds_load_u8 v167, v79 offset:1040
	v_lshl_or_b32 v115, v83, 16, v82
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v156, v156, v117, 0xc0c0004
	v_lshl_or_b32 v117, v116, 16, v114
	v_lshl_or_b32 v116, v81, 16, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v114, v156, 16, v85
	ds_load_u8 v80, v79 offset:1824
	ds_load_u8 v81, v79 offset:1792
	ds_load_u8 v82, v79 offset:1888
	ds_load_u8 v83, v79 offset:1856
	ds_load_u8 v85, v79 offset:1696
	ds_load_u8 v156, v79 offset:1664
	ds_load_u8 v169, v79 offset:1760
	ds_load_u8 v170, v79 offset:1728
	ds_load_u8 v171, v84
	ds_load_u8 v172, v79 offset:2000
	ds_load_u8 v173, v79 offset:1968
	ds_load_u8 v174, v79 offset:1936
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v121, v86, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v168, v155, 0xc0c0004
	ds_load_u8 v155, v79 offset:1568
	ds_load_u8 v168, v79 offset:1536
	ds_load_u8 v175, v79 offset:1632
	ds_load_u8 v176, v79 offset:1600
	v_wmma_i32_16x16x16_iu8 v[71:78], v[13:16], v[114:117], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v121, v86, 16, v84
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v182, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v156, v156, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v79 offset:1648
	ds_load_u8 v187, v79 offset:1616
	ds_load_u8 v188, v79 offset:1584
	ds_load_u8 v189, v79 offset:1552
	v_wmma_i32_16x16x16_iu8 v[79:86], v[63:66], v[98:101], v[87:94] neg_lo:[1,1,0]
	v_perm_b32 v98, v119, v118, 0xc0c0004
	v_perm_b32 v99, v124, v123, 0xc0c0004
	v_perm_b32 v100, v122, v120, 0xc0c0004
	v_perm_b32 v101, v128, v127, 0xc0c0004
	v_perm_b32 v118, v126, v125, 0xc0c0004
	v_perm_b32 v119, v130, v129, 0xc0c0004
	v_perm_b32 v120, v132, v131, 0xc0c0004
	v_lshl_or_b32 v125, v96, 16, v98
	v_lshl_or_b32 v124, v100, 16, v99
	v_lshl_or_b32 v123, v118, 16, v101
	v_perm_b32 v96, v136, v135, 0xc0c0004
	v_lshl_or_b32 v122, v119, 16, v120
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v118, v134, v171, 0xc0c0004
	v_perm_b32 v119, v140, v139, 0xc0c0004
	v_perm_b32 v120, v138, v137, 0xc0c0004
	v_perm_b32 v126, v144, v143, 0xc0c0004
	v_perm_b32 v127, v142, v141, 0xc0c0004
	v_perm_b32 v128, v148, v147, 0xc0c0004
	v_perm_b32 v129, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[79:86], v[106:109], v[102:105], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[67:70], v[122:125], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v118, 16, v96
	v_lshl_or_b32 v69, v120, 16, v119
	v_lshl_or_b32 v68, v127, 16, v126
	v_lshl_or_b32 v67, v129, 16, v128
	v_perm_b32 v96, v154, v153, 0xc0c0004
	v_perm_b32 v118, v152, v151, 0xc0c0004
	v_perm_b32 v119, v160, v159, 0xc0c0004
	v_perm_b32 v120, v158, v157, 0xc0c0004
	v_perm_b32 v126, v164, v163, 0xc0c0004
	v_perm_b32 v127, v162, v161, 0xc0c0004
	v_perm_b32 v128, v167, v166, 0xc0c0004
	v_perm_b32 v129, v165, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[98:105], v[110:113], v[67:70], v[98:105] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v118, 16, v96
	v_lshl_or_b32 v112, v120, 16, v119
	v_lshl_or_b32 v111, v127, 16, v126
	v_lshl_or_b32 v110, v129, 16, v128
	v_wmma_i32_16x16x16_iu8 v[87:94], v[63:66], v[122:125], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v155, v168, v155, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v176, v175, 0xc0c0004
	v_perm_b32 v96, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[98:105], v[13:16], v[110:113], v[98:105] neg_lo:[1,1,0]
	v_perm_b32 v13, v174, v173, 0xc0c0004
	v_perm_b32 v14, v172, v133, 0xc0c0004
	v_perm_b32 v15, v180, v179, 0xc0c0004
	v_perm_b32 v63, v186, v185, 0xc0c0004
	v_perm_b32 v64, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v189, v188, 0xc0c0004
	v_perm_b32 v66, v187, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[87:94], v[106:109], v[67:70], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v182, 16, v181
	v_lshl_or_b32 v119, v169, 16, v156
	v_lshl_or_b32 v118, v168, 16, v155
	v_wmma_i32_16x16x16_iu8 v[79:86], v[9:12], v[114:117], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v14, 16, v13
	v_lshl_or_b32 v15, v96, 16, v15
	v_lshl_or_b32 v14, v64, 16, v63
	v_lshl_or_b32 v13, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[87:94], v[9:12], v[110:113], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[5:8], v[118:121], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[1:4], v[118:121], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[5:8], v[13:16], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[1:4], v[13:16], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v67, v76
	v_cvt_f32_i32_e32 v68, v77
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v70, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v98
	v_cvt_f32_i32_e32 v80, v99
	v_cvt_f32_i32_e32 v81, v100
	v_cvt_f32_i32_e32 v82, v101
	v_cvt_f32_i32_e32 v83, v102
	v_cvt_f32_i32_e32 v84, v103
	v_cvt_f32_i32_e32 v85, v104
	v_cvt_f32_i32_e32 v86, v105
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v71, v71
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v61, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v60, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v59, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v98, v1, s[8:11], 0 offen
	buffer_load_u16 v99, v3, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v24, v62
	v_add_nc_u32_e32 v62, 0, v23
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v96, v1, v22
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v126, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v22, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v96, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v62 offset:36864
	ds_load_b128 v[5:8], v62 offset:36880
	ds_load_b128 v[9:12], v62 offset:37376
	ds_load_b128 v[13:16], v62 offset:37392
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v95, s43, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v21, s44, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v127, s19 :: v_dual_add_nc_u32 v108, s43, v25
	v_dual_mov_b32 v125, s17 :: v_dual_add_nc_u32 v100, s44, v20
	v_dual_mov_b32 v124, s16 :: v_dual_add_nc_u32 v105, s44, v19
	v_dual_mov_b32 v123, s15 :: v_dual_add_nc_u32 v106, s44, v18
	v_mov_b32_e32 v126, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v21 offset:8192
	ds_load_b128 v[21:24], v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v107, v108 offset:288
	ds_load_u8 v109, v108 offset:256
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v100 offset:8192
	ds_load_b128 v[136:139], v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v100, v108 offset:352
	ds_load_u8 v110, v108 offset:320
	ds_load_u8 v111, v108 offset:160
	ds_load_u8 v112, v108 offset:128
	ds_load_u8 v113, v108 offset:224
	ds_load_u8 v114, v108 offset:192
	ds_load_u8 v160, v108 offset:464
	ds_load_u8 v161, v108 offset:432
	ds_load_u8 v162, v108 offset:400
	ds_load_u8 v164, v108 offset:368
	ds_load_u8 v101, v108 offset:416
	ds_load_u8 v102, v108 offset:384
	ds_load_u8 v103, v108 offset:480
	ds_load_u8 v104, v108 offset:448
	v_dual_mov_b32 v122, s14 :: v_dual_add_nc_u32 v97, s43, v97
	ds_load_u8 v169, v108 offset:208
	ds_load_u8 v170, v108 offset:176
	ds_load_u8 v171, v108 offset:144
	ds_load_u8 v172, v108 offset:112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[140:143], v106 offset:8192
	ds_load_b128 v[144:147], v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v173, v108 offset:80
	ds_load_u8 v174, v108 offset:48
	ds_load_u8 v188, v108 offset:592
	ds_load_u8 v189, v108 offset:560
	ds_load_u8 v190, v108 offset:528
	ds_load_u8 v191, v108 offset:496
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v108
	ds_load_u8 v115, v108 offset:32
	ds_load_u8 v175, v108 offset:16
	ds_load_u8 v97, v97
	ds_load_u8 v184, v108 offset:720
	ds_load_u8 v185, v108 offset:688
	ds_load_u8 v186, v108 offset:656
	ds_load_u8 v187, v108 offset:624
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v100, v110, v100, 0xc0c0004
	ds_load_u8 v202, v108 offset:1264
	ds_load_u8 v203, v108 offset:1232
	ds_load_u8 v204, v108 offset:1200
	ds_load_u8 v205, v108 offset:1168
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v110, v112, v111, 0xc0c0004
	ds_load_u8 v206, v108 offset:1136
	ds_load_u8 v207, v108 offset:1104
	ds_load_u8 v208, v108 offset:1072
	ds_load_u8 v209, v108 offset:1040
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v111, v114, v113, 0xc0c0004
	v_lshl_or_b32 v130, v100, 16, v107
	v_dual_mov_b32 v121, s13 :: v_dual_mov_b32 v120, s12
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	v_lshl_or_b32 v129, v111, 16, v110
	ds_load_u8 v103, v108 offset:96
	ds_load_u8 v104, v108 offset:64
	ds_load_u8 v165, v108 offset:336
	ds_load_u8 v166, v108 offset:304
	ds_load_u8 v167, v108 offset:272
	ds_load_u8 v168, v108 offset:240
	ds_load_u8 v218, v108 offset:1904
	ds_load_u8 v219, v108 offset:1872
	ds_load_u8 v220, v108 offset:1840
	ds_load_u8 v221, v108 offset:1808
	ds_load_u8 v224, v108 offset:1776
	ds_load_u8 v225, v108 offset:1744
	ds_load_u8 v226, v108 offset:1712
	ds_load_u8 v227, v108 offset:1680
	v_lshl_or_b32 v131, v102, 16, v101
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v101, v109, v115, 0xc0c0004
	ds_load_u8 v109, v108 offset:928
	ds_load_u8 v110, v108 offset:896
	ds_load_u8 v111, v108 offset:992
	ds_load_u8 v112, v108 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[148:151], v105 offset:8192
	ds_load_b128 v[152:155], v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v113, v108 offset:800
	ds_load_u8 v114, v108 offset:768
	ds_load_u8 v115, v108 offset:864
	ds_load_u8 v132, v108 offset:832
	ds_load_u8 v133, v108 offset:672
	ds_load_u8 v134, v108 offset:640
	ds_load_u8 v135, v108 offset:736
	ds_load_u8 v156, v108 offset:704
	ds_load_u8 v176, v108 offset:976
	ds_load_u8 v177, v108 offset:944
	ds_load_u8 v178, v108 offset:912
	ds_load_u8 v179, v108 offset:880
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v100, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v114, v132, v115, 0xc0c0004
	v_lshl_or_b32 v128, v100, 16, v101
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v115, v134, v133, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v108 offset:544
	ds_load_u8 v157, v108 offset:512
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v108 offset:608
	ds_load_u8 v158, v108 offset:576
	ds_load_u8 v180, v108 offset:848
	ds_load_u8 v181, v108 offset:816
	ds_load_u8 v182, v108 offset:784
	ds_load_u8 v183, v108 offset:752
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v132, v156, v135, 0xc0c0004
	v_lshl_or_b32 v134, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[100:107], v[144:147], v[128:131], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v135, v111, 16, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v133, v132, 16, v115
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v158, v112, 0xc0c0004
	ds_load_u8 v158, v108 offset:1504
	ds_load_u8 v159, v108 offset:1472
	v_perm_b32 v110, v157, v110, 0xc0c0004
	ds_load_u8 v156, v108 offset:1440
	ds_load_u8 v157, v108 offset:1408
	v_lshl_or_b32 v132, v112, 16, v110
	ds_load_u8 v109, v108 offset:1312
	ds_load_u8 v110, v108 offset:1280
	ds_load_u8 v111, v108 offset:1376
	ds_load_u8 v112, v108 offset:1344
	ds_load_u8 v113, v108 offset:1184
	ds_load_u8 v114, v108 offset:1152
	ds_load_u8 v115, v108 offset:1248
	ds_load_u8 v163, v108 offset:1216
	ds_load_u8 v192, v108 offset:1520
	ds_load_u8 v193, v108 offset:1488
	ds_load_u8 v194, v108 offset:1456
	ds_load_u8 v195, v108 offset:1424
	v_wmma_i32_16x16x16_iu8 v[100:107], v[152:155], v[132:135], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v108 offset:1120
	ds_load_u8 v197, v108 offset:1088
	ds_load_u8 v198, v108 offset:1392
	ds_load_u8 v199, v108 offset:1360
	ds_load_u8 v200, v108 offset:1328
	ds_load_u8 v201, v108 offset:1296
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v108 offset:1056
	ds_load_u8 v196, v108 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v112, v163, v115, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v159, 0xc0c0004
	v_lshl_or_b32 v159, v158, 16, v156
	v_lshl_or_b32 v158, v110, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v196, v157, 0xc0c0004
	ds_load_u8 v114, v108 offset:1952
	ds_load_u8 v115, v108 offset:1920
	ds_load_u8 v163, v108 offset:2016
	ds_load_u8 v196, v108 offset:1984
	v_lshl_or_b32 v157, v112, 16, v111
	v_lshl_or_b32 v156, v197, 16, v113
	ds_load_u8 v109, v108 offset:1824
	ds_load_u8 v110, v108 offset:1792
	ds_load_u8 v111, v108 offset:1888
	ds_load_u8 v112, v108 offset:1856
	ds_load_u8 v113, v108 offset:1696
	ds_load_u8 v197, v108 offset:1664
	ds_load_u8 v210, v108 offset:1760
	ds_load_u8 v211, v108 offset:1728
	ds_load_u8 v95, v95
	ds_load_u8 v212, v108 offset:2000
	ds_load_u8 v213, v108 offset:1968
	ds_load_u8 v214, v108 offset:1936
	v_wmma_i32_16x16x16_iu8 v[100:107], v[136:139], v[156:159], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v222, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v223, v112, v111, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v113, 0xc0c0004
	v_perm_b32 v115, v196, v163, 0xc0c0004
	ds_load_u8 v196, v108 offset:1568
	ds_load_u8 v215, v108 offset:1536
	ds_load_u8 v216, v108 offset:1632
	ds_load_u8 v217, v108 offset:1600
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v210, v211, v210, 0xc0c0004
	ds_load_u8 v211, v108 offset:1648
	ds_load_u8 v228, v108 offset:1616
	ds_load_u8 v229, v108 offset:1584
	ds_load_u8 v230, v108 offset:1552
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v95, v176, v95, 0xc0c0004
	v_lshl_or_b32 v163, v115, 16, v114
	v_wmma_i32_16x16x16_iu8 v[108:115], v[140:143], v[128:131], v[120:127] neg_lo:[1,1,0]
	v_perm_b32 v128, v162, v161, 0xc0c0004
	v_perm_b32 v129, v160, v191, 0xc0c0004
	v_perm_b32 v130, v167, v166, 0xc0c0004
	v_perm_b32 v131, v165, v164, 0xc0c0004
	v_perm_b32 v160, v171, v170, 0xc0c0004
	v_perm_b32 v161, v169, v168, 0xc0c0004
	v_perm_b32 v162, v173, v172, 0xc0c0004
	v_perm_b32 v164, v175, v174, 0xc0c0004
	v_lshl_or_b32 v167, v129, 16, v128
	v_lshl_or_b32 v166, v131, 16, v130
	v_lshl_or_b32 v165, v161, 16, v160
	v_perm_b32 v160, v178, v177, 0xc0c0004
	v_lshl_or_b32 v164, v162, 16, v164
	v_perm_b32 v161, v182, v181, 0xc0c0004
	v_perm_b32 v162, v180, v179, 0xc0c0004
	v_perm_b32 v168, v186, v185, 0xc0c0004
	v_perm_b32 v169, v184, v183, 0xc0c0004
	v_perm_b32 v170, v190, v189, 0xc0c0004
	v_perm_b32 v171, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[148:151], v[132:135], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[144:147], v[164:167], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v95, 16, v160
	v_lshl_or_b32 v146, v162, 16, v161
	v_lshl_or_b32 v145, v169, 16, v168
	v_lshl_or_b32 v144, v171, 16, v170
	v_perm_b32 v95, v195, v194, 0xc0c0004
	v_perm_b32 v160, v193, v192, 0xc0c0004
	v_perm_b32 v161, v201, v200, 0xc0c0004
	v_perm_b32 v162, v199, v198, 0xc0c0004
	v_perm_b32 v168, v205, v204, 0xc0c0004
	v_perm_b32 v169, v203, v202, 0xc0c0004
	v_perm_b32 v170, v209, v208, 0xc0c0004
	v_perm_b32 v171, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[128:135], v[152:155], v[144:147], v[128:135] neg_lo:[1,1,0]
	v_lshl_or_b32 v155, v160, 16, v95
	v_lshl_or_b32 v154, v162, 16, v161
	v_lshl_or_b32 v153, v169, 16, v168
	v_lshl_or_b32 v152, v171, 16, v170
	v_wmma_i32_16x16x16_iu8 v[120:127], v[140:143], v[164:167], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v215, v196, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v215, v217, v216, 0xc0c0004
	v_perm_b32 v95, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[152:155], v[128:135] neg_lo:[1,1,0]
	v_perm_b32 v97, v212, v97, 0xc0c0004
	v_perm_b32 v136, v221, v220, 0xc0c0004
	v_perm_b32 v137, v219, v218, 0xc0c0004
	v_perm_b32 v140, v227, v226, 0xc0c0004
	v_perm_b32 v141, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v230, v229, 0xc0c0004
	v_perm_b32 v143, v228, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[120:127], v[148:151], v[144:147], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v223, 16, v222
	v_lshl_or_b32 v161, v210, 16, v197
	v_lshl_or_b32 v160, v215, 16, v196
	v_wmma_i32_16x16x16_iu8 v[108:115], v[116:119], v[156:159], v[108:115] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v97, 16, v95
	v_lshl_or_b32 v138, v137, 16, v136
	v_lshl_or_b32 v137, v141, 16, v140
	v_lshl_or_b32 v136, v143, 16, v142
	v_wmma_i32_16x16x16_iu8 v[120:127], v[116:119], v[152:155], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[21:24], v[160:163], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[17:20], v[160:163], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[21:24], v[136:139], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[17:20], v[136:139], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v100
	v_cvt_f32_i32_e32 v23, v101
	v_cvt_f32_i32_e32 v24, v102
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v101, v104
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v22, v113
	v_cvt_f32_i32_e32 v110, v114
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v112, v128
	v_cvt_f32_i32_e32 v113, v129
	v_cvt_f32_i32_e32 v114, v130
	v_cvt_f32_i32_e32 v115, v131
	v_cvt_f32_i32_e32 v116, v132
	v_cvt_f32_i32_e32 v117, v133
	v_cvt_f32_i32_e32 v118, v134
	v_cvt_f32_i32_e32 v119, v135
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s41, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s41, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v20, 1, v26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v18, v61, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v19, v60, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s40, s40, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v20, s40, s33, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v60, v19, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v59, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x1
	buffer_load_u16 v59, v18, s[8:11], 0 offen
	buffer_load_u16 v61, v19, s[8:11], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v18.h, v99.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v19, s35, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.h, v18.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v16, v18
	v_mul_f32_e32 v26, v15, v18
	v_mul_f32_e32 v95, v14, v18
	v_mul_f32_e32 v97, v13, v18
	v_mul_f32_e32 v99, v12, v18
	v_mul_f32_e32 v128, v11, v18
	v_mul_f32_e32 v129, v10, v18
	v_mul_f32_e32 v130, v9, v18
	v_mul_f32_e32 v131, v8, v18
	v_mul_f32_e32 v132, v7, v18
	v_mul_f32_e32 v133, v6, v18
	v_mul_f32_e32 v134, v5, v18
	v_mul_f32_e32 v135, v4, v18
	v_mul_f32_e32 v136, v3, v18
	v_mul_f32_e32 v137, v2, v18
	v_mul_f32_e32 v138, v1, v18
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v18.h, v98.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v93, v58
	v_fma_f32 v92, v95, v92, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v155.h, v18.l
	v_mov_b16_e64 v154.h, v18.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v58, v26, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v18
	v_mul_f32_e32 v1, v1, v18
	v_mul_f32_e32 v5, v5, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v7, v68, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v18
	v_mul_f32_e32 v3, v3, v18
	v_mul_f32_e32 v2, v2, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v1, v71, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v58, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v5, v66, v31
	v_fma_f32 v65, v4, v65, v30
	v_fma_f32 v64, v3, v64, v29
	v_fma_f32 v63, v2, v63, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v11, v18
	v_mul_f32_e32 v9, v9, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v66, s3
	v_cndmask_b32_e64 v27, v27, v68, s3
	v_cndmask_b32_e64 v28, v28, v63, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v73, v37
	v_fma_f32 v9, v9, v70, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v13, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v64, s3
	v_cndmask_b32_e64 v30, v30, v65, s3
	v_cndmask_b32_e64 v37, v37, v11, s3
	v_cndmask_b32_e64 v35, v35, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v75, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.h, v18.l
	v_mov_b16_e64 v140.h, v18.l
	v_mov_b16_e64 v156.h, v18.l
	v_mov_b16_e64 v158.h, v18.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v13, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e64 v139.h, v18.l
	v_mov_b16_e32 v98.h, v18.l
	v_mov_b16_e64 v142.h, v18.l
	v_mov_b16_e64 v145.h, v18.l
	v_mov_b16_e64 v147.h, v18.l
	v_mov_b16_e64 v157.h, v18.l
	v_mov_b16_e64 v149.h, v18.l
	v_mov_b16_e64 v159.h, v18.l
	v_mov_b16_e64 v153.h, v18.l
	v_mov_b16_e64 v151.h, v18.l
	v_mov_b16_e64 v146.h, v18.l
	v_mov_b16_e64 v144.h, v18.l
	v_mov_b16_e64 v148.h, v18.l
	v_mov_b16_e64 v150.h, v18.l
	v_mov_b16_e64 v152.h, v18.l
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v21, s35, 4, v19
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v89, v128, v89, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v96, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v62 offset:36864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v89, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v94, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v51, v25, s3
	v_cndmask_b32_e64 v51, v57, v92, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v8, v69, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v57, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v6, v6, v18 :: v_dual_lshlrev_b32 v57, 16, v59
	v_mul_f32_e32 v12, v12, v18
	v_mul_f32_e32 v10, v10, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v130, v87, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v67, v6, v67, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v62 offset:36880
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v59, v1, v57
	v_mul_f32_e32 v60, v2, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v74, v38
	v_fma_f32 v10, v10, v72, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v3, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v59, v17, v27
	v_fma_f32 v23, v60, v23, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v12, s3
	v_cndmask_b32_e64 v36, v36, v10, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v62 offset:37376
	v_mul_f32_e32 v16, v16, v18
	v_mul_f32_e32 v14, v14, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v28, v23, s2
	v_cndmask_b32_e64 v32, v32, v67, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v61, v24, v29
	v_fma_f32 v16, v16, v78, v42
	v_fma_f32 v14, v14, v76, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v58
	v_mul_f32_e32 v3, v3, v58
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v63, v5, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v16, s3
	v_cndmask_b32_e64 v40, v40, v14, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v6, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v99, v90, v55
	v_fma_f32 v59, v63, v101, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v7, v57
	v_mul_f32_e32 v66, v8, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v29, v24, s2
	v_cndmask_b32_e64 v55, v55, v90, s3
	v_cndmask_b32_e64 v28, v31, v59, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v15, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v64, v102, v32
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v24, v24, v24 :: v_dual_mul_f32 v5, v5, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v58
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v77, v41
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v58
	v_mul_f32_e32 v8, v8, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v65, v103, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v32, v60, s2
	v_cndmask_b32_e64 v41, v41, v15, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v62 offset:37392
	v_mul_f32_e32 v62, v4, v57
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v67, v9, v57
	v_mul_f32_e32 v68, v10, v57
	v_mul_f32_e32 v69, v11, v57
	v_mul_f32_e32 v70, v12, v57
	v_mul_f32_e32 v12, v12, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v131, v86, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v58
	v_mul_f32_e32 v4, v4, v58
	v_mul_f32_e32 v9, v9, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v123, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v10, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v67, v105, v35
	v_fma_f32 v64, v68, v106, v36
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v24, 0, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v55, v12, s2
	v_cndmask_b32_e64 v50, v50, v86, s3
	v_cndmask_b32_e64 v17, v27, v17, s2
	v_cndmask_b32_e64 v32, v35, v63, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v71, v13, v57
	v_mul_f32_e32 v72, v14, v57
	v_mul_f32_e32 v73, v15, v57
	v_mul_f32_e32 v57, v16, v57
	v_mul_f32_e32 v16, v16, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v135, v82, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v58
	v_dual_mul_f32 v15, v15, v58 :: v_dual_mul_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v127, v25
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v12, v12, v12 :: v_dual_mul_f32 v11, v11, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v82, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v132, v85, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v25, v16, s2
	v_cndmask_b32_e64 v52, v52, v87, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v69, v107, v37
	v_fma_f32 v81, v136, v81, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v85, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v16, v16, v16 :: v_dual_mul_f32 v13, v13, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v62, v100, v30
	v_fma_f32 v62, v66, v104, v34
	v_fma_f32 v66, v70, v108, v38
	v_fma_f32 v15, v15, v126, v26
	v_fma_f32 v79, v138, v79, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v30, v58, s2
	v_cndmask_b32_e64 v30, v33, v61, s2
	v_cndmask_b32_e64 v31, v34, v62, s2
	v_cndmask_b32_e64 v33, v36, v64, s2
	v_cndmask_b32_e64 v35, v38, v66, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v25, v27, v27
	v_max_f32_e32 v27, v29, v29
	v_max_f32_e32 v29, v31, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v115, v46
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v31, v33, v33
	v_max_f32_e32 v33, v35, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v119, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v37, v65, s2
	v_cndmask_b32_e64 v4, v46, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v137, v80, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v81, s3
	v_cndmask_b32_e64 v8, v50, v8, s2
	v_cndmask_b32_e64 v15, v26, v15, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v26, v28, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v97, v91, v56
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, v8, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v133, v84, v48
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, 0, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v118, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v79, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, 0, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v120, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v80, s3
	v_cndmask_b32_e64 v7, v49, v7, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v28, v30, v30
	v_max_f32_e32 v30, v32, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v52, v9, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v32, v34, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v91, s3
	v_cndmask_b32_e64 v48, v48, v84, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v71, v109, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v32, 0, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v114, v45
	v_fma_f32 v57, v57, v111, v42
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v28, 0, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v112, v43
	v_fma_f32 v68, v73, v110, v41
	v_fma_f32 v2, v2, v113, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v45, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v134, v83, v47
	v_fma_f32 v6, v6, v117, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v39, v67, s2
	v_cndmask_b32_e64 v38, v42, v57, s2
	v_cndmask_b32_e64 v1, v43, v1, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, 0, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v124, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v41, v68, s2
	v_cndmask_b32_e64 v2, v44, v2, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v125, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v83, s3
	v_cndmask_b32_e64 v6, v48, v6, s2
	v_cndmask_b32_e64 v13, v56, v13, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v34, v36, v36
	v_dual_max_f32 v36, v38, v38 :: v_dual_max_f32 v1, v1, v1
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v129, v88, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v51, v14, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, v37, v37 :: v_dual_max_f32 v2, v2, v2
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v6, v6, v6
	v_max_f32_e32 v17, 0, v17
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v36, 0, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v116, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v26, v26, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v88, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v2, 0, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v47, v5, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.l, v26.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v72, v22, v40
	v_fma_f32 v10, v10, v121, v53
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v12, 0, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v122, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v143
	v_mov_b16_e64 v155.l, v1.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v40, v22, s2
	v_cndmask_b32_e64 v10, v53, v10, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v154.l, v2.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v54, v11, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v23, v23, v23
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v14, 0, v14
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.l, v24.h
	v_and_b32_e32 v54, 1, v155
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v11, v11, v11
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v23, 0, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v140.l, v25.h
	v_and_b32_e32 v53, 1, v154
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v34, 0, v34
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v6, v6, v6
	v_dual_mul_f32 v35, v35, v35 :: v_dual_and_b32 v40, 1, v141
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v156.l, v4.h
	v_add3_u32 v1, v1, v54, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v22, 0, v22
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v17, v17, v17
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v10, 0, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v39, 1, v140
	v_add3_u32 v2, v2, v53, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_mul_f32 v36, v36, v36
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v158.l, v6.h
	v_add3_u32 v24, v24, v40, 0x7fff
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v55, 1, v156
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v28, v28, v28
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v22, v22, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v139.l, v17.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v25, v39, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v98.l, v23.h
	v_mov_b16_e64 v142.l, v27.h
	v_mov_b16_e32 v25.l, v24.h
	v_add3_u32 v1, v4, v55, 0x7fff
	v_and_b32_e32 v4, 1, v158
	v_mov_b16_e32 v24.l, v8.h
	v_mov_b16_e32 v24.h, v18.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v30, v30, v30
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v33, v33, v33 :: v_dual_and_b32 v38, 1, v139
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.l, v28.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v34, v34, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v98
	v_and_b32_e32 v41, 1, v142
	v_add3_u32 v4, v6, v4, 0x7fff
	v_and_b32_e32 v6, 1, v24
	v_mov_b16_e64 v147.l, v30.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v44, 1, v145
	v_mov_b16_e64 v157.l, v3.h
	v_add3_u32 v17, v17, v38, 0x7fff
	v_add3_u32 v26, v26, v42, 0x7fff
	v_add3_u32 v27, v27, v41, 0x7fff
	v_add3_u32 v6, v8, v6, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v23, v37, 0x7fff
	v_mov_b16_e64 v149.l, v32.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v46, 1, v147
	v_mov_b16_e64 v159.l, v5.h
	v_mov_b16_e32 v23.l, v17.h
	v_mov_b16_e32 v27.l, v26.h
	v_and_b32_e32 v56, 1, v157
	v_and_b32_e32 v48, 1, v149
	v_and_b32_e32 v17, 1, v159
	v_mov_b16_e32 v26.l, v7.h
	v_mov_b16_e32 v26.h, v18.l
	v_add3_u32 v3, v3, v56, 0x7fff
	v_mov_b16_e64 v153.l, v35.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v151.l, v34.h
	v_mov_b16_e32 v12.l, v8.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v3, v5, v17, 0x7fff
	v_and_b32_e32 v5, 1, v26
	v_and_b32_e32 v52, 1, v153
	v_mov_b16_e32 v12.h, v18.l
	v_mov_b16_e32 v17.l, v11.h
	v_mov_b16_e32 v17.h, v18.l
	v_add3_u32 v5, v7, v5, 0x7fff
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v7.h, v18.l
	v_and_b32_e32 v50, 1, v151
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v6.l, v5.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v9, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v9.h, v18.l
	v_mov_b16_e64 v146.l, v31.h
	v_mov_b16_e32 v9.l, v3.h
	v_add3_u32 v5, v10, v7, 0x7fff
	v_and_b32_e32 v7, 1, v17
	v_add3_u32 v8, v8, v12, 0x7fff
	v_mov_b16_e32 v10.h, v18.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v16, v16 :: v_dual_and_b32 v45, 1, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v11, v7, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v15, v15 :: v_dual_and_b32 v9, 1, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v18.l
	v_mov_b32_e32 v15, 0x5410
	v_mov_b16_e64 v144.l, v29.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v3, v9, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v13, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v8.h
	v_mov_b16_e32 v13.h, v18.l
	v_and_b32_e32 v43, 1, v144
	v_mov_b16_e32 v5.l, v3.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v14, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v14.h, v18.l
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v10.l, v3.h
	v_mov_b16_e64 v148.l, v33.h
	v_add3_u32 v28, v28, v44, 0x7fff
	v_mov_b16_e64 v150.l, v22.h
	v_add3_u32 v8, v8, v13, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v30, v30, v46, 0x7fff
	v_mov_b32_e32 v16, 0x7632
	v_add3_u32 v31, v31, v45, 0x7fff
	v_mov_b16_e64 v152.l, v36.h
	v_add3_u32 v3, v3, v10, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v32, v32, v48, 0x7fff
	v_mov_b16_e32 v31.l, v30.h
	v_and_b32_e32 v49, 1, v150
	v_add3_u32 v34, v34, v50, 0x7fff
	v_add3_u32 v9, v9, v11, 0x7fff
	v_and_b32_e32 v11, 1, v14
	v_cndmask_b32_e32 v18, v4, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v4, vcc_lo
	v_cndmask_b32_e32 v4, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v16, vcc_lo
	v_add3_u32 v0, v12, v11, 0x7fff
	v_mov_b16_e32 v0.l, v8.h
	v_cndmask_b32_e32 v8, v27, v23, vcc_lo
	v_add3_u32 v29, v29, v43, 0x7fff
	v_mov_b16_e32 v29.l, v28.h
	v_and_b32_e32 v47, 1, v148
	v_add3_u32 v22, v22, v49, 0x7fff
	v_add3_u32 v35, v35, v52, 0x7fff
	v_mov_b16_e32 v22.l, v34.h
	v_cndmask_b32_e32 v10, v29, v25, vcc_lo
	v_add3_u32 v33, v33, v47, 0x7fff
	v_mov_b16_e32 v33.l, v32.h
	v_and_b32_e32 v51, 1, v152
	v_mov_b16_e32 v3.l, v9.h
	v_dual_cndmask_b32 v16, v6, v1 :: v_dual_cndmask_b32 v1, v1, v6
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v15, 8, v15
	v_add3_u32 v36, v36, v51, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_dual_cndmask_b32 v12, v22, v31 :: v_dual_cndmask_b32 v13, v31, v22
	v_dual_cndmask_b32 v22, v3, v5 :: v_dual_cndmask_b32 v3, v5, v3
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v6
	v_cndmask_b32_e32 v9, v23, v27, vcc_lo
	v_cndmask_b32_e32 v11, v25, v29, vcc_lo
	v_cndmask_b32_e32 v17, v33, v36, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v5, v5, 4, v5
	v_dual_cndmask_b32 v15, v0, v7 :: v_dual_cndmask_b32 v0, v7, v0
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e32 v14, v36, v33, vcc_lo
	v_permlanex16_b32 v6, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v17, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x5040504, v4
	v_and_b32_e32 v23, 0x7060706, v5
	v_permlanex16_b32 v24, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v17
	v_perm_b32 v1, v6, v8, v23
	v_perm_b32 v2, v7, v10, v17
	v_perm_b32 v3, v7, v10, v23
	v_perm_b32 v6, v11, v14, v17
	v_perm_b32 v7, v11, v14, v23
	v_perm_b32 v10, v24, v16, v17
	v_perm_b32 v11, v24, v16, v23
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v20, v19, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v4, v9, v12, v17
	v_perm_b32 v5, v9, v12, v23
	v_perm_b32 v8, v13, v18, v17
	v_perm_b32 v9, v13, v18, v23
	v_perm_b32 v12, v25, v22, v17
	v_perm_b32 v14, v26, v15, v17
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v20, v21, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v13, v25, v22, v23
	v_perm_b32 v15, v26, v15, v23
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v16, s[0:3], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v17, s[0:3], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 231
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15828
; TotalNumSgprs: 49
; NumVgprs: 231
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     231
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
