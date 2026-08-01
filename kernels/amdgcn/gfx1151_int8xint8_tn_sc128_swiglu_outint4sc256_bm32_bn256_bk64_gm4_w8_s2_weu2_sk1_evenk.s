	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v252, 15, v0
	v_and_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v3, 4, v0
	v_or_b32_e32 v154, 0x3f0, v0
	v_or_b32_e32 v153, 0x7f0, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v5, 4, v252
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v2, 3, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s23, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s14, s23, s14
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s14, s19, s12
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s41, s35, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s14, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[75:76], null, s41, v3, v[5:6]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s14, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s12, s13, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s33, s16
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_addk_i32 s13, 0x7f
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s17, s13, 31
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s14, s17, 25
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s40, s2, 5
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s42, s3, 6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v76, v1, v2, s40
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s43, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s13, s13, s14
.Ltmp21:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s41, s42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s12, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[77:78], null, 0x60, s35, v[75:76]
	v_lshl_add_u32 v155, s35, 5, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s14, s43, s19
	v_mov_b32_e32 v4, v5
	v_lshl_add_u32 v156, s35, 6, v75
	v_add_nc_u32_e32 v3, s14, v155
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[1:2], null, s34, s42, v[76:77]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s14, v75
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s14, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	scratch_store_b64 off, v[4:5], off      ; 8-byte Folded Spill
	v_add_nc_u32_e32 v4, s14, v156
	v_add_nc_u32_e32 v5, s14, v77
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s15, v155
	v_add_nc_u32_e32 v7, s15, v156
	v_add_nc_u32_e32 v8, s15, v77
	v_add_nc_u32_e32 v9, s35, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v4, s2
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v16, 0x80000000, v5, s2
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v24, 0x80000000, v6, s2
	v_cndmask_b32_e64 v28, 0x80000000, v7, s2
	v_cndmask_b32_e64 v32, 0x80000000, v8, s2
	v_cndmask_b32_e64 v20, 0x80000000, v9, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[1:2], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x7
	buffer_load_b128 v[4:7], v10, s[20:23], 0 offen
	buffer_load_b128 v[8:11], v3, s[20:23], 0 offen
	buffer_load_b128 v[12:15], v12, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v16, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v20, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v24, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v28, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v32, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v3, 3, v0
	s_mov_b32 s14, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s12, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v157, 0, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v158, v157, v3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v252
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(8)
	ds_store_b64 v157, v[1:2] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v158, v[4:7]
	s_waitcnt vmcnt(6)
	ds_store_b128 v158, v[8:11] offset:4096
	s_waitcnt vmcnt(5)
	ds_store_b128 v158, v[12:15] offset:8192
	s_waitcnt vmcnt(4)
	ds_store_b128 v158, v[16:19] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v158, v[20:23] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v158, v[24:27] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v158, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v158, v[32:35] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow754
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v4, s40, v252
	v_or_b32_e32 v3, s40, v3
	s_ashr_i32 s1, s13, 7
	v_and_b32_e32 v5, 0xf0, v0
	v_mov_b32_e32 v85, 0
	v_mul_lo_u32 v150, v4, s1
	v_mul_lo_u32 v151, v3, s1
	v_or_b32_e32 v74, s43, v0
	v_lshlrev_b32_e32 v4, 1, v0
	v_lshlrev_b32_e32 v3, 5, v0
	v_add_nc_u32_e32 v152, 0, v252
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s12, 6
	s_mov_b32 s12, 0
	v_lshrrev_b32_e32 v1, 1, v0
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v2, 2, v5
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 32, v3
	v_and_or_b32 v1, 0x70, v1, v252
	v_and_b32_e32 v9, 28, v4
	v_lshlrev_b32_e32 v11, 1, v5
	v_add_nc_u32_e32 v160, s35, v74
	v_add3_u32 v10, 0, v2, v3
	v_add_nc_u32_e32 v159, 0, v1
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v161, 0, v154
	v_dual_mov_b32 v3, s14 :: v_dual_add_nc_u32 v162, 0, v153
	v_mov_b32_e32 v2, s13
	v_mov_b32_e32 v4, s15
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v146, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v5, s16
	v_add_nc_u32_e32 v164, 0, v11
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v163, v10, v9
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
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_add_i32 s0, s0, -2
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s13, s12, 1
	s_mov_b32 s14, s42
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s15, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b32 s42, s15, 6
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s42, s34, v[76:77]
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s42, s41
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s16, s43
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 7
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s16, s15, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[78:79], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v152 offset:33184
	ds_load_u8 v10, v152 offset:33152
	ds_load_u8 v11, v152 offset:33248
	ds_load_u8 v12, v152 offset:33216
	ds_load_u8 v13, v152 offset:33056
	ds_load_u8 v14, v152 offset:33024
	ds_load_u8 v15, v152 offset:33120
	ds_load_u8 v16, v152 offset:33088
	ds_load_u8 v17, v152 offset:32928
	ds_load_u8 v18, v152 offset:32896
	ds_load_u8 v19, v152 offset:32992
	ds_load_u8 v20, v152 offset:32960
	ds_load_u8 v21, v152 offset:32864
	ds_load_u8 v22, v152 offset:32832
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s17, s14, s41
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s12, s0
	s_mov_b32 s12, s13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:32768
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v152 offset:32800
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v52, v11, 16, v9
	ds_load_u8 v9, v159 offset:3328
	ds_load_u8 v11, v159 offset:3072
	ds_load_u8 v16, v159 offset:3584
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v51, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v14, v159 offset:3840
	ds_load_u8 v18, v159 offset:2816
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	v_lshl_or_b32 v50, v15, 16, v13
	ds_load_u8 v13, v159 offset:2304
	ds_load_u8 v15, v159 offset:2048
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v159 offset:1280
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v159 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v159 offset:1792
	v_lshl_or_b32 v28, v14, 16, v9
	ds_load_u8 v14, v159 offset:512
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v159 offset:2560
	v_lshl_or_b32 v49, v17, 16, v10
	ds_load_u8 v9, v159 offset:256
	ds_load_u8 v10, v159
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v12, v18, 0xc0c0004
	ds_load_u8 v18, v159 offset:1536
	v_lshl_or_b32 v27, v12, 16, v13
	ds_load_u8 v12, v159 offset:768
	v_perm_b32 v11, v16, v11, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:33760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v18, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v13, 16, v11
	ds_load_u8 v11, v152 offset:33696
	ds_load_u8 v13, v152 offset:33664
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v152 offset:33728
	v_lshl_or_b32 v25, v12, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[49:52], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v152 offset:33568
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	ds_load_u8 v14, v152 offset:33536
	v_lshl_or_b32 v56, v10, 16, v11
	ds_load_u8 v9, v152 offset:33440
	ds_load_u8 v10, v152 offset:33408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v152 offset:33632
	ds_load_u8 v15, v152 offset:33600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:33504
	ds_load_u8 v11, v152 offset:33472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v55, v14, 16, v13
	v_lshl_or_b32 v54, v10, 16, v9
	ds_load_u8 v9, v152 offset:33312
	ds_load_u8 v10, v152 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:33376
	ds_load_u8 v11, v152 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v10, 16, v9
	ds_load_u8 v9, v159 offset:7424
	ds_load_u8 v10, v159 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v159 offset:7936
	ds_load_u8 v11, v159 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v159 offset:6400
	ds_load_u8 v12, v159 offset:6144
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v159 offset:5376
	ds_load_u8 v10, v159 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v159 offset:6912
	ds_load_u8 v13, v159 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v159 offset:5888
	ds_load_u8 v11, v159 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v159 offset:4352
	ds_load_u8 v10, v159 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v159 offset:4864
	ds_load_u8 v11, v159 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v152 offset:33200
	ds_load_u8 v10, v152 offset:33168
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[53:56], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:33264
	ds_load_u8 v11, v152 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v152 offset:33072
	ds_load_u8 v12, v152 offset:33040
	v_lshl_or_b32 v83, v10, 16, v9
	ds_load_u8 v9, v152 offset:32944
	ds_load_u8 v10, v152 offset:32912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v152 offset:33136
	ds_load_u8 v13, v152 offset:33104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v12, 16, v11
	ds_load_u8 v10, v152 offset:33008
	ds_load_u8 v11, v152 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v152 offset:32880
	ds_load_u8 v10, v152 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:32784
	ds_load_u8 v11, v152 offset:32816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v9, 16, v10
	ds_load_u8 v9, v152 offset:33584
	ds_load_u8 v10, v152 offset:33552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v152 offset:33648
	ds_load_u8 v11, v152 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v152 offset:33456
	ds_load_u8 v12, v152 offset:33424
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v152 offset:33328
	ds_load_u8 v10, v152 offset:33296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v152 offset:33520
	ds_load_u8 v13, v152 offset:33488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v12, 16, v11
	ds_load_u8 v10, v152 offset:33392
	ds_load_u8 v11, v152 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v152 offset:33712
	ds_load_u8 v10, v152 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v161 offset:32768
	ds_load_u8 v11, v152 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[80:83], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v159 offset:3456
	ds_load_u8 v26, v159 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[165:168], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:3968
	ds_load_u8 v27, v159 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v159 offset:2432
	ds_load_u8 v28, v159 offset:2176
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v159 offset:1408
	ds_load_u8 v26, v159 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v159 offset:2944
	ds_load_u8 v29, v159 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v159 offset:1920
	ds_load_u8 v27, v159 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v159 offset:384
	ds_load_u8 v26, v159 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:896
	ds_load_u8 v27, v159 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v159 offset:7552
	ds_load_u8 v26, v159 offset:7296
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[80:83], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:8064
	ds_load_u8 v27, v159 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v159 offset:6528
	ds_load_u8 v28, v159 offset:6272
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v159 offset:5504
	ds_load_u8 v26, v159 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v159 offset:7040
	ds_load_u8 v29, v159 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v159 offset:6016
	ds_load_u8 v27, v159 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v159 offset:4480
	ds_load_u8 v26, v159 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:4992
	ds_load_u8 v27, v159 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[49:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v41, v159 offset:19712
	ds_load_u8 v42, v159 offset:19456
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[165:168], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[53:56], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:20224
	ds_load_u8 v43, v159 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v159 offset:18688
	ds_load_u8 v44, v159 offset:18432
	v_lshl_or_b32 v172, v42, 16, v41
	ds_load_u8 v41, v159 offset:17664
	ds_load_u8 v42, v159 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v159 offset:19200
	ds_load_u8 v45, v159 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v44, 16, v43
	ds_load_u8 v42, v159 offset:18176
	ds_load_u8 v43, v159 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v170, v42, 16, v41
	ds_load_u8 v41, v159 offset:16640
	ds_load_u8 v42, v159 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:17152
	ds_load_u8 v43, v159 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v42, 16, v41
	ds_load_u8 v41, v159 offset:23808
	ds_load_u8 v42, v159 offset:23552
	v_wmma_i32_16x16x16_iu8 v[57:64], v[169:172], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[169:172], v[80:83], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:24320
	ds_load_u8 v43, v159 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v159 offset:22784
	ds_load_u8 v44, v159 offset:22528
	v_lshl_or_b32 v176, v42, 16, v41
	ds_load_u8 v41, v159 offset:21760
	ds_load_u8 v42, v159 offset:21504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v159 offset:23296
	ds_load_u8 v45, v159 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v44, 16, v43
	ds_load_u8 v42, v159 offset:22272
	ds_load_u8 v43, v159 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v174, v42, 16, v41
	ds_load_u8 v41, v159 offset:20736
	ds_load_u8 v42, v159 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:21248
	ds_load_u8 v43, v159 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v42, 16, v41
	ds_load_u8 v41, v159 offset:19840
	ds_load_u8 v42, v159 offset:19584
	v_wmma_i32_16x16x16_iu8 v[57:64], v[173:176], v[53:56], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[173:176], v[165:168], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:20352
	ds_load_u8 v43, v159 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v159 offset:18816
	ds_load_u8 v44, v159 offset:18560
	v_lshl_or_b32 v180, v42, 16, v41
	ds_load_u8 v41, v159 offset:17792
	ds_load_u8 v42, v159 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v159 offset:19328
	ds_load_u8 v45, v159 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v44, 16, v43
	ds_load_u8 v42, v159 offset:18304
	ds_load_u8 v43, v159 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v178, v42, 16, v41
	ds_load_u8 v41, v159 offset:16768
	ds_load_u8 v42, v159 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:17280
	ds_load_u8 v43, v159 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v42, 16, v41
	ds_load_u8 v41, v159 offset:23936
	ds_load_u8 v42, v159 offset:23680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:24448
	ds_load_u8 v43, v159 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v159 offset:22912
	ds_load_u8 v44, v159 offset:22656
	v_lshl_or_b32 v184, v42, 16, v41
	ds_load_u8 v41, v159 offset:21888
	ds_load_u8 v42, v159 offset:21632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v159 offset:23424
	ds_load_u8 v45, v159 offset:23168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v44, 16, v43
	ds_load_u8 v42, v159 offset:22400
	ds_load_u8 v43, v159 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v182, v42, 16, v41
	ds_load_u8 v41, v159 offset:20864
	ds_load_u8 v42, v159 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v159 offset:21376
	ds_load_u8 v43, v159 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[177:180], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[181:184], v[53:56], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[177:180], v[80:83], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v73, v152 offset:34208
	ds_load_u8 v80, v152 offset:34176
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[181:184], v[165:168], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v152 offset:34272
	ds_load_u8 v81, v152 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v152 offset:34080
	ds_load_u8 v82, v152 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v152 offset:34144
	ds_load_u8 v83, v152 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v83, v80, 16, v73
	ds_load_u8 v73, v152 offset:33952
	ds_load_u8 v80, v152 offset:33920
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v152 offset:34016
	ds_load_u8 v81, v152 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v80, 16, v73
	ds_load_u8 v73, v152 offset:33824
	ds_load_u8 v80, v152 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v152 offset:33888
	ds_load_u8 v84, v152 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v84, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v73
	ds_load_u8 v73, v159 offset:11520
	ds_load_u8 v84, v159 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:12032
	ds_load_u8 v149, v159 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:10496
	ds_load_u8 v165, v159 offset:10240
	v_lshl_or_b32 v168, v84, 16, v73
	ds_load_u8 v73, v159 offset:9472
	ds_load_u8 v84, v159 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v165, v149, 0xc0c0004
	ds_load_u8 v165, v159 offset:11008
	ds_load_u8 v166, v159 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v165, 16, v149
	ds_load_u8 v84, v159 offset:9984
	ds_load_u8 v149, v159 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v166, v84, 16, v73
	ds_load_u8 v73, v159 offset:8448
	ds_load_u8 v84, v159 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:8960
	ds_load_u8 v149, v159 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v84, 16, v73
	ds_load_u8 v73, v152 offset:34224
	ds_load_u8 v84, v152 offset:34192
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[80:83], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v152 offset:34288
	ds_load_u8 v149, v152 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v152 offset:34096
	ds_load_u8 v169, v152 offset:34064
	v_lshl_or_b32 v172, v84, 16, v73
	ds_load_u8 v73, v152 offset:33968
	ds_load_u8 v84, v152 offset:33936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v169, v149, 0xc0c0004
	ds_load_u8 v169, v152 offset:34160
	ds_load_u8 v170, v152 offset:34128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v169, 16, v149
	ds_load_u8 v84, v152 offset:34032
	ds_load_u8 v149, v152 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v170, v84, 16, v73
	ds_load_u8 v73, v152 offset:33840
	ds_load_u8 v84, v152 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v152 offset:33904
	ds_load_u8 v149, v152 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v84, 16, v73
	ds_load_u8 v73, v159 offset:11648
	ds_load_u8 v84, v159 offset:11392
	v_wmma_i32_16x16x16_iu8 v[9:16], v[165:168], v[169:172], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:12160
	ds_load_u8 v149, v159 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:10624
	ds_load_u8 v165, v159 offset:10368
	v_lshl_or_b32 v168, v84, 16, v73
	ds_load_u8 v73, v159 offset:9600
	ds_load_u8 v84, v159 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v165, v149, 0xc0c0004
	ds_load_u8 v165, v159 offset:11136
	ds_load_u8 v166, v159 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v165, 16, v149
	ds_load_u8 v84, v159 offset:10112
	ds_load_u8 v149, v159 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v166, v84, 16, v73
	ds_load_u8 v73, v159 offset:8576
	ds_load_u8 v84, v159 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:9088
	ds_load_u8 v149, v159 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v84, 16, v73
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v73, v159 offset:27904
	ds_load_u8 v84, v159 offset:27648
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[165:168], v[80:83], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[165:168], v[169:172], v[33:40] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:28416
	ds_load_u8 v149, v159 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:26880
	ds_load_u8 v165, v159 offset:26624
	v_lshl_or_b32 v168, v84, 16, v73
	ds_load_u8 v73, v159 offset:25856
	ds_load_u8 v84, v159 offset:25600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v165, v149, 0xc0c0004
	ds_load_u8 v165, v159 offset:27392
	ds_load_u8 v166, v159 offset:27136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v165, 16, v149
	ds_load_u8 v84, v159 offset:26368
	ds_load_u8 v149, v159 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v166, v84, 16, v73
	ds_load_u8 v73, v159 offset:24832
	ds_load_u8 v84, v159 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:25344
	ds_load_u8 v149, v159 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v84, 16, v73
	ds_load_u8 v73, v159 offset:28032
	ds_load_u8 v84, v159 offset:27776
	v_wmma_i32_16x16x16_iu8 v[57:64], v[165:168], v[80:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[165:168], v[169:172], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:28544
	ds_load_u8 v149, v159 offset:28288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:27008
	ds_load_u8 v173, v159 offset:26752
	v_lshl_or_b32 v176, v84, 16, v73
	ds_load_u8 v73, v159 offset:25984
	ds_load_u8 v84, v159 offset:25728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v173, v149, 0xc0c0004
	ds_load_u8 v173, v159 offset:27520
	ds_load_u8 v174, v159 offset:27264
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v173, 16, v149
	ds_load_u8 v84, v159 offset:26496
	ds_load_u8 v149, v159 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v174, v84, 16, v73
	ds_load_u8 v73, v159 offset:24960
	ds_load_u8 v84, v159 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:25472
	ds_load_u8 v149, v159 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v84, 16, v73
	v_wmma_i32_16x16x16_iu8 v[41:48], v[173:176], v[80:83], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v73, v152 offset:34720
	ds_load_u8 v80, v152 offset:34688
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[173:176], v[169:172], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v152 offset:34784
	ds_load_u8 v81, v152 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v152 offset:34592
	ds_load_u8 v82, v152 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v152 offset:34656
	ds_load_u8 v83, v152 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v83, v80, 16, v73
	ds_load_u8 v73, v152 offset:34464
	ds_load_u8 v80, v152 offset:34432
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v152 offset:34528
	ds_load_u8 v81, v152 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v80, 16, v73
	ds_load_u8 v73, v152 offset:34336
	ds_load_u8 v80, v152 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v152 offset:34400
	ds_load_u8 v84, v152 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v84, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v73
	ds_load_u8 v73, v159 offset:15616
	ds_load_u8 v84, v159 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:16128
	ds_load_u8 v149, v159 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:14592
	ds_load_u8 v165, v159 offset:14336
	v_lshl_or_b32 v168, v84, 16, v73
	ds_load_u8 v73, v159 offset:13568
	ds_load_u8 v84, v159 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v165, v149, 0xc0c0004
	ds_load_u8 v165, v159 offset:15104
	ds_load_u8 v166, v159 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v165, 16, v149
	ds_load_u8 v84, v159 offset:14080
	ds_load_u8 v149, v159 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v166, v84, 16, v73
	ds_load_u8 v73, v159 offset:12544
	ds_load_u8 v84, v159 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:13056
	ds_load_u8 v149, v159 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v84, 16, v73
	ds_load_u8 v73, v152 offset:34608
	ds_load_u8 v84, v152 offset:34576
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[80:83], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v152 offset:34672
	ds_load_u8 v149, v152 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v152 offset:34480
	ds_load_u8 v169, v152 offset:34448
	v_lshl_or_b32 v171, v84, 16, v73
	ds_load_u8 v73, v152 offset:34352
	ds_load_u8 v84, v152 offset:34320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v169, v149, 0xc0c0004
	ds_load_u8 v169, v152 offset:34544
	ds_load_u8 v170, v152 offset:34512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v169, 16, v149
	ds_load_u8 v84, v152 offset:34416
	ds_load_u8 v149, v152 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v169, v84, 16, v73
	ds_load_u8 v73, v152 offset:34736
	ds_load_u8 v84, v152 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v162 offset:32768
	ds_load_u8 v149, v152 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v84, 16, v73
	ds_load_u8 v73, v159 offset:15744
	ds_load_u8 v84, v159 offset:15488
	v_wmma_i32_16x16x16_iu8 v[9:16], v[165:168], v[169:172], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v185, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v74, s17, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v184, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v151, s14, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v183, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v11, v160, s17, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v189, v13
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s15, v155
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v182, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:16256
	ds_load_u8 v149, v159 offset:16000
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v186, v16
	v_cvt_f32_i32_e32 v187, v15
	v_cvt_f32_i32_e32 v188, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:14720
	ds_load_u8 v165, v159 offset:14464
	v_lshl_or_b32 v168, v84, 16, v73
	ds_load_u8 v73, v159 offset:13696
	ds_load_u8 v84, v159 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v165, v149, 0xc0c0004
	ds_load_u8 v165, v159 offset:15232
	ds_load_u8 v166, v159 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v165, 16, v149
	ds_load_u8 v84, v159 offset:14208
	ds_load_u8 v149, v159 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v166, v84, 16, v73
	ds_load_u8 v73, v159 offset:12672
	ds_load_u8 v84, v159 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:13184
	ds_load_u8 v149, v159 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v84, 16, v73
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v73, v159 offset:32000
	ds_load_u8 v84, v159 offset:31744
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[165:168], v[80:83], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[165:168], v[169:172], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v190, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v194, v37
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v33, s16, v156
	v_add_nc_u32_e32 v37, s16, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v191, v38
	v_cvt_f32_i32_e32 v192, v39
	v_cvt_f32_i32_e32 v193, v40
	v_cvt_f32_i32_e32 v195, v36
	v_cvt_f32_i32_e32 v196, v35
	v_cvt_f32_i32_e32 v197, v34
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:32512
	ds_load_u8 v149, v159 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:30976
	ds_load_u8 v165, v159 offset:30720
	v_lshl_or_b32 v168, v84, 16, v73
	ds_load_u8 v73, v159 offset:29952
	ds_load_u8 v84, v159 offset:29696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v165, v149, 0xc0c0004
	ds_load_u8 v165, v159 offset:31488
	ds_load_u8 v166, v159 offset:31232
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v165, 16, v149
	ds_load_u8 v84, v159 offset:30464
	ds_load_u8 v149, v159 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v166, v84, 16, v73
	ds_load_u8 v73, v159 offset:28928
	ds_load_u8 v84, v159 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:29440
	ds_load_u8 v149, v159 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v84, 16, v73
	ds_load_u8 v73, v159 offset:32128
	ds_load_u8 v84, v159 offset:31872
	v_wmma_i32_16x16x16_iu8 v[57:64], v[165:168], v[80:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[165:168], v[169:172], v[65:72] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v165, v21
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v21, s15, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v166, v25
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v25, s16, v75
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v167, v30
	v_cvt_f32_i32_e32 v168, v31
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v62, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:32640
	ds_load_u8 v149, v159 offset:32384
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v163, v9 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v150, s14, 1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x1
	buffer_load_u16 v206, v9, s[24:27], 0 offen
	buffer_load_u16 v207, v10, s[24:27], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s15, v75
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	ds_load_u8 v149, v159 offset:31104
	ds_load_u8 v173, v159 offset:30848
	v_lshl_or_b32 v176, v84, 16, v73
	ds_load_u8 v73, v159 offset:30080
	ds_load_u8 v84, v159 offset:29824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v173, v149, 0xc0c0004
	ds_load_u8 v173, v159 offset:31616
	ds_load_u8 v174, v159 offset:31360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v173, 16, v149
	ds_load_u8 v84, v159 offset:30592
	ds_load_u8 v149, v159 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	v_lshl_or_b32 v174, v84, 16, v73
	ds_load_u8 v73, v159 offset:29056
	ds_load_u8 v84, v159 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v159 offset:29568
	ds_load_u8 v149, v159 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v149, v84, 0xc0c0004
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v149, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v173, v84, 16, v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v73, v20
	v_cvt_f32_i32_e32 v84, v23
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[173:176], v[80:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[173:176], v[169:172], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v82, v17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s15, v156
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v170, v29
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v174, v41
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v41, 0x80000000, v11, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v29, s16, v155
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v83, v24
	v_cvt_f32_i32_e32 v169, v32
	v_cvt_f32_i32_e32 v171, v28
	v_cvt_f32_i32_e32 v172, v27
	v_cvt_f32_i32_e32 v173, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x7
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v25, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v29, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v33, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v37, s[20:23], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v208, v41, s[36:39], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v175, v46
	v_cvt_f32_i32_e32 v176, v47
	v_cvt_f32_i32_e32 v177, v48
	v_cvt_f32_i32_e32 v178, v45
	v_cvt_f32_i32_e32 v179, v44
	v_cvt_f32_i32_e32 v180, v43
	v_cvt_f32_i32_e32 v181, v42
	v_cvt_f32_i32_e32 v198, v49
	v_cvt_f32_i32_e32 v199, v54
	v_cvt_f32_i32_e32 v200, v55
	v_cvt_f32_i32_e32 v201, v56
	v_cvt_f32_i32_e32 v202, v53
	v_cvt_f32_i32_e32 v203, v52
	v_cvt_f32_i32_e32 v204, v51
	v_cvt_f32_i32_e32 v205, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[41:44], v164 offset:34816
	ds_load_b128 v[45:48], v164 offset:34832
	ds_load_b128 v[49:52], v164 offset:35328
	ds_load_b128 v[53:56], v164 offset:35344
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v208, 16, v208
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v163, v208 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v158, v[9:12]
	ds_store_b128 v158, v[13:16] offset:4096
	ds_store_b128 v158, v[17:20] offset:8192
	ds_store_b128 v158, v[21:24] offset:12288
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[9:12], v164 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v13, 16, v206
	v_lshlrev_b32_e32 v14, 16, v207
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v157, v[78:79] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b128 v158, v[25:28] offset:16384
	ds_store_b128 v158, v[29:32] offset:20480
	ds_store_b128 v158, v[33:36] offset:24576
	ds_store_b128 v158, v[37:40] offset:28672
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v15, v44, v13 :: v_dual_mul_f32 v20, v43, v14
	v_mul_f32_e32 v22, v41, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v138, v15, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v43, v13
	v_mul_f32_e32 v17, v42, v13
	v_dual_mul_f32 v19, v44, v14 :: v_dual_mul_f32 v208, v49, v13
	v_dual_mul_f32 v21, v42, v14 :: v_dual_mul_f32 v206, v56, v13
	v_mul_f32_e32 v23, v48, v13
	v_mul_f32_e32 v24, v47, v13
	v_dual_mul_f32 v42, v45, v13 :: v_dual_mul_f32 v43, v48, v14
	v_mul_f32_e32 v210, v51, v13
	v_mul_f32_e32 v44, v47, v14
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v45, v45, v14 :: v_dual_mul_f32 v212, v12, v13
	v_dual_mul_f32 v47, v54, v13 :: v_dual_mul_f32 v216, v12, v14
	v_mul_f32_e32 v48, v55, v13
	v_dual_mul_f32 v55, v55, v14 :: v_dual_mul_f32 v214, v10, v13
	v_dual_mul_f32 v207, v53, v13 :: v_dual_mul_f32 v218, v10, v14
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v213, v11, v13
	v_mul_f32_e32 v215, v9, v13
	v_mul_f32_e32 v217, v11, v14
	v_mul_f32_e32 v219, v9, v14
	ds_load_b128 v[9:12], v164 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v41, v13
	v_mul_f32_e32 v53, v53, v14
	v_mul_f32_e32 v49, v49, v14
	v_mul_f32_e32 v209, v52, v13
	v_mul_f32_e32 v211, v50, v13
	v_dual_mul_f32 v41, v46, v13 :: v_dual_mul_f32 v52, v52, v14
	v_mul_f32_e32 v46, v46, v14
	v_mul_f32_e32 v54, v54, v14
	v_mul_f32_e32 v56, v56, v14
	v_mul_f32_e32 v50, v50, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v140, v18, v82 :: v_dual_fmac_f32 v139, v17, v81
	v_fmac_f32_e32 v126, v19, v182
	v_fmac_f32_e32 v136, v42, v165
	v_dual_fmac_f32 v135, v41, v149 :: v_dual_fmac_f32 v122, v44, v187
	v_dual_fmac_f32 v134, v24, v84 :: v_dual_fmac_f32 v133, v23, v83
	v_fmac_f32_e32 v88, v50, v197
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v220, v12, v13
	v_mul_f32_e32 v221, v11, v13
	v_mul_f32_e32 v222, v10, v13
	v_dual_mul_f32 v223, v9, v13 :: v_dual_mul_f32 v224, v12, v14
	v_mul_f32_e32 v225, v11, v14
	v_mul_f32_e32 v226, v10, v14
	v_mul_f32_e32 v227, v9, v14
	ds_load_b128 v[9:12], v164 offset:35344
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v51, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v137, v16, v80 :: v_dual_fmac_f32 v144, v49, v190
	v_fmac_f32_e32 v148, v208, v166
	v_dual_fmac_f32 v132, v211, v173 :: v_dual_fmac_f32 v131, v210, v172
	v_fmac_f32_e32 v86, v52, v195
	v_fmac_f32_e32 v130, v209, v171
	v_dual_fmac_f32 v147, v47, v167 :: v_dual_fmac_f32 v118, v214, v58
	v_dual_fmac_f32 v146, v48, v168 :: v_dual_fmac_f32 v145, v206, v169
	v_fmac_f32_e32 v142, v55, v192
	v_dual_fmac_f32 v128, v22, v185 :: v_dual_fmac_f32 v125, v20, v183
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v112, v223, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v124, v45, v189 :: v_dual_fmac_f32 v121, v43, v186
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v116, v212, v60
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v228, v10, v13
	v_mul_f32_e32 v229, v11, v13
	v_dual_mul_f32 v230, v12, v13 :: v_dual_mul_f32 v231, v10, v14
	v_mul_f32_e32 v232, v11, v14
	v_dual_mul_f32 v233, v12, v14 :: v_dual_mul_f32 v234, v9, v13
	v_mul_f32_e32 v235, v9, v14
	ds_load_b128 v[9:12], v164 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v127, v21, v184 :: v_dual_fmac_f32 v120, v215, v57
	v_dual_fmac_f32 v87, v51, v196 :: v_dual_fmac_f32 v110, v222, v62
	v_dual_fmac_f32 v85, v53, v194 :: v_dual_fmac_f32 v106, v220, v64
	v_dual_fmac_f32 v143, v54, v191 :: v_dual_fmac_f32 v94, v224, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v102, v234, v178 :: v_dual_fmac_f32 v119, v228, v175
	v_fmac_f32_e32 v96, v226, v70
	v_fmac_f32_e32 v100, v218, v66
	v_dual_fmac_f32 v98, v217, v67 :: v_dual_fmac_f32 v99, v216, v68
	v_fmac_f32_e32 v97, v227, v69
	v_fmac_f32_e32 v95, v225, v71
	v_fmac_f32_e32 v89, v235, v202
	v_fmac_f32_e32 v109, v232, v200
	v_fmac_f32_e32 v107, v233, v201
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v236, v9, v13
	v_mul_f32_e32 v237, v12, v13
	v_mul_f32_e32 v238, v11, v13
	v_mul_f32_e32 v13, v10, v13
	v_mul_f32_e32 v9, v9, v14
	v_mul_f32_e32 v12, v12, v14
	v_mul_f32_e32 v11, v11, v14
	v_mul_f32_e32 v10, v10, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v129, v207, v170 :: v_dual_fmac_f32 v114, v213, v59
	v_dual_fmac_f32 v123, v46, v188 :: v_dual_fmac_f32 v108, v221, v63
	v_dual_fmac_f32 v141, v56, v193 :: v_dual_fmac_f32 v104, v238, v180
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v93, v236, v174
	v_fmac_f32_e32 v105, v13, v181
	v_fmac_f32_e32 v103, v237, v179
	v_dual_fmac_f32 v117, v229, v176 :: v_dual_fmac_f32 v92, v10, v205
	v_dual_fmac_f32 v115, v230, v177 :: v_dual_fmac_f32 v90, v12, v203
	v_fmac_f32_e32 v101, v219, v65
	v_fmac_f32_e32 v113, v9, v198
	v_fmac_f32_e32 v91, v11, v204
	v_fmac_f32_e32 v111, v231, v199
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
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, v2
	v_mov_b32_e32 v154, v1
.LBB0_7:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v13, v152 offset:32864
	ds_load_u8_d16 v14, v152 offset:32896
	ds_load_u8_d16 v15, v152 offset:32928
	ds_load_u8_d16 v16, v152 offset:32960
	ds_load_u8_d16 v183, v152 offset:32976
	ds_load_u8_d16 v184, v152 offset:32944
	ds_load_u8_d16 v185, v152 offset:32912
	ds_load_u8_d16 v178, v152 offset:32880
	ds_load_u8_d16 v35, v152 offset:32992
	ds_load_u8_d16 v53, v152 offset:33024
	ds_load_u8_d16 v54, v152 offset:33056
	ds_load_u8_d16 v36, v152 offset:33088
	ds_load_u8_d16 v195, v152 offset:33104
	ds_load_u8_d16 v198, v152 offset:33072
	ds_load_u8_d16 v199, v152 offset:33040
	ds_load_u8_d16 v191, v152 offset:33008
	ds_load_u8_d16 v55, v152 offset:33120
	ds_load_u8_d16 v249, v152 offset:33152
	ds_load_u8_d16 v250, v152 offset:33184
	ds_load_u8_d16 v56, v152 offset:33216
	ds_load_u8_d16 v203, v152 offset:33232
	ds_load_u8_d16 v206, v152 offset:33200
	ds_load_u8_d16 v207, v152 offset:33168
	ds_load_u8_d16 v201, v152 offset:33136
	ds_load_u8_d16 v251, v152 offset:33248
	ds_load_u8_d16 v18, v152 offset:33280
	ds_load_u8_d16 v19, v152 offset:33312
	ds_load_u8_d16 v20, v152 offset:33344
	ds_load_u8_d16 v156, v152 offset:33360
	ds_load_u8_d16 v158, v152 offset:33328
	ds_load_u8_d16 v159, v152 offset:33296
	ds_load_u8_d16 v208, v152 offset:33264
	ds_load_u8_d16 v25, v152 offset:33376
	ds_load_u8_d16 v27, v152 offset:33408
	ds_load_u8_d16 v37, v152 offset:33440
	ds_load_u8_d16 v38, v152 offset:33472
	ds_load_u8_d16 v169, v152 offset:33488
	ds_load_u8_d16 v170, v152 offset:33456
	ds_load_u8_d16 v171, v152 offset:33424
	ds_load_u8_d16 v165, v152 offset:33392
	ds_load_u8_d16 v39, v152 offset:33504
	ds_load_u8_d16 v40, v152 offset:33536
	ds_load_u8_d16 v46, v152 offset:33568
	ds_load_u8_d16 v47, v152 offset:33600
	ds_load_u8_d16 v193, v152 offset:33616
	ds_load_u8_d16 v196, v152 offset:33584
	ds_load_u8_d16 v197, v152 offset:33552
	ds_load_u8_d16 v175, v152 offset:33520
	ds_load_u8_d16 v48, v152 offset:33632
	ds_load_u8_d16 v57, v152 offset:33664
	ds_load_u8_d16 v58, v152 offset:33696
	ds_load_u8_d16 v59, v152 offset:33728
	ds_load_u8_d16 v202, v152 offset:33744
	ds_load_u8_d16 v204, v152 offset:33712
	ds_load_u8_d16 v205, v152 offset:33680
	ds_load_u8_d16 v61, v152 offset:33648
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v1, 0, v154
	ds_load_u8_d16 v60, v152 offset:33760
	ds_load_u8_d16 v21, v152 offset:33792
	ds_load_u8_d16 v22, v152 offset:33824
	ds_load_u8_d16 v23, v152 offset:33856
	ds_load_u8_d16 v24, v152 offset:33888
	ds_load_u8_d16 v84, v152 offset:33872
	ds_load_u8_d16 v155, v152 offset:33840
	ds_load_u8_d16 v157, v152 offset:33808
	ds_load_u8_d16 v41, v152 offset:33920
	ds_load_u8_d16 v42, v152 offset:33952
	ds_load_u8_d16 v43, v152 offset:33984
	ds_load_u8_d16 v44, v152 offset:34016
	ds_load_u8_d16 v166, v152 offset:34000
	ds_load_u8_d16 v167, v152 offset:33968
	ds_load_u8_d16 v168, v152 offset:33936
	ds_load_u8_d16 v160, v152 offset:33904
	ds_load_u8_d16 v45, v152 offset:34048
	ds_load_u8_d16 v51, v152 offset:34080
	ds_load_u8_d16 v52, v152 offset:34112
	ds_load_u8_d16 v236, v152 offset:34144
	ds_load_u8_d16 v176, v152 offset:34128
	ds_load_u8_d16 v180, v152 offset:34096
	ds_load_u8_d16 v181, v152 offset:34064
	ds_load_u8_d16 v172, v152 offset:34032
	ds_load_u8_d16 v237, v152 offset:34176
	ds_load_u8_d16 v239, v152 offset:34208
	ds_load_u8_d16 v240, v152 offset:34240
	ds_load_u8_d16 v243, v152 offset:34272
	ds_load_u8_d16 v190, v152 offset:34256
	ds_load_u8_d16 v192, v152 offset:34224
	ds_load_u8_d16 v194, v152 offset:34192
	ds_load_u8_d16 v186, v152 offset:34160
	ds_load_u8_d16 v29, v152 offset:34304
	ds_load_u8_d16 v30, v152 offset:34336
	ds_load_u8_d16 v31, v152 offset:34368
	ds_load_u8_d16 v32, v152 offset:34400
	ds_load_u8_d16 v83, v152 offset:34384
	ds_load_u8_d16 v149, v152 offset:34352
	ds_load_u8_d16 v154, v152 offset:34320
	ds_load_u8_d16 v200, v152 offset:34288
	ds_load_u8_d16 v49, v152 offset:34432
	ds_load_u8_d16 v50, v152 offset:34464
	ds_load_u8_d16 v234, v152 offset:34496
	ds_load_u8_d16 v235, v152 offset:34528
	ds_load_u8_d16 v161, v152 offset:34512
	ds_load_u8_d16 v163, v152 offset:34480
	ds_load_u8_d16 v164, v152 offset:34448
	ds_load_u8_d16 v162, v152 offset:34416
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 0xe0, v0
	ds_load_u8_d16 v238, v152 offset:34560
	ds_load_u8_d16 v241, v152 offset:34592
	ds_load_u8_d16 v242, v152 offset:34624
	ds_load_u8_d16 v244, v152 offset:34656
	ds_load_u8_d16 v173, v152 offset:34640
	ds_load_u8_d16 v177, v152 offset:34608
	ds_load_u8_d16 v212, v152 offset:34576
	ds_load_u8_d16 v174, v152 offset:34544
	ds_load_u8_d16 v245, v152 offset:34688
	ds_load_u8_d16 v246, v152 offset:34720
	ds_load_u8_d16 v247, v152 offset:34752
	ds_load_u8_d16 v248, v152 offset:34784
	ds_load_u8_d16 v187, v152 offset:34768
	ds_load_u8_d16 v188, v152 offset:34736
	ds_load_u8_d16 v189, v152 offset:34704
	ds_load_u8_d16 v182, v152 offset:34672
	v_mov_b32_e32 v9, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v3, 1, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, 0, v153
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v4, 0, 1, s2
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v219, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v3, v252
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v252, v152 offset:32768
	ds_load_u8_d16 v209, v152 offset:32784
	ds_load_u8_d16 v253, v152 offset:32800
	ds_load_u8_d16 v211, v152 offset:32816
	ds_load_u8_d16 v254, v152 offset:32832
	ds_load_u8_d16 v210, v152 offset:32848
	ds_load_u8_d16 v153, v1 offset:32768
	ds_load_u8_d16 v152, v2 offset:32768
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v4
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v232, 0, v3
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v220, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_mov_b32 s12, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v249, v250, 0xc0c0004
	v_perm_b32 v2, v56, v251, 0xc0c0004
	v_perm_b32 v3, v53, v54, 0xc0c0004
	v_perm_b32 v5, v36, v55, 0xc0c0004
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v14, v15, 0xc0c0004
	v_perm_b32 v2, v16, v35, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v254, v13, 0xc0c0004
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v252, v253, 0xc0c0004
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v69, s19 :: v_dual_mov_b32 v68, s18
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v232 offset:3328
	ds_load_u8 v6, v232 offset:3072
	v_perm_b32 v33, v199, v198, 0xc0c0004
	v_perm_b32 v34, v195, v201, 0xc0c0004
	v_dual_mov_b32 v67, s17 :: v_dual_mov_b32 v66, s16
	v_dual_mov_b32 v65, s15 :: v_dual_mov_b32 v64, s14
	v_dual_mov_b32 v63, s13 :: v_dual_mov_b32 v62, s12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v72, v34, 16, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:3840
	ds_load_u8 v7, v232 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v232 offset:2304
	ds_load_u8 v8, v232 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v232 offset:2816
	ds_load_u8 v9, v232 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v232 offset:1280
	ds_load_u8 v6, v232 offset:1024
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:1792
	ds_load_u8 v9, v232 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v232 offset:256
	ds_load_u8 v9, v232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v232 offset:768
	ds_load_u8 v10, v232 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v232 offset:3456
	ds_load_u8 v10, v232 offset:3200
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[1:4], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:3968
	ds_load_u8 v11, v232 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v232 offset:2432
	ds_load_u8 v12, v232 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v232 offset:2944
	ds_load_u8 v26, v232 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v232 offset:1408
	ds_load_u8 v10, v232 offset:1152
	v_lshl_or_b32 v11, v26, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:1920
	ds_load_u8 v26, v232 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v26, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v232 offset:384
	ds_load_u8 v26, v232 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v26, v9, 0xc0c0004
	ds_load_u8 v26, v232 offset:896
	ds_load_u8 v28, v232 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	v_perm_b32 v28, v203, v208, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v26, 16, v9
	v_perm_b32 v26, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[213:220], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v73, v28, 16, v26
	v_perm_b32 v26, v185, v184, 0xc0c0004
	v_perm_b32 v28, v183, v191, 0xc0c0004
	v_perm_b32 v1, v57, v58, 0xc0c0004
	v_perm_b32 v2, v59, v60, 0xc0c0004
	v_perm_b32 v3, v40, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v71, v28, 16, v26
	v_perm_b32 v26, v209, v211, 0xc0c0004
	v_perm_b32 v28, v210, v178, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v27, v37, 0xc0c0004
	v_perm_b32 v2, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v70, v28, 16, v26
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[5:8], v[70:73], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v5, v47, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[70:73], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v20, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v232 offset:7424
	ds_load_u8 v6, v232 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:7936
	ds_load_u8 v7, v232 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v232 offset:6400
	ds_load_u8 v8, v232 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v232 offset:6912
	ds_load_u8 v9, v232 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v232 offset:5376
	ds_load_u8 v6, v232 offset:5120
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:5888
	ds_load_u8 v9, v232 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v232 offset:4352
	ds_load_u8 v9, v232 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v232 offset:4864
	ds_load_u8 v10, v232 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v232 offset:7552
	ds_load_u8 v10, v232 offset:7296
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[1:4], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:8064
	ds_load_u8 v11, v232 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v232 offset:6528
	ds_load_u8 v12, v232 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v232 offset:7040
	ds_load_u8 v26, v232 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v232 offset:5504
	ds_load_u8 v10, v232 offset:5248
	v_lshl_or_b32 v11, v26, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:6016
	ds_load_u8 v26, v232 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v26, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v232 offset:4480
	ds_load_u8 v26, v232 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v26, v9, 0xc0c0004
	ds_load_u8 v26, v232 offset:4992
	ds_load_u8 v28, v232 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v26, 16, v9
	v_perm_b32 v26, v193, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[213:220], v[9:12], v[1:4], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v1, v205, v204, 0xc0c0004
	v_perm_b32 v2, v202, v153, 0xc0c0004
	v_perm_b32 v3, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v171, v170, 0xc0c0004
	v_perm_b32 v2, v169, v175, 0xc0c0004
	v_lshl_or_b32 v3, v26, 16, v3
	v_perm_b32 v26, v156, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v159, v158, 0xc0c0004
	v_lshl_or_b32 v1, v26, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[5:8], v[1:4], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v1, v237, v239, 0xc0c0004
	v_perm_b32 v2, v240, v243, 0xc0c0004
	v_perm_b32 v3, v45, v51, 0xc0c0004
	v_perm_b32 v5, v52, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v41, v42, 0xc0c0004
	v_perm_b32 v2, v43, v44, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v23, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v21, v22, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v232 offset:11520
	ds_load_u8 v6, v232 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:12032
	ds_load_u8 v7, v232 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v232 offset:10496
	ds_load_u8 v8, v232 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v232 offset:11008
	ds_load_u8 v9, v232 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v232 offset:9472
	ds_load_u8 v6, v232 offset:9216
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:9984
	ds_load_u8 v9, v232 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v232 offset:8448
	ds_load_u8 v9, v232 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v232 offset:8960
	ds_load_u8 v10, v232 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v232 offset:11648
	ds_load_u8 v10, v232 offset:11392
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[1:4], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:12160
	ds_load_u8 v11, v232 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v232 offset:10624
	ds_load_u8 v12, v232 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v232 offset:11136
	ds_load_u8 v26, v232 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v232 offset:9600
	ds_load_u8 v10, v232 offset:9344
	v_lshl_or_b32 v11, v26, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:10112
	ds_load_u8 v26, v232 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v26, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v232 offset:8576
	ds_load_u8 v26, v232 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v26, v9, 0xc0c0004
	ds_load_u8 v26, v232 offset:9088
	ds_load_u8 v28, v232 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v26, 16, v9
	v_perm_b32 v26, v176, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[213:220], v[9:12], v[1:4], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v1, v194, v192, 0xc0c0004
	v_perm_b32 v2, v190, v200, 0xc0c0004
	v_perm_b32 v3, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v168, v167, 0xc0c0004
	v_perm_b32 v2, v166, v172, 0xc0c0004
	v_lshl_or_b32 v3, v26, 16, v3
	v_perm_b32 v26, v84, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v157, v155, 0xc0c0004
	v_lshl_or_b32 v1, v26, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[5:8], v[1:4], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v1, v245, v246, 0xc0c0004
	v_perm_b32 v2, v247, v248, 0xc0c0004
	v_perm_b32 v3, v238, v241, 0xc0c0004
	v_perm_b32 v5, v242, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v49, v50, 0xc0c0004
	v_perm_b32 v2, v234, v235, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v31, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v29, v30, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v232 offset:15616
	ds_load_u8 v6, v232 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:16128
	ds_load_u8 v7, v232 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v232 offset:14592
	ds_load_u8 v8, v232 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v232 offset:15104
	ds_load_u8 v9, v232 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v232 offset:13568
	ds_load_u8 v6, v232 offset:13312
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v232 offset:14080
	ds_load_u8 v9, v232 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v232 offset:12544
	ds_load_u8 v9, v232 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v232 offset:13056
	ds_load_u8 v10, v232 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v232 offset:15744
	ds_load_u8 v10, v232 offset:15488
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[1:4], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v229, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v230, v76
	v_cvt_f32_i32_e32 v231, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v233, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:16256
	ds_load_u8 v11, v232 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v232 offset:14720
	ds_load_u8 v12, v232 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v232 offset:15232
	ds_load_u8 v26, v232 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v232 offset:13696
	ds_load_u8 v10, v232 offset:13440
	v_lshl_or_b32 v11, v26, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v232 offset:14208
	ds_load_u8 v26, v232 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v26, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v232 offset:12672
	ds_load_u8 v26, v232 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v26, v9, 0xc0c0004
	ds_load_u8 v26, v232 offset:13184
	ds_load_u8 v28, v232 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v26, 16, v9
	v_perm_b32 v26, v173, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[213:220], v[9:12], v[1:4], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v1, v189, v188, 0xc0c0004
	v_perm_b32 v2, v187, v152, 0xc0c0004
	v_perm_b32 v3, v212, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v33, v216
	v_cvt_f32_i32_e32 v70, v217
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v164, v163, 0xc0c0004
	v_perm_b32 v2, v161, v174, 0xc0c0004
	v_lshl_or_b32 v3, v26, 16, v3
	v_perm_b32 v26, v83, v162, 0xc0c0004
	v_cvt_f32_i32_e32 v28, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v154, v149, 0xc0c0004
	v_lshl_or_b32 v1, v26, 16, v1
	v_cvt_f32_i32_e32 v26, v219
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[5:8], v[1:4], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[9:12], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v213
	v_cvt_f32_i32_e32 v10, v214
	v_cvt_f32_i32_e32 v12, v215
	v_cvt_f32_i32_e32 v11, v218
	v_cvt_f32_i32_e32 v34, v221
	v_cvt_f32_i32_e32 v218, v222
	v_cvt_f32_i32_e32 v220, v223
	v_cvt_f32_i32_e32 v221, v224
	v_cvt_f32_i32_e32 v5, v225
	v_cvt_f32_i32_e32 v6, v226
	v_cvt_f32_i32_e32 v7, v227
	v_cvt_f32_i32_e32 v8, v228
	v_cvt_f32_i32_e32 v219, v62
	v_cvt_f32_i32_e32 v1, v63
	v_cvt_f32_i32_e32 v2, v64
	v_cvt_f32_i32_e32 v3, v65
	v_cvt_f32_i32_e32 v4, v66
	v_cvt_f32_i32_e32 v222, v67
	v_cvt_f32_i32_e32 v224, v68
	v_cvt_f32_i32_e32 v225, v69
	v_cvt_f32_i32_e32 v223, v79
	v_cvt_f32_i32_e32 v226, v80
	v_cvt_f32_i32_e32 v227, v81
	v_cvt_f32_i32_e32 v228, v82
.LBB0_9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v70, off offset:72
	scratch_store_b32 off, v34, off offset:68
	scratch_store_b32 off, v33, off offset:64
	scratch_store_b32 off, v28, off offset:60
	scratch_store_b32 off, v26, off offset:56
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
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e64 v213.l, v189.l
	v_mov_b16_e64 v66.l, v187.l
	v_mov_b16_e64 v214.l, v177.l
	v_mov_b16_e64 v187.l, v168.l
	v_mov_b16_e64 v65.l, v166.l
	v_mov_b16_e64 v216.l, v162.l
	v_mov_b16_e64 v189.l, v160.l
	v_mov_b16_e64 v179.l, v159.l
	v_mov_b16_e64 v168.l, v158.l
	v_mov_b16_e64 v177.l, v157.l
	v_mov_b16_e64 v166.l, v156.l
	v_mov_b16_e64 v64.l, v155.l
	v_mov_b16_e64 v63.l, v154.l
	v_mov_b16_e64 v217.l, v149.l
	v_mov_b16_e64 v162.l, v84.l
	v_mov_b16_e64 v215.l, v83.l
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v26, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	v_perm_b32 v17, v57, v58, 0xc0c0004
	v_perm_b32 v26, v59, v60, 0xc0c0004
	v_perm_b32 v1, v249, v250, 0xc0c0004
	v_perm_b32 v2, v56, v251, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v60, v26, 16, v17
	v_perm_b32 v17, v40, v46, 0xc0c0004
	v_perm_b32 v26, v47, v48, 0xc0c0004
	v_lshl_or_b32 v56, v2, 16, v1
	v_perm_b32 v1, v53, v54, 0xc0c0004
	v_perm_b32 v2, v36, v55, 0xc0c0004
	s_mov_b32 s15, s12
	v_lshl_or_b32 v59, v26, 16, v17
	v_perm_b32 v17, v27, v37, 0xc0c0004
	v_perm_b32 v26, v38, v39, 0xc0c0004
	v_lshl_or_b32 v55, v2, 16, v1
	v_perm_b32 v1, v14, v15, 0xc0c0004
	v_perm_b32 v2, v16, v35, 0xc0c0004
	s_mov_b32 s16, s12
	v_lshl_or_b32 v58, v26, 16, v17
	v_perm_b32 v17, v18, v19, 0xc0c0004
	v_perm_b32 v18, v20, v25, 0xc0c0004
	v_lshl_or_b32 v54, v2, 16, v1
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v252, v253, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v254, v13, 0xc0c0004
	s_mov_b32 s17, s12
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v232 offset:23808
	ds_load_u8 v18, v232 offset:23552
	s_mov_b32 s18, s12
	v_lshl_or_b32 v53, v2, 16, v1
	ds_load_u8 v1, v232 offset:19712
	ds_load_u8 v2, v232 offset:19456
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:24320
	ds_load_u8 v19, v232 offset:24064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v232 offset:20224
	ds_load_u8 v3, v232 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v232 offset:22784
	ds_load_u8 v18, v232 offset:22528
	v_lshl_or_b32 v36, v2, 16, v1
	ds_load_u8 v1, v232 offset:18688
	ds_load_u8 v2, v232 offset:18432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:23296
	ds_load_u8 v19, v232 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v232 offset:19200
	ds_load_u8 v3, v232 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v232 offset:21760
	ds_load_u8 v18, v232 offset:21504
	v_lshl_or_b32 v35, v2, 16, v1
	ds_load_u8 v1, v232 offset:17664
	ds_load_u8 v2, v232 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:22272
	ds_load_u8 v19, v232 offset:22016
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v232 offset:18176
	ds_load_u8 v3, v232 offset:17920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v232 offset:20736
	ds_load_u8 v18, v232 offset:20480
	v_lshl_or_b32 v34, v2, 16, v1
	ds_load_u8 v1, v232 offset:16640
	ds_load_u8 v2, v232 offset:16384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:21248
	ds_load_u8 v19, v232 offset:20992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v232 offset:17152
	ds_load_u8 v3, v232 offset:16896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v37, v18, 16, v17
	v_perm_b32 v17, v237, v239, 0xc0c0004
	v_perm_b32 v18, v240, v243, 0xc0c0004
	v_lshl_or_b32 v33, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v48, v18, 16, v17
	v_perm_b32 v17, v45, v51, 0xc0c0004
	v_perm_b32 v18, v52, v236, 0xc0c0004
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_lshl_or_b32 v47, v18, 16, v17
	v_perm_b32 v17, v41, v42, 0xc0c0004
	v_perm_b32 v18, v43, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v18, 16, v17
	v_perm_b32 v17, v21, v22, 0xc0c0004
	v_perm_b32 v18, v23, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[57:60], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v232 offset:27904
	ds_load_u8 v18, v232 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:28416
	ds_load_u8 v19, v232 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v232 offset:26880
	ds_load_u8 v18, v232 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:27392
	ds_load_u8 v19, v232 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v18, 16, v17
	ds_load_u8 v17, v232 offset:25856
	ds_load_u8 v18, v232 offset:25600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:26368
	ds_load_u8 v19, v232 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v232 offset:24832
	ds_load_u8 v18, v232 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:25344
	ds_load_u8 v19, v232 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v25, v18, 16, v17
	v_perm_b32 v17, v245, v246, 0xc0c0004
	v_perm_b32 v18, v247, v248, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[45:48], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	v_perm_b32 v17, v238, v241, 0xc0c0004
	v_perm_b32 v18, v242, v244, 0xc0c0004
	v_lshl_or_b32 v51, v18, 16, v17
	v_perm_b32 v17, v49, v50, 0xc0c0004
	v_perm_b32 v18, v234, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	v_perm_b32 v17, v29, v30, 0xc0c0004
	v_perm_b32 v18, v31, v32, 0xc0c0004
	v_lshl_or_b32 v49, v18, 16, v17
	ds_load_u8 v17, v232 offset:32000
	ds_load_u8 v18, v232 offset:31744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:32512
	ds_load_u8 v19, v232 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v232 offset:30976
	ds_load_u8 v18, v232 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:31488
	ds_load_u8 v19, v232 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v232 offset:29952
	ds_load_u8 v18, v232 offset:29696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:30464
	ds_load_u8 v19, v232 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v232 offset:28928
	ds_load_u8 v18, v232 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:29440
	ds_load_u8 v19, v232 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v232 offset:19840
	ds_load_u8 v18, v232 offset:19584
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v83, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v84, v10
	v_cvt_f32_i32_e32 v71, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v80, v13
	v_cvt_f32_i32_e32 v149, v14
	v_cvt_f32_i32_e32 v73, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:20352
	ds_load_u8 v19, v232 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v18, 16, v17
	ds_load_u8 v17, v232 offset:18816
	ds_load_u8 v18, v232 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:19328
	ds_load_u8 v19, v232 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v18, 16, v17
	ds_load_u8 v17, v232 offset:17792
	ds_load_u8 v18, v232 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:18304
	ds_load_u8 v19, v232 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v18, 16, v17
	ds_load_u8 v17, v232 offset:16768
	ds_load_u8 v18, v232 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v232 offset:17280
	ds_load_u8 v19, v232 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[53:56], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v53, v232 offset:23936
	ds_load_u8 v54, v232 offset:23680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v232 offset:24448
	ds_load_u8 v55, v232 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v232 offset:22912
	ds_load_u8 v54, v232 offset:22656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v232 offset:23424
	ds_load_u8 v55, v232 offset:23168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v54, 16, v53
	ds_load_u8 v53, v232 offset:21888
	ds_load_u8 v54, v232 offset:21632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v232 offset:22400
	ds_load_u8 v62, v232 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v232 offset:20864
	ds_load_u8 v62, v232 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v62, v53, 0xc0c0004
	ds_load_u8 v62, v232 offset:21376
	ds_load_u8 v67, v232 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v67, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v62, 16, v53
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v232 offset:28032
	ds_load_u8 v58, v232 offset:27776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v232 offset:28544
	ds_load_u8 v59, v232 offset:28288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v58, 16, v57
	ds_load_u8 v57, v232 offset:27008
	ds_load_u8 v58, v232 offset:26752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v232 offset:27520
	ds_load_u8 v59, v232 offset:27264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v57
	ds_load_u8 v57, v232 offset:25984
	ds_load_u8 v58, v232 offset:25728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v232 offset:26496
	ds_load_u8 v62, v232 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v232 offset:24960
	ds_load_u8 v62, v232 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v62, v57, 0xc0c0004
	ds_load_u8 v62, v232 offset:25472
	ds_load_u8 v67, v232 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v67, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v57, v62, 16, v57
	v_perm_b32 v62, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[45:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v45, v232 offset:32128
	ds_load_u8 v46, v232 offset:31872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v232 offset:32640
	ds_load_u8 v47, v232 offset:32384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v46, 16, v45
	ds_load_u8 v45, v232 offset:31104
	ds_load_u8 v46, v232 offset:30848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v232 offset:31616
	ds_load_u8 v47, v232 offset:31360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v46, 16, v45
	ds_load_u8 v45, v232 offset:30080
	ds_load_u8 v46, v232 offset:29824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v232 offset:30592
	ds_load_u8 v47, v232 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v46, 16, v45
	ds_load_u8 v45, v232 offset:29056
	ds_load_u8 v46, v232 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v232 offset:29568
	ds_load_u8 v47, v232 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v67, v46, 16, v45
	v_perm_b32 v45, v207, v206, 0xc0c0004
	v_perm_b32 v46, v203, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[67:70], v[49:52], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v78, v46, 16, v45
	v_perm_b32 v45, v199, v198, 0xc0c0004
	v_perm_b32 v46, v195, v201, 0xc0c0004
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v72, v19
	v_cvt_f32_i32_e32 v79, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v46, 16, v45
	v_perm_b32 v45, v185, v184, 0xc0c0004
	v_perm_b32 v46, v183, v191, 0xc0c0004
	v_lshl_or_b32 v76, v46, 16, v45
	v_perm_b32 v45, v209, v211, 0xc0c0004
	v_perm_b32 v46, v210, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v46, 16, v45
	v_wmma_i32_16x16x16_iu8 v[45:52], v[33:36], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v33, v205, v204, 0xc0c0004
	v_perm_b32 v34, v202, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v75, v23
	v_cvt_f32_i32_e32 v76, v24
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v197, v196, 0xc0c0004
	v_perm_b32 v34, v193, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	v_perm_b32 v33, v171, v170, 0xc0c0004
	v_perm_b32 v34, v169, v175, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v179, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v62, 16, v33
	v_perm_b32 v62, v162, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[45:52], v[37:40], v[33:36], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v37, v194, v192, 0xc0c0004
	v_perm_b32 v38, v190, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v181, v180, 0xc0c0004
	v_perm_b32 v38, v176, v186, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v37
	v_perm_b32 v37, v187, v167, 0xc0c0004
	v_perm_b32 v38, v65, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v177, v64, 0xc0c0004
	v_lshl_or_b32 v37, v62, 16, v37
	v_perm_b32 v62, v215, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[25:28], v[37:40], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v25, v213, v188, 0xc0c0004
	v_perm_b32 v26, v66, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[37:40], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v28, v26, 16, v25
	v_perm_b32 v25, v212, v214, 0xc0c0004
	v_perm_b32 v26, v173, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v26, 16, v25
	v_perm_b32 v25, v164, v163, 0xc0c0004
	v_perm_b32 v26, v161, v174, 0xc0c0004
	v_lshl_or_b32 v26, v26, 16, v25
	v_perm_b32 v25, v63, v217, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v62, 16, v25
	v_wmma_i32_16x16x16_iu8 v[45:52], v[29:32], v[25:28], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[67:70], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v11
	v_cvt_f32_i32_e32 v67, v16
	v_cvt_f32_i32_e32 v68, v18
	v_cvt_f32_i32_e32 v70, v22
	v_cvt_f32_i32_e32 v78, v45
	v_cvt_f32_i32_e32 v154, v46
	v_cvt_f32_i32_e32 v156, v47
	v_cvt_f32_i32_e32 v157, v48
	v_cvt_f32_i32_e32 v255, v49
	v_cvt_f32_i32_e32 v81, v50
	v_cvt_f32_i32_e32 v82, v51
	v_cvt_f32_i32_e32 v62, v52
	v_cvt_f32_i32_e32 v155, v1
	v_cvt_f32_i32_e32 v34, v2
	v_cvt_f32_i32_e32 v33, v3
	v_cvt_f32_i32_e32 v28, v4
	v_cvt_f32_i32_e32 v26, v5
	v_cvt_f32_i32_e32 v158, v6
	v_cvt_f32_i32_e32 v159, v7
	v_cvt_f32_i32_e32 v160, v8
.LBB0_11:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s42, 31
	v_lshlrev_b32_e32 v236, 1, v0
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s39, 0x31027000
	s_add_i32 s0, s42, s0
	s_mov_b32 s38, 0x7ffffffe
	s_ashr_i32 s0, s0, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_mov_b32 s36, s8
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	v_mad_u64_u32 v[1:2], null, s0, s41, v[74:75]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v150, s0, 1
	v_add_lshl_u32 v3, v151, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v18, v2, s[36:39], 0 offen
	buffer_load_u16 v23, v3, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 28, v236
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v4, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshlrev_b32_e32 v4, 5, v0
	v_and_b32_e32 v235, 0xf0, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v4, 32, v4
	v_lshl_add_u32 v5, v235, 2, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshl_add_u32 v20, v235, 1, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v21, v5, v4, v3
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
.Ltmp24:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp25:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v6, v19
	v_mul_f32_e32 v25, v3, v19
	v_dual_mul_f32 v3, v3, v18 :: v_dual_mul_f32 v30, v14, v19
	v_dual_mul_f32 v31, v16, v19 :: v_dual_mul_f32 v14, v14, v18
	v_dual_mul_f32 v37, v11, v19 :: v_dual_mul_f32 v16, v16, v18
	v_mul_f32_e32 v24, v2, v19
	v_dual_mul_f32 v2, v2, v18 :: v_dual_mul_f32 v29, v13, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v37, v227, v134
	scratch_load_b32 v37, off, off offset:72 ; 4-byte Folded Reload
	v_fma_f32 v59, v14, v218, v127
	scratch_load_b32 v14, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v32, v15, v19 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v42, v1, v19 :: v_dual_mul_f32 v11, v11, v18
	v_mul_f32_e32 v38, v12, v19
	v_mul_f32_e32 v41, v8, v19
	v_mul_f32_e32 v12, v12, v18
	v_dual_mul_f32 v36, v10, v19 :: v_dual_mul_f32 v15, v15, v18
	v_mul_f32_e32 v10, v10, v18
	v_mul_f32_e32 v40, v7, v19
	v_mul_f32_e32 v23, v5, v19
	v_mul_f32_e32 v27, v4, v19
	v_mul_f32_e32 v5, v5, v18
	v_dual_mul_f32 v4, v4, v18 :: v_dual_mul_f32 v35, v9, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v222, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v219, v144
	v_fma_f32 v3, v3, v224, v142
	v_fma_f32 v4, v4, v225, v141
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v143, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v231, v137
	v_fma_f32 v31, v31, v233, v138
	v_fma_f32 v49, v38, v228, v133
	v_fma_f32 v36, v36, v226, v135
	v_fma_f32 v35, v35, v223, v136
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v144, v5, s2
	v_cndmask_b32_e64 v45, v142, v3, s2
	v_cndmask_b32_e64 v44, v141, v4, s2
	v_cndmask_b32_e64 v38, v137, v32, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v230, v139
	v_fma_f32 v29, v29, v229, v140
	v_fma_f32 v57, v15, v220, v125
	v_fma_f32 v58, v16, v221, v126
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v22
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v21, v2 offset:34816
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v53, v42, v37, v129
	scratch_load_b32 v37, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v13, v13, v14, v128
	scratch_load_b32 v14, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v139, v30, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v54, v41, v37, v130
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v60, v12, v14, v121
	scratch_load_b32 v12, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v138, v31, s2
	v_cndmask_b32_e64 v30, v130, v54, s2
	v_cndmask_b32_e64 v14, v128, v13, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v51, v40, v37, v131
	scratch_load_b32 v37, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v74, v11, v12, v122
	scratch_load_b32 v11, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v131, v51, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v52, v39, v37, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v136, v35, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v150, v10, v11, v123
	scratch_load_b32 v10, off, off offset:24 ; 4-byte Folded Reload
	v_fma_f32 v23, v23, v43, v148
	scratch_load_b32 v43, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v135, v36, s2
	v_cndmask_b32_e64 v36, v134, v50, s2
	v_cndmask_b32_e64 v35, v133, v49, s2
	v_cndmask_b32_e64 v32, v132, v52, s2
	v_cndmask_b32_e64 v40, v148, v23, s2
	v_cndmask_b32_e64 v23, v122, v74, s2
	v_cndmask_b32_e64 v21, v123, v150, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v151, v9, v10, v124
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v24, v43, v147
	scratch_load_b32 v43, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v124, v151, s2
	v_cndmask_b32_e64 v48, v147, v24, s2
	v_cndmask_b32_e64 v24, v121, v60, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v43, v146
	scratch_load_b32 v43, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v20 offset:35328
	ds_load_b128 v[2:5], v20 offset:35344
	ds_load_b128 v[49:52], v20 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v146, v25, s2
	v_cndmask_b32_e64 v25, v125, v57, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v22, v9, v19
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v57, v3, v19
	v_dual_mul_f32 v128, v11, v19 :: v_dual_mul_f32 v9, v9, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v22, v17, v93
	v_fma_f32 v22, v57, v70, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, v128, v72, v104
	v_fma_f32 v9, v9, v155, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v27, v27, v43, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v140, v29, s2
	v_cndmask_b32_e64 v29, v129, v53, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[53:56], v20 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v126, v58, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v58, v4, v19
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v60, v49, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v145, v27, s2
	v_cndmask_b32_e64 v27, v127, v59, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v4, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v57, v58, v75, v117
	v_fma_f32 v60, v60, v83, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v93, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v4, v4, v159, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v117, v57, s2
	v_cndmask_b32_e64 v57, v104, v72, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v83
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v59, v5, v19
	v_mul_f32_e32 v74, v50, v19
	v_mul_f32_e32 v121, v52, v19
	v_mul_f32_e32 v122, v51, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v125, v55, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v58, v59, v76, v115
	v_fma_f32 v74, v74, v84, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v119, v22, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v59, v122, v69, v114
	v_fma_f32 v73, v125, v73, v108
	v_fma_f32 v69, v121, v71, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v115, v58, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v126, v56, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v113, v9, s2
	v_cndmask_b32_e64 v9, v109, v4, s2
	v_cndmask_b32_e64 v4, v120, v60, s2
	v_cndmask_b32_e64 v60, v108, v73, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v84
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v3, v18
	v_mul_f32_e32 v5, v5, v18
	v_dual_mul_f32 v123, v53, v19 :: v_dual_mul_f32 v52, v52, v18
	v_dual_mul_f32 v124, v54, v19 :: v_dual_mul_f32 v55, v55, v18
	v_dual_mul_f32 v127, v10, v19 :: v_dual_mul_f32 v56, v56, v18
	v_dual_mul_f32 v129, v12, v19 :: v_dual_mul_f32 v10, v10, v18
	v_mul_f32_e32 v19, v2, v19
	v_mul_f32_e32 v49, v49, v18
	v_mul_f32_e32 v50, v50, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v158, v111
	v_fma_f32 v5, v5, v160, v107
	v_fma_f32 v75, v126, v67, v106
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v53, v53, v18
	v_mul_f32_e32 v54, v54, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v123, v80, v112
	v_fma_f32 v77, v129, v77, v103
	v_fma_f32 v50, v50, v154, v100
	v_fma_f32 v49, v49, v78, v101
	v_fma_f32 v78, v56, v62, v94
	v_fma_f32 v80, v55, v82, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v111, v3, s2
	v_cndmask_b32_e64 v3, v107, v5, s2
	v_cndmask_b32_e64 v5, v118, v74, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v93
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v19, v19, v79, v102
	v_fma_f32 v79, v127, v68, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v114, v59, s2
	v_cndmask_b32_e64 v59, v106, v75, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v81, v54, v81, v96
	v_fma_f32 v82, v53, v255, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v103, v77, s2
	v_cndmask_b32_e64 v54, v101, v49, s2
	v_cndmask_b32_e64 v53, v100, v50, s2
	v_cndmask_b32_e64 v50, v95, v80, s2
	v_cndmask_b32_e64 v49, v94, v78, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v77, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v78, 0xbfb8aa3b, v9
	v_dual_mul_f32 v80, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v95, 0xbfb8aa3b, v59
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v51, v51, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v124, v149, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v105, v79, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v77
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v78
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v95
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v51, v51, v156, v98
	v_fma_f32 v52, v52, v157, v99
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v116, v69, s2
	v_cndmask_b32_e64 v62, v110, v76, s2
	v_cndmask_b32_e64 v55, v102, v19, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v112, v67, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v94, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v77, 0, 0x42800000, s5
	v_cndmask_b32_e64 v78, 0, 0x42800000, s6
	v_cndmask_b32_e64 v95, 0, 0x42800000, s15
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v99, v52, s2
	v_cndmask_b32_e64 v19, v98, v51, s2
	v_cndmask_b32_e64 v52, v97, v82, s2
	v_cndmask_b32_e64 v51, v96, v81, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v69
	v_dual_mul_f32 v82, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v97, 0xbfb8aa3b, v62
	v_mul_f32_e32 v99, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v76
	v_dual_mul_f32 v75, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v96, 0xbfb8aa3b, v60
	v_dual_mul_f32 v101, 0xbfb8aa3b, v57 :: v_dual_mul_f32 v98, 0xbfb8aa3b, v67
	v_dual_mul_f32 v105, 0xbfb8aa3b, v53 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v58
	v_mul_f32_e32 v107, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v74
	v_dual_fmac_f32 v77, 0xbfb8aa3b, v70 :: v_dual_fmac_f32 v78, 0xbfb8aa3b, v9
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v59
	v_exp_f32_e32 v72, v72
	v_cndmask_b32_e64 v76, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v82
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v81
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v99
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	v_cndmask_b32_e64 v94, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v98
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v101
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v107
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v73
	v_cndmask_b32_e64 v74, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v97
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v95, v95
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v79
	v_cndmask_b32_e64 v82, 0, 0x42800000, s9
	v_cndmask_b32_e64 v81, 0, 0x42800000, s10
	v_cndmask_b32_e64 v99, 0, 0x42800000, s19
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v71
	v_dual_mul_f32 v104, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v109, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v75, 0, 0x42800000, s3
	v_cndmask_b32_e64 v98, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v102
	v_cndmask_b32_e64 v101, 0, 0x42800000, s17
	v_cndmask_b32_e64 v107, 0, 0x42800000, s27
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v4
	v_dual_mul_f32 v110, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v73, 0, 0x42800000, s0
	v_cndmask_b32_e64 v97, 0, 0x42800000, s13
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s15
	v_ldexp_f32 v72, v72, v111
	v_dual_mul_f32 v100, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v103, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v79, 0, 0x42800000, s7
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v99, 0xbfb8aa3b, v55
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v69
	v_exp_f32_e32 v76, v76
	v_dual_mul_f32 v106, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v96
	v_cndmask_b32_e64 v102, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v109
	v_dual_fmac_f32 v98, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v107, 0xbfb8aa3b, v49
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v57
	v_exp_f32_e32 v94, v94
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v110
	v_fmac_f32_e32 v97, 0xbfb8aa3b, v62
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v77, v77
	v_ldexp_f32 v95, v95, v126
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v108, 0xbfb8aa3b, v50 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v80
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v103
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s4
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v99, v99
	v_cndmask_b32_e64 v96, 0, 0x42800000, s14
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v106
	v_cndmask_b32_e64 v109, 0, 0x42800000, s25
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v58
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v107, v107
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v100
	v_cndmask_b32_e64 v110, 0, 0x42800000, s24
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s5
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v97, v97
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v95, 1.0, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v111, null, v72, v72, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v105
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v104
	v_cndmask_b32_e64 v103, 0, 0x42800000, s23
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s19
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v101, v101
	v_ldexp_f32 v76, v76, v115
	v_cndmask_b32_e64 v106, 0, 0x42800000, s20
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v103, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v109, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s27
	v_exp_f32_e32 v102, v102
	v_ldexp_f32 v94, v94, v119
	v_exp_f32_e32 v81, v81
	v_cndmask_b32_e64 v100, 0, 0x42800000, s18
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s13
	v_ldexp_f32 v74, v74, v113
	v_ldexp_f32 v77, v77, v116
	v_fmac_f32_e32 v110, 0xbfb8aa3b, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v167, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v105, 0, 0x42800000, s21
	v_cndmask_b32_e64 v104, 0, 0x42800000, s22
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s17
	v_ldexp_f32 v78, v78, v117
	v_ldexp_f32 v99, v99, v130
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s16
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v75, v75, v114
	v_fmac_f32_e32 v106, 0xbfb8aa3b, v54
	v_ldexp_f32 v107, v107, v138
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v108
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s10
	v_ldexp_f32 v73, v73, v112
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v56
	v_ldexp_f32 v98, v98, v123
	v_ldexp_f32 v97, v97, v124
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v74, 1.0, v74 :: v_dual_add_f32 v77, 1.0, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v110, v110
	v_fmac_f32_e32 v105, 0xbfb8aa3b, v53
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v103, v103
	v_ldexp_f32 v79, v79, v118
	v_fmac_f32_e32 v104, 0xbfb8aa3b, v17
	v_ldexp_f32 v101, v101, v128
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v78, 1.0, v78 :: v_dual_add_f32 v99, 1.0, v99
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v119, null, v76, v76, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s14
	v_exp_f32_e32 v109, v109
	v_ldexp_f32 v102, v102, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v106, v106
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v127, null, v94, v94, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v108, 0, 0x42800000, s26
	v_ldexp_f32 v81, v81, v121
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v100, v100
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v115, null, v74, v74, v93
	v_fma_f32 v195, -v111, v167, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v98, 1.0, v98
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s23
	v_exp_f32_e32 v105, v105
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v104, v104
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v101, 1.0, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v123, null, v78, v78, v9
	v_rcp_f32_e32 v171, v119
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s20
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s25
	v_ldexp_f32 v96, v96, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v175, v127
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v108, 0xbfb8aa3b, v50 :: v_dual_add_f32 v81, 1.0, v81
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s18
	v_ldexp_f32 v110, v110, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v169, v115
	v_fmac_f32_e32 v167, v195, v167
	v_div_scale_f32 v135, null, v98, v98, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s22
	v_ldexp_f32 v82, v82, v120
	v_ldexp_f32 v80, v80, v122
	v_ldexp_f32 v103, v103, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v173, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v106, v106, v131
	v_ldexp_f32 v109, v109, v136
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v113, null, v73, v73, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v108, v108
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v131, null, v81, v81, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v100, v100, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v141, null, v95, v95, v59
	v_rcp_f32_e32 v179, v135
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v105, v105, v132
	v_ldexp_f32 v104, v104, v133
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v80, 1.0, v80 :: v_dual_add_f32 v103, 1.0, v103
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v82, 1.0, v82 :: v_dual_add_f32 v105, 1.0, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, null, v75, v75, v22
	v_fma_f32 v199, -v119, v171, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v102, 1.0, v102 :: v_dual_add_f32 v109, 1.0, v109
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v125, null, v79, v79, v3
	v_div_scale_f32 v139, null, v96, v96, v60
	v_div_scale_f32 v149, null, v99, v99, v55
	v_rcp_f32_e32 v168, v113
	v_fma_f32 v203, -v127, v175, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v106, 1.0, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v177, v131
	v_div_scale_f32 v121, null, v77, v77, v70
	v_rcp_f32_e32 v182, v141
	v_fma_f32 v197, -v115, v169, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v129, null, v82, v82, v5
	v_div_scale_f32 v157, null, v103, v103, v19
	v_rcp_f32_e32 v170, v117
	v_fma_f32 v201, -v123, v173, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v104, 1.0, v104 :: v_dual_fmac_f32 v171, v199, v171
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v143, null, v102, v102, v58
	v_rcp_f32_e32 v174, v125
	v_rcp_f32_e32 v181, v139
	v_rcp_f32_e32 v186, v149
	v_fmac_f32_e32 v175, v203, v175
	v_div_scale_f32 v151, null, v106, v106, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v108, v108, v137
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v133, null, v80, v80, v68
	v_div_scale_f32 v145, null, v101, v101, v57
	v_div_scale_f32 v165, null, v107, v107, v49
	v_rcp_f32_e32 v172, v121
	v_fma_f32 v207, -v135, v179, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v110, 1.0, v110 :: v_dual_fmac_f32 v169, v197, v169
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v147, null, v100, v100, v56
	v_rcp_f32_e32 v176, v129
	v_rcp_f32_e32 v183, v143
	v_rcp_f32_e32 v190, v157
	v_fmac_f32_e32 v173, v201, v173
	v_div_scale_f32 v155, null, v104, v104, v17
	v_div_scale_f32 v153, null, v105, v105, v53
	v_rcp_f32_e32 v187, v151
	v_fma_f32 v196, -v113, v168, 1.0
	v_div_scale_f32 v137, null, v97, v97, v62
	v_fma_f32 v205, -v131, v177, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v108, 1.0, v108
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v112, vcc_lo, v83, v72, v83
	v_rcp_f32_e32 v178, v133
	v_rcp_f32_e32 v184, v145
	v_rcp_f32_e32 v185, v147
	v_rcp_f32_e32 v194, v165
	v_fma_f32 v210, -v141, v182, 1.0
	v_fmac_f32_e32 v179, v207, v179
	v_div_scale_f32 v159, null, v110, v110, v52
	v_div_scale_f32 v161, null, v109, v109, v51
	v_rcp_f32_e32 v189, v155
	v_fma_f32 v198, -v117, v170, 1.0
	v_div_scale_f32 v114, s26, v84, v73, v84
	v_div_scale_f32 v116, s27, v93, v74, v93
	v_rcp_f32_e32 v188, v153
	v_fma_f32 v202, -v125, v174, 1.0
	v_fma_f32 v209, -v139, v181, 1.0
	v_fma_f32 v214, -v149, v186, 1.0
	v_fmac_f32_e32 v168, v196, v168
	v_rcp_f32_e32 v180, v137
	v_fmac_f32_e32 v177, v205, v177
	v_div_scale_f32 v163, null, v108, v108, v50
	v_rcp_f32_e32 v191, v159
	v_fma_f32 v200, -v121, v172, 1.0
	v_dual_fmac_f32 v182, v210, v182 :: v_dual_mul_f32 v195, v112, v167
	v_div_scale_f32 v118, s25, v22, v75, v22
	v_div_scale_f32 v120, s24, v71, v76, v71
	v_rcp_f32_e32 v192, v161
	v_fma_f32 v204, -v129, v176, 1.0
	v_fma_f32 v211, -v143, v183, 1.0
	v_fma_f32 v218, -v157, v190, 1.0
	v_fmac_f32_e32 v170, v198, v170
	v_div_scale_f32 v126, s21, v3, v79, v3
	v_div_scale_f32 v128, s20, v4, v94, v4
	v_div_scale_f32 v140, s14, v60, v96, v60
	v_fma_f32 v215, -v151, v187, 1.0
	v_dual_fmac_f32 v174, v202, v174 :: v_dual_fmac_f32 v181, v209, v181
	v_dual_fmac_f32 v186, v214, v186 :: v_dual_mul_f32 v197, v116, v169
	v_dual_mul_f32 v196, v114, v168 :: v_dual_mul_f32 v203, v128, v175
	v_rcp_f32_e32 v193, v163
	v_div_scale_f32 v122, s23, v70, v77, v70
	v_div_scale_f32 v124, s22, v9, v78, v9
	v_fma_f32 v206, -v133, v178, 1.0
	v_fma_f32 v212, -v145, v184, 1.0
	v_fma_f32 v213, -v147, v185, 1.0
	v_fma_f32 v222, -v165, v194, 1.0
	v_fmac_f32_e32 v172, v200, v172
	v_fma_f32 v223, -v111, v195, v112
	v_div_scale_f32 v130, s19, v5, v82, v5
	v_div_scale_f32 v132, s18, v69, v81, v69
	v_div_scale_f32 v144, s12, v58, v102, v58
	v_fma_f32 v217, -v155, v189, 1.0
	v_dual_fmac_f32 v176, v204, v176 :: v_dual_fmac_f32 v183, v211, v183
	v_dual_fmac_f32 v190, v218, v190 :: v_dual_mul_f32 v199, v120, v171
	v_dual_mul_f32 v198, v118, v170 :: v_dual_mul_f32 v205, v132, v177
	v_fma_f32 v216, -v153, v188, 1.0
	v_dual_fmac_f32 v187, v215, v187 :: v_dual_mul_f32 v202, v126, v174
	v_mul_f32_e32 v209, v140, v181
	v_fma_f32 v224, -v113, v196, v114
	v_fma_f32 v225, -v115, v197, v116
	v_fma_f32 v208, -v137, v180, 1.0
	v_div_scale_f32 v134, s17, v68, v80, v68
	v_div_scale_f32 v136, s16, v67, v98, v67
	v_div_scale_f32 v148, s10, v56, v100, v56
	v_fma_f32 v219, -v159, v191, 1.0
	v_fmac_f32_e32 v178, v206, v178
	v_dual_fmac_f32 v184, v212, v184 :: v_dual_fmac_f32 v195, v223, v167
	v_dual_fmac_f32 v185, v213, v185 :: v_dual_fmac_f32 v194, v222, v194
	v_dual_mul_f32 v201, v124, v173 :: v_dual_mul_f32 v200, v122, v172
	v_mul_f32_e32 v207, v136, v179
	v_fma_f32 v220, -v161, v192, 1.0
	v_dual_fmac_f32 v189, v217, v189 :: v_dual_mul_f32 v204, v130, v176
	v_mul_f32_e32 v211, v144, v183
	v_fma_f32 v226, -v117, v198, v118
	v_fma_f32 v227, -v119, v199, v120
	v_dual_fmac_f32 v188, v216, v188 :: v_dual_fmac_f32 v197, v225, v169
	v_fma_f32 v225, -v139, v209, v140
	v_fmac_f32_e32 v196, v224, v168
	v_div_scale_f32 v138, s15, v62, v97, v62
	v_div_scale_f32 v152, s8, v54, v106, v54
	v_fma_f32 v221, -v163, v193, 1.0
	v_fmac_f32_e32 v180, v208, v180
	v_div_scale_f32 v154, s7, v53, v105, v53
	v_dual_fmac_f32 v191, v219, v191 :: v_dual_mul_f32 v206, v134, v178
	v_mul_f32_e32 v213, v148, v185
	v_fma_f32 v228, -v121, v200, v122
	v_fma_f32 v229, -v123, v201, v124
	v_fma_f32 v111, -v111, v195, v112
	v_dual_fmac_f32 v192, v220, v192 :: v_dual_fmac_f32 v199, v227, v171
	v_fma_f32 v227, -v143, v211, v144
	v_dual_fmac_f32 v198, v226, v170 :: v_dual_fmac_f32 v209, v225, v181
	v_fma_f32 v112, -v113, v196, v114
	v_div_scale_f32 v142, s13, v59, v95, v59
	v_div_scale_f32 v156, s6, v17, v104, v17
	v_div_scale_f32 v158, s5, v19, v103, v19
	v_dual_fmac_f32 v193, v221, v193 :: v_dual_mul_f32 v208, v138, v180
	v_mul_f32_e32 v215, v152, v187
	v_fma_f32 v230, -v125, v202, v126
	v_fma_f32 v231, -v127, v203, v128
	v_fma_f32 v113, -v115, v197, v116
	v_dual_mul_f32 v216, v154, v188 :: v_dual_fmac_f32 v201, v229, v173
	v_fma_f32 v229, -v147, v213, v148
	v_fmac_f32_e32 v200, v228, v172
	v_div_fmas_f32 v111, v111, v167, v195
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v211, v227, v183
	v_fma_f32 v114, -v117, v198, v118
	v_div_scale_f32 v146, s11, v57, v101, v57
	v_div_scale_f32 v160, s4, v52, v110, v52
	v_div_fmas_f32 v112, v112, v168, v196
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v162, s3, v51, v109, v51
	v_dual_mul_f32 v210, v142, v182 :: v_dual_mul_f32 v217, v156, v189
	v_fma_f32 v232, -v129, v204, v130
	v_fma_f32 v233, -v131, v205, v132
	v_fma_f32 v115, -v119, v199, v120
	v_dual_mul_f32 v218, v158, v190 :: v_dual_fmac_f32 v203, v231, v175
	v_fma_f32 v231, -v151, v215, v152
	v_fmac_f32_e32 v202, v230, v174
	v_div_fmas_f32 v113, v113, v169, v197
	s_mov_b32 vcc_lo, s25
	v_fmac_f32_e32 v213, v229, v185
	v_fma_f32 v116, -v121, v200, v122
	v_div_scale_f32 v150, s9, v55, v99, v55
	v_div_scale_f32 v164, s1, v50, v108, v50
	v_div_fixup_f32 v72, v111, v72, v83
	v_div_fmas_f32 v83, v114, v170, v198
	s_mov_b32 vcc_lo, s24
	v_div_scale_f32 v166, s0, v49, v107, v49
	v_dual_mul_f32 v212, v146, v184 :: v_dual_mul_f32 v219, v160, v191
	v_fma_f32 v234, -v133, v206, v134
	v_fma_f32 v223, -v135, v207, v136
	v_fma_f32 v117, -v123, v201, v124
	v_dual_mul_f32 v220, v162, v192 :: v_dual_fmac_f32 v205, v233, v177
	v_fma_f32 v233, -v155, v217, v156
	v_fmac_f32_e32 v204, v232, v176
	v_div_fixup_f32 v73, v112, v73, v84
	v_div_fmas_f32 v84, v115, v171, v199
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v215, v231, v187
	v_fma_f32 v118, -v125, v202, v126
	v_div_fixup_f32 v74, v113, v74, v93
	v_div_fmas_f32 v93, v116, v172, v200
	s_mov_b32 vcc_lo, s22
	v_dual_mul_f32 v214, v150, v186 :: v_dual_mul_f32 v221, v164, v193
	v_fma_f32 v224, -v137, v208, v138
	v_fma_f32 v119, -v127, v203, v128
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v72, v83, v75, v22
	v_dual_mul_f32 v222, v166, v194 :: v_dual_fmac_f32 v207, v223, v179
	v_fma_f32 v223, -v159, v219, v160
	v_fmac_f32_e32 v206, v234, v178
	v_div_fmas_f32 v75, v117, v173, v201
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v226, -v141, v210, v142
	v_fmac_f32_e32 v217, v233, v189
	v_fma_f32 v120, -v129, v204, v130
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v48, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v48, v84, v76, v71
	v_div_fmas_f32 v71, v118, v174, v202
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v232, -v153, v216, v154
	v_fma_f32 v121, -v131, v205, v132
	v_div_fixup_f32 v70, v93, v77, v70
	v_fma_f32 v225, -v163, v221, v164
	v_fmac_f32_e32 v208, v224, v180
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v72, v119, v175, v203
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v219, v223, v191
	v_fma_f32 v122, -v133, v206, v134
	v_div_fixup_f32 v73, v75, v78, v9
	v_dual_fmac_f32 v210, v226, v182 :: v_dual_mul_f32 v9, v47, v48
	v_div_fmas_f32 v47, v120, v176, v204
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v228, -v145, v212, v146
	v_fma_f32 v230, -v149, v214, v150
	v_fma_f32 v123, -v135, v207, v136
	v_div_fixup_f32 v48, v71, v79, v3
	v_dual_fmac_f32 v216, v232, v188 :: v_dual_mul_f32 v3, v46, v70
	v_div_fmas_f32 v46, v121, v177, v205
	s_mov_b32 vcc_lo, s17
	v_fmac_f32_e32 v221, v225, v193
	v_fma_f32 v124, -v137, v208, v138
	v_div_fixup_f32 v70, v72, v94, v4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v45, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v122, v178, v206
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v125, -v139, v209, v140
	v_div_fixup_f32 v47, v47, v82, v5
	v_dual_fmac_f32 v212, v228, v184 :: v_dual_mul_f32 v15, v15, v74
	v_dual_fmac_f32 v214, v230, v186 :: v_dual_mul_f32 v5, v44, v48
	v_div_fmas_f32 v48, v123, v179, v207
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v126, -v141, v210, v142
	v_div_fixup_f32 v46, v46, v81, v69
	v_div_fmas_f32 v69, v124, v180, v208
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v127, -v143, v211, v144
	v_div_fixup_f32 v45, v45, v80, v68
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v42, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v125, v181, v209
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v128, -v145, v212, v146
	v_div_fixup_f32 v48, v48, v98, v67
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v126, v182, v210
	s_mov_b32 vcc_lo, s12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v38, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v127, v183, v211
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v234, -v157, v218, v158
	v_fma_f32 v129, -v147, v213, v148
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v39, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v128, v184, v212
	v_fma_f32 v130, -v149, v214, v150
	v_div_fixup_f32 v47, v47, v96, v60
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v131, -v151, v215, v152
	v_div_fixup_f32 v46, v46, v95, v59
	v_div_fmas_f32 v48, v129, v185, v213
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v39, v39, v101, v57
	v_fmac_f32_e32 v218, v234, v190
	v_fma_f32 v132, -v153, v216, v154
	v_div_fixup_f32 v45, v45, v102, v58
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v36, v36, v47 :: v_dual_mul_f32 v11, v11, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v130, v186, v214
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v133, -v155, v217, v156
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v35, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v131, v187, v215
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v48, v48, v100, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v134, -v157, v218, v158
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v132, v188, v216
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v135, -v159, v219, v160
	v_div_fixup_f32 v47, v47, v99, v55
	v_div_fmas_f32 v39, v133, v189, v217
	s_mov_b32 vcc_lo, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v134, v190, v218
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v45, v45, v105, v53
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v29, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v135, v191, v219
	v_div_fixup_f32 v39, v39, v104, v17
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:16
	scratch_load_b32 v58, off, off offset:12
	scratch_load_b32 v60, off, off offset:8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v27, v45
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v47, v110, v52
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v52, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v224, -v161, v220, v162
	v_div_fixup_f32 v46, v46, v106, v54
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v48, v48, v103, v19
	v_fma_f32 v45, -v165, v222, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v220, v224, v192 :: v_dual_mul_f32 v19, v14, v46
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v20, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v163, v221, v164
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v34, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v136, -v161, v220, v162
	s_mov_b32 vcc_lo, s3
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v20, v25, v48 :: v_dual_mul_f32 v7, v7, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v222, v45, v194
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v25, v136, v192, v220
	s_mov_b32 vcc_lo, s1
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v12, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v39, v193, v221
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v92, v10, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v165, v222, v166
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v33, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v2, v2, v18 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v194, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v91, v11, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v28, v90
	v_fma_f32 v2, v2, v26, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v107, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v28, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v1, v1, v18
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v90, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v89, v2, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v34, v108, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v11, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v12, 0xbfb8aa3b, v39
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v24, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v25, v109, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_exp_f32_e32 v24, v12
	v_mul_f32_e32 v12, 0xbfb8aa3b, v2
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v11, v23, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v28, 0, 0x42800000, s1
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v26, v26
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v21, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v33
	v_ldexp_f32 v21, v24, v23
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_exp_f32_e32 v23, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v26, v24
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v18
	v_mul_f32_e32 v8, v8, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v21, v21, v39
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v26, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v25
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v34, v28
	v_div_fixup_f32 v62, v69, v97, v62
	v_div_scale_f32 v46, null, v24, v24, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_mov_b32 s4, 0x76543210
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v26, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v46
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v23, v23, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v28, v34, 1.0
	v_rcp_f32_e32 v49, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v18, null, v25, v25, v2
	v_fmac_f32_e32 v34, v48, v34
	v_div_scale_f32 v48, vcc_lo, v39, v21, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v18
	v_fma_f32 v50, -v46, v47, 1.0
	v_mul_f32_e32 v53, v48, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, s0, v45, v24, v45
	v_fma_f32 v54, -v18, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v54, v51
	v_div_scale_f32 v54, s3, v2, v25, v2
	v_mul_f32_e32 v59, v54, v51
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v8, v8, v55, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v28, v53, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v58, v87
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v1, v52, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v26, v49, 1.0
	v_fmac_f32_e32 v53, v55, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v86, v8, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, v85, v1, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s1, v33, v23, v33
	v_mul_f32_e32 v56, v50, v47
	v_fma_f32 v28, -v28, v53, v48
	v_fma_f32 v48, -v18, v59, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v52, v49
	v_fma_f32 v55, -v46, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v34, v53
	v_fmac_f32_e32 v59, v48, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v58, -v26, v57, v52
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v56, v55, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v60, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v18, v59, v54
	v_dual_fmac_f32 v57, v58, v49 :: v_dual_and_b32 v58, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v46, v56, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v88, v6, s2
	v_cndmask_b32_e64 v46, v87, v7, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v26, v57, v52
	v_div_fmas_f32 v34, v34, v47, v56
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v49, v57
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v18, v18, v51, v59
	v_div_fixup_f32 v2, v18, v25, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v26, v23, v33
	v_div_fixup_f32 v23, v34, v24, v45
	v_div_fixup_f32 v24, v28, v21, v39
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v13, v27
	v_mul_f32_e32 v7, v1, v2
	v_dual_mul_f32 v8, v8, v18 :: v_dual_mul_f32 v13, v46, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v18, v6, v24
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v43|, |v44|
	v_max3_f32 v2, |v41|, |v38|, |v37|
	v_max3_f32 v23, |v32|, |v31|, |v30|
	v_max3_f32 v24, |v29|, |v22|, |v15|
	v_max3_f32 v6, |v36|, |v35|, |v40|
	v_max_f32_e64 v25, |v19|, |v17|
	v_max3_f32 v26, |v14|, |v21|, |v12|
	v_max3_f32 v27, |v18|, |v13|, |v8|
	v_max3_f32 v28, |v7|, |v3|, |v4|
	v_max3_f32 v1, v1, |v42|, v2
	v_max3_f32 v2, v23, v24, |v16|
	v_max3_f32 v23, |v11|, |v10|, |v9|
	v_max3_f32 v24, v25, |v20|, v26
	v_max3_f32 v25, v27, v28, |v5|
	v_lshrrev_b32_e32 v28, 1, v58
	v_max3_f32 v1, v1, v6, v2
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v6, 7, v0
	v_and_b32_e32 v26, 8, v0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v24, v23, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v23, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v25, 4, v6
	v_lshl_add_u32 v6, v6, 7, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v24, v2, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v27, v58, 2, v25
	v_xor_b32_e32 v25, v25, v28
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v1, v1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v23, v27, v28
	v_add3_u32 v6, v6, v25, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v24
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v23, 0, v26, v23
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v23, v2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v23
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v23, v2
	v_lshrrev_b32_e32 v25, 2, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v2, v2, v23
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v23, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v24, v23, v23 :: v_dual_max_f32 v1, v1, v6
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v26, 3, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v6, v1
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v1
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v23, v1, v6
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 15, v0
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v24, v2, v24
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, 0, v26, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v1, 3, v1
	ds_store_b64 v2, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v6, 0, v1
	ds_load_b64 v[23:24], v6
.Ltmp52:
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v2, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v6
	v_fma_f32 v25, -v6, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v26, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v6, v26, v25
	v_fmac_f32_e32 v26, v27, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v26, v25
	v_div_fmas_f32 v6, v6, v23, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v6, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v2, v6, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v34, 0xffff0000, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v39, null, v34, v34, v42
	v_div_scale_f32 v26, null, v34, v34, v43
	v_div_scale_f32 v47, null, v34, v34, v41
	v_rcp_f32_e32 v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v26
	v_div_scale_f32 v48, s0, v44, v34, v44
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v53, null, v34, v34, v38
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v51, -v39, v46, 1.0
	v_fma_f32 v52, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v51, v46
	.loc	1 76 14 is_stmt 1               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v24, v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v51, s1, v42, v34, v42
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s2, v41, v34, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v24, 0x2b8cbccc, v24
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v23, -v28, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, vcc_lo, v24, 0x40e00000, v24
	v_mul_f32_e32 v2, v23, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v28, v2, v23
	v_fmac_f32_e32 v2, v25, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v25, null, v34, v34, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v23, -v28, v2, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v2, v23, v27, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v23, -v26, v33, 1.0
	v_div_scale_f32 v27, vcc_lo, v43, v34, v43
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v24, v2, 0x40e00000, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v25, v28, 1.0
	v_fmac_f32_e32 v33, v23, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v23, v24, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v28, v2, v28 :: v_dual_mul_f32 v45, v27, v33
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.h, 0
	v_mov_b16_e32 v2.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v24, v23, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v50, v48, v28
	v_fma_f32 v24, -v26, v45, v27
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v23.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v23, 0xffff0000, v23
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v24, v33
	v_fma_f32 v24, -v25, v50, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v45, v27
	v_dual_fmac_f32 v50, v24, v28 :: v_dual_mul_f32 v27, v51, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v26, v33, v45
	v_fma_f32 v25, -v25, v50, v48
	v_div_scale_f32 v48, null, v34, v34, v37
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v39, v27, v51
	v_rcp_f32_e32 v33, v53
	v_mul_f32_e32 v45, v52, v49
	v_div_fmas_f32 v25, v25, v28, v50
	v_rcp_f32_e32 v28, v48
	v_fmac_f32_e32 v27, v26, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v26, -v47, v45, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v39, v27, v51
	v_fma_f32 v50, -v53, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v26, v49
	v_fma_f32 v26, -v48, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v39, v46, v27
	v_fmac_f32_e32 v33, v50, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v47, v45, v52
	v_div_scale_f32 v50, s1, v37, v34, v37
	v_fmac_f32_e32 v28, v26, v28
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v27, v34, v42
	v_div_fmas_f32 v39, v39, v49, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v50, v28
	v_div_fixup_f32 v27, v39, v34, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v49, v50
	v_fmac_f32_e32 v49, v39, v28
	v_div_fixup_f32 v25, v25, v34, v44
	v_div_scale_f32 v44, null, v34, v34, v36
	v_div_fixup_f32 v24, v24, v34, v43
	v_div_scale_f32 v43, s0, v38, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v44
	v_div_scale_f32 v51, null, v34, v34, v35
	v_mul_f32_e32 v46, v43, v33
	v_div_scale_f32 v41, s2, v36, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v51
	v_div_scale_f32 v42, null, v34, v34, v40
	v_fma_f32 v45, -v53, v46, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v44, v47, 1.0
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v46, v45, v33 :: v_dual_fmac_f32 v47, v52, v47
	v_rcp_f32_e32 v52, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v51, v54, 1.0
	v_fma_f32 v43, -v53, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v47
	v_div_scale_f32 v53, null, v34, v34, v32
	v_fmac_f32_e32 v54, v45, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v43, v33, v46
	v_fma_f32 v46, -v44, v39, v41
	v_div_scale_f32 v45, s3, v35, v34, v35
	v_fma_f32 v43, -v48, v49, v50
	v_fma_f32 v50, -v42, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v46, v47
	v_rcp_f32_e32 v46, v53
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v48, v45, v54
	v_div_fmas_f32 v43, v43, v28, v49
	v_fmac_f32_e32 v52, v50, v52
	v_div_scale_f32 v50, s0, v40, v34, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v49, -v51, v48, v45
	v_div_fixup_f32 v28, v33, v34, v38
	v_div_fixup_f32 v33, v43, v34, v37
	v_fma_f32 v37, -v44, v39, v41
	v_mul_f32_e32 v38, v50, v52
	v_fma_f32 v41, -v53, v46, 1.0
	v_div_scale_f32 v43, null, v34, v34, v31
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v48, v49, v54
	v_div_fmas_f32 v37, v37, v47, v39
	v_fma_f32 v44, -v42, v38, v50
	v_fmac_f32_e32 v46, v41, v46
	v_rcp_f32_e32 v41, v43
	v_div_scale_f32 v47, null, v34, v34, v30
	v_fma_f32 v39, -v51, v48, v45
	v_div_scale_f32 v45, s1, v32, v34, v32
	v_fmac_f32_e32 v38, v44, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v36, v37, v34, v36
	v_div_fmas_f32 v39, v39, v54, v48
	v_mul_f32_e32 v48, v45, v46
	v_fma_f32 v49, -v43, v41, 1.0
	v_fma_f32 v37, -v42, v38, v50
	v_div_scale_f32 v42, s2, v31, v34, v31
	v_div_fixup_f32 v35, v39, v34, v35
	v_fma_f32 v39, -v53, v48, v45
	v_fmac_f32_e32 v41, v49, v41
	v_fma_f32 v49, -v47, v44, 1.0
	v_div_scale_f32 v50, null, v34, v34, v29
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v48, v39, v46
	v_div_fmas_f32 v37, v37, v52, v38
	v_mul_f32_e32 v38, v42, v41
	v_fmac_f32_e32 v44, v49, v44
	v_rcp_f32_e32 v39, v50
	v_div_scale_f32 v49, s0, v30, v34, v30
	v_div_scale_f32 v51, null, v34, v34, v22
	v_div_fixup_f32 v37, v37, v34, v40
	v_fma_f32 v40, -v53, v48, v45
	v_fma_f32 v45, -v43, v38, v42
	v_mul_f32_e32 v52, v49, v44
	v_rcp_f32_e32 v53, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v54, -v50, v39, 1.0
	v_div_fmas_f32 v40, v40, v46, v48
	v_fmac_f32_e32 v38, v45, v41
	v_fma_f32 v45, -v47, v52, v49
	v_div_scale_f32 v46, s1, v29, v34, v29
	v_fmac_f32_e32 v39, v54, v39
	v_div_fixup_f32 v32, v40, v34, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v51, v53, 1.0
	v_fma_f32 v40, -v43, v38, v42
	v_fmac_f32_e32 v52, v45, v44
	v_div_scale_f32 v45, null, v34, v34, v15
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v42, v46, v39 :: v_dual_fmac_f32 v53, v48, v53
	v_div_scale_f32 v43, s3, v22, v34, v22
	v_div_fmas_f32 v38, v40, v41, v38
	v_fma_f32 v40, -v47, v52, v49
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v41, -v50, v42, v46
	v_mul_f32_e32 v48, v43, v53
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v49, null, v34, v34, v16
	v_div_fmas_f32 v40, v40, v44, v52
	v_fmac_f32_e32 v42, v41, v39
	v_fma_f32 v44, -v51, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v52, -v45, v47, 1.0
	v_div_fixup_f32 v31, v38, v34, v31
	v_div_fixup_f32 v30, v40, v34, v30
	v_fma_f32 v38, -v50, v42, v46
	v_fmac_f32_e32 v48, v44, v53
	v_fmac_f32_e32 v47, v52, v47
	v_div_scale_f32 v40, s0, v15, v34, v15
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v49, v41, 1.0
	v_div_fmas_f32 v38, v38, v39, v42
	v_fma_f32 v39, -v51, v48, v43
	v_mul_f32_e32 v42, v40, v47
	v_div_scale_f32 v43, null, v23, v23, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v44, v41
	v_div_fmas_f32 v39, v39, v53, v48
	v_rcp_f32_e32 v46, v43
	v_fma_f32 v48, -v45, v42, v40
	v_div_scale_f32 v44, s1, v16, v34, v16
	v_div_scale_f32 v51, null, v23, v23, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v48, v47
	v_mul_f32_e32 v50, v44, v41
	v_div_fixup_f32 v29, v38, v34, v29
	v_div_fixup_f32 v22, v39, v34, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v43, v46, 1.0
	v_fma_f32 v40, -v45, v42, v40
	v_div_scale_f32 v45, null, v23, v23, v20
	v_fma_f32 v38, -v49, v50, v44
	v_rcp_f32_e32 v39, v51
	v_fmac_f32_e32 v46, v48, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v50, v38, v41
	v_div_scale_f32 v38, s2, v19, v23, v19
	v_div_fmas_f32 v40, v40, v47, v42
	v_div_scale_f32 v47, s0, v17, v23, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v51, v39, 1.0
	v_fma_f32 v42, -v49, v50, v44
	v_mul_f32_e32 v44, v38, v46
	v_fma_f32 v49, -v45, v48, 1.0
	v_div_scale_f32 v53, null, v23, v23, v14
	v_fmac_f32_e32 v39, v52, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v43, v44, v38
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s3, v20, v23, v20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v54, v47, v39
	v_rcp_f32_e32 v55, v53
	v_div_fmas_f32 v41, v42, v41, v50
	v_fmac_f32_e32 v44, v52, v46
	v_mul_f32_e32 v50, v49, v48
	v_fma_f32 v42, -v51, v54, v47
	v_div_fixup_f32 v15, v40, v34, v15
	v_div_fixup_f32 v16, v41, v34, v16
	v_fma_f32 v34, -v43, v44, v38
	v_fma_f32 v38, -v45, v50, v49
	v_div_scale_f32 v41, null, v23, v23, v21
	v_fmac_f32_e32 v54, v42, v39
	v_fma_f32 v40, -v53, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v38, v48
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v51, v54, v47
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s1, v14, v23, v14
	v_div_fmas_f32 v34, v34, v46, v44
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v44, null, v23, v23, v12
	v_div_fmas_f32 v39, v42, v39, v54
	v_fma_f32 v42, -v45, v50, v49
	v_mul_f32_e32 v43, v40, v55
	v_fma_f32 v45, -v41, v38, 1.0
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v19, v34, v23, v19
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v47, -v53, v43, v40
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s0, v21, v23, v21
	v_div_fmas_f32 v42, v42, v48, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v47, v55
	v_div_fixup_f32 v17, v39, v23, v17
	v_mul_f32_e32 v34, v45, v38
	v_fma_f32 v39, -v44, v46, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v53, v43, v40
	v_div_fixup_f32 v20, v42, v23, v20
	v_fma_f32 v47, -v41, v34, v45
	v_div_scale_f32 v42, null, v23, v23, v11
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s2, v12, v23, v12
	v_div_fmas_f32 v40, v40, v55, v43
	v_fmac_f32_e32 v34, v47, v38
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v46
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v14, v40, v23, v14
	v_fma_f32 v40, -v41, v34, v45
	v_div_scale_f32 v47, null, v23, v23, v10
	v_fma_f32 v41, -v44, v43, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v34, v40, v38, v34
	v_div_scale_f32 v38, null, v23, v23, v9
	v_fma_f32 v45, -v42, v48, 1.0
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v43, v41, v46
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v40, s0, v11, v23, v11
	v_fmac_f32_e32 v48, v45, v48
	v_div_scale_f32 v45, null, v23, v23, v18
	v_div_fixup_f32 v21, v34, v23, v21
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v47, v49, 1.0
	v_rcp_f32_e32 v51, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v38, v41, 1.0
	v_mul_f32_e32 v44, v40, v48
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s1, v10, v23, v10
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v23, v23, v13
	v_div_fmas_f32 v39, v39, v46, v43
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v34, v49
	v_div_scale_f32 v52, s2, v9, v23, v9
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v34
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s3, v18, v23, v18
	v_div_fixup_f32 v12, v39, v23, v12
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	v_fma_f32 v40, -v38, v55, v52
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v34, -v47, v46, v34
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s0, v13, v23, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v52
	v_fmac_f32_e32 v42, v40, v51
	v_div_fmas_f32 v39, v39, v48, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v43, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v23, v23, v8
	v_div_fmas_f32 v34, v34, v49, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v39, v23, v11
	v_div_fmas_f32 v38, v38, v41, v55
	v_fma_f32 v41, -v45, v42, v53
	v_fma_f32 v45, -v50, v40, v43
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v10, v34, v23, v10
	v_div_fixup_f32 v9, v38, v23, v9
	v_div_scale_f32 v38, null, v23, v23, v7
	v_fmac_f32_e32 v40, v45, v54
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v23, v23, v5
	v_div_fmas_f32 v41, v41, v51, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v34, -v50, v40, v43
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v44, v46, 1.0
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v18, v41, v23, v18
	v_div_fmas_f32 v34, v34, v54, v40
	v_rcp_f32_e32 v40, v38
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, null, v23, v23, v3
	v_div_scale_f32 v41, null, v23, v23, v4
	v_div_scale_f32 v42, vcc_lo, v8, v23, v8
	v_div_fixup_f32 v13, v34, v23, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	v_fma_f32 v34, -v38, v40, 1.0
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v47, v42, v46
	v_fma_f32 v54, -v48, v50, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v40, v34, v40
	v_div_scale_f32 v34, s0, v7, v23, v7
	v_fma_f32 v51, -v44, v47, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v39, v43, 1.0
	v_fmac_f32_e32 v50, v54, v50
	v_mul_f32_e32 v53, v34, v40
	v_fma_f32 v52, -v41, v45, 1.0
	v_fmac_f32_e32 v47, v51, v46
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s1, v3, v23, v3
	v_fma_f32 v51, -v38, v53, v34
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s2, v4, v23, v4
	v_div_scale_f32 v54, s3, v5, v23, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v51, v40
	v_dual_mul_f32 v55, v49, v43 :: v_dual_mul_f32 v56, v52, v45
	v_fma_f32 v42, -v44, v47, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v54, v50
	v_fma_f32 v34, -v38, v53, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v39, v55, v49
	v_fma_f32 v51, -v41, v56, v52
	v_div_fmas_f32 v42, v42, v46, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v48, v57, v54
	v_div_fmas_f32 v34, v34, v40, v53
	v_dual_fmac_f32 v55, v44, v43 :: v_dual_fmac_f32 v56, v51, v45
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v38, v50
	v_div_fixup_f32 v7, v34, v23, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v39, v55, v49
	v_fma_f32 v38, -v41, v56, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v50, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v8, v42, v23, v8
	v_div_fixup_f32 v3, v39, v23, v3
	v_div_fixup_f32 v4, v38, v23, v4
	v_div_fixup_f32 v5, v40, v23, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v33
	v_rndne_f32_e32 v33, v36
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v36, v15
	v_cvt_i32_f32_e32 v41, v14
	v_and_b32_e32 v14, 15, v34
	v_and_b32_e32 v15, 15, v35
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b64 v[34:35], off, off     ; 8-byte Folded Reload
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v38, v19
	v_and_b32_e32 v19, 15, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 0x60, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v37, v16
	v_cvt_i32_f32_e32 v43, v12
	v_and_b32_e32 v12, 15, v28
	v_and_b32_e32 v16, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v28, 10, v0
	v_lshlrev_b32_e32 v32, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v39, v17
	v_cvt_i32_f32_e32 v47, v18
	v_and_b32_e32 v17, 15, v31
	v_and_b32_e32 v18, 15, v30
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 0x1800, v28
	v_and_b32_e32 v31, 0x400, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v40, v20
	v_cvt_i32_f32_e32 v42, v21
	v_cvt_i32_f32_e32 v48, v13
	v_and_b32_e32 v13, 15, v33
	v_and_b32_e32 v21, 15, v36
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v33, 0x100, v236
	v_add3_u32 v36, 0, v30, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v46, v9
	v_cvt_i32_f32_e32 v49, v8
	v_cvt_i32_f32_e32 v44, v11
	v_cvt_i32_f32_e32 v45, v10
	v_cvt_i32_f32_e32 v50, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v25
	v_and_b32_e32 v10, 15, v26
	v_and_b32_e32 v11, 15, v27
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v24, 15, v39
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v20, 15, v22
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v31, 15, v48
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v5, v5
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s40, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	s_add_i32 s2, s2, s1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_xor_b32_e32 v34, v34, v29
	v_and_b32_e32 v29, 3, v0
	v_add3_u32 v39, v36, v33, v34
	s_delay_alu instid0(VALU_DEP_2)
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
	v_xad_u32 v40, v35, v235, 0
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
	v_lshl_or_b32 v5, v17, 4, v9
	v_lshl_or_b32 v4, v15, 4, v7
	v_lshl_or_b32 v3, v16, 4, v8
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v40
	ds_load_b128 v[35:38], v40 offset:1024
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v3.h, 0xff, v4.l
	v_lshlrev_b16 v3.l, 8, v3.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v18, 4, v10
	v_lshl_or_b32 v15, v33, 4, v25
	v_lshl_or_b32 v16, v34, 4, v26
	v_lshl_or_b32 v9, v20, 4, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v12, 4, v0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v13, v31, 4, v23
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v12, s0, v12
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v8.l
	v_or_b16 v8.l, v3.h, v3.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v10.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v37, 4, v29
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v12, s2, v1, v12
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v9.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v20, v38, 4, v30
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v21, s0, 4, v12
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v5.h, v5.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 31, s40
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v2, v6, vcc_lo
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v7.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
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
.Ltmp53:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 80
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.private_seg_size, 80
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31372
; TotalNumSgprs: 46
; NumVgprs: 256
; ScratchSize: 80
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 46
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
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x75:0x2f DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x21 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp26                         ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp26                 ; DW_AT_high_pc
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 80
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 19
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
