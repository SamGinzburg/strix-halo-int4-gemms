	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s22, s[0:1], 0x38
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v151, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v133, 15, v0
	v_lshrrev_b32_e32 v131, 4, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v35, 3, v0
	v_or_b32_e32 v155, 0x3f0, v0
	v_or_b32_e32 v156, 0x7f0, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v9, 4, v133
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_or_b32_e32 v153, 32, v131
	v_or_b32_e32 v154, 48, v131
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v152, 16, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v8, v9 :: v_dual_add_nc_u32 v159, 0, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v160, v159, v35
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s30, 31
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	scratch_store_b64 off, v[8:9], off      ; 8-byte Folded Spill
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[16:17], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
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
	s_lshl_b32 s9, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s9
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s11, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s4, s11
	s_abs_i32 s7, s6
	s_xor_b32 s5, s11, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s10, 0, s7
	s_ashr_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s10
	s_add_i32 s8, s8, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s4, s8
	s_mul_i32 s8, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s8
	s_add_i32 s8, s2, 1
	s_sub_i32 s10, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s2, s8, s2
	s_cselect_b32 s4, s10, s4
	s_add_i32 s8, s2, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s2, s8, s2
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s8, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s5
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s8, v151
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s7, s22, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s33, s6
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s23, s31, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s11, s11, s6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s20, s33, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s11, s11, s9
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s11, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s7, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[126:127], null, s23, v131, v[9:10]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s21, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s10, s23, s8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s21
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 3, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s8, v131
	v_or_b32_e32 v6, s8, v153
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[127:128], null, 0x60, s31, v[126:127]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s30, v151
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s8, v154
	v_or_b32_e32 v5, s8, v152
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s9, s20, s10
	v_lshl_add_u32 v158, s31, 6, v126
	v_lshl_add_u32 v157, s31, 5, v126
	v_add_nc_u32_e32 v3, s9, v126
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s22, v4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v128, v2, v1, s34
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s22, v6
	v_cmp_gt_i32_e64 s6, s22, v7
	v_cmp_gt_i32_e64 s4, s22, v5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s9, v158
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[1:2], null, s30, s8, v[128:129]
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s10, s9, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s9, v127
	v_add_nc_u32_e32 v4, s9, v157
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v11, s31, v3
	v_add_nc_u32_e32 v2, s10, v157
	v_add_nc_u32_e32 v7, s10, v158
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s21
	s_and_b32 s5, s5, s21
	s_and_b32 s6, s6, s21
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s10, v127
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s2
	v_cndmask_b32_e64 v10, 0x80000000, v5, s5
	v_cndmask_b32_e64 v14, 0x80000000, v6, s6
	v_cndmask_b32_e64 v9, 0x80000000, v4, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v15, 0x80000000, v1, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v17, 0x80000000, v11, s2
	v_cndmask_b32_e64 v21, 0x80000000, v2, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v25, 0x80000000, v7, s5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v29, 0x80000000, v13, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[1:4], v8, s[16:19], 0 offen
	buffer_load_b128 v[5:8], v9, s[16:19], 0 offen
	buffer_load_b128 v[9:12], v10, s[16:19], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[33:34], v15, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x4
	buffer_load_b128 v[13:16], v14, s[16:19], 0 offen
	buffer_load_b128 v[17:20], v17, s[16:19], 0 offen
	buffer_load_b128 v[21:24], v21, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v25, s[16:19], 0 offen
	buffer_load_b128 v[29:32], v29, s[16:19], 0 offen
	s_mov_b32 s2, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v160, v[5:8] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v160, v[9:12] offset:8192
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v159, v[33:34] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v160, v[1:4]
	s_waitcnt vmcnt(4)
	ds_store_b128 v160, v[13:16] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v160, v[17:20] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v160, v[21:24] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v160, v[25:28] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v160, v[29:32] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v1, 0x7f0, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow518
	s_load_b256 s[36:43], s[0:1], 0x10
	v_add_nc_u32_e32 v150, 0, v133
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s7, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_and_or_b32 v1, 0x70, v1, v133
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v162, 0, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v134, 0
	v_add_nc_u32_e32 v161, 0, v155
	v_dual_mov_b32 v2, s5 :: v_dual_add_nc_u32 v163, 0, v156
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v103, 0
	s_add_i32 s5, s0, -2
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s0, s6, s3
	s_lshl_b32 s7, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v11, s7, v151
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s7, s30, v[128:129]
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[129:130], v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v150 offset:33184
	ds_load_u8 v10, v150 offset:33152
	ds_load_u8 v11, v150 offset:33248
	ds_load_u8 v12, v150 offset:33216
	ds_load_u8 v13, v150 offset:33056
	ds_load_u8 v14, v150 offset:33024
	ds_load_u8 v15, v150 offset:33120
	ds_load_u8 v16, v150 offset:33088
	ds_load_u8 v17, v150 offset:32928
	ds_load_u8 v18, v150 offset:32896
	ds_load_u8 v19, v150 offset:32992
	ds_load_u8 v20, v150 offset:32960
	ds_load_u8 v21, v150 offset:32864
	ds_load_u8 v22, v150 offset:32832
	ds_load_u8 v23, v150 offset:32768
	ds_load_u8 v24, v150 offset:32800
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v162 offset:3328
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v162 offset:3072
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v108, v11, 16, v9
	ds_load_u8 v9, v162 offset:3840
	ds_load_u8 v11, v162 offset:3584
	ds_load_u8 v16, v162 offset:2048
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v107, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v14, v162 offset:2304
	ds_load_u8 v18, v162 offset:1280
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v19, v23, v24, 0xc0c0004
	v_lshl_or_b32 v106, v15, 16, v13
	ds_load_u8 v13, v162 offset:2816
	ds_load_u8 v15, v162 offset:2560
	v_lshl_or_b32 v105, v17, 16, v19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v162 offset:1792
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v162 offset:1536
	ds_load_u8 v20, v162 offset:1024
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v162 offset:256
	v_lshl_or_b32 v28, v9, 16, v10
	ds_load_u8 v9, v162 offset:768
	ds_load_u8 v10, v162 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v162
	v_lshl_or_b32 v27, v13, 16, v14
	ds_load_u8 v14, v150 offset:33696
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v20, v18, 0xc0c0004
	ds_load_u8 v12, v150 offset:33664
	v_lshl_or_b32 v26, v11, 16, v13
	ds_load_u8 v11, v150 offset:33760
	ds_load_u8 v13, v150 offset:33728
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	ds_load_u8 v16, v150 offset:33568
	v_lshl_or_b32 v25, v9, 16, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v150 offset:33600
	v_perm_b32 v12, v12, v14, 0xc0c0004
	ds_load_u8 v14, v150 offset:33632
	ds_load_u8 v10, v150 offset:33536
	v_lshl_or_b32 v112, v11, 16, v12
	ds_load_u8 v12, v150 offset:33312
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v16, 0xc0c0004
	ds_load_u8 v16, v150 offset:33440
	v_perm_b32 v13, v13, v14, 0xc0c0004
	ds_load_u8 v14, v150 offset:33408
	v_lshl_or_b32 v111, v13, 16, v10
	ds_load_u8 v9, v150 offset:33504
	ds_load_u8 v10, v150 offset:33472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v14, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v150 offset:33280
	v_lshl_or_b32 v110, v9, 16, v11
	ds_load_u8 v9, v150 offset:33376
	ds_load_u8 v11, v150 offset:33344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v162 offset:7424
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v162 offset:7168
	v_lshl_or_b32 v109, v9, 16, v10
	ds_load_u8 v9, v162 offset:7936
	ds_load_u8 v10, v162 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v162 offset:6400
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v162 offset:6144
	v_lshl_or_b32 v32, v9, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v162 offset:6912
	ds_load_u8 v13, v162 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v10
	ds_load_u8 v9, v162 offset:5376
	ds_load_u8 v10, v162 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v162 offset:5888
	ds_load_u8 v11, v162 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v162 offset:4352
	ds_load_u8 v10, v162 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v162 offset:4864
	ds_load_u8 v11, v162 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v150 offset:33200
	ds_load_u8 v10, v150 offset:33168
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[109:112], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v150 offset:33264
	ds_load_u8 v11, v150 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v150 offset:33072
	ds_load_u8 v12, v150 offset:33040
	v_lshl_or_b32 v116, v10, 16, v9
	ds_load_u8 v9, v150 offset:32944
	ds_load_u8 v10, v150 offset:32912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v150 offset:33136
	ds_load_u8 v13, v150 offset:33104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v12, 16, v11
	ds_load_u8 v10, v150 offset:33008
	ds_load_u8 v11, v150 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v114, v10, 16, v9
	ds_load_u8 v9, v150 offset:32880
	ds_load_u8 v10, v150 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v150 offset:32784
	ds_load_u8 v11, v150 offset:32816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v9, 16, v10
	ds_load_u8 v9, v150 offset:33584
	ds_load_u8 v10, v150 offset:33552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v150 offset:33648
	ds_load_u8 v11, v150 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v150 offset:33456
	ds_load_u8 v12, v150 offset:33424
	v_lshl_or_b32 v119, v10, 16, v9
	ds_load_u8 v9, v150 offset:33328
	ds_load_u8 v10, v150 offset:33296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v150 offset:33520
	ds_load_u8 v13, v150 offset:33488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v12, 16, v11
	ds_load_u8 v10, v150 offset:33392
	ds_load_u8 v11, v150 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v117, v10, 16, v9
	ds_load_u8 v9, v150 offset:33712
	ds_load_u8 v10, v150 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v161 offset:32768
	ds_load_u8 v11, v150 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v162 offset:3456
	ds_load_u8 v26, v162 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[117:120], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v162 offset:3968
	ds_load_u8 v27, v162 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v162 offset:2432
	ds_load_u8 v28, v162 offset:2176
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v162 offset:1408
	ds_load_u8 v26, v162 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v162 offset:2944
	ds_load_u8 v29, v162 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v162 offset:1920
	ds_load_u8 v27, v162 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v162 offset:384
	ds_load_u8 v26, v162 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v162 offset:896
	ds_load_u8 v27, v162 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v162 offset:7552
	ds_load_u8 v26, v162 offset:7296
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v162 offset:8064
	ds_load_u8 v27, v162 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v162 offset:6528
	ds_load_u8 v28, v162 offset:6272
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v162 offset:5504
	ds_load_u8 v26, v162 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v162 offset:7040
	ds_load_u8 v29, v162 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v162 offset:6016
	ds_load_u8 v27, v162 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v162 offset:4480
	ds_load_u8 v26, v162 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v162 offset:4992
	ds_load_u8 v27, v162 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[105:108], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v41, v162 offset:19712
	ds_load_u8 v42, v162 offset:19456
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[117:120], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[109:112], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:20224
	ds_load_u8 v43, v162 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v162 offset:18688
	ds_load_u8 v44, v162 offset:18432
	v_lshl_or_b32 v124, v42, 16, v41
	ds_load_u8 v41, v162 offset:17664
	ds_load_u8 v42, v162 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v162 offset:19200
	ds_load_u8 v45, v162 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v44, 16, v43
	ds_load_u8 v42, v162 offset:18176
	ds_load_u8 v43, v162 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v122, v42, 16, v41
	ds_load_u8 v41, v162 offset:16640
	ds_load_u8 v42, v162 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:17152
	ds_load_u8 v43, v162 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v42, 16, v41
	ds_load_u8 v41, v162 offset:23808
	ds_load_u8 v42, v162 offset:23552
	v_wmma_i32_16x16x16_iu8 v[49:56], v[121:124], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:24320
	ds_load_u8 v43, v162 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v162 offset:22784
	ds_load_u8 v44, v162 offset:22528
	v_lshl_or_b32 v167, v42, 16, v41
	ds_load_u8 v41, v162 offset:21760
	ds_load_u8 v42, v162 offset:21504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v162 offset:23296
	ds_load_u8 v45, v162 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v44, 16, v43
	ds_load_u8 v42, v162 offset:22272
	ds_load_u8 v43, v162 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v165, v42, 16, v41
	ds_load_u8 v41, v162 offset:20736
	ds_load_u8 v42, v162 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:21248
	ds_load_u8 v43, v162 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v42, 16, v41
	ds_load_u8 v41, v162 offset:19840
	ds_load_u8 v42, v162 offset:19584
	v_wmma_i32_16x16x16_iu8 v[49:56], v[164:167], v[109:112], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:20352
	ds_load_u8 v43, v162 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v162 offset:18816
	ds_load_u8 v44, v162 offset:18560
	v_lshl_or_b32 v175, v42, 16, v41
	ds_load_u8 v41, v162 offset:17792
	ds_load_u8 v42, v162 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v162 offset:19328
	ds_load_u8 v45, v162 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v44, 16, v43
	ds_load_u8 v42, v162 offset:18304
	ds_load_u8 v43, v162 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v173, v42, 16, v41
	ds_load_u8 v41, v162 offset:16768
	ds_load_u8 v42, v162 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:17280
	ds_load_u8 v43, v162 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v42, 16, v41
	ds_load_u8 v41, v162 offset:23936
	ds_load_u8 v42, v162 offset:23680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:24448
	ds_load_u8 v43, v162 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v162 offset:22912
	ds_load_u8 v44, v162 offset:22656
	v_lshl_or_b32 v179, v42, 16, v41
	ds_load_u8 v41, v162 offset:21888
	ds_load_u8 v42, v162 offset:21632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v162 offset:23424
	ds_load_u8 v45, v162 offset:23168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v44, 16, v43
	ds_load_u8 v42, v162 offset:22400
	ds_load_u8 v43, v162 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v177, v42, 16, v41
	ds_load_u8 v41, v162 offset:20864
	ds_load_u8 v42, v162 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v162 offset:21376
	ds_load_u8 v43, v162 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v176, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[172:175], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[176:179], v[109:112], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[121:124], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[164:167], v[117:120], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[113:116], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v113, v150 offset:34208
	ds_load_u8 v114, v150 offset:34176
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[164:171], v[176:179], v[117:120], v[164:171] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v150 offset:34272
	ds_load_u8 v115, v150 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v150 offset:34080
	ds_load_u8 v116, v150 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v150 offset:34144
	ds_load_u8 v117, v150 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v150 offset:33952
	ds_load_u8 v114, v150 offset:33920
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v150 offset:34016
	ds_load_u8 v117, v150 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v150 offset:33824
	ds_load_u8 v117, v150 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v150 offset:33888
	ds_load_u8 v118, v150 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	ds_load_u8 v117, v162 offset:11520
	ds_load_u8 v118, v162 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:12032
	ds_load_u8 v119, v162 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v162 offset:10496
	ds_load_u8 v120, v162 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v162 offset:11008
	ds_load_u8 v121, v162 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v162 offset:9472
	ds_load_u8 v118, v162 offset:9216
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:9984
	ds_load_u8 v121, v162 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v162 offset:8448
	ds_load_u8 v121, v162 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v162 offset:8960
	ds_load_u8 v122, v162 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v150 offset:34224
	ds_load_u8 v122, v150 offset:34192
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v150 offset:34288
	ds_load_u8 v123, v150 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v150 offset:34096
	ds_load_u8 v124, v150 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v150 offset:34160
	ds_load_u8 v132, v150 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v124, 0xc0c0004
	v_lshl_or_b32 v124, v122, 16, v121
	ds_load_u8 v121, v150 offset:33968
	ds_load_u8 v122, v150 offset:33936
	v_lshl_or_b32 v123, v132, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v150 offset:34032
	ds_load_u8 v132, v150 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v132, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v122, 16, v121
	ds_load_u8 v121, v150 offset:33840
	ds_load_u8 v132, v150 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v132, v121, 0xc0c0004
	ds_load_u8 v132, v150 offset:33904
	ds_load_u8 v172, v150 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v132, 16, v121
	v_wmma_i32_16x16x16_iu8 v[9:16], v[117:120], v[121:124], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v162 offset:11648
	ds_load_u8 v118, v162 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:12160
	ds_load_u8 v119, v162 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v162 offset:10624
	ds_load_u8 v120, v162 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v162 offset:11136
	ds_load_u8 v132, v162 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v162 offset:9600
	ds_load_u8 v118, v162 offset:9344
	v_lshl_or_b32 v119, v132, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:10112
	ds_load_u8 v132, v162 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v132, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v162 offset:8576
	ds_load_u8 v132, v162 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v132, v117, 0xc0c0004
	ds_load_u8 v132, v162 offset:9088
	ds_load_u8 v172, v162 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v117
	v_wmma_i32_16x16x16_iu8 v[25:32], v[117:120], v[113:116], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[121:124], v[33:40] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v117, v162 offset:27904
	ds_load_u8 v118, v162 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:28416
	ds_load_u8 v119, v162 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v162 offset:26880
	ds_load_u8 v120, v162 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v162 offset:27392
	ds_load_u8 v132, v162 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v162 offset:25856
	ds_load_u8 v118, v162 offset:25600
	v_lshl_or_b32 v119, v132, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:26368
	ds_load_u8 v132, v162 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v132, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v162 offset:24832
	ds_load_u8 v132, v162 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v132, v117, 0xc0c0004
	ds_load_u8 v132, v162 offset:25344
	ds_load_u8 v172, v162 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v117
	ds_load_u8 v132, v162 offset:28032
	ds_load_u8 v172, v162 offset:27776
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[117:120], v[121:124], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	ds_load_u8 v172, v162 offset:28544
	ds_load_u8 v173, v162 offset:28288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v162 offset:27008
	ds_load_u8 v174, v162 offset:26752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v162 offset:27520
	ds_load_u8 v175, v162 offset:27264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_lshl_or_b32 v175, v172, 16, v132
	ds_load_u8 v132, v162 offset:25984
	ds_load_u8 v172, v162 offset:25728
	v_lshl_or_b32 v174, v174, 16, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	ds_load_u8 v172, v162 offset:26496
	ds_load_u8 v173, v162 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v172, 16, v132
	ds_load_u8 v132, v162 offset:24960
	ds_load_u8 v172, v162 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	ds_load_u8 v172, v162 offset:25472
	ds_load_u8 v176, v162 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v172, 16, v132
	v_wmma_i32_16x16x16_iu8 v[41:48], v[172:175], v[113:116], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v113, v150 offset:34720
	ds_load_u8 v114, v150 offset:34688
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[121:124], v[164:171] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v150 offset:34784
	ds_load_u8 v115, v150 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v150 offset:34592
	ds_load_u8 v116, v150 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v150 offset:34656
	ds_load_u8 v117, v150 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v150 offset:34464
	ds_load_u8 v114, v150 offset:34432
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v150 offset:34528
	ds_load_u8 v117, v150 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v150 offset:34336
	ds_load_u8 v117, v150 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v150 offset:34400
	ds_load_u8 v118, v150 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	ds_load_u8 v117, v162 offset:15616
	ds_load_u8 v118, v162 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:16128
	ds_load_u8 v119, v162 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v162 offset:14592
	ds_load_u8 v120, v162 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v162 offset:15104
	ds_load_u8 v121, v162 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v162 offset:13568
	ds_load_u8 v118, v162 offset:13312
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:14080
	ds_load_u8 v121, v162 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v162 offset:12544
	ds_load_u8 v121, v162 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v162 offset:13056
	ds_load_u8 v122, v162 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v150 offset:34608
	ds_load_u8 v122, v150 offset:34576
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v150 offset:34672
	ds_load_u8 v123, v150 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v150 offset:34480
	ds_load_u8 v124, v150 offset:34448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v150 offset:34544
	ds_load_u8 v132, v150 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v121
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v122, v132, 16, v124
	ds_load_u8 v121, v150 offset:34352
	ds_load_u8 v124, v150 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v124, v121, 0xc0c0004
	ds_load_u8 v124, v150 offset:34416
	ds_load_u8 v132, v150 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v132, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v124, 16, v121
	ds_load_u8 v124, v150 offset:34736
	ds_load_u8 v132, v150 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v132, v124, 0xc0c0004
	ds_load_u8 v132, v163 offset:32768
	ds_load_u8 v172, v150 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v124, v132, 16, v124
	v_wmma_i32_16x16x16_iu8 v[9:16], v[117:120], v[121:124], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v162 offset:15744
	ds_load_u8 v118, v162 offset:15488
	v_cvt_f32_i32_e32 v179, v13
	v_cvt_f32_i32_e32 v177, v11
	v_cvt_f32_i32_e32 v178, v12
	v_cvt_f32_i32_e32 v180, v14
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v182, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v81, v179 :: v_dual_add_f32 v100, v100, v178
	v_add_f32_e32 v99, v99, v177
	v_add_f32_e32 v83, v83, v181
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:16256
	ds_load_u8 v119, v162 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v162 offset:14720
	ds_load_u8 v120, v162 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v162 offset:15232
	ds_load_u8 v132, v162 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v162 offset:13696
	ds_load_u8 v118, v162 offset:13440
	v_lshl_or_b32 v119, v132, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:14208
	ds_load_u8 v132, v162 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v132, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v162 offset:12672
	ds_load_u8 v132, v162 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v132, v117, 0xc0c0004
	ds_load_u8 v132, v162 offset:13184
	ds_load_u8 v172, v162 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v117
	v_wmma_i32_16x16x16_iu8 v[25:32], v[117:120], v[113:116], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[121:124], v[33:40] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v117, v162 offset:32000
	ds_load_u8 v118, v162 offset:31744
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v183, v33
	v_cvt_f32_i32_e32 v190, v37
	v_cvt_f32_i32_e32 v184, v38
	v_cvt_f32_i32_e32 v185, v39
	v_cvt_f32_i32_e32 v186, v40
	v_cvt_f32_i32_e32 v187, v34
	v_cvt_f32_i32_e32 v188, v35
	v_cvt_f32_i32_e32 v189, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v84, v182
	v_dual_add_f32 v82, v82, v180 :: v_dual_add_f32 v149, v149, v186
	v_dual_add_f32 v146, v146, v183 :: v_dual_add_f32 v147, v147, v184
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v103, v103, v189
	v_add_f32_e32 v101, v101, v187
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:32512
	ds_load_u8 v119, v162 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v162 offset:30976
	ds_load_u8 v120, v162 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v162 offset:31488
	ds_load_u8 v132, v162 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v162 offset:29952
	ds_load_u8 v118, v162 offset:29696
	v_lshl_or_b32 v119, v132, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v162 offset:30464
	ds_load_u8 v132, v162 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v132, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v162 offset:28928
	ds_load_u8 v132, v162 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v132, v117, 0xc0c0004
	ds_load_u8 v132, v162 offset:29440
	ds_load_u8 v172, v162 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v117
	ds_load_u8 v132, v162 offset:32128
	ds_load_u8 v172, v162 offset:31872
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[117:120], v[121:124], v[105:112] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v21
	v_cvt_f32_i32_e32 v119, v23
	v_cvt_f32_i32_e32 v120, v24
	v_cvt_f32_i32_e32 v118, v22
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v88, v88, v120
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v85, v85, v117
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	ds_load_u8 v172, v162 offset:32640
	ds_load_u8 v173, v162 offset:32384
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v87, v87, v119
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v104, v104, v190 :: v_dual_add_f32 v67, v67, v51
	v_dual_add_f32 v102, v102, v188 :: v_dual_add_f32 v65, v65, v49
	v_dual_add_f32 v148, v148, v185 :: v_dual_add_f32 v63, v63, v55
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v68, v68, v52 :: v_dual_add_f32 v61, v61, v53
	v_dual_add_f32 v76, v76, v108 :: v_dual_add_f32 v59, v59, v111
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v162 offset:31104
	ds_load_u8 v174, v162 offset:30848
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v75, v75, v107
	v_add_f32_e32 v73, v73, v105
	v_add_f32_e32 v57, v57, v109
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v162 offset:31616
	ds_load_u8 v175, v162 offset:31360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_lshl_or_b32 v175, v172, 16, v132
	ds_load_u8 v132, v162 offset:30080
	ds_load_u8 v172, v162 offset:29824
	v_lshl_or_b32 v174, v174, 16, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	ds_load_u8 v172, v162 offset:30592
	ds_load_u8 v173, v162 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v172, 16, v132
	ds_load_u8 v132, v162 offset:29056
	ds_load_u8 v172, v162 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v172, v132, 0xc0c0004
	ds_load_u8 v172, v162 offset:29568
	ds_load_u8 v176, v162 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v172, v172, 16, v132
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v132, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v98, v98, v176
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[172:175], v[113:116], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[121:124], v[164:171] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v175, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v115, v19
	v_cvt_f32_i32_e32 v113, v17
	v_cvt_f32_i32_e32 v121, v25
	v_cvt_f32_i32_e32 v173, v28
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v152
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v91, v91, v115
	v_add_f32_e32 v89, v89, v113
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v174, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v93, v93, v132
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s22, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v153
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v95, v95, v173
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v18
	v_cvt_f32_i32_e32 v116, v20
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s22, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v154
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s7, s23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v143, v143, v122
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s7, v157
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s22, v9
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s8, s7, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s7, v126
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v10, s0
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s7, v158
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v172, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_f32 v90, v90, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v142, v142, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v10, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s7, v127
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v10, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s8, v126
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v25, 0x80000000, v10, vcc_lo
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s8, v157
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v29, 0x80000000, v10, s0
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s8, v158
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v33, 0x80000000, v10, s1
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s8, v127
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_add_f32_e32 v92, v92, v116
	v_dual_add_f32 v86, v86, v118 :: v_dual_add_f32 v145, v145, v124
	v_add_f32_e32 v96, v96, v174
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v37, 0x80000000, v10, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x7
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	buffer_load_b128 v[17:20], v17, s[16:19], 0 offen
	buffer_load_b128 v[21:24], v21, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v25, s[16:19], 0 offen
	buffer_load_b128 v[29:32], v29, s[16:19], 0 offen
	buffer_load_b128 v[33:36], v33, s[16:19], 0 offen
	buffer_load_b128 v[37:40], v37, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v94, v94, v172 :: v_dual_add_f32 v97, v97, v175
	v_add_f32_e32 v144, v144, v123
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v66, v66, v50 :: v_dual_add_f32 v71, v71, v44
	v_dual_add_f32 v64, v64, v56 :: v_dual_add_f32 v69, v69, v42
	v_dual_add_f32 v62, v62, v54 :: v_dual_add_f32 v139, v139, v48
	v_dual_add_f32 v134, v134, v41 :: v_dual_add_f32 v141, v141, v46
	v_add_f32_e32 v72, v72, v45
	v_add_f32_e32 v70, v70, v43
	v_add_f32_e32 v140, v140, v47
	v_dual_add_f32 v74, v74, v106 :: v_dual_add_f32 v79, v79, v167
	v_dual_add_f32 v60, v60, v112 :: v_dual_add_f32 v77, v77, v165
	v_dual_add_f32 v58, v58, v110 :: v_dual_add_f32 v137, v137, v169
	v_dual_add_f32 v138, v138, v164 :: v_dual_add_f32 v135, v135, v171
	v_add_f32_e32 v80, v80, v168
	v_add_f32_e32 v78, v78, v166
	v_add_f32_e32 v136, v136, v170
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s5
	s_mov_b32 s4, s6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v160, v[9:12]
	s_waitcnt vmcnt(6)
	ds_store_b128 v160, v[13:16] offset:4096
	s_waitcnt vmcnt(5)
	ds_store_b128 v160, v[17:20] offset:8192
	s_waitcnt vmcnt(4)
	ds_store_b128 v160, v[21:24] offset:12288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v159, v[129:130] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v160, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v160, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v160, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v160, v[37:40] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v155 :: v_dual_mov_b32 v1, v156
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v57, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v135, v57
	v_mov_b32_e32 v136, v57
	v_mov_b32_e32 v84, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v64, v60 :: v_dual_mov_b32 v63, v59
	v_dual_mov_b32 v88, v60 :: v_dual_mov_b32 v87, v59
	v_dual_mov_b32 v68, v60 :: v_dual_mov_b32 v67, v59
	v_dual_mov_b32 v92, v60 :: v_dual_mov_b32 v91, v59
	v_dual_mov_b32 v72, v60 :: v_dual_mov_b32 v71, v59
	v_dual_mov_b32 v96, v60 :: v_dual_mov_b32 v95, v59
	v_dual_mov_b32 v76, v60 :: v_dual_mov_b32 v75, v59
	v_dual_mov_b32 v100, v60 :: v_dual_mov_b32 v99, v59
	v_dual_mov_b32 v80, v60 :: v_dual_mov_b32 v79, v59
	v_dual_mov_b32 v104, v60 :: v_dual_mov_b32 v103, v59
	v_dual_mov_b32 v83, v59 :: v_dual_mov_b32 v82, v58
	v_dual_mov_b32 v81, v57 :: v_dual_mov_b32 v62, v58
	v_dual_mov_b32 v61, v57 :: v_dual_mov_b32 v86, v58
	v_dual_mov_b32 v85, v57 :: v_dual_mov_b32 v66, v58
	v_dual_mov_b32 v65, v57 :: v_dual_mov_b32 v90, v58
	v_dual_mov_b32 v89, v57 :: v_dual_mov_b32 v70, v58
	v_dual_mov_b32 v69, v57 :: v_dual_mov_b32 v94, v58
	v_dual_mov_b32 v93, v57 :: v_dual_mov_b32 v74, v58
	v_dual_mov_b32 v73, v57 :: v_dual_mov_b32 v98, v58
	v_dual_mov_b32 v97, v57 :: v_dual_mov_b32 v78, v58
	v_dual_mov_b32 v77, v57 :: v_dual_mov_b32 v102, v58
	v_mov_b32_e32 v101, v57
	v_mov_b32_e32 v137, v57
	v_mov_b32_e32 v138, v57
	v_mov_b32_e32 v139, v57
	v_mov_b32_e32 v140, v57
	v_mov_b32_e32 v141, v57
	v_mov_b32_e32 v134, v57
	v_mov_b32_e32 v149, v57
	v_mov_b32_e32 v148, v57
	v_mov_b32_e32 v147, v57
	v_mov_b32_e32 v146, v57
	v_mov_b32_e32 v145, v57
	v_mov_b32_e32 v144, v57
	v_mov_b32_e32 v143, v57
	v_mov_b32_e32 v142, v57
