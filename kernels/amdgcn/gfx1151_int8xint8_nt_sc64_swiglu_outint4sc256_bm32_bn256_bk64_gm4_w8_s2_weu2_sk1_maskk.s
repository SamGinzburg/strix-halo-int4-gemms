	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[28:31], s[0:1], 0x20
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s43, s[0:1], 0x38
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v34, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v38, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v9, 4, v34
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v4, 0xc0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v15, 3, v38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v37, 15, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v35, 0xf0, v0
	v_lshlrev_b32_e32 v110, 5, v0
	v_and_b32_e32 v109, 28, v36
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s16, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[10:11], null, s43, v2, v[9:10]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_xor_b32 s8, s2, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[11:12], null, s43, v4, v[9:10]
	v_lshl_add_u32 v16, s43, 6, v10
	v_lshl_add_u32 v17, s43, 7, v10
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s6
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s8
	s_sub_i32 s5, s5, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s16, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	v_rcp_iflag_f32_e32 v1, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s43, v3
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s43, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s16, s5, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s4, s17
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s42, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s33, s7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s16, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s42, v9
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s17, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s5, s4
.Ltmp19:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s40, s35, 1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s42, v15
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s41, s16, 6
.Ltmp21:
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	s_add_i32 s7, s17, s35
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s44, s17, s43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s43, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s6, s34, s43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s44, s44, s42
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	s_mul_i32 s45, s7, s43
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s43, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v18, v1, v15, s6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v2, s44, v16
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	s_add_i32 s45, s45, s42
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v3, s44, v17
	v_add_nc_u32_e32 v4, s44, v11
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v5, s45, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s2
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v6, s45, v16
	v_add_nc_u32_e32 v7, s45, v17
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v1, s44, v10
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v8, s45, v11
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v12, s42, v18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v13, 0x80000000, v3, s4
	v_cndmask_b32_e64 v14, 0x80000000, v4, s4
	s_and_b32 s25, s25, 0xffff
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e64 v19, 0x80000000, v5, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x5
	buffer_load_b128 v[2:5], v2, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v13, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v14, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v19, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v6, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v7, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[6:7], v12, s[8:11], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[48:51], v1, s[24:27], 0 offen
	buffer_load_b128 v[52:55], v8, s[24:27], 0 offen
	v_lshlrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v13, 48, v36
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v19, 16, v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v8, 48, v0
	v_lshlrev_b32_e32 v14, 6, v37
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v12, v12, v13
	v_or_b32_e32 v13, s34, v37
	v_or_b32_e32 v56, s34, v19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v8, v1, v8
	v_or_b32_e32 v33, s17, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v20, 0, v12
	v_mul_lo_u32 v111, v13, s41
	v_mul_lo_u32 v112, v56, s41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v19, 0, v8
	s_mov_b32 s16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_lt_i32 s5, 0x80
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v20, v[2:5] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v20, v[21:24] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v20, v[25:28] offset:12288
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	s_waitcnt vmcnt(5)
	ds_store_b128 v20, v[29:32] offset:16384
	s_waitcnt vmcnt(4)
	ds_store_b128 v20, v[40:43] offset:20480
	s_waitcnt vmcnt(3)
	ds_store_b128 v20, v[44:47] offset:24576
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v19, v[6:7] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v20, v[48:51]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v20, v[52:55] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_or_b32 v1, v1, 48, v14
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v2, 2, v35
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v3, 0x1c00, v110, v1
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 32, v110
	v_xor_b32_e32 v5, 16, v1
	v_xor_b32_e32 v6, 32, v1
	v_xor_b32_e32 v7, 48, v1
	v_xor_b32_e32 v8, 16, v3
	v_xor_b32_e32 v12, 32, v3
	v_xor_b32_e32 v13, 48, v3
	v_add3_u32 v30, 0, v2, v4
	v_lshlrev_b32_e32 v31, 1, v35
	v_add_nc_u32_e32 v22, 0, v1
	v_add_nc_u32_e32 v23, 0, v5
	v_add_nc_u32_e32 v24, 0, v6
	v_add_nc_u32_e32 v25, 0, v7
	v_add_nc_u32_e32 v26, 0, v3
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v27, 0, v8
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v4, s19 :: v_dual_add_nc_u32 v21, s35, v33
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v28, 0, v12
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v29, 0, v13
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v30, v30, v109
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v31, 0, v31
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s1, s41, 2
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_add_i32 s1, s1, -2
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s17, s16, 1
	s_mov_b32 s0, s42
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s18, s17, s3
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s0, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_lshl_b32 s42, s18, 6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_lshl_b32 s18, s17, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s42, v15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v13, s42, v18
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s21, s19, s40
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s20, s44, s18
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	s_add_i32 s18, s45, s18
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s43, v12
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s19, s41
	s_cselect_b32 s0, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s16, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	s_mov_b32 s16, s17
	buffer_load_b64 v[12:13], v12, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[177:180], v22 offset:33792
	ds_load_b128 v[181:184], v23 offset:33792
	ds_load_b128 v[105:108], v22 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[129:132], v26
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[161:164], v23 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[133:136], v27
	ds_load_b128 v[145:148], v26 offset:8192
	ds_load_b128 v[149:152], v27 offset:8192
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[169:172], v26 offset:16384
	ds_load_b128 v[173:176], v27 offset:16384
	ds_load_b128 v[185:188], v26 offset:24576
	ds_load_b128 v[189:192], v27 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[129:132], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[145:148], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[133:136], v[161:164], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[133:136], v[181:184], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[145:148], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[149:152], v[181:184], v[137:144] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[185:188], v[105:108], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[129:136], v[149:152], v[161:164], v[129:136] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[145:152], v[169:172], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[189:192], v[161:164], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[173:176], v[161:164], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[169:172], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[173:176], v[181:184], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[177:180], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[105:108], v24 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[177:180], v28
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[185:188], v28 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[181:184], v[169:176] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[181:184], v24 offset:33792
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[177:180], v[105:108], v[113:120] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[185:188], v[105:108], v[153:160] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[177:180], v[181:184], v[121:128] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[177:180], v28 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[181:184], v[169:176] neg_lo:[1,1,0]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[185:188], v29 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[177:180], v[105:108], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[181:184], v[137:144] neg_lo:[1,1,0]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[177:180], v28 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[177:180], v[105:108], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[177:180], v[181:184], v[161:168] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[105:108], v25 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[177:180], v29
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[181:184], v25 offset:33792
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[185:188], v[105:108], v[153:160] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[177:180], v[105:108], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[177:180], v[181:184], v[121:128] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[177:180], v29 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[181:184], v[169:176] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v198, v153
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v32, v116
	v_cvt_f32_i32_e32 v205, v121
	v_cvt_f32_i32_e32 v209, v125
	v_cvt_f32_i32_e32 v43, v115
	v_cvt_f32_i32_e32 v48, v114
	v_cvt_f32_i32_e32 v202, v124
	v_cvt_f32_i32_e32 v203, v123
	v_cvt_f32_i32_e32 v204, v122
	v_cvt_f32_i32_e32 v206, v128
	v_cvt_f32_i32_e32 v207, v127
	v_cvt_f32_i32_e32 v208, v126
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v199, v156
	v_cvt_f32_i32_e32 v200, v155
	v_cvt_f32_i32_e32 v201, v154
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[177:180], v[105:108], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[181:184], v[137:144] neg_lo:[1,1,0]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[177:180], v29 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v169, v169
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v190, v129
	v_cvt_f32_i32_e32 v214, v141
	v_cvt_f32_i32_e32 v194, v133
	v_cvt_f32_i32_e32 v210, v137
	v_cvt_f32_i32_e32 v191, v134
	v_cvt_f32_i32_e32 v192, v135
	v_cvt_f32_i32_e32 v193, v136
	v_cvt_f32_i32_e32 v195, v132
	v_cvt_f32_i32_e32 v196, v131
	v_cvt_f32_i32_e32 v197, v130
	v_cvt_f32_i32_e32 v215, v140
	v_cvt_f32_i32_e32 v216, v139
	v_cvt_f32_i32_e32 v217, v138
	v_cvt_f32_i32_e32 v211, v142
	v_cvt_f32_i32_e32 v212, v143
	v_cvt_f32_i32_e32 v213, v144
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v174, v174
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[177:180], v[105:108], v[145:152] neg_lo:[1,1,0]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v105, s42, v9
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v108, s20, v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[161:168], v[177:180], v[181:184], v[161:168] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v113
	v_cvt_f32_i32_e32 v181, v117
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s43, v105
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v105, v33, s21, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v107, v21, s21, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v106, v112, s19, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v178, v120
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v113, 0x80000000, v108, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v108, s20, v17
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v141, 0x80000000, v107, s0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v107, s20, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v105, v105, s[36:39], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v117, 0x80000000, v108, vcc_lo
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v108, s20, v11
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v179, v119
	v_cvt_f32_i32_e32 v180, v118
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v182, v148
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v121, 0x80000000, v108, vcc_lo
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v108, s18, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v183, v147
	v_cvt_f32_i32_e32 v184, v146
	v_cvt_f32_i32_e32 v185, v145
	v_cvt_f32_i32_e32 v186, v152
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v125, 0x80000000, v108, vcc_lo
	.loc	1 412 39 is_stmt 0              ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v108, s18, v16
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v187, v151
	v_cvt_f32_i32_e32 v188, v150
	v_cvt_f32_i32_e32 v189, v149
	v_cvt_f32_i32_e32 v164, v164
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v129, 0x80000000, v108, vcc_lo
	.loc	1 412 39 is_stmt 0              ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v108, s18, v17
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v133, 0x80000000, v108, vcc_lo
	.loc	1 412 39 is_stmt 0              ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v108, s18, v11
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v137, 0x80000000, v108, vcc_lo
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v30, v105 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v105, v111, s19, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	s_clause 0x1
	buffer_load_u16 v218, v105, s[4:7], 0 offen
	buffer_load_u16 v219, v106, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x7
	buffer_load_b128 v[105:108], v107, s[24:27], 0 offen
	buffer_load_b128 v[113:116], v113, s[24:27], 0 offen
	buffer_load_b128 v[117:120], v117, s[24:27], 0 offen
	buffer_load_b128 v[121:124], v121, s[24:27], 0 offen
	buffer_load_b128 v[125:128], v125, s[24:27], 0 offen
	buffer_load_b128 v[129:132], v129, s[24:27], 0 offen
	buffer_load_b128 v[133:136], v133, s[24:27], 0 offen
	buffer_load_b128 v[137:140], v137, s[24:27], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v220, v141, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[141:144], v31 offset:35328
	ds_load_b128 v[145:148], v31 offset:35344
	ds_load_b128 v[149:152], v31 offset:34816
	ds_load_b128 v[153:156], v31 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v220, 16, v220
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v30, v220 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v20, v[105:108]
	ds_store_b128 v20, v[113:116] offset:4096
	ds_store_b128 v20, v[117:120] offset:8192
	ds_store_b128 v20, v[121:124] offset:12288
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_store_b128 v20, v[125:128] offset:16384
	ds_store_b128 v20, v[129:132] offset:20480
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[105:108], v31 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v113, 16, v218
	v_lshlrev_b32_e32 v114, 16, v219
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v19, v[12:13] offset:32768
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_store_b128 v20, v[133:136] offset:24576
	ds_store_b128 v20, v[137:140] offset:28672
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v118, v149, v113 :: v_dual_mul_f32 v127, v156, v114
	v_mul_f32_e32 v128, v155, v114
	v_mul_f32_e32 v130, v153, v114
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v119, v152, v114 :: v_dual_fmac_f32 v96, v118, v177
	v_mul_f32_e32 v123, v156, v113
	v_mul_f32_e32 v124, v155, v113
	v_mul_f32_e32 v126, v153, v113
	v_mul_f32_e32 v153, v143, v113
	v_mul_f32_e32 v143, v143, v114
	v_mul_f32_e32 v115, v152, v113
	v_mul_f32_e32 v116, v151, v113
	v_mul_f32_e32 v117, v150, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v155, v108, v113 :: v_dual_mul_f32 v222, v106, v114
	v_dual_mul_f32 v156, v107, v113 :: v_dual_mul_f32 v223, v105, v114
	v_mul_f32_e32 v218, v106, v113
	v_dual_mul_f32 v219, v105, v113 :: v_dual_mul_f32 v220, v108, v114
	v_mul_f32_e32 v221, v107, v114
	ds_load_b128 v[105:108], v31 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v151, v114
	v_mul_f32_e32 v121, v150, v114
	v_dual_mul_f32 v122, v149, v114 :: v_dual_mul_f32 v125, v154, v113
	v_mul_f32_e32 v129, v154, v114
	v_mul_f32_e32 v131, v146, v113
	v_mul_f32_e32 v132, v147, v113
	v_dual_mul_f32 v149, v148, v113 :: v_dual_mul_f32 v146, v146, v114
	v_dual_mul_f32 v147, v147, v114 :: v_dual_mul_f32 v150, v145, v113
	v_mul_f32_e32 v148, v148, v114
	v_dual_mul_f32 v145, v145, v114 :: v_dual_mul_f32 v152, v144, v113
	v_dual_mul_f32 v151, v141, v113 :: v_dual_mul_f32 v144, v144, v114
	v_dual_mul_f32 v141, v141, v114 :: v_dual_mul_f32 v154, v142, v113
	v_mul_f32_e32 v142, v142, v114
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v224, v108, v113
	v_dual_mul_f32 v225, v107, v113 :: v_dual_mul_f32 v228, v108, v114
	v_dual_mul_f32 v226, v106, v113 :: v_dual_mul_f32 v229, v107, v114
	v_dual_mul_f32 v227, v105, v113 :: v_dual_mul_f32 v230, v106, v114
	v_mul_f32_e32 v231, v105, v114
	ds_load_b128 v[105:108], v31 offset:35344
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v95, v117, v48
	v_dual_fmac_f32 v93, v116, v43 :: v_dual_fmac_f32 v104, v151, v190
	v_fmac_f32_e32 v94, v115, v32
	v_dual_fmac_f32 v92, v126, v181 :: v_dual_fmac_f32 v91, v125, v180
	v_dual_fmac_f32 v90, v124, v179 :: v_dual_fmac_f32 v89, v123, v178
	v_dual_fmac_f32 v88, v154, v197 :: v_dual_fmac_f32 v87, v153, v196
	v_dual_fmac_f32 v86, v152, v195 :: v_dual_fmac_f32 v85, v150, v194
	v_dual_fmac_f32 v102, v132, v192 :: v_dual_fmac_f32 v103, v131, v191
	v_fmac_f32_e32 v84, v122, v205
	v_dual_fmac_f32 v101, v149, v193 :: v_dual_fmac_f32 v82, v119, v202
	v_dual_fmac_f32 v83, v121, v204 :: v_dual_fmac_f32 v80, v130, v209
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v232, v106, v113
	v_mul_f32_e32 v233, v107, v113
	v_dual_mul_f32 v234, v108, v113 :: v_dual_mul_f32 v235, v106, v114
	v_mul_f32_e32 v236, v107, v114
	v_dual_mul_f32 v237, v108, v114 :: v_dual_mul_f32 v238, v105, v113
	v_mul_f32_e32 v239, v105, v114
	ds_load_b128 v[105:108], v31 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v81, v120, v203 :: v_dual_fmac_f32 v100, v141, v210
	v_dual_fmac_f32 v79, v129, v208 :: v_dual_fmac_f32 v78, v128, v207
	v_dual_fmac_f32 v77, v127, v206 :: v_dual_fmac_f32 v42, v142, v217
	v_dual_fmac_f32 v41, v143, v216 :: v_dual_fmac_f32 v40, v144, v215
	v_dual_fmac_f32 v39, v145, v214 :: v_dual_fmac_f32 v98, v147, v212
	v_dual_fmac_f32 v99, v146, v211 :: v_dual_fmac_f32 v76, v219, v185
	v_dual_fmac_f32 v97, v148, v213 :: v_dual_fmac_f32 v74, v218, v184
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v66, v226, v188 :: v_dual_fmac_f32 v75, v232, v158
	v_dual_fmac_f32 v64, v225, v187 :: v_dual_fmac_f32 v71, v234, v160
	v_dual_fmac_f32 v58, v238, v157 :: v_dual_fmac_f32 v55, v220, v164
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v240, v105, v113
	v_mul_f32_e32 v241, v108, v113
	v_mul_f32_e32 v242, v107, v113
	v_mul_f32_e32 v113, v106, v113
	v_mul_f32_e32 v105, v105, v114
	v_mul_f32_e32 v108, v108, v114
	v_mul_f32_e32 v107, v107, v114
	v_mul_f32_e32 v106, v106, v114
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v70, v156, v183 :: v_dual_fmac_f32 v61, v113, v201
	v_dual_fmac_f32 v72, v155, v182 :: v_dual_fmac_f32 v59, v241, v199
	v_dual_fmac_f32 v68, v227, v189 :: v_dual_fmac_f32 v49, v240, v198
	v_dual_fmac_f32 v62, v224, v186 :: v_dual_fmac_f32 v73, v233, v159
	v_dual_fmac_f32 v60, v242, v200 :: v_dual_fmac_f32 v57, v223, v161
	v_dual_fmac_f32 v56, v222, v162 :: v_dual_fmac_f32 v53, v231, v165
	v_dual_fmac_f32 v54, v221, v163 :: v_dual_fmac_f32 v47, v106, v170
	v_dual_fmac_f32 v52, v230, v166 :: v_dual_fmac_f32 v51, v229, v167
	v_dual_fmac_f32 v50, v228, v168 :: v_dual_fmac_f32 v69, v105, v169
	v_dual_fmac_f32 v46, v107, v171 :: v_dual_fmac_f32 v45, v108, v172
	v_dual_fmac_f32 v44, v239, v173 :: v_dual_fmac_f32 v65, v236, v175
	v_fmac_f32_e32 v67, v235, v174
	v_fmac_f32_e32 v63, v237, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v104, 0
