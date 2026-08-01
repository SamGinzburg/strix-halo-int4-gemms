	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 3, v0
	v_and_b32_e32 v245, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v123, 4, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v5, 4, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v4, 4, v245
	v_or_b32_e32 v95, 0x3f0, v0
	v_or_b32_e32 v96, 0x7f0, v0
	v_or_b32_e32 v97, 0xbf0, v0
	scratch_store_b32 off, v5, off          ; 4-byte Folded Spill
	v_or_b32_e32 v98, 0xff0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v45, 0, v123
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[89:90], null, s35, v3, v[4:5]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[90:91], null, s35, 48, v[89:90]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v93, s35, 4, v89
	v_lshl_add_u32 v94, s35, 5, v89
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
	s_xor_b32 s8, s2, s13
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s13
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s16, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s16, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s18, s19
	s_add_i32 s18, s18, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s14, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, 0xff
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s33, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s27, s33, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s14, 31
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s44, s2, 6
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s14, s3
.Ltmp21:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v91, v1, v5, s44
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s35, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s12, s34, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s27, s2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s12, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s15, v89
	v_add_nc_u32_e32 v3, s15, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s17, s35, 6
	v_add_nc_u32_e32 v4, s15, v94
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s16, s34, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s15, v90
	s_add_i32 s15, s15, s17
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	v_add3_u32 v9, s12, s16, v91
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s15, v89
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v26, s15, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v27, s15, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v28, s15, v90
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[5:8], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v9, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[9:12], v2, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v3, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v4, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v25, s2
	v_cndmask_b32_e64 v3, 0x80000000, v26, s2
	v_cndmask_b32_e64 v4, 0x80000000, v27, s2
	v_cndmask_b32_e64 v41, 0x80000000, v28, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[25:28], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v2, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v3, s[28:31], 0 offen
	buffer_load_b128 v[37:40], v4, s[28:31], 0 offen
	buffer_load_b128 v[41:44], v41, s[28:31], 0 offen
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v245
	v_or_b32_e32 v3, 32, v245
	v_or_b32_e32 v4, 48, v245
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v45, v[5:8] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v45, v[9:12]
	s_waitcnt vmcnt(7)
	ds_store_b128 v45, v[13:16] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v45, v[17:20] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v45, v[21:24] offset:12288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v45, v[25:28] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v45, v[29:32] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[33:36] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[41:44] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v108, 0x3f0, v0
	v_or_b32_e32 v109, 0x7f0, v0
	v_or_b32_e32 v110, 0xbf0, v0
	v_or_b32_e32 v111, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v92, 0x70, v1
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr92
.LBB0_3:                                ; %Flow94
	s_load_b128 s[20:23], s[0:1], 0x20
	v_or_b32_e32 v5, s44, v245
	v_or_b32_e32 v2, s44, v2
	v_or_b32_e32 v3, s44, v3
	v_or_b32_e32 v4, s44, v4
	v_and_b32_e32 v6, 0xf0, v0
	s_ashr_i32 s0, s14, 8
	v_or_b32_e32 v159, s27, v0
	v_mul_lo_u32 v160, v5, s0
	v_mul_lo_u32 v156, v2, s0
	v_mul_lo_u32 v157, v3, s0
	v_mul_lo_u32 v158, v4, s0
	v_lshlrev_b32_e32 v103, 2, v6
	v_lshlrev_b32_e32 v105, 1, v0
	v_lshlrev_b32_e32 v106, 5, v0
	v_lshlrev_b32_e32 v104, 1, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s1, s26, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s47, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v92, 0x70, v1
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v1, 32, v106
	v_and_b32_e32 v9, 28, v105
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v100, 0, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v10, 0, v103, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v99, v10, v9
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_mov_b32_e32 v185, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s10, s1, 64
	s_mov_b32 s11, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s47, s47, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s12
	s_mov_b32 s12, s26
	s_mov_b32 s26, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s1, s10, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v101, s48, v245
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s1, s34, v[91:92]
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add3_u32 v102, s14, v92, v245
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s1, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 24
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s12, s14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[65:68], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v101 offset:832
	ds_load_u8 v10, v101 offset:768
	ds_load_u8 v11, v101 offset:960
	ds_load_u8 v12, v101 offset:896
	ds_load_u8 v13, v101 offset:576
	ds_load_u8 v14, v101 offset:512
	ds_load_u8 v15, v101 offset:704
	ds_load_u8 v16, v101 offset:640
	ds_load_u8 v17, v101 offset:320
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s15, s27
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s15, s14, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v101 offset:256
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v101 offset:448
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v9, v101 offset:384
	ds_load_u8 v11, v101 offset:64
	v_lshl_or_b32 v27, v14, 16, v13
	ds_load_u8 v13, v101
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v101 offset:192
	v_perm_b32 v10, v10, v17, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v102 offset:3072
	v_lshl_or_b32 v26, v9, 16, v10
	ds_load_u8 v9, v101 offset:128
	ds_load_u8 v10, v102 offset:3328
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v102 offset:3840
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	ds_load_u8 v13, v102 offset:2048
	v_lshl_or_b32 v25, v9, 16, v11
	ds_load_u8 v9, v102 offset:3584
	ds_load_u8 v11, v102 offset:2304
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v102 offset:2816
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v102 offset:2560
	v_lshl_or_b32 v80, v9, 16, v10
	ds_load_u8 v9, v102 offset:1280
	ds_load_u8 v10, v102 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v12, 16, v11
	ds_load_u8 v10, v102 offset:1792
	ds_load_u8 v11, v102 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v78, v10, 16, v9
	ds_load_u8 v9, v102 offset:256
	ds_load_u8 v10, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:768
	ds_load_u8 v11, v102 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v101 offset:1856
	ds_load_u8 v10, v101 offset:1792
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v101 offset:1984
	ds_load_u8 v11, v101 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v101 offset:1600
	ds_load_u8 v12, v101 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v101 offset:1344
	ds_load_u8 v10, v101 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v101 offset:1728
	ds_load_u8 v13, v101 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v101 offset:1472
	ds_load_u8 v11, v101 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v101 offset:1088
	ds_load_u8 v10, v101 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v101 offset:1216
	ds_load_u8 v11, v101 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v102 offset:7424
	ds_load_u8 v10, v102 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:7936
	ds_load_u8 v11, v102 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:6400
	ds_load_u8 v12, v102 offset:6144
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v102 offset:5376
	ds_load_u8 v10, v102 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:6912
	ds_load_u8 v13, v102 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v12, 16, v11
	ds_load_u8 v10, v102 offset:5888
	ds_load_u8 v11, v102 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v82, v10, 16, v9
	ds_load_u8 v9, v102 offset:4352
	ds_load_u8 v10, v102 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:4864
	ds_load_u8 v11, v102 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v102 offset:3456
	ds_load_u8 v10, v102 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:3968
	ds_load_u8 v11, v102 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:2432
	ds_load_u8 v12, v102 offset:2176
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v102 offset:1408
	ds_load_u8 v10, v102 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:2944
	ds_load_u8 v13, v102 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v102 offset:1920
	ds_load_u8 v11, v102 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v102 offset:384
	ds_load_u8 v10, v102 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:896
	ds_load_u8 v11, v102 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v102 offset:7552
	ds_load_u8 v10, v102 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:8064
	ds_load_u8 v11, v102 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:6528
	ds_load_u8 v12, v102 offset:6272
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v102 offset:5504
	ds_load_u8 v10, v102 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:7040
	ds_load_u8 v13, v102 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v102 offset:6016
	ds_load_u8 v11, v102 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v102 offset:4480
	ds_load_u8 v10, v102 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:4992
	ds_load_u8 v11, v102 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v101 offset:848
	ds_load_u8 v26, v101 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v101 offset:976
	ds_load_u8 v27, v101 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v101 offset:592
	ds_load_u8 v28, v101 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v101 offset:336
	ds_load_u8 v26, v101 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v101 offset:720
	ds_load_u8 v29, v101 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v101 offset:464
	ds_load_u8 v27, v101 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v101 offset:16
	ds_load_u8 v26, v101 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v101 offset:208
	ds_load_u8 v27, v101 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v101 offset:1872
	ds_load_u8 v26, v101 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v101 offset:2000
	ds_load_u8 v27, v101 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v101 offset:1616
	ds_load_u8 v28, v101 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v101 offset:1360
	ds_load_u8 v26, v101 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v101 offset:1744
	ds_load_u8 v29, v101 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v101 offset:1488
	ds_load_u8 v27, v101 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v101 offset:1104
	ds_load_u8 v26, v101 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v101 offset:1232
	ds_load_u8 v27, v101 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v101 offset:864
	ds_load_u8 v42, v101 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v101 offset:992
	ds_load_u8 v43, v101 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v101 offset:608
	ds_load_u8 v44, v101 offset:544
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v101 offset:352
	ds_load_u8 v42, v101 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v101 offset:736
	ds_load_u8 v45, v101 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v101 offset:480
	ds_load_u8 v43, v101 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v101 offset:32
	ds_load_u8 v42, v101 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v101 offset:224
	ds_load_u8 v43, v101 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v101 offset:1888
	ds_load_u8 v42, v101 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v101 offset:2016
	ds_load_u8 v43, v101 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v101 offset:1632
	ds_load_u8 v44, v101 offset:1568
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v101 offset:1376
	ds_load_u8 v42, v101 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v101 offset:1760
	ds_load_u8 v45, v101 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v101 offset:1504
	ds_load_u8 v43, v101 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v101 offset:1120
	ds_load_u8 v42, v101 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v101 offset:1248
	ds_load_u8 v43, v101 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v101 offset:880
	ds_load_u8 v58, v101 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s48, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v101 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v101 offset:624
	ds_load_u8 v60, v101 offset:560
	v_lshl_or_b32 v88, v58, 16, v57
	ds_load_u8 v57, v101 offset:368
	ds_load_u8 v58, v101 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v101 offset:752
	ds_load_u8 v61, v101 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v60, 16, v59
	ds_load_u8 v58, v101 offset:496
	ds_load_u8 v59, v101 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v86, v58, 16, v57
	ds_load_u8 v57, v101 offset:48
	ds_load_u8 v58, v101 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v101 offset:240
	ds_load_u8 v59, v101 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v58, 16, v57
	ds_load_u8 v57, v101 offset:1904
	ds_load_u8 v58, v101 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s48, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v101 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v101 offset:1648
	ds_load_u8 v60, v101 offset:1584
	v_lshl_or_b32 v110, v58, 16, v57
	ds_load_u8 v57, v101 offset:1392
	ds_load_u8 v58, v101 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v101 offset:1776
	ds_load_u8 v61, v101 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v60, 16, v59
	ds_load_u8 v58, v101 offset:1520
	ds_load_u8 v59, v101 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v108, v58, 16, v57
	ds_load_u8 v57, v101 offset:1136
	ds_load_u8 v58, v101 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v101 offset:1264
	ds_load_u8 v59, v101 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[107:110], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[69:72], v[85:88], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:2880
	ds_load_u8 v70, v101 offset:2816
	v_wmma_i32_16x16x16_iu8 v[77:84], v[73:76], v[107:110], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3008
	ds_load_u8 v71, v101 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:2624
	ds_load_u8 v72, v101 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:2752
	ds_load_u8 v73, v101 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:2368
	ds_load_u8 v70, v101 offset:2304
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:2496
	ds_load_u8 v73, v101 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:2112
	ds_load_u8 v73, v101 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v101 offset:2240
	ds_load_u8 v74, v101 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v102 offset:11520
	ds_load_u8 v74, v102 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v102 offset:12032
	ds_load_u8 v75, v102 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v102 offset:10496
	ds_load_u8 v76, v102 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v102 offset:11008
	ds_load_u8 v85, v102 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v102 offset:9472
	ds_load_u8 v74, v102 offset:9216
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v102 offset:9984
	ds_load_u8 v85, v102 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v102 offset:8448
	ds_load_u8 v85, v102 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v102 offset:8960
	ds_load_u8 v86, v102 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v102 offset:11648
	ds_load_u8 v86, v102 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v102 offset:12160
	ds_load_u8 v87, v102 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v102 offset:10624
	ds_load_u8 v88, v102 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v102 offset:11136
	ds_load_u8 v107, v102 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v102 offset:9600
	ds_load_u8 v86, v102 offset:9344
	v_lshl_or_b32 v87, v107, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v102 offset:10112
	ds_load_u8 v107, v102 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v107, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v102 offset:8576
	ds_load_u8 v107, v102 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v107, v85, 0xc0c0004
	ds_load_u8 v107, v102 offset:9088
	ds_load_u8 v108, v102 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v107, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:2896
	ds_load_u8 v70, v101 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3024
	ds_load_u8 v71, v101 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:2640
	ds_load_u8 v72, v101 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:2768
	ds_load_u8 v107, v101 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:2384
	ds_load_u8 v70, v101 offset:2320
	v_lshl_or_b32 v71, v107, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:2512
	ds_load_u8 v107, v101 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v107, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:2128
	ds_load_u8 v107, v101 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v107, v69, 0xc0c0004
	ds_load_u8 v107, v101 offset:2256
	ds_load_u8 v108, v101 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v107, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:2912
	ds_load_u8 v70, v101 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3040
	ds_load_u8 v71, v101 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:2656
	ds_load_u8 v72, v101 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:2784
	ds_load_u8 v107, v101 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:2400
	ds_load_u8 v70, v101 offset:2336
	v_lshl_or_b32 v71, v107, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:2528
	ds_load_u8 v107, v101 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v107, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:2144
	ds_load_u8 v107, v101 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v107, v69, 0xc0c0004
	ds_load_u8 v107, v101 offset:2272
	ds_load_u8 v108, v101 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v107, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:2928
	ds_load_u8 v70, v101 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s48, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v101 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:2672
	ds_load_u8 v72, v101 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:2800
	ds_load_u8 v107, v101 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:2416
	ds_load_u8 v70, v101 offset:2352
	v_lshl_or_b32 v71, v107, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:2544
	ds_load_u8 v107, v101 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v107, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:2160
	ds_load_u8 v107, v101 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v107, v69, 0xc0c0004
	ds_load_u8 v107, v101 offset:2288
	ds_load_u8 v108, v101 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v107, 16, v69
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:3904
	ds_load_u8 v70, v101 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:4032
	ds_load_u8 v71, v101 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:3648
	ds_load_u8 v72, v101 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:3776
	ds_load_u8 v73, v101 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:3392
	ds_load_u8 v70, v101 offset:3328
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3520
	ds_load_u8 v73, v101 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:3136
	ds_load_u8 v73, v101 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v101 offset:3264
	ds_load_u8 v74, v101 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v102 offset:15616
	ds_load_u8 v74, v102 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v102 offset:16128
	ds_load_u8 v75, v102 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v102 offset:14592
	ds_load_u8 v76, v102 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v102 offset:15104
	ds_load_u8 v85, v102 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v102 offset:13568
	ds_load_u8 v74, v102 offset:13312
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v102 offset:14080
	ds_load_u8 v85, v102 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v102 offset:12544
	ds_load_u8 v85, v102 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v102 offset:13056
	ds_load_u8 v86, v102 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v102 offset:15744
	ds_load_u8 v86, v102 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v102 offset:16256
	ds_load_u8 v87, v102 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v102 offset:14720
	ds_load_u8 v88, v102 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v102 offset:15232
	ds_load_u8 v107, v102 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v102 offset:13696
	ds_load_u8 v86, v102 offset:13440
	v_lshl_or_b32 v87, v107, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v102 offset:14208
	ds_load_u8 v107, v102 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v107, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v102 offset:12672
	ds_load_u8 v107, v102 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v107, v85, 0xc0c0004
	ds_load_u8 v107, v102 offset:13184
	ds_load_u8 v102, v102 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v102, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v102, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:3920
	ds_load_u8 v70, v101 offset:3856
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:4048
	ds_load_u8 v71, v101 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:3664
	ds_load_u8 v72, v101 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:3792
	ds_load_u8 v102, v101 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v102, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:3408
	ds_load_u8 v70, v101 offset:3344
	v_lshl_or_b32 v71, v102, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3536
	ds_load_u8 v102, v101 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v102, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:3152
	ds_load_u8 v102, v101 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v102, v69, 0xc0c0004
	ds_load_u8 v102, v101 offset:3280
	ds_load_u8 v107, v101 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v107, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v102, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:3936
	ds_load_u8 v70, v101 offset:3872
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:4064
	ds_load_u8 v71, v101 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:3680
	ds_load_u8 v72, v101 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:3808
	ds_load_u8 v102, v101 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v102, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:3424
	ds_load_u8 v70, v101 offset:3360
	v_lshl_or_b32 v71, v102, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3552
	ds_load_u8 v102, v101 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v102, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:3168
	ds_load_u8 v102, v101 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v102, v69, 0xc0c0004
	ds_load_u8 v102, v101 offset:3296
	ds_load_u8 v107, v101 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v107, v102, 0xc0c0004
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v107, s12, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v69, v102, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v101 offset:3952
	ds_load_u8 v70, v101 offset:3888
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s48, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v101 offset:4016
	s_mov_b32 s48, s46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v101 offset:3696
	ds_load_u8 v72, v101 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v101 offset:3824
	ds_load_u8 v102, v101 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v102, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v101 offset:3440
	ds_load_u8 v70, v101 offset:3376
	v_lshl_or_b32 v71, v102, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v101 offset:3568
	ds_load_u8 v102, v101 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v102, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v101 offset:3184
	ds_load_u8 v102, v101 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v102, v69, 0xc0c0004
	ds_load_u8 v102, v101 offset:3312
	ds_load_u8 v101, v101 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v101, 16, v69
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v85, s12, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v69, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v77
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v77, v159, s15, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v71, v78
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v78, v156, s14, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v73, v80
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v80, v158, s14, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v72, v79
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	v_add_lshl_u32 v79, v157, s14, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v81
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v77, v77, s[40:43], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v81, s12, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v82
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v76, v83
	v_cvt_f32_i32_e32 v9, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_lshlrev_b32 v77, 16, v77
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v99, v77 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v77, v160, s14, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s14, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s14, s14, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	s_clause 0x3
	buffer_load_u16 v101, v77, s[36:39], 0 offen
	buffer_load_u16 v102, v78, s[36:39], 0 offen
	buffer_load_u16 v120, v79, s[36:39], 0 offen
	buffer_load_u16 v121, v80, s[36:39], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v77, s12, v89
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[77:80], v77, s[28:31], 0 offen
	buffer_load_b128 v[81:84], v81, s[28:31], 0 offen
	buffer_load_b128 v[85:88], v85, s[28:31], 0 offen
	buffer_load_b128 v[107:110], v107, s[28:31], 0 offen
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[111:114], v100 offset:40960
	ds_load_b128 v[115:118], v100 offset:40976
	ds_load_b128 v[193:196], v100 offset:41472
	ds_load_b128 v[197:200], v100 offset:41488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v122, s14, v123
	s_mov_b32 s12, s45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s46, s14, 0x8000
	ds_store_b128 v122, v[65:68] offset:32768
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s47
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v66, 16, v101
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v68, 16, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, s45, v123
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v67, 16, v102
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v101, v114, v66
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v205, v115, v66 :: v_dual_mul_f32 v202, v112, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[77:80]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v206, v116, v66 :: v_dual_lshlrev_b32 v77, 16, v121
	v_mul_f32_e32 v78, v111, v66
	v_mul_f32_e32 v79, v112, v66
	v_dual_mul_f32 v80, v113, v66 :: v_dual_mul_f32 v201, v111, v68
	v_mul_f32_e32 v203, v113, v68
	v_mul_f32_e32 v204, v114, v68
	v_mul_f32_e32 v102, v111, v67
	v_mul_f32_e32 v120, v112, v67
	v_mul_f32_e32 v121, v113, v67
	v_dual_mul_f32 v122, v114, v67 :: v_dual_mul_f32 v111, v111, v77
	v_mul_f32_e32 v208, v118, v66
	v_mul_f32_e32 v112, v112, v77
	v_dual_mul_f32 v113, v113, v77 :: v_dual_mul_f32 v210, v116, v67
	v_dual_mul_f32 v114, v114, v77 :: v_dual_mul_f32 v207, v117, v66
	v_dual_mul_f32 v209, v115, v67 :: v_dual_mul_f32 v214, v116, v68
	v_dual_mul_f32 v211, v117, v67 :: v_dual_mul_f32 v216, v118, v68
	v_dual_mul_f32 v212, v118, v67 :: v_dual_mul_f32 v213, v115, v68
	v_dual_mul_f32 v215, v117, v68 :: v_dual_mul_f32 v116, v116, v77
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v115, v115, v77 :: v_dual_mul_f32 v218, v194, v66
	v_dual_mul_f32 v117, v117, v77 :: v_dual_mul_f32 v220, v196, v66
	v_dual_mul_f32 v118, v118, v77 :: v_dual_mul_f32 v217, v193, v66
	v_dual_mul_f32 v219, v195, v66 :: v_dual_mul_f32 v222, v194, v67
	v_dual_mul_f32 v221, v193, v67 :: v_dual_mul_f32 v226, v194, v68
	v_dual_mul_f32 v223, v195, v67 :: v_dual_mul_f32 v228, v196, v68
	v_dual_mul_f32 v224, v196, v67 :: v_dual_mul_f32 v225, v193, v68
	v_dual_mul_f32 v227, v195, v68 :: v_dual_mul_f32 v194, v194, v77
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v193, v193, v77 :: v_dual_mul_f32 v230, v198, v66
	v_mul_f32_e32 v195, v195, v77
	v_dual_mul_f32 v196, v196, v77 :: v_dual_mul_f32 v229, v197, v66
	v_dual_mul_f32 v231, v199, v66 :: v_dual_mul_f32 v232, v197, v67
	v_dual_mul_f32 v66, v200, v66 :: v_dual_mul_f32 v233, v198, v67
	v_dual_mul_f32 v234, v199, v67 :: v_dual_mul_f32 v235, v197, v68
	v_dual_mul_f32 v67, v200, v67 :: v_dual_mul_f32 v236, v198, v68
	v_dual_mul_f32 v237, v199, v68 :: v_dual_mul_f32 v198, v198, v77
	v_dual_mul_f32 v68, v200, v68 :: v_dual_mul_f32 v197, v197, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v126, v80, v19 :: v_dual_mul_f32 v199, v199, v77
	v_dual_fmac_f32 v142, v121, v27 :: v_dual_mul_f32 v77, v200, v77
	v_fmac_f32_e32 v130, v207, v23
	v_dual_fmac_f32 v124, v78, v17 :: v_dual_fmac_f32 v125, v79, v18
	v_dual_fmac_f32 v127, v101, v20 :: v_dual_fmac_f32 v134, v219, v11
	v_dual_fmac_f32 v128, v205, v21 :: v_dual_fmac_f32 v129, v206, v22
	v_dual_fmac_f32 v131, v208, v24 :: v_dual_fmac_f32 v132, v217, v69
	v_dual_fmac_f32 v133, v218, v10 :: v_dual_fmac_f32 v136, v229, v13
	v_dual_fmac_f32 v135, v220, v12 :: v_dual_fmac_f32 v138, v231, v15
	v_dual_fmac_f32 v137, v230, v14 :: v_dual_fmac_f32 v144, v209, v29
	v_dual_fmac_f32 v139, v66, v16 :: v_dual_fmac_f32 v146, v211, v31
	v_dual_fmac_f32 v140, v102, v25 :: v_dual_fmac_f32 v141, v120, v26
	v_dual_fmac_f32 v143, v122, v28 :: v_dual_fmac_f32 v148, v221, v33
	v_dual_fmac_f32 v145, v210, v30 :: v_dual_fmac_f32 v150, v223, v35
	v_dual_fmac_f32 v147, v212, v32 :: v_dual_fmac_f32 v154, v234, v39
	v_dual_fmac_f32 v149, v222, v34 :: v_dual_fmac_f32 v152, v232, v37
	v_dual_fmac_f32 v151, v224, v36 :: v_dual_fmac_f32 v162, v202, v42
	v_dual_fmac_f32 v153, v233, v38 :: v_dual_fmac_f32 v164, v204, v44
	v_dual_fmac_f32 v155, v67, v40 :: v_dual_fmac_f32 v166, v214, v46
	v_dual_fmac_f32 v161, v201, v41 :: v_dual_fmac_f32 v168, v216, v48
	v_dual_fmac_f32 v163, v203, v43 :: v_dual_fmac_f32 v170, v226, v50
	v_dual_fmac_f32 v165, v213, v45 :: v_dual_fmac_f32 v172, v228, v52
	v_dual_fmac_f32 v167, v215, v47 :: v_dual_fmac_f32 v174, v236, v54
	v_dual_fmac_f32 v169, v225, v49 :: v_dual_fmac_f32 v176, v68, v56
	v_dual_fmac_f32 v171, v227, v51 :: v_dual_fmac_f32 v178, v112, v58
	v_dual_fmac_f32 v173, v235, v53 :: v_dual_fmac_f32 v180, v114, v60
	v_dual_fmac_f32 v175, v237, v55 :: v_dual_fmac_f32 v182, v116, v62
	v_dual_fmac_f32 v177, v111, v57 :: v_dual_fmac_f32 v184, v118, v64
	v_dual_fmac_f32 v179, v113, v59 :: v_dual_fmac_f32 v188, v195, v72
	v_dual_fmac_f32 v181, v115, v61 :: v_dual_fmac_f32 v186, v193, v70
	v_dual_fmac_f32 v183, v117, v63 :: v_dual_fmac_f32 v192, v199, v76
	v_dual_fmac_f32 v187, v194, v71 :: v_dual_fmac_f32 v190, v197, v74
	v_fmac_f32_e32 v189, v196, v73
	v_fmac_f32_e32 v191, v198, v75
	v_fmac_f32_e32 v185, v77, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[81:84] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[85:88] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[107:110] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v108, v95 :: v_dual_mov_b32 v109, v96
	v_dual_mov_b32 v110, v97 :: v_dual_mov_b32 v111, v98
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_or_b32_e32 v112, v92, v245
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v248, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v247, 0
	v_mov_b32_e32 v117, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s12, v112
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v113, s48, v245
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v113 offset:832
	ds_load_u8 v2, v113 offset:768
	ds_load_u8 v3, v113 offset:960
	ds_load_u8 v4, v113 offset:896
	ds_load_u8 v5, v113 offset:576
	ds_load_u8 v6, v113 offset:512
	ds_load_u8 v7, v113 offset:704
	ds_load_u8 v8, v113 offset:640
	ds_load_u8 v9, v113 offset:320
	ds_load_u8 v10, v113 offset:256
	ds_load_u8 v11, v113 offset:448
	ds_load_u8 v12, v113 offset:384
	ds_load_u8 v13, v113 offset:64
	ds_load_u8 v14, v113
	ds_load_u8 v15, v113 offset:192
	ds_load_u8 v16, v113 offset:128
	ds_load_u8 v17, v41 offset:3328
	ds_load_u8 v18, v41 offset:3072
	ds_load_u8 v19, v41 offset:3840
	ds_load_u8 v20, v41 offset:3584
	ds_load_u8 v21, v41 offset:2304
	ds_load_u8 v22, v41 offset:2048
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v4, v41 offset:2816
	ds_load_u8 v5, v41 offset:2560
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_lshl_or_b32 v32, v2, 16, v1
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v14, v13, 0xc0c0004
	v_perm_b32 v8, v12, v11, 0xc0c0004
	ds_load_u8 v9, v41 offset:1280
	ds_load_u8 v10, v41 offset:1024
	ds_load_u8 v11, v41 offset:1792
	ds_load_u8 v12, v41 offset:1536
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v16, v15, 0xc0c0004
	v_lshl_or_b32 v31, v6, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v18, v17, 0xc0c0004
	v_lshl_or_b32 v30, v8, 16, v7
	ds_load_u8 v8, v41 offset:256
	ds_load_u8 v13, v41
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v41 offset:768
	ds_load_u8 v2, v41 offset:512
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v6, 16, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	v_lshl_or_b32 v95, v4, 16, v7
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v13, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_lshl_or_b32 v93, v1, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v2, s13
	ds_load_u8 v9, v113 offset:1856
	ds_load_u8 v10, v113 offset:1792
	ds_load_u8 v11, v113 offset:1984
	ds_load_u8 v12, v113 offset:1920
	ds_load_u8 v14, v113 offset:1600
	ds_load_u8 v15, v113 offset:1536
	ds_load_u8 v16, v113 offset:1728
	ds_load_u8 v17, v113 offset:1664
	ds_load_u8 v18, v113 offset:1344
	ds_load_u8 v19, v113 offset:1280
	ds_load_u8 v13, v113 offset:1472
	ds_load_u8 v20, v113 offset:1408
	v_mov_b32_e32 v4, s15
	ds_load_u8 v27, v41 offset:7424
	ds_load_u8 v28, v41 offset:7168
	ds_load_u8 v33, v41 offset:7936
	ds_load_u8 v37, v41 offset:7680
	ds_load_u8 v38, v41 offset:6400
	ds_load_u8 v39, v41 offset:6144
	ds_load_u8 v40, v41 offset:6912
	ds_load_u8 v42, v41 offset:6656
	ds_load_u8 v43, v41 offset:5376
	ds_load_u8 v44, v41 offset:5120
	ds_load_u8 v45, v41 offset:5888
	ds_load_u8 v46, v41 offset:5632
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v21, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v22, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v23, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v36, v22, 16, v21
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v113 offset:1088
	ds_load_u8 v24, v113 offset:1024
	ds_load_u8 v25, v113 offset:1216
	ds_load_u8 v26, v113 offset:1152
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v20, v13, 0xc0c0004
	v_lshl_or_b32 v35, v17, 16, v23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v23, v28, v27, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v20, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v24, v19, 0xc0c0004
	ds_load_u8 v19, v41 offset:4352
	ds_load_u8 v20, v41 offset:4096
	ds_load_u8 v21, v41 offset:4864
	ds_load_u8 v22, v41 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	v_perm_b32 v24, v37, v33, 0xc0c0004
	ds_load_u8 v26, v113 offset:2880
	ds_load_u8 v27, v113 offset:2816
	ds_load_u8 v28, v113 offset:3008
	ds_load_u8 v37, v113 offset:2944
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_perm_b32 v38, v42, v40, 0xc0c0004
	v_perm_b32 v39, v44, v43, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	ds_load_u8 v42, v113 offset:2624
	ds_load_u8 v43, v113 offset:2560
	ds_load_u8 v44, v113 offset:2752
	ds_load_u8 v45, v113 offset:2688
	v_lshl_or_b32 v33, v18, 16, v17
	v_lshl_or_b32 v68, v24, 16, v23
	v_lshl_or_b32 v67, v38, 16, v25
	v_lshl_or_b32 v66, v40, 16, v39
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	ds_load_u8 v19, v113 offset:2368
	ds_load_u8 v20, v113 offset:2304
	ds_load_u8 v21, v113 offset:2496
	ds_load_u8 v22, v113 offset:2432
	v_lshl_or_b32 v65, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v37, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v18, 16, v17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v43, v42, 0xc0c0004
	ds_load_u8 v23, v113 offset:2112
	ds_load_u8 v24, v113 offset:2048
	ds_load_u8 v25, v113 offset:2240
	ds_load_u8 v26, v113 offset:2176
	ds_load_u8 v27, v41 offset:11520
	ds_load_u8 v28, v41 offset:11264
	ds_load_u8 v37, v41 offset:12032
	ds_load_u8 v42, v41 offset:11776
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v39, v18, 16, v17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v22, v21, 0xc0c0004
	ds_load_u8 v21, v41 offset:10496
	ds_load_u8 v22, v41 offset:10240
	ds_load_u8 v43, v41 offset:11008
	ds_load_u8 v44, v41 offset:10752
	ds_load_u8 v45, v41 offset:9472
	ds_load_u8 v46, v41 offset:9216
	ds_load_u8 v47, v41 offset:9984
	ds_load_u8 v48, v41 offset:9728
	ds_load_u8 v49, v41 offset:8448
	ds_load_u8 v50, v41 offset:8192
	ds_load_u8 v51, v41 offset:8960
	ds_load_u8 v52, v41 offset:8704
	v_lshl_or_b32 v38, v20, 16, v19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v20, v42, v37, 0xc0c0004
	ds_load_u8 v23, v113 offset:3904
	ds_load_u8 v24, v113 offset:3840
	ds_load_u8 v25, v113 offset:4032
	ds_load_u8 v26, v113 offset:3968
	ds_load_u8 v27, v113 offset:3648
	ds_load_u8 v28, v113 offset:3584
	ds_load_u8 v42, v113 offset:3776
	ds_load_u8 v53, v113 offset:3712
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v22, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v48, v47, 0xc0c0004
	v_lshl_or_b32 v37, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_lshl_or_b32 v72, v20, 16, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_lshl_or_b32 v71, v22, 16, v21
	v_lshl_or_b32 v70, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v69, v46, 16, v45
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v53, v42, 0xc0c0004
	ds_load_u8 v21, v113 offset:3392
	ds_load_u8 v22, v113 offset:3328
	ds_load_u8 v23, v113 offset:3520
	ds_load_u8 v24, v113 offset:3456
	ds_load_u8 v25, v113 offset:3136
	ds_load_u8 v26, v113 offset:3072
	ds_load_u8 v27, v113 offset:3264
	ds_load_u8 v28, v113 offset:3200
	ds_load_u8 v42, v41 offset:15616
	ds_load_u8 v43, v41 offset:15360
	ds_load_u8 v44, v41 offset:16128
	ds_load_u8 v45, v41 offset:15872
	ds_load_u8 v46, v41 offset:14592
	ds_load_u8 v47, v41 offset:14336
	ds_load_u8 v48, v41 offset:15104
	ds_load_u8 v49, v41 offset:14848
	ds_load_u8 v50, v41 offset:13568
	ds_load_u8 v51, v41 offset:13312
	ds_load_u8 v52, v41 offset:14080
	ds_load_u8 v53, v41 offset:13824
	ds_load_u8 v54, v41 offset:12544
	ds_load_u8 v55, v41 offset:12288
	ds_load_u8 v56, v41 offset:3456
	ds_load_u8 v57, v41 offset:3200
	ds_load_u8 v58, v41 offset:3968
	ds_load_u8 v59, v41 offset:3712
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_lshl_or_b32 v27, v20, 16, v19
	v_lshl_or_b32 v26, v22, 16, v21
	v_lshl_or_b32 v25, v24, 16, v23
	v_lshl_or_b32 v28, v18, 16, v17
	v_lshl_or_b32 v76, v43, 16, v42
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v43, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v44, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v55, v54, 0xc0c0004
	ds_load_u8 v17, v41 offset:13056
	ds_load_u8 v18, v41 offset:12800
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v59, v58, 0xc0c0004
	ds_load_u8 v21, v41 offset:2432
	ds_load_u8 v22, v41 offset:2176
	ds_load_u8 v23, v41 offset:2944
	ds_load_u8 v24, v41 offset:2688
	ds_load_u8 v47, v41 offset:1408
	ds_load_u8 v48, v41 offset:1152
	ds_load_u8 v49, v41 offset:1920
	ds_load_u8 v50, v41 offset:1664
	ds_load_u8 v51, v41 offset:384
	ds_load_u8 v52, v41 offset:128
	ds_load_u8 v53, v41 offset:896
	ds_load_u8 v54, v41 offset:640
	ds_load_u8 v55, v41 offset:7552
	ds_load_u8 v56, v41 offset:7296
	ds_load_u8 v57, v41 offset:8064
	ds_load_u8 v58, v41 offset:7808
	ds_load_u8 v59, v41 offset:6528
	ds_load_u8 v60, v41 offset:6272
	ds_load_u8 v61, v41 offset:7040
	ds_load_u8 v62, v41 offset:6784
	ds_load_u8 v63, v41 offset:5504
	ds_load_u8 v64, v41 offset:5248
	ds_load_u8 v73, v41 offset:6016
	ds_load_u8 v74, v41 offset:5760
	ds_load_u8 v75, v41 offset:4480
	ds_load_u8 v77, v41 offset:4224
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v50, v49, 0xc0c0004
	ds_load_u8 v48, v41 offset:4992
	ds_load_u8 v49, v41 offset:4736
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_lshl_or_b32 v92, v20, 16, v19
	v_lshl_or_b32 v91, v22, 16, v21
	v_lshl_or_b32 v90, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v89, v50, 16, v47
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_perm_b32 v51, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v77, v75, 0xc0c0004
	ds_load_u8 v57, v41 offset:11648
	ds_load_u8 v58, v41 offset:11392
	ds_load_u8 v59, v41 offset:12160
	ds_load_u8 v60, v41 offset:11904
	ds_load_u8 v61, v41 offset:10624
	ds_load_u8 v62, v41 offset:10368
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[29:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v41 offset:8576
	ds_load_u8 v30, v41 offset:8320
	ds_load_u8 v31, v41 offset:9088
	ds_load_u8 v32, v41 offset:8832
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v41 offset:11136
	ds_load_u8 v63, v41 offset:10880
	ds_load_u8 v64, v41 offset:9600
	ds_load_u8 v73, v41 offset:9344
	ds_load_u8 v74, v41 offset:10112
	ds_load_u8 v75, v41 offset:9856
	v_lshl_or_b32 v84, v50, 16, v47
	v_lshl_or_b32 v83, v53, 16, v52
	v_lshl_or_b32 v82, v55, 16, v54
	v_lshl_or_b32 v81, v48, 16, v56
	ds_load_u8 v52, v41 offset:15744
	ds_load_u8 v53, v41 offset:15488
	ds_load_u8 v54, v41 offset:16256
	ds_load_u8 v55, v41 offset:16000
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v48, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v50, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v63, v49, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v73, v64, 0xc0c0004
	v_perm_b32 v30, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v75, v74, 0xc0c0004
	ds_load_u8 v58, v41 offset:14720
	ds_load_u8 v59, v41 offset:14464
	ds_load_u8 v60, v41 offset:15232
	ds_load_u8 v61, v41 offset:14976
	ds_load_u8 v31, v41 offset:13696
	ds_load_u8 v32, v41 offset:13440
	ds_load_u8 v33, v41 offset:14208
	ds_load_u8 v34, v41 offset:13952
	v_lshl_or_b32 v80, v48, 16, v47
	v_lshl_or_b32 v79, v49, 16, v50
	v_lshl_or_b32 v78, v57, 16, v56
	v_lshl_or_b32 v77, v30, 16, v29
	v_lshl_or_b32 v75, v43, 16, v42
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v29, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v55, v54, 0xc0c0004
	v_lshl_or_b32 v74, v45, 16, v44
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[37:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v41 offset:12672
	ds_load_u8 v36, v41 offset:12416
	ds_load_u8 v37, v41 offset:13184
	ds_load_u8 v38, v41 offset:12928
	ds_load_u8 v39, v113 offset:848
	ds_load_u8 v40, v113 offset:784
	ds_load_u8 v41, v113 offset:976
	ds_load_u8 v42, v113 offset:912
	v_lshl_or_b32 v73, v51, 16, v46
	v_lshl_or_b32 v88, v30, 16, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[25:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_perm_b32 v30, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v34, v33, 0xc0c0004
	ds_load_u8 v33, v113 offset:592
	ds_load_u8 v34, v113 offset:528
	ds_load_u8 v43, v113 offset:720
	ds_load_u8 v44, v113 offset:656
	ds_load_u8 v45, v113 offset:336
	ds_load_u8 v46, v113 offset:272
	ds_load_u8 v47, v113 offset:464
	ds_load_u8 v48, v113 offset:400
	ds_load_u8 v49, v113 offset:80
	ds_load_u8 v50, v113 offset:16
	ds_load_u8 v51, v113 offset:208
	ds_load_u8 v52, v113 offset:144
	v_cvt_f32_i32_e32 v193, v10
	v_cvt_f32_i32_e32 v194, v11
	v_lshl_or_b32 v87, v30, 16, v29
	v_lshl_or_b32 v86, v32, 16, v31
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v31, v40, v39, 0xc0c0004
	ds_load_u8 v35, v113 offset:1872
	ds_load_u8 v36, v113 offset:1808
	ds_load_u8 v37, v113 offset:2000
	ds_load_u8 v38, v113 offset:1936
	ds_load_u8 v39, v113 offset:1616
	ds_load_u8 v40, v113 offset:1552
	ds_load_u8 v53, v113 offset:1744
	ds_load_u8 v54, v113 offset:1680
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v32, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v85, v30, 16, v29
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v34, v44, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v195, v12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	v_lshl_or_b32 v44, v32, 16, v31
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v48, v47, 0xc0c0004
	v_lshl_or_b32 v43, v34, 16, v33
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[25:28], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	v_cvt_f32_i32_e32 v196, v13
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v38, v37, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v45
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v40, v39, 0xc0c0004
	v_cvt_f32_i32_e32 v121, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v54, v53, 0xc0c0004
	ds_load_u8 v37, v113 offset:1360
	ds_load_u8 v38, v113 offset:1296
	ds_load_u8 v39, v113 offset:1488
	ds_load_u8 v40, v113 offset:1424
	ds_load_u8 v45, v113 offset:1104
	ds_load_u8 v46, v113 offset:1040
	ds_load_u8 v47, v113 offset:1232
	ds_load_u8 v49, v113 offset:1168
	ds_load_u8 v50, v113 offset:2896
	ds_load_u8 v51, v113 offset:2832
	ds_load_u8 v52, v113 offset:3024
	ds_load_u8 v53, v113 offset:2960
	ds_load_u8 v54, v113 offset:2640
	ds_load_u8 v55, v113 offset:2576
	ds_load_u8 v56, v113 offset:2768
	ds_load_u8 v57, v113 offset:2704
	ds_load_u8 v58, v113 offset:2384
	ds_load_u8 v59, v113 offset:2320
	ds_load_u8 v60, v113 offset:2512
	ds_load_u8 v61, v113 offset:2448
	ds_load_u8 v62, v113 offset:2128
	ds_load_u8 v63, v113 offset:2064
	ds_load_u8 v64, v113 offset:2256
	ds_load_u8 v97, v113 offset:2192
	ds_load_u8 v98, v113 offset:3920
	ds_load_u8 v99, v113 offset:3856
	ds_load_u8 v100, v113 offset:4048
	ds_load_u8 v101, v113 offset:3984
	v_lshl_or_b32 v48, v34, 16, v33
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v33, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v37, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v39, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v40, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v49, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v57, v56, 0xc0c0004
	v_lshl_or_b32 v47, v36, 16, v35
	v_lshl_or_b32 v46, v34, 16, v33
	v_lshl_or_b32 v45, v38, 16, v37
	v_lshl_or_b32 v52, v40, 16, v39
	v_lshl_or_b32 v51, v50, 16, v49
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v97, v64, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v101, v100, 0xc0c0004
	ds_load_u8 v39, v113 offset:3664
	ds_load_u8 v40, v113 offset:3600
	ds_load_u8 v49, v113 offset:3792
	ds_load_u8 v53, v113 offset:3728
	ds_load_u8 v54, v113 offset:3408
	ds_load_u8 v55, v113 offset:3344
	ds_load_u8 v56, v113 offset:3536
	ds_load_u8 v57, v113 offset:864
	ds_load_u8 v58, v113 offset:800
	ds_load_u8 v59, v113 offset:992
	ds_load_u8 v60, v113 offset:928
	ds_load_u8 v61, v113 offset:608
	ds_load_u8 v62, v113 offset:544
	ds_load_u8 v63, v113 offset:736
	ds_load_u8 v64, v113 offset:672
	ds_load_u8 v99, v113 offset:352
	ds_load_u8 v100, v113 offset:288
	ds_load_u8 v101, v113 offset:480
	ds_load_u8 v102, v113 offset:416
	ds_load_u8 v115, v113 offset:3472
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v34, 16, v33
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v97, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v53, v49, 0xc0c0004
	v_lshl_or_b32 v49, v36, 16, v35
	v_lshl_or_b32 v98, v38, 16, v37
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v45, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v46, v64, v63, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v41, s48, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v100, v99, 0xc0c0004
	v_lshl_or_b32 v97, v53, 16, v97
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v48, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[49:52], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v114, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v43, v46, 16, v45
	v_lshl_or_b32 v42, v48, 16, v47
	ds_load_u8 v45, v113 offset:96
	ds_load_u8 v46, v113 offset:32
	ds_load_u8 v47, v113 offset:224
	ds_load_u8 v48, v113 offset:160
	ds_load_u8 v49, v113 offset:880
	ds_load_u8 v50, v113 offset:816
	ds_load_u8 v41, v41
	ds_load_u8 v51, v113 offset:944
	ds_load_u8 v52, v113 offset:624
	ds_load_u8 v53, v113 offset:560
	ds_load_u8 v54, v113 offset:752
	ds_load_u8 v55, v113 offset:688
	ds_load_u8 v56, v113 offset:368
	ds_load_u8 v57, v113 offset:304
	ds_load_u8 v58, v113 offset:496
	ds_load_u8 v59, v113 offset:432
	ds_load_u8 v60, v113 offset:112
	ds_load_u8 v61, v113 offset:48
	ds_load_u8 v62, v113 offset:240
	ds_load_u8 v63, v113 offset:176
	v_cvt_f32_i32_e32 v197, v15
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_cvt_f32_i32_e32 v198, v16
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_cvt_f32_i32_e32 v199, v17
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_cvt_f32_i32_e32 v200, v18
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v48, v51, v41, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v45
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v53, v52, 0xc0c0004
	v_cvt_f32_i32_e32 v201, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v55, v54, 0xc0c0004
	v_lshl_or_b32 v102, v48, 16, v47
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v57, v56, 0xc0c0004
	v_cvt_f32_i32_e32 v202, v20
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v59, v58, 0xc0c0004
	v_lshl_or_b32 v101, v50, 16, v49
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v61, v60, 0xc0c0004
	v_cvt_f32_i32_e32 v203, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v63, v62, 0xc0c0004
	v_lshl_or_b32 v100, v52, 16, v51
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v204, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v99, v54, 16, v53
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v205, v23
	v_cvt_f32_i32_e32 v206, v24
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[99:102], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v113 offset:1888
	ds_load_u8 v90, v113 offset:1824
	ds_load_u8 v91, v113 offset:2016
	ds_load_u8 v92, v113 offset:1952
	ds_load_u8 v93, v113 offset:1632
	ds_load_u8 v94, v113 offset:1568
	ds_load_u8 v95, v113 offset:1760
	ds_load_u8 v96, v113 offset:1696
	v_cvt_f32_i32_e32 v207, v9
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v96, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:1376
	ds_load_u8 v95, v113 offset:1312
	ds_load_u8 v99, v113 offset:1504
	ds_load_u8 v100, v113 offset:1440
	v_lshl_or_b32 v92, v90, 16, v89
	v_lshl_or_b32 v96, v115, 16, v114
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v100, v99, 0xc0c0004
	ds_load_u8 v93, v113 offset:1120
	ds_load_u8 v94, v113 offset:1056
	ds_load_u8 v95, v113 offset:1248
	ds_load_u8 v99, v113 offset:1184
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v99, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:2912
	ds_load_u8 v95, v113 offset:2848
	ds_load_u8 v99, v113 offset:3040
	ds_load_u8 v100, v113 offset:2976
	v_lshl_or_b32 v89, v93, 16, v89
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v89, v113 offset:3936
	ds_load_u8 v90, v113 offset:3872
	ds_load_u8 v91, v113 offset:4064
	ds_load_u8 v92, v113 offset:4000
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	ds_load_u8 v99, v113 offset:2656
	ds_load_u8 v100, v113 offset:2592
	v_lshl_or_b32 v102, v95, 16, v94
	ds_load_u8 v93, v113 offset:2400
	ds_load_u8 v94, v113 offset:2336
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v90, s48, v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v113 offset:2784
	ds_load_u8 v101, v113 offset:2720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:2528
	ds_load_u8 v95, v113 offset:2464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v100, 16, v99
	v_lshl_or_b32 v100, v94, 16, v93
	ds_load_u8 v93, v113 offset:2144
	ds_load_u8 v94, v113 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:2272
	ds_load_u8 v95, v113 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v94, 16, v93
	ds_load_u8 v93, v113 offset:3152
	ds_load_u8 v94, v113 offset:3088
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[99:102], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[99:102], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:3280
	ds_load_u8 v95, v113 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v113 offset:3680
	ds_load_u8 v99, v113 offset:3616
	ds_load_u8 v100, v113 offset:3808
	ds_load_u8 v101, v113 offset:3744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v92, v113 offset:1904
	ds_load_u8 v95, v113 offset:1840
	ds_load_u8 v90, v90
	ds_load_u8 v101, v113 offset:1968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v95, v92, 0xc0c0004
	ds_load_u8 v92, v113 offset:1648
	ds_load_u8 v95, v113 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v101, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v90, 16, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v95, v92, 0xc0c0004
	ds_load_u8 v92, v113 offset:1776
	ds_load_u8 v95, v113 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v95, v92, 0xc0c0004
	v_lshl_or_b32 v92, v91, 16, v89
	ds_load_u8 v89, v113 offset:1392
	ds_load_u8 v90, v113 offset:1328
	v_lshl_or_b32 v95, v94, 16, v93
	v_lshl_or_b32 v91, v100, 16, v99
	v_lshl_or_b32 v101, v114, 16, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[95:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[95:98], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v208, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v209, v26
	v_cvt_f32_i32_e32 v210, v27
	v_cvt_f32_i32_e32 v211, v28
	v_cvt_f32_i32_e32 v212, v29
	v_cvt_f32_i32_e32 v213, v30
	v_cvt_f32_i32_e32 v214, v31
	v_cvt_f32_i32_e32 v215, v32
	v_cvt_f32_i32_e32 v216, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:1520
	ds_load_u8 v93, v113 offset:1456
	v_cvt_f32_i32_e32 v217, v34
	v_cvt_f32_i32_e32 v218, v35
	v_cvt_f32_i32_e32 v219, v36
	v_cvt_f32_i32_e32 v220, v37
	v_cvt_f32_i32_e32 v221, v38
	v_cvt_f32_i32_e32 v222, v39
	v_cvt_f32_i32_e32 v223, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v90, 16, v89
	ds_load_u8 v89, v113 offset:1136
	ds_load_u8 v90, v113 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:1264
	ds_load_u8 v93, v113 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v90, 16, v89
	ds_load_u8 v89, v113 offset:3424
	ds_load_u8 v90, v113 offset:3360
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[99:102], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v113 offset:3168
	ds_load_u8 v66, v113 offset:3104
	ds_load_u8 v67, v113 offset:3296
	ds_load_u8 v68, v113 offset:3232
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[99:102], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:3552
	ds_load_u8 v93, v113 offset:3488
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v89, s48, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v67, v113 offset:2928
	ds_load_u8 v68, v113 offset:2864
	ds_load_u8 v89, v89
	ds_load_u8 v93, v113 offset:2992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v93, v89, 0xc0c0004
	ds_load_u8 v89, v113 offset:2672
	ds_load_u8 v93, v113 offset:2608
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v89, 0xc0c0004
	ds_load_u8 v89, v113 offset:2800
	ds_load_u8 v94, v113 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v89, 0xc0c0004
	v_lshl_or_b32 v89, v66, 16, v65
	ds_load_u8 v65, v113 offset:2416
	ds_load_u8 v66, v113 offset:2352
	v_lshl_or_b32 v67, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[89:92], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v224, v57
	v_cvt_f32_i32_e32 v225, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v226, v59
	v_cvt_f32_i32_e32 v227, v60
	v_cvt_f32_i32_e32 v228, v61
	v_cvt_f32_i32_e32 v229, v62
	v_cvt_f32_i32_e32 v230, v63
	v_cvt_f32_i32_e32 v231, v64
	v_cvt_f32_i32_e32 v232, v49
	v_cvt_f32_i32_e32 v233, v50
	v_cvt_f32_i32_e32 v253, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v113 offset:2544
	ds_load_u8 v93, v113 offset:2480
	v_cvt_f32_i32_e32 v255, v52
	v_cvt_f32_i32_e32 v236, v53
	v_cvt_f32_i32_e32 v237, v54
	v_cvt_f32_i32_e32 v252, v55
	v_cvt_f32_i32_e32 v239, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v93, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v113 offset:2160
	ds_load_u8 v93, v113 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v93, v65, 0xc0c0004
	ds_load_u8 v93, v113 offset:2288
	ds_load_u8 v94, v113 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:3952
	v_lshl_or_b32 v65, v93, 16, v65
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v93, s48, v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v81, v113 offset:3888
	ds_load_u8 v82, v93
	ds_load_u8 v83, v113 offset:4016
	ds_load_u8 v84, v113 offset:3696
	ds_load_u8 v93, v113 offset:3632
	ds_load_u8 v99, v113 offset:3824
	ds_load_u8 v100, v113 offset:3760
	ds_load_u8 v101, v113 offset:3440
	ds_load_u8 v102, v113 offset:3376
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[65:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v81, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v93, v84, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v100, v99, 0xc0c0004
	v_lshl_or_b32 v72, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v102, v101, 0xc0c0004
	ds_load_u8 v94, v113 offset:3568
	ds_load_u8 v99, v113 offset:3504
	ds_load_u8 v100, v113 offset:3184
	ds_load_u8 v101, v113 offset:3120
	ds_load_u8 v102, v113 offset:3312
	ds_load_u8 v113, v113 offset:3248
	v_lshl_or_b32 v71, v84, 16, v83
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v94, v99, v94, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v113, v102, 0xc0c0004
	v_lshl_or_b32 v70, v94, 16, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v41
	v_cvt_f32_i32_e32 v113, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v43
	v_cvt_f32_i32_e32 v115, v44
	v_cvt_f32_i32_e32 v116, v45
	v_cvt_f32_i32_e32 v122, v46
	v_cvt_f32_i32_e32 v240, v47
	v_cvt_f32_i32_e32 v241, v48
	v_cvt_f32_i32_e32 v242, v1
	v_cvt_f32_i32_e32 v243, v2
	v_cvt_f32_i32_e32 v244, v3
	v_cvt_f32_i32_e32 v119, v4
	v_cvt_f32_i32_e32 v246, v5
	v_cvt_f32_i32_e32 v247, v6
	v_cvt_f32_i32_e32 v117, v7
	v_cvt_f32_i32_e32 v248, v8
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v160, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v159, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v156, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v157, s4, 1
	v_add_lshl_u32 v5, v158, s4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v118, 0, v104
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v249, v1, s[8:11], 0 offen
	buffer_load_u16 v120, v3, s[8:11], 0 offen
	buffer_load_u16 v254, v4, s[8:11], 0 offen
	buffer_load_u16 v86, v5, s[8:11], 0 offen
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v3, 32, v106
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 28, v105
	v_mov_b32_e32 v58, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v103, v3
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_add_nc_u32_e32 v251, v3, v1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v251, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v118 offset:40960
	ds_load_b128 v[69:72], v118 offset:40976
	ds_load_b128 v[73:76], v118 offset:41472
	ds_load_b128 v[77:80], v118 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s46, v111
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:36
	scratch_store_b32 off, v122, off offset:8
	v_add_nc_u32_e32 v1, s46, v110
	v_add_nc_u32_e32 v122, s46, v245
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v102, off offset:4
	scratch_store_b32 off, v116, off offset:12
	scratch_store_b32 off, v248, off offset:16
	scratch_store_b32 off, v1, off offset:40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v86, off offset:32
	scratch_store_b32 off, v246, off offset:20
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s46, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v25, s45, v112
	v_dual_mov_b32 v248, v117 :: v_dual_add_nc_u32 v57, s46, v108
	v_mov_b32_e32 v117, v247
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v122 offset:832
	ds_load_u8 v2, v122 offset:768
	v_mov_b32_e32 v247, v115
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v119, off offset:24
	scratch_store_b32 off, v113, off offset:28
	v_mov_b32_e32 v63, v196
	v_mov_b32_e32 v119, v232
	v_dual_mov_b32 v235, v230 :: v_dual_mov_b32 v230, v225
	v_dual_mov_b32 v225, v220 :: v_dual_mov_b32 v246, v114
	v_mov_b32_e32 v62, v195
	v_dual_mov_b32 v250, v241 :: v_dual_mov_b32 v241, v236
	v_dual_mov_b32 v236, v231 :: v_dual_mov_b32 v231, v226
	v_mov_b32_e32 v232, v227
	v_dual_mov_b32 v226, v221 :: v_dual_mov_b32 v221, v216
	v_dual_mov_b32 v216, v211 :: v_dual_mov_b32 v211, v206
	v_mov_b32_e32 v206, v201
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v122 offset:960
	ds_load_u8 v3, v122 offset:896
	v_mov_b32_e32 v201, v194
	v_dual_mov_b32 v227, v222 :: v_dual_mov_b32 v220, v215
	v_dual_mov_b32 v222, v217 :: v_dual_mov_b32 v217, v212
	v_dual_mov_b32 v212, v207 :: v_dual_mov_b32 v207, v202
	v_mov_b32_e32 v234, v229
	v_mov_b32_e32 v202, v121
	v_mov_b32_e32 v121, v193
	v_dual_mov_b32 v215, v210 :: v_dual_mov_b32 v238, v233
	v_dual_mov_b32 v210, v205 :: v_dual_mov_b32 v205, v200
	v_dual_mov_b32 v229, v224 :: v_dual_mov_b32 v224, v219
	v_dual_mov_b32 v219, v214 :: v_dual_mov_b32 v214, v209
	v_dual_mov_b32 v209, v204 :: v_dual_mov_b32 v64, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_dual_mov_b32 v204, v199 :: v_dual_mov_b32 v233, v228
	v_dual_mov_b32 v228, v223 :: v_dual_mov_b32 v223, v218
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v122 offset:576
	ds_load_u8 v2, v122 offset:512
	v_dual_mov_b32 v218, v213 :: v_dual_mov_b32 v213, v208
	v_dual_mov_b32 v208, v203 :: v_dual_mov_b32 v203, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v122 offset:704
	ds_load_u8 v3, v122 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v122 offset:320
	ds_load_u8 v2, v122 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v122 offset:448
	ds_load_u8 v3, v122 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v122 offset:64
	ds_load_u8 v2, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v122 offset:192
	ds_load_u8 v3, v122 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v25 offset:3328
	ds_load_u8 v2, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:3840
	ds_load_u8 v3, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v2, 16, v1
	v_mov_b32_e32 v1, s12
	ds_load_u8 v17, v122 offset:1856
	ds_load_u8 v18, v122 offset:1792
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:1984
	ds_load_u8 v19, v122 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v122 offset:1600
	ds_load_u8 v18, v122 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:1728
	ds_load_u8 v19, v122 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v122 offset:1344
	ds_load_u8 v18, v122 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:1472
	ds_load_u8 v19, v122 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v122 offset:1088
	ds_load_u8 v18, v122 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:1216
	ds_load_u8 v19, v122 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v18, 16, v17
	ds_load_u8 v17, v122 offset:2880
	ds_load_u8 v18, v122 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[30:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:3008
	ds_load_u8 v19, v122 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v122 offset:2624
	ds_load_u8 v18, v122 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:2752
	ds_load_u8 v19, v122 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v122 offset:2368
	ds_load_u8 v18, v122 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:2496
	ds_load_u8 v19, v122 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v122 offset:2112
	ds_load_u8 v18, v122 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:2240
	ds_load_u8 v19, v122 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v122 offset:3904
	ds_load_u8 v18, v122 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[105:108], v[34:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:4032
	ds_load_u8 v19, v122 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	ds_load_u8 v17, v122 offset:3648
	ds_load_u8 v18, v122 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:3776
	ds_load_u8 v19, v122 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v122 offset:3392
	ds_load_u8 v18, v122 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:3520
	ds_load_u8 v19, v122 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v122 offset:3136
	ds_load_u8 v18, v122 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:3264
	ds_load_u8 v19, v122 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[109:112], v[38:41], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[93:96], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[30:33], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[34:37], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v122 offset:1872
	ds_load_u8 v34, v122 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:2000
	ds_load_u8 v35, v122 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v92, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v122 offset:1616
	ds_load_u8 v34, v122 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:1744
	ds_load_u8 v35, v122 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v91, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v122 offset:1360
	ds_load_u8 v34, v122 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:1488
	ds_load_u8 v35, v122 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v90, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v122 offset:1104
	ds_load_u8 v34, v122 offset:1040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:1232
	ds_load_u8 v35, v122 offset:1168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v89, v25, 16, v26
	ds_load_u8 v25, v122 offset:848
	ds_load_u8 v26, v122 offset:784
	v_lshl_or_b32 v45, v34, 16, v33
	ds_load_u8 v33, v122 offset:2896
	ds_load_u8 v34, v122 offset:2832
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[38:41], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v122 offset:976
	ds_load_u8 v27, v122 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:3024
	ds_load_u8 v35, v122 offset:2960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v122 offset:592
	ds_load_u8 v26, v122 offset:528
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v122 offset:2640
	ds_load_u8 v34, v122 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v122 offset:720
	ds_load_u8 v27, v122 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:2768
	ds_load_u8 v35, v122 offset:2704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v122 offset:336
	ds_load_u8 v26, v122 offset:272
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v122 offset:2384
	ds_load_u8 v34, v122 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v122 offset:464
	ds_load_u8 v27, v122 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:2512
	ds_load_u8 v35, v122 offset:2448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v122 offset:80
	ds_load_u8 v26, v122 offset:16
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v122 offset:2128
	ds_load_u8 v34, v122 offset:2064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v122 offset:208
	ds_load_u8 v27, v122 offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:2256
	ds_load_u8 v35, v122 offset:2192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v26, 16, v25
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v122 offset:3920
	ds_load_u8 v34, v122 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[49:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:4048
	ds_load_u8 v35, v122 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v34, 16, v33
	ds_load_u8 v33, v122 offset:3664
	ds_load_u8 v34, v122 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:3792
	ds_load_u8 v35, v122 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v34, 16, v33
	ds_load_u8 v33, v122 offset:3408
	ds_load_u8 v34, v122 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:3536
	ds_load_u8 v35, v122 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v122 offset:3152
	ds_load_u8 v34, v122 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v122 offset:3280
	ds_load_u8 v35, v122 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v122 offset:864
	ds_load_u8 v42, v122 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[109:112], v[53:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[49:52], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v122 offset:1888
	ds_load_u8 v50, v122 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[53:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v122 offset:992
	ds_load_u8 v43, v122 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:2016
	ds_load_u8 v51, v122 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v122 offset:608
	ds_load_u8 v42, v122 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v122 offset:1632
	ds_load_u8 v50, v122 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v122 offset:736
	ds_load_u8 v43, v122 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:1760
	ds_load_u8 v51, v122 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v122 offset:352
	ds_load_u8 v42, v122 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v122 offset:1376
	ds_load_u8 v50, v122 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v122 offset:480
	ds_load_u8 v43, v122 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:1504
	ds_load_u8 v51, v122 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v122 offset:96
	ds_load_u8 v42, v122 offset:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v122 offset:1120
	ds_load_u8 v50, v122 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v122 offset:224
	ds_load_u8 v43, v122 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:1248
	ds_load_u8 v51, v122 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v122 offset:2912
	ds_load_u8 v50, v122 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:3040
	ds_load_u8 v51, v122 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v50, 16, v49
	ds_load_u8 v49, v122 offset:2656
	ds_load_u8 v50, v122 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:2784
	ds_load_u8 v51, v122 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v50, 16, v49
	ds_load_u8 v49, v122 offset:2400
	ds_load_u8 v50, v122 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:2528
	ds_load_u8 v51, v122 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v50, 16, v49
	ds_load_u8 v49, v122 offset:2144
	ds_load_u8 v50, v122 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:2272
	ds_load_u8 v51, v122 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v49
	ds_load_u8 v49, v122 offset:3936
	ds_load_u8 v50, v122 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[193:196], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:4064
	ds_load_u8 v51, v122 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v50, 16, v49
	ds_load_u8 v49, v122 offset:3680
	ds_load_u8 v50, v122 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:3808
	ds_load_u8 v51, v122 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v50, 16, v49
	ds_load_u8 v49, v122 offset:3424
	ds_load_u8 v50, v122 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:3552
	ds_load_u8 v51, v122 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v50, 16, v49
	ds_load_u8 v49, v122 offset:3168
	ds_load_u8 v50, v122 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v122 offset:3296
	ds_load_u8 v51, v122 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[58:61], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v58, v122 offset:880
	ds_load_u8 v59, v122 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[109:112], v[197:200], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[113:116], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[193:196], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v196, v63 :: v_dual_mov_b32 v195, v62
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[197:200], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v197, v64 :: v_dual_mov_b32 v200, v205
	v_dual_mov_b32 v205, v210 :: v_dual_mov_b32 v210, v215
	v_dual_mov_b32 v215, v220 :: v_dual_mov_b32 v220, v225
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v57, v57
	ds_load_u8 v59, v122 offset:944
	v_mov_b32_e32 v225, v230
	v_dual_mov_b32 v199, v204 :: v_dual_mov_b32 v198, v203
	v_dual_mov_b32 v204, v209 :: v_dual_mov_b32 v209, v214
	v_dual_mov_b32 v214, v219 :: v_dual_mov_b32 v219, v224
	v_dual_mov_b32 v224, v229 :: v_dual_mov_b32 v229, v234
	v_dual_mov_b32 v203, v208 :: v_dual_mov_b32 v208, v213
	v_dual_mov_b32 v213, v218 :: v_dual_mov_b32 v218, v223
	v_dual_mov_b32 v223, v228 :: v_dual_mov_b32 v228, v233
	v_dual_mov_b32 v233, v238 :: v_dual_mov_b32 v230, v235
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v57, 16, v58
	ds_load_u8 v57, v122 offset:624
	ds_load_u8 v58, v122 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v122 offset:752
	ds_load_u8 v59, v122 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v58, 16, v57
	ds_load_u8 v57, v122 offset:368
	ds_load_u8 v58, v122 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v122 offset:496
	ds_load_u8 v59, v122 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v58, 16, v57
	ds_load_u8 v57, v122 offset:112
	ds_load_u8 v58, v122 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v122 offset:240
	ds_load_u8 v59, v122 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v97, v122 offset:1904
	ds_load_u8 v98, v122 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[93:96], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v115, v247
	v_mov_b32_e32 v247, v117
	v_dual_mov_b32 v117, v248 :: v_dual_mov_b32 v114, v246
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:12
	scratch_load_b32 v248, off, off offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	scratch_load_b32 v98, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v98, v98
	ds_load_u8 v99, v122 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v122 offset:1648
	ds_load_u8 v98, v122 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v122 offset:1776
	ds_load_u8 v99, v122 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v98, 16, v97
	ds_load_u8 v97, v122 offset:1392
	ds_load_u8 v98, v122 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v122 offset:1520
	ds_load_u8 v193, v122 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v193, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v122 offset:1136
	ds_load_u8 v193, v122 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v193, v97, 0xc0c0004
	ds_load_u8 v193, v122 offset:1264
	ds_load_u8 v194, v122 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v193, 16, v97
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[97:100], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v101, v122 offset:2928
	ds_load_u8 v102, v122 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	scratch_load_b32 v102, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v102, v102
	ds_load_u8 v103, v122 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v122 offset:2672
	ds_load_u8 v102, v122 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v122 offset:2800
	ds_load_u8 v103, v122 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v122 offset:2416
	ds_load_u8 v102, v122 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v122 offset:2544
	ds_load_u8 v193, v122 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v193, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v122 offset:2160
	ds_load_u8 v193, v122 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v193, v101, 0xc0c0004
	ds_load_u8 v193, v122 offset:2288
	ds_load_u8 v194, v122 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_dual_mov_b32 v194, v201 :: v_dual_mov_b32 v201, v206
	v_dual_mov_b32 v206, v211 :: v_dual_mov_b32 v211, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v101, v193, 16, v101
	v_dual_mov_b32 v216, v221 :: v_dual_mov_b32 v221, v226
	v_dual_mov_b32 v226, v231 :: v_dual_mov_b32 v231, v236
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[101:104], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v105, v122 offset:3952
	ds_load_u8 v106, v122 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:32
	scratch_load_b32 v102, off, off offset:4
	v_dual_mov_b32 v236, v241 :: v_dual_mov_b32 v241, v250
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	scratch_load_b32 v106, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v106, v106
	ds_load_u8 v107, v122 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v122 offset:3696
	ds_load_u8 v106, v122 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v122 offset:3824
	ds_load_u8 v107, v122 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v122 offset:3440
	ds_load_u8 v106, v122 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v122 offset:3568
	ds_load_u8 v193, v122 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v193, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v122 offset:3184
	ds_load_u8 v193, v122 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v193, v105, 0xc0c0004
	ds_load_u8 v193, v122 offset:3312
	ds_load_u8 v122, v122 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v122, v193, 0xc0c0004
	v_mov_b32_e32 v193, v121
	v_dual_mov_b32 v121, v202 :: v_dual_mov_b32 v202, v207
	v_dual_mov_b32 v207, v212 :: v_dual_mov_b32 v212, v217
	v_dual_mov_b32 v217, v222 :: v_dual_mov_b32 v222, v227
	v_dual_mov_b32 v227, v232 :: v_dual_mov_b32 v232, v119
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v246, off, off offset:20
	scratch_load_b32 v113, off, off offset:28
	scratch_load_b32 v119, off, off offset:24
	v_lshl_or_b32 v105, v122, 16, v105
	scratch_load_b32 v122, off, off offset:8 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[105:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v107, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v23, v24
	v_cvt_f32_i32_e32 v24, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v64, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s1, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s1, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 8
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v160, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v81, v159, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v156, s1, 1
	v_add_lshl_u32 v83, v157, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v158, s1, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x3
	buffer_load_u16 v85, v2, s[8:11], 0 offen
	buffer_load_u16 v82, v82, s[8:11], 0 offen
	buffer_load_u16 v83, v83, s[8:11], 0 offen
	buffer_load_u16 v84, v84, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v81, v81, s[24:27], 0 offen
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, 0
.Ltmp25:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v2.h, v86.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, 0x76543210
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s21, 0xffff
.Ltmp27:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v80, v2
	v_mul_f32_e32 v87, v79, v2
	v_mul_f32_e32 v88, v78, v2
	v_mul_f32_e32 v89, v77, v2
	v_mul_f32_e32 v90, v76, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v86, v248, v185
	v_fma_f32 v87, v87, v117, v192
.Ltmp28:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 s8, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v185, v86, s3
	v_cndmask_b32_e64 v87, v192, v87, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v75, v2
	v_mul_f32_e32 v92, v74, v2
	v_mul_f32_e32 v93, v73, v2
	v_mul_f32_e32 v94, v72, v2
	v_mul_f32_e32 v95, v71, v2
	v_mul_f32_e32 v96, v70, v2
	v_mul_f32_e32 v97, v69, v2
	v_mul_f32_e32 v98, v68, v2
	v_mul_f32_e32 v99, v67, v2
	v_mul_f32_e32 v100, v66, v2
	v_mul_f32_e32 v101, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v254.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v92, v243, v187
	v_fma_f32 v93, v93, v242, v186
	v_fma_f32 v94, v94, v241, v184
	v_fma_f32 v95, v95, v240, v183
	v_fma_f32 v96, v96, v122, v182
	v_fma_f32 v97, v97, v116, v181
	v_fma_f32 v98, v98, v115, v180
	v_fma_f32 v99, v99, v114, v179
	v_fma_f32 v100, v100, v113, v178
	v_fma_f32 v101, v101, v102, v177
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v80, v2
	v_mul_f32_e32 v103, v79, v2
	v_mul_f32_e32 v104, v78, v2
	v_mul_f32_e32 v106, v76, v2
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v108, v75, v2 :: v_dual_lshlrev_b32 v83, 16, v83
	v_mul_f32_e32 v105, v77, v2
	v_mul_f32_e32 v109, v74, v2
	v_mul_f32_e32 v110, v73, v2
	v_mul_f32_e32 v111, v72, v2
	v_mul_f32_e32 v112, v71, v2
	v_mul_f32_e32 v113, v70, v2
	v_mul_f32_e32 v114, v69, v2
	v_mul_f32_e32 v115, v68, v2
	v_mul_f32_e32 v116, v67, v2
	v_mul_f32_e32 v117, v66, v2
	v_mul_f32_e32 v122, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.h, v120.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v187, v92, s3
	v_cndmask_b32_e64 v93, v186, v93, s3
	v_cndmask_b32_e64 v94, v184, v94, s3
	v_cndmask_b32_e64 v95, v183, v95, s3
	v_cndmask_b32_e64 v96, v182, v96, s3
	v_cndmask_b32_e64 v97, v181, v97, s3
	v_cndmask_b32_e64 v98, v180, v98, s3
	v_cndmask_b32_e64 v99, v179, v99, s3
	v_cndmask_b32_e64 v100, v178, v100, s3
	v_cndmask_b32_e64 v101, v177, v101, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v117, v117, v225, v162
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v80, v2
	v_mul_f32_e32 v157, v79, v2
	v_mul_f32_e32 v158, v78, v2
	v_mul_f32_e32 v159, v77, v2
	v_mul_f32_e32 v178, v74, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v160, v76, v2
	v_mul_f32_e32 v177, v75, v2
	v_mul_f32_e32 v179, v73, v2
	v_mul_f32_e32 v180, v72, v2
	v_mul_f32_e32 v181, v71, v2
	v_mul_f32_e32 v182, v70, v2
	v_mul_f32_e32 v183, v69, v2
	v_mul_f32_e32 v184, v68, v2
	v_mul_f32_e32 v185, v67, v2
	v_mul_f32_e32 v186, v66, v2
	v_mul_f32_e32 v187, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v249.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v162, v117, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v162, v178, v217, v149
	v_fma_f32 v88, v88, v247, v191
	v_fma_f32 v160, v160, v219, v151
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v76, v2
	v_mul_f32_e32 v75, v75, v2
	v_mul_f32_e32 v74, v74, v2
	v_mul_f32_e32 v73, v73, v2
	v_mul_f32_e32 v65, v65, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v149, v162, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v76, v202, v135
	v_fma_f32 v75, v75, v201, v134
	v_fma_f32 v74, v74, v200, v133
	v_fma_f32 v73, v73, v199, v132
	v_fma_f32 v162, v65, v207, v124
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v65, 16, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v135, v76, s3
	v_cndmask_b32_e64 v134, v134, v75, s3
	v_cndmask_b32_e64 v133, v133, v74, s3
	v_cndmask_b32_e64 v132, v132, v73, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v251, v65 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v118 offset:41472
	v_mul_f32_e32 v80, v80, v2
	v_mul_f32_e32 v79, v79, v2
	v_mul_f32_e32 v78, v78, v2
	v_mul_f32_e32 v77, v77, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v191, v88, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v80, v206, v139
	v_fma_f32 v79, v79, v205, v138
	v_fma_f32 v78, v78, v204, v137
	v_fma_f32 v77, v77, v203, v136
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v66, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v139, v80, s3
	v_cndmask_b32_e64 v138, v138, v79, s3
	v_cndmask_b32_e64 v137, v137, v78, s3
	v_cndmask_b32_e64 v136, v136, v77, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[77:80], v118 offset:41488
	v_mul_f32_e32 v69, v69, v2
	v_mul_f32_e32 v68, v68, v2
	v_mul_f32_e32 v67, v67, v2
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v72, v72, v2 :: v_dual_mul_f32 v191, v74, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v122, v122, v224, v161
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v71, v2
	v_mul_f32_e32 v70, v70, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v151, v151, v160, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v160, v67, v194, v126
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v122, v161, v122, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v177, v218, v150
	v_fma_f32 v121, v70, v121, v129
	v_fma_f32 v112, v112, v230, v167
	v_fma_f32 v89, v89, v246, v190
	v_fma_f32 v90, v90, v119, v189
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v150, v150, v161, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v66, v193, v125
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v193, v76, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v158, v221, v153
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v194, v77, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v157, v222, v154
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v167, v112, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v167, v183, v212, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v153, v153, v158, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v69, v196, v128
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v196, v79, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v159, v159, v220, v152
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v154, v154, v157, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v71, v197, v130
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v125, v125, v161, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v152, v152, v159, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v159, v68, v195, v127
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[65:68], v118 offset:40960
	v_mul_f32_e32 v195, v78, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v156, v223, v155
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v161, v74, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v102, v239, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v190, v89, s3
	v_cndmask_b32_e64 v90, v189, v90, s3
	v_cndmask_b32_e64 v155, v155, v156, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v72, v198, v131
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[69:72], v118 offset:40976
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v118, v126, v160, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v114, v114, v228, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v176, v102, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v176, v74, v82
	v_mul_f32_e32 v190, v73, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v115, v115, v227, v164
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v74, v74, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v165, v114, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v165, v181, v214, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v131, v156, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v126, v65, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v91, v244, v188
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v183, v66, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v232, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v164, v115, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v135, v67, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v188, v91, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v139, v68, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v169, v110, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v188, v71, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v113, v113, v229, v166
	v_fma_f32 v169, v185, v210, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v189, v72, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v116, v116, v226, v163
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v185, v68, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v166, v113, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v166, v182, v213, v145
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v182, v65, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v109, v233, v170
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v163, v116, s3
	v_cndmask_b32_e64 v142, v142, v169, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v169, v67, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v146, v165, s3
	v_cndmask_b32_e64 v109, v170, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v170, v186, v209, v141
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v186, v69, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v111, v231, v168
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v145, v145, v166, s3
	v_cndmask_b32_e64 v130, v130, v157, s3
	v_cndmask_b32_e64 v141, v141, v170, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v170, v68, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v168, v111, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v168, v184, v211, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v184, v67, v83
	v_mul_f32_e32 v67, v67, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v164, v180, v215, v147
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v68, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v163, v179, v216, v148
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v129, v121, s3
	v_cndmask_b32_e64 v128, v128, v158, s3
	v_cndmask_b32_e64 v147, v147, v164, s3
	v_cndmask_b32_e64 v127, v127, v159, s3
	v_cndmask_b32_e64 v148, v148, v163, s3
	v_cndmask_b32_e64 v124, v124, v162, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v66, v85
	v_mul_f32_e32 v156, v69, v85
	v_mul_f32_e32 v157, v70, v85
	v_mul_f32_e32 v158, v71, v85
	v_mul_f32_e32 v159, v72, v85
	v_mul_f32_e32 v160, v73, v85
	v_mul_f32_e32 v162, v75, v85
	v_mul_f32_e32 v163, v76, v85
	v_mul_f32_e32 v164, v77, v85
	v_mul_f32_e32 v165, v78, v85
	v_mul_f32_e32 v166, v79, v85
	v_mul_f32_e32 v85, v80, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v108, v253, v171
	v_fma_f32 v103, v103, v252, v175
	v_fma_f32 v104, v104, v237, v174
	v_fma_f32 v105, v105, v236, v173
	v_fma_f32 v106, v106, v255, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v171, v108, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v178, v76, v82
	v_mul_f32_e32 v76, v76, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v171, v187, v208, v140
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v175, v103, s3
	v_cndmask_b32_e64 v104, v174, v104, s3
	v_cndmask_b32_e64 v105, v173, v105, s3
	v_cndmask_b32_e64 v106, v172, v106, s3
	v_cndmask_b32_e64 v144, v144, v167, s3
	v_cndmask_b32_e64 v143, v143, v168, s3
	v_cndmask_b32_e64 v140, v140, v171, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v167, v65, v82
	v_mul_f32_e32 v168, v66, v82
	v_mul_f32_e32 v171, v69, v82
	v_mul_f32_e32 v172, v70, v82
	v_mul_f32_e32 v173, v71, v82
	v_mul_f32_e32 v174, v72, v82
	v_mul_f32_e32 v175, v73, v82
	v_mul_f32_e32 v177, v75, v82
	v_mul_f32_e32 v179, v77, v82
	v_mul_f32_e32 v180, v78, v82
	v_mul_f32_e32 v181, v79, v82
	v_dual_mul_f32 v82, v80, v82 :: v_dual_mul_f32 v187, v70, v83
	v_mul_f32_e32 v192, v75, v83
	v_mul_f32_e32 v83, v80, v83
	v_mul_f32_e32 v65, v65, v84
	v_mul_f32_e32 v66, v66, v84
	v_mul_f32_e32 v69, v69, v84
	v_mul_f32_e32 v70, v70, v84
	v_mul_f32_e32 v71, v71, v84
	v_mul_f32_e32 v72, v72, v84
	v_mul_f32_e32 v73, v73, v84
	v_mul_f32_e32 v75, v75, v84
	v_mul_f32_e32 v77, v77, v84
	v_mul_f32_e32 v78, v78, v84
	v_mul_f32_e32 v79, v79, v84
	v_mul_f32_e32 v80, v80, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v126, v107, v124
	v_fma_f32 v9, v129, v9, v125
	v_fma_f32 v11, v139, v11, v127
	v_fma_f32 v12, v156, v12, v128
	v_fma_f32 v13, v157, v13, v121
	v_fma_f32 v16, v160, v16, v132
	v_fma_f32 v17, v161, v17, v133
	v_fma_f32 v18, v162, v18, v134
	v_fma_f32 v19, v163, v19, v120
	v_fma_f32 v20, v164, v20, v136
	v_fma_f32 v21, v165, v21, v137
	v_fma_f32 v22, v166, v22, v138
	v_fma_f32 v23, v85, v23, v81
	v_fma_f32 v24, v167, v24, v140
	v_fma_f32 v25, v168, v25, v141
	v_fma_f32 v85, v176, v33, v149
	v_fma_f32 v107, v179, v36, v152
	v_fma_f32 v1, v73, v1, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v124, v84, s2
	v_cndmask_b32_e64 v36, v125, v9, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v135, v10, v118
	v_fma_f32 v26, v169, v26, v142
	v_fma_f32 v29, v172, v29, v145
	v_fma_f32 v129, v181, v38, v154
	v_fma_f32 v39, v82, v39, v155
	v_fma_f32 v40, v182, v40, v122
	v_fma_f32 v82, v183, v41, v117
	v_fma_f32 v135, v184, v42, v116
	v_fma_f32 v162, v192, v50, v108
	v_fma_f32 v163, v193, v51, v106
	v_fma_f32 v165, v195, v53, v104
	v_fma_f32 v167, v65, v56, v101
	v_fma_f32 v57, v66, v57, v100
	v_fma_f32 v168, v67, v58, v99
	v_fma_f32 v169, v68, v59, v98
	v_fma_f32 v172, v71, v62, v95
	v_fma_f32 v3, v75, v3, v91
	v_fma_f32 v4, v76, v4, v90
	v_fma_f32 v5, v77, v5, v89
	v_fma_f32 v6, v78, v6, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v127, v11, s2
	v_cndmask_b32_e64 v41, v128, v12, s2
	v_cndmask_b32_e64 v42, v121, v13, s2
	v_cndmask_b32_e64 v50, v132, v16, s2
	v_cndmask_b32_e64 v51, v133, v17, s2
	v_cndmask_b32_e64 v53, v134, v18, s2
	v_cndmask_b32_e64 v56, v120, v19, s2
	v_cndmask_b32_e64 v58, v136, v20, s2
	v_cndmask_b32_e64 v59, v137, v21, s2
	v_cndmask_b32_e64 v62, v138, v22, s2
	v_cndmask_b32_e64 v66, v140, v24, s2
	v_cndmask_b32_e64 v67, v141, v25, s2
	v_cndmask_b32_e64 v16, v93, v1, s2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v36|, |v36|
	v_max_f32_e64 v11, |v33|, |v33|
.Ltmp31:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v159, v15, v131
	v_fma_f32 v27, v170, v27, v143
	v_fma_f32 v28, v171, v28, v144
	v_fma_f32 v30, v173, v30, v146
	v_fma_f32 v34, v177, v34, v150
	v_fma_f32 v35, v178, v35, v151
	v_fma_f32 v126, v180, v37, v153
	v_fma_f32 v139, v185, v43, v115
	v_fma_f32 v156, v186, v44, v114
	v_fma_f32 v157, v187, v45, v113
	v_fma_f32 v159, v189, v47, v111
	v_fma_f32 v160, v190, v48, v110
	v_fma_f32 v161, v191, v49, v109
	v_fma_f32 v164, v194, v52, v105
	v_fma_f32 v166, v196, v54, v103
	v_fma_f32 v173, v72, v63, v94
	v_fma_f32 v75, v80, v8, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v118, v10, s2
	v_cndmask_b32_e64 v63, v81, v23, s2
	v_cndmask_b32_e64 v47, v122, v40, s2
	v_cndmask_b32_e64 v48, v117, v82, s2
	v_cndmask_b32_e64 v13, v91, v3, s2
	v_cndmask_b32_e64 v8, v90, v4, s2
	v_cndmask_b32_e64 v9, v89, v5, s2
	v_cndmask_b32_e64 v10, v88, v6, s2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v11, v1
	v_max3_f32 v3, |v38|, |v41|, |v42|
	v_max3_f32 v4, |v51|, |v53|, |v56|
	v_max3_f32 v5, |v58|, |v59|, |v62|
	v_max_f32_e64 v6, |v67|, |v67|
	v_max_f32_e64 v12, |v66|, |v66|
.Ltmp33:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v158, v14, v130
	v_fma_f32 v31, v174, v31, v147
	v_fma_f32 v32, v175, v32, v148
	v_fma_f32 v158, v188, v46, v112
	v_fma_f32 v83, v83, v55, v102
	v_fma_f32 v170, v69, v60, v97
	v_fma_f32 v171, v70, v61, v96
	v_fma_f32 v74, v74, v64, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v142, v26, s2
	v_cndmask_b32_e64 v72, v143, v27, s2
	v_cndmask_b32_e64 v73, v144, v28, s2
	v_cndmask_b32_e64 v70, v145, v29, s2
	v_cndmask_b32_e64 v68, v146, v30, s2
	v_cndmask_b32_e64 v65, v149, v85, s2
	v_cndmask_b32_e64 v60, v150, v34, s2
	v_cndmask_b32_e64 v61, v151, v35, s2
	v_cndmask_b32_e64 v54, v152, v107, s2
	v_cndmask_b32_e64 v55, v153, v126, s2
	v_cndmask_b32_e64 v52, v154, v129, s2
	v_cndmask_b32_e64 v49, v155, v39, s2
	v_cndmask_b32_e64 v44, v115, v139, s2
	v_cndmask_b32_e64 v39, v114, v156, s2
	v_cndmask_b32_e64 v40, v113, v157, s2
	v_cndmask_b32_e64 v30, v109, v161, s2
	v_cndmask_b32_e64 v28, v108, v162, s2
	v_cndmask_b32_e64 v29, v106, v163, s2
	v_cndmask_b32_e64 v27, v105, v164, s2
	v_cndmask_b32_e64 v26, v104, v165, s2
	v_cndmask_b32_e64 v24, v103, v166, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, |v37|, v3
	v_max3_f32 v3, v4, v5, |v63|
	v_max_f32_e32 v4, v12, v6
	v_max_f32_e64 v5, |v48|, |v48|
	v_max_f32_e64 v6, |v47|, |v47|
.Ltmp35:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v79, v7, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v130, v14, s2
	v_cndmask_b32_e64 v46, v131, v15, s2
	v_cndmask_b32_e64 v69, v147, v31, s2
	v_cndmask_b32_e64 v64, v148, v32, s2
	v_cndmask_b32_e64 v43, v116, v135, s2
	v_cndmask_b32_e64 v34, v112, v158, s2
	v_cndmask_b32_e64 v35, v111, v159, s2
	v_cndmask_b32_e64 v32, v110, v160, s2
	v_cndmask_b32_e64 v25, v102, v83, s2
	v_cndmask_b32_e64 v21, v100, v57, s2
	v_cndmask_b32_e64 v17, v92, v74, s2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, |v72|, |v73|, |v70|
	v_max3_f32 v57, |v65|, |v60|, |v61|
	v_max3_f32 v74, |v54|, |v55|, |v52|
	v_max_f32_e32 v5, v6, v5
	v_max3_f32 v6, |v44|, |v39|, |v40|
	v_max3_f32 v76, |v30|, |v28|, |v29|
	v_max3_f32 v77, |v27|, |v26|, |v24|
.Ltmp37:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v101, v167, s2
	v_cndmask_b32_e64 v11, v87, v7, s2
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v45|, |v46|, |v50|
	v_max3_f32 v31, |v68|, |v69|, |v64|
	v_max3_f32 v4, v4, |v71|, v12
	v_max3_f32 v57, v57, v74, |v49|
	v_max3_f32 v74, |v34|, |v35|, |v32|
	v_max3_f32 v5, v5, |v43|, v6
	v_max3_f32 v6, v76, v77, |v25|
.Ltmp39:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v98, v169, s2
	v_cndmask_b32_e64 v19, v97, v170, s2
	v_cndmask_b32_e64 v18, v96, v171, s2
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v76, |v21|, |v21|
	v_max_f32_e64 v77, |v23|, |v23|
	v_max3_f32 v1, v1, v7, v3
	v_max3_f32 v3, v4, v31, v57
	v_max3_f32 v4, v5, v74, v6
.Ltmp41:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v99, v168, s2
	v_cndmask_b32_e64 v12, v86, v75, s2
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v77, v76
	v_max3_f32 v6, |v20|, |v19|, |v18|
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v75, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v95, v172, s2
	v_cndmask_b32_e64 v15, v94, v173, s2
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v31, |v17|, |v13|, |v8|
	v_max3_f32 v57, |v9|, |v10|, |v11|
	v_max3_f32 v5, v5, |v22|, v6
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v74, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v76, v75, v75
	v_max3_f32 v7, |v14|, |v15|, |v16|
	v_max3_f32 v31, v31, v57, |v12|
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v57, v74, v74 :: v_dual_max_f32 v76, v4, v76
	v_and_b32_e32 v4, 3, v0
	v_max3_f32 v5, v5, v7, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v74, v1, v6 :: v_dual_max_f32 v75, v3, v57
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v3, 4, v0
	v_lshl_add_u32 v6, v4, 9, 0
	v_lshlrev_b32_e32 v4, 5, v4
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x60, v0
	v_and_b32_e32 v31, 0x80, v0
	v_and_b32_e32 v57, 8, v0
	v_lshl_add_u32 v77, v3, 2, v6
	v_and_or_b32 v78, 0x680, v123, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v6, 1, v31
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v79, v4, v7
	v_lshl_add_u32 v80, v57, 4, v77
	v_lshrrev_b32_e32 v81, 3, v31
	v_xor_b32_e32 v78, v78, v7
	v_lshl_add_u32 v82, v3, 6, 0
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v77, v5, v1
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v80, v6, v79
.Ltmp53:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.h, v2.l
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v57, 3, v57
	v_add3_u32 v5, v82, v81, v78
	v_add_nc_u32_e32 v31, 0, v31
	ds_store_b128 v1, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v5
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v74
	v_dual_mov_b32 v5, v75 :: v_dual_mov_b32 v78, v76
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v79, v77, v77
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v1, v74, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v75, v5 :: v_dual_max_f32 v74, v76, v76
	v_dual_max_f32 v75, v78, v78 :: v_dual_max_f32 v76, v77, v77
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v77, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v78, v5
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v75, v79, v76 :: v_dual_mov_b32 v76, v74
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, v5, v78 :: v_dual_max_f32 v76, v76, v76
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v78, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v76, v74, v76
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v79, v75 :: v_dual_mov_b32 v80, v76
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v74, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v78, 1, v7
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v74, v1, v74 :: v_dual_max_f32 v77, v79, v79
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v79, v5
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v77, v75, v77
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v76, v76, v1 :: v_dual_lshlrev_b32 v1, 5, v3
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	v_mov_b32_e32 v81, v77
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v79, v79
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v5, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v81, v81
	v_max_f32_e32 v77, v77, v5
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v31, v78, v57
	ds_store_b128 v5, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v3, v1, v57
	ds_load_b128 v[74:77], v1
.Ltmp81:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v74, v74
	v_max_f32_e32 v57, v76, v76
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v57, 0x2b8cbccc, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v75, 0x2b8cbccc, v75
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v76, null, 0x40e00000, 0x40e00000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v84, s0, v75, 0x40e00000, v75
	v_rcp_f32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v76
	v_div_scale_f32 v85, s1, v77, 0x40e00000, v77
	v_fma_f32 v31, -v3, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v31, v5
	v_div_scale_f32 v31, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v74, v31, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v3, v74, v31
	v_fmac_f32_e32 v74, v78, v5
	v_div_scale_f32 v78, null, 0x40e00000, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v3, v74, v31
	v_fma_f32 v31, -v76, v79, 1.0
	v_div_fmas_f32 v3, v3, v5, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v5, v78
	v_div_scale_f32 v74, null, 0x40e00000, 0x40e00000, v77
	v_fmac_f32_e32 v79, v31, v79
	v_div_scale_f32 v31, vcc_lo, v57, 0x40e00000, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v74
	v_div_fixup_f32 v1, v3, 0x40e00000, v1
	v_mul_f32_e32 v80, v31, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v78, v5, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v82, -v76, v80, v31
	v_fmac_f32_e32 v5, v3, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v74, v81, 1.0
	v_fmac_f32_e32 v80, v82, v79
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 1, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v83, v84, v5
	v_fmac_f32_e32 v81, v3, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v76, v80, v31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v78, v83, v84
	v_mul_f32_e32 v76, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v31, v79, v80
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v79, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v1, v5
	v_fma_f32 v1, -v74, v76, v85
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v31, 0x40e00000, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v86, null, v79, v79, v38
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v78, v83, v84
	v_fmac_f32_e32 v76, v1, v81
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v78, null, v79, v79, v33
	v_div_scale_f32 v87, s0, v36, v79, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v57, v5, v83
	v_fma_f32 v57, -v74, v76, v85
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v31.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v80, v78
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v74, v1, 0x40e00000, v75
	v_div_fmas_f32 v1, v57, v81, v76
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v75, null, v79, v79, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v82, vcc_lo, v33, v79, v33
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v76, v1, 0x40e00000, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v78, v80, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v77.l, v74.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v81, v75
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v77.h, v2.l
	v_add3_u32 v1, v31, v5, 0x7fff
	v_mov_b16_e32 v5.l, v76.h
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v80, v57, v80
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 1, v77
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v83, null, v79, v79, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v57, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v77, v82, v80
	v_fma_f32 v31, -v75, v81, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v74, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v85, v83
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v76, v57, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v76, v86
	v_fma_f32 v84, -v78, v77, v82
	v_fmac_f32_e32 v81, v31, v81
	v_div_scale_f32 v90, null, v79, v79, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v77, v84, v80 :: v_dual_and_b32 v74, 0xffff0000, v5
	v_mul_f32_e32 v84, v87, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v83, v85, 1.0
	v_fma_f32 v89, -v86, v76, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v78, v77, v82
	v_fma_f32 v82, -v75, v84, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s1, v37, v79, v37
	v_fmac_f32_e32 v76, v89, v76
	v_div_scale_f32 v89, null, v79, v79, v42
	v_div_fmas_f32 v77, v78, v80, v77
	v_fmac_f32_e32 v84, v82, v81
	v_mul_f32_e32 v78, v88, v85
	v_rcp_f32_e32 v80, v90
	v_div_scale_f32 v82, s2, v38, v79, v38
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v33, v77, v79, v33
	v_fma_f32 v75, -v75, v84, v87
	v_fma_f32 v77, -v83, v78, v88
	v_mul_f32_e32 v87, v82, v76
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v90, v80, 1.0
	v_div_fmas_f32 v75, v75, v81, v84
	v_fmac_f32_e32 v78, v77, v85
	v_fma_f32 v77, -v86, v87, v82
	v_fma_f32 v84, -v89, v91, 1.0
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v81, s0, v41, v79, v41
	v_div_fixup_f32 v36, v75, v79, v36
	v_fma_f32 v75, -v83, v78, v88
	v_fmac_f32_e32 v87, v77, v76
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, null, v79, v79, v45
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v77, v81, v80
	v_div_scale_f32 v83, s3, v42, v79, v42
	v_div_fmas_f32 v75, v75, v85, v78
	v_fma_f32 v78, -v86, v87, v82
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v79, v79, v46
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v82, -v90, v77, v81
	v_mul_f32_e32 v86, v83, v91
	v_div_fmas_f32 v76, v78, v76, v87
	v_rcp_f32_e32 v78, v88
	v_div_fixup_f32 v37, v75, v79, v37
	v_fmac_f32_e32 v77, v82, v80
	v_fma_f32 v82, -v89, v86, v83
	v_fma_f32 v87, -v84, v85, 1.0
	v_div_fixup_f32 v38, v76, v79, v38
	v_div_scale_f32 v76, s1, v45, v79, v45
	v_fma_f32 v75, -v90, v77, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v82, v91 :: v_dual_fmac_f32 v85, v87, v85
	v_fma_f32 v81, -v88, v78, 1.0
	v_div_scale_f32 v82, null, v79, v79, v50
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v87, null, v79, v79, v51
	v_div_fmas_f32 v75, v75, v80, v77
	v_fma_f32 v77, -v89, v86, v83
	v_mul_f32_e32 v80, v76, v85
	v_fmac_f32_e32 v78, v81, v78
	v_rcp_f32_e32 v81, v82
	v_div_scale_f32 v83, s0, v46, v79, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v41, v75, v79, v41
	v_div_fmas_f32 v77, v77, v91, v86
	v_fma_f32 v86, -v84, v80, v76
	v_mul_f32_e32 v89, v83, v78
	v_rcp_f32_e32 v91, v87
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v82, v81, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v75, -v88, v89, v83
	v_div_fixup_f32 v42, v77, v79, v42
	v_div_scale_f32 v77, s2, v50, v79, v50
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v86, null, v79, v79, v53
	v_fma_f32 v76, -v84, v80, v76
	v_fmac_f32_e32 v89, v75, v78
	v_fma_f32 v90, -v87, v91, 1.0
	v_mul_f32_e32 v75, v77, v81
	v_rcp_f32_e32 v84, v86
	v_div_fmas_f32 v76, v76, v85, v80
	v_fma_f32 v80, -v88, v89, v83
	v_div_scale_f32 v92, null, v79, v79, v56
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v51, v79, v51
	v_fma_f32 v83, -v82, v75, v77
	v_div_fmas_f32 v78, v80, v78, v89
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v90, v91
	v_fma_f32 v88, -v86, v84, 1.0
	v_fmac_f32_e32 v75, v83, v81
	v_div_fixup_f32 v45, v76, v79, v45
	v_div_fixup_f32 v46, v78, v79, v46
	v_fma_f32 v83, -v87, v85, v90
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s0, v53, v79, v53
	v_fma_f32 v76, -v82, v75, v77
	v_fma_f32 v78, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v79, v79, v58
	v_fmac_f32_e32 v85, v83, v91
	v_mul_f32_e32 v77, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v78, v80
	v_rcp_f32_e32 v78, v82
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v56, v79, v56
	v_div_fmas_f32 v75, v76, v81, v75
	v_fma_f32 v76, -v87, v85, v90
	v_fma_f32 v81, -v86, v77, v88
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v50, v75, v79, v50
	v_div_fmas_f32 v76, v76, v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v77, v81, v84
	v_mul_f32_e32 v85, v83, v80
	v_fma_f32 v89, -v82, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v51, v76, v79, v51
	v_fma_f32 v75, -v86, v77, v88
	v_fma_f32 v76, -v92, v85, v83
	v_fmac_f32_e32 v78, v89, v78
	v_div_scale_f32 v86, s2, v58, v79, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v84, v77
	v_fmac_f32_e32 v85, v76, v80
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v76, v86, v78
	v_div_fixup_f32 v53, v75, v79, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v92, v85, v83
	v_fma_f32 v83, -v82, v76, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v75, v75, v80, v85
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v76, v83, v78
	v_div_scale_f32 v87, null, v79, v79, v59
	v_div_scale_f32 v89, null, v79, v79, v62
	v_div_scale_f32 v84, s0, v59, v79, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v87
	v_rcp_f32_e32 v77, v89
	v_div_scale_f32 v83, s1, v62, v79, v62
	v_div_fixup_f32 v56, v75, v79, v56
	v_fma_f32 v75, -v82, v76, v86
	v_div_scale_f32 v82, s3, v63, v79, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v87, v81, 1.0
	v_fma_f32 v92, -v89, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v78, v76
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, null, v79, v79, v63
	v_fmac_f32_e32 v77, v92, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v84, v81 :: v_dual_and_b32 v31, 0xffff0000, v2
	v_rcp_f32_e32 v91, v88
	v_div_fixup_f32 v58, v75, v79, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v87, v90, v84
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v88, v91, 1.0
	v_mul_f32_e32 v80, v83, v77
	v_fma_f32 v76, -v87, v90, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v85, null, v74, v74, v66
	v_fma_f32 v78, -v89, v80, v83
	v_div_scale_f32 v87, null, v74, v74, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v85
	v_mul_f32_e32 v86, v82, v91
	v_fmac_f32_e32 v80, v78, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v76, v76, v81, v90
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v88, v86, v82
	v_fma_f32 v75, -v89, v80, v83
	v_div_scale_f32 v83, null, v74, v74, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v85, v84, 1.0
	v_div_fixup_f32 v59, v76, v79, v59
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v76, s0, v66, v74, v66
	v_fmac_f32_e32 v84, v90, v84
	v_fma_f32 v81, -v87, v78, 1.0
	v_div_fmas_f32 v75, v75, v77, v80
	v_fma_f32 v77, -v88, v86, v82
	v_div_scale_f32 v82, s1, v67, v74, v67
	v_mul_f32_e32 v80, v76, v84
	v_fmac_f32_e32 v78, v81, v78
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v88, null, v74, v74, v72
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v89, v82, v78
	v_div_fmas_f32 v77, v77, v91, v86
	v_fma_f32 v86, -v85, v80, v76
	v_rcp_f32_e32 v91, v88
	v_div_fixup_f32 v62, v75, v79, v62
	v_fma_f32 v75, -v87, v89, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v83, v81, 1.0
	v_fmac_f32_e32 v80, v86, v84
	v_div_fixup_f32 v63, v77, v79, v63
	v_div_scale_f32 v77, s2, v71, v74, v71
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v79, null, v74, v74, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v76, -v85, v80, v76
	v_fmac_f32_e32 v89, v75, v78
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v75, v77, v81
	v_rcp_f32_e32 v85, v79
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v86, s3, v72, v74, v72
	v_div_fmas_f32 v76, v76, v84, v80
	v_fma_f32 v80, -v87, v89, v82
	v_div_scale_f32 v90, null, v74, v74, v70
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v83, v75, v77
	v_mul_f32_e32 v84, v86, v91
	v_div_fmas_f32 v78, v80, v78, v89
	v_rcp_f32_e32 v80, v90
	v_fma_f32 v87, -v79, v85, 1.0
	v_fmac_f32_e32 v75, v82, v81
	v_fma_f32 v82, -v88, v84, v86
	v_div_fixup_f32 v67, v78, v74, v67
	v_div_fixup_f32 v66, v76, v74, v66
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s0, v73, v74, v73
	v_fmac_f32_e32 v84, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v90, v80, 1.0
	v_div_scale_f32 v82, null, v74, v74, v68
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v57, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v83, v75, v77
	v_dual_mul_f32 v77, v87, v85 :: v_dual_fmac_f32 v80, v78, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v82
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v70, v74, v70
	v_div_fmas_f32 v75, v76, v81, v75
	v_fma_f32 v76, -v88, v84, v86
	v_fma_f32 v81, -v79, v77, v87
	v_div_scale_f32 v86, null, v74, v74, v69
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v82, v78, 1.0
	v_fmac_f32_e32 v77, v81, v85
	v_rcp_f32_e32 v81, v86
	v_div_fmas_f32 v76, v76, v91, v84
	v_mul_f32_e32 v84, v83, v80
	v_div_fixup_f32 v71, v75, v74, v71
	v_fma_f32 v75, -v79, v77, v87
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v74, v74, v64
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v72, v76, v74, v72
	v_fma_f32 v76, -v90, v84, v83
	v_div_scale_f32 v79, s2, v68, v74, v68
	v_fma_f32 v87, -v86, v81, 1.0
	v_div_fmas_f32 v75, v75, v85, v77
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v84, v76, v80
	v_mul_f32_e32 v76, v79, v78
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v85, s0, v69, v74, v69
	v_div_scale_f32 v87, null, v74, v74, v65
	v_div_fixup_f32 v73, v75, v74, v73
	v_fma_f32 v75, -v90, v84, v83
	v_fma_f32 v83, -v82, v76, v79
	v_mul_f32_e32 v89, v85, v81
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v83, v78
	v_div_fmas_f32 v75, v75, v80, v84
	v_fma_f32 v80, -v86, v89, v85
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s1, v64, v74, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v70, v75, v74, v70
	v_fma_f32 v84, -v87, v90, 1.0
	v_fma_f32 v75, -v82, v76, v79
	v_fmac_f32_e32 v89, v80, v81
	v_mul_f32_e32 v79, v83, v77
	v_div_scale_f32 v82, null, v74, v74, v60
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v80, s3, v65, v74, v65
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v86, v89, v85
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v74, v74, v61
	v_mul_f32_e32 v85, v80, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v78, v86
	v_div_fmas_f32 v76, v76, v81, v89
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v68, v75, v74, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v84, 1.0
	v_fma_f32 v75, -v88, v79, v83
	v_div_fixup_f32 v69, v76, v74, v69
	v_fmac_f32_e32 v85, v81, v90
	v_div_scale_f32 v76, s0, v60, v74, v60
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v81, -v86, v78, 1.0
	v_div_scale_f32 v83, null, v74, v74, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v91, null, v74, v74, v49
	v_div_fmas_f32 v75, v75, v77, v79
	v_fma_f32 v77, -v87, v85, v80
	v_dual_mul_f32 v79, v76, v84 :: v_dual_fmac_f32 v78, v81, v78
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s1, v61, v74, v61
	v_div_scale_f32 v87, null, v74, v74, v55
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v88, v81, v78
	v_div_fmas_f32 v77, v77, v90, v85
	v_fma_f32 v85, -v82, v79, v76
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v80, 1.0
	v_div_fixup_f32 v64, v75, v74, v64
	v_fma_f32 v75, -v86, v88, v81
	v_fmac_f32_e32 v79, v85, v84
	v_div_fixup_f32 v65, v77, v74, v65
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v77, s2, v54, v74, v54
	v_div_scale_f32 v85, null, v74, v74, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v76, -v82, v79, v76
	v_fmac_f32_e32 v88, v75, v78
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v75, v77, v80
	v_rcp_f32_e32 v82, v85
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s3, v55, v74, v55
	v_div_fmas_f32 v76, v76, v84, v79
	v_fma_f32 v79, -v86, v88, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v83, v75, v77
	v_mul_f32_e32 v84, v89, v90
	v_div_fixup_f32 v60, v76, v74, v60
	v_div_fmas_f32 v78, v79, v78, v88
	v_rcp_f32_e32 v79, v91
	v_fma_f32 v86, -v85, v82, 1.0
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	v_div_fixup_f32 v61, v78, v74, v61
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v52, v74, v52
	v_fmac_f32_e32 v84, v81, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v57, v57, v47
	v_fma_f32 v76, -v83, v75, v77
	v_mul_f32_e32 v77, v86, v82
	v_fmac_f32_e32 v79, v78, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v83, s1, v49, v74, v49
	v_div_fmas_f32 v75, v76, v80, v75
	v_fma_f32 v76, -v87, v84, v89
	v_fma_f32 v80, -v85, v77, v86
	v_div_scale_f32 v87, null, v57, v57, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v75, v74, v54
	v_fmac_f32_e32 v77, v80, v82
	v_rcp_f32_e32 v80, v87
	v_fma_f32 v88, -v81, v78, 1.0
	v_div_fmas_f32 v76, v76, v90, v84
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v75, -v85, v77, v86
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v57, v57, v43
	v_div_fixup_f32 v55, v76, v74, v55
	v_fma_f32 v76, -v91, v84, v83
	v_div_scale_f32 v85, s2, v47, v57, v47
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_fmas_f32 v75, v75, v82, v77
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v84, v76, v79
	v_mul_f32_e32 v76, v85, v78
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v82, s0, v48, v57, v48
	v_div_scale_f32 v86, null, v57, v57, v44
	v_div_fixup_f32 v52, v75, v74, v52
	v_fma_f32 v75, -v91, v84, v83
	v_fma_f32 v83, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_rcp_f32_e32 v90, v86
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v83, v78
	v_div_fmas_f32 v75, v75, v79, v84
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s1, v43, v57, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v75, v74, v49
	v_fma_f32 v84, -v86, v90, 1.0
	v_fma_f32 v74, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	v_mul_f32_e32 v75, v83, v77
	v_div_scale_f32 v81, null, v57, v57, v39
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v79, s3, v44, v57, v44
	v_div_fmas_f32 v74, v74, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v75, v83
	v_rcp_f32_e32 v82, v81
	v_div_scale_f32 v85, null, v57, v57, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v84, v79, v90 :: v_dual_fmac_f32 v75, v78, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v78, v85
	v_div_fmas_f32 v76, v76, v80, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v86, v84, v79
	v_div_fixup_f32 v47, v74, v57, v47
	v_fma_f32 v87, -v81, v82, 1.0
	v_fma_f32 v74, -v88, v75, v83
	v_div_fixup_f32 v48, v76, v57, v48
	v_fmac_f32_e32 v84, v80, v90
	v_div_scale_f32 v76, s0, v39, v57, v39
	v_fmac_f32_e32 v82, v87, v82
	v_fma_f32 v80, -v85, v78, 1.0
	v_div_scale_f32 v83, null, v57, v57, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v54
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v86, v84, v79
	v_mul_f32_e32 v77, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v80, s1, v40, v57, v40
	v_div_scale_f32 v86, null, v57, v57, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v87, v80, v78
	v_div_fmas_f32 v75, v75, v90, v84
	v_fma_f32 v84, -v81, v77, v76
	v_rcp_f32_e32 v89, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v79, 1.0
	v_div_fixup_f32 v43, v74, v57, v43
	v_fma_f32 v74, -v85, v87, v80
	v_fmac_f32_e32 v77, v84, v82
	v_div_scale_f32 v84, null, v57, v57, v32
	v_div_fixup_f32 v44, v75, v57, v44
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v75, s2, v34, v57, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v86, v89, 1.0
	v_fma_f32 v76, -v81, v77, v76
	v_fmac_f32_e32 v87, v74, v78
	v_rcp_f32_e32 v81, v84
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v74, v75, v79 :: v_dual_fmac_f32 v89, v88, v89
	v_div_scale_f32 v88, s3, v35, v57, v35
	v_div_fmas_f32 v76, v76, v82, v77
	v_fma_f32 v77, -v85, v87, v80
	v_div_scale_f32 v90, null, v57, v57, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v83, v74, v75
	v_mul_f32_e32 v82, v88, v89
	v_fma_f32 v85, -v84, v81, 1.0
	v_div_fmas_f32 v77, v77, v78, v87
	v_rcp_f32_e32 v78, v90
	v_fmac_f32_e32 v74, v80, v79
	v_fma_f32 v80, -v86, v82, v88
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s0, v32, v57, v32
	v_div_fixup_f32 v39, v76, v57, v39
	v_div_fixup_f32 v40, v77, v57, v40
	v_fma_f32 v75, -v83, v74, v75
	v_fmac_f32_e32 v82, v80, v89
	v_mul_f32_e32 v76, v85, v81
	v_fma_f32 v77, -v90, v78, 1.0
	v_div_scale_f32 v80, null, v57, v57, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v30, v57, v30
	v_div_fmas_f32 v74, v75, v79, v74
	v_fma_f32 v75, -v86, v82, v88
	v_fma_f32 v79, -v84, v76, v85
	v_fmac_f32_e32 v78, v77, v78
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v86, null, v57, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v81
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v34, v74, v57, v34
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v75, v75, v89, v82
	v_mul_f32_e32 v82, v83, v78
	v_fma_f32 v74, -v84, v76, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v80, v77, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v75, v57, v35
	v_fma_f32 v75, -v90, v82, v83
	v_div_scale_f32 v84, s2, v28, v57, v28
	v_fmac_f32_e32 v77, v87, v77
	v_fma_f32 v85, -v86, v79, 1.0
	v_div_scale_f32 v87, null, v57, v57, v27
	v_div_fmas_f32 v74, v74, v81, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v75, v78 :: v_dual_fmac_f32 v79, v85, v79
	v_rcp_f32_e32 v76, v87
	v_div_scale_f32 v85, null, v57, v57, v26
	v_mul_f32_e32 v75, v84, v77
	v_div_scale_f32 v81, s0, v29, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v89, v85
	v_div_fixup_f32 v32, v74, v57, v32
	v_fma_f32 v74, -v90, v82, v83
	v_fma_f32 v83, -v80, v75, v84
	v_mul_f32_e32 v88, v81, v79
	v_fma_f32 v90, -v87, v76, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v78, v82
	v_fmac_f32_e32 v75, v83, v77
	v_fma_f32 v78, -v86, v88, v81
	v_fmac_f32_e32 v76, v90, v76
	v_div_scale_f32 v82, s1, v27, v57, v27
	v_fma_f32 v83, -v85, v89, 1.0
	v_div_fixup_f32 v30, v74, v57, v30
	v_fma_f32 v74, -v80, v75, v84
	v_fmac_f32_e32 v88, v78, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v78, v82, v76 :: v_dual_fmac_f32 v89, v83, v89
	v_div_scale_f32 v83, null, v57, v57, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v80, s3, v26, v57, v26
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v86, v88, v81
	v_fma_f32 v77, -v87, v78, v82
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v86, null, v57, v57, v25
	v_mul_f32_e32 v84, v80, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v77, v76
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v77, v86
	v_div_fmas_f32 v75, v75, v79, v88
	v_fma_f32 v79, -v85, v84, v80
	v_div_fixup_f32 v28, v74, v57, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v81, 1.0
	v_fma_f32 v74, -v87, v78, v82
	v_div_fixup_f32 v29, v75, v57, v29
	v_fmac_f32_e32 v84, v79, v89
	v_div_scale_f32 v75, s0, v24, v57, v24
	v_fmac_f32_e32 v81, v88, v81
	v_fma_f32 v79, -v86, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v31, v31, v21
	v_div_fmas_f32 v74, v74, v76, v78
	v_fma_f32 v76, -v85, v84, v80
	v_mul_f32_e32 v78, v75, v81
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, null, v31, v31, v23
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v80, s1, v25, v57, v25
	v_div_fmas_f32 v76, v76, v89, v84
	v_rcp_f32_e32 v82, v79
	v_fma_f32 v84, -v83, v78, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v80, v77
	v_div_fixup_f32 v27, v74, v57, v27
	v_div_fixup_f32 v26, v76, v57, v26
	v_rcp_f32_e32 v76, v87
	v_fmac_f32_e32 v78, v84, v81
	v_fma_f32 v74, -v86, v85, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v89, null, v31, v31, v20
	v_fma_f32 v84, -v79, v82, 1.0
	v_fma_f32 v75, -v83, v78, v75
	v_div_scale_f32 v83, null, v31, v31, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v74, v77 :: v_dual_fmac_f32 v82, v84, v82
	v_div_scale_f32 v74, s2, v23, v31, v23
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v88, -v87, v76, 1.0
	v_div_fmas_f32 v75, v75, v81, v78
	v_fma_f32 v78, -v86, v85, v80
	v_mul_f32_e32 v80, v74, v82
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v88, v76
	v_div_scale_f32 v81, s0, v21, v31, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v79, v80, v74
	v_fma_f32 v86, -v83, v84, 1.0
	v_rcp_f32_e32 v91, v89
	v_div_fmas_f32 v77, v78, v77, v85
	v_mul_f32_e32 v90, v81, v76
	v_fmac_f32_e32 v80, v88, v82
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s3, v22, v31, v22
	v_div_fixup_f32 v24, v75, v57, v24
	v_div_fixup_f32 v25, v77, v57, v25
	v_fma_f32 v57, -v79, v80, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v86, v84
	v_div_scale_f32 v77, null, v31, v31, v19
	v_fma_f32 v78, -v87, v90, v81
	v_fma_f32 v75, -v89, v91, 1.0
	v_fma_f32 v74, -v83, v85, v86
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v90, v78, v76 :: v_dual_fmac_f32 v91, v75, v91
	v_fmac_f32_e32 v85, v74, v84
	v_rcp_f32_e32 v74, v77
	v_div_scale_f32 v75, s1, v20, v31, v20
	v_div_fmas_f32 v57, v57, v82, v80
	v_fma_f32 v78, -v87, v90, v81
	v_div_scale_f32 v80, null, v31, v31, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v75, v91
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v57, v31, v23
	v_fma_f32 v81, -v77, v74, 1.0
	v_div_fmas_f32 v76, v78, v76, v90
	v_fma_f32 v78, -v83, v85, v86
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v83, -v89, v79, v75
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s0, v19, v31, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v79, v83, v91
	v_div_fmas_f32 v78, v78, v84, v85
	v_mul_f32_e32 v57, v81, v74
	v_div_fixup_f32 v21, v76, v31, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v80, v82, 1.0
	v_fma_f32 v75, -v89, v79, v75
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v77, v57, v81
	v_div_fixup_f32 v22, v78, v31, v22
	v_div_scale_f32 v78, null, v31, v31, v14
	v_fmac_f32_e32 v82, v76, v82
	v_div_scale_f32 v76, s2, v18, v31, v18
	v_div_fmas_f32 v75, v75, v91, v79
	v_fmac_f32_e32 v57, v83, v74
	v_rcp_f32_e32 v84, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v76, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v75, v31, v20
	v_fma_f32 v75, -v77, v57, v81
	v_div_scale_f32 v83, null, v31, v31, v15
	v_fma_f32 v77, -v80, v79, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v57, v75, v74, v57
	v_div_scale_f32 v74, null, v31, v31, v16
	v_fma_f32 v81, -v78, v84, 1.0
	v_rcp_f32_e32 v85, v83
	v_fmac_f32_e32 v79, v77, v82
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v75, s0, v14, v31, v14
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, null, v31, v31, v17
	v_div_fixup_f32 v19, v57, v31, v19
	v_fma_f32 v76, -v80, v79, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v83, v85, 1.0
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v74, v77, 1.0
	v_mul_f32_e32 v80, v75, v84
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v85, v57, v85
	v_div_scale_f32 v57, s1, v15, v31, v15
	v_fmac_f32_e32 v77, v86, v77
	v_div_scale_f32 v86, null, v31, v31, v13
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v79, -v78, v80, v75
	v_mul_f32_e32 v82, v57, v85
	v_div_scale_f32 v88, s2, v16, v31, v16
	v_fma_f32 v89, -v81, v87, 1.0
	v_rcp_f32_e32 v90, v86
	v_fmac_f32_e32 v80, v79, v84
	v_fma_f32 v79, -v83, v82, v57
	v_mul_f32_e32 v91, v88, v77
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s3, v17, v31, v17
	v_div_fixup_f32 v18, v76, v31, v18
	v_fma_f32 v75, -v78, v80, v75
	v_fmac_f32_e32 v82, v79, v85
	v_fma_f32 v76, -v74, v91, v88
	v_mul_f32_e32 v78, v89, v87
	v_fma_f32 v79, -v86, v90, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v57, -v83, v82, v57
	v_fmac_f32_e32 v91, v76, v77
	v_fma_f32 v76, -v81, v78, v89
	v_fmac_f32_e32 v90, v79, v90
	v_div_scale_f32 v79, s0, v13, v31, v13
	v_div_fmas_f32 v75, v75, v84, v80
	v_fma_f32 v74, -v74, v91, v88
	v_fmac_f32_e32 v78, v76, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v76, v79, v90
	v_div_scale_f32 v80, null, v31, v31, v8
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v75, v31, v14
	v_div_fmas_f32 v57, v57, v85, v82
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v82, v80
	v_div_fmas_f32 v74, v74, v77, v91
	v_fma_f32 v77, -v81, v78, v89
	v_fma_f32 v81, -v86, v76, v79
	v_div_fixup_f32 v15, v57, v31, v15
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v74, v31, v16
	v_div_fmas_f32 v77, v77, v87, v78
	v_fmac_f32_e32 v76, v81, v90
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v80, v82, 1.0
	v_div_scale_f32 v74, null, v31, v31, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v86, v76, v79
	v_div_fixup_f32 v17, v77, v31, v17
	v_fmac_f32_e32 v82, v75, v82
	v_div_scale_f32 v75, null, v31, v31, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v57, v57, v90, v76
	v_div_scale_f32 v78, vcc_lo, v8, v31, v8
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v77, null, v31, v31, v11
	v_mul_f32_e32 v83, v78, v82
	v_div_fixup_f32 v13, v57, v31, v13
	v_div_scale_f32 v84, null, v31, v31, v12
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v87, -v80, v83, v78
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v57, -v74, v76, 1.0
	v_rcp_f32_e32 v86, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v87, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v76, v57, v76
	v_div_scale_f32 v57, s0, v9, v31, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v80, v83, v78
	v_fma_f32 v85, -v75, v79, 1.0
	v_fma_f32 v88, -v77, v81, 1.0
	v_fma_f32 v90, -v84, v86, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v82, v83
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v86, v90, v86
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v89, v57, v76
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v85, s1, v10, v31, v10
	v_fma_f32 v87, -v74, v89, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s2, v11, v31, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v87, v76
	v_div_scale_f32 v90, s3, v12, v31, v12
	v_mul_f32_e32 v92, v88, v81
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v74, v89, v57
	v_mul_f32_e32 v93, v90, v86
	v_div_fixup_f32 v8, v78, v31, v8
	v_fma_f32 v87, -v77, v92, v88
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v70, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v57, v57, v76, v89
	v_fma_f32 v74, -v84, v93, v90
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v92, v87, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v68
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v57, v31, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v59
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v72
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v72, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v91, v85, v79
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v44, v44, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v75, v91, v85
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v80, v79
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v80, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v74, v86
	v_fma_f32 v74, -v77, v92, v88
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v70, v70, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v75, v91, v85
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v68, v68, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v84, v93, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v91
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v81, v92
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v75, v31, v10
	v_div_fmas_f32 v76, v76, v86, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v74, v31, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v76, v31, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v33
	v_rndne_f32_e32 v33, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v71
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v81, v26
	v_cvt_i32_f32_e32 v90, v14
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v26, 15, v66
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v66, 10, v0
	v_and_b32_e32 v72, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v73, v40
	v_cvt_i32_f32_e32 v77, v30
	v_cvt_i32_f32_e32 v79, v29
	v_cvt_i32_f32_e32 v95, v8
	v_and_b32_e32 v8, 15, v31
	v_and_b32_e32 v29, 15, v70
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v31, 15, v69
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 0x1800, v66
	v_lshlrev_b32_e32 v69, 6, v72
	v_lshlrev_b32_e32 v70, 4, v245
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v78, v28
	v_cvt_i32_f32_e32 v91, v15
	v_and_b32_e32 v15, 15, v45
	v_and_b32_e32 v28, 15, v71
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v70, v7
	v_lshlrev_b32_e32 v71, 6, v0
	v_add3_u32 v73, 0, v68, v69
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v84, v23
	v_cvt_i32_f32_e32 v85, v21
	v_cvt_i32_f32_e32 v86, v22
	v_cvt_i32_f32_e32 v87, v20
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v71, v4
	v_add3_u32 v73, v73, v7, v6
	v_and_b32_e32 v6, 0xf0, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v76, v32
	v_cvt_i32_f32_e32 v92, v16
	v_cvt_i32_f32_e32 v93, v17
	v_cvt_i32_f32_e32 v94, v13
	v_cvt_i32_f32_e32 v82, v24
	v_cvt_i32_f32_e32 v83, v25
	v_cvt_i32_f32_e32 v96, v9
	v_cvt_i32_f32_e32 v97, v10
	v_cvt_i32_f32_e32 v98, v11
	v_cvt_i32_f32_e32 v99, v12
	v_and_b32_e32 v9, 15, v33
	v_and_b32_e32 v10, 15, v36
	v_and_b32_e32 v11, 15, v37
	v_and_b32_e32 v12, 15, v38
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v62
	v_and_b32_e32 v25, 15, v63
	v_and_b32_e32 v27, 15, v67
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v6, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v74, v34
	v_cvt_i32_f32_e32 v75, v35
	v_cvt_i32_f32_e32 v88, v19
	v_cvt_i32_f32_e32 v89, v18
	v_and_b32_e32 v16, 15, v46
	v_and_b32_e32 v17, 15, v50
	v_and_b32_e32 v18, 15, v51
	v_and_b32_e32 v19, 15, v53
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v34, 15, v60
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v73, v[8:11]
	ds_store_b128 v73, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[16:19], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[24:27]
	ds_store_b128 v73, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[32:35], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[40:43]
	ds_store_b128 v73, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v4
	ds_load_b128 v[48:51], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[56:59]
	ds_store_b128 v73, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v4
	ds_load_b128 v[64:67], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[12:15]
	ds_store_b128 v73, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[20:23], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 15, v54
	v_and_b32_e32 v37, 15, v55
	v_and_b32_e32 v38, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[28:31]
	ds_store_b128 v73, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[36:39], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[44:47]
	ds_store_b128 v73, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[52:55], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[60:63]
	ds_store_b128 v73, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v4
	ds_load_b128 v[68:71], v4 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v6
	v_lshl_or_b32 v6, v17, 4, v7
	v_lshl_or_b32 v7, v18, 4, v8
	v_lshl_or_b32 v8, v19, 4, v9
	v_lshl_or_b32 v9, v20, 4, v10
	v_lshl_or_b32 v10, v21, 4, v11
	v_lshl_or_b32 v11, v22, 4, v12
	v_lshl_or_b32 v12, v23, 4, v13
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshrrev_b32_e32 v43, 4, v0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v35, 3, v245
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v43
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s44, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v12.l
	v_and_b16 v5.l, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v48, 4, v40
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v13.l
	v_lshlrev_b16 v4.h, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v29, v64, 4, v56
	v_lshl_or_b32 v30, v65, 4, v57
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v37, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v36, s1, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[8:11], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v4.h, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[7:8], v41, s[8:11], 0 offen
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v4.h, 8, v39.l
	v_and_b16 v5.l, 0xff, v37.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v36, s2, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v72
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	buffer_store_b64 v[7:8], v42, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v43
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s0, s0, 48
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v35
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v4, v7, v35
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s44
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v36, s[8:11], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp82:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp83:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 52
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 39948
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 52
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.byte	1                               ; Abbrev [1] 0xb:0x93 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6d DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x75:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 52
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 12
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