.LBB0_8:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v150 offset:32864
	ds_load_u8_d16 v34, v150 offset:32896
	ds_load_u8_d16 v226, v150 offset:32928
	ds_load_u8_d16 v227, v150 offset:32960
	ds_load_u8_d16 v132, v150 offset:32976
	ds_load_u8_d16 v56, v150 offset:32944
	ds_load_u8_d16 v105, v150 offset:32912
	ds_load_u8_d16 v252, v150 offset:32880
	ds_load_u8_d16 v231, v150 offset:32992
	ds_load_u8_d16 v36, v150 offset:33024
	ds_load_u8_d16 v232, v150 offset:33056
	ds_load_u8_d16 v35, v150 offset:33088
	ds_load_u8_d16 v112, v150 offset:33104
	ds_load_u8_d16 v117, v150 offset:33072
	ds_load_u8_d16 v118, v150 offset:33040
	ds_load_u8_d16 v110, v150 offset:33008
	ds_load_u8_d16 v233, v150 offset:33120
	ds_load_u8_d16 v235, v150 offset:33152
	ds_load_u8_d16 v236, v150 offset:33184
	ds_load_u8_d16 v234, v150 offset:33216
	ds_load_u8_d16 v126, v150 offset:33232
	ds_load_u8_d16 v130, v150 offset:33200
	ds_load_u8_d16 v151, v150 offset:33168
	ds_load_u8_d16 v123, v150 offset:33136
	ds_load_u8_d16 v237, v150 offset:33248
	ds_load_u8_d16 v201, v150 offset:33280
	ds_load_u8_d16 v202, v150 offset:33312
	ds_load_u8_d16 v203, v150 offset:33344
	ds_load_u8_d16 v40, v150 offset:33360
	ds_load_u8_d16 v250, v150 offset:33328
	ds_load_u8_d16 v251, v150 offset:33296
	ds_load_u8_d16 v159, v150 offset:33264
	ds_load_u8_d16 v204, v150 offset:33376
	ds_load_u8_d16 v209, v150 offset:33408
	ds_load_u8_d16 v210, v150 offset:33440
	ds_load_u8_d16 v211, v150 offset:33472
	ds_load_u8_d16 v106, v150 offset:33488
	ds_load_u8_d16 v108, v150 offset:33456
	ds_load_u8_d16 v109, v150 offset:33424
	ds_load_u8_d16 v55, v150 offset:33392
	ds_load_u8_d16 v212, v150 offset:33504
	ds_load_u8_d16 v213, v150 offset:33536
	ds_load_u8_d16 v214, v150 offset:33568
	ds_load_u8_d16 v215, v150 offset:33600
	ds_load_u8_d16 v119, v150 offset:33616
	ds_load_u8_d16 v121, v150 offset:33584
	ds_load_u8_d16 v122, v150 offset:33552
	ds_load_u8_d16 v116, v150 offset:33520
	ds_load_u8_d16 v216, v150 offset:33632
	ds_load_u8_d16 v217, v150 offset:33664
	ds_load_u8_d16 v218, v150 offset:33696
	ds_load_u8_d16 v219, v150 offset:33728
	ds_load_u8_d16 v153, v150 offset:33744
	ds_load_u8_d16 v156, v150 offset:33712
	ds_load_u8_d16 v158, v150 offset:33680
	ds_load_u8_d16 v129, v150 offset:33648
	ds_load_u8_d16 v220, v150 offset:33760
	ds_load_u8_d16 v181, v150 offset:33792
	ds_load_u8_d16 v182, v150 offset:33824
	ds_load_u8_d16 v183, v150 offset:33856
	ds_load_u8_d16 v184, v150 offset:33888
	ds_load_u8_d16 v253, v150 offset:33872
	ds_load_u8_d16 v52, v150 offset:33840
	ds_load_u8_d16 v54, v150 offset:33808
	ds_load_u8_d16 v193, v150 offset:33920
	ds_load_u8_d16 v194, v150 offset:33952
	ds_load_u8_d16 v195, v150 offset:33984
	ds_load_u8_d16 v196, v150 offset:34016
	ds_load_u8_d16 v111, v150 offset:34000
	ds_load_u8_d16 v113, v150 offset:33968
	ds_load_u8_d16 v114, v150 offset:33936
	ds_load_u8_d16 v107, v150 offset:33904
	ds_load_u8_d16 v197, v150 offset:34048
	ds_load_u8_d16 v198, v150 offset:34080
	ds_load_u8_d16 v199, v150 offset:34112
	ds_load_u8_d16 v200, v150 offset:34144
	ds_load_u8_d16 v124, v150 offset:34128
	ds_load_u8_d16 v127, v150 offset:34096
	ds_load_u8_d16 v128, v150 offset:34064
	ds_load_u8_d16 v120, v150 offset:34032
	ds_load_u8_d16 v205, v150 offset:34176
	ds_load_u8_d16 v206, v150 offset:34208
	ds_load_u8_d16 v207, v150 offset:34240
	ds_load_u8_d16 v208, v150 offset:34272
	ds_load_u8_d16 v160, v150 offset:34256
	ds_load_u8_d16 v161, v150 offset:34224
	ds_load_u8_d16 v163, v150 offset:34192
	ds_load_u8_d16 v154, v150 offset:34160
	ds_load_u8_d16 v172, v150 offset:34304
	ds_load_u8_d16 v174, v150 offset:34336
	ds_load_u8_d16 v175, v150 offset:34368
	ds_load_u8_d16 v176, v150 offset:34400
	ds_load_u8_d16 v37, v150 offset:34384
	ds_load_u8_d16 v38, v150 offset:34352
	ds_load_u8_d16 v39, v150 offset:34320
	ds_load_u8_d16 v167, v150 offset:34288
	ds_load_u8_d16 v178, v150 offset:34432
	ds_load_u8_d16 v180, v150 offset:34464
	ds_load_u8_d16 v177, v150 offset:34496
	ds_load_u8_d16 v179, v150 offset:34528
	ds_load_u8_d16 v254, v150 offset:34512
	ds_load_u8_d16 v51, v150 offset:34480
	ds_load_u8_d16 v53, v150 offset:34448
	ds_load_u8_d16 v255, v150 offset:34416
	v_dual_mov_b32 v221, v142 :: v_dual_add_nc_u32 v2, 0, v2
	ds_load_u8_d16 v185, v150 offset:34560
	ds_load_u8_d16 v186, v150 offset:34592
	ds_load_u8_d16 v187, v150 offset:34624
	ds_load_u8_d16 v188, v150 offset:34656
	ds_load_u8_d16 v152, v150 offset:34640
	ds_load_u8_d16 v155, v150 offset:34608
	ds_load_u8_d16 v157, v150 offset:34576
	ds_load_u8_d16 v115, v150 offset:34544
	ds_load_u8_d16 v189, v150 offset:34688
	ds_load_u8_d16 v190, v150 offset:34720
	ds_load_u8_d16 v191, v150 offset:34752
	ds_load_u8_d16 v192, v150 offset:34784
	ds_load_u8_d16 v164, v150 offset:34768
	ds_load_u8_d16 v165, v150 offset:34736
	ds_load_u8_d16 v166, v150 offset:34704
	ds_load_u8_d16 v162, v150 offset:34672
	v_dual_mov_b32 v222, v143 :: v_dual_add_nc_u32 v1, 0, v1
	ds_load_u8_d16 v238, v150 offset:32768
	ds_load_u8_d16 v169, v150 offset:32784
	ds_load_u8_d16 v239, v150 offset:32800
	ds_load_u8_d16 v171, v150 offset:32816
	ds_load_u8_d16 v240, v150 offset:32832
	ds_load_u8_d16 v170, v150 offset:32848
	ds_load_u8_d16 v168, v2 offset:32768
	ds_load_u8_d16 v150, v1 offset:32768
	v_dual_mov_b32 v223, v144 :: v_dual_and_b32 v42, 0xe0, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v4, 0, 1, s21
	v_dual_mov_b32 v9, v101 :: v_dual_mov_b32 v10, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v249, 1, v42
	v_dual_mov_b32 v25, v97 :: v_dual_mov_b32 v26, v98
	v_dual_mov_b32 v17, v93 :: v_dual_mov_b32 v18, v94
	v_or_b32_e32 v3, v249, v133
	v_dual_mov_b32 v13, v89 :: v_dual_mov_b32 v14, v90
	v_dual_mov_b32 v21, v85 :: v_dual_mov_b32 v22, v86
	v_dual_mov_b32 v29, v81 :: v_dual_mov_b32 v30, v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v4
	v_dual_mov_b32 v224, v145 :: v_dual_add_nc_u32 v173, 0, v3
	v_dual_mov_b32 v225, v146 :: v_dual_mov_b32 v228, v147
	v_dual_mov_b32 v229, v148 :: v_dual_mov_b32 v230, v149
	v_dual_mov_b32 v11, v103 :: v_dual_mov_b32 v12, v104
	v_dual_mov_b32 v27, v99 :: v_dual_mov_b32 v28, v100
	v_dual_mov_b32 v19, v95 :: v_dual_mov_b32 v20, v96
	v_dual_mov_b32 v15, v91 :: v_dual_mov_b32 v16, v92
	v_dual_mov_b32 v23, v87 :: v_dual_mov_b32 v24, v88
	v_dual_mov_b32 v31, v83 :: v_dual_mov_b32 v32, v84
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_mov_b32 s4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v235, v236, 0xc0c0004
	v_perm_b32 v2, v234, v237, 0xc0c0004
	v_perm_b32 v3, v36, v232, 0xc0c0004
	v_perm_b32 v5, v35, v233, 0xc0c0004
	v_perm_b32 v15, v118, v117, 0xc0c0004
	v_perm_b32 v16, v112, v123, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v34, v226, 0xc0c0004
	v_perm_b32 v2, v227, v231, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v240, v33, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v238, v239, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v173 offset:3328
	ds_load_u8 v6, v173 offset:3072
	s_mov_b32 s10, s4
	v_lshl_or_b32 v31, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:3840
	ds_load_u8 v7, v173 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:2304
	ds_load_u8 v8, v173 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:2816
	ds_load_u8 v9, v173 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v173 offset:1280
	ds_load_u8 v6, v173 offset:1024
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:1792
	ds_load_u8 v9, v173 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v173 offset:256
	ds_load_u8 v9, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v173 offset:768
	ds_load_u8 v10, v173 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v173 offset:3456
	ds_load_u8 v10, v173 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:3968
	ds_load_u8 v11, v173 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v173 offset:2432
	ds_load_u8 v12, v173 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v173 offset:2944
	ds_load_u8 v13, v173 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v173 offset:1408
	ds_load_u8 v10, v173 offset:1152
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:1920
	ds_load_u8 v13, v173 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v173 offset:384
	ds_load_u8 v13, v173 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	ds_load_u8 v13, v173 offset:896
	ds_load_u8 v14, v173 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_perm_b32 v14, v126, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	v_perm_b32 v13, v151, v130, 0xc0c0004
	v_lshl_or_b32 v32, v14, 16, v13
	v_perm_b32 v13, v105, v56, 0xc0c0004
	v_perm_b32 v14, v132, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v14, 16, v13
	v_perm_b32 v13, v169, v171, 0xc0c0004
	v_perm_b32 v14, v170, v252, 0xc0c0004
	v_lshl_or_b32 v29, v14, 16, v13
	v_dual_mov_b32 v20, s11 :: v_dual_mov_b32 v19, s10
	v_dual_mov_b32 v18, s9 :: v_dual_mov_b32 v17, s8
	v_dual_mov_b32 v16, s7 :: v_dual_mov_b32 v15, s6
	v_dual_mov_b32 v14, s5 :: v_dual_mov_b32 v13, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[9:12], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v1, v217, v218, 0xc0c0004
	v_perm_b32 v2, v219, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[5:8], v[29:32], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v3, v213, v214, 0xc0c0004
	v_perm_b32 v5, v215, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v209, v210, 0xc0c0004
	v_perm_b32 v2, v211, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[9:12], v[29:32], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v203, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v201, v202, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v173 offset:7424
	ds_load_u8 v6, v173 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:7936
	ds_load_u8 v7, v173 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:6400
	ds_load_u8 v8, v173 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:6912
	ds_load_u8 v9, v173 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v173 offset:5376
	ds_load_u8 v6, v173 offset:5120
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:5888
	ds_load_u8 v9, v173 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v173 offset:4352
	ds_load_u8 v9, v173 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v173 offset:4864
	ds_load_u8 v10, v173 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v173 offset:7552
	ds_load_u8 v10, v173 offset:7296
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[1:4], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:8064
	ds_load_u8 v11, v173 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v173 offset:6528
	ds_load_u8 v12, v173 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v173 offset:7040
	ds_load_u8 v29, v173 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v173 offset:5504
	ds_load_u8 v10, v173 offset:5248
	v_lshl_or_b32 v11, v29, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:6016
	ds_load_u8 v29, v173 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v29, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v173 offset:4480
	ds_load_u8 v29, v173 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v29, v9, 0xc0c0004
	ds_load_u8 v29, v173 offset:4992
	ds_load_u8 v30, v173 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v29, 16, v9
	v_perm_b32 v29, v119, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[241:248], v[9:12], v[1:4], v[241:248] neg_lo:[1,1,0]
	v_perm_b32 v1, v158, v156, 0xc0c0004
	v_perm_b32 v2, v153, v168, 0xc0c0004
	v_perm_b32 v3, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v109, v108, 0xc0c0004
	v_perm_b32 v2, v106, v116, 0xc0c0004
	v_lshl_or_b32 v3, v29, 16, v3
	v_perm_b32 v29, v40, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v251, v250, 0xc0c0004
	v_lshl_or_b32 v1, v29, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[5:8], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[9:12], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v1, v205, v206, 0xc0c0004
	v_perm_b32 v2, v207, v208, 0xc0c0004
	v_perm_b32 v3, v197, v198, 0xc0c0004
	v_perm_b32 v5, v199, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v193, v194, 0xc0c0004
	v_perm_b32 v2, v195, v196, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v183, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v181, v182, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v173 offset:11520
	ds_load_u8 v6, v173 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:12032
	ds_load_u8 v7, v173 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:10496
	ds_load_u8 v8, v173 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:11008
	ds_load_u8 v9, v173 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v173 offset:9472
	ds_load_u8 v6, v173 offset:9216
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:9984
	ds_load_u8 v9, v173 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v173 offset:8448
	ds_load_u8 v9, v173 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v173 offset:8960
	ds_load_u8 v10, v173 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v173 offset:11648
	ds_load_u8 v10, v173 offset:11392
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[1:4], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:12160
	ds_load_u8 v11, v173 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v173 offset:10624
	ds_load_u8 v12, v173 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v173 offset:11136
	ds_load_u8 v29, v173 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v173 offset:9600
	ds_load_u8 v10, v173 offset:9344
	v_lshl_or_b32 v11, v29, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:10112
	ds_load_u8 v29, v173 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v29, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v173 offset:8576
	ds_load_u8 v29, v173 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v29, v9, 0xc0c0004
	ds_load_u8 v29, v173 offset:9088
	ds_load_u8 v30, v173 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v29, 16, v9
	v_perm_b32 v29, v124, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[241:248], v[9:12], v[1:4], v[241:248] neg_lo:[1,1,0]
	v_perm_b32 v1, v163, v161, 0xc0c0004
	v_perm_b32 v2, v160, v167, 0xc0c0004
	v_perm_b32 v3, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v114, v113, 0xc0c0004
	v_perm_b32 v2, v111, v120, 0xc0c0004
	v_lshl_or_b32 v3, v29, 16, v3
	v_perm_b32 v29, v253, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v54, v52, 0xc0c0004
	v_lshl_or_b32 v1, v29, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[5:8], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[9:12], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v1, v189, v190, 0xc0c0004
	v_perm_b32 v2, v191, v192, 0xc0c0004
	v_perm_b32 v3, v185, v186, 0xc0c0004
	v_perm_b32 v5, v187, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v178, v180, 0xc0c0004
	v_perm_b32 v2, v177, v179, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v175, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v172, v174, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v173 offset:15616
	ds_load_u8 v6, v173 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:16128
	ds_load_u8 v7, v173 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:14592
	ds_load_u8 v8, v173 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:15104
	ds_load_u8 v9, v173 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v173 offset:13568
	ds_load_u8 v6, v173 offset:13312
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:14080
	ds_load_u8 v9, v173 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v173 offset:12544
	ds_load_u8 v9, v173 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v173 offset:13056
	ds_load_u8 v10, v173 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v173 offset:15744
	ds_load_u8 v10, v173 offset:15488
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[1:4], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:16256
	ds_load_u8 v11, v173 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v173 offset:14720
	ds_load_u8 v12, v173 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v173 offset:15232
	ds_load_u8 v29, v173 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v173 offset:13696
	ds_load_u8 v10, v173 offset:13440
	v_lshl_or_b32 v11, v29, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v173 offset:14208
	ds_load_u8 v29, v173 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v29, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v173 offset:12672
	ds_load_u8 v29, v173 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v29, v9, 0xc0c0004
	ds_load_u8 v29, v173 offset:13184
	ds_load_u8 v30, v173 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v29, 16, v9
	v_perm_b32 v29, v152, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[241:248], v[9:12], v[1:4], v[241:248] neg_lo:[1,1,0]
	v_perm_b32 v1, v166, v165, 0xc0c0004
	v_perm_b32 v2, v164, v150, 0xc0c0004
	v_perm_b32 v3, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v53, v51, 0xc0c0004
	v_perm_b32 v2, v254, v115, 0xc0c0004
	v_lshl_or_b32 v3, v29, 16, v3
	v_perm_b32 v29, v37, v255, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v39, v38, 0xc0c0004
	v_lshl_or_b32 v1, v29, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[5:8], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[9:12], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v241
	v_cvt_f32_i32_e32 v2, v242
	v_cvt_f32_i32_e32 v3, v243
	v_cvt_f32_i32_e32 v4, v244
	v_cvt_f32_i32_e32 v5, v245
	v_cvt_f32_i32_e32 v6, v246
	v_cvt_f32_i32_e32 v7, v247
	v_cvt_f32_i32_e32 v8, v248
	v_cvt_f32_i32_e32 v9, v43
	v_cvt_f32_i32_e32 v10, v44
	v_cvt_f32_i32_e32 v11, v45
	v_cvt_f32_i32_e32 v12, v46
	v_cvt_f32_i32_e32 v29, v47
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v31, v49
	v_cvt_f32_i32_e32 v32, v50
	v_cvt_f32_i32_e32 v43, v13
	v_cvt_f32_i32_e32 v44, v14
	v_cvt_f32_i32_e32 v45, v15
	v_cvt_f32_i32_e32 v46, v16
	v_cvt_f32_i32_e32 v47, v17
	v_cvt_f32_i32_e32 v48, v18
	v_cvt_f32_i32_e32 v49, v19
	v_cvt_f32_i32_e32 v50, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v92, v24 :: v_dual_add_f32 v15, v91, v23
	v_dual_add_f32 v14, v90, v22 :: v_dual_add_f32 v13, v89, v21
	v_dual_add_f32 v24, v88, v28 :: v_dual_add_f32 v23, v87, v27
	v_dual_add_f32 v22, v86, v26 :: v_dual_add_f32 v21, v85, v25
	v_dual_add_f32 v20, v96, v5 :: v_dual_add_f32 v19, v95, v4
	v_dual_add_f32 v18, v94, v3 :: v_dual_add_f32 v17, v93, v2
	v_dual_add_f32 v28, v100, v12 :: v_dual_add_f32 v27, v99, v11
	v_dual_add_f32 v26, v98, v10 :: v_dual_add_f32 v25, v97, v9
	v_dual_add_f32 v32, v84, v32 :: v_dual_add_f32 v31, v83, v31
	v_dual_add_f32 v30, v82, v30 :: v_dual_add_f32 v29, v81, v29
	v_dual_add_f32 v12, v104, v47 :: v_dual_add_f32 v11, v103, v46
	v_dual_add_f32 v10, v102, v45 :: v_dual_add_f32 v9, v101, v44
	v_dual_add_f32 v221, v142, v1 :: v_dual_add_f32 v222, v143, v6
	v_dual_add_f32 v223, v144, v7 :: v_dual_add_f32 v224, v145, v8
	v_dual_add_f32 v225, v146, v43 :: v_dual_add_f32 v228, v147, v48
	v_dual_add_f32 v229, v148, v49 :: v_dual_add_f32 v230, v149, v50
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v235, v236, 0xc0c0004
	v_perm_b32 v2, v234, v237, 0xc0c0004
	v_perm_b32 v3, v36, v232, 0xc0c0004
	v_perm_b32 v4, v35, v233, 0xc0c0004
	v_perm_b32 v90, v219, v220, 0xc0c0004
	v_perm_b32 v91, v213, v214, 0xc0c0004
	v_lshl_or_b32 v36, v2, 16, v1
	v_perm_b32 v1, v34, v226, 0xc0c0004
	v_lshl_or_b32 v35, v4, 16, v3
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v4, v240, v33, 0xc0c0004
	ds_load_u8 v33, v173 offset:18688
	ds_load_u8 v34, v173 offset:18432
	ds_load_u8 v43, v173 offset:19200
	ds_load_u8 v44, v173 offset:18944
	ds_load_u8 v45, v173 offset:17664
	ds_load_u8 v46, v173 offset:17408
	ds_load_u8 v47, v173 offset:18176
	ds_load_u8 v48, v173 offset:17920
	ds_load_u8 v81, v173 offset:20352
	ds_load_u8 v82, v173 offset:20096
	ds_load_u8 v83, v173 offset:19840
	ds_load_u8 v84, v173 offset:19584
	v_perm_b32 v93, v215, v216, 0xc0c0004
	v_perm_b32 v94, v209, v210, 0xc0c0004
	v_perm_b32 v95, v211, v212, 0xc0c0004
	v_perm_b32 v96, v201, v202, 0xc0c0004
	v_perm_b32 v101, v203, v204, 0xc0c0004
	v_lshl_or_b32 v91, v93, 16, v91
	ds_load_u8 v102, v173 offset:22784
	ds_load_u8 v103, v173 offset:22528
	ds_load_u8 v104, v173 offset:23296
	ds_load_u8 v142, v173 offset:23040
	ds_load_u8 v143, v173 offset:21760
	ds_load_u8 v144, v173 offset:21504
	ds_load_u8 v145, v173 offset:22272
	ds_load_u8 v146, v173 offset:22016
	ds_load_u8 v147, v173 offset:20736
	ds_load_u8 v148, v173 offset:20480
	ds_load_u8 v149, v173 offset:21248
	ds_load_u8 v201, v173 offset:20992
	ds_load_u8 v202, v173 offset:24448
	ds_load_u8 v203, v173 offset:24192
	ds_load_u8 v204, v173 offset:23936
	ds_load_u8 v209, v173 offset:23680
	ds_load_u8 v5, v173 offset:19712
	ds_load_u8 v6, v173 offset:19456
	ds_load_u8 v7, v173 offset:20224
	ds_load_u8 v8, v173 offset:19968
	v_perm_b32 v172, v172, v174, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v89, v34, v33, 0xc0c0004
	v_perm_b32 v174, v175, v176, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v2, v227, v231, 0xc0c0004
	ds_load_u8 v226, v173 offset:18304
	ds_load_u8 v227, v173 offset:18048
	ds_load_u8 v231, v173 offset:17792
	ds_load_u8 v232, v173 offset:17536
	ds_load_u8 v233, v173 offset:17280
	ds_load_u8 v234, v173 offset:17024
	ds_load_u8 v235, v173 offset:16768
	ds_load_u8 v236, v173 offset:16512
	ds_load_u8 v210, v173 offset:23424
	ds_load_u8 v211, v173 offset:23168
	ds_load_u8 v212, v173 offset:22912
	ds_load_u8 v213, v173 offset:22656
	v_lshl_or_b32 v99, v43, 16, v89
	v_perm_b32 v89, v217, v218, 0xc0c0004
	ds_load_u8 v214, v173 offset:22400
	ds_load_u8 v215, v173 offset:22144
	ds_load_u8 v216, v173 offset:21888
	ds_load_u8 v217, v173 offset:21632
	ds_load_u8 v218, v173 offset:21376
	ds_load_u8 v219, v173 offset:21120
	ds_load_u8 v220, v173 offset:20864
	ds_load_u8 v237, v173 offset:20608
	v_perm_b32 v3, v238, v239, 0xc0c0004
	v_lshl_or_b32 v34, v2, 16, v1
	v_lshl_or_b32 v92, v90, 16, v89
	v_lshl_or_b32 v90, v95, 16, v94
	ds_load_u8 v89, v173 offset:23808
	ds_load_u8 v93, v173 offset:23552
	ds_load_u8 v94, v173 offset:24320
	ds_load_u8 v95, v173 offset:24064
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_mov_b32 s0, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v7, v173 offset:16640
	ds_load_u8 v8, v173 offset:16384
	ds_load_u8 v49, v173 offset:17152
	ds_load_u8 v50, v173 offset:16896
	ds_load_u8 v85, v173 offset:19328
	ds_load_u8 v86, v173 offset:19072
	ds_load_u8 v87, v173 offset:18816
	ds_load_u8 v88, v173 offset:18560
	v_perm_b32 v44, v46, v45, 0xc0c0004
	v_perm_b32 v45, v48, v47, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_mov_b32 s7, s0
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	v_lshl_or_b32 v33, v4, 16, v3
	v_lshl_or_b32 v100, v6, 16, v5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v93, v89, 0xc0c0004
	v_lshl_or_b32 v89, v101, 16, v96
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v103, v102, 0xc0c0004
	v_perm_b32 v102, v142, v104, 0xc0c0004
	v_perm_b32 v142, v144, v143, 0xc0c0004
	v_perm_b32 v143, v146, v145, 0xc0c0004
	v_perm_b32 v144, v148, v147, 0xc0c0004
	v_perm_b32 v145, v201, v149, 0xc0c0004
	v_lshl_or_b32 v104, v94, 16, v93
	v_lshl_or_b32 v103, v102, 16, v95
	v_lshl_or_b32 v102, v143, 16, v142
	v_perm_b32 v93, v205, v206, 0xc0c0004
	v_lshl_or_b32 v101, v145, 16, v144
	v_perm_b32 v94, v207, v208, 0xc0c0004
	v_perm_b32 v95, v197, v198, 0xc0c0004
	v_perm_b32 v142, v199, v200, 0xc0c0004
	v_perm_b32 v143, v193, v194, 0xc0c0004
	v_perm_b32 v144, v195, v196, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	v_perm_b32 v145, v181, v182, 0xc0c0004
	v_lshl_or_b32 v95, v142, 16, v95
	v_perm_b32 v146, v183, v184, 0xc0c0004
	v_lshl_or_b32 v94, v144, 16, v143
	ds_load_u8 v93, v173 offset:27904
	ds_load_u8 v142, v173 offset:27648
	ds_load_u8 v143, v173 offset:28416
	ds_load_u8 v144, v173 offset:28160
	ds_load_u8 v147, v173 offset:26880
	ds_load_u8 v148, v173 offset:26624
	ds_load_u8 v149, v173 offset:27392
	ds_load_u8 v181, v173 offset:27136
	ds_load_u8 v182, v173 offset:25856
	ds_load_u8 v183, v173 offset:25600
	ds_load_u8 v184, v173 offset:26368
	ds_load_u8 v193, v173 offset:26112
	ds_load_u8 v194, v173 offset:24832
	ds_load_u8 v195, v173 offset:24576
	ds_load_u8 v196, v173 offset:25344
	ds_load_u8 v197, v173 offset:25088
	ds_load_u8 v198, v173 offset:28544
	ds_load_u8 v199, v173 offset:28288
	ds_load_u8 v200, v173 offset:28032
	ds_load_u8 v201, v173 offset:27776
	ds_load_u8 v205, v173 offset:27520
	ds_load_u8 v206, v173 offset:27264
	ds_load_u8 v207, v173 offset:27008
	ds_load_u8 v208, v173 offset:26752
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v1, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v2, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v82, v88, v87, 0xc0c0004
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_perm_b32 v85, v232, v231, 0xc0c0004
	v_perm_b32 v86, v227, v226, 0xc0c0004
	v_perm_b32 v87, v236, v235, 0xc0c0004
	v_perm_b32 v88, v234, v233, 0xc0c0004
	v_lshl_or_b32 v97, v2, 16, v1
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v7, s6
	v_lshl_or_b32 v98, v45, 16, v44
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_perm_b32 v142, v142, v93, 0xc0c0004
	v_lshl_or_b32 v93, v146, 16, v145
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v144, v148, v147, 0xc0c0004
	v_perm_b32 v147, v181, v149, 0xc0c0004
	v_perm_b32 v148, v183, v182, 0xc0c0004
	v_perm_b32 v149, v193, v184, 0xc0c0004
	v_perm_b32 v146, v189, v190, 0xc0c0004
	v_lshl_or_b32 v145, v143, 16, v142
	v_lshl_or_b32 v144, v147, 16, v144
	v_perm_b32 v147, v191, v192, 0xc0c0004
	v_lshl_or_b32 v143, v149, 16, v148
	v_perm_b32 v148, v185, v186, 0xc0c0004
	v_perm_b32 v185, v187, v188, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v195, v197, v196, 0xc0c0004
	v_lshl_or_b32 v149, v147, 16, v146
	v_perm_b32 v146, v178, v180, 0xc0c0004
	ds_load_u8 v178, v173 offset:32000
	ds_load_u8 v180, v173 offset:31744
	v_lshl_or_b32 v148, v185, 16, v148
	ds_load_u8 v175, v173 offset:30976
	ds_load_u8 v176, v173 offset:30720
	ds_load_u8 v185, v173 offset:31488
	ds_load_u8 v186, v173 offset:31232
	v_perm_b32 v147, v177, v179, 0xc0c0004
	v_lshl_or_b32 v142, v195, 16, v194
	ds_load_u8 v177, v173 offset:32512
	ds_load_u8 v179, v173 offset:32256
	ds_load_u8 v181, v173 offset:26496
	ds_load_u8 v238, v173 offset:26240
	ds_load_u8 v239, v173 offset:25984
	ds_load_u8 v240, v173 offset:25728
	ds_load_u8 v182, v173 offset:25472
	ds_load_u8 v183, v173 offset:25216
	ds_load_u8 v184, v173 offset:24960
	ds_load_u8 v193, v173 offset:24704
	v_lshl_or_b32 v147, v147, 16, v146
	v_lshl_or_b32 v146, v174, 16, v172
	ds_load_u8 v172, v173 offset:29952
	ds_load_u8 v174, v173 offset:29696
	ds_load_u8 v187, v173 offset:30464
	ds_load_u8 v188, v173 offset:30208
	ds_load_u8 v189, v173 offset:32640
	ds_load_u8 v190, v173 offset:32384
	ds_load_u8 v191, v173 offset:32128
	ds_load_u8 v192, v173 offset:31872
	v_dual_mov_b32 v4, s3 :: v_dual_mov_b32 v3, s2
	v_dual_mov_b32 v2, s1 :: v_dual_mov_b32 v1, s0
	ds_load_u8 v196, v173 offset:31616
	ds_load_u8 v197, v173 offset:31360
	ds_load_u8 v241, v173 offset:31104
	ds_load_u8 v242, v173 offset:30848
	v_perm_b32 v56, v105, v56, 0xc0c0004
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v106, v106, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[97:100], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v180, v180, v178, 0xc0c0004
	ds_load_u8 v178, v173 offset:28928
	ds_load_u8 v194, v173 offset:28672
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v243, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v175, v173 offset:29440
	ds_load_u8 v176, v173 offset:29184
	ds_load_u8 v186, v173 offset:30592
	ds_load_u8 v244, v173 offset:30336
	ds_load_u8 v245, v173 offset:30080
	ds_load_u8 v246, v173 offset:29824
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v195, v179, v177, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v247, v174, v172, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v173 offset:29568
	ds_load_u8 v248, v173 offset:29312
	ds_load_u8 v125, v173 offset:29056
	ds_load_u8 v41, v173 offset:28800
	v_lshl_or_b32 v174, v84, 16, v82
	v_lshl_or_b32 v173, v86, 16, v85
	v_lshl_or_b32 v172, v88, 16, v87
	v_perm_b32 v177, v203, v202, 0xc0c0004
	v_perm_b32 v179, v211, v210, 0xc0c0004
	v_perm_b32 v202, v217, v216, 0xc0c0004
	v_perm_b32 v203, v215, v214, 0xc0c0004
	v_perm_b32 v181, v238, v181, 0xc0c0004
	v_perm_b32 v184, v193, v184, 0xc0c0004
	v_perm_b32 v182, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[101:104], v[89:92], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v226, v176, v175, 0xc0c0004
	v_perm_b32 v194, v194, v178, 0xc0c0004
	v_lshl_or_b32 v175, v81, 16, v83
	v_perm_b32 v176, v209, v204, 0xc0c0004
	v_perm_b32 v178, v213, v212, 0xc0c0004
	v_perm_b32 v204, v237, v220, 0xc0c0004
	v_perm_b32 v209, v219, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[172:175], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v177, 16, v176
	v_lshl_or_b32 v35, v179, 16, v178
	v_lshl_or_b32 v34, v203, 16, v202
	v_lshl_or_b32 v33, v209, 16, v204
	v_perm_b32 v176, v201, v200, 0xc0c0004
	v_perm_b32 v177, v199, v198, 0xc0c0004
	v_perm_b32 v178, v208, v207, 0xc0c0004
	v_perm_b32 v198, v206, v205, 0xc0c0004
	v_perm_b32 v199, v240, v239, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[33:36], v[89:92], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v179, v177, 16, v176
	v_lshl_or_b32 v176, v182, 16, v184
	v_lshl_or_b32 v178, v198, 16, v178
	v_lshl_or_b32 v177, v181, 16, v199
	v_wmma_i32_16x16x16_iu8 v[43:50], v[142:145], v[93:96], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v89, v151, v130, 0xc0c0004
	v_perm_b32 v90, v126, v159, 0xc0c0004
	v_perm_b32 v91, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[176:179], v[93:96], v[81:88] neg_lo:[1,1,0]
	v_perm_b32 v92, v112, v123, 0xc0c0004
	v_perm_b32 v93, v132, v110, 0xc0c0004
	v_perm_b32 v94, v169, v171, 0xc0c0004
	v_perm_b32 v95, v170, v252, 0xc0c0004
	v_lshl_or_b32 v183, v195, 16, v180
	v_lshl_or_b32 v182, v185, 16, v243
	v_lshl_or_b32 v181, v187, 16, v247
	v_lshl_or_b32 v180, v226, 16, v194
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v194, v244, v186, 0xc0c0004
	v_lshl_or_b32 v187, v90, 16, v89
	v_lshl_or_b32 v186, v92, 16, v91
	v_lshl_or_b32 v185, v93, 16, v56
	v_lshl_or_b32 v184, v95, 16, v94
	v_perm_b32 v56, v158, v156, 0xc0c0004
	v_perm_b32 v110, v153, v168, 0xc0c0004
	v_perm_b32 v112, v122, v121, 0xc0c0004
	v_perm_b32 v117, v119, v129, 0xc0c0004
	v_perm_b32 v109, v251, v250, 0xc0c0004
	v_perm_b32 v40, v40, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v125, 0xc0c0004
	v_perm_b32 v105, v248, v188, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[184:187], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v110, 16, v56
	v_lshl_or_b32 v99, v117, 16, v112
	v_lshl_or_b32 v98, v106, 16, v108
	v_lshl_or_b32 v97, v40, 16, v109
	v_perm_b32 v40, v163, v161, 0xc0c0004
	v_perm_b32 v55, v160, v167, 0xc0c0004
	v_perm_b32 v56, v128, v127, 0xc0c0004
	v_perm_b32 v106, v124, v154, 0xc0c0004
	v_perm_b32 v108, v114, v113, 0xc0c0004
	v_perm_b32 v109, v111, v120, 0xc0c0004
	v_perm_b32 v52, v54, v52, 0xc0c0004
	v_perm_b32 v54, v253, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[172:175], v[184:187], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_perm_b32 v189, v190, v189, 0xc0c0004
	v_perm_b32 v190, v242, v241, 0xc0c0004
	v_perm_b32 v192, v197, v196, 0xc0c0004
	v_perm_b32 v193, v246, v245, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[89:96], v[101:104], v[97:100], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v55, 16, v40
	v_lshl_or_b32 v103, v106, 16, v56
	v_lshl_or_b32 v102, v109, 16, v108
	v_lshl_or_b32 v101, v54, 16, v52
	v_lshl_or_b32 v105, v105, 16, v41
	v_perm_b32 v40, v166, v165, 0xc0c0004
	v_perm_b32 v41, v164, v150, 0xc0c0004
	v_perm_b32 v52, v157, v155, 0xc0c0004
	v_perm_b32 v54, v152, v162, 0xc0c0004
	v_perm_b32 v51, v53, v51, 0xc0c0004
	v_perm_b32 v53, v254, v115, 0xc0c0004
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v37, v37, v255, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v189, 16, v191
	v_lshl_or_b32 v107, v192, 16, v190
	v_lshl_or_b32 v106, v194, 16, v193
	v_wmma_i32_16x16x16_iu8 v[89:96], v[142:145], v[101:104], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v41, 16, v40
	v_lshl_or_b32 v35, v54, 16, v52
	v_lshl_or_b32 v34, v53, 16, v51
	v_lshl_or_b32 v33, v37, 16, v38
	v_wmma_i32_16x16x16_iu8 v[1:8], v[176:179], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[180:183], v[146:149], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[105:108], v[146:149], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[180:183], v[33:36], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[105:108], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v33, v43
	v_cvt_f32_i32_e32 v34, v44
	v_cvt_f32_i32_e32 v35, v45
	v_cvt_f32_i32_e32 v36, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v39, v49
	v_cvt_f32_i32_e32 v40, v50
	v_cvt_f32_i32_e32 v41, v81
	v_cvt_f32_i32_e32 v43, v82
	v_cvt_f32_i32_e32 v44, v83
	v_cvt_f32_i32_e32 v45, v84
	v_cvt_f32_i32_e32 v46, v85
	v_cvt_f32_i32_e32 v47, v86
	v_cvt_f32_i32_e32 v48, v87
	v_cvt_f32_i32_e32 v49, v88
	v_cvt_f32_i32_e32 v50, v89
	v_cvt_f32_i32_e32 v51, v90
	v_cvt_f32_i32_e32 v52, v91
	v_cvt_f32_i32_e32 v53, v92
	v_cvt_f32_i32_e32 v54, v93
	v_cvt_f32_i32_e32 v55, v94
	v_cvt_f32_i32_e32 v56, v95
	v_cvt_f32_i32_e32 v81, v96
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v68, v68, v36 :: v_dual_add_f32 v67, v67, v35
	v_dual_add_f32 v66, v66, v34 :: v_dual_add_f32 v65, v65, v33
	v_dual_add_f32 v64, v64, v40 :: v_dual_add_f32 v63, v63, v39
	v_dual_add_f32 v62, v62, v38 :: v_dual_add_f32 v61, v61, v37
	v_dual_add_f32 v134, v134, v41 :: v_dual_add_f32 v69, v69, v43
	v_dual_add_f32 v72, v72, v46 :: v_dual_add_f32 v71, v71, v45
	v_dual_add_f32 v70, v70, v44 :: v_dual_add_f32 v141, v141, v47
	v_dual_add_f32 v140, v140, v48 :: v_dual_add_f32 v139, v139, v49
	v_dual_add_f32 v76, v76, v53 :: v_dual_add_f32 v75, v75, v52
	v_dual_add_f32 v74, v74, v51 :: v_dual_add_f32 v73, v73, v50
	v_dual_add_f32 v60, v60, v81 :: v_dual_add_f32 v59, v59, v56
	v_dual_add_f32 v58, v58, v55 :: v_dual_add_f32 v57, v57, v54
	v_dual_add_f32 v138, v138, v1 :: v_dual_add_f32 v79, v79, v4
	v_dual_add_f32 v80, v80, v5 :: v_dual_add_f32 v77, v77, v2
	v_dual_add_f32 v78, v78, v3 :: v_dual_add_f32 v137, v137, v6
	v_dual_add_f32 v136, v136, v7 :: v_dual_add_f32 v135, v135, v8
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_dual_mov_b32 v9, v101 :: v_dual_mov_b32 v10, v102
	v_dual_mov_b32 v25, v97 :: v_dual_mov_b32 v26, v98
	v_dual_mov_b32 v17, v93 :: v_dual_mov_b32 v18, v94
	v_dual_mov_b32 v13, v89 :: v_dual_mov_b32 v14, v90
	v_dual_mov_b32 v21, v85 :: v_dual_mov_b32 v22, v86
	v_dual_mov_b32 v29, v81 :: v_dual_mov_b32 v30, v82
	v_dual_mov_b32 v230, v149 :: v_dual_mov_b32 v229, v148
	v_dual_mov_b32 v228, v147 :: v_dual_mov_b32 v225, v146
	v_dual_mov_b32 v224, v145 :: v_dual_mov_b32 v223, v144
	v_dual_mov_b32 v222, v143 :: v_dual_mov_b32 v221, v142
	v_dual_mov_b32 v11, v103 :: v_dual_mov_b32 v12, v104
	v_dual_mov_b32 v27, v99 :: v_dual_mov_b32 v28, v100
	v_dual_mov_b32 v19, v95 :: v_dual_mov_b32 v20, v96
	v_dual_mov_b32 v15, v91 :: v_dual_mov_b32 v16, v92
	v_dual_mov_b32 v23, v87 :: v_dual_mov_b32 v24, v88
	v_dual_mov_b32 v31, v83 :: v_dual_mov_b32 v32, v84