.LBB0_4:                                ; %._crit_edge
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v48, 6, v0
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v43, 0xe0, v0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v48, 3, v14
	s_barrier
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v2, 0, v1
	v_xad_u32 v3, v1, 16, 0
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v105, v1, 48, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshl_or_b32 v106, v43, 5, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[29:32], v2 offset:32768
	ds_load_b128 v[25:28], v2 offset:33792
	ds_load_b128 v[21:24], v3 offset:32768
	ds_load_b128 v[17:20], v3 offset:33792
	ds_load_b128 v[13:16], v4 offset:32768
	ds_load_b128 v[9:12], v4 offset:33792
	ds_load_b128 v[5:8], v105 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[1:4], v105 offset:33792
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v105, 0, 1, s2
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v130, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v107, 48, v106
	v_xor_b32_e32 v108, 32, v106
	v_xor_b32_e32 v113, 16, v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v105
	v_add_nc_u32_e32 v176, 0, v106
	v_add_nc_u32_e32 v173, 0, v107
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v175, 0, v108
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v174, 0, v113
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_mov_b32 s4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[105:108], v176
	ds_load_b128 v[113:116], v176 offset:8192
	ds_load_b128 v[118:121], v175 offset:8192
	ds_load_b128 v[122:125], v175
	ds_load_b128 v[126:129], v174 offset:8192
	ds_load_b128 v[163:166], v174
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v146, s11 :: v_dual_mov_b32 v145, s10
	v_dual_mov_b32 v144, s9 :: v_dual_mov_b32 v143, s8
	v_dual_mov_b32 v142, s7 :: v_dual_mov_b32 v141, s6
	v_dual_mov_b32 v140, s5 :: v_dual_mov_b32 v139, s4
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[167:170], v173
	ds_load_b128 v[177:180], v173 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[105:108], v[29:32], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[113:116], v[29:32], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[105:108], v[25:28], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[113:116], v[25:28], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[163:166], v[21:24], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[126:129], v[21:24], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[17:20], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[17:20], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[122:125], v[13:16], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[118:121], v[13:16], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[122:125], v[9:12], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[118:121], v[9:12], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[167:170], v[5:8], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[177:180], v[5:8], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[1:4], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[177:180], v[1:4], v[139:146] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v120, v151
	v_cvt_f32_i32_e32 v122, v152
	v_cvt_f32_i32_e32 v124, v153
	v_cvt_f32_i32_e32 v126, v154
	v_cvt_f32_i32_e32 v125, v130
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v129, v132
	v_cvt_f32_i32_e32 v132, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v128, v135
	v_cvt_f32_i32_e32 v130, v136
	v_cvt_f32_i32_e32 v131, v137
	v_cvt_f32_i32_e32 v133, v155
	v_cvt_f32_i32_e32 v135, v156
	v_cvt_f32_i32_e32 v137, v157
	v_cvt_f32_i32_e32 v138, v158
	v_cvt_f32_i32_e32 v118, v159
	v_cvt_f32_i32_e32 v119, v160
	v_cvt_f32_i32_e32 v121, v161
	v_cvt_f32_i32_e32 v123, v162
	v_cvt_f32_i32_e32 v136, v139
	v_cvt_f32_i32_e32 v105, v140
	v_cvt_f32_i32_e32 v106, v141
	v_cvt_f32_i32_e32 v107, v142
	v_cvt_f32_i32_e32 v108, v143
	v_cvt_f32_i32_e32 v139, v144
	v_cvt_f32_i32_e32 v140, v145
	v_cvt_f32_i32_e32 v141, v146
	v_cvt_f32_i32_e32 v142, v147
	v_cvt_f32_i32_e32 v143, v148
	v_cvt_f32_i32_e32 v144, v149
	v_cvt_f32_i32_e32 v145, v150
