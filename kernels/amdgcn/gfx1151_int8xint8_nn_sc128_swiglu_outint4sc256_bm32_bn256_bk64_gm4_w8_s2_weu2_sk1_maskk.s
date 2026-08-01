	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s47, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v84, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v79, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v152, 3, v84
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v151, 16, v79
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_or_b32_e32 v153, 32, v79
	v_or_b32_e32 v154, 48, v79
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
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
	s_lshl_b32 s18, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s18
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s6, s6, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s7, s6
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s16, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s47, v2
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s4, s10, s16
	s_xor_b32 s16, s2, s6
	s_add_i32 s4, s10, s4
	s_ashr_i32 s19, s16, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s17, s4, s7
	s_add_i32 s16, s4, 1
	s_sub_i32 s5, s5, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s17, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s16, s4
	s_cselect_b32 s5, s17, s5
	s_add_i32 s16, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s16, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s46, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s17, s47, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s4, s19
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s46, v152
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s33, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s5, s17, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s18
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s47, 63
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s44, s35, 1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s18, s34, s47
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s48, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s17, s17, s4
.Ltmp21:
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s47, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v158, v1, v152, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s16, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s46, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s20, s44, s46
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s46, v158
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v83, 15, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s46, v151
	v_or_b32_e32 v5, s46, v153
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v18, 0x80000000, v7, vcc_lo
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s46, v154
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v73, 4, v83
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s47, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s19, s48, s20
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s47, v4
	v_cmp_gt_i32_e64 s6, s47, v5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[75:76], null, s44, v79, v[73:74]
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s7, s47, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s18, s19, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s5, s5, s2
	s_and_b32 s6, s6, s2
	s_and_b32 s7, s7, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[76:77], null, 0x60, s35, v[75:76]
	v_lshl_add_u32 v156, s35, 5, v75
	v_lshl_add_u32 v157, s35, 6, v75
	v_add_nc_u32_e32 v1, s19, v75
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s19, v156
	v_add_nc_u32_e32 v3, s19, v157
	v_add_nc_u32_e32 v4, s19, v76
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v1, s4
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v5, s18, v156
	v_add_nc_u32_e32 v6, s18, v157
	v_add_nc_u32_e32 v16, s18, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	v_cndmask_b32_e64 v17, 0x80000000, v4, s7
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v24, 0x80000000, v5, s5
	v_cndmask_b32_e64 v28, 0x80000000, v6, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v8, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v2, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v16, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[12:15], v3, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[36:37], v18, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x4
	buffer_load_b128 v[16:19], v17, s[24:27], 0 offen
	buffer_load_b128 v[20:23], v1, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v24, s[24:27], 0 offen
	buffer_load_b128 v[28:31], v28, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v2, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v1, 48, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v155, 6, v83
	s_mov_b32 s4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v1, v2, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v159, 0, v3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v83
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v160, 0, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v159, v[8:11] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v159, v[12:15] offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v160, v[36:37] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v159, v[4:7]
	s_waitcnt vmcnt(4)
	ds_store_b128 v159, v[16:19] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v159, v[20:23] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v159, v[24:27] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v159, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v159, v[32:35] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v83
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow654
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v4, s34, v83
	v_or_b32_e32 v3, s34, v3
	s_ashr_i32 s45, s17, 7
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v80, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v149, v4, s45
	v_mul_lo_u32 v150, v3, s45
	v_or_b32_e32 v74, s48, v0
	v_lshlrev_b32_e32 v82, 1, v0
	v_lshlrev_b32_e32 v81, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s6, s16, 6
	s_mov_b32 s16, 0
	v_and_or_b32 v2, v2, 48, v155
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v6, 32, v81
	v_and_or_b32 v1, 0x70, v1, v83
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v161, 0, v1
	v_lshlrev_b32_e32 v1, 2, v80
	v_xor_b32_e32 v3, 16, v2
	v_xor_b32_e32 v4, 32, v2
	v_xor_b32_e32 v5, 48, v2
	v_and_b32_e32 v9, 28, v82
	v_add3_u32 v10, 0, v1, v6
	v_lshlrev_b32_e32 v11, 1, v80
	v_add_nc_u32_e32 v162, s35, v74
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v163, 0, v2
	v_add_nc_u32_e32 v164, 0, v3
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v165, 0, v4
	v_add_nc_u32_e32 v166, 0, v5
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v7, s22
	v_add_nc_u32_e32 v168, 0, v11
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v167, v10, v9
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_add_i32 s6, s6, -2
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s16, 1
	s_mov_b32 s5, s46
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s0, s7, s3
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s17, s5, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_lshl_b32 s46, s0, 6
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s17, s17, 25
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s46, v152
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s46, v158
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s46, s44
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s5, s5, s17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s17, s18, s48
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s47, v9
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s5, 7
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s19, s17, s35
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s20, s18, s44
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s45
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s16, s6
	s_mov_b32 s16, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[77:78], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v161 offset:3328
	ds_load_u8 v10, v161 offset:3072
	ds_load_u8 v11, v161 offset:3840
	ds_load_u8 v12, v161 offset:3584
	ds_load_u8 v13, v161 offset:2304
	ds_load_u8 v14, v161 offset:2048
	ds_load_u8 v15, v161 offset:2816
	ds_load_u8 v16, v161 offset:2560
	ds_load_u8 v17, v161 offset:1280
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[41:44], v163 offset:32768
	ds_load_b128 v[45:48], v164 offset:32768
	ds_load_b128 v[169:172], v163 offset:33792
	ds_load_b128 v[173:176], v164 offset:33792
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v161 offset:1024
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v161 offset:1792
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v9, v161 offset:1536
	ds_load_u8 v11, v161 offset:256
	v_lshl_or_b32 v27, v14, 16, v13
	ds_load_u8 v13, v161
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v161 offset:768
	v_perm_b32 v10, v10, v17, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v161 offset:7168
	v_lshl_or_b32 v26, v9, 16, v10
	ds_load_u8 v9, v161 offset:512
	ds_load_u8 v10, v161 offset:7424
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v161 offset:7936
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	ds_load_u8 v13, v161 offset:6144
	v_lshl_or_b32 v25, v9, 16, v11
	ds_load_u8 v9, v161 offset:7680
	ds_load_u8 v11, v161 offset:6400
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v161 offset:6912
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v161 offset:6656
	v_lshl_or_b32 v32, v9, 16, v10
	ds_load_u8 v9, v161 offset:5376
	ds_load_u8 v10, v161 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v161 offset:5888
	ds_load_u8 v11, v161 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v161 offset:4352
	ds_load_u8 v10, v161 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v161 offset:4864
	ds_load_u8 v11, v161 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[169:172], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v161 offset:3456
	ds_load_u8 v26, v161 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[45:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[173:176], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v161 offset:3968
	ds_load_u8 v27, v161 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v161 offset:2432
	ds_load_u8 v28, v161 offset:2176
	v_lshl_or_b32 v52, v26, 16, v25
	ds_load_u8 v25, v161 offset:1408
	ds_load_u8 v26, v161 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v161 offset:2944
	ds_load_u8 v29, v161 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v28, 16, v27
	ds_load_u8 v26, v161 offset:1920
	ds_load_u8 v27, v161 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v50, v26, 16, v25
	ds_load_u8 v25, v161 offset:384
	ds_load_u8 v26, v161 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v161 offset:896
	ds_load_u8 v27, v161 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v26, 16, v25
	ds_load_u8 v25, v161 offset:7552
	ds_load_u8 v26, v161 offset:7296
	v_wmma_i32_16x16x16_iu8 v[33:40], v[49:52], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v161 offset:8064
	ds_load_u8 v27, v161 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v161 offset:6528
	ds_load_u8 v28, v161 offset:6272
	v_lshl_or_b32 v56, v26, 16, v25
	ds_load_u8 v25, v161 offset:5504
	ds_load_u8 v26, v161 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v161 offset:7040
	ds_load_u8 v29, v161 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v28, 16, v27
	ds_load_u8 v26, v161 offset:6016
	ds_load_u8 v27, v161 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v54, v26, 16, v25
	ds_load_u8 v25, v161 offset:4480
	ds_load_u8 v26, v161 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v161 offset:4992
	ds_load_u8 v27, v161 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v49, v161 offset:19712
	ds_load_u8 v50, v161 offset:19456
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[53:56], v[173:176], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:20224
	ds_load_u8 v51, v161 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v161 offset:18688
	ds_load_u8 v52, v161 offset:18432
	v_lshl_or_b32 v180, v50, 16, v49
	ds_load_u8 v49, v161 offset:17664
	ds_load_u8 v50, v161 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v161 offset:19200
	ds_load_u8 v53, v161 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v52, 16, v51
	ds_load_u8 v50, v161 offset:18176
	ds_load_u8 v51, v161 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v178, v50, 16, v49
	ds_load_u8 v49, v161 offset:16640
	ds_load_u8 v50, v161 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:17152
	ds_load_u8 v51, v161 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v50, 16, v49
	ds_load_u8 v49, v161 offset:23808
	ds_load_u8 v50, v161 offset:23552
	v_wmma_i32_16x16x16_iu8 v[65:72], v[177:180], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:24320
	ds_load_u8 v51, v161 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v161 offset:22784
	ds_load_u8 v52, v161 offset:22528
	v_lshl_or_b32 v184, v50, 16, v49
	ds_load_u8 v49, v161 offset:21760
	ds_load_u8 v50, v161 offset:21504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v161 offset:23296
	ds_load_u8 v53, v161 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v52, 16, v51
	ds_load_u8 v50, v161 offset:22272
	ds_load_u8 v51, v161 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v182, v50, 16, v49
	ds_load_u8 v49, v161 offset:20736
	ds_load_u8 v50, v161 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:21248
	ds_load_u8 v51, v161 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v50, 16, v49
	ds_load_u8 v49, v161 offset:19840
	ds_load_u8 v50, v161 offset:19584
	v_wmma_i32_16x16x16_iu8 v[65:72], v[181:184], v[45:48], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:20352
	ds_load_u8 v51, v161 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v161 offset:18816
	ds_load_u8 v52, v161 offset:18560
	v_lshl_or_b32 v188, v50, 16, v49
	ds_load_u8 v49, v161 offset:17792
	ds_load_u8 v50, v161 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v161 offset:19328
	ds_load_u8 v53, v161 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v52, 16, v51
	ds_load_u8 v50, v161 offset:18304
	ds_load_u8 v51, v161 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v186, v50, 16, v49
	ds_load_u8 v49, v161 offset:16768
	ds_load_u8 v50, v161 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:17280
	ds_load_u8 v51, v161 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v50, 16, v49
	ds_load_u8 v49, v161 offset:23936
	ds_load_u8 v50, v161 offset:23680
	v_wmma_i32_16x16x16_iu8 v[57:64], v[185:188], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:24448
	ds_load_u8 v51, v161 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v161 offset:22912
	ds_load_u8 v52, v161 offset:22656
	v_lshl_or_b32 v192, v50, 16, v49
	ds_load_u8 v49, v161 offset:21888
	ds_load_u8 v50, v161 offset:21632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v161 offset:23424
	ds_load_u8 v53, v161 offset:23168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v52, 16, v51
	ds_load_u8 v50, v161 offset:22400
	ds_load_u8 v51, v161 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v190, v50, 16, v49
	ds_load_u8 v49, v161 offset:20864
	ds_load_u8 v50, v161 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v161 offset:21376
	ds_load_u8 v51, v161 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[177:180], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[177:180], v165 offset:33792
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[57:64], v[189:192], v[45:48], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[185:188], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v169, v161 offset:11520
	ds_load_u8 v170, v161 offset:11264
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[181:184], v[173:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[189:192], v[173:176], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:12032
	ds_load_u8 v171, v161 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v161 offset:10496
	ds_load_u8 v172, v161 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v161 offset:11008
	ds_load_u8 v173, v161 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v172, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	ds_load_u8 v169, v161 offset:9472
	ds_load_u8 v170, v161 offset:9216
	v_lshl_or_b32 v171, v173, 16, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:9984
	ds_load_u8 v173, v161 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v173, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v161 offset:8448
	ds_load_u8 v173, v161 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v173, v169, 0xc0c0004
	ds_load_u8 v173, v161 offset:8960
	ds_load_u8 v174, v161 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v173, 16, v169
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[173:176], v165 offset:32768
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[169:172], v[177:180], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[169:172], v[173:176], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v169, v161 offset:11648
	ds_load_u8 v170, v161 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:12160
	ds_load_u8 v171, v161 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v161 offset:10624
	ds_load_u8 v172, v161 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v161 offset:11136
	ds_load_u8 v181, v161 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v172, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	ds_load_u8 v169, v161 offset:9600
	ds_load_u8 v170, v161 offset:9344
	v_lshl_or_b32 v171, v181, 16, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:10112
	ds_load_u8 v181, v161 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v181, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v161 offset:8576
	ds_load_u8 v181, v161 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v181, v169, 0xc0c0004
	ds_load_u8 v181, v161 offset:9088
	ds_load_u8 v182, v161 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v181, 16, v169
	v_wmma_i32_16x16x16_iu8 v[33:40], v[169:172], v[173:176], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[169:172], v[177:180], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v169, v161 offset:27904
	ds_load_u8 v170, v161 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:28416
	ds_load_u8 v171, v161 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v161 offset:26880
	ds_load_u8 v172, v161 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v161 offset:27392
	ds_load_u8 v181, v161 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v172, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	ds_load_u8 v169, v161 offset:25856
	ds_load_u8 v170, v161 offset:25600
	v_lshl_or_b32 v171, v181, 16, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:26368
	ds_load_u8 v181, v161 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v181, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v161 offset:24832
	ds_load_u8 v181, v161 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v181, v169, 0xc0c0004
	ds_load_u8 v181, v161 offset:25344
	ds_load_u8 v182, v161 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v181, 16, v169
	ds_load_u8 v181, v161 offset:28032
	ds_load_u8 v182, v161 offset:27776
	v_wmma_i32_16x16x16_iu8 v[65:72], v[169:172], v[173:176], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[169:172], v[177:180], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v169, v161 offset:15616
	ds_load_u8 v170, v161 offset:15360
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v161 offset:28544
	ds_load_u8 v183, v161 offset:28288
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:16128
	ds_load_u8 v171, v161 offset:15872
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v161 offset:27008
	ds_load_u8 v184, v161 offset:26752
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v161 offset:14592
	ds_load_u8 v172, v161 offset:14336
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v161 offset:27520
	ds_load_u8 v185, v161 offset:27264
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v185, v184, 0xc0c0004
	v_lshl_or_b32 v184, v182, 16, v181
	ds_load_u8 v181, v161 offset:25984
	ds_load_u8 v182, v161 offset:25728
	v_lshl_or_b32 v183, v185, 16, v183
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v161 offset:26496
	ds_load_u8 v185, v161 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v185, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v182, 16, v181
	ds_load_u8 v181, v161 offset:24960
	ds_load_u8 v185, v161 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v185, v181, 0xc0c0004
	ds_load_u8 v185, v161 offset:25472
	ds_load_u8 v186, v161 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v185, 16, v181
	v_wmma_i32_16x16x16_iu8 v[57:64], v[181:184], v[173:176], v[57:64] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v172, v161 offset:15104
	ds_load_u8 v173, v161 offset:14848
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[181:184], v[177:180], v[41:48] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[177:180], v166 offset:33792
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v173, v173, v172, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	ds_load_u8 v169, v161 offset:13568
	ds_load_u8 v170, v161 offset:13312
	v_lshl_or_b32 v171, v173, 16, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:14080
	ds_load_u8 v173, v161 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v173, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v161 offset:12544
	ds_load_u8 v173, v161 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v173, v169, 0xc0c0004
	ds_load_u8 v173, v161 offset:13056
	ds_load_u8 v174, v161 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v173, 16, v169
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[173:176], v166 offset:32768
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[169:172], v[177:180], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v188, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s46, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v192, v13
	v_cvt_f32_i32_e32 v187, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v150, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v189, v16
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s47, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s46, v151
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v190, v15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v191, v14
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[169:172], v[173:176], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v169, v161 offset:15744
	ds_load_u8 v170, v161 offset:15488
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s47, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s46, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s47, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s46, v154
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s47, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v74, s20, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:16256
	ds_load_u8 v171, v161 offset:16000
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v161 offset:14720
	ds_load_u8 v172, v161 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v161 offset:15232
	ds_load_u8 v181, v161 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v172, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	ds_load_u8 v169, v161 offset:13696
	ds_load_u8 v170, v161 offset:13440
	v_lshl_or_b32 v171, v181, 16, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:14208
	ds_load_u8 v181, v161 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v181, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v161 offset:12672
	ds_load_u8 v181, v161 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v181, v169, 0xc0c0004
	ds_load_u8 v181, v161 offset:13184
	ds_load_u8 v182, v161 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v181, 16, v169
	v_wmma_i32_16x16x16_iu8 v[33:40], v[169:172], v[173:176], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[169:172], v[177:180], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v169, v161 offset:32000
	ds_load_u8 v170, v161 offset:31744
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v201, v25
	v_cvt_f32_i32_e32 v205, v29
	v_cvt_f32_i32_e32 v202, v30
	v_cvt_f32_i32_e32 v203, v31
	v_cvt_f32_i32_e32 v204, v32
	v_cvt_f32_i32_e32 v206, v28
	v_cvt_f32_i32_e32 v207, v27
	v_cvt_f32_i32_e32 v208, v26
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:32512
	ds_load_u8 v171, v161 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v161 offset:30976
	ds_load_u8 v172, v161 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v161 offset:31488
	ds_load_u8 v181, v161 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v172, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	ds_load_u8 v169, v161 offset:29952
	ds_load_u8 v170, v161 offset:29696
	v_lshl_or_b32 v171, v181, 16, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v161 offset:30464
	ds_load_u8 v181, v161 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v181, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v161 offset:28928
	ds_load_u8 v181, v161 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v181, v169, 0xc0c0004
	ds_load_u8 v181, v161 offset:29440
	ds_load_u8 v182, v161 offset:29184
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v167, v9 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v149, s18, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	v_lshl_or_b32 v169, v181, 16, v169
	ds_load_u8 v181, v161 offset:32128
	ds_load_u8 v182, v161 offset:31872
	v_wmma_i32_16x16x16_iu8 v[65:72], v[169:172], v[173:176], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[169:172], v[177:180], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v172, v17
	v_cvt_f32_i32_e32 v169, v20
	v_cvt_f32_i32_e32 v170, v19
	v_cvt_f32_i32_e32 v171, v18
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v193, v52
	v_cvt_f32_i32_e32 v194, v51
	v_cvt_f32_i32_e32 v195, v50
	v_cvt_f32_i32_e32 v196, v49
	v_cvt_f32_i32_e32 v197, v56
	v_cvt_f32_i32_e32 v198, v55
	v_cvt_f32_i32_e32 v199, v54
	v_cvt_f32_i32_e32 v200, v53
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v161 offset:32640
	ds_load_u8 v183, v161 offset:32384
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v161 offset:31104
	ds_load_u8 v184, v161 offset:30848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v161 offset:31616
	ds_load_u8 v185, v161 offset:31360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v185, v184, 0xc0c0004
	v_lshl_or_b32 v184, v182, 16, v181
	ds_load_u8 v181, v161 offset:30080
	ds_load_u8 v182, v161 offset:29824
	v_lshl_or_b32 v183, v185, 16, v183
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v161 offset:30592
	ds_load_u8 v185, v161 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v185, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v182, 16, v181
	ds_load_u8 v181, v161 offset:29056
	ds_load_u8 v185, v161 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v185, v181, 0xc0c0004
	ds_load_u8 v185, v161 offset:29568
	ds_load_u8 v186, v161 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v186, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s17, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v181, v185, 16, v181
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v185, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s17, v156
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[57:64], v[181:184], v[173:176], v[57:64] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v12, s0
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s17, v157
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[181:184], v[177:180], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v33
	v_cvt_f32_i32_e32 v181, v37
	v_cvt_f32_i32_e32 v173, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v12, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s17, v76
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v209, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v174, v23
	v_cvt_f32_i32_e32 v175, v22
	v_cvt_f32_i32_e32 v178, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v12, s4
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s19, v75
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v179, v39
	v_cvt_f32_i32_e32 v180, v40
	v_cvt_f32_i32_e32 v182, v36
	v_cvt_f32_i32_e32 v183, v35
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v25, 0x80000000, v12, vcc_lo
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s19, v156
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v184, v34
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v210, v46
	v_cvt_f32_i32_e32 v211, v47
	v_cvt_f32_i32_e32 v212, v48
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v29, 0x80000000, v12, s0
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s19, v157
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v213, v45
	v_cvt_f32_i32_e32 v214, v44
	v_cvt_f32_i32_e32 v215, v43
	v_cvt_f32_i32_e32 v216, v42
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v33, 0x80000000, v12, s1
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s19, v76
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v37, 0x80000000, v12, s4
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v12, v162, s20, 1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v41, 0x80000000, v12, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v217, v9, s[36:39], 0 offen
	buffer_load_u16 v218, v10, s[36:39], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x7
	buffer_load_b128 v[9:12], v11, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v33, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v219, v41, s[40:43], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[41:44], v168 offset:35328
	ds_load_b128 v[45:48], v168 offset:35344
	ds_load_b128 v[49:52], v168 offset:34816
	ds_load_b128 v[53:56], v168 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v219, 16, v219
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v167, v219 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v159, v[9:12]
	ds_store_b128 v159, v[13:16] offset:4096
	ds_store_b128 v159, v[17:20] offset:8192
	ds_store_b128 v159, v[21:24] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b128 v159, v[25:28] offset:16384
	ds_store_b128 v159, v[29:32] offset:20480
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[9:12], v168 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v14, 16, v218
	v_lshlrev_b32_e32 v13, 16, v217
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v160, v[77:78] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b128 v159, v[33:36] offset:24576
	ds_store_b128 v159, v[37:40] offset:28672
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v56, v14
	v_dual_mul_f32 v28, v55, v14 :: v_dual_mul_f32 v23, v56, v13
	v_mul_f32_e32 v24, v55, v13
	v_mul_f32_e32 v25, v54, v13
	v_mul_f32_e32 v29, v54, v14
	v_mul_f32_e32 v54, v42, v13
	v_dual_mul_f32 v42, v42, v14 :: v_dual_mul_f32 v15, v52, v13
	v_mul_f32_e32 v16, v51, v13
	v_mul_f32_e32 v17, v50, v13
	v_dual_mul_f32 v18, v49, v13 :: v_dual_mul_f32 v19, v52, v14
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v20, v51, v14 :: v_dual_mul_f32 v55, v12, v13
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v56, v11, v13 :: v_dual_mul_f32 v221, v10, v14
	v_dual_mul_f32 v217, v10, v13 :: v_dual_mul_f32 v220, v11, v14
	v_dual_mul_f32 v218, v9, v13 :: v_dual_mul_f32 v219, v12, v14
	v_mul_f32_e32 v222, v9, v14
	ds_load_b128 v[9:12], v168 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v50, v14
	v_mul_f32_e32 v22, v49, v14
	v_mul_f32_e32 v26, v53, v13
	v_dual_mul_f32 v30, v53, v14 :: v_dual_mul_f32 v31, v46, v13
	v_mul_f32_e32 v32, v47, v13
	v_dual_mul_f32 v49, v48, v13 :: v_dual_mul_f32 v46, v46, v14
	v_mul_f32_e32 v47, v47, v14
	v_dual_mul_f32 v48, v48, v14 :: v_dual_mul_f32 v51, v41, v13
	v_mul_f32_e32 v50, v45, v13
	v_mul_f32_e32 v45, v45, v14
	v_dual_mul_f32 v41, v41, v14 :: v_dual_mul_f32 v52, v44, v13
	v_dual_mul_f32 v53, v43, v13 :: v_dual_mul_f32 v44, v44, v14
	v_dual_mul_f32 v43, v43, v14 :: v_dual_fmac_f32 v140, v18, v172
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v137, v16, v170
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v223, v12, v13
	v_dual_mul_f32 v224, v11, v13 :: v_dual_mul_f32 v229, v10, v14
	v_dual_mul_f32 v225, v10, v13 :: v_dual_mul_f32 v228, v11, v14
	v_dual_mul_f32 v226, v9, v13 :: v_dual_mul_f32 v227, v12, v14
	v_mul_f32_e32 v230, v9, v14
	ds_load_b128 v[9:12], v168 offset:35344
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v139, v17, v171 :: v_dual_fmac_f32 v138, v15, v169
	v_dual_fmac_f32 v135, v25, v175 :: v_dual_fmac_f32 v136, v26, v176
	v_dual_fmac_f32 v133, v23, v173 :: v_dual_fmac_f32 v134, v24, v174
	v_dual_fmac_f32 v148, v51, v177 :: v_dual_fmac_f32 v131, v53, v183
	v_dual_fmac_f32 v132, v54, v184 :: v_dual_fmac_f32 v147, v31, v178
	v_dual_fmac_f32 v130, v52, v182 :: v_dual_fmac_f32 v129, v50, v181
	v_dual_fmac_f32 v146, v32, v179 :: v_dual_fmac_f32 v145, v49, v180
	v_dual_fmac_f32 v128, v22, v188 :: v_dual_fmac_f32 v127, v21, v187
	v_dual_fmac_f32 v125, v20, v186 :: v_dual_fmac_f32 v126, v19, v185
	v_dual_fmac_f32 v124, v30, v192 :: v_dual_fmac_f32 v123, v29, v191
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v231, v10, v13
	v_mul_f32_e32 v232, v11, v13
	v_dual_mul_f32 v233, v12, v13 :: v_dual_mul_f32 v234, v10, v14
	v_mul_f32_e32 v235, v11, v14
	v_dual_mul_f32 v236, v12, v14 :: v_dual_mul_f32 v237, v9, v13
	v_mul_f32_e32 v238, v9, v14
	ds_load_b128 v[9:12], v168 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v122, v28, v190 :: v_dual_fmac_f32 v121, v27, v189
	v_dual_fmac_f32 v144, v41, v201 :: v_dual_fmac_f32 v87, v43, v207
	v_dual_fmac_f32 v88, v42, v208 :: v_dual_fmac_f32 v85, v45, v205
	v_dual_fmac_f32 v143, v46, v202 :: v_dual_fmac_f32 v142, v47, v203
	v_dual_fmac_f32 v141, v48, v204 :: v_dual_fmac_f32 v120, v218, v65
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v112, v226, v69 :: v_dual_fmac_f32 v119, v231, v62
	v_dual_fmac_f32 v110, v225, v70 :: v_dual_fmac_f32 v101, v222, v196
	v_dual_fmac_f32 v108, v224, v71 :: v_dual_fmac_f32 v115, v233, v64
	v_dual_fmac_f32 v106, v223, v72 :: v_dual_fmac_f32 v95, v228, v198
	v_dual_fmac_f32 v102, v237, v61 :: v_dual_fmac_f32 v97, v230, v200
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v239, v9, v13
	v_mul_f32_e32 v240, v12, v13
	v_mul_f32_e32 v241, v11, v13
	v_mul_f32_e32 v13, v10, v13
	v_mul_f32_e32 v9, v9, v14
	v_mul_f32_e32 v12, v12, v14
	v_mul_f32_e32 v11, v11, v14
	v_mul_f32_e32 v10, v10, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v86, v44, v206 :: v_dual_fmac_f32 v93, v239, v57
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v118, v217, v66 :: v_dual_fmac_f32 v103, v240, v60
	v_dual_fmac_f32 v114, v56, v67 :: v_dual_fmac_f32 v105, v13, v58
	v_dual_fmac_f32 v116, v55, v68 :: v_dual_fmac_f32 v117, v232, v63
	v_dual_fmac_f32 v104, v241, v59 :: v_dual_fmac_f32 v99, v219, v193
	v_dual_fmac_f32 v100, v221, v195 :: v_dual_fmac_f32 v89, v238, v213
	v_dual_fmac_f32 v98, v220, v194 :: v_dual_fmac_f32 v113, v9, v209
	v_dual_fmac_f32 v96, v229, v199 :: v_dual_fmac_f32 v111, v234, v210
	v_dual_fmac_f32 v94, v227, v197 :: v_dual_fmac_f32 v107, v236, v212
	v_dual_fmac_f32 v92, v10, v216 :: v_dual_fmac_f32 v91, v11, v215
	v_dual_fmac_f32 v90, v12, v214 :: v_dual_fmac_f32 v109, v235, v211
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, v1
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v34, 6, v0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v33, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v34, 3, v155
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v36, 0, 1, s2
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v2, 0, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v3, v1, 16, 0
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v5, v1, 48, 0
	ds_load_b128 v[29:32], v2 offset:32768
	ds_load_b128 v[17:20], v2 offset:33792
	ds_load_b128 v[25:28], v3 offset:32768
	ds_load_b128 v[13:16], v3 offset:33792
	ds_load_b128 v[21:24], v4 offset:32768
	ds_load_b128 v[1:4], v4 offset:33792
	ds_load_b128 v[9:12], v5 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v5 offset:33792
	v_lshrrev_b32_e32 v35, 1, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v36
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v63, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v37, v35, v83
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	v_add_nc_u32_e32 v174, 0, v37
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v38, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_mov_b32 s4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v36, v174 offset:3328
	ds_load_u8 v37, v174 offset:3072
	ds_load_u8 v38, v174 offset:3840
	ds_load_u8 v39, v174 offset:3584
	ds_load_u8 v41, v174 offset:2304
	ds_load_u8 v42, v174 offset:2048
	ds_load_u8 v43, v174 offset:2816
	ds_load_u8 v44, v174 offset:2560
	ds_load_u8 v45, v174 offset:1280
	ds_load_u8 v46, v174 offset:1024
	ds_load_u8 v47, v174 offset:1792
	ds_load_u8 v48, v174 offset:1536
	ds_load_u8 v49, v174 offset:3968
	ds_load_u8 v50, v174 offset:3712
	ds_load_u8 v51, v174 offset:3456
	ds_load_u8 v53, v174 offset:3200
	ds_load_u8 v52, v174 offset:256
	ds_load_u8 v54, v174
	ds_load_u8 v55, v174 offset:768
	ds_load_u8 v56, v174 offset:512
	ds_load_u8 v57, v174 offset:2944
	ds_load_u8 v58, v174 offset:2688
	ds_load_u8 v59, v174 offset:2432
	ds_load_u8 v60, v174 offset:2176
	ds_load_u8 v65, v174 offset:896
	ds_load_u8 v66, v174 offset:640
	ds_load_u8 v67, v174 offset:384
	ds_load_u8 v68, v174 offset:128
	ds_load_u8 v167, v174 offset:7040
	ds_load_u8 v168, v174 offset:6784
	ds_load_u8 v169, v174 offset:6528
	ds_load_u8 v170, v174 offset:6272
	ds_load_u8 v171, v174 offset:6016
	ds_load_u8 v172, v174 offset:5760
	ds_load_u8 v173, v174 offset:5504
	ds_load_u8 v175, v174 offset:5248
	ds_load_u8 v61, v174 offset:1920
	ds_load_u8 v62, v174 offset:1664
	ds_load_u8 v63, v174 offset:1408
	ds_load_u8 v64, v174 offset:1152
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v190, v174 offset:10112
	ds_load_u8 v191, v174 offset:9856
	ds_load_u8 v192, v174 offset:9600
	ds_load_u8 v193, v174 offset:9344
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v37, v39, v38, 0xc0c0004
	ds_load_u8 v176, v174 offset:4992
	ds_load_u8 v177, v174 offset:4736
	ds_load_u8 v178, v174 offset:4480
	ds_load_u8 v179, v174 offset:4224
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v42, v41, 0xc0c0004
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v41, v44, v43, 0xc0c0004
	v_lshl_or_b32 v39, v37, 16, v36
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v42, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v36, v54, v52, 0xc0c0004
	v_perm_b32 v43, v48, v47, 0xc0c0004
	v_lshl_or_b32 v38, v41, 16, v38
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v41, v56, v55, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v51, v53, v51, 0xc0c0004
	v_lshl_or_b32 v37, v43, 16, v42
	ds_load_u8 v42, v174 offset:7424
	ds_load_u8 v43, v174 offset:7168
	ds_load_u8 v44, v174 offset:7936
	ds_load_u8 v45, v174 offset:7680
	v_lshl_or_b32 v36, v41, 16, v36
	ds_load_u8 v41, v174 offset:6400
	ds_load_u8 v46, v174 offset:6144
	ds_load_u8 v47, v174 offset:6912
	ds_load_u8 v48, v174 offset:6656
	ds_load_u8 v52, v174 offset:5376
	ds_load_u8 v54, v174 offset:5120
	ds_load_u8 v55, v174 offset:5888
	ds_load_u8 v56, v174 offset:5632
	ds_load_u8 v69, v174 offset:4352
	ds_load_u8 v70, v174 offset:4096
	ds_load_u8 v71, v174 offset:4864
	ds_load_u8 v72, v174 offset:4608
	ds_load_u8 v75, v174 offset:8064
	ds_load_u8 v76, v174 offset:7808
	ds_load_u8 v77, v174 offset:7552
	ds_load_u8 v78, v174 offset:7296
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v50, v60, v59, 0xc0c0004
	v_perm_b32 v53, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v59, v68, v67, 0xc0c0004
	v_perm_b32 v60, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v66, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v46, v41, 0xc0c0004
	v_perm_b32 v67, v175, v173, 0xc0c0004
	v_perm_b32 v68, v172, v171, 0xc0c0004
	v_perm_b32 v57, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v54, v52, 0xc0c0004
	v_perm_b32 v58, v62, v61, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v72, v71, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_perm_b32 v45, v48, v47, 0xc0c0004
	v_perm_b32 v47, v56, v55, 0xc0c0004
	v_perm_b32 v48, v70, v69, 0xc0c0004
	ds_load_u8 v54, v174 offset:11520
	ds_load_u8 v55, v174 offset:11264
	ds_load_u8 v56, v174 offset:12032
	ds_load_u8 v69, v174 offset:11776
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v43, v45, 16, v41
	v_lshl_or_b32 v42, v47, 16, v46
	v_lshl_or_b32 v41, v52, 16, v48
	ds_load_u8 v45, v174 offset:10496
	ds_load_u8 v46, v174 offset:10240
	ds_load_u8 v47, v174 offset:11008
	ds_load_u8 v48, v174 offset:10752
	ds_load_u8 v52, v174 offset:9472
	ds_load_u8 v70, v174 offset:9216
	ds_load_u8 v71, v174 offset:9984
	ds_load_u8 v72, v174 offset:9728
	ds_load_u8 v180, v174 offset:12160
	ds_load_u8 v181, v174 offset:11904
	ds_load_u8 v182, v174 offset:11648
	ds_load_u8 v183, v174 offset:11392
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v158, s11 :: v_dual_mov_b32 v157, s10
	v_dual_mov_b32 v156, s9 :: v_dual_mov_b32 v155, s8
	v_dual_mov_b32 v154, s7 :: v_dual_mov_b32 v153, s6
	v_dual_mov_b32 v152, s5 :: v_dual_mov_b32 v151, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v70, v52, 0xc0c0004
	v_perm_b32 v55, v69, v56, 0xc0c0004
	ds_load_u8 v56, v174 offset:8448
	ds_load_u8 v69, v174 offset:8192
	ds_load_u8 v184, v174 offset:8960
	ds_load_u8 v185, v174 offset:8704
	ds_load_u8 v186, v174 offset:11136
	ds_load_u8 v187, v174 offset:10880
	ds_load_u8 v188, v174 offset:10624
	ds_load_u8 v189, v174 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	ds_load_u8 v71, v174 offset:15616
	ds_load_u8 v72, v174 offset:15360
	ds_load_u8 v194, v174 offset:9088
	ds_load_u8 v195, v174 offset:8832
	ds_load_u8 v196, v174 offset:8576
	ds_load_u8 v197, v174 offset:8320
	v_lshl_or_b32 v47, v46, 16, v45
	v_lshl_or_b32 v48, v55, 16, v54
	v_perm_b32 v167, v177, v176, 0xc0c0004
	v_lshl_or_b32 v46, v70, 16, v52
	v_wmma_i32_16x16x16_iu8 v[159:166], v[36:39], v[29:32], v[151:158] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[41:44], v[25:28], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v69, v56, 0xc0c0004
	ds_load_u8 v69, v174 offset:16128
	ds_load_u8 v198, v174 offset:15872
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v72, v71, 0xc0c0004
	ds_load_u8 v71, v174 offset:13568
	ds_load_u8 v72, v174 offset:13312
	ds_load_u8 v201, v174 offset:14080
	ds_load_u8 v202, v174 offset:13824
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v171, v195, v194, 0xc0c0004
	v_lshl_or_b32 v45, v184, 16, v56
	ds_load_u8 v54, v174 offset:14592
	ds_load_u8 v55, v174 offset:14336
	ds_load_u8 v56, v174 offset:15104
	ds_load_u8 v70, v174 offset:14848
	ds_load_u8 v184, v174 offset:16256
	ds_load_u8 v185, v174 offset:16000
	ds_load_u8 v199, v174 offset:15744
	ds_load_u8 v200, v174 offset:15488
	v_wmma_i32_16x16x16_iu8 v[159:166], v[45:48], v[21:24], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v69, v198, v69, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v207, v55, v54, 0xc0c0004
	ds_load_u8 v54, v174 offset:13056
	ds_load_u8 v55, v174 offset:12800
	ds_load_u8 v208, v174 offset:14208
	ds_load_u8 v209, v174 offset:13952
	ds_load_u8 v210, v174 offset:13696
	ds_load_u8 v211, v174 offset:13440
	ds_load_u8 v198, v174 offset:12544
	ds_load_u8 v203, v174 offset:12288
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v70, v70, v56, 0xc0c0004
	v_lshl_or_b32 v52, v69, 16, v52
	ds_load_u8 v69, v174 offset:15232
	ds_load_u8 v204, v174 offset:14976
	ds_load_u8 v205, v174 offset:14720
	ds_load_u8 v206, v174 offset:14464
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v202, v201, 0xc0c0004
	ds_load_u8 v201, v174 offset:13184
	ds_load_u8 v202, v174 offset:12928
	ds_load_u8 v212, v174 offset:12672
	ds_load_u8 v213, v174 offset:12416
	v_lshl_or_b32 v56, v49, 16, v51
	v_perm_b32 v51, v170, v169, 0xc0c0004
	v_perm_b32 v49, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v77, v66, 16, v51
	v_perm_b32 v51, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v55, v54, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v50
	v_perm_b32 v50, v76, v75, 0xc0c0004
	v_lshl_or_b32 v76, v68, 16, v67
	v_perm_b32 v66, v187, v186, 0xc0c0004
	v_perm_b32 v67, v193, v192, 0xc0c0004
	v_perm_b32 v68, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v198, v203, v198, 0xc0c0004
	v_lshl_or_b32 v54, v58, 16, v57
	v_lshl_or_b32 v53, v60, 16, v59
	v_perm_b32 v75, v179, v178, 0xc0c0004
	v_lshl_or_b32 v78, v50, 16, v49
	v_perm_b32 v49, v183, v182, 0xc0c0004
	v_perm_b32 v50, v181, v180, 0xc0c0004
	v_lshl_or_b32 v169, v66, 16, v51
	v_lshl_or_b32 v168, v68, 16, v67
	v_perm_b32 v66, v200, v199, 0xc0c0004
	v_perm_b32 v67, v185, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[53:56], v[29:32], v[151:158] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v167, 16, v75
	v_perm_b32 v167, v197, v196, 0xc0c0004
	v_lshl_or_b32 v170, v50, 16, v49
	v_lshl_or_b32 v51, v70, 16, v207
	v_lshl_or_b32 v50, v72, 16, v71
	v_lshl_or_b32 v49, v65, 16, v198
	v_lshl_or_b32 v178, v67, 16, v66
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v172, v204, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[36:39], v[17:20], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[53:56], v[17:20], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[75:78], v[25:28], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v171, 16, v167
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v171, v206, v205, 0xc0c0004
	v_perm_b32 v173, v211, v210, 0xc0c0004
	v_perm_b32 v36, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v213, v212, 0xc0c0004
	v_perm_b32 v38, v202, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[41:44], v[13:16], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[75:78], v[13:16], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[167:170], v[21:24], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v172, 16, v171
	v_lshl_or_b32 v176, v36, 16, v173
	v_lshl_or_b32 v175, v38, 16, v37
	v_wmma_i32_16x16x16_iu8 v[65:72], v[45:48], v[1:4], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[1:4], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[49:52], v[9:12], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[175:178], v[9:12], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[49:52], v[5:8], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[175:178], v[5:8], v[151:158] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v163
	v_cvt_f32_i32_e32 v49, v164
	v_cvt_f32_i32_e32 v51, v165
	v_cvt_f32_i32_e32 v53, v166
	v_cvt_f32_i32_e32 v52, v57
	v_cvt_f32_i32_e32 v54, v58
	v_cvt_f32_i32_e32 v56, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v55, v62
	v_cvt_f32_i32_e32 v57, v63
	v_cvt_f32_i32_e32 v58, v64
	v_cvt_f32_i32_e32 v60, v65
	v_cvt_f32_i32_e32 v62, v66
	v_cvt_f32_i32_e32 v64, v67
	v_cvt_f32_i32_e32 v65, v68
	v_cvt_f32_i32_e32 v45, v69
	v_cvt_f32_i32_e32 v46, v70
	v_cvt_f32_i32_e32 v48, v71
	v_cvt_f32_i32_e32 v50, v72
	v_cvt_f32_i32_e32 v63, v151
	v_cvt_f32_i32_e32 v36, v152
	v_cvt_f32_i32_e32 v37, v153
	v_cvt_f32_i32_e32 v38, v154
	v_cvt_f32_i32_e32 v39, v155
	v_cvt_f32_i32_e32 v66, v156
	v_cvt_f32_i32_e32 v67, v157
	v_cvt_f32_i32_e32 v68, v158
	v_cvt_f32_i32_e32 v69, v159
	v_cvt_f32_i32_e32 v70, v160
	v_cvt_f32_i32_e32 v71, v161
	v_cvt_f32_i32_e32 v72, v162
.LBB0_9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v41, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v40, v174 offset:19712
	ds_load_u8 v41, v174 offset:19456
	ds_load_u8 v42, v174 offset:20224
	ds_load_u8 v43, v174 offset:19968
	ds_load_u8 v44, v174 offset:18688
	ds_load_u8 v75, v174 offset:18432
	ds_load_u8 v76, v174 offset:19200
	ds_load_u8 v77, v174 offset:18944
	ds_load_u8 v78, v174 offset:17664
	ds_load_u8 v151, v174 offset:17408
	ds_load_u8 v152, v174 offset:18176
	ds_load_u8 v153, v174 offset:17920
	ds_load_u8 v155, v174 offset:20352
	ds_load_u8 v156, v174 offset:20096
	ds_load_u8 v165, v174 offset:19840
	ds_load_u8 v166, v174 offset:19584
	ds_load_u8 v154, v174 offset:16640
	ds_load_u8 v157, v174 offset:16384
	ds_load_u8 v158, v174 offset:17152
	ds_load_u8 v159, v174 offset:16896
	ds_load_u8 v167, v174 offset:19328
	ds_load_u8 v168, v174 offset:19072
	ds_load_u8 v169, v174 offset:18816
	ds_load_u8 v170, v174 offset:18560
	ds_load_u8 v188, v174 offset:27904
	ds_load_u8 v189, v174 offset:27648
	ds_load_u8 v190, v174 offset:28416
	ds_load_u8 v207, v174 offset:28160
	ds_load_u8 v171, v174 offset:18304
	ds_load_u8 v172, v174 offset:18048
	ds_load_u8 v173, v174 offset:17792
	ds_load_u8 v183, v174 offset:17536
	ds_load_u8 v195, v174 offset:23424
	ds_load_u8 v196, v174 offset:23168
	ds_load_u8 v197, v174 offset:22912
	ds_load_u8 v198, v174 offset:22656
	ds_load_u8 v199, v174 offset:22400
	ds_load_u8 v200, v174 offset:22144
	ds_load_u8 v201, v174 offset:21888
	ds_load_u8 v202, v174 offset:21632
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v203, v174 offset:21376
	ds_load_u8 v204, v174 offset:21120
	ds_load_u8 v205, v174 offset:20864
	ds_load_u8 v206, v174 offset:20608
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	ds_load_u8 v221, v174 offset:26496
	ds_load_u8 v222, v174 offset:26240
	ds_load_u8 v223, v174 offset:25984
	ds_load_u8 v224, v174 offset:25728
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v42, v75, v44, 0xc0c0004
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v44, v77, v76, 0xc0c0004
	v_lshl_or_b32 v43, v41, 16, v40
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v75, v151, v78, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v40, v157, v154, 0xc0c0004
	v_perm_b32 v76, v153, v152, 0xc0c0004
	v_lshl_or_b32 v42, v44, 16, v42
	ds_load_u8 v44, v174 offset:17280
	ds_load_u8 v184, v174 offset:17024
	ds_load_u8 v185, v174 offset:16768
	ds_load_u8 v187, v174 offset:16512
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_lshl_or_b32 v41, v76, 16, v75
	v_perm_b32 v75, v159, v158, 0xc0c0004
	ds_load_u8 v76, v174 offset:23808
	ds_load_u8 v77, v174 offset:23552
	ds_load_u8 v78, v174 offset:24320
	ds_load_u8 v151, v174 offset:24064
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v189, v207, v190, 0xc0c0004
	ds_load_u8 v190, v174 offset:24832
	ds_load_u8 v207, v174 offset:24576
	ds_load_u8 v215, v174 offset:25344
	ds_load_u8 v216, v174 offset:25088
	ds_load_u8 v217, v174 offset:27520
	ds_load_u8 v218, v174 offset:27264
	ds_load_u8 v219, v174 offset:27008
	ds_load_u8 v220, v174 offset:26752
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_lshl_or_b32 v40, v75, 16, v40
	ds_load_u8 v75, v174 offset:22784
	ds_load_u8 v152, v174 offset:22528
	ds_load_u8 v153, v174 offset:23296
	ds_load_u8 v154, v174 offset:23040
	ds_load_u8 v157, v174 offset:21760
	ds_load_u8 v158, v174 offset:21504
	ds_load_u8 v159, v174 offset:22272
	ds_load_u8 v160, v174 offset:22016
	ds_load_u8 v161, v174 offset:20736
	ds_load_u8 v162, v174 offset:20480
	ds_load_u8 v163, v174 offset:21248
	ds_load_u8 v164, v174 offset:20992
	ds_load_u8 v191, v174 offset:24448
	ds_load_u8 v192, v174 offset:24192
	ds_load_u8 v193, v174 offset:23936
	ds_load_u8 v194, v174 offset:23680
	v_perm_b32 v156, v170, v169, 0xc0c0004
	v_perm_b32 v166, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v167, v183, v173, 0xc0c0004
	v_perm_b32 v168, v172, v171, 0xc0c0004
	s_mov_b32 s5, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v75, v152, v75, 0xc0c0004
	s_mov_b32 s6, s4
	v_perm_b32 v44, v184, v44, 0xc0c0004
	s_mov_b32 s7, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v152, v158, v157, 0xc0c0004
	v_perm_b32 v190, v207, v190, 0xc0c0004
	ds_load_u8 v207, v174 offset:32512
	ds_load_u8 v229, v174 offset:32256
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v215, v216, v215, 0xc0c0004
	v_perm_b32 v77, v151, v78, 0xc0c0004
	v_perm_b32 v151, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v153, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v154, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v186, v164, v163, 0xc0c0004
	v_lshl_or_b32 v78, v77, 16, v76
	v_lshl_or_b32 v77, v151, 16, v75
	v_lshl_or_b32 v76, v153, 16, v152
	v_perm_b32 v169, v187, v185, 0xc0c0004
	v_lshl_or_b32 v75, v186, 16, v154
	ds_load_u8 v151, v174 offset:26880
	ds_load_u8 v152, v174 offset:26624
	ds_load_u8 v153, v174 offset:27392
	ds_load_u8 v154, v174 offset:27136
	ds_load_u8 v186, v174 offset:25856
	ds_load_u8 v208, v174 offset:25600
	ds_load_u8 v209, v174 offset:26368
	ds_load_u8 v210, v174 offset:26112
	ds_load_u8 v211, v174 offset:28544
	ds_load_u8 v212, v174 offset:28288
	ds_load_u8 v213, v174 offset:28032
	ds_load_u8 v214, v174 offset:27776
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v182, s11 :: v_dual_mov_b32 v181, s10
	v_dual_mov_b32 v180, s9 :: v_dual_mov_b32 v179, s8
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v207, v229, v207, 0xc0c0004
	ds_load_u8 v229, v174 offset:28928
	ds_load_u8 v234, v174 offset:28672
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_dual_mov_b32 v178, s7 :: v_dual_mov_b32 v177, s6
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v152, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v186, v208, v186, 0xc0c0004
	v_lshl_or_b32 v154, v189, 16, v188
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v208, v210, v209, 0xc0c0004
	ds_load_u8 v209, v174 offset:32000
	ds_load_u8 v210, v174 offset:31744
	ds_load_u8 v225, v174 offset:25472
	ds_load_u8 v226, v174 offset:25216
	ds_load_u8 v227, v174 offset:24960
	ds_load_u8 v228, v174 offset:24704
	v_lshl_or_b32 v153, v152, 16, v151
	v_lshl_or_b32 v151, v215, 16, v190
	v_dual_mov_b32 v176, s5 :: v_dual_mov_b32 v175, s4
	v_lshl_or_b32 v152, v208, 16, v186
	ds_load_u8 v188, v174 offset:30976
	ds_load_u8 v189, v174 offset:30720
	ds_load_u8 v190, v174 offset:31488
	ds_load_u8 v208, v174 offset:31232
	ds_load_u8 v215, v174 offset:32640
	ds_load_u8 v216, v174 offset:32384
	ds_load_u8 v230, v174 offset:32128
	ds_load_u8 v231, v174 offset:31872
	v_lshl_or_b32 v187, v44, 16, v169
	v_perm_b32 v44, v194, v193, 0xc0c0004
	v_perm_b32 v183, v196, v195, 0xc0c0004
	v_perm_b32 v184, v202, v201, 0xc0c0004
	v_perm_b32 v185, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[157:164], v[40:43], v[29:32], v[175:182] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v229, v234, v229, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v186, v210, v209, 0xc0c0004
	ds_load_u8 v209, v174 offset:29952
	ds_load_u8 v210, v174 offset:29696
	ds_load_u8 v232, v174 offset:30464
	ds_load_u8 v233, v174 offset:30208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v195, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[157:164], v[75:78], v[25:28], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v238, v189, v188, 0xc0c0004
	ds_load_u8 v188, v174 offset:29440
	ds_load_u8 v189, v174 offset:29184
	ds_load_u8 v239, v174 offset:30592
	ds_load_u8 v240, v174 offset:30336
	ds_load_u8 v241, v174 offset:30080
	ds_load_u8 v242, v174 offset:29824
	v_lshl_or_b32 v186, v207, 16, v186
	ds_load_u8 v207, v174 offset:31616
	ds_load_u8 v235, v174 offset:31360
	ds_load_u8 v236, v174 offset:31104
	ds_load_u8 v237, v174 offset:30848
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v208, v208, v190, 0xc0c0004
	v_lshl_or_b32 v190, v155, 16, v165
	v_perm_b32 v155, v192, v191, 0xc0c0004
	v_perm_b32 v191, v206, v205, 0xc0c0004
	v_perm_b32 v192, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[157:164], v[151:154], v[21:24], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v209, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v210, v233, v232, 0xc0c0004
	ds_load_u8 v232, v174 offset:29568
	ds_load_u8 v233, v174 offset:29312
	ds_load_u8 v243, v174 offset:29056
	ds_load_u8 v174, v174 offset:28800
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v173, v189, v188, 0xc0c0004
	v_lshl_or_b32 v189, v166, 16, v156
	v_lshl_or_b32 v188, v168, 16, v167
	v_perm_b32 v156, v198, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[187:190], v[29:32], v[175:182] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v155, 16, v44
	v_lshl_or_b32 v31, v183, 16, v156
	v_lshl_or_b32 v30, v185, 16, v184
	v_lshl_or_b32 v29, v192, 16, v191
	v_perm_b32 v44, v214, v213, 0xc0c0004
	v_perm_b32 v155, v212, v211, 0xc0c0004
	v_perm_b32 v156, v220, v219, 0xc0c0004
	v_perm_b32 v183, v218, v217, 0xc0c0004
	v_perm_b32 v184, v224, v223, 0xc0c0004
	v_perm_b32 v185, v222, v221, 0xc0c0004
	v_perm_b32 v191, v228, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[165:172], v[29:32], v[25:28], v[165:172] neg_lo:[1,1,0]
	v_lshl_or_b32 v194, v155, 16, v44
	v_lshl_or_b32 v193, v183, 16, v156
	v_lshl_or_b32 v192, v185, 16, v184
	v_lshl_or_b32 v191, v195, 16, v191
	v_perm_b32 v25, v231, v230, 0xc0c0004
	v_perm_b32 v26, v216, v215, 0xc0c0004
	v_lshl_or_b32 v183, v173, 16, v229
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v237, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[165:172], v[191:194], v[21:24], v[165:172] neg_lo:[1,1,0]
	v_perm_b32 v156, v235, v207, 0xc0c0004
	v_lshl_or_b32 v44, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[21:28], v[40:43], v[17:20], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[187:190], v[17:20], v[175:182] neg_lo:[1,1,0]
	v_perm_b32 v173, v242, v241, 0xc0c0004
	v_perm_b32 v17, v240, v239, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v174, v243, 0xc0c0004
	v_perm_b32 v19, v233, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[75:78], v[13:16], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[29:32], v[13:16], v[175:182] neg_lo:[1,1,0]
	v_lshl_or_b32 v185, v208, 16, v238
	v_lshl_or_b32 v184, v210, 16, v209
	v_lshl_or_b32 v43, v156, 16, v155
	v_lshl_or_b32 v42, v17, 16, v173
	v_lshl_or_b32 v41, v19, 16, v18
	v_wmma_i32_16x16x16_iu8 v[21:28], v[151:154], v[1:4], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[191:194], v[1:4], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[183:186], v[9:12], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[41:44], v[9:12], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[183:186], v[5:8], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[175:182], v[41:44], v[5:8], v[175:182] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v151, v157
	v_cvt_f32_i32_e32 v154, v158
	v_cvt_f32_i32_e32 v158, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v76, v161
	v_cvt_f32_i32_e32 v78, v162
	v_cvt_f32_i32_e32 v153, v163
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v40, v165
	v_cvt_f32_i32_e32 v157, v166
	v_cvt_f32_i32_e32 v161, v167
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v166, v169
	v_cvt_f32_i32_e32 v159, v170
	v_cvt_f32_i32_e32 v162, v171
	v_cvt_f32_i32_e32 v163, v172
	v_cvt_f32_i32_e32 v165, v21
	v_cvt_f32_i32_e32 v167, v22
	v_cvt_f32_i32_e32 v169, v23
	v_cvt_f32_i32_e32 v170, v24
	v_cvt_f32_i32_e32 v75, v25
	v_cvt_f32_i32_e32 v77, v26
	v_cvt_f32_i32_e32 v152, v27
	v_cvt_f32_i32_e32 v155, v28
	v_cvt_f32_i32_e32 v168, v175
	v_cvt_f32_i32_e32 v44, v176
	v_cvt_f32_i32_e32 v43, v177
	v_cvt_f32_i32_e32 v42, v178
	v_cvt_f32_i32_e32 v41, v179
	v_cvt_f32_i32_e32 v171, v180
	v_cvt_f32_i32_e32 v172, v181
	v_cvt_f32_i32_e32 v173, v182
.LBB0_11:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s46, 31
	s_mov_b32 s39, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s0, s46, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_mov_b32 s36, s12
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v5, v80, 2, 0
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	v_mad_u64_u32 v[1:2], null, s0, s44, v[74:75]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v149, s0, 1
	v_add_lshl_u32 v3, v150, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshl_add_u32 v19, v80, 1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v17, v2, s[36:39], 0 offen
	buffer_load_u16 v22, v3, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 28, v82
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v4, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v4, 32, v81
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v20, v5, v4, v3
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
	v_dual_mul_f32 v4, v4, v17 :: v_dual_mul_f32 v27, v14, v18
	v_mul_f32_e32 v74, v12, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v66, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v13, v18
	v_mul_f32_e32 v28, v16, v18
	v_mul_f32_e32 v30, v9, v18
	v_dual_mul_f32 v31, v10, v18 :: v_dual_mul_f32 v16, v16, v17
	v_mul_f32_e32 v32, v11, v18
	v_dual_mul_f32 v149, v6, v18 :: v_dual_mul_f32 v12, v12, v17
	v_dual_mul_f32 v175, v1, v18 :: v_dual_mul_f32 v10, v10, v17
	v_mul_f32_e32 v13, v13, v17
	v_mul_f32_e32 v9, v9, v17
	v_mul_f32_e32 v11, v11, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v57, v146
	v_fma_f32 v5, v5, v63, v144
	v_fma_f32 v3, v3, v67, v142
	v_fma_f32 v4, v4, v68, v141
	v_fma_f32 v57, v74, v53, v133
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v143, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v29, v15, v18 :: v_dual_mul_f32 v14, v14, v17
	v_dual_mul_f32 v174, v8, v18 :: v_dual_mul_f32 v15, v15, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v52, v148
	v_fma_f32 v25, v25, v58, v145
	v_fma_f32 v27, v27, v70, v139
	v_fma_f32 v26, v26, v69, v140
	v_fma_f32 v32, v32, v51, v134
	v_fma_f32 v58, v149, v54, v132
	v_fma_f32 v67, v12, v50, v121
	v_fma_f32 v68, v11, v48, v122
	v_fma_f32 v69, v10, v46, v123
	v_fma_f32 v70, v9, v45, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v144, v5, s2
	v_cndmask_b32_e64 v52, v142, v3, s2
	v_cndmask_b32_e64 v51, v141, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v71, v137
	v_fma_f32 v28, v28, v72, v138
	v_fma_f32 v31, v31, v49, v135
	v_fma_f32 v30, v30, v47, v136
	v_fma_f32 v61, v175, v61, v129
	v_fma_f32 v63, v174, v59, v130
	v_fma_f32 v66, v14, v62, v127
	v_fma_f32 v13, v13, v60, v128
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v139, v27, s2
	v_cndmask_b32_e64 v48, v138, v28, s2
	v_cndmask_b32_e64 v46, v137, v29, s2
	v_cndmask_b32_e64 v47, v136, v30, s2
	v_cndmask_b32_e64 v45, v135, v31, s2
	v_cndmask_b32_e64 v31, v133, v57, s2
	v_cndmask_b32_e64 v30, v132, v58, s2
	v_cndmask_b32_e64 v28, v130, v63, s2
	v_cndmask_b32_e64 v27, v129, v61, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v15, v64, v125
	v_fma_f32 v65, v16, v65, v126
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v145, v25, s2
	v_cndmask_b32_e64 v14, v128, v13, s2
	v_cndmask_b32_e64 v13, v124, v70, s2
	v_cndmask_b32_e64 v25, v125, v64, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v55, v147
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v148, v22, s2
	v_cndmask_b32_e64 v50, v140, v26, s2
	v_cndmask_b32_e64 v26, v127, v66, s2
	v_cndmask_b32_e64 v15, v146, v24, s2
	v_cndmask_b32_e64 v22, v147, v23, s2
	v_cndmask_b32_e64 v23, v122, v68, s2
	v_cndmask_b32_e64 v24, v121, v67, s2
	v_cndmask_b32_e64 v32, v134, v32, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v123, v69, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v19 offset:35328
	ds_load_b128 v[2:5], v19 offset:35344
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v150, v7, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[60:63], v19 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v126, v65, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v150, v56, v131
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v131, v56, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[56:59], v19 offset:34816
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v19, v9, v18
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v64, v3, v18
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v72, v61, v18
	v_mul_f32_e32 v61, v61, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v40, v93
	v_fma_f32 v40, v64, v159, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, v72, v78, v110
	v_fma_f32 v77, v61, v77, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v19, s2
	v_cndmask_b32_e64 v40, v119, v40, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v70, v58, v18
	v_mul_f32_e32 v58, v58, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v58, v58, v169, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v98, v58, s2
	v_cndmask_b32_e64 v58, v96, v77, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v40
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v59, v18
	v_mul_f32_e32 v71, v60, v18
	v_mul_f32_e32 v121, v63, v18
	v_mul_f32_e32 v124, v12, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v69, v69, v160, v116
	v_fma_f32 v76, v71, v76, v112
	v_fma_f32 v121, v121, v156, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v116, v69, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v69, v112, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v93
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v66, v5, v18 :: v_dual_mul_f32 v59, v59, v17
	v_mul_f32_e32 v3, v3, v17
	v_mul_f32_e32 v5, v5, v17
	v_dual_mul_f32 v68, v57, v18 :: v_dual_mul_f32 v63, v63, v17
	v_mul_f32_e32 v65, v4, v18
	v_dual_mul_f32 v4, v4, v17 :: v_dual_mul_f32 v123, v11, v18
	v_mul_f32_e32 v60, v60, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v171, v111
	v_fma_f32 v5, v5, v173, v107
	v_fma_f32 v68, v68, v154, v118
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v57, v57, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v123, v123, v161, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v111, v3, s2
	v_cndmask_b32_e64 v3, v107, v5, s2
	v_cndmask_b32_e64 v5, v118, v68, s2
	v_cndmask_b32_e64 v68, v110, v78, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v74, v62, v18
	v_mul_f32_e32 v62, v62, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v65, v162, v117
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v9, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v57, v57, v167, v100
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v56, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v66, v163, v115
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v117, v64, s2
	v_cndmask_b32_e64 v64, v104, v123, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v122, v10, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v168, v113
	v_fma_f32 v4, v4, v172, v109
	v_fma_f32 v128, v60, v75, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v100, v57, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v2, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v122, v122, v157, v105
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v56, v56, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v59, v59, v170, v99
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v115, v65, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v105, v122, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v105, 0xbfb8aa3b, v68
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v125, v74, v153, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v113, v9, s2
	v_cndmask_b32_e64 v9, v109, v4, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v113, 0xbfb8aa3b, v60
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v166, v102
	v_fma_f32 v67, v67, v151, v120
	v_fma_f32 v56, v56, v165, v101
	v_fma_f32 v126, v63, v155, v94
	v_fma_f32 v127, v62, v152, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v102, v18, s2
	v_cndmask_b32_e64 v18, v99, v59, s2
	v_cndmask_b32_e64 v59, v97, v128, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v97, 0xbfb8aa3b, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v70, v158, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v120, v67, s2
	v_cndmask_b32_e64 v61, v101, v56, s2
	v_cndmask_b32_e64 v56, v94, v126, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v100, 0xbfb8aa3b, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v114, v66, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v94, 0xbfb8aa3b, v75
	v_dual_mul_f32 v102, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v119, 0xbfb8aa3b, v59
	v_mul_f32_e32 v115, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v99, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v108, v125, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v117
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v102
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v119
	v_cndmask_b32_e64 v94, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v115
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v106, v121, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v96, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v111, 0xbfb8aa3b, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v124, v124, v164, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v104, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v78
	v_mul_f32_e32 v101, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v97
	v_cndmask_b32_e64 v102, 0, 0x42800000, s8
	v_cndmask_b32_e64 v119, 0, 0x42800000, s24
	v_cndmask_b32_e64 v115, 0, 0x42800000, s27
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v103, v124, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v103, 0xbfb8aa3b, v66
	v_mul_f32_e32 v109, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v111
	v_dual_mul_f32 v98, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v107, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v78, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v113
	v_exp_f32_e32 v77, v77
	v_cndmask_b32_e64 v97, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v101
	v_dual_fmac_f32 v102, 0xbfb8aa3b, v4 :: v_dual_fmac_f32 v119, 0xbfb8aa3b, v59
	v_fmac_f32_e32 v115, 0xbfb8aa3b, v56
	v_exp_f32_e32 v94, v94
	v_cndmask_b32_e64 v96, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v109
	v_cndmask_b32_e64 v111, 0, 0x42800000, s23
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v98
	v_cndmask_b32_e64 v113, 0, 0x42800000, s21
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v117
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v107
	v_dual_mul_f32 v108, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v101, 0, 0x42800000, s9
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s3
	v_exp_f32_e32 v119, v119
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v95, v127, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v103
	v_cndmask_b32_e64 v109, 0, 0x42800000, s17
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v72 :: v_dual_fmac_f32 v111, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v98, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v105
	v_fmac_f32_e32 v113, 0xbfb8aa3b, v60
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v77, v77, v121
	v_mul_f32_e32 v95, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v99
	v_cndmask_b32_e64 v107, 0, 0x42800000, s19
	v_dual_mul_f32 v112, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v101, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s24
	v_exp_f32_e32 v97, v97
	v_ldexp_f32 v94, v94, v123
	v_dual_mul_f32 v118, 0xbfb8aa3b, v58 :: v_dual_fmac_f32 v109, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v103, 0, 0x42800000, s15
	v_mul_f32_e32 v116, 0xbfb8aa3b, v57
	v_exp_f32_e32 v111, v111
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v100
	v_cndmask_b32_e64 v105, 0, 0x42800000, s13
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v98, 0xbfb8aa3b, v3 :: v_dual_add_f32 v77, 1.0, v77
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v95
	v_cndmask_b32_e64 v99, 0, 0x42800000, s11
	v_dual_fmac_f32 v76, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v107, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v104
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s6
	v_exp_f32_e32 v101, v101
	v_ldexp_f32 v119, v119, v144
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v118
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v116
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s23
	v_exp_f32_e32 v109, v109
	v_dual_mul_f32 v114, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v105, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v100, 0, 0x42800000, s10
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v78, v78, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, null, v77, v77, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v110, 0xbfb8aa3b, v65 :: v_dual_fmac_f32 v99, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v95, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v112
	v_exp_f32_e32 v107, v107
	v_cndmask_b32_e64 v104, 0, 0x42800000, s14
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s9
	v_exp_f32_e32 v98, v98
	v_ldexp_f32 v97, v97, v126
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v119, 1.0, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, null, v94, v94, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v118, 0, 0x42800000, s25
	v_cndmask_b32_e64 v116, 0, 0x42800000, s26
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s17
	v_ldexp_f32 v111, v111, v143
	v_exp_f32_e32 v103, v103
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v108
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v100, 0xbfb8aa3b, v71 :: v_dual_add_f32 v97, 1.0, v97
	v_exp_f32_e32 v105, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v177, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v106, 0xbfb8aa3b, v69 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v112, 0, 0x42800000, s22
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s19
	v_exp_f32_e32 v99, v99
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s7
	v_ldexp_f32 v101, v101, v129
	v_fmac_f32_e32 v104, 0xbfb8aa3b, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v179, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v116, 0xbfb8aa3b, v57 :: v_dual_add_f32 v111, 1.0, v111
	v_exp_f32_e32 v76, v76
	v_ldexp_f32 v109, v109, v137
	v_fmac_f32_e32 v118, 0xbfb8aa3b, v58
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v110
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v114
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v108, 0, 0x42800000, s18
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s13
	v_exp_f32_e32 v100, v100
	v_ldexp_f32 v96, v96, v125
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v106
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s11
	v_exp_f32_e32 v95, v95
	v_ldexp_f32 v107, v107, v139
	v_fmac_f32_e32 v112, 0xbfb8aa3b, v18
	v_ldexp_f32 v98, v98, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v101, 1.0, v101
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v104, v104
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v113, v113
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v109, 1.0, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v118, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v166, null, v111, v111, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v110, 0, 0x42800000, s16
	v_cndmask_b32_e64 v114, 0, 0x42800000, s20
	v_ldexp_f32 v103, v103, v135
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s10
	v_ldexp_f32 v105, v105, v133
	v_fmac_f32_e32 v108, 0xbfb8aa3b, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v205, -v122, v177, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v106, 0, 0x42800000, s12
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s4
	v_ldexp_f32 v99, v99, v131
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v112, v112
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s14
	v_exp_f32_e32 v115, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v207, -v126, v179, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v98, 1.0, v98
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s25
	v_ldexp_f32 v76, v76, v120
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v199, v166
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v110, 0xbfb8aa3b, v65 :: v_dual_add_f32 v99, 1.0, v99
	v_dual_fmac_f32 v114, 0xbfb8aa3b, v61 :: v_dual_add_f32 v103, 1.0, v103
	v_ldexp_f32 v100, v100, v130
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v105, 1.0, v105
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v108, v108
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v177, v205, v177
	v_div_scale_f32 v130, null, v96, v96, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s22
	v_ldexp_f32 v95, v95, v124
	v_fmac_f32_e32 v106, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s27
	v_exp_f32_e32 v102, v102
	v_ldexp_f32 v104, v104, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v179, v207, v179
	v_div_scale_f32 v134, null, v98, v98, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v113, v113, v141
	v_ldexp_f32 v118, v118, v145
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v116, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v150, null, v103, v103, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v181, v130
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v112, v112, v142
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v95, 1.0, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v106, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v142, null, v99, v99, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s8
	v_ldexp_f32 v115, v115, v147
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v183, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v114, v114
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v113, 1.0, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v120, null, v76, v76, v93
	v_div_scale_f32 v158, null, v107, v107, v62
	v_fma_f32 v227, -v166, v199, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v118, 1.0, v118
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v191, v150
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v108, v108, v138
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v138, null, v101, v101, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v187, v142
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v102, v102, v128
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v124, null, v78, v78, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v176, v120
	v_rcp_f32_e32 v195, v158
	v_fmac_f32_e32 v199, v227, v199
	v_div_scale_f32 v170, null, v118, v118, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v110, v110, v136
	v_ldexp_f32 v116, v116, v146
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v146, null, v105, v105, v68
	v_div_scale_f32 v128, null, v95, v95, v74
	v_rcp_f32_e32 v185, v138
	v_fma_f32 v209, -v130, v181, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v106, v106, v132
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v132, null, v97, v97, v9
	v_div_scale_f32 v174, null, v115, v115, v56
	v_rcp_f32_e32 v178, v124
	v_fma_f32 v211, -v134, v183, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v114, v114, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v154, null, v109, v109, v64
	v_rcp_f32_e32 v201, v170
	v_rcp_f32_e32 v189, v146
	v_fma_f32 v219, -v150, v191, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v110, 1.0, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v180, v128
	v_fmac_f32_e32 v181, v209, v181
	v_div_scale_f32 v140, null, v100, v100, v71
	v_rcp_f32_e32 v182, v132
	v_fma_f32 v215, -v142, v187, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v106, 1.0, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v203, v174
	v_fmac_f32_e32 v183, v211, v183
	v_div_scale_f32 v136, null, v102, v102, v4
	v_rcp_f32_e32 v193, v154
	v_fma_f32 v204, -v120, v176, 1.0
	v_fma_f32 v223, -v158, v195, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v114, 1.0, v114 :: v_dual_fmac_f32 v191, v219, v191
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v152, null, v110, v110, v65
	v_rcp_f32_e32 v186, v140
	v_fma_f32 v213, -v138, v185, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v104, 1.0, v104 :: v_dual_fmac_f32 v187, v215, v187
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v144, null, v106, v106, v69
	v_rcp_f32_e32 v184, v136
	v_fma_f32 v206, -v124, v178, 1.0
	v_div_scale_f32 v121, vcc_lo, v93, v76, v93
	v_fma_f32 v229, -v170, v201, 1.0
	v_dual_fmac_f32 v176, v204, v176 :: v_dual_fmac_f32 v195, v223, v195
	v_div_scale_f32 v160, null, v114, v114, v61
	v_rcp_f32_e32 v192, v152
	v_fma_f32 v217, -v146, v189, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v108, 1.0, v108
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v123, s26, v40, v77, v40
	v_fma_f32 v208, -v128, v180, 1.0
	v_fmac_f32_e32 v185, v213, v185
	v_div_scale_f32 v148, null, v104, v104, v67
	v_div_scale_f32 v127, s25, v75, v94, v75
	v_div_scale_f32 v162, null, v113, v113, v60
	v_rcp_f32_e32 v188, v144
	v_fma_f32 v210, -v132, v182, 1.0
	v_div_scale_f32 v125, s27, v117, v78, v117
	v_fma_f32 v231, -v174, v203, 1.0
	v_fmac_f32_e32 v178, v206, v178
	v_div_scale_f32 v171, s3, v58, v118, v58
	v_rcp_f32_e32 v196, v160
	v_fma_f32 v221, -v154, v193, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v112, 1.0, v112 :: v_dual_fmac_f32 v201, v229, v201
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v204, v121, v176
	v_fmac_f32_e32 v189, v217, v189
	v_div_scale_f32 v156, null, v108, v108, v63
	v_div_scale_f32 v135, s21, v3, v98, v3
	v_rcp_f32_e32 v190, v148
	v_fma_f32 v214, -v140, v186, 1.0
	v_dual_fmac_f32 v180, v208, v180 :: v_dual_mul_f32 v205, v123, v177
	v_div_scale_f32 v129, s24, v74, v95, v74
	v_rcp_f32_e32 v197, v162
	v_dual_fmac_f32 v182, v210, v182 :: v_dual_mul_f32 v207, v127, v179
	v_div_scale_f32 v131, s23, v72, v96, v72
	v_div_scale_f32 v175, s0, v56, v115, v56
	v_fma_f32 v212, -v136, v184, 1.0
	v_dual_fmac_f32 v203, v231, v203 :: v_dual_mul_f32 v206, v125, v178
	v_fmac_f32_e32 v193, v221, v193
	v_div_scale_f32 v164, null, v112, v112, v18
	v_mul_f32_e32 v229, v171, v201
	v_fma_f32 v232, -v120, v204, v121
	v_div_scale_f32 v147, s15, v68, v105, v68
	v_rcp_f32_e32 v194, v156
	v_fma_f32 v220, -v152, v192, 1.0
	v_div_scale_f32 v133, s22, v9, v97, v9
	v_dual_fmac_f32 v186, v214, v186 :: v_dual_mul_f32 v211, v135, v183
	v_fma_f32 v233, -v122, v205, v123
	v_div_scale_f32 v139, s19, v5, v101, v5
	v_fma_f32 v216, -v144, v188, 1.0
	v_fma_f32 v235, -v126, v207, v127
	v_mul_f32_e32 v208, v129, v180
	v_dual_fmac_f32 v184, v212, v184 :: v_dual_mul_f32 v209, v131, v181
	v_mul_f32_e32 v231, v175, v203
	v_fma_f32 v234, -v124, v206, v125
	v_div_scale_f32 v155, s11, v64, v109, v64
	v_rcp_f32_e32 v198, v164
	v_fma_f32 v224, -v160, v196, 1.0
	v_dual_fmac_f32 v204, v232, v176 :: v_dual_fmac_f32 v205, v233, v177
	v_div_scale_f32 v137, s20, v4, v102, v4
	v_dual_fmac_f32 v192, v220, v192 :: v_dual_mul_f32 v217, v147, v189
	v_div_scale_f32 v143, s17, v70, v99, v70
	v_fma_f32 v218, -v148, v190, 1.0
	v_fma_f32 v239, -v134, v211, v135
	v_mul_f32_e32 v210, v133, v182
	v_fma_f32 v225, -v162, v197, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v116, 1.0, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v188, v216, v188 :: v_dual_mul_f32 v213, v139, v185
	v_fmac_f32_e32 v207, v235, v179
	v_fma_f32 v236, -v128, v208, v129
	v_fma_f32 v237, -v130, v209, v131
	v_fmac_f32_e32 v206, v234, v178
	v_div_scale_f32 v141, s18, v71, v100, v71
	v_dual_fmac_f32 v196, v224, v196 :: v_dual_mul_f32 v221, v155, v193
	v_fma_f32 v120, -v120, v204, v121
	v_div_scale_f32 v151, s13, v66, v103, v66
	v_fma_f32 v222, -v156, v194, 1.0
	v_fma_f32 v235, -v146, v217, v147
	v_mul_f32_e32 v212, v137, v184
	v_dual_fmac_f32 v190, v218, v190 :: v_dual_mul_f32 v215, v143, v187
	v_fmac_f32_e32 v211, v239, v183
	v_fma_f32 v238, -v132, v210, v133
	v_fma_f32 v121, -v122, v205, v123
	v_fmac_f32_e32 v197, v225, v197
	v_div_scale_f32 v172, null, v116, v116, v57
	v_fma_f32 v241, -v138, v213, v139
	v_dual_fmac_f32 v208, v236, v180 :: v_dual_fmac_f32 v209, v237, v181
	v_fma_f32 v122, -v124, v206, v125
	v_div_scale_f32 v159, s9, v62, v107, v62
	v_fma_f32 v226, -v164, v198, 1.0
	v_fma_f32 v239, -v154, v221, v155
	v_mul_f32_e32 v214, v141, v186
	v_div_fmas_f32 v120, v120, v176, v204
	s_mov_b32 vcc_lo, s26
	v_dual_fmac_f32 v194, v222, v194 :: v_dual_mul_f32 v219, v151, v191
	v_fmac_f32_e32 v217, v235, v189
	v_fma_f32 v240, -v136, v212, v137
	v_fma_f32 v123, -v126, v207, v127
	v_fma_f32 v233, -v142, v215, v143
	v_fmac_f32_e32 v210, v238, v182
	v_div_fmas_f32 v121, v121, v177, v205
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v202, v172
	v_fmac_f32_e32 v213, v241, v185
	v_fma_f32 v124, -v128, v208, v129
	v_div_fmas_f32 v122, v122, v178, v206
	s_mov_b32 vcc_lo, s25
	v_dual_fmac_f32 v198, v226, v198 :: v_dual_mul_f32 v223, v159, v195
	v_fmac_f32_e32 v221, v239, v193
	v_fma_f32 v232, -v140, v214, v141
	v_fma_f32 v125, -v130, v209, v131
	v_fma_f32 v237, -v150, v219, v151
	v_fmac_f32_e32 v212, v240, v184
	v_div_fixup_f32 v76, v120, v76, v93
	v_div_fmas_f32 v93, v123, v179, v207
	s_mov_b32 vcc_lo, s24
	v_div_scale_f32 v168, null, v119, v119, v59
	v_fmac_f32_e32 v215, v233, v187
	v_fma_f32 v126, -v132, v210, v133
	v_div_fmas_f32 v120, v124, v180, v208
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v127, -v134, v211, v135
	v_fma_f32 v241, -v158, v223, v159
	v_fmac_f32_e32 v214, v232, v186
	v_div_fixup_f32 v78, v122, v78, v117
	v_div_fmas_f32 v117, v125, v181, v209
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v219, v237, v191
	v_fma_f32 v128, -v136, v212, v137
	v_div_fixup_f32 v77, v121, v77, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v55, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v55, v93, v94, v75
	v_rcp_f32_e32 v200, v168
	v_div_fmas_f32 v75, v126, v182, v210
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v161, s8, v61, v114, v61
	v_div_scale_f32 v167, s5, v19, v111, v19
	v_fma_f32 v230, -v172, v202, 1.0
	v_fma_f32 v129, -v138, v213, v139
	v_div_fixup_f32 v74, v120, v95, v74
	v_div_fmas_f32 v76, v127, v183, v211
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v223, v241, v195
	v_fma_f32 v130, -v140, v214, v141
	v_div_fixup_f32 v72, v117, v96, v72
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v128, v184, v212
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v153, s12, v65, v110, v65
	v_fma_f32 v131, -v142, v215, v143
	v_div_fixup_f32 v75, v75, v97, v9
	v_div_scale_f32 v145, s16, v69, v106, v69
	v_dual_fmac_f32 v202, v230, v202 :: v_dual_mul_f32 v227, v167, v199
	v_dual_mul_f32 v224, v161, v196 :: v_dual_mul_f32 v9, v54, v74
	v_div_fmas_f32 v54, v129, v185, v213
	s_mov_b32 vcc_lo, s18
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v77
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v74, v76, v98, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v53, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v53, v130, v186, v214
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v149, s14, v67, v104, v67
	v_fma_f32 v228, -v168, v200, 1.0
	v_dual_mul_f32 v220, v153, v192 :: v_dual_mul_f32 v15, v15, v78
	v_div_fixup_f32 v55, v55, v102, v4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v52, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v52, v131, v187, v215
	v_div_scale_f32 v163, s7, v60, v113, v60
	v_fma_f32 v235, -v166, v227, v167
	v_mul_f32_e32 v216, v145, v188
	v_div_scale_f32 v169, s4, v59, v119, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v200, v228, v200 :: v_dual_mul_f32 v225, v163, v197
	v_fma_f32 v238, -v152, v220, v153
	v_div_fixup_f32 v54, v54, v101, v5
	v_div_fixup_f32 v52, v52, v99, v70
	v_dual_mul_f32 v218, v149, v190 :: v_dual_fmac_f32 v227, v235, v199
	v_fma_f32 v234, -v144, v216, v145
	v_dual_mul_f32 v228, v169, v200 :: v_dual_mul_f32 v5, v51, v74
	v_dual_fmac_f32 v220, v238, v192 :: v_dual_mul_f32 v51, v49, v54
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v49, v46, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v236, -v148, v218, v149
	v_fma_f32 v233, -v162, v225, v163
	v_fmac_f32_e32 v216, v234, v188
	v_fma_f32 v237, -v170, v229, v171
	v_fma_f32 v133, -v146, v217, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v218, v236, v190 :: v_dual_fmac_f32 v225, v233, v197
	v_fma_f32 v132, -v144, v216, v145
	s_mov_b32 vcc_lo, s16
	v_fmac_f32_e32 v229, v237, v201
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v134, -v148, v218, v149
	v_fma_f32 v135, -v150, v219, v151
	v_div_fmas_f32 v72, v132, v188, v216
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v53, v53, v100, v71
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v50, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v133, v189, v217
	s_mov_b32 vcc_lo, s14
	v_div_scale_f32 v157, s10, v63, v108, v63
	v_div_fmas_f32 v54, v134, v190, v218
	s_mov_b32 vcc_lo, s13
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v48, v48, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v53, v135, v191, v219
	v_fma_f32 v136, -v152, v220, v153
	v_fma_f32 v137, -v154, v221, v155
	v_div_fixup_f32 v69, v72, v106, v69
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v53, v53, v103, v66
	v_mul_f32_e32 v222, v157, v194
	v_div_fmas_f32 v52, v136, v192, v220
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v232, -v160, v224, v161
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v240, -v156, v222, v157
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v47, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v137, v193, v221
	v_div_fixup_f32 v55, v55, v105, v68
	v_fma_f32 v139, -v158, v223, v159
	v_fmac_f32_e32 v222, v240, v194
	v_div_fixup_f32 v54, v54, v104, v67
	v_div_fixup_f32 v47, v47, v109, v64
	v_dual_fmac_f32 v224, v232, v196 :: v_dual_mul_f32 v45, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v138, -v156, v222, v157
	s_mov_b32 vcc_lo, s10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v29, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v140, -v160, v224, v161
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v32, v54 :: v_dual_mul_f32 v7, v7, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v138, v194, v222
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v165, s6, v18, v112, v18
	v_div_fmas_f32 v54, v139, v195, v223
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v141, -v162, v225, v163
	v_div_fmas_f32 v53, v140, v196, v224
	v_div_fixup_f32 v52, v52, v110, v65
	s_mov_b32 vcc_lo, s7
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v11, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v173, s1, v57, v116, v57
	v_div_fixup_f32 v53, v53, v114, v61
	v_mul_f32_e32 v226, v165, v198
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v52, v141, v197, v225
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v236, -v168, v228, v169
	v_fma_f32 v234, -v164, v226, v165
	v_fma_f32 v143, -v166, v227, v167
	v_div_fixup_f32 v52, v52, v113, v60
	v_div_fixup_f32 v55, v55, v108, v63
	v_div_fixup_f32 v54, v54, v107, v62
	v_fmac_f32_e32 v226, v234, v198
	v_fmac_f32_e32 v228, v236, v200
	v_fma_f32 v145, -v170, v229, v171
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v28, v28, v55 :: v_dual_mul_f32 v1, v1, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v142, -v164, v226, v165
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v144, -v168, v228, v169
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v44, v92
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v12, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v142, v198, v226
	s_mov_b32 vcc_lo, s5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v43, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v143, v199, v227
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v47, v47, v112, v18
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v26, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v174, v231, v175
	v_mul_f32_e32 v230, v173, v202
	v_div_fixup_f32 v55, v55, v111, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v14, v53 :: v_dual_mul_f32 v14, v20, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v231, v52, v203
	v_fma_f32 v238, -v172, v230, v173
	v_div_fmas_f32 v54, v144, v200, v228
	s_mov_b32 vcc_lo, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v25, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v145, v201, v229
	v_fmac_f32_e32 v230, v238, v202
	s_mov_b32 vcc_lo, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v91, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v2, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v42, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v172, v230, v173
	v_div_fixup_f32 v26, v54, v119, v59
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v52
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v41, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v47, v202, v230
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v92, v10, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v174, v231, v175
	s_mov_b32 vcc_lo, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v39, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v42
	v_mul_f32_e32 v43, 0xbfb8aa3b, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v203, v231
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v89, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v36, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v85, v1, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v90, v11, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v115, v56
	v_div_fixup_f32 v44, v44, v116, v57
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v43 :: v_dual_mul_f32 v10, v24, v10
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v88, v6, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v12, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v23, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v25, v118, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v12
	v_mul_f32_e32 v12, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	v_exp_f32_e32 v41, v41
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v37, v87
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v43
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v21, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_ldexp_f32 v21, v24, v23
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v23, v42
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v38, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v2
	s_mov_b32 s4, 0x76543210
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v41, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v86, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v21, v21, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v23, v23, v25
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v24, v24, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v41, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v23, v23, v43
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v42, v44, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v56, v41
	v_fmac_f32_e32 v44, v55, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v17, null, v25, v25, v2
	v_div_scale_f32 v55, vcc_lo, v47, v21, v47
	v_fma_f32 v57, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v17
	v_fma_f32 v39, -v41, v56, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v59, v55, v44 :: v_dual_fmac_f32 v54, v57, v54
	v_div_scale_f32 v57, s0, v52, v24, v52
	v_fmac_f32_e32 v56, v39, v56
	v_div_scale_f32 v39, s1, v43, v23, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v17, v58, 1.0
	v_mul_f32_e32 v61, v57, v54
	v_fma_f32 v38, -v42, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v39, v56
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s3, v2, v25, v2
	v_fma_f32 v37, -v53, v61, v57
	v_fmac_f32_e32 v59, v38, v44
	v_fma_f32 v38, -v41, v62, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v60, v58
	v_fmac_f32_e32 v61, v37, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v42, v59, v55
	v_fmac_f32_e32 v62, v38, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v17, v63, v60
	v_fma_f32 v38, -v53, v61, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v44, v59
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v63, v37, v58
	v_fma_f32 v37, -v41, v62, v39
	v_div_fmas_f32 v38, v38, v54, v61
	s_mov_b32 vcc_lo, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v87, v7, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v17, v63, v60
	v_div_fmas_f32 v37, v37, v56, v62
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v58, v63
	v_div_fixup_f32 v2, v17, v25, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v37, v23, v43
	v_div_fixup_f32 v23, v38, v24, v52
	v_div_fixup_f32 v24, v36, v21, v47
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v13, v26
	v_dual_mul_f32 v7, v1, v2 :: v_dual_mul_f32 v8, v8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v13, v39, v23
	v_mul_f32_e32 v17, v6, v24
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v50|, |v51|
	v_max3_f32 v2, |v48|, |v46|, |v45|
	v_max3_f32 v23, |v30|, |v29|, |v28|
	v_max3_f32 v24, |v27|, |v22|, |v15|
	v_max3_f32 v6, |v32|, |v31|, |v40|
	v_max_f32_e64 v25, |v19|, |v18|
	v_max3_f32 v26, |v14|, |v21|, |v12|
	v_max3_f32 v36, |v17|, |v13|, |v8|
	v_max3_f32 v37, |v7|, |v3|, |v4|
	v_max3_f32 v1, v1, |v49|, v2
	v_max3_f32 v2, v23, v24, |v16|
	v_max3_f32 v23, |v11|, |v10|, |v9|
	v_max3_f32 v24, v25, |v20|, v26
	v_max3_f32 v25, v36, v37, |v5|
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v36, v84, 7, 0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v2, v24, v23, v25
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v24, 4, v84
	v_permlanex16_b32 v6, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v23, v2, s4, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v26, v33, 2, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v24, v24, v35
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v6
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v6, v26, v35
	v_lshrrev_b32_e32 v26, 2, v33
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v23
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v23, v36, v24, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v6, 0, v25, v6
	v_lshlrev_b32_e32 v25, 3, v25
	ds_store_b64 v23, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v23, v2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v23, v23, v23
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v2, v2, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v23, v2
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v2, v2, v23
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v23, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v24, v23, v23 :: v_dual_max_f32 v23, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v24, v2, v24 :: v_dual_lshlrev_b32 v1, 3, v83
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, 0, v25, v26
	v_add_nc_u32_e32 v6, 0, v1
	ds_store_b64 v2, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[23:24], v6
.Ltmp44:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v2, v23, v23
	v_max_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v24, 0x2b8cbccc, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v6
	v_fma_f32 v25, -v6, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v26, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v6, v26, v25
	v_fmac_f32_e32 v26, v35, v23
	v_rcp_f32_e32 v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v26, v25
	v_div_fmas_f32 v6, v6, v23, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v36, v35, 1.0
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v23, v35
	v_div_scale_f32 v6, vcc_lo, v24, 0x40e00000, v24
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v23, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v25, v6, v35
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v23, v2, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v36, v25, v6
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 0xffff0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v25, v2, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v26, null, v38, v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v36, v25, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v37, null, v38, v38, v51
	v_rcp_f32_e32 v36, v26
	v_div_scale_f32 v43, null, v38, v38, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v2, v2, v35, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v25, v37
	v_div_scale_f32 v35, null, v38, v38, v49
	v_div_scale_f32 v44, s0, v51, v38, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v6, v2, 0x40e00000, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v26, v36, 1.0
	v_div_scale_f32 v24, vcc_lo, v50, v38, v50
	v_rcp_f32_e32 v42, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v25, 1.0
	v_fmac_f32_e32 v36, v2, v36
	v_rcp_f32_e32 v52, v43
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v41, v6, 16, 1
	v_mov_b16_e32 v2.l, v23.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v25, v39, v25
	v_mul_f32_e32 v39, v24, v36
	v_div_scale_f32 v56, null, v38, v38, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v35, v42, 1.0
	v_mul_f32_e32 v53, v44, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v47, -v26, v39, v24
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v6, v41, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v55, -v43, v52, 1.0
	v_fmac_f32_e32 v42, v54, v42
	v_div_scale_f32 v54, s1, v49, v38, v49
	v_fmac_f32_e32 v39, v47, v36
	v_fma_f32 v47, -v37, v53, v44
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.l, v41.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v52, v55, v52 :: v_dual_and_b32 v23, 0xffff0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v26, v39, v24
	v_dual_fmac_f32 v53, v47, v25 :: v_dual_mul_f32 v26, v54, v42
	v_div_scale_f32 v47, null, v38, v38, v46
	v_div_scale_f32 v41, s2, v48, v38, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v24, v36, v39
	v_fma_f32 v36, -v37, v53, v44
	v_fma_f32 v37, -v35, v26, v54
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v55, null, v38, v38, v45
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v44, v41, v52
	v_div_fmas_f32 v25, v36, v25, v53
	v_fmac_f32_e32 v26, v37, v42
	v_rcp_f32_e32 v36, v55
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v43, v44, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v47, v39, 1.0
	v_div_fixup_f32 v25, v25, v38, v51
	v_fma_f32 v35, -v35, v26, v54
	v_div_scale_f32 v51, null, v38, v38, v32
	v_div_fixup_f32 v24, v24, v38, v50
	v_fmac_f32_e32 v44, v37, v52
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v37, s0, v46, v38, v46
	v_fma_f32 v50, -v55, v36, 1.0
	v_div_fmas_f32 v26, v35, v42, v26
	v_rcp_f32_e32 v42, v51
	v_fma_f32 v35, -v43, v44, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v41, v37, v39 :: v_dual_fmac_f32 v36, v50, v36
	v_div_scale_f32 v43, s1, v45, v38, v45
	v_div_scale_f32 v50, null, v38, v38, v31
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v26, v38, v49
	v_div_fmas_f32 v35, v35, v52, v44
	v_fma_f32 v44, -v47, v41, v37
	v_mul_f32_e32 v52, v43, v36
	v_fma_f32 v53, -v51, v42, 1.0
	v_rcp_f32_e32 v54, v50
	v_div_fixup_f32 v35, v35, v38, v48
	v_fmac_f32_e32 v41, v44, v39
	v_fma_f32 v44, -v55, v52, v43
	v_fmac_f32_e32 v42, v53, v42
	v_div_scale_f32 v48, s2, v32, v38, v32
	v_div_scale_f32 v49, null, v38, v38, v40
	v_fma_f32 v37, -v47, v41, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v50, v54, 1.0
	v_fmac_f32_e32 v52, v44, v36
	v_mul_f32_e32 v44, v48, v42
	v_rcp_f32_e32 v47, v49
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v54, v53, v54
	v_div_scale_f32 v53, s3, v31, v38, v31
	v_div_fmas_f32 v37, v37, v39, v41
	v_fma_f32 v41, -v51, v44, v48
	v_fma_f32 v39, -v55, v52, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v43, v53, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v55, -v49, v47, 1.0
	v_fmac_f32_e32 v44, v41, v42
	v_rcp_f32_e32 v41, v56
	v_div_fmas_f32 v39, v39, v36, v52
	v_fma_f32 v52, -v50, v43, v53
	v_fmac_f32_e32 v47, v55, v47
	v_div_scale_f32 v55, s0, v40, v38, v40
	v_div_fixup_f32 v36, v37, v38, v46
	v_div_fixup_f32 v37, v39, v38, v45
	v_fma_f32 v39, -v51, v44, v48
	v_fmac_f32_e32 v43, v52, v54
	v_mul_f32_e32 v45, v55, v47
	v_fma_f32 v46, -v56, v41, 1.0
	v_div_scale_f32 v48, null, v38, v38, v29
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v38, v38, v28
	v_div_fmas_f32 v39, v39, v42, v44
	v_fma_f32 v42, -v50, v43, v53
	v_fma_f32 v44, -v49, v45, v55
	v_fmac_f32_e32 v41, v46, v41
	v_rcp_f32_e32 v46, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, s1, v30, v38, v30
	v_div_fmas_f32 v42, v42, v54, v43
	v_fmac_f32_e32 v45, v44, v47
	v_rcp_f32_e32 v43, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v44, v50, v41
	v_div_fixup_f32 v32, v39, v38, v32
	v_div_scale_f32 v53, null, v38, v38, v27
	v_fma_f32 v52, -v48, v46, 1.0
	v_fma_f32 v39, -v49, v45, v55
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v42, v38, v31
	v_fma_f32 v42, -v56, v44, v50
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v52, -v51, v43, 1.0
	v_div_fmas_f32 v39, v39, v47, v45
	v_rcp_f32_e32 v45, v53
	v_fmac_f32_e32 v44, v42, v41
	v_div_scale_f32 v47, s0, v28, v38, v28
	v_fmac_f32_e32 v43, v52, v43
	v_div_fixup_f32 v39, v39, v38, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v40, -v56, v44, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v54, v47, v43
	v_fma_f32 v56, -v53, v45, 1.0
	v_div_fmas_f32 v40, v40, v41, v44
	v_div_scale_f32 v44, s1, v27, v38, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v51, v54, v47
	v_fmac_f32_e32 v45, v56, v45
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v2.h
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v54, v41, v43 :: v_dual_mul_f32 v41, v44, v45
	v_div_scale_f32 v49, s2, v29, v38, v29
	v_div_scale_f32 v52, null, v38, v38, v22
	v_div_fixup_f32 v30, v40, v38, v30
	v_mul_f32_e32 v42, v49, v46
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v55, v52
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v50, -v48, v42, v49
	v_fmac_f32_e32 v42, v50, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v52, v55, 1.0
	v_fma_f32 v40, -v48, v42, v49
	v_div_scale_f32 v49, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v50, v55
	v_div_scale_f32 v48, s3, v22, v38, v22
	v_div_fmas_f32 v40, v40, v46, v42
	v_fma_f32 v42, -v51, v54, v47
	v_rcp_f32_e32 v47, v49
	v_div_scale_f32 v51, null, v38, v38, v16
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v46, -v53, v41, v44
	v_mul_f32_e32 v50, v48, v55
	v_div_fmas_f32 v42, v42, v43, v54
	v_rcp_f32_e32 v43, v51
	v_div_fixup_f32 v29, v40, v38, v29
	v_fmac_f32_e32 v41, v46, v45
	v_fma_f32 v46, -v52, v50, v48
	v_fma_f32 v54, -v49, v47, 1.0
	v_div_fixup_f32 v28, v42, v38, v28
	v_div_scale_f32 v42, s0, v15, v38, v15
	v_fma_f32 v40, -v53, v41, v44
	v_fmac_f32_e32 v50, v46, v55
	v_fmac_f32_e32 v47, v54, v47
	v_fma_f32 v44, -v51, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s1, v16, v38, v16
	v_div_fmas_f32 v40, v40, v45, v41
	v_fma_f32 v41, -v52, v50, v48
	v_mul_f32_e32 v45, v42, v47
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, null, v23, v23, v19
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v53, null, v23, v23, v18
	v_div_fmas_f32 v41, v41, v55, v50
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v50, -v49, v45, v42
	v_mul_f32_e32 v52, v46, v43
	v_div_fixup_f32 v27, v40, v38, v27
	v_div_fixup_f32 v22, v41, v38, v22
	v_rcp_f32_e32 v41, v53
	v_fmac_f32_e32 v45, v50, v47
	v_fma_f32 v40, -v51, v52, v46
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v55, null, v23, v23, v14
	v_fma_f32 v50, -v44, v48, 1.0
	v_fma_f32 v42, -v49, v45, v42
	v_div_scale_f32 v49, null, v23, v23, v20
	v_fmac_f32_e32 v52, v40, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v40, s2, v19, v23, v19
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v54, -v53, v41, 1.0
	v_div_fmas_f32 v42, v42, v47, v45
	v_fma_f32 v45, -v51, v52, v46
	v_mul_f32_e32 v46, v40, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v41, v54, v41
	v_div_scale_f32 v47, s0, v18, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v44, v46, v40
	v_fma_f32 v51, -v49, v50, 1.0
	v_rcp_f32_e32 v57, v55
	v_div_fmas_f32 v43, v45, v43, v52
	v_mul_f32_e32 v56, v47, v41
	v_fmac_f32_e32 v46, v54, v48
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, s3, v20, v23, v20
	v_div_fixup_f32 v15, v42, v38, v15
	v_div_fixup_f32 v16, v43, v38, v16
	v_fma_f32 v38, -v44, v46, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v51, v50
	v_div_scale_f32 v43, null, v23, v23, v21
	v_fma_f32 v45, -v53, v56, v47
	v_fma_f32 v42, -v55, v57, 1.0
	v_fma_f32 v40, -v49, v52, v51
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v45, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v57, v42, v57 :: v_dual_fmac_f32 v52, v40, v50
	v_rcp_f32_e32 v40, v43
	v_div_scale_f32 v42, s1, v14, v23, v14
	v_div_fmas_f32 v38, v38, v48, v46
	v_fma_f32 v44, -v53, v56, v47
	v_div_scale_f32 v46, null, v23, v23, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v45, v42, v57
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v19, v38, v23, v19
	v_fma_f32 v47, -v43, v40, 1.0
	v_div_fmas_f32 v41, v44, v41, v56
	v_fma_f32 v44, -v49, v52, v51
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v55, v45, v42
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s0, v21, v23, v21
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v49, v57
	v_div_fmas_f32 v44, v44, v50, v52
	v_mul_f32_e32 v38, v47, v40
	v_div_fixup_f32 v18, v41, v23, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v46, v48, 1.0
	v_fma_f32 v42, -v55, v45, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v43, v38, v47
	v_div_fixup_f32 v20, v44, v23, v20
	v_div_scale_f32 v44, null, v23, v23, v11
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s2, v12, v23, v12
	v_div_fmas_f32 v42, v42, v57, v45
	v_fmac_f32_e32 v38, v49, v40
	v_rcp_f32_e32 v50, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v41, v48
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v14, v42, v23, v14
	v_fma_f32 v42, -v43, v38, v47
	v_div_scale_f32 v49, null, v23, v23, v10
	v_fma_f32 v43, -v46, v45, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v42, v40, v38
	v_div_scale_f32 v40, null, v23, v23, v9
	v_fma_f32 v47, -v44, v50, 1.0
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v42, s0, v11, v23, v11
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v47, null, v23, v23, v17
	v_div_fixup_f32 v21, v38, v23, v21
	v_fma_f32 v41, -v46, v45, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v49, v51, 1.0
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v40, v43, 1.0
	v_mul_f32_e32 v46, v42, v50
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v38, v51
	v_div_scale_f32 v38, s1, v10, v23, v10
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v23, v23, v13
	v_div_fmas_f32 v41, v41, v48, v45
	v_fma_f32 v45, -v44, v46, v42
	v_mul_f32_e32 v48, v38, v51
	v_div_scale_f32 v54, s2, v9, v23, v9
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v38
	v_mul_f32_e32 v57, v54, v43
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s3, v17, v23, v17
	v_div_fixup_f32 v12, v41, v23, v12
	v_fma_f32 v41, -v44, v46, v42
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	v_mul_f32_e32 v44, v55, v53
	v_fma_f32 v45, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v49, v48, v38
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s0, v13, v23, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v40, v57, v54
	v_fmac_f32_e32 v44, v42, v53
	v_div_fmas_f32 v41, v41, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v45, v56
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v23, v23, v8
	v_div_fmas_f32 v38, v38, v51, v48
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v41, v23, v11
	v_div_fmas_f32 v40, v40, v43, v57
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v10, v38, v23, v10
	v_div_fixup_f32 v9, v40, v23, v9
	v_div_scale_f32 v40, null, v23, v23, v7
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, null, v23, v23, v5
	v_div_fmas_f32 v43, v43, v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v42, v45
	v_fma_f32 v41, -v46, v48, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v17, v43, v23, v17
	v_div_fmas_f32 v38, v38, v56, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, null, v23, v23, v3
	v_div_scale_f32 v43, null, v23, v23, v4
	v_div_scale_f32 v44, vcc_lo, v8, v23, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v47, v43
	v_div_fixup_f32 v13, v38, v23, v13
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v38, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v38, v42
	v_div_scale_f32 v38, s0, v7, v23, v7
	v_fma_f32 v51, -v41, v45, 1.0
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v53, -v46, v49, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v38, v42 :: v_dual_fmac_f32 v52, v56, v52
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s1, v3, v23, v3
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s2, v4, v23, v4
	v_fmac_f32_e32 v49, v53, v48
	v_fma_f32 v53, -v40, v55, v38
	v_div_scale_f32 v56, s3, v5, v23, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v51, v45 :: v_dual_mul_f32 v58, v54, v47
	v_fmac_f32_e32 v55, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fma_f32 v53, -v43, v58, v54
	v_fma_f32 v38, -v40, v55, v38
	v_fma_f32 v40, -v50, v59, v56
	v_div_fmas_f32 v44, v44, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v46, v45 :: v_dual_fmac_f32 v58, v53, v47
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v59, v40, v52
	v_div_fmas_f32 v38, v38, v42, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v41, v57, v51
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v41, v41, v45, v57
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v44, v23, v8
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v7, v38, v23, v7
	v_div_fmas_f32 v42, v42, v52, v59
	v_div_fixup_f32 v3, v41, v23, v3
	v_div_fixup_f32 v4, v40, v23, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v42, v23, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v35
	v_rndne_f32_e32 v35, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v39
	v_rndne_f32_e32 v17, v17
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v50, v13
	v_and_b32_e32 v13, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v32, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v16
	v_cvt_i32_f32_e32 v43, v14
	v_cvt_i32_f32_e32 v45, v12
	v_cvt_i32_f32_e32 v49, v17
	v_and_b32_e32 v12, 15, v36
	v_and_b32_e32 v14, 15, v31
	v_and_b32_e32 v16, 15, v30
	v_and_b32_e32 v17, 15, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 0x60, v0
	v_lshlrev_b32_e32 v30, 10, v34
	v_and_b32_e32 v31, 0x400, v32
	v_and_b32_e32 v36, 0x60, v81
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v38, v15
	v_cvt_i32_f32_e32 v42, v20
	v_cvt_i32_f32_e32 v46, v11
	v_and_b32_e32 v11, 15, v35
	v_and_b32_e32 v15, 15, v37
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v34, 0x100, v82
	v_xor_b32_e32 v35, v73, v29
	v_add3_u32 v37, 0, v30, v31
	v_and_or_b32 v36, 0x1b00, v32, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v19
	v_cvt_i32_f32_e32 v41, v18
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v47, v10
	v_cvt_i32_f32_e32 v48, v9
	v_cvt_i32_f32_e32 v51, v8
	v_cvt_i32_f32_e32 v52, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v25
	v_and_b32_e32 v10, 15, v26
	v_and_b32_e32 v25, 15, v42
	v_and_b32_e32 v26, 15, v43
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v37, v34, v35
	v_xad_u32 v43, v36, v80, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v18, 15, v28
	v_and_b32_e32 v23, 15, v40
	v_and_b32_e32 v24, 15, v41
	v_cvt_i32_f32_e32 v44, v21
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v20, 15, v22
	v_and_b32_e32 v21, 15, v38
	v_and_b32_e32 v22, 15, v39
	v_and_b32_e32 v29, 15, v48
	v_and_b32_e32 v30, 15, v49
	v_and_b32_e32 v31, 15, v50
	v_and_b32_e32 v32, 15, v51
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v42, v[7:10]
	ds_store_b128 v42, v[15:18] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v43
	ds_load_b128 v[15:18], v43 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[23:26]
	ds_store_b128 v42, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v43
	ds_load_b128 v[34:37], v43 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[11:14]
	ds_store_b128 v42, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v43
	ds_load_b128 v[19:22], v43 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 15, v44
	v_and_b32_e32 v28, 15, v45
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v46
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	v_and_b32_e32 v30, 15, v47
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v3
	v_and_b32_e32 v40, 15, v4
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v15, 4, v7
	v_lshl_or_b32 v3, v16, 4, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v52
	v_and_b32_e32 v41, 15, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v17, 4, v9
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v9, v20, 4, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v12, s0, v79
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[27:30]
	ds_store_b128 v42, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v43
	ds_load_b128 v[38:41], v43 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v19, 4, v11
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v4.l
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v8.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.l, v3.h, v3.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v12, s2, v1, v12
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v18, 4, v10
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v10, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v21, s0, 4, v12
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v11, v22, 4, v14
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v36, 4, v25
	v_lshl_or_b32 v16, v37, 4, v26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v5.h, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 31, s34
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v2, v6, vcc_lo
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v34, 4, v23
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v35, 4, v24
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v40, 4, v29
	v_lshl_or_b32 v20, v41, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v7.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v10.l
	v_lshlrev_b16 v7.l, 8, v16.l
	v_and_b16 v7.h, 0xff, v15.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v6, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v5, v3, 0, 16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v38, 4, v27
	v_lshl_or_b32 v18, v39, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v1.h, v1.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v4.h, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v0.l, 0xff, v13.l
	v_lshlrev_b16 v0.h, 8, v20.l
	v_and_b16 v1.h, 0xff, v19.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v7, v5, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v18.l
	v_and_b16 v3.h, 0xff, v17.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	v_cndmask_b32_e32 v1, v7, v2, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[8:9], v12, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v21, s[36:39], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	buffer_store_b16 v1, v0, s[36:39], 0 offen
.Ltmp45:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 244
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25192
; TotalNumSgprs: 51
; NumVgprs: 244
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 51
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
	.byte	1                               ; Abbrev [1] 0xb:0x9b DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x75 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x75:0x2f DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x21 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp26                         ; DW_AT_low_pc
	.long	.Ltmp44-.Ltmp26                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x96:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
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
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
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