.LBB0_13:
	.loc	1 434 22 is_stmt 1              ; generate_amdgcn.py:434:22
	v_or_b32_e32 v1, s34, v133
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s36
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v2, s20, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s20, s20, s31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v3, 32, v1
	s_clause 0x1
	buffer_load_u16 v41, v1, s[44:47], 0 offen
	buffer_load_u16 v43, v3, s[44:47], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s45, s39, 0xffff
	s_mov_b32 s44, s38
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1) lgkmcnt(26)
	v_lshlrev_b32_e32 v51, 16, v41
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v44, 1, v0
	v_and_b32_e32 v243, 0xf0, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v43
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v1, v2, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v2, 5, v0
	v_lshl_add_u32 v3, v243, 2, 0
	v_and_b32_e32 v4, 28, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v2, 32, v2
	v_lshl_add_u32 v53, v243, 1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v52, v3, v2, v4
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v2, s20, v0, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v52, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v54, v2, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[1:4], v53 offset:512
	ds_load_b128 v[5:8], v53 offset:528
	ds_load_b128 v[37:40], v53
	ds_load_b128 v[33:36], v53 offset:16
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp16:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s41, 0xffff
	s_mov_b32 s44, s40
.Ltmp17:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v46, v1, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v50, v221, v46
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v7, v51
	v_mul_f32_e32 v47, v6, v51
	v_mul_f32_e32 v55, v8, v51
	v_mul_f32_e32 v81, v37, v51
	v_mul_f32_e32 v41, v39, v51
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v48, v223, v48 :: v_dual_mul_f32 v1, v1, v45
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v8, v8, v45 :: v_dual_mul_f32 v49, v222, v47
	v_dual_mul_f32 v6, v6, v45 :: v_dual_mul_f32 v43, v40, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v46, v225, v1 :: v_dual_mul_f32 v89, v36, v51
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v100, v37, v45
	v_dual_mul_f32 v90, v35, v51 :: v_dual_mul_f32 v99, v38, v45
	v_dual_mul_f32 v91, v34, v51 :: v_dual_mul_f32 v98, v40, v45
	v_dual_mul_f32 v92, v33, v51 :: v_dual_mul_f32 v97, v39, v45
	v_dual_mul_f32 v93, v5, v51 :: v_dual_mul_f32 v102, v35, v45
	v_dual_mul_f32 v94, v4, v51 :: v_dual_mul_f32 v103, v34, v45
	v_dual_mul_f32 v95, v3, v51 :: v_dual_mul_f32 v104, v33, v45
	v_dual_mul_f32 v96, v2, v51 :: v_dual_mul_f32 v101, v36, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v47, v224, v55 :: v_dual_mul_f32 v8, v230, v8
	v_dual_mul_f32 v36, v15, v41 :: v_dual_mul_f32 v37, v21, v92
	v_dual_mul_f32 v35, v22, v91 :: v_dual_mul_f32 v34, v23, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v33, v24, v89 :: v_dual_mul_f32 v24, v17, v96
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v56, v38, v51
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v23, v18, v95 :: v_dual_mul_f32 v22, v19, v94
	v_dual_mul_f32 v19, v25, v100 :: v_dual_mul_f32 v38, v16, v43
	v_dual_mul_f32 v39, v14, v56 :: v_dual_mul_f32 v14, v27, v97
	v_dual_mul_f32 v21, v20, v93 :: v_dual_mul_f32 v20, v26, v99
	v_dual_mul_f32 v17, v28, v98 :: v_dual_mul_f32 v16, v30, v103
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v7, v7, v45 :: v_dual_mul_f32 v6, v228, v6
	v_mul_f32_e32 v2, v2, v45
	v_mul_f32_e32 v5, v5, v45
	v_mul_f32_e32 v3, v3, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v229, v7
	v_mul_f32_e32 v40, v13, v81
	v_mul_f32_e32 v18, v32, v101
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v4, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v9, v2 :: v_dual_mul_f32 v3, v10, v3
	v_dual_mul_f32 v9, v11, v4 :: v_dual_mul_f32 v4, v12, v5
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v54
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_store_b32 v52, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v53 offset:512
	ds_load_b128 v[85:88], v53 offset:528
	ds_load_b128 v[89:92], v53
	ds_load_b128 v[52:55], v53 offset:16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v29, v104
	v_mul_f32_e32 v15, v31, v102
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v13, v81, v51 :: v_dual_mul_f32 v30, v87, v45
	v_mul_f32_e32 v27, v88, v51
	v_mul_f32_e32 v25, v86, v51
	v_dual_mul_f32 v26, v87, v51 :: v_dual_mul_f32 v29, v86, v45
	v_mul_f32_e32 v28, v81, v45
	v_dual_mul_f32 v31, v88, v45 :: v_dual_mul_f32 v32, v91, v51
	v_dual_mul_f32 v41, v92, v51 :: v_dual_mul_f32 v100, v55, v45
	v_mul_f32_e32 v43, v90, v51
	v_dual_mul_f32 v56, v89, v51 :: v_dual_mul_f32 v91, v91, v45
	v_mul_f32_e32 v93, v55, v51
	v_dual_mul_f32 v94, v54, v51 :: v_dual_mul_f32 v99, v89, v45
	v_dual_mul_f32 v95, v53, v51 :: v_dual_mul_f32 v104, v83, v45
	v_dual_mul_f32 v81, v52, v51 :: v_dual_mul_f32 v102, v85, v45
	v_dual_mul_f32 v96, v85, v51 :: v_dual_mul_f32 v103, v84, v45
	v_dual_mul_f32 v98, v83, v51 :: v_dual_mul_f32 v101, v53, v45
	v_mul_f32_e32 v92, v92, v45
	v_dual_mul_f32 v97, v84, v51 :: v_dual_mul_f32 v88, v141, v25
	v_mul_f32_e32 v51, v82, v51
	v_mul_f32_e32 v90, v90, v45
	v_dual_mul_f32 v54, v54, v45 :: v_dual_mul_f32 v27, v139, v27
	v_mul_f32_e32 v52, v52, v45
	v_dual_mul_f32 v105, v82, v45 :: v_dual_mul_f32 v86, v135, v31
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v89, v134, v13 :: v_dual_mul_f32 v82, v67, v32
	v_dual_mul_f32 v87, v140, v26 :: v_dual_mul_f32 v84, v66, v43
	v_mul_f32_e32 v26, v137, v29
	v_mul_f32_e32 v85, v65, v56
	v_dual_mul_f32 v67, v63, v94 :: v_dual_mul_f32 v52, v57, v52
	v_dual_mul_f32 v66, v64, v93 :: v_dual_mul_f32 v65, v69, v51
	v_mul_f32_e32 v63, v71, v97
	v_dual_mul_f32 v51, v58, v101 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v27
	v_mul_f32_e32 v13, v136, v30
	v_dual_mul_f32 v25, v138, v28 :: v_dual_mul_f32 v32, v59, v54
	v_dual_mul_f32 v83, v68, v41 :: v_dual_mul_f32 v56, v74, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v58
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v68, v62, v95
	v_dual_mul_f32 v54, v60, v100 :: v_dual_mul_f32 v69, 0xbfb8aa3b, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v94, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v81, v61, v81 :: v_dual_mul_f32 v62, v72, v96
	v_mul_f32_e32 v53, v75, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v64, v70, v98
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v61, v73, v99 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v70, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v73, 0xbfb8aa3b, v84
	v_dual_mul_f32 v96, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v91, 0xbfb8aa3b, v65
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v69
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v55, v76, v92 :: v_dual_mul_f32 v28, v77, v105
	v_dual_mul_f32 v29, v78, v104 :: v_dual_mul_f32 v72, 0xbfb8aa3b, v83
	v_dual_mul_f32 v31, v80, v102 :: v_dual_mul_f32 v74, 0xbfb8aa3b, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v59, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v80, 0xbfb8aa3b, v63
	v_dual_mul_f32 v71, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v53
	v_mul_f32_e32 v78, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	v_cndmask_b32_e64 v69, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v70
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v96
	v_exp_f32_e32 v58, v58
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	v_dual_mul_f32 v57, 0xbfb8aa3b, v87 :: v_dual_mul_f32 v90, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v73
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v80
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v92
	v_dual_mul_f32 v41, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v76, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v70, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v91
	v_cndmask_b32_e64 v96, 0, 0x42800000, s26
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v60, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	v_cndmask_b32_e64 v73, 0, 0x42800000, s8
	v_cndmask_b32_e64 v80, 0, 0x42800000, s17
	v_cndmask_b32_e64 v92, 0, 0x42800000, s22
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v88
	v_dual_mul_f32 v95, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v72
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v76
	v_cndmask_b32_e64 v91, 0, 0x42800000, s15
	v_fmac_f32_e32 v96, 0xbfb8aa3b, v54
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v58, v58, v107
	v_dual_mul_f32 v93, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v74
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v94
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v84 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v53
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v63
	v_exp_f32_e32 v43, v43
	v_dual_mul_f32 v77, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v100, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v72, 0, 0x42800000, s9
	v_cndmask_b32_e64 v76, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v90
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v91, 0xbfb8aa3b, v65 :: v_dual_add_f32 v58, 1.0, v58
	v_exp_f32_e32 v70, v70
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v30, v79, v103 :: v_dual_mul_f32 v75, 0xbfb8aa3b, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v98, 0xbfb8aa3b, v51
	v_exp_f32_e32 v60, v60
	v_dual_mul_f32 v79, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v74, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v71
	v_cndmask_b32_e64 v94, 0, 0x42800000, s20
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v87
	v_exp_f32_e32 v92, v92
	v_dual_mul_f32 v99, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v83
	v_dual_mul_f32 v103, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v76, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v77
	v_cndmask_b32_e64 v90, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v95
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s6
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v69, v69, v110
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v110, null, v58, v58, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v78
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v75
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s4
	v_dual_mul_f32 v97, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v74, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v71, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v102
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s22
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v43, v43, v105
	v_cndmask_b32_e64 v77, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v79
	v_cndmask_b32_e64 v95, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v100
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v90, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s8
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v76, v76
	v_ldexp_f32 v70, v70, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v168, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, s11
	v_mul_f32_e32 v101, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v75, 0, 0x42800000, s14
	v_ldexp_f32 v60, v60, v109
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v93
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v98
	v_cndmask_b32_e64 v102, 0, 0x42800000, s28
	v_cndmask_b32_e64 v106, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v82
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v92, v92, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v79, 0, 0x42800000, s18
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v97
	v_cndmask_b32_e64 v100, 0, 0x42800000, s30
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s13
	v_dual_fmac_f32 v95, 0xbfb8aa3b, v61 :: v_dual_add_f32 v70, 1.0, v70
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v73, v73, v113
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v101
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v66 :: v_dual_add_f32 v60, 1.0, v60
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	v_cndmask_b32_e64 v93, 0, 0x42800000, s21
	v_cndmask_b32_e64 v98, 0, 0x42800000, s24
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v29
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v57, v57, v106
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v106, null, v43, v43, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v97, 0, 0x42800000, s25
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s17
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v31
	v_exp_f32_e32 v77, v77
	v_ldexp_f32 v72, v72, v114
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v62
	v_ldexp_f32 v76, v76, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, null, v70, v70, v86
	v_fma_f32 v197, -v110, v168, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v101, 0, 0x42800000, s29
	v_exp_f32_e32 v75, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v114, null, v60, v60, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v98, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s10
	v_ldexp_f32 v74, v74, v112
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v166, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s12
	v_ldexp_f32 v90, v90, v121
	v_fmac_f32_e32 v97, 0xbfb8aa3b, v32
	v_ldexp_f32 v80, v80, v122
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v79, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v172, v118
	v_fmac_f32_e32 v168, v197, v168
	v_div_scale_f32 v122, null, v73, v73, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s14
	v_dual_fmac_f32 v101, 0xbfb8aa3b, v30 :: v_dual_add_f32 v76, 1.0, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v170, v114
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v103
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v98, v98
	v_ldexp_f32 v71, v71, v115
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v93, v93
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v99
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s18
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v77, v77, v117
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v97, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v174, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v101, v101
	v_ldexp_f32 v75, v75, v119
	v_cndmask_b32_e64 v103, 0, 0x42800000, s27
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s20
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s24
	v_exp_f32_e32 v102, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v195, -v106, v166, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v99, 0, 0x42800000, s23
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s25
	v_ldexp_f32 v79, v79, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v201, -v118, v172, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v199, -v114, v170, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s28
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v41, v41, v104
	v_ldexp_f32 v59, v59, v108
	v_ldexp_f32 v94, v94, v125
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v28
	v_ldexp_f32 v93, v93, v126
	v_ldexp_f32 v98, v98, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v166, v195, v166
	v_div_scale_f32 v126, null, v71, v71, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v78, v78, v116
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v52
	v_ldexp_f32 v97, v97, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v203, -v122, v174, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v79, 1.0, v79 :: v_dual_fmac_f32 v172, v201, v172
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v130, null, v77, v77, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v95, v95
	v_ldexp_f32 v96, v96, v132
	v_ldexp_f32 v101, v101, v136
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_fmac_f32 v170, v199, v170
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v136, null, v75, v75, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s15
	v_ldexp_f32 v102, v102, v135
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_add_f32 v80, 1.0, v80
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_add_f32 v98, 1.0, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_add_f32 v102, 1.0, v102
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v103, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v176, v126
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v99, v99
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v178, v130
	v_fmac_f32_e32 v174, v203, v174
	v_div_scale_f32 v145, null, v79, v79, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s19
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v108, null, v57, v57, v87
	v_rcp_f32_e32 v180, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s27
	v_ldexp_f32 v91, v91, v120
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v104, null, v41, v41, v89
	v_div_scale_f32 v116, null, v69, v69, v13
	v_div_scale_f32 v157, null, v98, v98, v51
	v_div_scale_f32 v141, null, v90, v90, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v184, v145
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v95, v95, v124
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v112, null, v59, v59, v25
	v_div_scale_f32 v124, null, v72, v72, v83
	v_div_scale_f32 v161, null, v96, v96, v54
	v_rcp_f32_e32 v167, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v103, v103, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v120, null, v74, v74, v85
	v_div_scale_f32 v134, null, v76, v76, v67
	v_rcp_f32_e32 v165, v104
	v_rcp_f32_e32 v171, v116
	v_rcp_f32_e32 v190, v157
	v_fma_f32 v205, -v126, v176, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v182, v141
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v99, v99, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v207, -v130, v178, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v128, null, v78, v78, v81
	v_div_scale_f32 v143, null, v80, v80, v63
	v_rcp_f32_e32 v169, v112
	v_rcp_f32_e32 v175, v124
	v_rcp_f32_e32 v192, v161
	v_fma_f32 v209, -v136, v180, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v95, 1.0, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v173, v120
	v_rcp_f32_e32 v179, v134
	v_fmac_f32_e32 v176, v205, v176
	v_div_scale_f32 v139, null, v91, v91, v65
	v_fma_f32 v213, -v145, v184, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v99, 1.0, v99 :: v_dual_fmac_f32 v178, v207, v178
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v151, null, v93, v93, v55
	v_rcp_f32_e32 v177, v128
	v_rcp_f32_e32 v183, v143
	v_fma_f32 v196, -v108, v167, 1.0
	v_fmac_f32_e32 v180, v209, v180
	v_div_scale_f32 v147, null, v95, v95, v61
	v_rcp_f32_e32 v181, v139
	v_fma_f32 v194, -v104, v165, 1.0
	v_fma_f32 v200, -v116, v171, 1.0
	v_fma_f32 v219, -v157, v190, 1.0
	v_fma_f32 v211, -v141, v182, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v187, v151
	v_fmac_f32_e32 v184, v213, v184
	v_div_scale_f32 v155, null, v99, v99, v52
	v_div_scale_f32 v109, s26, v87, v57, v87
	v_rcp_f32_e32 v185, v147
	v_fma_f32 v198, -v112, v169, 1.0
	v_fma_f32 v204, -v124, v175, 1.0
	v_fma_f32 v221, -v161, v192, 1.0
	v_fmac_f32_e32 v167, v196, v167
	v_div_scale_f32 v105, vcc_lo, v89, v41, v89
	v_div_scale_f32 v117, s21, v13, v69, v13
	v_fma_f32 v202, -v120, v173, 1.0
	v_fma_f32 v208, -v134, v179, 1.0
	v_dual_fmac_f32 v165, v194, v165 :: v_dual_fmac_f32 v190, v219, v190
	v_dual_fmac_f32 v171, v200, v171 :: v_dual_fmac_f32 v182, v211, v182
	v_div_scale_f32 v159, null, v97, v97, v32
	v_rcp_f32_e32 v189, v155
	v_div_scale_f32 v113, s23, v25, v59, v25
	v_div_scale_f32 v125, s17, v83, v72, v83
	v_fma_f32 v206, -v128, v177, 1.0
	v_fma_f32 v212, -v143, v183, 1.0
	v_dual_fmac_f32 v192, v221, v192 :: v_dual_fmac_f32 v169, v198, v169
	v_mul_f32_e32 v196, v109, v167
	v_fmac_f32_e32 v175, v204, v175
	v_div_scale_f32 v107, s25, v88, v43, v88
	v_div_scale_f32 v121, s19, v85, v74, v85
	v_div_scale_f32 v135, s13, v67, v76, v67
	v_fma_f32 v210, -v139, v181, 1.0
	v_mul_f32_e32 v194, v105, v165
	v_dual_fmac_f32 v173, v202, v173 :: v_dual_mul_f32 v200, v117, v171
	v_fmac_f32_e32 v179, v208, v179
	v_rcp_f32_e32 v191, v159
	v_fma_f32 v216, -v151, v187, 1.0
	v_div_scale_f32 v111, s24, v27, v58, v27
	v_div_scale_f32 v129, s15, v81, v78, v81
	v_div_scale_f32 v144, s9, v63, v80, v63
	v_fma_f32 v214, -v147, v185, 1.0
	v_mul_f32_e32 v198, v113, v169
	v_dual_fmac_f32 v177, v206, v177 :: v_dual_mul_f32 v204, v125, v175
	v_fmac_f32_e32 v183, v212, v183
	v_div_scale_f32 v140, s11, v65, v91, v65
	v_mul_f32_e32 v202, v121, v173
	v_dual_fmac_f32 v181, v210, v181 :: v_dual_mul_f32 v208, v135, v179
	v_mul_f32_e32 v195, v107, v166
	v_fma_f32 v222, -v104, v194, v105
	v_div_scale_f32 v115, s22, v26, v60, v26
	v_div_scale_f32 v152, s5, v55, v93, v55
	v_fma_f32 v218, -v155, v189, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v187, v216, v187 :: v_dual_fmac_f32 v194, v222, v165
	v_div_scale_f32 v148, s7, v61, v95, v61
	v_mul_f32_e32 v206, v129, v177
	v_dual_fmac_f32 v185, v214, v185 :: v_dual_mul_f32 v212, v144, v183
	v_dual_mul_f32 v197, v111, v168 :: v_dual_mul_f32 v210, v140, v181
	v_fma_f32 v223, -v106, v195, v107
	v_div_scale_f32 v119, s20, v86, v70, v86
	v_div_scale_f32 v123, s18, v84, v73, v84
	v_fma_f32 v220, -v159, v191, 1.0
	v_fma_f32 v224, -v108, v196, v109
	v_fma_f32 v226, -v112, v198, v113
	v_div_scale_f32 v156, s3, v52, v99, v52
	v_dual_fmac_f32 v189, v218, v189 :: v_dual_mul_f32 v216, v152, v187
	v_dual_mul_f32 v199, v115, v170 :: v_dual_mul_f32 v214, v148, v185
	v_fma_f32 v225, -v110, v197, v111
	v_fma_f32 v234, -v128, v206, v129
	v_fmac_f32_e32 v195, v223, v166
	v_div_scale_f32 v160, s1, v32, v97, v32
	v_dual_fmac_f32 v191, v220, v191 :: v_dual_fmac_f32 v198, v226, v169
	v_mul_f32_e32 v201, v119, v172
	v_dual_mul_f32 v203, v123, v174 :: v_dual_fmac_f32 v196, v224, v167
	v_fma_f32 v104, -v104, v194, v105
	v_mul_f32_e32 v218, v156, v189
	v_fma_f32 v227, -v114, v199, v115
	v_fma_f32 v238, -v139, v210, v140
	v_fmac_f32_e32 v197, v225, v168
	v_div_scale_f32 v127, s16, v82, v71, v82
	v_fma_f32 v228, -v116, v200, v117
	v_fmac_f32_e32 v206, v234, v177
	v_fma_f32 v105, -v106, v195, v107
	v_mul_f32_e32 v220, v160, v191
	v_fma_f32 v229, -v118, v201, v119
	v_fma_f32 v106, -v108, v196, v109
	v_div_fmas_f32 v104, v104, v165, v194
	v_fma_f32 v242, -v147, v214, v148
	v_fmac_f32_e32 v199, v227, v170
	s_mov_b32 vcc_lo, s25
	v_fmac_f32_e32 v210, v238, v181
	v_fma_f32 v107, -v110, v197, v111
	v_dual_mul_f32 v205, v127, v176 :: v_dual_fmac_f32 v200, v228, v171
	v_div_fmas_f32 v105, v105, v166, v195
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v132, s14, v68, v77, v68
	v_fma_f32 v230, -v120, v202, v121
	v_fma_f32 v108, -v112, v198, v113
	v_div_fmas_f32 v106, v106, v167, v196
	v_div_fixup_f32 v41, v104, v41, v89
	v_fmac_f32_e32 v201, v229, v172
	s_mov_b32 vcc_lo, s24
	v_fmac_f32_e32 v214, v242, v185
	v_fma_f32 v109, -v114, v199, v115
	v_div_fmas_f32 v89, v107, v168, v197
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v110, -v116, v200, v117
	v_dual_mul_f32 v207, v132, v178 :: v_dual_fmac_f32 v202, v230, v173
	v_div_fixup_f32 v43, v105, v43, v88
	v_div_fmas_f32 v88, v108, v169, v198
	s_mov_b32 vcc_lo, s22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v50, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v111, -v118, v201, v119
	v_fma_f32 v231, -v122, v203, v123
	v_div_fixup_f32 v57, v106, v57, v87
	v_div_fmas_f32 v87, v109, v170, v199
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v138, s12, v66, v75, v66
	v_fma_f32 v232, -v124, v204, v125
	v_div_fixup_f32 v41, v89, v58, v27
	v_div_fmas_f32 v58, v110, v171, v200
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v162, s2, v54, v96, v54
	v_fma_f32 v112, -v120, v202, v121
	v_fma_f32 v233, -v126, v205, v127
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v49, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v88, v59, v25
	v_div_fmas_f32 v49, v111, v172, v201
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v48, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v48, v87, v60, v26
	v_fmac_f32_e32 v203, v231, v174
	s_mov_b32 vcc_lo, s19
	v_dual_mul_f32 v209, v138, v180 :: v_dual_fmac_f32 v204, v232, v175
	v_dual_mul_f32 v221, v162, v192 :: v_dual_mul_f32 v26, v47, v41
	v_fma_f32 v235, -v130, v207, v132
	v_div_fmas_f32 v41, v112, v173, v202
	v_div_scale_f32 v153, null, v92, v92, v53
	v_div_fixup_f32 v47, v58, v69, v13
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v46, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v49, v70, v86
	v_fmac_f32_e32 v205, v233, v176
	v_div_scale_f32 v142, s10, v64, v90, v64
	v_fma_f32 v236, -v134, v208, v135
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v113, -v122, v203, v123
	v_fma_f32 v114, -v124, v204, v125
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v41, v41, v74, v85
	v_fmac_f32_e32 v207, v235, v178
	v_rcp_f32_e32 v188, v153
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v115, -v126, v205, v127
	v_dual_mul_f32 v211, v142, v182 :: v_dual_fmac_f32 v208, v236, v179
	v_div_fmas_f32 v43, v113, v174, v203
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v116, -v128, v206, v129
	v_div_fmas_f32 v48, v114, v175, v204
	s_mov_b32 vcc_lo, s16
	v_div_scale_f32 v149, null, v94, v94, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v117, -v130, v207, v132
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v115, v176, v205
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v118, -v134, v208, v135
	v_div_fixup_f32 v43, v43, v73, v84
	v_div_fmas_f32 v46, v116, v177, v206
	s_mov_b32 vcc_lo, s14
	v_div_scale_f32 v146, s8, v62, v79, v62
	v_rcp_f32_e32 v186, v149
	v_div_fmas_f32 v41, v117, v178, v207
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v217, -v153, v188, 1.0
	v_fma_f32 v237, -v136, v209, v138
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v39, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v118, v179, v208
	v_fma_f32 v240, -v143, v212, v144
	v_mul_f32_e32 v213, v146, v184
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v103, 1.0, v103 :: v_dual_fmac_f32 v188, v217, v188
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v154, s4, v53, v92, v53
	v_fma_f32 v239, -v141, v211, v142
	v_div_fixup_f32 v43, v43, v76, v67
	v_fmac_f32_e32 v209, v237, v180
	v_fma_f32 v215, -v149, v186, 1.0
	v_fmac_f32_e32 v212, v240, v183
	v_fma_f32 v241, -v145, v213, v146
	v_fma_f32 v225, -v155, v218, v156
	v_mul_f32_e32 v217, v154, v188
	v_div_fixup_f32 v48, v48, v72, v83
	v_dual_fmac_f32 v211, v239, v182 :: v_dual_mul_f32 v34, v34, v43
	v_fma_f32 v119, -v136, v209, v138
	v_fma_f32 v120, -v139, v210, v140
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v101, 1.0, v101 :: v_dual_fmac_f32 v186, v215, v186
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v150, s6, v56, v94, v56
	v_fmac_f32_e32 v213, v241, v184
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v218, v225, v189
	v_fma_f32 v224, -v153, v217, v154
	v_div_fixup_f32 v47, v47, v71, v82
	v_div_fixup_f32 v46, v46, v78, v81
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v38, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v121, -v141, v211, v142
	v_div_fmas_f32 v48, v119, v180, v209
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v122, -v143, v212, v144
	v_div_fmas_f32 v49, v120, v181, v210
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v223, -v151, v216, v152
	v_mul_f32_e32 v215, v150, v186
	v_fma_f32 v123, -v145, v213, v146
	v_fmac_f32_e32 v217, v224, v188
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v47, v36, v47 :: v_dual_mul_f32 v36, v37, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v121, v182, v211
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v158, s0, v51, v98, v51
	v_div_fixup_f32 v46, v48, v75, v66
	v_div_fmas_f32 v48, v122, v183, v212
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v216, v223, v187
	v_fma_f32 v222, -v149, v215, v150
	v_div_fmas_f32 v43, v123, v184, v213
	v_fma_f32 v227, -v159, v220, v160
	v_mul_f32_e32 v219, v158, v190
	v_div_fixup_f32 v41, v41, v77, v68
	v_div_fixup_f32 v49, v49, v91, v65
	v_div_fixup_f32 v48, v48, v80, v63
	v_div_fixup_f32 v43, v43, v79, v62
	v_dual_fmac_f32 v215, v222, v186 :: v_dual_fmac_f32 v220, v227, v191
	v_fma_f32 v226, -v157, v219, v158
	v_fma_f32 v124, -v147, v214, v148
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v35, v41
	v_mul_f32_e32 v35, v33, v46
	v_dual_mul_f32 v33, v24, v49 :: v_dual_mul_f32 v24, v22, v48
	v_mul_f32_e32 v22, v21, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v125, -v149, v215, v150
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v228, -v161, v221, v162
	v_fma_f32 v126, -v151, v216, v152
	v_div_fixup_f32 v37, v37, v90, v64
	v_fmac_f32_e32 v219, v226, v190
	v_div_fmas_f32 v46, v124, v185, v214
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v127, -v153, v217, v154
	v_div_fmas_f32 v49, v125, v186, v215
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v128, -v155, v218, v156
	v_fmac_f32_e32 v221, v228, v192
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v126, v187, v216
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v129, -v157, v219, v158
	v_div_fmas_f32 v48, v127, v188, v217
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v130, -v159, v220, v160
	v_div_fmas_f32 v43, v128, v189, v218
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v132, -v161, v221, v162
	v_div_fixup_f32 v37, v37, v93, v55
	v_div_fmas_f32 v55, v129, v190, v219
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v49, v49, v94, v56
	v_div_fmas_f32 v56, v130, v191, v220
	s_mov_b32 vcc_lo, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v100, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v46, v95, v61
	v_div_fmas_f32 v57, v132, v192, v221
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v163, null, v103, v103, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v19, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v48, v92, v53
	v_div_fixup_f32 v48, v57, v96, v54
	v_div_fixup_f32 v43, v43, v99, v52
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v20, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v193, v163
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v14, v46
	v_mul_f32_e32 v14, v18, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v100, v137
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v55, v98, v51
	v_div_scale_f32 v164, null, v102, v102, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v56, v97, v32
	v_div_scale_f32 v46, null, v101, v101, v30
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v18, v18, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v32, v164
	v_rcp_f32_e32 v49, v46
	v_fma_f32 v48, -v163, v193, 1.0
	v_rcp_f32_e32 v52, v37
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v1, v43
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v193, v48, v193
	v_div_scale_f32 v48, vcc_lo, v28, v103, v28
	v_fma_f32 v51, -v164, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v46, v49, 1.0
	v_mul_f32_e32 v54, v48, v193
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v37, v52, 1.0
	v_fmac_f32_e32 v32, v51, v32
	v_div_scale_f32 v51, s0, v29, v102, v29
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s1, v30, v101, v30
	v_fma_f32 v56, -v163, v54, v48
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v55, s2, v31, v18, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v57, v51, v32 :: v_dual_mul_f32 v58, v53, v49
	v_fmac_f32_e32 v54, v56, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v55, v52
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v40|, |v39|
.Ltmp21:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v164, v57, v51
	v_fma_f32 v59, -v46, v58, v53
	v_fma_f32 v45, -v163, v54, v48
	v_fma_f32 v48, -v37, v60, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v56, v32 :: v_dual_fmac_f32 v58, v59, v49
	v_div_fmas_f32 v45, v45, v193, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v48, v52
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v51, -v164, v57, v51
	v_fma_f32 v46, -v46, v58, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v37, v60, v55
	v_div_fmas_f32 v32, v51, v32, v57
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v49, v58
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v32, v102, v29
	v_div_fmas_f32 v37, v37, v52, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v46, v101, v30
	v_div_fixup_f32 v5, v37, v18, v31
	v_div_fixup_f32 v18, v45, v103, v28
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v28, |v21|, |v19|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v4, v4, v5 :: v_dual_mul_f32 v5, v9, v10
	v_dual_mul_f32 v9, v3, v11 :: v_dual_mul_f32 v10, v2, v18
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, |v38|, |v36|, |v41|
	v_max3_f32 v11, |v33|, |v23|, |v24|
	v_max3_f32 v18, |v22|, |v27|, |v25|
	v_max3_f32 v3, |v34|, |v35|, |v50|
	v_max3_f32 v29, |v17|, |v12|, |v16|
	v_max3_f32 v30, |v10|, |v9|, |v5|
	v_max3_f32 v31, |v4|, |v6|, |v7|
	v_max3_f32 v1, v1, |v47|, v2
	v_max3_f32 v2, v11, v18, |v26|
	v_max3_f32 v11, |v15|, |v14|, |v13|
	v_max3_f32 v18, v28, |v20|, v29
	v_max3_f32 v28, v30, v31, |v8|
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v29, 8, v0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v3, v2
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v3, 7, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v18, v11, v28
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v11, v1, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v28, 4, v3
	v_lshl_add_u32 v3, v3, 7, 0
	v_permlanex16_b32 v18, v2, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v30, v42, 2, v28
	v_xor_b32_e32 v28, v28, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v1, v1, v11
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v11, v30, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v3, v28, v29
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v18
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v18, 2, v42
	v_lshlrev_b32_e32 v30, 3, v29
	v_add3_u32 v11, 0, v29, v11
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v11, v2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
	v_dual_max_f32 v2, v2, v11 :: v_dual_mov_b32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v11, v2
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v2, v11 :: v_dual_mov_b32 v2, v1
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v11, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v11, v11, v11
	v_max_f32_e32 v28, v1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v29, v3, v11 :: v_dual_lshlrev_b32 v2, 3, v133
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, 0, v30, v18
	v_add_nc_u32_e32 v3, 0, v2
	ds_store_b64 v1, v[28:29]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[28:29], v3