.LBB0_6:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v114, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[113:116], v176 offset:16384
	ds_load_b128 v[146:149], v176 offset:24576
	ds_load_b128 v[150:153], v175 offset:24576
	ds_load_b128 v[190:193], v175 offset:16384
	ds_load_b128 v[194:197], v174 offset:24576
	ds_load_b128 v[198:201], v174 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v181, s11 :: v_dual_mov_b32 v180, s10
	v_dual_mov_b32 v179, s9 :: v_dual_mov_b32 v178, s8
	v_dual_mov_b32 v177, s7 :: v_dual_mov_b32 v176, s6
	v_dual_mov_b32 v175, s5 :: v_dual_mov_b32 v174, s4
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[202:205], v173 offset:16384
	ds_load_b128 v[206:209], v173 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[113:116], v[29:32], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[164:171], v[146:149], v[29:32], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[113:116], v[25:28], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[146:149], v[25:28], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[198:201], v[21:24], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[194:197], v[21:24], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[198:201], v[17:20], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[194:197], v[17:20], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[190:193], v[13:16], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[150:153], v[13:16], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[190:193], v[9:12], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[150:153], v[9:12], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[202:205], v[5:8], v[156:163] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[164:171], v[206:209], v[5:8], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[202:205], v[1:4], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[206:209], v[1:4], v[174:181] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v150, v156
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v157, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v147, v160
	v_cvt_f32_i32_e32 v149, v161
	v_cvt_f32_i32_e32 v152, v162
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v117, v164
	v_cvt_f32_i32_e32 v156, v165
	v_cvt_f32_i32_e32 v160, v166
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v165, v168
	v_cvt_f32_i32_e32 v158, v169
	v_cvt_f32_i32_e32 v161, v170
	v_cvt_f32_i32_e32 v162, v171
	v_cvt_f32_i32_e32 v164, v182
	v_cvt_f32_i32_e32 v166, v183
	v_cvt_f32_i32_e32 v168, v184
	v_cvt_f32_i32_e32 v169, v185
	v_cvt_f32_i32_e32 v146, v186
	v_cvt_f32_i32_e32 v148, v187
	v_cvt_f32_i32_e32 v151, v188
	v_cvt_f32_i32_e32 v154, v189
	v_cvt_f32_i32_e32 v167, v174
	v_cvt_f32_i32_e32 v116, v175
	v_cvt_f32_i32_e32 v115, v176
	v_cvt_f32_i32_e32 v114, v177
	v_cvt_f32_i32_e32 v113, v178
	v_cvt_f32_i32_e32 v170, v179
	v_cvt_f32_i32_e32 v171, v180
	v_cvt_f32_i32_e32 v172, v181
.LBB0_8:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s42, 6
	s_mov_b32 s39, 0x31027000
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s0, s40, v[33:34]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v111, s0, 1
	v_add_lshl_u32 v3, v112, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_mov_b32 s36, s12
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s13, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v17, v2, s[36:39], 0 offen
	buffer_load_u16 v22, v3, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 32, v110
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v4, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshl_add_u32 v4, v35, 2, 0
	v_lshl_add_u32 v19, v35, 1, 0
