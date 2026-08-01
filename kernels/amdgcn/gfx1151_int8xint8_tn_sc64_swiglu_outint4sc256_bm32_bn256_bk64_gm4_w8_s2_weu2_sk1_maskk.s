	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
	s_load_b32 s48, s[0:1], 0x38
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v167, 2, v0
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v244, 15, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v92, 4, v0
	v_or_b32_e32 v36, 0x3f0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v35, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v9, 4, v244
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v38, 16, v244
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_or_b32_e32 v169, 32, v92
	v_or_b32_e32 v170, 48, v92
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v168, 16, v92
	v_add_nc_u32_e32 v165, 0, v36
	v_or_b32_e32 v37, 0x7f0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v173, 0, v35
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v39, 0xf0, v0
	v_lshlrev_b32_e32 v40, 1, v0
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
	v_lshlrev_b32_e32 v41, 5, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	v_add_nc_u32_e32 v164, 0, v244
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_add_nc_u32_e32 v166, 0, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v174, v173, v35
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	v_mov_b32_e32 v8, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	scratch_store_b64 off, v[8:9], off      ; 8-byte Folded Spill
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_lshl_b32 s16, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s6, s6, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s7, s6
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s4, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s4, s10, s4
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s18, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s18, s48, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s47, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s5, s18, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s33, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s47, v167
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s20, s18, s4
.Ltmp19:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s16
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s45, s35, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s49, s33, 8
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s48, v3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s46, s20, 6
.Ltmp21:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s44, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s18, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[87:88], null, s45, v92, v[9:10]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s45, s47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 3, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s47, v92
	v_or_b32_e32 v6, s47, v169
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[88:89], null, 0x60, s35, v[87:88]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s34, v167
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s47, v170
	v_or_b32_e32 v5, s47, v168
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s49, s19
	v_lshl_add_u32 v172, s35, 6, v87
	v_lshl_add_u32 v171, s35, 5, v87
	v_add_nc_u32_e32 v3, s16, v87
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s48, v4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v89, v2, v1, s44
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s6, s48, v6
	v_cmp_gt_i32_e64 s7, s48, v7
	v_cmp_gt_i32_e64 s5, s48, v5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s16, v172
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[1:2], null, s34, s47, v[89:90]
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s17, s16, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s16, v88
	v_add_nc_u32_e32 v4, s16, v171
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v11, s35, v3
	v_add_nc_u32_e32 v2, s17, v171
	v_add_nc_u32_e32 v7, s17, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s2
	s_and_b32 s6, s6, s2
	s_and_b32 s7, s7, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s17, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s5, s5, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s4
	v_cndmask_b32_e64 v10, 0x80000000, v5, s6
	v_cndmask_b32_e64 v14, 0x80000000, v6, s7
	v_cndmask_b32_e64 v9, 0x80000000, v4, s5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v17, 0x80000000, v11, s4
	v_cndmask_b32_e64 v21, 0x80000000, v2, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v25, 0x80000000, v7, s6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v29, 0x80000000, v13, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[1:4], v8, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v9, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[33:34], v15, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x4
	buffer_load_b128 v[13:16], v14, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	v_or_b32_e32 v36, s44, v244
	v_or_b32_e32 v38, s44, v38
	v_or_b32_e32 v86, s49, v0
	s_mov_b32 s16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_lt_i32 s18, 0x80
	v_mul_lo_u32 v162, v36, s46
	v_mul_lo_u32 v163, v38, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v174, v[5:8] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v174, v[9:12] offset:8192
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v173, v[33:34] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v174, v[1:4]
	s_waitcnt vmcnt(4)
	ds_store_b128 v174, v[13:16] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v174, v[17:20] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v174, v[21:24] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v174, v[25:28] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v174, v[29:32] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_lshrrev_b32_e32 v1, 1, v0
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v2, 2, v39
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v3, 32, v41
	v_and_or_b32 v1, 0x70, v1, v244
	v_and_b32_e32 v9, 28, v40
	v_lshlrev_b32_e32 v11, 1, v39
	v_add_nc_u32_e32 v176, s35, v86
	v_add3_u32 v10, 0, v2, v3
	v_add_nc_u32_e32 v175, 0, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v160, 0
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v158, 0
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v3, s18
	v_add_nc_u32_e32 v178, 0, v11
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v177, v10, v9
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s6, s46, 2
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_add_i32 s6, s6, -2
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s10
	s_mov_b32 s43, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s7, s16, 1
	s_mov_b32 s5, s47
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s0, s7, s3
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s17, s5, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_lshl_b32 s47, s0, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s17, s45
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s47, v167
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s47, s34, v[89:90]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s5, s47, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s19, s5, s49
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s48, v11
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s20, s19, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s17, s46
	s_cselect_b32 s5, -1, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s16, s6
	s_mov_b32 s16, s7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[90:91], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v164 offset:33184
	ds_load_u8 v12, v164 offset:33152
	ds_load_u8 v10, v164 offset:33248
	ds_load_u8 v13, v164 offset:33216
	ds_load_u8 v14, v164 offset:33056
	ds_load_u8 v15, v164 offset:33024
	ds_load_u8 v16, v164 offset:33120
	ds_load_u8 v17, v164 offset:33088
	ds_load_u8 v11, v164 offset:32928
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	ds_load_u8 v12, v164 offset:32896
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	ds_load_u8 v13, v164 offset:32992
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	v_lshl_or_b32 v60, v10, 16, v9
	ds_load_u8 v9, v164 offset:32960
	ds_load_u8 v10, v164 offset:32864
	v_lshl_or_b32 v59, v15, 16, v14
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v164 offset:32832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v164 offset:32768
	v_lshl_or_b32 v58, v9, 16, v11
	ds_load_u8 v9, v164 offset:32800
	ds_load_u8 v11, v175 offset:3328
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v175 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	ds_load_u8 v13, v175 offset:3840
	v_lshl_or_b32 v57, v10, 16, v9
	ds_load_u8 v9, v175 offset:3584
	ds_load_u8 v10, v175 offset:2304
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v175 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v175 offset:2816
	v_lshl_or_b32 v28, v9, 16, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v175 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v10
	ds_load_u8 v9, v175 offset:1280
	ds_load_u8 v10, v175 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:1792
	ds_load_u8 v11, v175 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v175 offset:256
	ds_load_u8 v10, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:768
	ds_load_u8 v11, v175 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v164 offset:33696
	ds_load_u8 v10, v164 offset:33664
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v164 offset:33760
	ds_load_u8 v11, v164 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v164 offset:33568
	ds_load_u8 v12, v164 offset:33536
	v_lshl_or_b32 v64, v10, 16, v9
	ds_load_u8 v9, v164 offset:33440
	ds_load_u8 v10, v164 offset:33408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v164 offset:33632
	ds_load_u8 v13, v164 offset:33600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v12, 16, v11
	ds_load_u8 v10, v164 offset:33504
	ds_load_u8 v11, v164 offset:33472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v62, v10, 16, v9
	ds_load_u8 v9, v164 offset:33312
	ds_load_u8 v10, v164 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v164 offset:33376
	ds_load_u8 v11, v164 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v10, 16, v9
	ds_load_u8 v9, v175 offset:7424
	ds_load_u8 v10, v175 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:7936
	ds_load_u8 v11, v175 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v175 offset:6400
	ds_load_u8 v12, v175 offset:6144
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v175 offset:5376
	ds_load_u8 v10, v175 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v175 offset:6912
	ds_load_u8 v13, v175 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v175 offset:5888
	ds_load_u8 v11, v175 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v175 offset:4352
	ds_load_u8 v10, v175 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:4864
	ds_load_u8 v11, v175 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v164 offset:33200
	ds_load_u8 v10, v164 offset:33168
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[61:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v164 offset:33264
	ds_load_u8 v11, v164 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v164 offset:33072
	ds_load_u8 v12, v164 offset:33040
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v164 offset:32944
	ds_load_u8 v10, v164 offset:32912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v164 offset:33136
	ds_load_u8 v13, v164 offset:33104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v164 offset:33008
	ds_load_u8 v11, v164 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v164 offset:32880
	ds_load_u8 v10, v164 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v164 offset:32784
	ds_load_u8 v11, v164 offset:32816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v9, 16, v10
	ds_load_u8 v9, v164 offset:33584
	ds_load_u8 v10, v164 offset:33552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v164 offset:33648
	ds_load_u8 v11, v164 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v164 offset:33456
	ds_load_u8 v12, v164 offset:33424
	v_lshl_or_b32 v79, v10, 16, v9
	ds_load_u8 v9, v164 offset:33328
	ds_load_u8 v10, v164 offset:33296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v164 offset:33520
	ds_load_u8 v13, v164 offset:33488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v12, 16, v11
	ds_load_u8 v10, v164 offset:33392
	ds_load_u8 v11, v164 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v164 offset:33712
	ds_load_u8 v10, v164 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v164 offset:33744
	ds_load_u8 v11, v165 offset:32768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[73:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v175 offset:3456
	ds_load_u8 v26, v175 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[77:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:3968
	ds_load_u8 v27, v175 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v175 offset:2432
	ds_load_u8 v28, v175 offset:2176
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v175 offset:1408
	ds_load_u8 v26, v175 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v175 offset:2944
	ds_load_u8 v29, v175 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v175 offset:1920
	ds_load_u8 v27, v175 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v175 offset:384
	ds_load_u8 v26, v175 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:896
	ds_load_u8 v27, v175 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v175 offset:7552
	ds_load_u8 v26, v175 offset:7296
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:8064
	ds_load_u8 v27, v175 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v175 offset:6528
	ds_load_u8 v28, v175 offset:6272
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v175 offset:5504
	ds_load_u8 v26, v175 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v175 offset:7040
	ds_load_u8 v29, v175 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v175 offset:6016
	ds_load_u8 v27, v175 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v175 offset:4480
	ds_load_u8 v26, v175 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:4992
	ds_load_u8 v27, v175 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v41, v175 offset:19712
	ds_load_u8 v42, v175 offset:19456
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[61:64], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[77:80], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:20224
	ds_load_u8 v43, v175 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v175 offset:18688
	ds_load_u8 v44, v175 offset:18432
	v_lshl_or_b32 v84, v42, 16, v41
	ds_load_u8 v41, v175 offset:17664
	ds_load_u8 v42, v175 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v175 offset:19200
	ds_load_u8 v45, v175 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v44, 16, v43
	ds_load_u8 v42, v175 offset:18176
	ds_load_u8 v43, v175 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v82, v42, 16, v41
	ds_load_u8 v41, v175 offset:16640
	ds_load_u8 v42, v175 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:17152
	ds_load_u8 v43, v175 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v42, 16, v41
	ds_load_u8 v41, v175 offset:23808
	ds_load_u8 v42, v175 offset:23552
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:24320
	ds_load_u8 v43, v175 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v175 offset:22784
	ds_load_u8 v44, v175 offset:22528
	v_lshl_or_b32 v96, v42, 16, v41
	ds_load_u8 v41, v175 offset:21760
	ds_load_u8 v42, v175 offset:21504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v175 offset:23296
	ds_load_u8 v45, v175 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v44, 16, v43
	ds_load_u8 v42, v175 offset:22272
	ds_load_u8 v43, v175 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v94, v42, 16, v41
	ds_load_u8 v41, v175 offset:20736
	ds_load_u8 v42, v175 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:21248
	ds_load_u8 v43, v175 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v42, 16, v41
	ds_load_u8 v41, v175 offset:19840
	ds_load_u8 v42, v175 offset:19584
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[93:96], v[77:80], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:20352
	ds_load_u8 v43, v175 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v175 offset:18816
	ds_load_u8 v44, v175 offset:18560
	v_lshl_or_b32 v182, v42, 16, v41
	ds_load_u8 v41, v175 offset:17792
	ds_load_u8 v42, v175 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v175 offset:19328
	ds_load_u8 v45, v175 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v44, 16, v43
	ds_load_u8 v42, v175 offset:18304
	ds_load_u8 v43, v175 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v180, v42, 16, v41
	ds_load_u8 v41, v175 offset:16768
	ds_load_u8 v42, v175 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:17280
	ds_load_u8 v43, v175 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v42, 16, v41
	ds_load_u8 v41, v175 offset:23936
	ds_load_u8 v42, v175 offset:23680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:24448
	ds_load_u8 v43, v175 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v175 offset:22912
	ds_load_u8 v44, v175 offset:22656
	v_lshl_or_b32 v186, v42, 16, v41
	ds_load_u8 v41, v175 offset:21888
	ds_load_u8 v42, v175 offset:21632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v175 offset:23424
	ds_load_u8 v45, v175 offset:23168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v185, v44, 16, v43
	ds_load_u8 v42, v175 offset:22400
	ds_load_u8 v43, v175 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v184, v42, 16, v41
	ds_load_u8 v41, v175 offset:20864
	ds_load_u8 v42, v175 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:21376
	ds_load_u8 v43, v175 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[179:182], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[183:186], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[179:182], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v73, v164 offset:34208
	ds_load_u8 v74, v164 offset:34176
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[57:64], v[183:186], v[77:80], v[57:64] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v164 offset:34272
	ds_load_u8 v75, v164 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v164 offset:34080
	ds_load_u8 v76, v164 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v164 offset:34144
	ds_load_u8 v77, v164 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v164 offset:33952
	ds_load_u8 v74, v164 offset:33920
	v_lshl_or_b32 v75, v77, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v164 offset:34016
	ds_load_u8 v77, v164 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v77, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v164 offset:33824
	ds_load_u8 v77, v164 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	ds_load_u8 v77, v164 offset:33888
	ds_load_u8 v78, v164 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v77, 16, v73
	ds_load_u8 v77, v175 offset:11520
	ds_load_u8 v78, v175 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:12032
	ds_load_u8 v79, v175 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:10496
	ds_load_u8 v80, v175 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:11008
	ds_load_u8 v81, v175 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:9472
	ds_load_u8 v78, v175 offset:9216
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:9984
	ds_load_u8 v81, v175 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:8448
	ds_load_u8 v81, v175 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v175 offset:8960
	ds_load_u8 v82, v175 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	ds_load_u8 v81, v164 offset:34224
	ds_load_u8 v82, v164 offset:34192
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[73:76], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v164 offset:34288
	ds_load_u8 v83, v164 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v164 offset:34096
	ds_load_u8 v84, v164 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v164 offset:34160
	ds_load_u8 v85, v164 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v84, 0xc0c0004
	v_lshl_or_b32 v84, v82, 16, v81
	ds_load_u8 v81, v164 offset:33968
	ds_load_u8 v82, v164 offset:33936
	v_lshl_or_b32 v83, v85, 16, v83
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v164 offset:34032
	ds_load_u8 v85, v164 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v85, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v164 offset:33840
	ds_load_u8 v85, v164 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v85, v81, 0xc0c0004
	ds_load_u8 v85, v164 offset:33904
	ds_load_u8 v93, v164 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v85, 16, v81
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[81:84], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v77, v175 offset:11648
	ds_load_u8 v78, v175 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:12160
	ds_load_u8 v79, v175 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:10624
	ds_load_u8 v80, v175 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:11136
	ds_load_u8 v85, v175 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:9600
	ds_load_u8 v78, v175 offset:9344
	v_lshl_or_b32 v79, v85, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:10112
	ds_load_u8 v85, v175 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v85, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:8576
	ds_load_u8 v85, v175 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v85, v77, 0xc0c0004
	ds_load_u8 v85, v175 offset:9088
	ds_load_u8 v93, v175 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v85, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[73:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[81:84], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v77, v175 offset:27904
	ds_load_u8 v78, v175 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:28416
	ds_load_u8 v79, v175 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:26880
	ds_load_u8 v80, v175 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:27392
	ds_load_u8 v85, v175 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:25856
	ds_load_u8 v78, v175 offset:25600
	v_lshl_or_b32 v79, v85, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:26368
	ds_load_u8 v85, v175 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v85, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:24832
	ds_load_u8 v85, v175 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v85, v77, 0xc0c0004
	ds_load_u8 v85, v175 offset:25344
	ds_load_u8 v93, v175 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v85, 16, v77
	ds_load_u8 v85, v175 offset:28032
	ds_load_u8 v93, v175 offset:27776
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[73:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[77:80], v[81:84], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	ds_load_u8 v93, v175 offset:28544
	ds_load_u8 v94, v175 offset:28288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v175 offset:27008
	ds_load_u8 v95, v175 offset:26752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v175 offset:27520
	ds_load_u8 v96, v175 offset:27264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_lshl_or_b32 v96, v93, 16, v85
	ds_load_u8 v85, v175 offset:25984
	ds_load_u8 v93, v175 offset:25728
	v_lshl_or_b32 v95, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	ds_load_u8 v93, v175 offset:26496
	ds_load_u8 v94, v175 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v93, 16, v85
	ds_load_u8 v85, v175 offset:24960
	ds_load_u8 v93, v175 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	ds_load_u8 v93, v175 offset:25472
	ds_load_u8 v161, v175 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v161, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v85
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[73:76], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v73, v164 offset:34720
	ds_load_u8 v74, v164 offset:34688
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[81:84], v[57:64] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v164 offset:34784
	ds_load_u8 v75, v164 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v164 offset:34592
	ds_load_u8 v76, v164 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v164 offset:34656
	ds_load_u8 v77, v164 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v164 offset:34464
	ds_load_u8 v74, v164 offset:34432
	v_lshl_or_b32 v75, v77, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v164 offset:34528
	ds_load_u8 v77, v164 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v77, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v164 offset:34336
	ds_load_u8 v77, v164 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	ds_load_u8 v77, v164 offset:34400
	ds_load_u8 v78, v164 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v77, 16, v73
	ds_load_u8 v77, v175 offset:15616
	ds_load_u8 v78, v175 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:16128
	ds_load_u8 v79, v175 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:14592
	ds_load_u8 v80, v175 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:15104
	ds_load_u8 v81, v175 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:13568
	ds_load_u8 v78, v175 offset:13312
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:14080
	ds_load_u8 v81, v175 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:12544
	ds_load_u8 v81, v175 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v175 offset:13056
	ds_load_u8 v82, v175 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	ds_load_u8 v81, v164 offset:34608
	ds_load_u8 v82, v164 offset:34576
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[73:76], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v164 offset:34672
	ds_load_u8 v83, v164 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v164 offset:34480
	ds_load_u8 v84, v164 offset:34448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v83, 0xc0c0004
	ds_load_u8 v83, v164 offset:34544
	ds_load_u8 v85, v164 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v83, 0xc0c0004
	v_lshl_or_b32 v83, v82, 16, v81
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v81, v164 offset:34352
	ds_load_u8 v84, v164 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v84, v81, 0xc0c0004
	ds_load_u8 v84, v164 offset:34416
	ds_load_u8 v85, v164 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v84, 16, v81
	ds_load_u8 v84, v164 offset:34736
	ds_load_u8 v85, v164 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v166 offset:32768
	ds_load_u8 v93, v164 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v84, v85, 16, v84
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[81:84], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v77, v175 offset:15744
	ds_load_u8 v78, v175 offset:15488
	v_cvt_f32_i32_e32 v196, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s47, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v193, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s19, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v200, v13
	v_cvt_f32_i32_e32 v194, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s48, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s47, v168
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v11, v176, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v195, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v163, s17, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v197, v16
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s48, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s47, v169
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v198, v15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:16256
	ds_load_u8 v79, v175 offset:16000
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s48, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s47, v170
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v12, s0
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s19, v172
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v199, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s48, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v86, s18, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:14720
	ds_load_u8 v80, v175 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:15232
	ds_load_u8 v85, v175 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:13696
	ds_load_u8 v78, v175 offset:13440
	v_lshl_or_b32 v79, v85, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:14208
	ds_load_u8 v85, v175 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v85, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:12672
	ds_load_u8 v85, v175 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v85, v77, 0xc0c0004
	ds_load_u8 v85, v175 offset:13184
	ds_load_u8 v93, v175 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v85, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[73:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[81:84], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v77, v175 offset:32000
	ds_load_u8 v78, v175 offset:31744
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v181, v37
	v_cvt_f32_i32_e32 v201, v25
	v_cvt_f32_i32_e32 v205, v29
	v_cvt_f32_i32_e32 v179, v39
	v_cvt_f32_i32_e32 v180, v40
	v_cvt_f32_i32_e32 v182, v36
	v_cvt_f32_i32_e32 v183, v35
	v_cvt_f32_i32_e32 v184, v34
	v_cvt_f32_i32_e32 v202, v30
	v_cvt_f32_i32_e32 v203, v31
	v_cvt_f32_i32_e32 v204, v32
	v_cvt_f32_i32_e32 v206, v28
	v_cvt_f32_i32_e32 v207, v27
	v_cvt_f32_i32_e32 v208, v26
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:32512
	ds_load_u8 v79, v175 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:30976
	ds_load_u8 v80, v175 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:31488
	ds_load_u8 v85, v175 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:29952
	ds_load_u8 v78, v175 offset:29696
	v_lshl_or_b32 v79, v85, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:30464
	ds_load_u8 v85, v175 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v85, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:28928
	ds_load_u8 v85, v175 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v85, v77, 0xc0c0004
	ds_load_u8 v85, v175 offset:29440
	ds_load_u8 v93, v175 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v77, v85, 16, v77
	ds_load_u8 v85, v175 offset:32128
	ds_load_u8 v93, v175 offset:31872
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v177, v9 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v162, s17, 1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[73:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[77:80], v[81:84], v[65:72] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v80, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v77, v24
	v_cvt_f32_i32_e32 v78, v23
	v_cvt_f32_i32_e32 v79, v22
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	ds_load_u8 v93, v175 offset:32640
	ds_load_u8 v94, v175 offset:32384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v175 offset:31104
	ds_load_u8 v95, v175 offset:30848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v175 offset:31616
	ds_load_u8 v96, v175 offset:31360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_lshl_or_b32 v96, v93, 16, v85
	ds_load_u8 v85, v175 offset:30080
	ds_load_u8 v93, v175 offset:29824
	v_lshl_or_b32 v95, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	ds_load_u8 v93, v175 offset:30592
	ds_load_u8 v94, v175 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v93, 16, v85
	ds_load_u8 v85, v175 offset:29056
	ds_load_u8 v93, v175 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v93, v85, 0xc0c0004
	ds_load_u8 v93, v175 offset:29568
	ds_load_u8 v161, v175 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v161, v93, 0xc0c0004
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v161, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v93, v93, 16, v85
	v_cvt_f32_i32_e32 v85, v56
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[73:76], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v76, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v12, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s19, v88
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[81:84], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v185, v41
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v41, 0x80000000, v11, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s19, v87
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v12, s4
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s20, v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v33
	v_cvt_f32_i32_e32 v73, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v19
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v25, 0x80000000, v12, vcc_lo
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s20, v171
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v18
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v81, v52
	v_cvt_f32_i32_e32 v82, v51
	v_cvt_f32_i32_e32 v83, v50
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v29, 0x80000000, v12, s0
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s20, v172
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v84, v49
	v_cvt_f32_i32_e32 v93, v55
	v_cvt_f32_i32_e32 v94, v54
	v_cvt_f32_i32_e32 v95, v53
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v33, 0x80000000, v12, s1
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s20, v88
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v186, v46
	v_cvt_f32_i32_e32 v187, v47
	v_cvt_f32_i32_e32 v188, v48
	v_cvt_f32_i32_e32 v189, v45
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v37, 0x80000000, v12, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v209, v9, s[36:39], 0 offen
	buffer_load_u16 v210, v10, s[36:39], 0 offen
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
	buffer_load_u16 v211, v41, s[40:43], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v190, v44
	v_cvt_f32_i32_e32 v191, v43
	v_cvt_f32_i32_e32 v192, v42
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[41:44], v178 offset:35328
	ds_load_b128 v[45:48], v178 offset:35344
	ds_load_b128 v[49:52], v178 offset:34816
	ds_load_b128 v[53:56], v178 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v211, 16, v211
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v177, v211 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v174, v[9:12]
	ds_store_b128 v174, v[13:16] offset:4096
	ds_store_b128 v174, v[17:20] offset:8192
	ds_store_b128 v174, v[21:24] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b128 v174, v[25:28] offset:16384
	ds_store_b128 v174, v[29:32] offset:20480
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[9:12], v178 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v14, 16, v210
	v_lshlrev_b32_e32 v13, 16, v209
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v173, v[90:91] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b128 v174, v[33:36] offset:24576
	ds_store_b128 v174, v[37:40] offset:28672
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v56, v14
	v_dual_mul_f32 v28, v55, v14 :: v_dual_mul_f32 v23, v56, v13
	v_mul_f32_e32 v24, v55, v13
	v_mul_f32_e32 v25, v54, v13
	v_dual_mul_f32 v26, v53, v13 :: v_dual_mul_f32 v29, v54, v14
	v_mul_f32_e32 v54, v42, v13
	v_dual_mul_f32 v42, v42, v14 :: v_dual_mul_f32 v15, v52, v13
	v_mul_f32_e32 v16, v51, v13
	v_mul_f32_e32 v17, v50, v13
	v_dual_mul_f32 v18, v49, v13 :: v_dual_mul_f32 v19, v52, v14
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v55, v12, v13
	v_dual_mul_f32 v56, v11, v13 :: v_dual_mul_f32 v211, v12, v14
	v_dual_mul_f32 v209, v10, v13 :: v_dual_mul_f32 v212, v11, v14
	v_dual_mul_f32 v210, v9, v13 :: v_dual_mul_f32 v213, v10, v14
	v_mul_f32_e32 v214, v9, v14
	ds_load_b128 v[9:12], v178 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v51, v14
	v_mul_f32_e32 v21, v50, v14
	v_mul_f32_e32 v22, v49, v14
	v_dual_mul_f32 v30, v53, v14 :: v_dual_mul_f32 v31, v46, v13
	v_mul_f32_e32 v32, v47, v13
	v_dual_mul_f32 v49, v48, v13 :: v_dual_mul_f32 v46, v46, v14
	v_dual_mul_f32 v47, v47, v14 :: v_dual_mul_f32 v50, v45, v13
	v_dual_mul_f32 v48, v48, v14 :: v_dual_mul_f32 v51, v41, v13
	v_mul_f32_e32 v45, v45, v14
	v_dual_mul_f32 v41, v41, v14 :: v_dual_mul_f32 v52, v44, v13
	v_dual_mul_f32 v53, v43, v13 :: v_dual_mul_f32 v44, v44, v14
	v_dual_mul_f32 v43, v43, v14 :: v_dual_fmac_f32 v152, v18, v76
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v215, v12, v13
	v_dual_mul_f32 v216, v11, v13 :: v_dual_mul_f32 v219, v12, v14
	v_dual_mul_f32 v217, v10, v13 :: v_dual_mul_f32 v220, v11, v14
	v_dual_mul_f32 v218, v9, v13 :: v_dual_mul_f32 v221, v10, v14
	v_mul_f32_e32 v222, v9, v14
	ds_load_b128 v[9:12], v178 offset:35344
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v151, v17, v75
	v_dual_fmac_f32 v149, v16, v74 :: v_dual_fmac_f32 v150, v15, v73
	v_dual_fmac_f32 v148, v26, v80 :: v_dual_fmac_f32 v147, v25, v79
	v_dual_fmac_f32 v146, v24, v78 :: v_dual_fmac_f32 v145, v23, v77
	v_fmac_f32_e32 v144, v54, v184
	v_dual_fmac_f32 v160, v51, v96 :: v_dual_fmac_f32 v143, v53, v183
	v_dual_fmac_f32 v142, v52, v182 :: v_dual_fmac_f32 v141, v50, v181
	v_dual_fmac_f32 v159, v31, v161 :: v_dual_fmac_f32 v158, v32, v179
	v_dual_fmac_f32 v157, v49, v180 :: v_dual_fmac_f32 v138, v19, v193
	v_dual_fmac_f32 v140, v22, v196 :: v_dual_fmac_f32 v139, v21, v195
	v_dual_fmac_f32 v137, v20, v194 :: v_dual_fmac_f32 v136, v30, v200
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v223, v10, v13
	v_mul_f32_e32 v224, v11, v13
	v_dual_mul_f32 v225, v12, v13 :: v_dual_mul_f32 v226, v10, v14
	v_mul_f32_e32 v227, v11, v14
	v_dual_mul_f32 v228, v12, v14 :: v_dual_mul_f32 v229, v9, v13
	v_mul_f32_e32 v230, v9, v14
	ds_load_b128 v[9:12], v178 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v135, v29, v199 :: v_dual_fmac_f32 v134, v28, v198
	v_dual_fmac_f32 v133, v27, v197 :: v_dual_fmac_f32 v100, v42, v208
	v_dual_fmac_f32 v156, v41, v201 :: v_dual_fmac_f32 v99, v43, v207
	v_dual_fmac_f32 v98, v44, v206 :: v_dual_fmac_f32 v97, v45, v205
	v_dual_fmac_f32 v155, v46, v202 :: v_dual_fmac_f32 v154, v47, v203
	v_dual_fmac_f32 v153, v48, v204 :: v_dual_fmac_f32 v130, v209, v83
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v124, v218, v95 :: v_dual_fmac_f32 v131, v223, v186
	v_dual_fmac_f32 v120, v216, v93 :: v_dual_fmac_f32 v127, v225, v188
	v_dual_fmac_f32 v118, v215, v85 :: v_dual_fmac_f32 v107, v220, v71
	v_dual_fmac_f32 v114, v229, v189 :: v_dual_fmac_f32 v111, v211, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v231, v9, v13
	v_mul_f32_e32 v232, v12, v13
	v_mul_f32_e32 v233, v11, v13
	v_mul_f32_e32 v13, v10, v13
	v_mul_f32_e32 v9, v9, v14
	v_mul_f32_e32 v12, v12, v14
	v_mul_f32_e32 v11, v11, v14
	v_mul_f32_e32 v10, v10, v14
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v132, v210, v84 :: v_dual_fmac_f32 v105, v231, v185
	v_dual_fmac_f32 v126, v56, v82 :: v_dual_fmac_f32 v117, v13, v192
	v_dual_fmac_f32 v128, v55, v81 :: v_dual_fmac_f32 v115, v232, v190
	v_dual_fmac_f32 v122, v217, v94 :: v_dual_fmac_f32 v129, v224, v187
	v_dual_fmac_f32 v116, v233, v191 :: v_dual_fmac_f32 v113, v214, v65
	v_dual_fmac_f32 v112, v213, v66 :: v_dual_fmac_f32 v109, v222, v69
	v_dual_fmac_f32 v110, v212, v67 :: v_dual_fmac_f32 v125, v9, v57
	v_dual_fmac_f32 v108, v221, v70 :: v_dual_fmac_f32 v103, v11, v59
	v_dual_fmac_f32 v106, v219, v72 :: v_dual_fmac_f32 v101, v230, v61
	v_dual_fmac_f32 v104, v10, v58 :: v_dual_fmac_f32 v121, v227, v63
	v_dual_fmac_f32 v102, v12, v60 :: v_dual_fmac_f32 v123, v226, v62
	v_fmac_f32_e32 v119, v228, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_mov_b32_e32 v160, 0
.LBB0_4:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v13, v164 offset:32768
	ds_load_u8_d16 v87, v164 offset:32784
	ds_load_u8_d16 v14, v164 offset:32800
	ds_load_u8_d16 v88, v164 offset:32816
	ds_load_u8_d16 v15, v164 offset:32832
	ds_load_u8_d16 v16, v164 offset:32864
	ds_load_u8_d16 v181, v164 offset:32880
	ds_load_u8_d16 v182, v164 offset:32848
	ds_load_u8_d16 v53, v164 offset:32896
	ds_load_u8_d16 v54, v164 offset:32928
	ds_load_u8_d16 v247, v164 offset:32960
	ds_load_u8_d16 v248, v164 offset:32992
	ds_load_u8_d16 v193, v164 offset:33008
	ds_load_u8_d16 v194, v164 offset:32976
	ds_load_u8_d16 v195, v164 offset:32944
	ds_load_u8_d16 v196, v164 offset:32912
	ds_load_u8_d16 v249, v164 offset:33024
	ds_load_u8_d16 v251, v164 offset:33056
	ds_load_u8_d16 v55, v164 offset:33088
	ds_load_u8_d16 v250, v164 offset:33120
	ds_load_u8_d16 v61, v164 offset:33136
	ds_load_u8_d16 v204, v164 offset:33104
	ds_load_u8_d16 v207, v164 offset:33072
	ds_load_u8_d16 v208, v164 offset:33040
	ds_load_u8_d16 v252, v164 offset:33152
	ds_load_u8_d16 v254, v164 offset:33184
	ds_load_u8_d16 v56, v164 offset:33216
	ds_load_u8_d16 v253, v164 offset:33248
	ds_load_u8_d16 v210, v164 offset:33264
	ds_load_u8_d16 v212, v164 offset:33232
	ds_load_u8_d16 v214, v164 offset:33200
	ds_load_u8_d16 v215, v164 offset:33168
	ds_load_u8_d16 v20, v164 offset:33280
	ds_load_u8_d16 v23, v164 offset:33312
	ds_load_u8_d16 v24, v164 offset:33344
	ds_load_u8_d16 v26, v164 offset:33376
	ds_load_u8_d16 v167, v164 offset:33392
	ds_load_u8_d16 v168, v164 offset:33360
	ds_load_u8_d16 v169, v164 offset:33328
	ds_load_u8_d16 v170, v164 offset:33296
	ds_load_u8_d16 v28, v164 offset:33408
	ds_load_u8_d16 v37, v164 offset:33440
	ds_load_u8_d16 v38, v164 offset:33472
	ds_load_u8_d16 v39, v164 offset:33504
	ds_load_u8_d16 v177, v164 offset:33520
	ds_load_u8_d16 v179, v164 offset:33488
	ds_load_u8_d16 v183, v164 offset:33456
	ds_load_u8_d16 v184, v164 offset:33424
	ds_load_u8_d16 v40, v164 offset:33536
	ds_load_u8_d16 v47, v164 offset:33568
	ds_load_u8_d16 v48, v164 offset:33600
	ds_load_u8_d16 v50, v164 offset:33632
	ds_load_u8_d16 v201, v164 offset:33648
	ds_load_u8_d16 v203, v164 offset:33616
	ds_load_u8_d16 v205, v164 offset:33584
	ds_load_u8_d16 v206, v164 offset:33552
	ds_load_u8_d16 v57, v164 offset:33664
	ds_load_u8_d16 v58, v164 offset:33696
	ds_load_u8_d16 v59, v164 offset:33728
	ds_load_u8_d16 v60, v164 offset:33760
	ds_load_u8_d16 v18, v164 offset:33792
	ds_load_u8_d16 v209, v164 offset:33744
	ds_load_u8_d16 v211, v164 offset:33712
	ds_load_u8_d16 v213, v164 offset:33680
	ds_load_u8_d16 v21, v164 offset:33824
	ds_load_u8_d16 v22, v164 offset:33856
	ds_load_u8_d16 v25, v164 offset:33888
	ds_load_u8_d16 v27, v164 offset:33920
	ds_load_u8_d16 v89, v164 offset:33904
	ds_load_u8_d16 v91, v164 offset:33872
	ds_load_u8_d16 v96, v164 offset:33840
	ds_load_u8_d16 v161, v164 offset:33808
	ds_load_u8_d16 v41, v164 offset:33952
	ds_load_u8_d16 v42, v164 offset:33984
	ds_load_u8_d16 v43, v164 offset:34016
	ds_load_u8_d16 v44, v164 offset:34048
	ds_load_u8_d16 v171, v164 offset:34032
	ds_load_u8_d16 v172, v164 offset:34000
	ds_load_u8_d16 v174, v164 offset:33968
	ds_load_u8_d16 v176, v164 offset:33936
	ds_load_u8_d16 v45, v164 offset:34080
	ds_load_u8_d16 v46, v164 offset:34112
	ds_load_u8_d16 v49, v164 offset:34144
	ds_load_u8_d16 v51, v164 offset:34176
	ds_load_u8_d16 v187, v164 offset:34160
	ds_load_u8_d16 v188, v164 offset:34128
	ds_load_u8_d16 v191, v164 offset:34096
	ds_load_u8_d16 v192, v164 offset:34064
	ds_load_u8_d16 v52, v164 offset:34208
	ds_load_u8_d16 v238, v164 offset:34240
	ds_load_u8_d16 v241, v164 offset:34272
	ds_load_u8_d16 v19, v164 offset:34304
	ds_load_u8_d16 v197, v164 offset:34288
	ds_load_u8_d16 v198, v164 offset:34256
	ds_load_u8_d16 v200, v164 offset:34224
	ds_load_u8_d16 v202, v164 offset:34192
	ds_load_u8_d16 v29, v164 offset:34336
	ds_load_u8_d16 v30, v164 offset:34368
	ds_load_u8_d16 v31, v164 offset:34400
	ds_load_u8_d16 v32, v164 offset:34432
	ds_load_u8_d16 v90, v164 offset:34416
	ds_load_u8_d16 v93, v164 offset:34384
	ds_load_u8_d16 v94, v164 offset:34352
	ds_load_u8_d16 v217, v164 offset:34320
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v1, 0xe0, v0
	ds_load_u8_d16 v234, v164 offset:34464
	ds_load_u8_d16 v235, v164 offset:34496
	ds_load_u8_d16 v236, v164 offset:34528
	ds_load_u8_d16 v237, v164 offset:34560
	ds_load_u8_d16 v173, v164 offset:34544
	ds_load_u8_d16 v175, v164 offset:34512
	ds_load_u8_d16 v178, v164 offset:34480
	ds_load_u8_d16 v180, v164 offset:34448
	ds_load_u8_d16 v239, v164 offset:34592
	ds_load_u8_d16 v240, v164 offset:34624
	ds_load_u8_d16 v242, v164 offset:34656
	ds_load_u8_d16 v243, v164 offset:34688
	ds_load_u8_d16 v185, v164 offset:34672
	ds_load_u8_d16 v186, v164 offset:34640
	ds_load_u8_d16 v189, v164 offset:34608
	ds_load_u8_d16 v190, v164 offset:34576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v1, v1, v244
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v244, v164 offset:34720
	ds_load_u8_d16 v245, v164 offset:34752
	ds_load_u8_d16 v246, v164 offset:34784
	ds_load_u8_d16 v216, v165 offset:32768
	ds_load_u8_d16 v165, v166 offset:32768
	ds_load_u8_d16 v166, v164 offset:34768
	ds_load_u8_d16 v199, v164 offset:34736
	ds_load_u8_d16 v164, v164 offset:34704
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v231, 0, v1
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_mov_b32 s4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v252, v254, 0xc0c0004
	v_perm_b32 v2, v56, v253, 0xc0c0004
	v_perm_b32 v3, v249, v251, 0xc0c0004
	v_perm_b32 v5, v55, v250, 0xc0c0004
	v_perm_b32 v35, v208, v207, 0xc0c0004
	v_perm_b32 v62, v204, v61, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v53, v54, 0xc0c0004
	v_perm_b32 v2, v247, v248, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v15, v16, 0xc0c0004
	v_lshl_or_b32 v35, v62, 16, v35
	v_perm_b32 v62, v182, v181, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v13, v14, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v231 offset:3328
	ds_load_u8 v6, v231 offset:3072
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:3840
	ds_load_u8 v7, v231 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v231 offset:2304
	ds_load_u8 v8, v231 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v231 offset:2816
	ds_load_u8 v9, v231 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v231 offset:1280
	ds_load_u8 v6, v231 offset:1024
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:1792
	ds_load_u8 v9, v231 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v231 offset:256
	ds_load_u8 v9, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v231 offset:768
	ds_load_u8 v10, v231 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v231 offset:3456
	ds_load_u8 v10, v231 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:3968
	ds_load_u8 v11, v231 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v231 offset:2432
	ds_load_u8 v12, v231 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v231 offset:2944
	ds_load_u8 v33, v231 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v231 offset:1408
	ds_load_u8 v10, v231 offset:1152
	v_lshl_or_b32 v11, v33, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:1920
	ds_load_u8 v33, v231 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v33, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v231 offset:384
	ds_load_u8 v33, v231 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v33, v9, 0xc0c0004
	ds_load_u8 v33, v231 offset:896
	ds_load_u8 v34, v231 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v34, v212, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v33, 16, v9
	v_perm_b32 v33, v215, v214, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v196, v195, 0xc0c0004
	v_perm_b32 v34, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v87, v88, 0xc0c0004
	v_lshl_or_b32 v33, v62, 16, v33
	v_dual_mov_b32 v69, s11 :: v_dual_mov_b32 v68, s10
	v_dual_mov_b32 v67, s9 :: v_dual_mov_b32 v66, s8
	v_dual_mov_b32 v65, s7 :: v_dual_mov_b32 v64, s6
	v_dual_mov_b32 v63, s5 :: v_dual_mov_b32 v62, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[5:8], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v1, v57, v58, 0xc0c0004
	v_perm_b32 v2, v59, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[218:225], v[5:8], v[33:36], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v3, v40, v47, 0xc0c0004
	v_perm_b32 v5, v48, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v28, v37, 0xc0c0004
	v_perm_b32 v2, v38, v39, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[33:36], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v24, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v20, v23, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v231 offset:7424
	ds_load_u8 v6, v231 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:7936
	ds_load_u8 v7, v231 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v231 offset:6400
	ds_load_u8 v8, v231 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v231 offset:6912
	ds_load_u8 v9, v231 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v231 offset:5376
	ds_load_u8 v6, v231 offset:5120
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:5888
	ds_load_u8 v9, v231 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v231 offset:4352
	ds_load_u8 v9, v231 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v231 offset:4864
	ds_load_u8 v10, v231 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v231 offset:7552
	ds_load_u8 v10, v231 offset:7296
	v_wmma_i32_16x16x16_iu8 v[70:77], v[5:8], v[1:4], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:8064
	ds_load_u8 v11, v231 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v231 offset:6528
	ds_load_u8 v12, v231 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v231 offset:7040
	ds_load_u8 v33, v231 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v231 offset:5504
	ds_load_u8 v10, v231 offset:5248
	v_lshl_or_b32 v11, v33, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:6016
	ds_load_u8 v33, v231 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v33, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v231 offset:4480
	ds_load_u8 v33, v231 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v33, v9, 0xc0c0004
	ds_load_u8 v33, v231 offset:4992
	ds_load_u8 v34, v231 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v33, 16, v9
	v_perm_b32 v33, v203, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[9:12], v[1:4], v[78:85] neg_lo:[1,1,0]
	v_perm_b32 v1, v213, v211, 0xc0c0004
	v_perm_b32 v2, v209, v216, 0xc0c0004
	v_perm_b32 v3, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v184, v183, 0xc0c0004
	v_perm_b32 v2, v179, v177, 0xc0c0004
	v_lshl_or_b32 v3, v33, 16, v3
	v_perm_b32 v33, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v170, v169, 0xc0c0004
	v_lshl_or_b32 v1, v33, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[5:8], v[1:4], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v1, v51, v52, 0xc0c0004
	v_perm_b32 v2, v238, v241, 0xc0c0004
	v_perm_b32 v3, v44, v45, 0xc0c0004
	v_perm_b32 v5, v46, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v27, v41, 0xc0c0004
	v_perm_b32 v2, v42, v43, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v22, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v18, v21, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v231 offset:11520
	ds_load_u8 v6, v231 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:12032
	ds_load_u8 v7, v231 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v231 offset:10496
	ds_load_u8 v8, v231 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v231 offset:11008
	ds_load_u8 v9, v231 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v231 offset:9472
	ds_load_u8 v6, v231 offset:9216
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:9984
	ds_load_u8 v9, v231 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v231 offset:8448
	ds_load_u8 v9, v231 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v231 offset:8960
	ds_load_u8 v10, v231 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v231 offset:11648
	ds_load_u8 v10, v231 offset:11392
	v_wmma_i32_16x16x16_iu8 v[70:77], v[5:8], v[1:4], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:12160
	ds_load_u8 v11, v231 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v231 offset:10624
	ds_load_u8 v12, v231 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v231 offset:11136
	ds_load_u8 v33, v231 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v231 offset:9600
	ds_load_u8 v10, v231 offset:9344
	v_lshl_or_b32 v11, v33, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:10112
	ds_load_u8 v33, v231 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v33, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v231 offset:8576
	ds_load_u8 v33, v231 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v33, v9, 0xc0c0004
	ds_load_u8 v33, v231 offset:9088
	ds_load_u8 v34, v231 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v33, 16, v9
	v_perm_b32 v33, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[9:12], v[1:4], v[78:85] neg_lo:[1,1,0]
	v_perm_b32 v1, v202, v200, 0xc0c0004
	v_perm_b32 v2, v198, v197, 0xc0c0004
	v_perm_b32 v3, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v176, v174, 0xc0c0004
	v_perm_b32 v2, v172, v171, 0xc0c0004
	v_lshl_or_b32 v3, v33, 16, v3
	v_perm_b32 v33, v91, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v161, v96, 0xc0c0004
	v_lshl_or_b32 v1, v33, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[5:8], v[1:4], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v1, v243, v244, 0xc0c0004
	v_perm_b32 v2, v245, v246, 0xc0c0004
	v_perm_b32 v3, v237, v239, 0xc0c0004
	v_perm_b32 v5, v240, v242, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v32, v234, 0xc0c0004
	v_perm_b32 v2, v235, v236, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v19, v29, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v231 offset:15616
	ds_load_u8 v6, v231 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:16128
	ds_load_u8 v7, v231 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v231 offset:14592
	ds_load_u8 v8, v231 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v231 offset:15104
	ds_load_u8 v9, v231 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v231 offset:13568
	ds_load_u8 v6, v231 offset:13312
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v231 offset:14080
	ds_load_u8 v9, v231 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v231 offset:12544
	ds_load_u8 v9, v231 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v231 offset:13056
	ds_load_u8 v10, v231 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v231 offset:15744
	ds_load_u8 v10, v231 offset:15488
	v_wmma_i32_16x16x16_iu8 v[70:77], v[5:8], v[1:4], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v226, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v227, v76
	v_cvt_f32_i32_e32 v228, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v229, v70
	v_cvt_f32_i32_e32 v230, v71
	v_cvt_f32_i32_e32 v232, v72
	v_cvt_f32_i32_e32 v233, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:16256
	ds_load_u8 v11, v231 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v231 offset:14720
	ds_load_u8 v12, v231 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v231 offset:15232
	ds_load_u8 v33, v231 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v231 offset:13696
	ds_load_u8 v10, v231 offset:13440
	v_lshl_or_b32 v11, v33, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v231 offset:14208
	ds_load_u8 v33, v231 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v33, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v231 offset:12672
	ds_load_u8 v33, v231 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v33, v9, 0xc0c0004
	ds_load_u8 v33, v231 offset:13184
	ds_load_u8 v34, v231 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v33, 16, v9
	v_perm_b32 v33, v186, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[9:12], v[1:4], v[78:85] neg_lo:[1,1,0]
	v_perm_b32 v1, v164, v199, 0xc0c0004
	v_perm_b32 v2, v166, v165, 0xc0c0004
	v_perm_b32 v3, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v81
	v_cvt_f32_i32_e32 v34, v85
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v180, v178, 0xc0c0004
	v_perm_b32 v2, v175, v173, 0xc0c0004
	v_lshl_or_b32 v3, v33, 16, v3
	v_perm_b32 v33, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v217, v94, 0xc0c0004
	v_lshl_or_b32 v1, v33, 16, v1
	v_cvt_f32_i32_e32 v33, v84
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[5:8], v[1:4], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v78
	v_cvt_f32_i32_e32 v10, v79
	v_cvt_f32_i32_e32 v12, v80
	v_cvt_f32_i32_e32 v78, v82
	v_cvt_f32_i32_e32 v11, v83
	v_cvt_f32_i32_e32 v36, v218
	v_cvt_f32_i32_e32 v79, v219
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v5, v222
	v_cvt_f32_i32_e32 v6, v223
	v_cvt_f32_i32_e32 v7, v224
	v_cvt_f32_i32_e32 v8, v225
	v_cvt_f32_i32_e32 v219, v62
	v_cvt_f32_i32_e32 v1, v63
	v_cvt_f32_i32_e32 v2, v64
	v_cvt_f32_i32_e32 v3, v65
	v_cvt_f32_i32_e32 v4, v66
	v_cvt_f32_i32_e32 v222, v67
	v_cvt_f32_i32_e32 v224, v68
	v_cvt_f32_i32_e32 v225, v69
	v_cvt_f32_i32_e32 v223, v74
.LBB0_6:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x11                           ; 72-byte Folded Spill
	scratch_store_b32 off, v79, off offset:76
	scratch_store_b32 off, v78, off offset:72
	scratch_store_b32 off, v36, off offset:68
	scratch_store_b32 off, v35, off offset:64
	scratch_store_b32 off, v34, off offset:60
	scratch_store_b32 off, v33, off offset:56
	scratch_store_b32 off, v12, off offset:52
	scratch_store_b32 off, v11, off offset:48
	scratch_store_b32 off, v10, off offset:44
	scratch_store_b32 off, v9, off offset:40
	scratch_store_b32 off, v8, off offset:36
	scratch_store_b32 off, v7, off offset:32
	scratch_store_b32 off, v6, off offset:28
	scratch_store_b32 off, v5, off offset:24
	scratch_store_b32 off, v4, off offset:20
	scratch_store_b32 off, v3, off offset:16
	scratch_store_b32 off, v2, off offset:12
	scratch_store_b32 off, v1, off offset:8
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v65.l, v165.l
	v_mov_b16_e64 v64.l, v178.l
	v_mov_b16_e64 v178.l, v161.l
	v_mov_b16_e64 v165.l, v96.l
	v_mov_b16_e32 v66.l, v94.l
	v_mov_b16_e32 v63.l, v93.l
	v_mov_b16_e64 v218.l, v90.l
	v_mov_b16_e32 v90.l, v89.l
	v_mov_b16_e32 v89.l, v88.l
	v_mov_b16_e32 v88.l, v87.l
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v33, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	v_perm_b32 v17, v57, v58, 0xc0c0004
	v_perm_b32 v57, v59, v60, 0xc0c0004
	v_perm_b32 v1, v252, v254, 0xc0c0004
	v_perm_b32 v2, v56, v253, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v60, v57, 16, v17
	v_perm_b32 v17, v40, v47, 0xc0c0004
	v_perm_b32 v40, v48, v50, 0xc0c0004
	v_lshl_or_b32 v56, v2, 16, v1
	v_perm_b32 v1, v249, v251, 0xc0c0004
	v_perm_b32 v2, v55, v250, 0xc0c0004
	s_mov_b32 s7, s4
	v_lshl_or_b32 v59, v40, 16, v17
	v_perm_b32 v17, v28, v37, 0xc0c0004
	v_perm_b32 v28, v38, v39, 0xc0c0004
	v_lshl_or_b32 v55, v2, 16, v1
	v_perm_b32 v1, v53, v54, 0xc0c0004
	v_perm_b32 v2, v247, v248, 0xc0c0004
	s_mov_b32 s8, s4
	v_lshl_or_b32 v58, v28, 16, v17
	v_perm_b32 v17, v20, v23, 0xc0c0004
	v_perm_b32 v20, v24, v26, 0xc0c0004
	v_lshl_or_b32 v54, v2, 16, v1
	v_perm_b32 v1, v13, v14, 0xc0c0004
	v_perm_b32 v2, v15, v16, 0xc0c0004
	s_mov_b32 s9, s4
	v_lshl_or_b32 v57, v20, 16, v17
	ds_load_u8 v17, v231 offset:23808
	ds_load_u8 v20, v231 offset:23552
	s_mov_b32 s10, s4
	v_lshl_or_b32 v53, v2, 16, v1
	ds_load_u8 v1, v231 offset:19712
	ds_load_u8 v2, v231 offset:19456
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v231 offset:24320
	ds_load_u8 v23, v231 offset:24064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v231 offset:20224
	ds_load_u8 v3, v231 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v23, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v20, 16, v17
	ds_load_u8 v17, v231 offset:22784
	ds_load_u8 v20, v231 offset:22528
	v_lshl_or_b32 v36, v2, 16, v1
	ds_load_u8 v1, v231 offset:18688
	ds_load_u8 v2, v231 offset:18432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v231 offset:23296
	ds_load_u8 v23, v231 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v231 offset:19200
	ds_load_u8 v3, v231 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v23, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v39, v20, 16, v17
	ds_load_u8 v17, v231 offset:21760
	ds_load_u8 v20, v231 offset:21504
	v_lshl_or_b32 v35, v2, 16, v1
	ds_load_u8 v1, v231 offset:17664
	ds_load_u8 v2, v231 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v231 offset:22272
	ds_load_u8 v23, v231 offset:22016
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v231 offset:18176
	ds_load_u8 v3, v231 offset:17920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v23, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v20, 16, v17
	ds_load_u8 v17, v231 offset:20736
	ds_load_u8 v20, v231 offset:20480
	v_lshl_or_b32 v34, v2, 16, v1
	ds_load_u8 v1, v231 offset:16640
	ds_load_u8 v2, v231 offset:16384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v231 offset:21248
	ds_load_u8 v23, v231 offset:20992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v231 offset:17152
	ds_load_u8 v3, v231 offset:16896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v23, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v37, v20, 16, v17
	v_perm_b32 v17, v51, v52, 0xc0c0004
	v_perm_b32 v20, v238, v241, 0xc0c0004
	v_lshl_or_b32 v33, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v48, v20, 16, v17
	v_perm_b32 v17, v44, v45, 0xc0c0004
	v_perm_b32 v20, v46, v49, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_lshl_or_b32 v47, v20, 16, v17
	v_perm_b32 v17, v27, v41, 0xc0c0004
	v_perm_b32 v20, v42, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v20, 16, v17
	v_perm_b32 v17, v18, v21, 0xc0c0004
	v_perm_b32 v18, v22, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[57:60], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v231 offset:27904
	ds_load_u8 v18, v231 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:28416
	ds_load_u8 v20, v231 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v231 offset:26880
	ds_load_u8 v18, v231 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:27392
	ds_load_u8 v20, v231 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v18, 16, v17
	ds_load_u8 v17, v231 offset:25856
	ds_load_u8 v18, v231 offset:25600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:26368
	ds_load_u8 v20, v231 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v231 offset:24832
	ds_load_u8 v18, v231 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:25344
	ds_load_u8 v20, v231 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v25, v18, 16, v17
	v_perm_b32 v17, v243, v244, 0xc0c0004
	v_perm_b32 v18, v245, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[45:48], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	v_perm_b32 v17, v237, v239, 0xc0c0004
	v_perm_b32 v18, v240, v242, 0xc0c0004
	v_lshl_or_b32 v51, v18, 16, v17
	v_perm_b32 v17, v32, v234, 0xc0c0004
	v_perm_b32 v18, v235, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	v_perm_b32 v17, v19, v29, 0xc0c0004
	v_perm_b32 v18, v30, v31, 0xc0c0004
	v_lshl_or_b32 v49, v18, 16, v17
	ds_load_u8 v17, v231 offset:32000
	ds_load_u8 v18, v231 offset:31744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:32512
	ds_load_u8 v19, v231 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v231 offset:30976
	ds_load_u8 v18, v231 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:31488
	ds_load_u8 v19, v231 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v231 offset:29952
	ds_load_u8 v18, v231 offset:29696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:30464
	ds_load_u8 v19, v231 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v231 offset:28928
	ds_load_u8 v18, v231 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:29440
	ds_load_u8 v19, v231 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v231 offset:19840
	ds_load_u8 v18, v231 offset:19584
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v96, v10
	v_cvt_f32_i32_e32 v93, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v161, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:20352
	ds_load_u8 v19, v231 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v18, 16, v17
	ds_load_u8 v17, v231 offset:18816
	ds_load_u8 v18, v231 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:19328
	ds_load_u8 v19, v231 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v18, 16, v17
	ds_load_u8 v17, v231 offset:17792
	ds_load_u8 v18, v231 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:18304
	ds_load_u8 v19, v231 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v18, 16, v17
	ds_load_u8 v17, v231 offset:16768
	ds_load_u8 v18, v231 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v231 offset:17280
	ds_load_u8 v19, v231 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[53:56], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v53, v231 offset:23936
	ds_load_u8 v54, v231 offset:23680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v231 offset:24448
	ds_load_u8 v55, v231 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v231 offset:22912
	ds_load_u8 v54, v231 offset:22656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v231 offset:23424
	ds_load_u8 v55, v231 offset:23168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v54, 16, v53
	ds_load_u8 v53, v231 offset:21888
	ds_load_u8 v54, v231 offset:21632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v231 offset:22400
	ds_load_u8 v62, v231 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v231 offset:20864
	ds_load_u8 v62, v231 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v62, v53, 0xc0c0004
	ds_load_u8 v62, v231 offset:21376
	ds_load_u8 v67, v231 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v67, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v62, 16, v53
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v231 offset:28032
	ds_load_u8 v58, v231 offset:27776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v231 offset:28544
	ds_load_u8 v59, v231 offset:28288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v58, 16, v57
	ds_load_u8 v57, v231 offset:27008
	ds_load_u8 v58, v231 offset:26752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v231 offset:27520
	ds_load_u8 v59, v231 offset:27264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v57
	ds_load_u8 v57, v231 offset:25984
	ds_load_u8 v58, v231 offset:25728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v231 offset:26496
	ds_load_u8 v62, v231 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v231 offset:24960
	ds_load_u8 v62, v231 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v62, v57, 0xc0c0004
	ds_load_u8 v62, v231 offset:25472
	ds_load_u8 v67, v231 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v67, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v57, v62, 16, v57
	v_perm_b32 v62, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[45:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v45, v231 offset:32128
	ds_load_u8 v46, v231 offset:31872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v231 offset:32640
	ds_load_u8 v47, v231 offset:32384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v46, 16, v45
	ds_load_u8 v45, v231 offset:31104
	ds_load_u8 v46, v231 offset:30848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v231 offset:31616
	ds_load_u8 v47, v231 offset:31360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v46, 16, v45
	ds_load_u8 v45, v231 offset:30080
	ds_load_u8 v46, v231 offset:29824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v231 offset:30592
	ds_load_u8 v47, v231 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v46, 16, v45
	ds_load_u8 v45, v231 offset:29056
	ds_load_u8 v46, v231 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v231 offset:29568
	ds_load_u8 v47, v231 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v67, v46, 16, v45
	v_perm_b32 v45, v215, v214, 0xc0c0004
	v_perm_b32 v46, v212, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[67:70], v[49:52], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v74, v46, 16, v45
	v_perm_b32 v45, v208, v207, 0xc0c0004
	v_perm_b32 v46, v204, v61, 0xc0c0004
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v76, v20
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v75, v24
	v_lshl_or_b32 v73, v46, 16, v45
	v_perm_b32 v45, v196, v195, 0xc0c0004
	v_perm_b32 v46, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v46, 16, v45
	v_perm_b32 v45, v88, v89, 0xc0c0004
	v_perm_b32 v46, v182, v181, 0xc0c0004
	v_lshl_or_b32 v71, v46, 16, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[33:36], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v33, v213, v211, 0xc0c0004
	v_perm_b32 v34, v209, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v72, v12
	v_cvt_f32_i32_e32 v73, v19
	v_cvt_f32_i32_e32 v71, v22
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v206, v205, 0xc0c0004
	v_perm_b32 v34, v203, v201, 0xc0c0004
	v_cvt_f32_i32_e32 v74, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	v_perm_b32 v33, v184, v183, 0xc0c0004
	v_perm_b32 v34, v179, v177, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v62, 16, v33
	v_perm_b32 v62, v91, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[45:52], v[37:40], v[33:36], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v37, v202, v200, 0xc0c0004
	v_perm_b32 v38, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v192, v191, 0xc0c0004
	v_perm_b32 v38, v188, v187, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v37
	v_perm_b32 v37, v176, v174, 0xc0c0004
	v_perm_b32 v38, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v178, v165, 0xc0c0004
	v_lshl_or_b32 v37, v62, 16, v37
	v_perm_b32 v62, v63, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[25:28], v[37:40], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v25, v164, v199, 0xc0c0004
	v_perm_b32 v26, v166, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[37:40], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v28, v26, 16, v25
	v_perm_b32 v25, v190, v189, 0xc0c0004
	v_perm_b32 v26, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v26, 16, v25
	v_perm_b32 v25, v180, v64, 0xc0c0004
	v_perm_b32 v26, v175, v173, 0xc0c0004
	v_lshl_or_b32 v26, v26, 16, v25
	v_perm_b32 v25, v217, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v62, 16, v25
	v_cvt_f32_i32_e32 v62, v15
	v_wmma_i32_16x16x16_iu8 v[45:52], v[29:32], v[25:28], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[67:70], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v70, v11
	v_cvt_f32_i32_e32 v68, v16
	v_cvt_f32_i32_e32 v69, v18
	v_cvt_f32_i32_e32 v77, v45
	v_cvt_f32_i32_e32 v79, v46
	v_cvt_f32_i32_e32 v81, v47
	v_cvt_f32_i32_e32 v82, v48
	v_cvt_f32_i32_e32 v255, v49
	v_cvt_f32_i32_e32 v95, v50
	v_cvt_f32_i32_e32 v85, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v80, v1
	v_cvt_f32_i32_e32 v36, v2
	v_cvt_f32_i32_e32 v35, v3
	v_cvt_f32_i32_e32 v34, v4
	v_cvt_f32_i32_e32 v33, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v87, v8
.LBB0_8:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s47, 6
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	v_mad_u64_u32 v[1:2], null, s0, s45, v[86:87]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s46
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v162, s0, 1
	v_add_lshl_u32 v3, v163, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_mov_b32 s36, s12
	s_and_b32 s37, s13, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v18, v2, s[36:39], 0 offen
	buffer_load_u16 v23, v3, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v18
	v_lshlrev_b32_e32 v238, 1, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_and_b32_e32 v237, 0xf0, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 28, v238
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v4, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshlrev_b32_e32 v4, 5, v0
	v_lshl_add_u32 v5, v237, 2, 0
	v_lshl_add_u32 v20, v237, 1, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 32, v4
	v_add3_u32 v21, v5, v4, v3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v21, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v22, v1, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v20 offset:35328
	ds_load_b128 v[1:4], v20 offset:35344
	ds_load_b128 v[13:16], v20 offset:34816
	ds_load_b128 v[9:12], v20 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v43, off, off offset:40 ; 4-byte Folded Reload
.Ltmp22:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp23:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v5, v19
	v_mul_f32_e32 v41, v8, v19
	v_mul_f32_e32 v30, v15, v19
	v_dual_mul_f32 v32, v10, v19 :: v_dual_mul_f32 v15, v15, v18
	v_mul_f32_e32 v28, v14, v19
	v_dual_mul_f32 v37, v11, v19 :: v_dual_mul_f32 v14, v14, v18
	v_mul_f32_e32 v27, v13, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v15, v220, v137
	scratch_load_b32 v15, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v13, v13, v18 :: v_dual_mul_f32 v38, v12, v19
	v_mul_f32_e32 v11, v11, v18
	v_mul_f32_e32 v12, v12, v18
	v_mul_f32_e32 v10, v10, v18
	v_mul_f32_e32 v24, v2, v19
	v_mul_f32_e32 v25, v3, v19
	v_dual_mul_f32 v26, v4, v19 :: v_dual_mul_f32 v3, v3, v18
	v_mul_f32_e32 v42, v1, v19
	v_mul_f32_e32 v40, v7, v19
	v_dual_mul_f32 v2, v2, v18 :: v_dual_mul_f32 v29, v16, v19
	v_mul_f32_e32 v5, v5, v18
	v_dual_mul_f32 v4, v4, v18 :: v_dual_mul_f32 v31, v9, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v222, v155
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v39, v6, v19 :: v_dual_mul_f32 v16, v16, v18
	v_mul_f32_e32 v9, v9, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v219, v156
	v_fma_f32 v3, v3, v224, v154
	v_fma_f32 v4, v4, v225, v153
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v155, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v229, v152
	v_fma_f32 v31, v31, v223, v148
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v156, v5, s2
	v_cndmask_b32_e64 v46, v154, v3, s2
	v_cndmask_b32_e64 v45, v153, v4, s2
	v_cndmask_b32_e64 v44, v152, v27, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v230, v151
	v_fma_f32 v29, v29, v233, v150
	v_fma_f32 v49, v38, v228, v145
	v_fma_f32 v32, v32, v226, v147
	v_fma_f32 v60, v16, v221, v138
	v_fma_f32 v30, v30, v232, v149
	v_fma_f32 v37, v37, v227, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v147, v32, s2
	v_cndmask_b32_e64 v32, v145, v49, s2
	v_cndmask_b32_e64 v37, v146, v37, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v22
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v21, v2 offset:34816
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v86, v14, v15, v139
	scratch_load_b32 v14, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v13, v13, v14, v140
	scratch_load_b32 v14, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v88, v12, v14, v133
	scratch_load_b32 v12, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v140, v13, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v89, v11, v12, v134
	scratch_load_b32 v11, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v90, v10, v11, v135
	scratch_load_b32 v10, off, off offset:24 ; 4-byte Folded Reload
	v_fma_f32 v23, v23, v43, v160
	scratch_load_b32 v43, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v135, v90, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v91, v9, v10, v136
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v24, v43, v159
	scratch_load_b32 v43, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v136, v91, s2
	v_cndmask_b32_e64 v50, v159, v24, s2
	v_cndmask_b32_e64 v24, v133, v88, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v43, v158
	scratch_load_b32 v43, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v158, v25, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v26, v43, v157
	scratch_load_b32 v26, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v157, v43, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v42, v26, v141
	scratch_load_b32 v26, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v151, v28, s2
	v_cndmask_b32_e64 v25, v141, v55, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v56, v41, v26, v142
	scratch_load_b32 v26, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v150, v29, s2
	v_cndmask_b32_e64 v29, v137, v59, s2
	v_cndmask_b32_e64 v28, v142, v56, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v51, v40, v26, v143
	scratch_load_b32 v26, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v20 offset:35328
	ds_load_b128 v[2:5], v20 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v148, v31, s2
	v_cndmask_b32_e64 v27, v143, v51, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[55:58], v20 offset:34832
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v21, v9, v19
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v43, v3, v19
	v_mul_f32_e32 v59, v5, v19
	v_mul_f32_e32 v135, v10, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v21, v17, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, v43, v71, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v52, v39, v26, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v160, v23, s2
	v_cndmask_b32_e64 v23, v134, v89, s2
	v_cndmask_b32_e64 v39, v149, v30, s2
	v_cndmask_b32_e64 v30, v139, v86, s2
	v_cndmask_b32_e64 v31, v144, v52, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[51:54], v20 offset:34816
	v_mul_f32_e32 v49, v4, v19
	v_mul_f32_e32 v5, v5, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v138, v60, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v43, v49, v74, v129
	v_fma_f32 v49, v59, v75, v127
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v105, v17, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v88, v54, v19
	v_mul_f32_e32 v60, v51, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v87, v119
	v_fma_f32 v87, v135, v69, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, v88, v72, v128
	v_fma_f32 v60, v60, v94, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v129, v43, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v136, v11, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v128, v75, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v74
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v3, v18
	v_mul_f32_e32 v9, v9, v18
	v_dual_mul_f32 v4, v4, v18 :: v_dual_mul_f32 v89, v53, v19
	v_mul_f32_e32 v133, v57, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v83, v123
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v86, v52, v19 :: v_dual_mul_f32 v51, v51, v18
	v_mul_f32_e32 v91, v56, v19
	v_mul_f32_e32 v134, v58, v19
	v_mul_f32_e32 v58, v58, v18
	v_dual_mul_f32 v90, v55, v19 :: v_dual_mul_f32 v57, v57, v18
	v_mul_f32_e32 v52, v52, v18
	v_mul_f32_e32 v53, v53, v18
	v_mul_f32_e32 v56, v56, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v9, v80, v125
	v_fma_f32 v4, v4, v84, v121
	v_fma_f32 v59, v89, v70, v126
	v_fma_f32 v84, v133, v62, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v123, v3, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v137, v12, v19
	v_mul_f32_e32 v19, v2, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v80, v86, v96, v130
	v_fma_f32 v51, v51, v77, v113
	v_fma_f32 v77, v58, v67, v106
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v54, v54, v18
	v_mul_f32_e32 v55, v55, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v62, v91, v161, v122
	v_fma_f32 v86, v90, v93, v124
	v_fma_f32 v81, v53, v81, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v125, v9, s2
	v_cndmask_b32_e64 v9, v121, v4, s2
	v_cndmask_b32_e64 v4, v132, v60, s2
	v_cndmask_b32_e64 v60, v120, v84, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v78, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v119, v5, s2
	v_cndmask_b32_e64 v5, v130, v80, s2
	v_cndmask_b32_e64 v43, v106, v77, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v136, v73, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v131, v21, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v70
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v137, v76, v115
	v_fma_f32 v83, v134, v68, v118
	v_fma_f32 v52, v52, v79, v112
	v_fma_f32 v79, v57, v85, v107
	v_fma_f32 v82, v54, v82, v111
	v_fma_f32 v85, v56, v95, v108
	v_fma_f32 v88, v55, v255, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v126, v59, s2
	v_cndmask_b32_e64 v67, v124, v86, s2
	v_cndmask_b32_e64 v62, v122, v62, s2
	v_cndmask_b32_e64 v55, v114, v19, s2
	v_cndmask_b32_e64 v19, v110, v81, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v127, v49, s2
	v_cndmask_b32_e64 v56, v115, v76, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v118, v83, s2
	v_cndmask_b32_e64 v57, v116, v78, s2
	v_cndmask_b32_e64 v49, v107, v79, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v79, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v86, 0xbfb8aa3b, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v113, v51, s2
	v_cndmask_b32_e64 v17, v111, v82, s2
	v_cndmask_b32_e64 v51, v108, v85, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v82, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v83, 0xbfb8aa3b, v68
	v_dual_mul_f32 v90, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v85, 0xbfb8aa3b, v5
	v_dual_mul_f32 v89, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v96, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v81
	v_mul_f32_e32 v78, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v77
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v76
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v117, v87, s2
	v_cndmask_b32_e64 v53, v112, v52, s2
	v_cndmask_b32_e64 v52, v109, v88, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v87, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v94, 0xbfb8aa3b, v57
	v_mul_f32_e32 v88, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v79
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	v_cndmask_b32_e64 v81, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v86
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v85
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v90
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v96
	v_cndmask_b32_e64 v77, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v78
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v84
	v_cndmask_b32_e64 v76, 0, 0x42800000, s0
	v_cndmask_b32_e64 v80, 0, 0x42800000, s5
	v_cndmask_b32_e64 v79, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v83
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v88
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v94
	v_dual_mul_f32 v95, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v110, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v82
	v_cndmask_b32_e64 v86, 0, 0x42800000, s8
	v_cndmask_b32_e64 v85, 0, 0x42800000, s9
	v_cndmask_b32_e64 v90, 0, 0x42800000, s12
	v_cndmask_b32_e64 v96, 0, 0x42800000, s23
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v78, 0, 0x42800000, s3
	v_cndmask_b32_e64 v84, 0, 0x42800000, s10
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v72
	v_dual_mul_f32 v105, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v80, 0xbfb8aa3b, v70
	v_dual_mul_f32 v107, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v76, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v83, 0, 0x42800000, s11
	v_cndmask_b32_e64 v88, 0, 0x42800000, s14
	v_cndmask_b32_e64 v94, 0, 0x42800000, s17
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v82, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v95
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v74 :: v_dual_fmac_f32 v86, 0xbfb8aa3b, v4
	v_dual_fmac_f32 v85, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v96, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v67
	v_exp_f32_e32 v81, v81
	v_dual_mul_f32 v91, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v106, 0xbfb8aa3b, v53
	v_dual_mul_f32 v111, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v78, 0xbfb8aa3b, v21
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v69
	v_exp_f32_e32 v77, v77
	v_dual_mul_f32 v93, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v108, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v87
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v107
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v80, v80
	v_dual_fmac_f32 v83, 0xbfb8aa3b, v68 :: v_dual_fmac_f32 v94, 0xbfb8aa3b, v57
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v60
	v_exp_f32_e32 v79, v79
	v_dual_mul_f32 v109, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v82, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v95, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v110
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s6
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v96, v96
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v91
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s1
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v90, v90
	v_cndmask_b32_e64 v87, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v93
	v_cndmask_b32_e64 v107, 0, 0x42800000, s20
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v111
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v108
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s5
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v84, v84
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s4
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v94, v94
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v105
	v_cndmask_b32_e64 v110, 0, 0x42800000, s25
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s23
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v81, v81, v118
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v89
	v_cndmask_b32_e64 v91, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v106
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s12
	v_ldexp_f32 v77, v77, v114
	v_cndmask_b32_e64 v93, 0, 0x42800000, s18
	v_cndmask_b32_e64 v111, 0, 0x42800000, s24
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v109
	v_cndmask_b32_e64 v108, 0, 0x42800000, s27
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s10
	v_ldexp_f32 v76, v76, v113
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v59
	v_ldexp_f32 v80, v80, v117
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s17
	v_ldexp_f32 v79, v79, v116
	v_cndmask_b32_e64 v105, 0, 0x42800000, s22
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v110, 0xbfb8aa3b, v51
	v_exp_f32_e32 v95, v95
	v_ldexp_f32 v86, v86, v120
	v_ldexp_f32 v96, v96, v135
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v89, 0, 0x42800000, s13
	v_cndmask_b32_e64 v106, 0, 0x42800000, s21
	v_ldexp_f32 v78, v78, v115
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v55
	v_ldexp_f32 v90, v90, v124
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v109, 0, 0x42800000, s26
	v_dual_fmac_f32 v93, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v108, 0xbfb8aa3b, v43
	v_dual_fmac_f32 v111, 0xbfb8aa3b, v52 :: v_dual_add_f32 v86, 1.0, v86
	v_ldexp_f32 v75, v75, v112
	v_ldexp_f32 v84, v84, v122
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v87, v87
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v107, v107
	v_ldexp_f32 v88, v88, v126
	v_ldexp_f32 v94, v94, v129
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s16
	v_ldexp_f32 v82, v82, v119
	v_dual_fmac_f32 v105, 0xbfb8aa3b, v17 :: v_dual_add_f32 v96, 1.0, v96
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v124, null, v81, v81, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v89, 0xbfb8aa3b, v62 :: v_dual_fmac_f32 v106, 0xbfb8aa3b, v53
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v91, v91
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v116, null, v77, v77, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s20
	v_dual_fmac_f32 v109, 0xbfb8aa3b, v49 :: v_dual_add_f32 v84, 1.0, v84
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v108, v108
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v75, 1.0, v75 :: v_dual_add_f32 v88, 1.0, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v93, v93
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v120, null, v79, v79, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v95, v95, v128
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v105, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v128, null, v86, v86, v4
	v_rcp_f32_e32 v174, v124
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s19
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v106, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v170, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s24
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s25
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s27
	v_exp_f32_e32 v89, v89
	v_ldexp_f32 v87, v87, v127
	v_ldexp_f32 v107, v107, v132
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v112, null, v75, v75, v74
	v_div_scale_f32 v132, null, v84, v84, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v140, null, v88, v88, v60
	v_rcp_f32_e32 v172, v120
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v176, v128
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s21
	v_ldexp_f32 v91, v91, v131
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s13
	v_exp_f32_e32 v109, v109
	v_ldexp_f32 v85, v85, v121
	v_ldexp_f32 v111, v111, v136
	v_ldexp_f32 v110, v110, v137
	v_ldexp_f32 v108, v108, v139
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v136, null, v90, v90, v67
	v_rcp_f32_e32 v168, v112
	v_rcp_f32_e32 v178, v132
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v93, v93, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v182, v140
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v105, v105, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v114, null, v76, v76, v73
	v_fma_f32 v202, -v124, v174, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v95, 1.0, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v83, v83, v123
	v_ldexp_f32 v106, v106, v133
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v198, -v116, v170, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s26
	v_ldexp_f32 v89, v89, v125
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v85, 1.0, v85 :: v_dual_add_f32 v108, 1.0, v108
	v_add_f32_e32 v110, 1.0, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v142, null, v87, v87, v59
	v_rcp_f32_e32 v180, v136
	v_div_scale_f32 v118, null, v78, v78, v21
	v_fma_f32 v200, -v120, v172, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, null, v82, v82, v3
	v_rcp_f32_e32 v169, v114
	v_fma_f32 v204, -v128, v176, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v105, 1.0, v105 :: v_dual_fmac_f32 v174, v202, v174
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v144, null, v95, v95, v58
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v83, 1.0, v83 :: v_dual_add_f32 v106, 1.0, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v170, v198, v170
	v_div_scale_f32 v150, null, v91, v91, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v109, v109, v138
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, null, v80, v80, v70
	v_div_scale_f32 v166, null, v108, v108, v43
	v_rcp_f32_e32 v183, v142
	v_fma_f32 v196, -v112, v168, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v206, -v132, v178, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v130, null, v85, v85, v5
	v_rcp_f32_e32 v171, v118
	v_fma_f32 v210, -v140, v182, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v111, 1.0, v111 :: v_dual_fmac_f32 v172, v200, v172
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v148, null, v93, v93, v56
	v_rcp_f32_e32 v175, v126
	v_rcp_f32_e32 v184, v144
	v_fmac_f32_e32 v176, v204, v176
	v_div_scale_f32 v156, null, v105, v105, v17
	v_div_scale_f32 v158, null, v96, v96, v19
	v_div_scale_f32 v154, null, v106, v106, v53
	v_rcp_f32_e32 v187, v150
	v_div_scale_f32 v134, null, v83, v83, v68
	v_rcp_f32_e32 v173, v122
	v_rcp_f32_e32 v195, v166
	v_fma_f32 v208, -v136, v180, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v109, 1.0, v109 :: v_dual_fmac_f32 v168, v196, v168
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v138, null, v89, v89, v62
	v_fmac_f32_e32 v178, v206, v178
	v_div_scale_f32 v152, null, v107, v107, v54
	v_rcp_f32_e32 v177, v130
	v_rcp_f32_e32 v186, v148
	v_fmac_f32_e32 v182, v210, v182
	v_div_scale_f32 v160, null, v111, v111, v52
	v_rcp_f32_e32 v190, v156
	v_fma_f32 v197, -v114, v169, 1.0
	v_rcp_f32_e32 v191, v158
	v_rcp_f32_e32 v189, v154
	v_div_scale_f32 v113, vcc_lo, v74, v75, v74
	v_rcp_f32_e32 v179, v134
	v_rcp_f32_e32 v181, v138
	v_rcp_f32_e32 v188, v152
	v_fma_f32 v211, -v142, v183, 1.0
	v_fmac_f32_e32 v180, v208, v180
	v_div_scale_f32 v164, null, v109, v109, v49
	v_rcp_f32_e32 v192, v160
	v_fma_f32 v199, -v118, v171, 1.0
	v_div_scale_f32 v115, s26, v73, v76, v73
	v_fma_f32 v203, -v126, v175, 1.0
	v_fma_f32 v212, -v144, v184, 1.0
	v_fmac_f32_e32 v169, v197, v169
	v_div_scale_f32 v146, null, v94, v94, v57
	v_div_scale_f32 v117, s27, v72, v77, v72
	v_div_scale_f32 v129, s20, v4, v86, v4
	v_fma_f32 v215, -v150, v187, 1.0
	v_rcp_f32_e32 v194, v164
	v_fma_f32 v201, -v122, v173, 1.0
	v_fma_f32 v223, -v166, v195, 1.0
	v_dual_fmac_f32 v183, v211, v183 :: v_dual_mul_f32 v196, v113, v168
	v_div_scale_f32 v119, s25, v21, v78, v21
	v_fma_f32 v205, -v130, v177, 1.0
	v_fma_f32 v214, -v148, v186, 1.0
	v_fmac_f32_e32 v171, v199, v171
	v_div_scale_f32 v127, s21, v3, v82, v3
	v_div_scale_f32 v141, s14, v60, v88, v60
	v_fma_f32 v218, -v156, v190, 1.0
	v_dual_fmac_f32 v175, v203, v175 :: v_dual_fmac_f32 v184, v212, v184
	v_dual_mul_f32 v197, v115, v169 :: v_dual_mul_f32 v204, v129, v176
	v_div_scale_f32 v121, s24, v71, v79, v71
	v_rcp_f32_e32 v185, v146
	v_fma_f32 v219, -v158, v191, 1.0
	v_fma_f32 v217, -v154, v189, 1.0
	v_dual_fmac_f32 v187, v215, v187 :: v_dual_mul_f32 v198, v117, v170
	v_div_scale_f32 v123, s23, v70, v80, v70
	v_div_scale_f32 v125, s22, v9, v81, v9
	v_div_scale_f32 v162, null, v110, v110, v51
	v_fma_f32 v207, -v134, v179, 1.0
	v_fma_f32 v209, -v138, v181, 1.0
	v_fma_f32 v216, -v152, v188, 1.0
	v_fmac_f32_e32 v173, v201, v173
	v_dual_fmac_f32 v195, v223, v195 :: v_dual_mul_f32 v202, v125, v174
	v_fma_f32 v223, -v112, v196, v113
	v_div_scale_f32 v131, s19, v5, v85, v5
	v_div_scale_f32 v133, s18, v69, v84, v69
	v_div_scale_f32 v145, s12, v58, v95, v58
	v_fma_f32 v220, -v160, v192, 1.0
	v_dual_fmac_f32 v177, v205, v177 :: v_dual_fmac_f32 v186, v214, v186
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v199, v119, v171 :: v_dual_mul_f32 v206, v133, v178
	v_dual_fmac_f32 v190, v218, v190 :: v_dual_mul_f32 v203, v127, v175
	v_mul_f32_e32 v210, v141, v182
	v_fma_f32 v224, -v114, v197, v115
	v_dual_fmac_f32 v191, v219, v191 :: v_dual_mul_f32 v200, v121, v172
	v_div_scale_f32 v155, s7, v53, v106, v53
	v_fma_f32 v225, -v116, v198, v117
	v_fma_f32 v231, -v128, v204, v129
	v_fmac_f32_e32 v189, v217, v189
	v_div_scale_f32 v135, s17, v68, v83, v68
	v_div_scale_f32 v137, s16, v67, v90, v67
	v_div_scale_f32 v149, s10, v56, v93, v56
	v_rcp_f32_e32 v193, v162
	v_fma_f32 v222, -v164, v194, 1.0
	v_fmac_f32_e32 v179, v207, v179
	v_dual_fmac_f32 v181, v209, v181 :: v_dual_fmac_f32 v196, v223, v168
	v_dual_fmac_f32 v188, v216, v188 :: v_dual_mul_f32 v201, v123, v173
	v_mul_f32_e32 v208, v137, v180
	v_dual_fmac_f32 v192, v220, v192 :: v_dual_mul_f32 v205, v131, v177
	v_mul_f32_e32 v212, v145, v184
	v_fma_f32 v226, -v118, v199, v119
	v_fma_f32 v223, -v140, v210, v141
	v_fmac_f32_e32 v197, v224, v169
	v_fma_f32 v213, -v146, v185, 1.0
	v_fma_f32 v227, -v120, v200, v121
	v_div_scale_f32 v139, s15, v62, v89, v62
	v_div_scale_f32 v153, s8, v54, v107, v54
	v_fmac_f32_e32 v198, v225, v170
	v_fmac_f32_e32 v204, v231, v176
	v_dual_mul_f32 v217, v155, v189 :: v_dual_fmac_f32 v194, v222, v194
	v_dual_mul_f32 v207, v135, v179 :: v_dual_mul_f32 v214, v149, v186
	v_fma_f32 v228, -v122, v201, v123
	v_fma_f32 v112, -v112, v196, v113
	v_fma_f32 v225, -v144, v212, v145
	v_fmac_f32_e32 v199, v226, v171
	v_div_scale_f32 v159, s4, v19, v96, v19
	v_fma_f32 v229, -v124, v202, v125
	v_fmac_f32_e32 v210, v223, v182
	v_fma_f32 v113, -v114, v197, v115
	v_div_scale_f32 v143, s13, v59, v87, v59
	v_div_scale_f32 v157, s5, v17, v105, v17
	v_dual_fmac_f32 v185, v213, v185 :: v_dual_fmac_f32 v200, v227, v172
	v_dual_mul_f32 v209, v139, v181 :: v_dual_mul_f32 v216, v153, v188
	v_fma_f32 v230, -v126, v203, v127
	v_fma_f32 v114, -v116, v198, v117
	v_fma_f32 v221, -v162, v193, 1.0
	v_fma_f32 v227, -v148, v214, v149
	v_fmac_f32_e32 v201, v228, v173
	v_div_fmas_f32 v112, v112, v168, v196
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v212, v225, v184
	v_fma_f32 v115, -v118, v199, v119
	v_div_scale_f32 v147, s11, v57, v94, v57
	v_div_scale_f32 v161, s6, v52, v111, v52
	v_dual_mul_f32 v219, v159, v191 :: v_dual_fmac_f32 v202, v229, v174
	v_div_fmas_f32 v113, v113, v169, v197
	s_mov_b32 vcc_lo, s27
	v_dual_mul_f32 v211, v143, v183 :: v_dual_mul_f32 v218, v157, v190
	v_fma_f32 v232, -v130, v205, v131
	v_fma_f32 v116, -v120, v200, v121
	v_fma_f32 v229, -v152, v216, v153
	v_fmac_f32_e32 v203, v230, v175
	v_div_fmas_f32 v114, v114, v170, v198
	s_mov_b32 vcc_lo, s25
	v_div_scale_f32 v163, s3, v51, v110, v51
	v_fma_f32 v233, -v132, v206, v133
	v_fma_f32 v235, -v136, v208, v137
	v_dual_fmac_f32 v193, v221, v193 :: v_dual_fmac_f32 v214, v227, v186
	v_fma_f32 v117, -v122, v201, v123
	v_div_fixup_f32 v74, v112, v75, v74
	v_div_fmas_f32 v75, v115, v171, v199
	s_mov_b32 vcc_lo, s24
	v_dual_mul_f32 v213, v147, v185 :: v_dual_mul_f32 v220, v161, v192
	v_fma_f32 v234, -v134, v207, v135
	v_fma_f32 v236, -v138, v209, v139
	v_fma_f32 v118, -v124, v202, v125
	v_fma_f32 v231, -v156, v218, v157
	v_fmac_f32_e32 v205, v232, v177
	v_div_fixup_f32 v73, v113, v76, v73
	v_div_fmas_f32 v76, v116, v172, v200
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v216, v229, v188
	v_fma_f32 v119, -v126, v203, v127
	v_fmac_f32_e32 v206, v233, v178
	v_fmac_f32_e32 v208, v235, v180
	v_mul_f32_e32 v221, v163, v193
	v_div_fixup_f32 v72, v114, v77, v72
	v_div_fmas_f32 v77, v117, v173, v201
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v120, -v128, v204, v129
	v_fma_f32 v233, -v160, v220, v161
	v_fmac_f32_e32 v207, v234, v179
	v_dual_fmac_f32 v209, v236, v181 :: v_dual_mul_f32 v26, v26, v74
	v_div_fixup_f32 v74, v75, v78, v21
	v_div_fmas_f32 v75, v118, v174, v202
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v151, s9, v55, v91, v55
	v_fmac_f32_e32 v218, v231, v190
	v_fma_f32 v121, -v130, v205, v131
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v50, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v50, v76, v79, v71
	v_div_fmas_f32 v71, v119, v175, v203
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v224, -v142, v211, v143
	v_fma_f32 v122, -v132, v206, v133
	v_div_fixup_f32 v70, v77, v80, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v72, v120, v176, v204
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v220, v233, v192
	v_fma_f32 v123, -v134, v207, v135
	v_div_fixup_f32 v73, v75, v81, v9
	v_div_scale_f32 v165, s1, v49, v109, v49
	v_mul_f32_e32 v215, v151, v187
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v48, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v121, v177, v205
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v226, -v146, v213, v147
	v_fma_f32 v124, -v136, v208, v137
	v_div_fixup_f32 v50, v71, v82, v3
	v_fmac_f32_e32 v211, v224, v183
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v47, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v122, v178, v206
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v125, -v138, v209, v139
	v_div_fixup_f32 v70, v72, v86, v4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v46, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v123, v179, v207
	s_mov_b32 vcc_lo, s16
	v_mul_f32_e32 v222, v165, v194
	v_fma_f32 v228, -v150, v215, v151
	v_fma_f32 v126, -v140, v210, v141
	v_div_fixup_f32 v48, v48, v85, v5
	v_dual_fmac_f32 v213, v226, v185 :: v_dual_mul_f32 v16, v16, v74
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v45, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v50, v124, v180, v208
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v127, -v142, v211, v143
	v_div_fixup_f32 v47, v47, v84, v69
	v_div_fmas_f32 v69, v125, v181, v209
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v230, -v154, v217, v155
	v_fma_f32 v128, -v144, v212, v145
	v_div_fixup_f32 v46, v46, v83, v68
	v_fma_f32 v235, -v164, v222, v165
	v_fmac_f32_e32 v215, v228, v187
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v42, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v126, v182, v210
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v129, -v146, v213, v147
	v_div_fixup_f32 v50, v50, v90, v67
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v41, v41, v47 :: v_dual_mul_f32 v10, v10, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v127, v183, v211
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v232, -v158, v219, v159
	v_fma_f32 v130, -v148, v214, v149
	v_dual_fmac_f32 v217, v230, v189 :: v_dual_mul_f32 v44, v44, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v39, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v128, v184, v212
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v131, -v150, v215, v151
	v_div_fixup_f32 v48, v48, v88, v60
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v40, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v129, v185, v213
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v234, -v162, v221, v163
	v_fma_f32 v132, -v152, v216, v153
	v_div_fixup_f32 v47, v47, v87, v59
	v_div_fixup_f32 v62, v69, v89, v62
	v_fmac_f32_e32 v219, v232, v191
	v_div_fmas_f32 v50, v130, v186, v214
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v133, -v154, v217, v155
	v_div_fixup_f32 v46, v46, v95, v58
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v37, v37, v48 :: v_dual_mul_f32 v12, v12, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v131, v187, v215
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v134, -v156, v218, v157
	v_div_fixup_f32 v40, v40, v94, v57
	v_dual_fmac_f32 v221, v234, v193 :: v_dual_mul_f32 v32, v32, v47
	v_div_fmas_f32 v47, v132, v188, v216
	s_mov_b32 vcc_lo, s7
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v38, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v135, -v158, v219, v159
	v_div_fixup_f32 v50, v50, v93, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v133, v189, v217
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v136, -v160, v220, v161
	v_div_fixup_f32 v48, v48, v91, v55
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v27, v27, v40 :: v_dual_mul_f32 v2, v2, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v134, v190, v218
	s_mov_b32 vcc_lo, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v50, v135, v191, v219
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v46, v46, v106, v53
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v25, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v136, v192, v220
	v_div_fixup_f32 v40, v40, v105, v17
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:16
	scratch_load_b32 v58, off, off offset:12
	scratch_load_b32 v60, off, off offset:8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v30, v46
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v30, v48, v111, v52
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v52, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v167, s0, v43, v108, v43
	v_div_fixup_f32 v47, v47, v107, v54
	v_div_fixup_f32 v50, v50, v96, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v33, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v222, v235, v194
	v_fma_f32 v137, -v162, v221, v163
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v14, v47 :: v_dual_mul_f32 v14, v20, v40
	v_mul_f32_e32 v20, v29, v50
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v101, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v167, v195
	v_fma_f32 v46, -v164, v222, v165
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v36, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v11, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v166, v29, v167
	v_div_fmas_f32 v40, v137, v193, v221
	s_mov_b32 vcc_lo, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v46, v194, v222
	v_fmac_f32_e32 v29, v47, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v104, v10, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v35, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v36, v36, v109, v49
	v_fma_f32 v10, -v166, v29, v167
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v40, v110, v51
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v18
	v_mul_f32_e32 v1, v1, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v195, v29
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v103, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v34, v102
	s_mov_b32 s4, 0x76543210
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v108, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v34, 0xbfb8aa3b, v29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v102, v11, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v24, v10
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v34
	v_mul_f32_e32 v11, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v24, v12
	v_cndmask_b32_e64 v33, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_dual_mul_f32 v12, 0xbfb8aa3b, v2 :: v_dual_mul_f32 v11, v23, v36
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v22, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v24, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v29 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v23, v34
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s1
	v_ldexp_f32 v24, v33, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v33, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v23, v23, v34
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v22, v22, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v24, v24, v29
	v_div_scale_f32 v34, null, v23, v23, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v43
	v_rcp_f32_e32 v49, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v48, v40
	v_div_scale_f32 v48, vcc_lo, v46, v22, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v47, 1.0
	v_mul_f32_e32 v53, v48, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, s0, v29, v24, v29
	v_mul_f32_e32 v56, v50, v47
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v55, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v36, v53, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v6, v60, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v98, v8, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v100, v6, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v1, v52, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v34, v49, 1.0
	v_div_scale_f32 v18, null, v33, v33, v2
	v_fmac_f32_e32 v53, v55, v40
	v_fma_f32 v55, -v43, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v49
	v_rcp_f32_e32 v51, v18
	v_div_scale_f32 v52, s1, v35, v23, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v58, v99
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v36, v53, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v55, v47 :: v_dual_mul_f32 v57, v52, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v97, v1, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v40, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v18, v51, 1.0
	v_fma_f32 v58, -v34, v57, v52
	v_fma_f32 v40, -v43, v56, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v99, v7, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v51, v54, v51
	v_div_scale_f32 v54, s3, v2, v33, v2
	v_fmac_f32_e32 v57, v58, v49
	v_div_fmas_f32 v40, v40, v47, v56
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v59, v54, v51 :: v_dual_and_b32 v58, 0xe0, v0
	v_fma_f32 v34, -v34, v57, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v18, v59, v54
	v_div_fmas_f32 v34, v34, v49, v57
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v48, v51
	v_fma_f32 v18, -v18, v59, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v18, v51, v59
	v_div_fixup_f32 v2, v18, v33, v2
	v_div_fixup_f32 v18, v34, v23, v35
	v_div_fixup_f32 v23, v40, v24, v29
	v_div_fixup_f32 v24, v36, v22, v46
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v13, v30
	v_mul_f32_e32 v7, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v8, v8, v18 :: v_dual_mul_f32 v13, v43, v23
	v_mul_f32_e32 v18, v6, v24
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v44|, |v45|
	v_max3_f32 v2, |v41|, |v39|, |v38|
	v_max3_f32 v23, |v31|, |v27|, |v28|
	v_max3_f32 v24, |v25|, |v21|, |v15|
	v_max3_f32 v6, |v37|, |v32|, |v26|
	v_max_f32_e64 v29, |v19|, |v17|
	v_max3_f32 v30, |v14|, |v22|, |v12|
	v_max3_f32 v33, |v18|, |v13|, |v8|
	v_max3_f32 v34, |v7|, |v3|, |v4|
	v_max3_f32 v1, v1, |v42|, v2
	v_max3_f32 v2, v23, v24, |v16|
	v_max3_f32 v23, |v11|, |v10|, |v9|
	v_max3_f32 v24, v29, |v20|, v30
	v_max3_f32 v29, v33, v34, |v5|
	v_lshrrev_b32_e32 v34, 1, v58
	v_max3_f32 v1, v1, v6, v2
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v6, 7, v0
	v_and_b32_e32 v30, 8, v0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v24, v23, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v23, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v29, 4, v6
	v_lshl_add_u32 v6, v6, 7, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v24, v2, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v33, v58, 2, v29
	v_xor_b32_e32 v29, v29, v34
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v1, v1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v23, v33, v34
	v_add3_u32 v6, v6, v29, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v24
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v29, 2, v58
	v_add3_u32 v23, 0, v30, v23
	v_lshlrev_b32_e32 v30, 3, v30
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v23, v2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v6, v6, v6
	v_max_f32_e32 v2, v2, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v23, v2
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
	v_max_f32_e32 v2, v2, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v23, v2
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v24, v23, v23 :: v_dual_max_f32 v1, v1, v1
	v_dual_max_f32 v24, v2, v24 :: v_dual_max_f32 v1, v1, v6
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, 0, v30, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v6, v1
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v1
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v23, v1, v6
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 15, v0
	ds_store_b64 v2, v[23:24]
	v_lshlrev_b32_e32 v1, 3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v6, 0, v1
	ds_load_b64 v[23:24], v6
.Ltmp46:
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v2, v23, v23
	v_max_f32_e32 v24, v24, v24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v24, 0x2b8cbccc, v24
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v6
	v_fma_f32 v29, -v6, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v29, v23
	v_div_scale_f32 v29, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v30, v29, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v6, v30, v29
	v_fmac_f32_e32 v30, v33, v23
	v_div_scale_f32 v33, null, 0x40e00000, 0x40e00000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v30, v29
	v_rcp_f32_e32 v29, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v6, v6, v23, v30
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v33, v29, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v23, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v2, v23, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v29, v6, v29
	v_div_scale_f32 v6, vcc_lo, v24, 0x40e00000, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 0xffff0000, v23
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v2, v6, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v34, null, v36, v36, v44
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v30, -v33, v2, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v35, null, v36, v36, v45
	v_div_scale_f32 v40, null, v36, v36, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v2, v30, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v30, v34
	v_div_scale_f32 v48, s0, v45, v36, v45
	v_rcp_f32_e32 v46, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v33, v2, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v33, v35
	v_div_scale_f32 v47, null, v36, v36, v41
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v2, v6, v29, v2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v6, -v34, v30, 1.0
	v_div_scale_f32 v29, vcc_lo, v44, v36, v44
	v_fma_f32 v52, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v24, v2, 0x40e00000, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v35, v33, 1.0
	v_rcp_f32_e32 v50, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, s1, v42, v36, v42
	v_fmac_f32_e32 v33, v2, v33
	v_fmac_f32_e32 v30, v6, v30
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v6, v24, 16, 1
	v_mov_b16_e32 v2.l, v23.h
	v_mov_b16_e32 v2.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v51, v48, v33
	v_mul_f32_e32 v43, v29, v30
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v24, v24, v6, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v53, -v47, v50, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v49, -v34, v43, v29
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v50, v53, v50 :: v_dual_and_b32 v23, 0xffff0000, v24
	v_div_scale_f32 v53, null, v36, v36, v39
	v_fmac_f32_e32 v43, v49, v30
	v_fma_f32 v49, -v35, v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v34, v43, v29
	v_mul_f32_e32 v34, v52, v46
	v_div_fmas_f32 v24, v24, v30, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v30, -v40, v34, v52
	v_fmac_f32_e32 v51, v49, v33
	v_div_scale_f32 v49, s2, v41, v36, v41
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v30, v46
	v_fma_f32 v29, -v35, v51, v48
	v_rcp_f32_e32 v35, v53
	v_mul_f32_e32 v43, v49, v50
	v_div_scale_f32 v48, null, v36, v36, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v33, v51
	v_fma_f32 v40, -v40, v34, v52
	v_fma_f32 v30, -v47, v43, v49
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v51, v48
	v_div_fixup_f32 v29, v29, v36, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v53, v35, 1.0
	v_div_scale_f32 v45, null, v36, v36, v37
	v_fmac_f32_e32 v43, v30, v50
	v_div_fixup_f32 v24, v24, v36, v44
	v_fmac_f32_e32 v35, v33, v35
	v_div_fmas_f32 v33, v40, v46, v34
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v34, -v47, v43, v49
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v44, s0, v39, v36, v39
	v_fma_f32 v30, -v48, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v34, v34, v50, v43
	v_div_scale_f32 v47, s1, v38, v36, v38
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v52, -v45, v46, 1.0
	v_div_scale_f32 v49, null, v36, v36, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v46, v52, v46
	v_mul_f32_e32 v40, v44, v35
	v_fmac_f32_e32 v51, v30, v51
	v_div_fixup_f32 v30, v33, v36, v42
	v_div_fixup_f32 v33, v34, v36, v41
	v_div_scale_f32 v41, s2, v37, v36, v37
	v_fma_f32 v43, -v53, v40, v44
	v_div_scale_f32 v42, null, v36, v36, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v41, v46
	v_mul_f32_e32 v50, v47, v51
	v_fmac_f32_e32 v40, v43, v35
	v_rcp_f32_e32 v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v48, v50, v47
	v_fma_f32 v44, -v53, v40, v44
	v_rcp_f32_e32 v53, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v50, v34, v51
	v_div_fmas_f32 v34, v44, v35, v40
	v_fma_f32 v40, -v45, v52, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v49, v54, 1.0
	v_fma_f32 v35, -v48, v50, v47
	v_div_scale_f32 v48, null, v36, v36, v31
	v_fma_f32 v47, -v42, v53, 1.0
	v_fmac_f32_e32 v52, v40, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v51, v50
	v_rcp_f32_e32 v40, v48
	v_div_fixup_f32 v34, v34, v36, v39
	v_fmac_f32_e32 v53, v47, v53
	v_div_scale_f32 v47, s0, v26, v36, v26
	v_div_fixup_f32 v35, v35, v36, v38
	v_fma_f32 v38, -v45, v52, v41
	v_div_scale_f32 v45, null, v36, v36, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v47, v53
	v_fma_f32 v41, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v38, v38, v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v39, v47
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v41, v45
	v_div_scale_f32 v52, null, v36, v36, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v46, v53
	v_div_fixup_f32 v37, v38, v36, v37
	v_fma_f32 v38, -v42, v39, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v45, v41, 1.0
	v_fmac_f32_e32 v41, v51, v41
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s3, v32, v36, v32
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v51, null, v36, v36, v25
	v_mul_f32_e32 v44, v43, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v49, v44, v43
	v_fmac_f32_e32 v44, v50, v54
	v_div_scale_f32 v50, null, v36, v36, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v49, v44, v43
	v_div_scale_f32 v49, s1, v31, v36, v31
	v_div_fmas_f32 v43, v43, v54, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v50
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v38, v38, v53, v39
	v_div_fixup_f32 v32, v43, v36, v32
	v_div_scale_f32 v43, s2, v27, v36, v27
	v_mul_f32_e32 v46, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v38, v36, v26
	v_rcp_f32_e32 v53, v52
	v_mul_f32_e32 v39, v43, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v50, v44, 1.0
	v_fma_f32 v42, -v48, v46, v49
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v47, v44
	v_fmac_f32_e32 v46, v42, v40
	v_rcp_f32_e32 v42, v51
	v_div_scale_f32 v47, s0, v28, v36, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v46, v49
	v_fma_f32 v48, -v45, v39, v43
	v_div_fmas_f32 v38, v38, v40, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v51, v42, 1.0
	v_mul_f32_e32 v49, v47, v44
	v_fmac_f32_e32 v39, v48, v41
	v_div_scale_f32 v46, s1, v25, v36, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v54, v42
	v_fma_f32 v40, -v50, v49, v47
	v_fma_f32 v48, -v52, v53, 1.0
	v_div_fixup_f32 v31, v38, v36, v31
	v_fma_f32 v38, -v45, v39, v43
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v49, v40, v44 :: v_dual_mul_f32 v40, v46, v42
	v_fmac_f32_e32 v53, v48, v53
	v_div_scale_f32 v43, s3, v21, v36, v21
	v_div_scale_f32 v45, null, v36, v36, v15
	v_div_fmas_f32 v38, v38, v41, v39
	v_fma_f32 v39, -v50, v49, v47
	v_fma_f32 v41, -v51, v40, v46
	v_div_scale_f32 v50, null, v36, v36, v16
	v_rcp_f32_e32 v47, v45
	v_mul_f32_e32 v48, v43, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v42
	v_rcp_f32_e32 v41, v50
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v38, v36, v27
	v_div_fmas_f32 v39, v39, v44, v49
	v_fma_f32 v44, -v52, v48, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v49, -v45, v47, 1.0
	v_div_fixup_f32 v28, v39, v36, v28
	v_fmac_f32_e32 v48, v44, v53
	v_fma_f32 v44, -v50, v41, 1.0
	v_div_scale_f32 v39, s0, v15, v36, v15
	v_fmac_f32_e32 v47, v49, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v44, v41
	v_fma_f32 v38, -v51, v40, v46
	v_div_scale_f32 v44, s1, v16, v36, v16
	v_div_scale_f32 v51, null, v23, v23, v17
	v_div_fmas_f32 v38, v38, v42, v40
	v_fma_f32 v40, -v52, v48, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v42, v39, v47 :: v_dual_mul_f32 v49, v44, v41
	v_div_scale_f32 v43, null, v23, v23, v19
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v38, v36, v25
	v_div_fmas_f32 v40, v40, v53, v48
	v_rcp_f32_e32 v46, v43
	v_fma_f32 v48, -v45, v42, v39
	v_fma_f32 v38, -v50, v49, v44
	v_div_scale_f32 v53, null, v23, v23, v14
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v42, v48, v47 :: v_dual_fmac_f32 v49, v38, v41
	v_rcp_f32_e32 v55, v53
	v_div_fixup_f32 v21, v40, v36, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v43, v46, 1.0
	v_fma_f32 v39, -v45, v42, v39
	v_div_scale_f32 v45, null, v23, v23, v20
	v_rcp_f32_e32 v40, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v48, v46
	v_div_fmas_f32 v39, v39, v47, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	v_fma_f32 v42, -v50, v49, v44
	v_div_scale_f32 v38, s2, v19, v23, v19
	v_div_fixup_f32 v15, v39, v36, v15
	v_fma_f32 v39, -v53, v55, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v51, v40, 1.0
	v_div_fmas_f32 v41, v42, v41, v49
	v_div_scale_f32 v47, s0, v17, v23, v17
	v_fma_f32 v50, -v45, v48, 1.0
	v_fmac_f32_e32 v55, v39, v55
	v_div_scale_f32 v39, s1, v14, v23, v14
	v_fmac_f32_e32 v40, v52, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s3, v20, v23, v20
	v_div_fixup_f32 v16, v41, v36, v16
	v_mul_f32_e32 v54, v47, v40
	v_div_scale_f32 v41, null, v23, v23, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v50, v48
	v_mul_f32_e32 v44, v38, v46
	v_fma_f32 v42, -v51, v54, v47
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v52, -v43, v44, v38
	v_fmac_f32_e32 v54, v42, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v52, v46
	v_fma_f32 v42, -v51, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v43, v44, v38
	v_fma_f32 v38, -v45, v49, v50
	v_mul_f32_e32 v43, v39, v55
	v_fmac_f32_e32 v49, v38, v48
	v_rcp_f32_e32 v38, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v53, v43, v39
	v_div_fmas_f32 v36, v36, v46, v44
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v44, null, v23, v23, v12
	v_fmac_f32_e32 v43, v47, v55
	v_div_fmas_f32 v40, v42, v40, v54
	v_fma_f32 v42, -v45, v49, v50
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v41, v38, 1.0
	v_div_fixup_f32 v19, v36, v23, v19
	v_fma_f32 v39, -v53, v43, v39
	v_div_fmas_f32 v42, v42, v48, v49
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s0, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v42, v23, v20
	v_div_scale_f32 v42, null, v23, v23, v11
	v_mul_f32_e32 v36, v45, v38
	v_div_fmas_f32 v39, v39, v55, v43
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v48, v42
	v_div_fixup_f32 v17, v40, v23, v17
	v_fma_f32 v47, -v41, v36, v45
	v_div_fixup_f32 v14, v39, v23, v14
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v36, v47, v38
	v_div_scale_f32 v47, null, v23, v23, v10
	v_fma_f32 v40, -v44, v46, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v41, v36, v45
	v_fma_f32 v45, -v42, v48, 1.0
	v_rcp_f32_e32 v49, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v39, v38, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v45, v48
	v_div_scale_f32 v45, null, v23, v23, v18
	v_div_scale_f32 v39, s0, v11, v23, v11
	v_div_fixup_f32 v22, v36, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v45
	v_fma_f32 v36, -v47, v49, 1.0
	v_div_scale_f32 v38, null, v23, v23, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v49, v36, v49
	v_div_scale_f32 v36, s1, v10, v23, v10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v45, v51, 1.0
	v_fmac_f32_e32 v46, v40, v46
	v_div_scale_f32 v40, s2, v12, v23, v12
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v52, s2, v9, v23, v9
	v_mul_f32_e32 v43, v40, v46
	v_div_scale_f32 v53, s3, v18, v23, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v44, v43, v40
	v_fmac_f32_e32 v43, v41, v46
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v44, v43, v40
	v_mul_f32_e32 v44, v39, v48
	v_div_fmas_f32 v40, v40, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v42, v44, v39
	v_mul_f32_e32 v46, v36, v49
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v50, -v38, v41, 1.0
	v_div_fixup_f32 v12, v40, v23, v12
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v23, v23, v13
	v_fma_f32 v39, -v42, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v43, v49
	v_mul_f32_e32 v55, v52, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v54, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v39, v48, v44
	v_fma_f32 v36, -v47, v46, v36
	v_div_scale_f32 v44, null, v23, v23, v8
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v11, v39, v23, v11
	v_div_fmas_f32 v36, v36, v49, v46
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v40, -v38, v55, v52
	v_fma_f32 v43, -v50, v54, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v48, null, v23, v23, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v55, v40, v41 :: v_dual_fmac_f32 v54, v43, v54
	v_div_scale_f32 v43, s0, v13, v23, v13
	v_fma_f32 v39, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v52
	v_div_fixup_f32 v10, v36, v23, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v39, v46
	v_mul_f32_e32 v42, v53, v51
	v_div_fmas_f32 v38, v38, v41, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v23, v23, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v45, v42, v53
	v_div_fixup_f32 v9, v38, v23, v9
	v_div_scale_f32 v38, null, v23, v23, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v40, v51
	v_mul_f32_e32 v40, v43, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v45, v42, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v50, v40, v43
	v_div_fmas_f32 v41, v41, v51, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v54
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v18, v41, v23, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v50, v40, v43
	v_rcp_f32_e32 v50, v48
	v_div_scale_f32 v41, null, v23, v23, v4
	v_rcp_f32_e32 v43, v39
	v_div_fmas_f32 v36, v36, v54, v40
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, vcc_lo, v8, v23, v8
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v36, v23, v13
	v_fma_f32 v54, -v48, v50, 1.0
	v_mul_f32_e32 v47, v42, v46
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v49, -v39, v43, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v36, -v38, v40, 1.0
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s3, v5, v23, v5
	v_fma_f32 v51, -v44, v47, v42
	v_fma_f32 v52, -v41, v45, 1.0
	v_fmac_f32_e32 v43, v49, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v54, v50 :: v_dual_fmac_f32 v40, v36, v40
	v_div_scale_f32 v36, s0, v7, v23, v7
	v_div_scale_f32 v49, s1, v3, v23, v3
	v_fmac_f32_e32 v47, v51, v46
	v_mul_f32_e32 v53, v36, v40
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s2, v4, v23, v4
	v_mul_f32_e32 v55, v49, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v38, v53, v36
	v_fma_f32 v42, -v44, v47, v42
	v_mul_f32_e32 v56, v52, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v39, v55, v49
	v_fmac_f32_e32 v53, v51, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v46, v47
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v51, -v41, v56, v52
	v_fma_f32 v36, -v38, v53, v36
	v_fma_f32 v38, -v48, v57, v54
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v55, v44, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v57, v38, v50
	v_div_fmas_f32 v36, v36, v40, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v51, v45
	v_fma_f32 v39, -v39, v55, v49
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v7, v36, v23, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v36, v15
	v_and_b32_e32 v15, 15, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v41, v56, v52
	v_div_fmas_f32 v39, v39, v43, v55
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v3, v39, v23, v3
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v39, v17
	v_and_b32_e32 v17, 15, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v50, v57
	v_div_fixup_f32 v8, v42, v23, v8
	v_div_fixup_f32 v4, v38, v23, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v40, v23, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v33
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v43, v12
	v_cvt_i32_f32_e32 v48, v13
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_and_b32_e32 v12, 15, v34
	v_and_b32_e32 v13, 15, v35
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b64 v[34:35], off, off     ; 8-byte Folded Reload
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v46, v9
	v_and_b32_e32 v9, 15, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v41, v14
	v_cvt_i32_f32_e32 v47, v18
	v_and_b32_e32 v14, 15, v32
	v_and_b32_e32 v18, 15, v28
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v28, 10, v0
	v_lshlrev_b32_e32 v32, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v37, v16
	v_cvt_i32_f32_e32 v45, v10
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v16, 15, v31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 0x1800, v28
	v_and_b32_e32 v31, 0x400, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v40, v20
	v_cvt_i32_f32_e32 v44, v11
	v_and_b32_e32 v11, 15, v33
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v36
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v33, 0x100, v238
	v_add3_u32 v36, 0, v30, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v38, v19
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v8
	v_cvt_i32_f32_e32 v50, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v19, 15, v25
	v_and_b32_e32 v24, 15, v39
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v26, 15, v41
	v_cvt_i32_f32_e32 v42, v22
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v31, 15, v48
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v38, 15, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s44, s0
	s_add_i32 s2, s2, s1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_xor_b32_e32 v34, v34, v29
	v_and_b32_e32 v29, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v36, v33, v34
	v_lshlrev_b32_e32 v35, 5, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v46
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v39, v[7:10]
	ds_store_b128 v39, v[15:18] offset:512
	v_and_or_b32 v35, 0x1b00, v32, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 15, v49
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 15, v3
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v40, v35, v237, 0
	ds_load_b128 v[7:10], v40
	ds_load_b128 v[15:18], v40 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[23:26]
	ds_store_b128 v39, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v40
	ds_load_b128 v[31:34], v40 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[11:14]
	ds_store_b128 v39, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v40
	ds_load_b128 v[19:22], v40 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v44
	v_and_b32_e32 v30, 15, v45
	v_and_b32_e32 v35, 15, v50
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[27:30]
	ds_store_b128 v39, v[35:38] offset:512
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v15, 4, v7
	v_lshl_or_b32 v3, v16, 4, v8
	v_lshl_or_b32 v5, v17, 4, v9
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v40
	ds_load_b128 v[35:38], v40 offset:1024
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v4.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v18, 4, v10
	v_lshl_or_b32 v15, v33, 4, v25
	v_lshl_or_b32 v16, v34, 4, v26
	v_lshl_or_b32 v9, v20, 4, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v12, s0, v92
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v13, v31, 4, v23
	v_lshl_or_b32 v14, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v8.l
	v_or_b16 v8.l, v3.h, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v12, s2, v1, v12
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v37, 4, v29
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v21, s0, 4, v12
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v5.h, v5.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 31, s44
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v2, v6, vcc_lo
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v20, v38, 4, v30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
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
	v_lshl_or_b32 v17, v35, 4, v27
	v_lshl_or_b32 v18, v36, 4, v28
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v58
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
.Ltmp47:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 84
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31532
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp24                         ; DW_AT_low_pc
	.long	.Ltmp46-.Ltmp24                 ; DW_AT_high_pc
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 84
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