.Ltmp44:
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v1, v28, v28
	v_max_f32_e32 v3, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v32, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v11
	v_rcp_f32_e32 v29, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v11, v28, 1.0
	v_fma_f32 v31, -v18, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, s0, v3, 0x40e00000, v3
	v_fmac_f32_e32 v29, v31, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v32, v28
	v_mul_f32_e32 v37, v30, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v11, v31, v32
	v_fma_f32 v45, -v18, v37, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v43, v28
	v_fmac_f32_e32 v37, v45, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v11, -v11, v31, v32
	v_fma_f32 v18, -v18, v37, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v11, v28, v31
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v18, v18, v29, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v11, 0x40e00000, v1
	v_div_fixup_f32 v3, v18, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v11, v1, 16, 1
	v_bfe_u32 v18, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v1, v11, 0x7fff
	v_mov_b16_e32 v1.h, 0
	v_add3_u32 v18, v3, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 0xffff0000, v11
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v1.l, v11.h
	v_mov_b16_e32 v3.h, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v18.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v11, 0xffff0000, v18
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v18, null, v37, v37, v40
	v_div_scale_f32 v29, null, v37, v37, v39
	v_div_scale_f32 v31, null, v37, v37, v47
	v_rcp_f32_e32 v55, v18
	v_div_scale_f32 v43, null, v37, v37, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v56, v29
	v_rcp_f32_e32 v57, v31
	v_div_scale_f32 v54, null, v37, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v58, v43
	v_div_scale_f32 v46, null, v37, v37, v36
	v_rcp_f32_e32 v62, v54
	v_fma_f32 v64, -v18, v55, 1.0
	v_div_scale_f32 v28, vcc_lo, v40, v37, v40
	v_fma_f32 v65, -v29, v56, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v31, v57, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_rcp_f32_e32 v59, v46
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v67, -v43, v58, 1.0
	v_div_scale_f32 v30, s0, v39, v37, v39
	v_fmac_f32_e32 v56, v65, v56
	v_div_scale_f32 v32, s1, v47, v37, v47
	v_fmac_f32_e32 v57, v66, v57
	v_fma_f32 v71, -v54, v62, 1.0
	v_mul_f32_e32 v64, v28, v55
	v_div_scale_f32 v45, s2, v38, v37, v38
	v_div_scale_f32 v49, null, v37, v37, v41
	v_div_scale_f32 v52, null, v37, v37, v34
	v_dual_fmac_f32 v58, v67, v58 :: v_dual_mul_f32 v65, v30, v56
	v_mul_f32_e32 v66, v32, v57
	v_fmac_f32_e32 v62, v71, v62
	v_fma_f32 v71, -v18, v64, v28
	v_rcp_f32_e32 v60, v49
	v_rcp_f32_e32 v61, v52
	v_fma_f32 v68, -v46, v59, 1.0
	v_mul_f32_e32 v67, v45, v58
	v_fma_f32 v72, -v29, v65, v30
	v_fma_f32 v73, -v31, v66, v32
	v_fmac_f32_e32 v64, v71, v55
	v_div_scale_f32 v48, s3, v36, v37, v36
	v_fmac_f32_e32 v59, v68, v59
	v_fma_f32 v74, -v43, v67, v45
	v_dual_fmac_f32 v65, v72, v56 :: v_dual_fmac_f32 v66, v73, v57
	v_fma_f32 v18, -v18, v64, v28
	v_fma_f32 v69, -v49, v60, 1.0
	v_fma_f32 v70, -v52, v61, 1.0
	v_dual_mul_f32 v68, v48, v59 :: v_dual_fmac_f32 v67, v74, v58
	v_fma_f32 v28, -v29, v65, v30
	v_fma_f32 v29, -v31, v66, v32
	v_div_fmas_f32 v18, v18, v55, v64
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, s4, v41, v37, v41
	v_div_scale_f32 v53, s5, v34, v37, v34
	v_dual_fmac_f32 v60, v69, v60 :: v_dual_fmac_f32 v61, v70, v61
	v_fma_f32 v75, -v46, v68, v48
	v_fma_f32 v30, -v43, v67, v45
	v_div_fmas_f32 v28, v28, v56, v65
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v63, null, v37, v37, v50
	v_div_fmas_f32 v29, v29, v57, v66
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v69, v51, v60 :: v_dual_mul_f32 v70, v53, v61
	v_fmac_f32_e32 v68, v75, v59
	v_div_fmas_f32 v30, v30, v58, v67
	v_div_scale_f32 v43, s6, v35, v37, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v49, v69, v51
	v_rcp_f32_e32 v45, v63
	v_fma_f32 v31, -v46, v68, v48
	v_div_fixup_f32 v30, v30, v37, v38
	v_fma_f32 v38, -v52, v70, v53
	v_div_scale_f32 v46, null, v37, v37, v33
	v_fmac_f32_e32 v69, v76, v60
	v_div_fixup_f32 v28, v28, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, v43, v62 :: v_dual_fmac_f32 v70, v38, v61
	v_rcp_f32_e32 v38, v46
	v_div_fixup_f32 v18, v18, v37, v40
	v_div_fixup_f32 v29, v29, v37, v47
	v_fma_f32 v32, -v49, v69, v51
	v_fma_f32 v40, -v63, v45, 1.0
	v_fma_f32 v47, -v54, v39, v43
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v37, v37, v23
	v_div_fmas_f32 v31, v31, v59, v68
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v40, v45
	v_div_fmas_f32 v32, v32, v60, v69
	v_div_scale_f32 v40, s0, v50, v37, v50
	v_fmac_f32_e32 v39, v47, v62
	v_fma_f32 v47, -v46, v38, 1.0
	v_div_fixup_f32 v31, v31, v37, v36
	v_fma_f32 v36, -v52, v70, v53
	v_div_fixup_f32 v32, v32, v37, v41
	v_mul_f32_e32 v41, v40, v45
	v_fma_f32 v43, -v54, v39, v43
	v_fmac_f32_e32 v38, v47, v38
	v_rcp_f32_e32 v47, v48
	v_div_scale_f32 v52, null, v37, v37, v24
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v49, -v63, v41, v40
	v_div_fmas_f32 v36, v36, v61, v70
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v51, s1, v33, v37, v33
	v_div_fmas_f32 v39, v43, v62, v39
	v_rcp_f32_e32 v43, v52
	v_fmac_f32_e32 v41, v49, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v49, v51, v38
	v_fma_f32 v53, -v48, v47, 1.0
	v_div_fixup_f32 v34, v36, v37, v34
	v_div_fixup_f32 v35, v39, v37, v35
	v_fma_f32 v36, -v63, v41, v40
	v_fma_f32 v39, -v46, v49, v51
	v_fmac_f32_e32 v47, v53, v47
	v_div_scale_f32 v40, s2, v23, v37, v23
	v_fma_f32 v53, -v52, v43, 1.0
	v_div_scale_f32 v54, null, v37, v37, v22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v49, v39, v38
	v_div_fmas_f32 v36, v36, v45, v41
	v_mul_f32_e32 v39, v40, v47
	v_fmac_f32_e32 v43, v53, v43
	v_rcp_f32_e32 v41, v54
	v_div_scale_f32 v45, s0, v24, v37, v24
	v_div_scale_f32 v53, null, v37, v37, v27
	v_div_fixup_f32 v36, v36, v37, v50
	v_fma_f32 v46, -v46, v49, v51
	v_fma_f32 v50, -v48, v39, v40
	v_mul_f32_e32 v51, v45, v43
	v_rcp_f32_e32 v55, v53
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v56, -v54, v41, 1.0
	v_div_fmas_f32 v38, v46, v38, v49
	v_fmac_f32_e32 v39, v50, v47
	v_fma_f32 v46, -v52, v51, v45
	v_div_scale_f32 v49, s1, v22, v37, v22
	v_fmac_f32_e32 v41, v56, v41
	v_div_fixup_f32 v33, v38, v37, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v53, v55, 1.0
	v_fma_f32 v38, -v48, v39, v40
	v_fmac_f32_e32 v51, v46, v43
	v_div_scale_f32 v48, null, v37, v37, v25
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v40, v49, v41 :: v_dual_fmac_f32 v55, v50, v55
	v_div_scale_f32 v46, s3, v27, v37, v27
	v_div_fmas_f32 v38, v38, v47, v39
	v_fma_f32 v39, -v52, v51, v45
	v_rcp_f32_e32 v47, v48
	v_div_scale_f32 v52, null, v37, v37, v26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v45, -v54, v40, v49
	v_mul_f32_e32 v50, v46, v55
	v_div_fmas_f32 v39, v39, v43, v51
	v_rcp_f32_e32 v43, v52
	v_div_fixup_f32 v23, v38, v37, v23
	v_fmac_f32_e32 v40, v45, v41
	v_fma_f32 v45, -v53, v50, v46
	v_fma_f32 v51, -v48, v47, 1.0
	v_div_fixup_f32 v24, v39, v37, v24
	v_div_scale_f32 v39, s0, v25, v37, v25
	v_fma_f32 v38, -v54, v40, v49
	v_fmac_f32_e32 v50, v45, v55
	v_fmac_f32_e32 v47, v51, v47
	v_fma_f32 v45, -v52, v43, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v41, v40
	v_fma_f32 v40, -v53, v50, v46
	v_mul_f32_e32 v41, v39, v47
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, null, v11, v11, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s1, v26, v37, v26
	v_div_fmas_f32 v40, v40, v55, v50
	v_rcp_f32_e32 v49, v45
	v_fma_f32 v50, -v48, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v46, v43
	v_div_scale_f32 v53, null, v11, v11, v19
	v_div_fixup_f32 v22, v38, v37, v22
	v_fmac_f32_e32 v41, v50, v47
	v_div_fixup_f32 v27, v40, v37, v27
	v_fma_f32 v38, -v52, v51, v46
	v_rcp_f32_e32 v40, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v45, v49, 1.0
	v_fma_f32 v39, -v48, v41, v39
	v_div_scale_f32 v48, null, v11, v11, v20
	v_fmac_f32_e32 v51, v38, v43
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v38, s2, v21, v11, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v48
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v53, v40, 1.0
	v_div_fmas_f32 v39, v39, v47, v41
	v_fma_f32 v41, -v52, v51, v46
	v_mul_f32_e32 v46, v38, v49
	v_div_scale_f32 v55, null, v11, v11, v17
	v_fmac_f32_e32 v40, v54, v40
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v48, v50, 1.0
	v_fma_f32 v54, -v45, v46, v38
	v_div_scale_f32 v47, s0, v19, v11, v19
	v_rcp_f32_e32 v57, v55
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s3, v20, v11, v20
	v_div_fmas_f32 v41, v41, v43, v51
	v_fmac_f32_e32 v46, v54, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v47, v40 :: v_dual_mul_f32 v51, v52, v50
	v_div_fixup_f32 v25, v39, v37, v25
	v_div_fixup_f32 v26, v41, v37, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v45, v46, v38
	v_div_scale_f32 v41, null, v11, v11, v12
	v_fma_f32 v38, -v48, v51, v52
	v_fma_f32 v43, -v53, v56, v47
	v_fma_f32 v39, -v55, v57, 1.0
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v38, v50
	v_rcp_f32_e32 v38, v41
	v_fmac_f32_e32 v56, v43, v40
	v_fmac_f32_e32 v57, v39, v57
	v_div_scale_f32 v39, s1, v17, v11, v17
	v_div_fmas_f32 v37, v37, v49, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v53, v56, v47
	v_div_scale_f32 v46, null, v11, v11, v16
	v_mul_f32_e32 v45, v39, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v41, v38, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v37, v11, v21
	v_div_fmas_f32 v40, v43, v40, v56
	v_fma_f32 v43, -v48, v51, v52
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v55, v45, v39
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, s0, v12, v11, v12
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v49, v57
	v_div_fmas_f32 v43, v43, v50, v51
	v_mul_f32_e32 v37, v47, v38
	v_div_fixup_f32 v19, v40, v11, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v46, v48, 1.0
	v_fma_f32 v39, -v55, v45, v39
	v_div_fixup_f32 v20, v43, v11, v20
	v_div_scale_f32 v43, null, v11, v11, v15
	v_fma_f32 v49, -v41, v37, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v48, v40, v48
	v_div_scale_f32 v40, s2, v16, v11, v16
	v_rcp_f32_e32 v50, v43
	v_div_fmas_f32 v39, v39, v57, v45
	v_fmac_f32_e32 v37, v49, v38
	v_div_scale_f32 v49, null, v11, v11, v14
	v_mul_f32_e32 v45, v40, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v39, v11, v17
	v_fma_f32 v39, -v41, v37, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v49
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v46, v45, v40
	v_fma_f32 v47, -v43, v50, 1.0
	v_div_fmas_f32 v37, v39, v38, v37
	v_div_scale_f32 v39, s0, v15, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v41, v48 :: v_dual_fmac_f32 v50, v47, v50
	v_div_fixup_f32 v12, v37, v11, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v49, v51, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v40, -v46, v45, v40
	v_mul_f32_e32 v46, v39, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v37, s1, v14, v11, v14
	v_div_fmas_f32 v40, v40, v48, v45
	v_fma_f32 v45, -v43, v46, v39
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v48, v37, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v45, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v45, -v49, v48, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v43, v46, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v48, v45, v51
	v_div_scale_f32 v38, null, v11, v11, v13
	v_div_scale_f32 v47, null, v11, v11, v10
	v_div_scale_f32 v54, s2, v13, v11, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_rcp_f32_e32 v53, v47
	v_div_fixup_f32 v16, v40, v11, v16
	v_fma_f32 v37, -v49, v48, v37
	v_div_fmas_f32 v39, v39, v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v11, v11, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v37, v37, v51, v48
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v52, -v38, v41, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v14, v37, v11, v14
	v_div_fixup_f32 v15, v39, v11, v15
	v_fmac_f32_e32 v41, v52, v41
	v_div_scale_f32 v52, null, v11, v11, v9
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s3, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v52
	v_mul_f32_e32 v57, v54, v41
	v_fma_f32 v39, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v55, v53
	v_div_scale_f32 v50, null, v11, v11, v8
	v_fma_f32 v40, -v38, v57, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v39, v48
	v_div_scale_f32 v39, null, v11, v11, v6
	v_fma_f32 v45, -v52, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, v40, v41
	v_fma_f32 v40, -v47, v43, v55
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s0, v9, v11, v9
	v_fma_f32 v38, -v38, v57, v54
	v_fmac_f32_e32 v43, v40, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v40, v45, v56
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v41, v57
	v_fma_f32 v41, -v47, v43, v55
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v47, -v52, v40, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v38, v11, v13
	v_div_scale_f32 v38, null, v11, v11, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v47, v56
	v_div_fmas_f32 v41, v41, v53, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v37, -v52, v40, v45
	v_div_fixup_f32 v10, v41, v11, v10
	v_div_scale_f32 v41, null, v11, v11, v7
	v_rcp_f32_e32 v45, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v56, v40
	v_rcp_f32_e32 v40, v38
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v43, vcc_lo, v5, v11, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v9, v37, v11, v9
	v_rcp_f32_e32 v52, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v49, v43, v48
	v_fma_f32 v51, -v39, v45, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v37, -v38, v40, 1.0
	v_fma_f32 v54, -v41, v47, 1.0
	v_fma_f32 v53, -v46, v49, v43
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s1, v6, v11, v6
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, s0, v4, v11, v4
	v_fma_f32 v56, -v50, v52, 1.0
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s2, v7, v11, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v37, v40
	v_fmac_f32_e32 v49, v53, v48
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s3, v8, v11, v8
	v_fma_f32 v53, -v38, v55, v37
	v_dual_mul_f32 v57, v51, v45 :: v_dual_mul_f32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	v_fma_f32 v43, -v46, v49, v43
	v_fmac_f32_e32 v55, v53, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v57, v51
	v_fma_f32 v53, -v41, v58, v54
	v_div_fmas_f32 v43, v43, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v38, v55, v37
	v_fma_f32 v38, -v50, v59, v56
	v_dual_fmac_f32 v57, v46, v45 :: v_dual_fmac_f32 v58, v53, v47
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v5, v43, v11, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v38, v52
	v_fma_f32 v39, -v39, v57, v51
	v_fma_f32 v38, -v41, v58, v54
	v_div_fmas_f32 v37, v37, v40, v55
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v50, v59, v56
	v_div_fmas_f32 v39, v39, v45, v57
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v37, v11, v4
	v_div_fmas_f32 v38, v38, v47, v58
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v39, v11, v6
	v_div_fmas_f32 v40, v40, v52, v59
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v7, v38, v11, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v8, v40, v11, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v18
	v_rndne_f32_e32 v18, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v34
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v46, v10
	v_cvt_i32_f32_e32 v47, v9
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_and_b32_e32 v9, 15, v31
	v_and_b32_e32 v10, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b64 v[31:32], off, off     ; 8-byte Folded Reload
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v36
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v36, v19
	v_and_b32_e32 v19, 15, v26
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 0x60, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v48, v5
	v_cvt_i32_f32_e32 v51, v7
	v_and_b32_e32 v5, 15, v18
	v_and_b32_e32 v7, 15, v29
	v_and_b32_e32 v18, 15, v25
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v25, 10, v0
	v_lshlrev_b32_e32 v29, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v38, v17
	v_cvt_i32_f32_e32 v50, v6
	v_and_b32_e32 v6, 15, v28
	v_and_b32_e32 v17, 15, v27
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 0x1800, v25
	v_and_b32_e32 v28, 0x400, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v37, v20
	v_cvt_i32_f32_e32 v45, v13
	v_cvt_i32_f32_e32 v52, v8
	v_and_b32_e32 v8, 15, v30
	v_and_b32_e32 v13, 15, v33
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 0x100, v44
	v_add3_u32 v33, 0, v27, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v40, v16
	v_cvt_i32_f32_e32 v43, v14
	v_cvt_i32_f32_e32 v49, v4
	v_and_b32_e32 v4, 15, v11
	v_and_b32_e32 v11, 15, v34
	v_and_b32_e32 v14, 15, v23
	v_and_b32_e32 v16, 15, v22
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v23, 15, v38
	v_cvt_i32_f32_e32 v39, v12
	v_cvt_i32_f32_e32 v41, v15
	v_and_b32_e32 v12, 15, v35
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v27, 15, v46
	v_and_b32_e32 v28, 15, v47
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s31, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v24, 15, v39
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v25, 15, v40
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v34, 15, v51
	v_and_b32_e32 v35, 15, v52
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	s_add_i32 s2, s2, s1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_xor_b32_e32 v31, v31, v26
	v_and_b32_e32 v26, 3, v0
	v_add3_u32 v36, v33, v30, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v32, 5, v26
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v45
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v36, v[4:7]
	ds_store_b128 v36, v[12:15] offset:512
	v_and_or_b32 v32, 0x1b00, v29, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v48
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v33, 15, v50
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v37, v32, v243, 0
	ds_load_b128 v[4:7], v37
	ds_load_b128 v[12:15], v37 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[20:23]
	ds_store_b128 v36, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v37
	ds_load_b128 v[28:31], v37 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[8:11]
	ds_store_b128 v36, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v37
	ds_load_b128 v[16:19], v37 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v27, 15, v43
	v_and_b32_e32 v32, 15, v49
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[24:27]
	ds_store_b128 v36, v[32:35] offset:512
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v12, v12, 4, v4
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v37
	ds_load_b128 v[32:35], v37 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v29, 4, v21
	v_lshl_or_b32 v15, v30, 4, v22
	v_lshl_or_b32 v13, v28, 4, v20
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v12.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v11, s0, v131
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v6.h, 0xff, v7.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v31, 4, v23
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v9.l
	v_and_b16 v7.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v7.l, 8, v16.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v11, s2, v2, v11
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_lshlrev_b16 v2.l, 8, v6.l
	v_lshlrev_b16 v6.l, 8, v8.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v21, s0, 4, v11
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s31, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v5.h, v5.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 16, v0
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v6.h, v6.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v34, 4, v26
	v_lshl_or_b32 v20, v35, 4, v27
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v32, 4, v24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v1, v3, vcc_lo
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v6, v6, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v18, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.h, v2.l
	v_or_b16 v8.l, v4.h, v4.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v5, v3, 0, 16
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v4.h, v7.h, v7.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v0.l, 0xff, v13.l
	v_lshlrev_b16 v0.h, 8, v20.l
	v_and_b16 v2.h, 0xff, v19.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v7, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v18.l
	v_and_b16 v3.h, 0xff, v17.l
	v_or_b16 v4.l, v0.l, v2.l
	v_or_b16 v5.h, v2.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	v_cndmask_b32_e32 v1, v7, v1, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[8:9], v11, s[44:47], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v21, s[44:47], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	buffer_store_b16 v1, v0, s[44:47], 0 offen
.Ltmp45:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 12
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 12
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29500
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 12
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.byte	1                               ; Abbrev [1] 0xb:0x86 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x60 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 12
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 2
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