.Ltmp22:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v34, 5, v34
	v_and_b32_e32 v36, 0x100, v36
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp23:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v20, v4, v3, v109
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v21, v1, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v19 offset:35328
	ds_load_b128 v[1:4], v19 offset:35344
	ds_load_b128 v[13:16], v19 offset:34816
	ds_load_b128 v[9:12], v19 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp24:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp25:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v5, v18
	v_mul_f32_e32 v23, v2, v18
	v_dual_mul_f32 v25, v4, v18 :: v_dual_mul_f32 v2, v2, v17
	v_dual_mul_f32 v24, v3, v18 :: v_dual_mul_f32 v5, v5, v17
	v_mul_f32_e32 v3, v3, v17
	v_mul_f32_e32 v4, v4, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v139, v99
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v16, v18
	v_mul_f32_e32 v30, v9, v18
	v_mul_f32_e32 v31, v10, v18
	v_mul_f32_e32 v32, v11, v18
	v_dual_mul_f32 v33, v12, v18 :: v_dual_mul_f32 v10, v10, v17
	v_mul_f32_e32 v109, v6, v18
	v_mul_f32_e32 v9, v9, v17
	v_mul_f32_e32 v11, v11, v17
	v_mul_f32_e32 v12, v12, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v136, v100
	v_fma_f32 v3, v3, v140, v98
	v_fma_f32 v4, v4, v141, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v99, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v15, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v123, v12, v123, v77
	v_fma_f32 v121, v11, v121, v78
	v_fma_f32 v119, v10, v119, v79
	v_fma_f32 v118, v9, v118, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v100, v5, s2
	v_cndmask_b32_e64 v98, v98, v3, s2
	v_cndmask_b32_e64 v97, v97, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v26, v13, v18 :: v_dual_mul_f32 v15, v15, v17
	v_dual_mul_f32 v27, v14, v18 :: v_dual_mul_f32 v16, v16, v17
	v_mul_f32_e32 v13, v13, v17
	v_mul_f32_e32 v14, v14, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v125, v104
	v_fma_f32 v23, v23, v128, v103
	v_fma_f32 v24, v24, v130, v102
	v_fma_f32 v25, v25, v131, v101
	v_fma_f32 v29, v29, v144, v93
	v_fma_f32 v28, v28, v145, v94
	v_fma_f32 v126, v33, v126, v89
	v_fma_f32 v32, v32, v124, v90
	v_fma_f32 v31, v31, v122, v91
	v_fma_f32 v125, v27, v143, v95
	v_fma_f32 v30, v30, v120, v92
	v_fma_f32 v120, v15, v137, v81
	v_fma_f32 v122, v16, v138, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v104, v22, s2
	v_cndmask_b32_e64 v22, v103, v23, s2
	v_cndmask_b32_e64 v15, v102, v24, s2
	v_cndmask_b32_e64 v16, v101, v25, s2
	v_cndmask_b32_e64 v94, v94, v28, s2
	v_cndmask_b32_e64 v93, v93, v29, s2
	v_cndmask_b32_e64 v33, v91, v31, s2
	v_cndmask_b32_e64 v32, v90, v32, s2
	v_cndmask_b32_e64 v31, v89, v126, s2
	v_cndmask_b32_e64 v23, v79, v119, s2
	v_cndmask_b32_e64 v24, v78, v121, s2
	v_cndmask_b32_e64 v25, v77, v123, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v133, v84
	v_fma_f32 v124, v14, v135, v83
	v_fma_f32 v26, v26, v142, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v92, v30, s2
	v_cndmask_b32_e64 v30, v81, v120, s2
	v_cndmask_b32_e64 v14, v84, v13, s2
	v_cndmask_b32_e64 v13, v80, v118, s2
	v_cndmask_b32_e64 v96, v96, v26, s2
	v_cndmask_b32_e64 v95, v95, v125, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v109, v127, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v82, v122, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v19 offset:35328
	ds_load_b128 v[2:5], v19 offset:35344
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v110, v7, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v88, v109, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[101:104], v19 offset:34832
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v129, v87
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v87, v110, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[87:90], v19 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v83, v124, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v77, v9, v18
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v78, v3, v18
	v_mul_f32_e32 v79, v4, v18
	v_mul_f32_e32 v80, v5, v18
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v91, v103, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v77, v77, v117, v49
	v_fma_f32 v78, v78, v158, v75
	v_fma_f32 v117, v79, v161, v73
	v_fma_f32 v118, v80, v162, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v49, v77, s2
	v_cndmask_b32_e64 v79, v75, v78, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v78, v73, v117, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v103, v103, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v71, v118, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v103, v103, v151, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v51, v103, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v79
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v111, v8, v18
	v_mul_f32_e32 v112, v1, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v83, v90, v18
	v_mul_f32_e32 v109, v104, v18
	v_mul_f32_e32 v104, v104, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v111, v132, v86
	v_fma_f32 v112, v112, v134, v85
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v83, v83, v159, v72
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v81, v87, v18
	v_mul_f32_e32 v82, v88, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v86, v111, s2
	v_cndmask_b32_e64 v20, v85, v112, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v85, v101, v18
	v_mul_f32_e32 v86, v102, v18
	v_mul_f32_e32 v110, v10, v18
	v_mul_f32_e32 v111, v11, v18
	v_mul_f32_e32 v112, v12, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v72, v83, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v84, v89, v18
	v_mul_f32_e32 v18, v2, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v104, v104, v154, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v165, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v58, v18, s2
	v_cndmask_b32_e64 v18, v50, v104, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v9, v9, v17
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v4, v17
	v_mul_f32_e32 v88, v88, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v81, v81, v150, v76
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v3, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v167, v69
	v_fma_f32 v4, v4, v171, v65
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v5, v17
	v_mul_f32_e32 v90, v90, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v170, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v69, v9, s2
	v_cndmask_b32_e64 v9, v65, v4, s2
	v_cndmask_b32_e64 v4, v76, v81, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v172, v63
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v67, v3, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v101, v101, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v102, v102, v17 :: v_dual_mul_f32 v83, 0xbfb8aa3b, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v86, v86, v149, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v63, v5, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v82, v82, v153, v74
	v_fma_f32 v90, v90, v169, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v66, v86, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v85, v85, v147, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v87, v87, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v102, v102, v148, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v74, v82, s2
	v_cndmask_b32_e64 v55, v55, v90, s2
	v_cndmask_b32_e64 v67, v68, v85, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v75
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v91, v91, v152, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v84, v84, v157, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v83, 0, 0x42800000, s8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v88, v88, v166, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v64, v91, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v87, v87, v164, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v70, v84, s2
	v_cndmask_b32_e64 v52, v52, v102, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v70, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v85, 0xbfb8aa3b, v63
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v110, v110, v156, v61
	v_fma_f32 v109, v109, v155, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v102, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v83, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v110, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v74, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v89, v89, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v109, s2
	v_cndmask_b32_e64 v57, v57, v87, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v91, 0xbfb8aa3b, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v88, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v111, v111, v160, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v91
	v_mul_f32_e32 v87, 0xbfb8aa3b, v67
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v112, v112, v163, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v83, v83
	v_cndmask_b32_e64 v91, 0, 0x42800000, s16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v89, v89, v168, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v60, v111, s2
	v_cndmask_b32_e64 v59, v59, v112, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v84, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v111, 0xbfb8aa3b, v52
	v_mul_f32_e32 v103, 0xbfb8aa3b, v56
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v68
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v82
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v80 :: v_dual_fmac_f32 v91, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v101, v101, v146, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v89, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v89, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v68, 0, 0x42800000, s4
	v_cndmask_b32_e64 v82, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v111
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v83, v83, v125
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v101, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v87
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v89
	v_cndmask_b32_e64 v111, 0, 0x42800000, s25
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v75
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v5 :: v_dual_add_f32 v83, 1.0, v83
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s16
	v_mul_f32_e32 v64, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v87, 0, 0x42800000, s12
	v_cndmask_b32_e64 v89, 0, 0x42800000, s18
	v_dual_mul_f32 v112, 0xbfb8aa3b, v53 :: v_dual_fmac_f32 v111, 0xbfb8aa3b, v52
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v91, v91, v133
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v133, null, v83, v83, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v104, 0xbfb8aa3b, v57 :: v_dual_fmac_f32 v87, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v64
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v112
	v_exp_f32_e32 v111, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v181, v133
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v76, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v54
	v_dual_mul_f32 v88, 0xbfb8aa3b, v58 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v64, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v103
	v_cndmask_b32_e64 v112, 0, 0x42800000, s24
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s25
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v68, v68, v121
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v72
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v76
	v_cndmask_b32_e64 v103, 0, 0x42800000, s21
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s12
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v111, v111, v142
	v_fmac_f32_e32 v112, 0xbfb8aa3b, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v209, -v133, v181, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v86, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v109, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v72, 0, 0x42800000, s6
	v_cndmask_b32_e64 v76, 0, 0x42800000, s11
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v56
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v87, v87, v129
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v111, 1.0, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v112, v112
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v181, v209, v181
	v_div_scale_f32 v125, null, v68, v68, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v81
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v70
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v109
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v85
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v76, 0xbfb8aa3b, v69 :: v_dual_add_f32 v87, 1.0, v87
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s24
	v_ldexp_f32 v51, v51, v118
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v177, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, s10
	v_cndmask_b32_e64 v70, 0, 0x42800000, s5
	v_cndmask_b32_e64 v109, 0, 0x42800000, s27
	v_exp_f32_e32 v50, v50
	v_cndmask_b32_e64 v85, 0, 0x42800000, s14
	v_ldexp_f32 v64, v64, v119
	v_ldexp_f32 v112, v112, v141
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v72, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v141, null, v87, v87, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v90, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v81, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v104
	v_exp_f32_e32 v103, v103
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v109, 0xbfb8aa3b, v18
	v_dual_mul_f32 v110, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v85, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v185, v141
	v_fma_f32 v205, -v125, v177, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v104, 0, 0x42800000, s20
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s21
	v_exp_f32_e32 v81, v81
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v102
	v_exp_f32_e32 v109, v109
	v_ldexp_f32 v50, v50, v117
	v_exp_f32_e32 v85, v85
	v_ldexp_f32 v72, v72, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v177, v205, v177
	v_div_scale_f32 v121, null, v64, v64, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v74
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s10
	v_ldexp_f32 v103, v103, v138
	v_fmac_f32_e32 v104, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	v_cndmask_b32_e64 v102, 0, 0x42800000, s22
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v101
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s27
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v89, v89
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v86
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v84
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v110
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v175, v121
	v_fma_f32 v213, -v141, v185, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s7
	v_ldexp_f32 v81, v81, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v103, 1.0, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v104, v104
	v_cndmask_b32_e64 v101, 0, 0x42800000, s23
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v77
	v_ldexp_f32 v109, v109, v144
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, null, v50, v50, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v90
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v86, 0, 0x42800000, s13
	v_cndmask_b32_e64 v84, 0, 0x42800000, s15
	v_cndmask_b32_e64 v110, 0, 0x42800000, s26
	v_ldexp_f32 v85, v85, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v185, v213, v185
	v_div_scale_f32 v129, null, v72, v72, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v3 :: v_dual_add_f32 v81, 1.0, v81
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s20
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v54
	v_exp_f32_e32 v66, v66
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v109, 1.0, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v102, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v173, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v70, v70
	v_cndmask_b32_e64 v90, 0, 0x42800000, s17
	v_ldexp_f32 v89, v89, v135
	v_dual_fmac_f32 v86, 0xbfb8aa3b, v65 :: v_dual_add_f32 v91, 1.0, v91
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v62 :: v_dual_add_f32 v85, 1.0, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v179, v129
	v_fma_f32 v203, -v121, v175, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v110, 0xbfb8aa3b, v49
	v_ldexp_f32 v104, v104, v137
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v137, null, v81, v81, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v90, 0xbfb8aa3b, v60 :: v_dual_add_f32 v89, 1.0, v89
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v88
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v101, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v145, null, v85, v85, v63
	v_fmac_f32_e32 v175, v203, v175
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v110, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v183, v137
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v66, v66, v120
	v_ldexp_f32 v102, v102, v139
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v201, -v117, v173, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v70, v70, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, s27, v78, v64, v78
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v104, 1.0, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v82, v82
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v153, null, v89, v89, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v88, 0, 0x42800000, s19
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s23
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v187, v145
	v_fma_f32 v207, -v129, v179, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v76, v76
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v149, null, v91, v91, v61
	v_fmac_f32_e32 v173, v201, v173
	v_div_scale_f32 v118, vcc_lo, v80, v50, v80
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v119, null, v51, v51, v79
	v_div_scale_f32 v171, null, v109, v109, v18
	v_mul_f32_e32 v203, v122, v175
	v_div_scale_f32 v157, null, v104, v104, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v191, v153
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v74, v74, v124
	v_ldexp_f32 v86, v86, v130
	v_ldexp_f32 v101, v101, v140
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v58
	v_ldexp_f32 v110, v110, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v130, s22, v9, v72, v9
	v_dual_fmac_f32 v179, v207, v179 :: v_dual_add_f32 v112, 1.0, v112
	v_fma_f32 v211, -v137, v183, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s11
	v_exp_f32_e32 v84, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v123, null, v66, v66, v77
	v_rcp_f32_e32 v189, v149
	v_mul_f32_e32 v201, v118, v173
	v_div_scale_f32 v161, null, v102, v102, v55
	v_rcp_f32_e32 v174, v119
	v_rcp_f32_e32 v193, v157
	v_rcp_f32_e32 v200, v171
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v82, v82, v126
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v101, 1.0, v101
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v88, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, s24, v75, v68, v75
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v110, 1.0, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v215, -v145, v187, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v74, 1.0, v74 :: v_dual_mul_f32 v207, v130, v179
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v165, null, v112, v112, v53
	v_fmac_f32_e32 v183, v211, v183
	v_div_scale_f32 v127, null, v70, v70, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s15
	v_ldexp_f32 v76, v76, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v176, v123
	v_rcp_f32_e32 v195, v161
	v_fma_f32 v219, -v153, v191, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s19
	v_exp_f32_e32 v90, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v197, v165
	v_fmac_f32_e32 v187, v215, v187
	v_div_scale_f32 v131, null, v74, v74, v3
	v_mul_f32_e32 v205, v126, v177
	v_div_scale_f32 v169, null, v110, v110, v49
	v_rcp_f32_e32 v178, v127
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v84, v84, v132
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v217, -v149, v189, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v202, -v119, v174, 1.0
	v_fma_f32 v221, -v157, v193, 1.0
	v_fma_f32 v228, -v171, v200, 1.0
	v_fmac_f32_e32 v191, v219, v191
	v_div_scale_f32 v135, null, v82, v82, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s17
	v_ldexp_f32 v88, v88, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v180, v131
	v_rcp_f32_e32 v199, v169
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v84, 1.0, v84 :: v_dual_fmac_f32 v193, v221, v193
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v204, -v123, v176, 1.0
	v_fma_f32 v223, -v161, v195, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v86, 1.0, v86 :: v_dual_fmac_f32 v189, v217, v189
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v76, v76, v69
	v_div_scale_f32 v120, s26, v79, v51, v79
	v_div_scale_f32 v158, s8, v57, v104, v57
	v_fmac_f32_e32 v200, v228, v200
	v_fma_f32 v228, -v117, v201, v118
	v_fmac_f32_e32 v174, v202, v174
	v_rcp_f32_e32 v182, v135
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v90, v90, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v225, -v165, v197, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v88, 1.0, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v206, -v127, v178, 1.0
	v_div_scale_f32 v124, s25, v77, v66, v77
	v_div_scale_f32 v134, s20, v4, v83, v4
	v_div_scale_f32 v147, null, v84, v84, v62
	v_rcp_f32_e32 v184, v139
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v176, v204, v176 :: v_dual_mul_f32 v209, v134, v181
	v_fmac_f32_e32 v195, v223, v195
	v_div_scale_f32 v143, null, v86, v86, v65
	v_div_scale_f32 v162, s5, v55, v102, v55
	v_fmac_f32_e32 v201, v228, v173
	v_mul_f32_e32 v202, v120, v174
	v_fma_f32 v208, -v131, v180, 1.0
	v_fma_f32 v227, -v169, v199, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v90, 1.0, v90 :: v_dual_fmac_f32 v197, v225, v197
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v155, null, v88, v88, v58
	v_div_scale_f32 v128, s23, v73, v70, v73
	v_div_scale_f32 v163, null, v101, v101, v54
	v_fma_f32 v232, -v125, v205, v126
	v_fmac_f32_e32 v178, v206, v178
	v_div_scale_f32 v166, s6, v53, v112, v53
	v_rcp_f32_e32 v186, v143
	v_rcp_f32_e32 v188, v147
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v204, v124, v176 :: v_dual_mul_f32 v225, v166, v197
	v_mul_f32_e32 v223, v162, v195
	v_fma_f32 v229, -v119, v202, v120
	v_fma_f32 v210, -v135, v182, 1.0
	v_div_scale_f32 v132, s21, v3, v74, v3
	v_div_scale_f32 v138, s18, v71, v81, v71
	v_rcp_f32_e32 v192, v155
	v_dual_fmac_f32 v180, v208, v180 :: v_dual_fmac_f32 v199, v227, v199
	v_div_scale_f32 v151, null, v90, v90, v60
	v_fma_f32 v230, -v121, v203, v122
	v_div_scale_f32 v159, null, v103, v103, v56
	v_div_scale_f32 v170, s1, v49, v110, v49
	v_rcp_f32_e32 v196, v163
	v_fmac_f32_e32 v205, v232, v177
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v206, v128, v178 :: v_dual_mul_f32 v227, v170, v199
	v_div_scale_f32 v142, s16, v67, v87, v67
	v_fma_f32 v212, -v139, v184, 1.0
	v_fma_f32 v231, -v123, v204, v124
	v_fmac_f32_e32 v202, v229, v174
	v_div_scale_f32 v136, s19, v5, v82, v5
	v_fma_f32 v236, -v133, v209, v134
	v_fmac_f32_e32 v182, v210, v182
	v_rcp_f32_e32 v190, v151
	v_dual_mul_f32 v211, v138, v183 :: v_dual_mul_f32 v208, v132, v180
	v_fmac_f32_e32 v203, v230, v175
	v_div_scale_f32 v167, null, v111, v111, v52
	v_rcp_f32_e32 v194, v159
	v_fma_f32 v233, -v127, v206, v128
	v_fma_f32 v117, -v117, v201, v118
	v_div_scale_f32 v146, s14, v63, v85, v63
	v_fma_f32 v214, -v143, v186, 1.0
	v_fma_f32 v216, -v147, v188, 1.0
	v_dual_fmac_f32 v184, v212, v184 :: v_dual_mul_f32 v213, v142, v185
	v_fmac_f32_e32 v204, v231, v176
	v_div_scale_f32 v140, s17, v69, v76, v69
	v_fma_f32 v234, -v129, v207, v130
	v_fma_f32 v118, -v119, v202, v120
	v_fmac_f32_e32 v209, v236, v181
	v_mul_f32_e32 v210, v136, v182
	v_div_scale_f32 v150, s12, v61, v91, v61
	v_fma_f32 v220, -v155, v192, 1.0
	v_fma_f32 v235, -v131, v208, v132
	v_fma_f32 v119, -v121, v203, v122
	v_div_scale_f32 v154, s10, v59, v89, v59
	v_rcp_f32_e32 v198, v167
	v_fma_f32 v224, -v163, v196, 1.0
	v_fmac_f32_e32 v206, v233, v178
	v_div_fmas_f32 v117, v117, v173, v201
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v144, s15, v65, v86, v65
	v_dual_fmac_f32 v188, v216, v188 :: v_dual_mul_f32 v215, v146, v187
	v_fma_f32 v240, -v141, v213, v142
	v_fmac_f32_e32 v186, v214, v186
	v_fma_f32 v120, -v123, v204, v124
	v_fma_f32 v238, -v137, v211, v138
	v_dual_mul_f32 v212, v140, v184 :: v_dual_fmac_f32 v207, v234, v179
	v_div_fmas_f32 v118, v118, v174, v202
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v237, -v135, v210, v136
	v_fma_f32 v121, -v125, v205, v126
	v_fma_f32 v218, -v151, v190, 1.0
	v_dual_fmac_f32 v192, v220, v192 :: v_dual_mul_f32 v217, v150, v189
	v_fmac_f32_e32 v208, v235, v180
	v_div_fmas_f32 v119, v119, v175, v203
	s_mov_b32 vcc_lo, s25
	v_div_scale_f32 v148, s13, v62, v84, v62
	v_fma_f32 v222, -v159, v194, 1.0
	v_dual_fmac_f32 v196, v224, v196 :: v_dual_mul_f32 v219, v154, v191
	v_mul_f32_e32 v221, v158, v193
	v_fma_f32 v122, -v127, v206, v128
	v_div_scale_f32 v164, s4, v54, v101, v54
	v_fma_f32 v242, -v145, v215, v146
	v_fmac_f32_e32 v213, v240, v185
	v_mul_f32_e32 v214, v144, v186
	v_div_fixup_f32 v50, v117, v50, v80
	v_div_fmas_f32 v80, v120, v176, v204
	s_mov_b32 vcc_lo, s24
	v_fmac_f32_e32 v211, v238, v183
	v_fma_f32 v239, -v139, v212, v140
	v_fma_f32 v123, -v129, v207, v130
	v_fmac_f32_e32 v210, v237, v182
	v_div_fixup_f32 v51, v118, v51, v79
	v_div_fmas_f32 v79, v121, v177, v205
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v152, s11, v60, v90, v60
	v_fma_f32 v228, -v149, v217, v150
	v_fmac_f32_e32 v190, v218, v190
	v_fma_f32 v124, -v131, v208, v132
	v_div_scale_f32 v160, s7, v56, v103, v56
	v_fma_f32 v226, -v167, v198, 1.0
	v_fma_f32 v230, -v153, v219, v154
	v_mul_f32_e32 v216, v148, v188
	v_fma_f32 v232, -v157, v221, v158
	v_fmac_f32_e32 v194, v222, v194
	v_div_fixup_f32 v64, v119, v64, v78
	v_div_fmas_f32 v78, v122, v178, v206
	s_mov_b32 vcc_lo, s22
	v_dual_mul_f32 v224, v164, v196 :: v_dual_mul_f32 v27, v27, v50
	v_fmac_f32_e32 v215, v242, v187
	v_fma_f32 v241, -v143, v214, v144
	v_fma_f32 v125, -v133, v209, v134
	v_div_fixup_f32 v50, v80, v66, v77
	v_fmac_f32_e32 v212, v239, v184
	v_div_fmas_f32 v66, v123, v179, v207
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v156, s9, v58, v88, v58
	v_fma_f32 v126, -v135, v210, v136
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v51, v79, v68, v75
	v_fma_f32 v234, -v161, v223, v162
	v_fmac_f32_e32 v217, v228, v189
	v_mul_f32_e32 v218, v152, v190
	v_div_fmas_f32 v68, v124, v180, v208
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v168, s3, v52, v111, v52
	v_fma_f32 v236, -v165, v225, v166
	v_fmac_f32_e32 v198, v226, v198
	v_fmac_f32_e32 v219, v230, v191
	v_fma_f32 v243, -v147, v216, v148
	v_fmac_f32_e32 v221, v232, v193
	v_dual_mul_f32 v222, v160, v194 :: v_dual_mul_f32 v15, v15, v64
	v_fma_f32 v127, -v137, v211, v138
	v_div_fixup_f32 v64, v78, v70, v73
	v_dual_fmac_f32 v214, v241, v186 :: v_dual_mul_f32 v11, v11, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v50, v125, v181, v209
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v128, -v139, v212, v140
	v_fma_f32 v238, -v169, v227, v170
	v_mul_f32_e32 v220, v156, v192
	v_div_fixup_f32 v66, v66, v72, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v100, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v51, v126, v182, v210
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v223, v234, v195
	v_fma_f32 v229, -v151, v218, v152
	v_fma_f32 v129, -v141, v213, v142
	v_dual_fmac_f32 v216, v243, v188 :: v_dual_fmac_f32 v225, v236, v197
	v_mul_f32_e32 v226, v168, v198
	v_div_fixup_f32 v68, v68, v74, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v99, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v64, v127, v183, v211
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v130, -v143, v214, v144
	v_div_fixup_f32 v50, v50, v83, v4
	v_div_fmas_f32 v70, v128, v184, v212
	s_mov_b32 vcc_lo, s16
	v_fmac_f32_e32 v227, v238, v199
	v_fma_f32 v231, -v155, v220, v156
	v_fma_f32 v131, -v145, v215, v146
	v_div_fixup_f32 v51, v51, v82, v5
	v_fmac_f32_e32 v218, v229, v190
	v_div_fmas_f32 v72, v129, v185, v213
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v132, -v147, v216, v148
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v4, v98, v66 :: v_dual_mul_f32 v1, v1, v17
	v_mul_f32_e32 v66, v96, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v50, v130, v186, v214
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v233, -v159, v222, v160
	v_fma_f32 v133, -v149, v217, v150
	v_div_fixup_f32 v69, v70, v76, v69
	v_fmac_f32_e32 v220, v231, v192
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v97, v68 :: v_dual_mul_f32 v68, v95, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v51, v131, v187, v215
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v134, -v151, v218, v152
	v_div_fixup_f32 v67, v72, v87, v67
	v_div_fmas_f32 v70, v132, v188, v216
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v235, -v163, v224, v164
	v_fma_f32 v135, -v153, v219, v154
	v_fmac_f32_e32 v222, v233, v194
	v_div_fixup_f32 v64, v64, v81, v71
	v_div_fixup_f32 v71, v50, v86, v65
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v65, v93, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v69, v133, v189, v217
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v136, -v155, v220, v156
	v_div_fixup_f32 v63, v51, v85, v63
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v92, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v67, v134, v190, v218
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v137, -v157, v221, v158
	v_div_fixup_f32 v62, v70, v84, v62
	v_fmac_f32_e32 v224, v235, v196
	v_div_fmas_f32 v70, v135, v191, v219
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v138, -v159, v222, v160
	v_div_fixup_f32 v61, v69, v91, v61
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v63, v136, v192, v220
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v139, -v161, v223, v162
	v_div_fixup_f32 v60, v67, v90, v60
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v64, v94, v64 :: v_dual_mul_f32 v51, v33, v71
	v_mul_f32_e32 v33, v31, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v137, v193, v221
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v237, -v167, v226, v168
	v_fma_f32 v140, -v163, v224, v164
	v_div_fixup_f32 v59, v70, v89, v59
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v29, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v61, v138, v194, v222
	s_mov_b32 vcc_lo, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v60, v139, v195, v223
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v226, v237, v198 :: v_dual_mul_f32 v7, v7, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v26, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v59, v140, v196, v224
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v172, s0, v18, v109, v18
	v_div_fixup_f32 v58, v63, v88, v58
	v_div_fixup_f32 v57, v62, v104, v57
	v_div_fixup_f32 v55, v60, v102, v55
	v_div_fixup_f32 v54, v59, v101, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v106, v41
	v_fma_f32 v6, v6, v105, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v56, v61, v103, v56
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v20, v58
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v41, v7, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v14, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v42, v6, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v14, v21, v55 :: v_dual_mul_f32 v21, v30, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v30, v172, v200
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v141, -v165, v225, v166
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v116, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v142, -v167, v226, v168
	v_fma_f32 v56, -v171, v30, v172
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v55, -v169, v227, v170
	v_div_fmas_f32 v58, v141, v197, v225
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v30, v56, v200
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v10, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v12, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v115, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v54, v142, v198, v226
	v_fma_f32 v10, -v171, v30, v172
	s_mov_b32 vcc_lo, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v2, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v55, v199, v227
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v52, v54, v111, v52
	v_div_fmas_f32 v10, v10, v200, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v46, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v114, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v113, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v49, v55, v110, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v30
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v44, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v109, v18
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v46
	v_mul_f32_e32 v11, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v44, 0xbfb8aa3b, v2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v25, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v11, v24, v49
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v30
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v45
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v53, v58, v112, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v18
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v23, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v2
	v_exp_f32_e32 v23, v25
	v_ldexp_f32 v12, v12, v24
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	v_exp_f32_e32 v44, v44
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v108, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v107, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v46, v24
	s_mov_b32 s4, 0x76543210
	v_ldexp_f32 v23, v23, v25
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v12, v12, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v44, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v24, v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v23, v23, v45
	v_rcp_f32_e32 v54, v52
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v39, v1, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v25, v25, v2
	v_rcp_f32_e32 v56, v44
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v46, v49, 1.0
	v_rcp_f32_e32 v58, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v49, v55, v49
	v_div_scale_f32 v55, vcc_lo, v47, v12, v47
	v_fma_f32 v57, -v52, v54, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v44, v56, 1.0
	v_mul_f32_e32 v60, v55, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v17, v58, 1.0
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v57, s0, v30, v24, v30
	v_fmac_f32_e32 v56, v59, v56
	v_div_scale_f32 v59, s1, v45, v23, v45
	v_fma_f32 v62, -v46, v60, v55
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, s3, v2, v25, v2
	v_mul_f32_e32 v63, v57, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v67, v59, v56 :: v_dual_fmac_f32 v60, v62, v49
	v_mul_f32_e32 v70, v61, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v52, v63, v57
	v_fma_f32 v69, -v44, v67, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v46, v60, v55
	v_fma_f32 v55, -v17, v70, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v62, v54
	v_fmac_f32_e32 v67, v69, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v46, v46, v49, v60
	v_fmac_f32_e32 v70, v55, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v49, -v52, v63, v57
	v_fma_f32 v44, -v44, v67, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v17, v70, v61
	v_div_fmas_f32 v49, v49, v54, v63
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v44, v44, v56, v67
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v49, v24, v30
	v_div_fmas_f32 v17, v17, v58, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v2, v17, v25, v2
	v_div_fixup_f32 v17, v44, v23, v45
	v_div_fixup_f32 v25, v46, v12, v47
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v13, v53
	v_dual_mul_f32 v13, v7, v24 :: v_dual_mul_f32 v8, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v12, v40, v17
	v_mul_f32_e32 v17, v6, v25
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v66|, |v68|
	v_max3_f32 v2, |v64|, |v50|, |v51|
	v_max3_f32 v7, |v31|, |v28|, |v29|
	v_max3_f32 v24, |v26|, |v22|, |v15|
	v_max3_f32 v6, |v32|, |v33|, |v27|
	v_max_f32_e64 v25, |v20|, |v19|
	v_max3_f32 v30, |v14|, |v23|, |v18|
	v_max3_f32 v39, |v17|, |v13|, |v12|
	v_max3_f32 v40, |v8|, |v3|, |v4|
	v_max3_f32 v1, v1, |v65|, v2
	v_max3_f32 v2, v7, v24, |v16|
	v_max3_f32 v7, |v11|, |v10|, |v9|
	v_max3_f32 v24, v25, |v21|, v30
	v_max3_f32 v25, v39, v40, |v5|
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v30, 8, v0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v2, v24, v7, v25
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v24, 4, v38
	v_permlanex16_b32 v6, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v25, 1, v43
	v_lshl_add_u32 v38, v38, 7, 0
	v_permlanex16_b32 v7, v2, s4, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v39, v43, 2, v24
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v1, v1, v6
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v6, v39, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v7 :: v_dual_lshlrev_b32 v25, 3, v30
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v7, v38, v24, v30
	v_lshrrev_b32_e32 v24, 2, v43
	v_add3_u32 v6, 0, v30, v6
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v2, v2, v7
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v6, v1, v6 :: v_dual_lshlrev_b32 v1, 3, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v7, v2, v7
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, 0, v25, v24
	v_add_nc_u32_e32 v24, 0, v1
	ds_store_b64 v2, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v24
.Ltmp44:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v2, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v6
	v_fma_f32 v25, -v6, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v30, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v6, v30, v25
	v_fmac_f32_e32 v30, v38, v24
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v30, v25
	v_rcp_f32_e32 v25, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v6, v6, v24, v30
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v38, v25, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v24, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v25, v6, v25
	v_div_scale_f32 v6, vcc_lo, v7, 0x40e00000, v7
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v24, v2, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v2, v6, v25
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v42, 0xffff0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v30, -v38, v2, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v39, null, v42, v42, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v2, v30, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v40, null, v42, v42, v68
	v_rcp_f32_e32 v30, v39
	v_div_scale_f32 v44, null, v42, v42, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v38, v2, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v38, v40
	v_div_scale_f32 v47, null, v42, v42, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v44
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v2, v6, v25, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v41, vcc_lo, v66, v42, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v6, -v39, v30, 1.0
	v_div_scale_f32 v49, s0, v68, v42, v68
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v25, v2, 0x40e00000, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v40, v38, 1.0
	v_fmac_f32_e32 v30, v6, v30
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v55, -v44, v46, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v6, v25, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v38, v2, v38
	v_mul_f32_e32 v45, v41, v30
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, v24.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v55, v46
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v25, v25, v6, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v54, v49, v38
	v_fma_f32 v52, -v39, v45, v41
	v_div_scale_f32 v55, s1, v65, v42, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.l, v25.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v56, -v47, v53, 1.0
	v_fmac_f32_e32 v45, v52, v30
	v_fma_f32 v52, -v40, v54, v49
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v24, 0xffff0000, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v57, null, v42, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v39, v45, v41
	v_fmac_f32_e32 v54, v52, v38
	v_mul_f32_e32 v39, v55, v46
	v_div_scale_f32 v52, null, v42, v42, v50
	v_fmac_f32_e32 v53, v56, v53
	v_div_scale_f32 v41, s2, v64, v42, v64
	v_div_fmas_f32 v25, v25, v30, v45
	v_fma_f32 v30, -v40, v54, v49
	v_fma_f32 v40, -v44, v39, v55
	v_rcp_f32_e32 v45, v52
	v_div_scale_f32 v56, null, v42, v42, v51
	v_mul_f32_e32 v49, v41, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v40, v46
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v40, v56
	v_div_fmas_f32 v30, v30, v38, v54
	v_fma_f32 v38, -v47, v49, v41
	v_fma_f32 v44, -v44, v39, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v54, -v52, v45, 1.0
	v_div_scale_f32 v55, null, v42, v42, v32
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v38, v53
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v54, s0, v50, v42, v50
	v_fma_f32 v38, -v56, v40, 1.0
	v_div_fmas_f32 v39, v44, v46, v39
	v_rcp_f32_e32 v46, v55
	v_fma_f32 v41, -v47, v49, v41
	v_mul_f32_e32 v44, v54, v45
	v_fmac_f32_e32 v40, v38, v40
	v_div_scale_f32 v47, s1, v51, v42, v51
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v59, v57
	v_div_fmas_f32 v41, v41, v53, v49
	v_fma_f32 v49, -v52, v44, v54
	v_mul_f32_e32 v53, v47, v40
	v_fma_f32 v58, -v55, v46, 1.0
	v_div_fixup_f32 v38, v39, v42, v65
	v_div_fixup_f32 v39, v41, v42, v64
	v_fmac_f32_e32 v44, v49, v45
	v_fma_f32 v41, -v56, v53, v47
	v_fmac_f32_e32 v46, v58, v46
	v_div_scale_f32 v49, s2, v32, v42, v32
	v_div_scale_f32 v58, null, v42, v42, v27
	v_fma_f32 v60, -v57, v59, 1.0
	v_fma_f32 v52, -v52, v44, v54
	v_fmac_f32_e32 v53, v41, v40
	v_mul_f32_e32 v54, v49, v46
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v61, v58
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, s3, v33, v42, v33
	v_div_fmas_f32 v41, v52, v45, v44
	v_fma_f32 v44, -v56, v53, v47
	v_fma_f32 v45, -v55, v54, v49
	v_div_scale_f32 v56, null, v42, v42, v31
	v_mul_f32_e32 v47, v60, v59
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v45, v46
	v_rcp_f32_e32 v45, v56
	v_fma_f32 v52, -v58, v61, 1.0
	v_div_fmas_f32 v44, v44, v40, v53
	v_fma_f32 v53, -v57, v47, v60
	v_div_fixup_f32 v40, v41, v42, v50
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v61, v52, v61
	v_div_scale_f32 v52, s0, v27, v42, v27
	v_div_fixup_f32 v41, v44, v42, v51
	v_fma_f32 v44, -v55, v54, v49
	v_fmac_f32_e32 v47, v53, v59
	v_fma_f32 v50, -v56, v45, 1.0
	v_div_scale_f32 v51, null, v42, v42, v28
	v_mul_f32_e32 v49, v52, v61
	v_div_fmas_f32 v44, v44, v46, v54
	v_fma_f32 v46, -v57, v47, v60
	v_fmac_f32_e32 v45, v50, v45
	v_rcp_f32_e32 v50, v51
	v_div_scale_f32 v55, null, v42, v42, v29
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v53, -v58, v49, v52
	v_div_scale_f32 v54, s1, v31, v42, v31
	v_div_fmas_f32 v46, v46, v59, v47
	v_rcp_f32_e32 v47, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v61
	v_mul_f32_e32 v53, v54, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v57, -v51, v50, 1.0
	v_div_fixup_f32 v32, v44, v42, v32
	v_div_fixup_f32 v33, v46, v42, v33
	v_fma_f32 v44, -v58, v49, v52
	v_fma_f32 v46, -v56, v53, v54
	v_fmac_f32_e32 v50, v57, v50
	v_div_scale_f32 v52, s2, v28, v42, v28
	v_fma_f32 v57, -v55, v47, 1.0
	v_div_scale_f32 v58, null, v42, v42, v26
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v53, v46, v45
	v_div_fmas_f32 v44, v44, v61, v49
	v_dual_mul_f32 v46, v52, v50 :: v_dual_fmac_f32 v47, v57, v47
	v_rcp_f32_e32 v49, v58
	v_div_scale_f32 v57, s0, v29, v42, v29
	v_div_scale_f32 v59, null, v42, v42, v22
	v_div_fixup_f32 v27, v44, v42, v27
	v_fma_f32 v44, -v56, v53, v54
	v_fma_f32 v54, -v51, v46, v52
	v_mul_f32_e32 v56, v57, v47
	v_rcp_f32_e32 v60, v59
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v61, -v58, v49, 1.0
	v_div_fmas_f32 v44, v44, v45, v53
	v_fmac_f32_e32 v46, v54, v50
	v_fma_f32 v45, -v55, v56, v57
	v_div_scale_f32 v53, s1, v26, v42, v26
	v_fmac_f32_e32 v49, v61, v49
	v_div_fixup_f32 v31, v44, v42, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v59, v60, 1.0
	v_fma_f32 v44, -v51, v46, v52
	v_fmac_f32_e32 v56, v45, v47
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v45, v53, v49 :: v_dual_fmac_f32 v60, v54, v60
	v_div_scale_f32 v51, s3, v22, v42, v22
	v_div_scale_f32 v52, null, v42, v42, v15
	v_div_fmas_f32 v44, v44, v50, v46
	v_fma_f32 v46, -v55, v56, v57
	v_div_scale_f32 v57, null, v42, v42, v16
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v50, -v58, v45, v53
	v_rcp_f32_e32 v54, v52
	v_mul_f32_e32 v55, v51, v60
	v_div_fmas_f32 v46, v46, v47, v56
	v_rcp_f32_e32 v47, v57
	v_fmac_f32_e32 v45, v50, v49
	v_div_fixup_f32 v28, v44, v42, v28
	v_fma_f32 v50, -v59, v55, v51
	v_div_fixup_f32 v29, v46, v42, v29
	v_div_scale_f32 v46, s0, v15, v42, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v52, v54, 1.0
	v_fmac_f32_e32 v55, v50, v60
	v_fma_f32 v44, -v58, v45, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v57, v47, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v58, null, v24, v24, v19
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, null, v24, v24, v20
	v_div_fmas_f32 v44, v44, v49, v45
	v_fma_f32 v45, -v59, v55, v51
	v_mul_f32_e32 v49, v46, v54
	v_div_scale_f32 v51, s1, v16, v42, v16
	v_rcp_f32_e32 v53, v50
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v44, v42, v26
	v_div_fmas_f32 v45, v45, v60, v55
	v_fma_f32 v55, -v52, v49, v46
	v_mul_f32_e32 v56, v51, v47
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v60, null, v24, v24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v55, v54
	v_fma_f32 v44, -v57, v56, v51
	v_fma_f32 v55, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v62, v60
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v46, -v52, v49, v46
	v_div_scale_f32 v52, null, v24, v24, v21
	v_dual_fmac_f32 v56, v44, v47 :: v_dual_fmac_f32 v53, v55, v53
	v_div_scale_f32 v44, s2, v20, v24, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v52
	v_div_fmas_f32 v46, v46, v54, v49
	v_fma_f32 v49, -v57, v56, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v51, v44, v53
	v_div_fixup_f32 v22, v45, v42, v22
	v_rcp_f32_e32 v45, v58
	v_div_scale_f32 v54, s0, v19, v24, v19
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v25, v42, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v57, -v52, v55, 1.0
	v_div_fmas_f32 v47, v49, v47, v56
	v_div_fixup_f32 v30, v30, v42, v68
	v_div_fixup_f32 v15, v46, v42, v15
	v_fma_f32 v46, -v60, v62, 1.0
	v_fma_f32 v59, -v58, v45, 1.0
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, s3, v21, v24, v21
	v_div_fixup_f32 v16, v47, v42, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v59, v45
	v_fma_f32 v59, -v50, v51, v44
	v_mul_f32_e32 v56, v57, v55
	v_div_scale_f32 v47, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v61, v54, v45
	v_dual_fmac_f32 v51, v59, v53 :: v_dual_fmac_f32 v62, v46, v62
	v_div_scale_f32 v46, s1, v14, v24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v58, v61, v54
	v_fma_f32 v42, -v50, v51, v44
	v_fma_f32 v44, -v52, v56, v57
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v50, v46, v62 :: v_dual_fmac_f32 v61, v49, v45
	v_div_fmas_f32 v42, v42, v53, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v56, v44, v55
	v_rcp_f32_e32 v44, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v49, -v58, v61, v54
	v_div_scale_f32 v51, null, v24, v24, v18
	v_fma_f32 v54, -v60, v50, v46
	v_div_fixup_f32 v20, v42, v24, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v45, v49, v45, v61
	v_fma_f32 v49, -v52, v56, v57
	v_rcp_f32_e32 v53, v51
	v_fma_f32 v52, -v47, v44, 1.0
	v_fmac_f32_e32 v50, v54, v62
	v_div_fixup_f32 v19, v45, v24, v19
	s_mov_b32 vcc_lo, s3
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v2.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v52, v44
	v_div_scale_f32 v52, s0, v23, v24, v23
	v_fma_f32 v46, -v60, v50, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v51, v53, 1.0
	v_div_fmas_f32 v49, v49, v55, v56
	v_mul_f32_e32 v42, v52, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v53, v45, v53
	v_div_scale_f32 v45, s2, v18, v24, v18
	v_fma_f32 v54, -v47, v42, v52
	v_div_fmas_f32 v46, v46, v62, v50
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v50, v45, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v54, v44
	v_div_scale_f32 v54, null, v24, v24, v10
	v_div_fixup_f32 v14, v46, v24, v14
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v46, -v47, v42, v52
	v_rcp_f32_e32 v56, v54
	v_fma_f32 v47, -v51, v50, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v42, v46, v44, v42
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v50, v47, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v23, v42, v24, v23
	v_fma_f32 v42, -v54, v56, 1.0
	v_fma_f32 v45, -v51, v50, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v42, v56
	v_div_scale_f32 v42, s1, v10, v24, v10
	v_div_fmas_f32 v45, v45, v53, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v53, v42, v56
	v_div_fixup_f32 v21, v49, v24, v21
	v_div_scale_f32 v49, null, v24, v24, v11
	v_div_scale_f32 v44, null, v24, v24, v9
	v_div_scale_f32 v46, s0, v11, v24, v11
	v_rcp_f32_e32 v55, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v47, v44
	v_div_scale_f32 v59, s2, v9, v24, v9
	v_div_fixup_f32 v18, v45, v24, v18
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v52, -v49, v55, 1.0
	v_fma_f32 v57, -v44, v47, 1.0
.Ltmp45:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v7, 4, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v55, v52, v55
	v_div_scale_f32 v52, null, v24, v24, v17
	v_fmac_f32_e32 v47, v57, v47
	v_div_scale_f32 v57, null, v24, v24, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v52
	v_mul_f32_e32 v51, v46, v55
	v_mul_f32_e32 v62, v59, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v61, v57
	v_fma_f32 v50, -v49, v51, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fmac_f32_e32 v51, v50, v55
	v_fma_f32 v50, -v54, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s3, v17, v24, v17
	v_fma_f32 v45, -v49, v51, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v50, v56
	v_fma_f32 v46, -v44, v62, v59
	v_mul_f32_e32 v49, v60, v58
	v_fma_f32 v50, -v57, v61, 1.0
	v_div_fmas_f32 v45, v45, v55, v51
	v_fma_f32 v42, -v54, v53, v42
	v_fmac_f32_e32 v62, v46, v47
	v_fma_f32 v46, -v52, v49, v60
	v_fmac_f32_e32 v61, v50, v61
	v_div_scale_f32 v50, s0, v13, v24, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v44, v62, v59
	v_fmac_f32_e32 v49, v46, v58
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v50, v61
	v_div_scale_f32 v51, null, v24, v24, v12
	v_div_fmas_f32 v42, v42, v56, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v45, v24, v11
	v_div_fmas_f32 v44, v44, v47, v62
	v_fma_f32 v47, -v52, v49, v60
	v_fma_f32 v52, -v57, v46, v50
	v_rcp_f32_e32 v53, v51
	v_div_fixup_f32 v10, v42, v24, v10
	v_div_fixup_f32 v9, v44, v24, v9
	v_div_scale_f32 v44, null, v24, v24, v8
	v_fmac_f32_e32 v46, v52, v61
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v55, null, v24, v24, v5
	v_div_fmas_f32 v47, v47, v58, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v57, v46, v50
	v_fma_f32 v45, -v51, v53, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v57, v55
	v_div_fixup_f32 v17, v47, v24, v17
	v_div_fmas_f32 v42, v42, v61, v46
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v53, v45, v53
	v_div_scale_f32 v45, null, v24, v24, v3
	v_div_scale_f32 v47, null, v24, v24, v4
	v_div_scale_f32 v49, vcc_lo, v12, v24, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v45
	v_rcp_f32_e32 v52, v47
	v_div_fixup_f32 v13, v42, v24, v13
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v42, -v44, v46, 1.0
	v_mul_f32_e32 v54, v49, v53
	v_fma_f32 v61, -v55, v57, 1.0
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v42, v46
	v_div_scale_f32 v42, s0, v8, v24, v8
	v_fma_f32 v56, -v45, v50, 1.0
	v_fma_f32 v59, -v47, v52, 1.0
	v_fma_f32 v58, -v51, v54, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v60, v42, v46 :: v_dual_fmac_f32 v57, v61, v57
	v_fmac_f32_e32 v50, v56, v50
	v_div_scale_f32 v56, s1, v3, v24, v3
	v_fmac_f32_e32 v52, v59, v52
	v_div_scale_f32 v59, s2, v4, v24, v4
	v_fmac_f32_e32 v54, v58, v53
	v_fma_f32 v58, -v44, v60, v42
	v_div_scale_f32 v61, s3, v5, v24, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v62, v56, v50 :: v_dual_mul_f32 v63, v59, v52
	v_fmac_f32_e32 v60, v58, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v64, v61, v57
	v_fma_f32 v49, -v51, v54, v49
	v_fma_f32 v51, -v45, v62, v56
	v_fma_f32 v58, -v47, v63, v59
	v_fma_f32 v42, -v44, v60, v42
	v_fma_f32 v44, -v55, v64, v61
	v_div_fmas_f32 v49, v49, v53, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v62, v51, v50 :: v_dual_fmac_f32 v63, v58, v52
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v64, v44, v57
	v_div_fmas_f32 v42, v42, v46, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v45, -v45, v62, v56
	v_fma_f32 v44, -v47, v63, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v46, -v55, v64, v61
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v45, v45, v50, v62
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v49, v24, v12
	v_div_fmas_f32 v44, v44, v52, v63
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v8, v42, v24, v8
	v_div_fmas_f32 v46, v46, v57, v64
	v_div_fixup_f32 v3, v45, v24, v3
	v_div_fixup_f32 v4, v44, v24, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v46, v24, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v30
	v_rndne_f32_e32 v30, v38
	v_rndne_f32_e32 v38, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v41, v15
	v_and_b32_e32 v15, 15, v33
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v33, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v47, v14
	v_cvt_i32_f32_e32 v52, v10
	v_cvt_i32_f32_e32 v54, v17
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v14, 15, v32
	v_and_b32_e32 v17, 15, v31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v30, 4, v37
	v_and_b32_e32 v31, 0x60, v0
	v_lshlrev_b32_e32 v32, 10, v48
	v_and_b32_e32 v37, 0x400, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v51, v11
	v_and_b32_e32 v11, 15, v38
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v38, v30, v31
	v_add3_u32 v37, 0, v32, v37
	v_and_or_b32 v34, 0x1b00, v33, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v21
	v_cvt_i32_f32_e32 v53, v9
	v_cvt_i32_f32_e32 v55, v13
	v_cvt_i32_f32_e32 v57, v8
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v25
	v_and_b32_e32 v13, 15, v40
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v41
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v40, v37, v36, v38
	v_xad_u32 v41, v34, v35, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v42, v16
	v_cvt_i32_f32_e32 v45, v19
	v_cvt_i32_f32_e32 v50, v18
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v18, 15, v28
	v_and_b32_e32 v19, 15, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v44, v20
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v40, v[8:11]
	ds_store_b128 v40, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v41
	ds_load_b128 v[16:19], v41 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v56, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v12, 15, v39
	v_and_b32_e32 v20, 15, v26
	v_and_b32_e32 v24, 15, v44
	v_and_b32_e32 v25, 15, v45
	v_and_b32_e32 v26, 15, v46
	v_and_b32_e32 v27, 15, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v49, v23
	v_and_b32_e32 v23, 15, v42
	v_and_b32_e32 v30, 15, v53
	v_and_b32_e32 v31, 15, v54
	v_and_b32_e32 v32, 15, v55
	v_and_b32_e32 v33, 15, v56
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[24:27]
	ds_store_b128 v40, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v41
	ds_load_b128 v[32:35], v41 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[12:15]
	ds_store_b128 v40, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v41
	ds_load_b128 v[20:23], v41 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v28, 15, v49
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v50
	v_and_b32_e32 v30, 15, v51
	v_and_b32_e32 v31, 15, v52
	v_and_b32_e32 v37, 15, v3
	v_and_b32_e32 v38, 15, v4
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v8
	v_lshl_or_b32 v3, v17, 4, v9
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 15, v57
	v_and_b32_e32 v39, 15, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v7, s0, v7
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[28:31]
	ds_store_b128 v40, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v41
	ds_load_b128 v[36:39], v41 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v19, 4, v11
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v4.l
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v18, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v17, s2, v1, v7
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_or_b16 v8.l, v3.h, v3.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_and_b16 v5.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v11, v22, 4, v14
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v22, s0, 4, v17
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v12, v23, 4, v15
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v5.h, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 31, s34
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v2, v6, vcc_lo
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v38, 4, v30
	v_lshl_or_b32 v21, v39, 4, v31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v11.l
	v_lshlrev_b16 v7.l, 8, v16.l
	v_and_b16 v7.h, 0xff, v15.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v6, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v5, v3, 0, 16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v18, v36, 4, v28
	v_lshl_or_b32 v19, v37, 4, v29
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v1.h, v1.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v4.h, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v0.l, 0xff, v13.l
	v_lshlrev_b16 v0.h, 8, v21.l
	v_and_b16 v1.h, 0xff, v20.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v7, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v19.l
	v_and_b16 v3.h, 0xff, v18.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	v_cndmask_b32_e32 v1, v7, v2, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[8:9], v17, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v22, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	buffer_store_b16 v1, v0, s[36:39], 0 offen
.Ltmp47:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 244
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16384
; TotalNumSgprs: 48
; NumVgprs: 244
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x8e DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x68 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x68:0x2f DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x21 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp26                         ; DW_AT_low_pc
	.long	.Ltmp44-.Ltmp26                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x89:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
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
