	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s41, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v38, 7, v0
	v_and_b32_e32 v34, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v2, 4, v34
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v4, 0xc0, v5
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
	s_ashr_i32 s13, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_xor_b32 s7, s2, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_ashr_i32 s7, s7, 31
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v1, 3, v38
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_mul_hi_u32 s5, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s5, s4
	s_sub_i32 s6, s6, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s7
	s_sub_i32 s14, s4, s7
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s17, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s13, s13, s17
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s15, s13, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s2
	s_abs_i32 s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s16, s13
	s_sub_i32 s18, 0, s13
	v_rcp_iflag_f32_e32 v6, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s16, v6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[6:7], null, s41, v3, v[1:2]
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[7:8], null, s41, v5, v[2:3]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[8:9], null, s41, v4, v[2:3]
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	s_mov_b32 s22, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s16, s16
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s23, s7
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v9, s41, 6, v7
	v_lshl_add_u32 v10, s41, 7, v7
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s16
	s_mul_hi_u32 s12, s16, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s16, s12
	s_xor_b32 s12, s2, s15
	s_mul_hi_u32 s16, s14, s16
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s18, s16, s13
	s_sub_i32 s14, s14, s18
	s_add_i32 s18, s16, 1
	s_sub_i32 s19, s14, s13
	s_cmp_ge_u32 s14, s13
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s14, s13
	s_cselect_b32 s13, s18, s16
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s40, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s12
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s16, s41, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s13, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s16, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s18, s33, s15
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s40, v1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s18
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s15, s33, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s40, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s41, 63
.Ltmp18:
	.loc	1 412 39 is_stmt 1              ; generate_amdgcn.py:412:39
	s_add_i32 s19, s15, s35
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s16, s16, s3
.Ltmp20:
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s41, v11
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s18, s15, s41
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	s_mul_i32 s17, s19, s41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s19, s34, s41
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s41, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s18, s18, s40
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, s40, s19, v6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v11, s18, v7
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	s_add_i32 s17, s17, s40
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v12, s18, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v13, s18, v10
	v_add_nc_u32_e32 v14, s18, v8
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v9, s17, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v7, s17, v7
	v_add_nc_u32_e32 v10, s17, v10
	v_add_nc_u32_e32 v8, s17, v8
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_and_b32 s21, s21, 0xffff
	v_dual_cndmask_b32 v26, 0x80000000, v14 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_dual_cndmask_b32 v35, 0x80000000, v9 :: v_dual_cndmask_b32 v36, 0x80000000, v10
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[9:10], v6, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x7
	buffer_load_b128 v[14:17], v11, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v12, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v13, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v26, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v7, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v35, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v36, s[20:23], 0 offen
	buffer_load_b128 v[47:50], v8, s[20:23], 0 offen
	v_lshlrev_b32_e32 v35, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v7, 3, v0
	v_and_b32_e32 v6, 48, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v36, 15, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v11, 48, v35
	s_mov_b32 s3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v6, v7, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v8, v8, v11
	v_lshlrev_b32_e32 v11, 6, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v12, 0, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v13, 0, v8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v8, 16, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(8)
	ds_store_b64 v12, v[9:10] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v13, v[14:17]
	s_waitcnt vmcnt(6)
	ds_store_b128 v13, v[18:21] offset:4096
	s_waitcnt vmcnt(5)
	ds_store_b128 v13, v[22:25] offset:8192
	s_waitcnt vmcnt(4)
	ds_store_b128 v13, v[26:29] offset:12288
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v13, v[30:33] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v13, v[39:42] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v13, v[43:46] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v13, v[47:50] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v6, 6, v36
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr6
.LBB0_3:                                ; %Flow429
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v9, s34, v36
	v_or_b32_e32 v8, s34, v8
	s_ashr_i32 s1, s16, 8
	v_and_b32_e32 v37, 0xf0, v0
	v_dual_mov_b32 v39, 0 :: v_dual_lshlrev_b32 v110, 5, v0
	v_mul_lo_u32 v111, v9, s1
	v_mul_lo_u32 v112, v8, s1
	v_or_b32_e32 v33, s15, v0
	v_and_b32_e32 v109, 28, v35
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s35, 1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s13, s13, 8
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s14, 6
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s35, s13
	s_lshl_b32 s15, s12, 8
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v14, s14, v5
	s_mov_b32 s12, 0
	v_or_b32_e32 v5, s13, v5
	s_mov_b32 s16, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_subrev_nc_u32_e32 v16, s15, v14
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v18, s14, v4
	v_mul_lo_u32 v17, s41, v16
	v_or_b32_e32 v4, s13, v4
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshlrev_b32_e32 v15, 2, v37
	v_and_b32_e32 v14, 32, v110
	v_subrev_nc_u32_e32 v5, s15, v5
	v_subrev_nc_u32_e32 v4, s15, v4
	v_and_or_b32 v6, v7, 48, v11
	v_or_b32_e32 v24, 64, v2
	v_add3_u32 v40, 0, v15, v14
	v_add3_u32 v15, v17, v2, 64
	v_subrev_nc_u32_e32 v17, s15, v18
	s_mov_b32 s15, s12
	v_add_nc_u32_e32 v19, 64, v16
	v_add_nc_u32_e32 v16, 0x80, v16
	v_add_nc_u32_e32 v3, s34, v3
	v_mul_lo_u32 v20, s41, v17
	v_or_b32_e32 v17, 0x80, v5
	v_mul_lo_u32 v18, s41, v19
	v_mul_lo_u32 v19, s41, v16
	v_or_b32_e32 v16, 64, v5
	v_and_or_b32 v7, 0x1c00, v110, v6
	v_mul_lo_u32 v5, s41, v5
	v_mul_lo_u32 v22, s41, v17
	v_mul_lo_u32 v4, s41, v4
	v_mul_lo_u32 v21, s41, v16
	v_mul_lo_u32 v3, s41, v3
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v9, 32, v6
	v_xor_b32_e32 v10, 48, v6
	v_xor_b32_e32 v31, 16, v7
	v_xor_b32_e32 v32, 32, v7
	v_xor_b32_e32 v39, 48, v7
	v_lshlrev_b32_e32 v41, 1, v37
	v_add3_u32 v16, v18, v2, 64
	v_add3_u32 v17, v19, v2, 64
	v_add3_u32 v18, v20, v2, 64
	v_add3_u32 v19, v5, v2, 64
	v_add3_u32 v20, v21, v2, 64
	v_add3_u32 v21, v22, v2, 64
	v_add3_u32 v22, v4, v2, 64
	v_add3_u32 v23, v3, v1, 64
	v_or_b32_e32 v25, 64, v1
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v26, 0, v6
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v27, 0, v8
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v30, 0, v7
	v_dual_mov_b32 v1, s12 :: v_dual_add_nc_u32 v14, s35, v33
	v_dual_mov_b32 v3, s14 :: v_dual_add_nc_u32 v28, 0, v9
	v_mov_b32_e32 v101, 0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v29, 0, v10
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v31, 0, v31
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v32, 0, v32
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v43, 0, v39
	v_mov_b32_e32 v2, s13
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v48, v40, v109
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v105, 0, v41
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v40, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_add_i32 s42, s0, -1
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v9, s40, v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v10, s40, v23
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s40, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_lshr_b32 s0, s0, 24
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s41, v9
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s40, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s0, 8
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s13, s12, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s42, s42, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[9:10], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[177:180], v26 offset:33792
	ds_load_b128 v[181:184], v27 offset:33792
	ds_load_b128 v[161:164], v26 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[129:132], v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[165:168], v27 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[133:136], v31
	ds_load_b128 v[145:148], v30 offset:8192
	ds_load_b128 v[149:152], v31 offset:8192
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[169:172], v30 offset:16384
	ds_load_b128 v[173:176], v31 offset:16384
	ds_load_b128 v[185:188], v30 offset:24576
	ds_load_b128 v[189:192], v31 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[129:132], v[161:164], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[145:148], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[133:136], v[165:168], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[133:136], v[181:184], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[145:148], v[161:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[149:152], v[181:184], v[137:144] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[185:188], v[161:164], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[129:136], v[149:152], v[165:168], v[129:136] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[145:152], v[169:172], v[161:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[189:192], v[165:168], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[173:176], v[165:168], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[169:172], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[173:176], v[181:184], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[177:180], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[185:188], v28 offset:33792
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[181:184], v[169:176] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[177:180], v28 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[181:184], v32
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[189:192], v32 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[181:184], v[177:180], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[181:184], v[185:188], v[121:128] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[181:184], v32 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[189:192], v[177:180], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[185:188], v[169:176] neg_lo:[1,1,0]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[189:192], v43 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[181:184], v[177:180], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[181:184], v[185:188], v[137:144] neg_lo:[1,1,0]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[181:184], v32 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[181:184], v[177:180], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[181:184], v[185:188], v[161:168] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[177:180], v29 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[181:184], v43
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[185:188], v29 offset:33792
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[189:192], v[177:180], v[153:160] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[181:184], v[177:180], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[181:184], v[185:188], v[121:128] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[181:184], v43 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[185:188], v[169:176] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v198, v153
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v114
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v114, s40, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v209, v121
	v_cvt_f32_i32_e32 v213, v125
	v_cvt_f32_i32_e32 v106, v116
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v116, v14, s13, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v107, v115
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v115, v112, s12, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v206, v124
	v_cvt_f32_i32_e32 v207, v123
	v_cvt_f32_i32_e32 v208, v122
	v_cvt_f32_i32_e32 v210, v128
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v211, v127
	v_cvt_f32_i32_e32 v212, v126
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v199, v158
	v_cvt_f32_i32_e32 v200, v159
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[181:184], v[177:180], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[181:184], v[185:188], v[137:144] neg_lo:[1,1,0]
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[181:184], v43 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v201, v160
	v_cvt_f32_i32_e32 v202, v157
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v190, v129
	v_cvt_f32_i32_e32 v194, v133
	v_cvt_f32_i32_e32 v214, v137
	v_cvt_f32_i32_e32 v218, v141
	v_cvt_f32_i32_e32 v191, v134
	v_cvt_f32_i32_e32 v192, v135
	v_cvt_f32_i32_e32 v193, v136
	v_cvt_f32_i32_e32 v195, v132
	v_cvt_f32_i32_e32 v196, v131
	v_cvt_f32_i32_e32 v197, v130
	v_cvt_f32_i32_e32 v215, v142
	v_cvt_f32_i32_e32 v216, v143
	v_cvt_f32_i32_e32 v217, v144
	v_cvt_f32_i32_e32 v219, v140
	v_cvt_f32_i32_e32 v220, v139
	v_cvt_f32_i32_e32 v221, v138
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v203, v156
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[181:184], v[177:180], v[145:152] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v113
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v113, s40, v24
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[161:168], v[181:184], v[185:188], v[161:168] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v181, v117
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v185, v145
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v145, 0x80000000, v116, s0
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s41, v113
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v113, v33, s13, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v178, v120
	v_cvt_f32_i32_e32 v179, v119
	v_cvt_f32_i32_e32 v180, v118
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v117, 0x80000000, v114, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v114, s40, v21
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v182, v148
	v_cvt_f32_i32_e32 v183, v147
	v_cvt_f32_i32_e32 v184, v146
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v113, v113, s[36:39], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v121, 0x80000000, v114, vcc_lo
	v_add_nc_u32_e32 v114, s40, v22
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v186, v152
	v_cvt_f32_i32_e32 v187, v151
	v_cvt_f32_i32_e32 v188, v150
	v_cvt_f32_i32_e32 v189, v149
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v125, 0x80000000, v114, vcc_lo
	.loc	1 412 39                        ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v114, s40, v15
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v204, v155
	v_cvt_f32_i32_e32 v205, v154
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v129, 0x80000000, v114, vcc_lo
	.loc	1 412 39 is_stmt 0              ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v114, s40, v16
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v133, 0x80000000, v114, vcc_lo
	.loc	1 412 39 is_stmt 0              ; generate_amdgcn.py:412:39
	v_add_nc_u32_e32 v114, s40, v17
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v174, v174
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v137, 0x80000000, v114, vcc_lo
	v_add_nc_u32_e32 v114, s40, v18
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	v_cndmask_b32_e32 v141, 0x80000000, v114, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v114, v111, s12, 1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v170, v170
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v48, v113 offset:34816
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v113, s40, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s40, s40, 64
	s_cmp_lg_u32 s42, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v222, v114, s[24:27], 0 offen
	buffer_load_u16 v223, v115, s[24:27], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x7
	buffer_load_b128 v[113:116], v113, s[20:23], 0 offen
	buffer_load_b128 v[117:120], v117, s[20:23], 0 offen
	buffer_load_b128 v[121:124], v121, s[20:23], 0 offen
	buffer_load_b128 v[125:128], v125, s[20:23], 0 offen
	buffer_load_b128 v[129:132], v129, s[20:23], 0 offen
	buffer_load_b128 v[133:136], v133, s[20:23], 0 offen
	buffer_load_b128 v[137:140], v137, s[20:23], 0 offen
	buffer_load_b128 v[141:144], v141, s[20:23], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v224, v145, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[145:148], v105 offset:35328
	ds_load_b128 v[149:152], v105 offset:35344
	ds_load_b128 v[153:156], v105 offset:34816
	ds_load_b128 v[157:160], v105 offset:34832
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v224, 16, v224
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v48, v224 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v13, v[113:116]
	ds_store_b128 v13, v[117:120] offset:4096
	ds_store_b128 v13, v[121:124] offset:8192
	ds_store_b128 v13, v[125:128] offset:12288
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_store_b128 v13, v[129:132] offset:16384
	ds_store_b128 v13, v[133:136] offset:20480
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[113:116], v105 offset:34816
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v117, 16, v222
	v_lshlrev_b32_e32 v118, 16, v223
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v12, v[9:10] offset:32768
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_store_b128 v13, v[137:140] offset:24576
	ds_store_b128 v13, v[141:144] offset:28672
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v130, v157, v117
	v_mul_f32_e32 v126, v153, v118
	v_mul_f32_e32 v131, v160, v118
	v_mul_f32_e32 v123, v156, v118
	v_mul_f32_e32 v124, v155, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v92, v130, v181
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v153, v117
	v_mul_f32_e32 v127, v160, v117
	v_mul_f32_e32 v128, v159, v117
	v_dual_mul_f32 v129, v158, v117 :: v_dual_mul_f32 v132, v159, v118
	v_mul_f32_e32 v153, v152, v117
	v_dual_mul_f32 v133, v158, v118 :: v_dual_mul_f32 v136, v151, v117
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v151, v151, v118 :: v_dual_mul_f32 v222, v114, v117
	v_dual_mul_f32 v152, v152, v118 :: v_dual_mul_f32 v223, v113, v117
	v_mul_f32_e32 v158, v146, v117
	v_dual_mul_f32 v146, v146, v118 :: v_dual_mul_f32 v159, v116, v117
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v160, v115, v117
	v_mul_f32_e32 v224, v116, v118
	v_mul_f32_e32 v225, v115, v118
	v_mul_f32_e32 v226, v114, v118
	v_mul_f32_e32 v227, v113, v118
	ds_load_b128 v[113:116], v105 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v119, v156, v117
	v_mul_f32_e32 v120, v155, v117
	v_mul_f32_e32 v121, v154, v117
	v_mul_f32_e32 v125, v154, v118
	v_mul_f32_e32 v135, v150, v117
	v_dual_mul_f32 v150, v150, v118 :: v_dual_mul_f32 v155, v145, v117
	v_mul_f32_e32 v154, v149, v117
	v_mul_f32_e32 v149, v149, v118
	v_dual_mul_f32 v145, v145, v118 :: v_dual_mul_f32 v156, v148, v117
	v_mul_f32_e32 v148, v148, v118
	v_dual_mul_f32 v134, v157, v118 :: v_dual_mul_f32 v157, v147, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v96, v122, v177 :: v_dual_fmac_f32 v95, v121, v108
	v_dual_fmac_f32 v93, v120, v107 :: v_dual_fmac_f32 v94, v119, v106
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v87, v157, v196 :: v_dual_mul_f32 v228, v116, v117
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v229, v115, v117
	v_mul_f32_e32 v230, v114, v117
	v_dual_mul_f32 v231, v113, v117 :: v_dual_mul_f32 v232, v116, v118
	v_mul_f32_e32 v233, v115, v118
	v_mul_f32_e32 v234, v114, v118
	v_dual_mul_f32 v235, v113, v118 :: v_dual_fmac_f32 v90, v128, v179
	ds_load_b128 v[113:116], v105 offset:35344
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v147, v147, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v91, v129, v180
	v_dual_fmac_f32 v89, v127, v178 :: v_dual_fmac_f32 v80, v134, v213
	v_dual_fmac_f32 v104, v155, v190 :: v_dual_fmac_f32 v101, v153, v193
	v_fmac_f32_e32 v88, v158, v197
	v_dual_fmac_f32 v86, v156, v195 :: v_dual_fmac_f32 v85, v154, v194
	v_fmac_f32_e32 v78, v132, v211
	v_dual_fmac_f32 v103, v135, v191 :: v_dual_fmac_f32 v100, v145, v214
	v_fmac_f32_e32 v102, v136, v192
	v_dual_fmac_f32 v84, v126, v209 :: v_dual_fmac_f32 v83, v125, v208
	v_dual_fmac_f32 v82, v123, v206 :: v_dual_fmac_f32 v81, v124, v207
	v_dual_fmac_f32 v42, v146, v221 :: v_dual_fmac_f32 v79, v133, v212
	v_fmac_f32_e32 v40, v148, v219
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v236, v114, v117
	v_mul_f32_e32 v237, v115, v117
	v_dual_mul_f32 v238, v116, v117 :: v_dual_mul_f32 v239, v114, v118
	v_mul_f32_e32 v240, v115, v118
	v_dual_mul_f32 v241, v116, v118 :: v_dual_mul_f32 v242, v113, v117
	v_mul_f32_e32 v243, v113, v118
	ds_load_b128 v[113:116], v105 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v41, v147, v220 :: v_dual_fmac_f32 v62, v228, v186
	v_dual_fmac_f32 v39, v149, v218 :: v_dual_fmac_f32 v98, v151, v216
	v_dual_fmac_f32 v99, v150, v215 :: v_dual_fmac_f32 v74, v237, v200
	v_dual_fmac_f32 v97, v152, v217 :: v_dual_fmac_f32 v58, v242, v202
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v75, v223, v185 :: v_dual_fmac_f32 v76, v236, v199
	v_dual_fmac_f32 v73, v222, v184 :: v_dual_fmac_f32 v54, v225, v163
	v_dual_fmac_f32 v69, v160, v183 :: v_dual_fmac_f32 v72, v238, v201
	v_dual_fmac_f32 v67, v231, v189 :: v_dual_fmac_f32 v56, v226, v162
	v_fmac_f32_e32 v55, v224, v164
	v_dual_fmac_f32 v53, v235, v165 :: v_dual_fmac_f32 v64, v241, v176
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v244, v113, v117
	v_mul_f32_e32 v245, v116, v117
	v_mul_f32_e32 v246, v115, v117
	v_mul_f32_e32 v117, v114, v117
	v_mul_f32_e32 v113, v113, v118
	v_mul_f32_e32 v116, v116, v118
	v_mul_f32_e32 v115, v115, v118
	v_mul_f32_e32 v114, v114, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v77, v131, v210 :: v_dual_fmac_f32 v60, v246, v204
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v71, v159, v182 :: v_dual_fmac_f32 v50, v232, v168
	v_dual_fmac_f32 v65, v230, v188 :: v_dual_fmac_f32 v70, v113, v169
	v_dual_fmac_f32 v63, v229, v187 :: v_dual_fmac_f32 v52, v234, v166
	v_dual_fmac_f32 v49, v244, v198 :: v_dual_fmac_f32 v46, v115, v171
	v_dual_fmac_f32 v61, v117, v205 :: v_dual_fmac_f32 v68, v239, v174
	v_dual_fmac_f32 v59, v245, v203 :: v_dual_fmac_f32 v44, v243, v173
	v_dual_fmac_f32 v57, v227, v161 :: v_dual_fmac_f32 v66, v240, v175
	v_fmac_f32_e32 v51, v233, v167
	v_fmac_f32_e32 v47, v114, v170
	v_fmac_f32_e32 v45, v116, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
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
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v11, v6
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v48, 6, v0
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v43, 0xe0, v0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v48, 3, v11
	s_barrier
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v2, 0, v1
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
	v_mov_b32_e32 v149, 0
	v_mov_b32_e32 v147, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v107, 48, v106
	v_xor_b32_e32 v108, 32, v106
	v_xor_b32_e32 v113, 16, v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v105
	v_add_nc_u32_e32 v176, 0, v106
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v173, 0, v107
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v175, 0, v108
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v174, 0, v113
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v107, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_mov_b32 s12, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[105:108], v176
	ds_load_b128 v[113:116], v176 offset:8192
	ds_load_b128 v[118:121], v175 offset:8192
	ds_load_b128 v[122:125], v175
	ds_load_b128 v[126:129], v174 offset:8192
	ds_load_b128 v[130:133], v174
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v170, s19 :: v_dual_mov_b32 v169, s18
	v_dual_mov_b32 v168, s17 :: v_dual_mov_b32 v167, s16
	v_dual_mov_b32 v166, s15 :: v_dual_mov_b32 v165, s14
	v_dual_mov_b32 v164, s13 :: v_dual_mov_b32 v163, s12
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[134:137], v173
	ds_load_b128 v[147:150], v173 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[105:108], v[29:32], v[163:170] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[113:116], v[29:32], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[105:108], v[25:28], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[113:116], v[25:28], v[163:170] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[130:133], v[21:24], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[126:129], v[21:24], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[130:133], v[17:20], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[126:129], v[17:20], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[122:125], v[13:16], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[118:121], v[13:16], v[151:158] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[122:125], v[9:12], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[118:121], v[9:12], v[163:170] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[134:137], v[5:8], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[147:150], v[5:8], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[134:137], v[1:4], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[147:150], v[1:4], v[163:170] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v122, v143
	v_cvt_f32_i32_e32 v127, v144
	v_cvt_f32_i32_e32 v132, v145
	v_cvt_f32_i32_e32 v137, v146
	v_cvt_f32_i32_e32 v133, v151
	v_cvt_f32_i32_e32 v138, v152
	v_cvt_f32_i32_e32 v145, v153
	v_cvt_f32_i32_e32 v151, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v144, v156
	v_cvt_f32_i32_e32 v147, v157
	v_cvt_f32_i32_e32 v149, v158
	v_cvt_f32_i32_e32 v152, v177
	v_cvt_f32_i32_e32 v156, v178
	v_cvt_f32_i32_e32 v161, v179
	v_cvt_f32_i32_e32 v162, v180
	v_cvt_f32_i32_e32 v118, v181
	v_cvt_f32_i32_e32 v121, v182
	v_cvt_f32_i32_e32 v125, v183
	v_cvt_f32_i32_e32 v130, v184
	v_cvt_f32_i32_e32 v160, v163
	v_cvt_f32_i32_e32 v105, v164
	v_cvt_f32_i32_e32 v106, v165
	v_cvt_f32_i32_e32 v107, v166
	v_cvt_f32_i32_e32 v108, v167
	v_cvt_f32_i32_e32 v165, v168
	v_cvt_f32_i32_e32 v167, v169
	v_cvt_f32_i32_e32 v168, v170
	v_cvt_f32_i32_e32 v169, v139
	v_cvt_f32_i32_e32 v170, v140
	v_cvt_f32_i32_e32 v171, v141
	v_cvt_f32_i32_e32 v172, v142
.LBB0_9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v114, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[113:116], v176 offset:16384
	ds_load_b128 v[139:142], v176 offset:24576
	ds_load_b128 v[206:209], v175 offset:24576
	ds_load_b128 v[210:213], v175 offset:16384
	ds_load_b128 v[214:217], v174 offset:24576
	ds_load_b128 v[218:221], v174 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v181, s19 :: v_dual_mov_b32 v180, s18
	v_dual_mov_b32 v179, s17 :: v_dual_mov_b32 v178, s16
	v_dual_mov_b32 v177, s15 :: v_dual_mov_b32 v176, s14
	v_dual_mov_b32 v175, s13 :: v_dual_mov_b32 v174, s12
	.loc	1 412 31                        ; generate_amdgcn.py:412:31
	ds_load_b128 v[222:225], v173 offset:16384
	ds_load_b128 v[226:229], v173 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[113:116], v[29:32], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[139:142], v[29:32], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[113:116], v[25:28], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[139:142], v[25:28], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[218:221], v[21:24], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[214:217], v[21:24], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[218:221], v[17:20], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[214:217], v[17:20], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[210:213], v[13:16], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[206:209], v[13:16], v[190:197] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[198:205], v[210:213], v[9:12], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[206:209], v[9:12], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[222:225], v[5:8], v[182:189] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[226:229], v[5:8], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[222:225], v[1:4], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[226:229], v[1:4], v[174:181] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v126, v182
	v_cvt_f32_i32_e32 v131, v183
	v_cvt_f32_i32_e32 v139, v184
	v_cvt_f32_i32_e32 v141, v185
	v_cvt_f32_i32_e32 v120, v186
	v_cvt_f32_i32_e32 v124, v187
	v_cvt_f32_i32_e32 v129, v188
	v_cvt_f32_i32_e32 v135, v189
	v_cvt_f32_i32_e32 v117, v190
	v_cvt_f32_i32_e32 v136, v191
	v_cvt_f32_i32_e32 v142, v192
	v_cvt_f32_i32_e32 v148, v193
	v_cvt_f32_i32_e32 v153, v194
	v_cvt_f32_i32_e32 v140, v195
	v_cvt_f32_i32_e32 v143, v196
	v_cvt_f32_i32_e32 v146, v197
	v_cvt_f32_i32_e32 v150, v198
	v_cvt_f32_i32_e32 v154, v199
	v_cvt_f32_i32_e32 v158, v200
	v_cvt_f32_i32_e32 v159, v201
	v_cvt_f32_i32_e32 v119, v202
	v_cvt_f32_i32_e32 v123, v203
	v_cvt_f32_i32_e32 v128, v204
	v_cvt_f32_i32_e32 v134, v205
	v_cvt_f32_i32_e32 v157, v174
	v_cvt_f32_i32_e32 v116, v175
	v_cvt_f32_i32_e32 v115, v176
	v_cvt_f32_i32_e32 v114, v177
	v_cvt_f32_i32_e32 v113, v178
	v_cvt_f32_i32_e32 v163, v179
	v_cvt_f32_i32_e32 v164, v180
	v_cvt_f32_i32_e32 v166, v181
.LBB0_11:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s40, 31
	s_mov_b32 s39, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s0, s40, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_mov_b32 s36, s8
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_lshl_add_u32 v19, v37, 1, 0
	.loc	1 422 30                        ; generate_amdgcn.py:422:30
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s0, s3, v[33:34]
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v111, s0, 1
	v_add_lshl_u32 v3, v112, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s37, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s35, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
.Ltmp23:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v34, 5, v34
.Ltmp24:
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
.Ltmp25:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v35, 0x100, v35
.Ltmp26:
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v17, v2, s[36:39], 0 offen
	buffer_load_u16 v22, v3, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 32, v110
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v4, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_lshl_add_u32 v4, v37, 2, 0
	s_delay_alu instid0(VALU_DEP_1)
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
.Ltmp27:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s37, s29, 0xffff
	s_mov_b32 s36, s28
.Ltmp28:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v5, v18
	v_mul_f32_e32 v23, v2, v18
	v_dual_mul_f32 v25, v4, v18 :: v_dual_mul_f32 v2, v2, v17
	v_dual_mul_f32 v24, v3, v18 :: v_dual_mul_f32 v5, v5, v17
	v_mul_f32_e32 v3, v3, v17
	v_mul_f32_e32 v4, v4, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v165, v99
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
	v_fma_f32 v5, v5, v160, v100
	v_fma_f32 v3, v3, v167, v98
	v_fma_f32 v4, v4, v168, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v99, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v130, v12, v130, v77
	v_fma_f32 v125, v11, v125, v78
	v_fma_f32 v121, v10, v121, v79
	v_fma_f32 v118, v9, v118, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v100, v5, s2
	v_cndmask_b32_e64 v98, v98, v3, s2
	v_cndmask_b32_e64 v97, v97, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v13, v18
	v_mul_f32_e32 v29, v15, v18
	v_mul_f32_e32 v13, v13, v17
	v_mul_f32_e32 v15, v15, v17
	v_dual_mul_f32 v27, v14, v18 :: v_dual_mul_f32 v16, v16, v17
	v_mul_f32_e32 v14, v14, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v147, v102
	v_fma_f32 v25, v25, v149, v101
	v_fma_f32 v15, v15, v161, v81
	v_fma_f32 v13, v13, v152, v84
	v_fma_f32 v22, v22, v133, v104
	v_fma_f32 v23, v23, v144, v103
	v_fma_f32 v31, v31, v127, v91
	v_fma_f32 v30, v30, v122, v92
	v_fma_f32 v122, v16, v162, v82
	v_fma_f32 v127, v14, v156, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v102, v24, s2
	v_cndmask_b32_e64 v101, v101, v25, s2
	v_cndmask_b32_e64 v14, v84, v13, s2
	v_cndmask_b32_e64 v25, v81, v15, s2
	v_cndmask_b32_e64 v13, v80, v118, s2
	v_cndmask_b32_e64 v15, v79, v121, s2
	v_cndmask_b32_e64 v24, v77, v130, s2
	v_cndmask_b32_e64 v104, v104, v22, s2
	v_cndmask_b32_e64 v22, v103, v23, s2
	v_cndmask_b32_e64 v23, v78, v125, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v171, v93
	v_fma_f32 v28, v28, v172, v94
	v_fma_f32 v27, v27, v170, v95
	v_fma_f32 v133, v33, v137, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v92, v30, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v169, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v94, v28, s2
	v_cndmask_b32_e64 v95, v95, v27, s2
	v_cndmask_b32_e64 v31, v91, v31, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v96, v96, v26, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v109, v138, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v82, v122, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v20, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v19 offset:35328
	ds_load_b128 v[2:5], v19 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v88, v109, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v77, v9, v18
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v79, v4, v18
	v_mul_f32_e32 v80, v5, v18
	v_mul_f32_e32 v9, v9, v17
	v_mul_f32_e32 v4, v4, v17
	v_mul_f32_e32 v78, v3, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v77, v77, v117, v49
	v_fma_f32 v79, v79, v143, v74
	v_fma_f32 v80, v80, v146, v72
	v_fma_f32 v9, v9, v157, v70
	v_fma_f32 v4, v4, v164, v66
	v_fma_f32 v78, v78, v140, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v77, s2
	v_cndmask_b32_e64 v77, v74, v79, s2
	v_cndmask_b32_e64 v74, v72, v80, s2
	v_cndmask_b32_e64 v72, v70, v9, s2
	v_cndmask_b32_e64 v9, v66, v4, s2
	v_cndmask_b32_e64 v76, v76, v78, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v132, v32, v132, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v93, v29, s2
	v_cndmask_b32_e64 v29, v89, v133, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v110, v7, v18 :: v_dual_mul_f32 v5, v5, v17
	v_dual_mul_f32 v112, v1, v18 :: v_dual_mul_f32 v3, v3, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v90, v132, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v145, v87
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v93, v10, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v112, v112, v155, v85
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v102, v11, v18
	v_mul_f32_e32 v103, v12, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v87, v110, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[87:90], v19 offset:34816
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v111, v8, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v85, v112, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v163, v68
	v_fma_f32 v5, v5, v166, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v111, v151, v86
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v11, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v17
	v_mul_f32_e32 v7, v7, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v86, v111, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[109:112], v19 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v83, v127, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v115, v46
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v108, v39
	v_fma_f32 v7, v7, v106, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v84, v89, v18
	v_mul_f32_e32 v82, v88, v18
	v_dual_mul_f32 v81, v87, v18 :: v_dual_mul_f32 v88, v88, v17
	v_mul_f32_e32 v83, v90, v18
	v_mul_f32_e32 v87, v87, v17
	v_mul_f32_e32 v89, v89, v17
	v_mul_f32_e32 v90, v90, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v81, v81, v126, v75
	v_fma_f32 v88, v88, v154, v56
	v_fma_f32 v87, v87, v150, v57
	v_fma_f32 v89, v89, v158, v54
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v91, v111, v18
	v_mul_f32_e32 v111, v111, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v84, v84, v139, v69
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v85, v109, v18
	v_mul_f32_e32 v86, v110, v18
	v_mul_f32_e32 v92, v112, v18
	v_dual_mul_f32 v18, v2, v18 :: v_dual_mul_f32 v109, v109, v17
	v_mul_f32_e32 v110, v110, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v82, v82, v131, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v84, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v117, v18, v153, v58
	v_fma_f32 v111, v111, v128, v51
	v_fma_f32 v110, v110, v123, v52
	v_fma_f32 v109, v109, v119, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v68, v3, s2
	v_cndmask_b32_e64 v3, v64, v5, s2
	v_cndmask_b32_e64 v5, v73, v82, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v102, v102, v142, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v91, v91, v129, v63
	v_fma_f32 v85, v85, v120, v67
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v112, v112, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v83, v83, v141, v71
	v_fma_f32 v92, v92, v135, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v63, v91, s2
	v_cndmask_b32_e64 v63, v60, v102, s2
	v_cndmask_b32_e64 v60, v57, v87, s2
	v_cndmask_b32_e64 v57, v54, v89, s2
	v_cndmask_b32_e64 v54, v53, v109, s2
	v_cndmask_b32_e64 v53, v52, v110, s2
	v_cndmask_b32_e64 v52, v51, v111, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v49
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v86, v86, v124, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v67, v85, s2
	v_cndmask_b32_e64 v70, v71, v83, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v112, v112, v134, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v65, v86, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v74
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v93, v93, v136, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v62, v92, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v90, v90, v159, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v86, 0xbfb8aa3b, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v75, v81, s2
	v_cndmask_b32_e64 v64, v61, v93, s2
	v_cndmask_b32_e64 v61, v58, v117, s2
	v_cndmask_b32_e64 v50, v50, v112, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v86
	v_dual_mul_f32 v75, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v84, 0xbfb8aa3b, v65
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v103, v103, v148, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v85, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v110, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v86, 0, 0x42800000, s13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v56, v88, s2
	v_cndmask_b32_e64 v62, v59, v103, s2
	v_cndmask_b32_e64 v56, v55, v90, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v55, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v88, 0xbfb8aa3b, v61
	v_dual_mul_f32 v109, 0xbfb8aa3b, v50 :: v_dual_fmac_f32 v86, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v75
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v110
	v_mul_f32_e32 v79, 0xbfb8aa3b, v3
	v_dual_mul_f32 v87, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v58
	v_mul_f32_e32 v89, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v55
	v_cndmask_b32_e64 v75, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v84
	v_cndmask_b32_e64 v110, 0, 0x42800000, s26
	v_exp_f32_e32 v86, v86
	v_cndmask_b32_e64 v55, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v79
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v87
	v_cndmask_b32_e64 v84, 0, 0x42800000, s15
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v110, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s13
	v_exp_f32_e32 v78, v78
	v_cndmask_b32_e64 v79, 0, 0x42800000, s7
	v_cndmask_b32_e64 v87, 0, 0x42800000, s12
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v76 :: v_dual_fmac_f32 v84, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s6
	v_exp_f32_e32 v110, v110
	v_ldexp_f32 v86, v86, v130
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v85
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s26
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v78, v78, v123
	v_dual_fmac_f32 v79, 0xbfb8aa3b, v3 :: v_dual_add_f32 v86, 1.0, v86
	v_cndmask_b32_e64 v85, 0, 0x42800000, s14
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s15
	v_ldexp_f32 v110, v110, v143
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v79, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v143, null, v86, v86, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v71
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s7
	v_ldexp_f32 v84, v84, v132
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v186, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v82
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v80
	v_cndmask_b32_e64 v71, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v88
	v_ldexp_f32 v79, v79, v124
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v85, v85
	v_cndmask_b32_e64 v82, 0, 0x42800000, s9
	v_mul_f32_e32 v93, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v80, 0, 0x42800000, s11
	v_cndmask_b32_e64 v88, 0, 0x42800000, s19
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v214, -v143, v186, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v103, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v80, 0xbfb8aa3b, v69
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v93
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v61
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v85, v85, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v186, v214, v186
	v_div_scale_f32 v131, null, v79, v79, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v77
	v_dual_mul_f32 v91, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v112, 0xbfb8aa3b, v54
	v_dual_mul_f32 v81, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v90, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v93, 0, 0x42800000, s22
	v_exp_f32_e32 v80, v80
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v180, v131
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v112
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v81
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s11
	v_dual_fmac_f32 v93, 0xbfb8aa3b, v56 :: v_dual_add_f32 v110, 1.0, v110
	v_ldexp_f32 v71, v71, v120
	v_cndmask_b32_e64 v59, 0, 0x42800000, s1
	v_cndmask_b32_e64 v112, 0, 0x42800000, s24
	v_cndmask_b32_e64 v81, 0, 0x42800000, s10
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v80, v80, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v208, -v131, v180, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v83, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v57
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v77 :: v_dual_fmac_f32 v112, 0xbfb8aa3b, v54
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v89
	v_dual_fmac_f32 v81, 0xbfb8aa3b, v70 :: v_dual_add_f32 v80, 1.0, v80
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s22
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v55, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v180, v208, v180
	v_div_scale_f32 v123, null, v71, v71, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v73
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v92
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v109
	v_exp_f32_e32 v112, v112
	v_cndmask_b32_e64 v89, 0, 0x42800000, s18
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s19
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v93, v93, v139
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v80, v80, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v176, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v90
	v_cndmask_b32_e64 v92, 0, 0x42800000, s23
	v_cndmask_b32_e64 v109, 0, 0x42800000, s27
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s24
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v83
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s9
	v_ldexp_f32 v88, v88, v136
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v184, v139
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v102
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v55, v55, v118
	v_cndmask_b32_e64 v90, 0, 0x42800000, s17
	v_mul_f32_e32 v111, 0xbfb8aa3b, v53
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v72 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v57
	v_ldexp_f32 v112, v112, v141
	v_fmac_f32_e32 v109, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v83, 0, 0x42800000, s8
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v75, v75, v122
	v_ldexp_f32 v82, v82, v126
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v88, 1.0, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v89, v89
	v_cndmask_b32_e64 v102, 0, 0x42800000, s21
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v204, -v123, v176, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v63
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v111
	v_exp_f32_e32 v92, v92
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v112, 1.0, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v109, v109
	v_dual_fmac_f32 v83, 0xbfb8aa3b, v4 :: v_dual_add_f32 v82, 1.0, v82
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v212, -v139, v184, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v75, 1.0, v75 :: v_dual_fmac_f32 v102, 0xbfb8aa3b, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v59, v59, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v176, v204, v176
	v_div_scale_f32 v119, null, v55, v55, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v111, 0, 0x42800000, s25
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s23
	v_exp_f32_e32 v90, v90
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s27
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v81, v81, v127
	v_ldexp_f32 v89, v89, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v82, v82, v5
	v_fmac_f32_e32 v184, v212, v184
	v_div_scale_f32 v127, null, v75, v75, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v174, v119
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v91
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s17
	v_ldexp_f32 v92, v92, v140
	v_fmac_f32_e32 v111, 0xbfb8aa3b, v53
	v_exp_f32_e32 v102, v102
	v_ldexp_f32 v109, v109, v144
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v103
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v178, v127
	v_rcp_f32_e32 v182, v135
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v51, v51, v117
	v_cndmask_b32_e64 v91, 0, 0x42800000, s16
	v_ldexp_f32 v90, v90, v134
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v111, v111
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v124, s25, v74, v71, v74
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v109, 1.0, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v103, 0, 0x42800000, s20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v147, null, v84, v84, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v83, v83
	v_ldexp_f32 v73, v73, v121
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v202, -v119, v174, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v91, 0xbfb8aa3b, v64 :: v_dual_add_f32 v90, 1.0, v90
	v_ldexp_f32 v102, v102, v138
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v155, null, v88, v88, v61
	v_mul_f32_e32 v204, v124, v176
	v_div_scale_f32 v171, null, v109, v109, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v103, 0xbfb8aa3b, v60 :: v_dual_add_f32 v102, 1.0, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v188, v147
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v206, -v127, v178, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v210, -v135, v182, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v73, 1.0, v73 :: v_dual_fmac_f32 v174, v202, v174
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, null, v51, v51, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v111, v111, v142
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v151, null, v90, v90, v63
	v_div_scale_f32 v163, null, v92, v92, v57
	v_rcp_f32_e32 v192, v155
	v_rcp_f32_e32 v200, v171
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v83, v83, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v178, v206, v178
	v_div_scale_f32 v121, null, v59, v59, v77
	v_fmac_f32_e32 v182, v210, v182
	v_div_scale_f32 v125, null, v73, v73, v72
	v_rcp_f32_e32 v173, v117
	v_div_scale_f32 v128, s23, v18, v75, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v111, 1.0, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v190, v151
	v_rcp_f32_e32 v196, v163
	v_div_scale_f32 v159, null, v102, v102, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v216, -v147, v188, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v175, v121
	v_rcp_f32_e32 v177, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v91, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v206, v128, v178
	v_div_scale_f32 v167, null, v111, v111, v53
	v_rcp_f32_e32 v194, v159
	v_fma_f32 v220, -v155, v192, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v228, -v171, v200, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v103, v103, v137
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v188, v216, v188
	v_div_scale_f32 v137, null, v81, v81, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v87, v87, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v129, null, v78, v78, v9
	v_div_scale_f32 v132, s21, v3, v79, v3
	v_fma_f32 v201, -v117, v173, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v198, v167
	v_fma_f32 v218, -v151, v190, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v224, -v163, v196, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v89, 1.0, v89 :: v_dual_fmac_f32 v192, v220, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v145, null, v85, v85, v66
	v_fmac_f32_e32 v200, v228, v200
	v_div_scale_f32 v161, null, v93, v93, v56
	v_div_scale_f32 v165, null, v112, v112, v54
	v_rcp_f32_e32 v183, v137
	v_div_scale_f32 v140, s17, v69, v80, v69
	v_rcp_f32_e32 v179, v129
	v_fma_f32 v203, -v121, v175, 1.0
	v_fma_f32 v205, -v125, v177, 1.0
	v_div_scale_f32 v118, vcc_lo, v49, v51, v49
	v_dual_fmac_f32 v173, v201, v173 :: v_dual_mul_f32 v208, v132, v180
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v91, v91, v133
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v190, v218, v190
	v_div_scale_f32 v133, null, v83, v83, v4
	v_fmac_f32_e32 v196, v224, v196
	v_div_scale_f32 v153, null, v89, v89, v62
	v_div_scale_f32 v120, s26, v76, v55, v76
	v_rcp_f32_e32 v187, v145
	v_rcp_f32_e32 v195, v161
	v_fma_f32 v222, -v159, v194, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v197, v165
	v_div_scale_f32 v122, s27, v77, v59, v77
	v_div_scale_f32 v136, s19, v5, v82, v5
	v_fmac_f32_e32 v175, v203, v175
	v_dual_fmac_f32 v177, v205, v177 :: v_dual_mul_f32 v212, v140, v184
	v_fma_f32 v236, -v131, v208, v132
	v_mul_f32_e32 v201, v118, v173
	v_rcp_f32_e32 v181, v133
	v_rcp_f32_e32 v191, v153
	v_fma_f32 v226, -v167, v198, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v91, 1.0, v91
	v_dual_add_f32 v103, 1.0, v103 :: v_dual_mul_f32 v202, v120, v174
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v194, v222, v194
	v_div_scale_f32 v141, null, v87, v87, v68
	v_div_scale_f32 v152, s11, v63, v90, v63
	v_fma_f32 v211, -v137, v183, 1.0
	v_div_scale_f32 v144, s15, v67, v86, v67
	v_fma_f32 v207, -v129, v179, 1.0
	v_mul_f32_e32 v210, v136, v182
	v_fma_f32 v240, -v139, v212, v140
	v_mul_f32_e32 v203, v122, v175
	v_div_scale_f32 v169, null, v110, v110, v52
	v_fmac_f32_e32 v208, v236, v180
	v_fma_f32 v229, -v117, v201, v118
	v_fmac_f32_e32 v198, v226, v198
	v_div_scale_f32 v149, null, v91, v91, v64
	v_div_scale_f32 v160, s7, v58, v102, v58
	v_rcp_f32_e32 v185, v141
	v_fma_f32 v215, -v145, v187, 1.0
	v_fma_f32 v223, -v161, v195, 1.0
	v_fma_f32 v230, -v119, v202, v120
	v_div_scale_f32 v126, s24, v72, v73, v72
	v_fma_f32 v225, -v165, v197, 1.0
	v_dual_fmac_f32 v183, v211, v183 :: v_dual_mul_f32 v218, v152, v190
	v_fma_f32 v232, -v123, v204, v124
	v_dual_fmac_f32 v179, v207, v179 :: v_dual_mul_f32 v214, v144, v186
	v_fmac_f32_e32 v212, v240, v184
	v_fma_f32 v231, -v121, v203, v122
	v_rcp_f32_e32 v199, v169
	v_fma_f32 v238, -v135, v210, v136
	v_fmac_f32_e32 v201, v229, v173
	v_div_scale_f32 v168, s3, v53, v111, v53
	v_rcp_f32_e32 v189, v149
	v_fma_f32 v209, -v133, v181, 1.0
	v_fma_f32 v219, -v153, v191, 1.0
	v_div_scale_f32 v130, s22, v9, v78, v9
	v_dual_fmac_f32 v187, v215, v187 :: v_dual_mul_f32 v222, v160, v194
	v_dual_fmac_f32 v195, v223, v195 :: v_dual_fmac_f32 v202, v230, v174
	v_div_scale_f32 v148, s13, v65, v84, v65
	v_dual_fmac_f32 v197, v225, v197 :: v_dual_fmac_f32 v204, v232, v176
	v_fma_f32 v232, -v151, v218, v152
	v_mul_f32_e32 v205, v126, v177
	v_fma_f32 v242, -v143, v214, v144
	v_dual_fmac_f32 v203, v231, v175 :: v_dual_fmac_f32 v210, v238, v182
	v_fma_f32 v117, -v117, v201, v118
	v_div_scale_f32 v134, s20, v4, v83, v4
	v_dual_fmac_f32 v181, v209, v181 :: v_dual_mul_f32 v216, v148, v188
	v_dual_fmac_f32 v191, v219, v191 :: v_dual_mul_f32 v226, v168, v198
	v_div_scale_f32 v156, s9, v61, v88, v61
	v_fma_f32 v213, -v141, v185, 1.0
	v_fma_f32 v236, -v159, v222, v160
	v_mul_f32_e32 v207, v130, v179
	v_fma_f32 v118, -v119, v202, v120
	v_fmac_f32_e32 v218, v232, v190
	v_fma_f32 v233, -v125, v205, v126
	v_fmac_f32_e32 v214, v242, v186
	v_fma_f32 v119, -v121, v203, v122
	v_fma_f32 v227, -v169, v199, 1.0
	v_fma_f32 v234, -v127, v206, v128
	v_div_fmas_f32 v117, v117, v173, v201
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v138, s18, v70, v81, v70
	v_div_scale_f32 v157, null, v103, v103, v60
	v_div_scale_f32 v164, s5, v57, v92, v57
	v_fma_f32 v217, -v149, v189, 1.0
	v_fma_f32 v240, -v167, v226, v168
	v_mul_f32_e32 v209, v134, v181
	v_dual_fmac_f32 v185, v213, v185 :: v_dual_mul_f32 v220, v156, v192
	v_fmac_f32_e32 v222, v236, v194
	v_fma_f32 v235, -v129, v207, v130
	v_div_fmas_f32 v118, v118, v174, v202
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v230, -v147, v216, v148
	v_fmac_f32_e32 v205, v233, v177
	v_div_scale_f32 v142, s16, v68, v87, v68
	v_div_fmas_f32 v119, v119, v175, v203
	v_dual_fmac_f32 v199, v227, v199 :: v_dual_fmac_f32 v206, v234, v178
	v_rcp_f32_e32 v193, v157
	v_dual_fmac_f32 v189, v217, v189 :: v_dual_mul_f32 v224, v164, v196
	v_dual_mul_f32 v211, v138, v183 :: v_dual_fmac_f32 v226, v240, v198
	v_fma_f32 v237, -v133, v209, v134
	v_fma_f32 v120, -v123, v204, v124
	v_fma_f32 v234, -v155, v220, v156
	v_dual_fmac_f32 v207, v235, v179 :: v_dual_fmac_f32 v216, v230, v188
	v_fma_f32 v121, -v125, v205, v126
	v_div_scale_f32 v146, s14, v66, v85, v66
	s_mov_b32 vcc_lo, s25
	v_div_fixup_f32 v59, v119, v59, v77
	v_mul_f32_e32 v213, v142, v185
	v_fma_f32 v122, -v127, v206, v128
	v_fma_f32 v239, -v137, v211, v138
	v_fma_f32 v238, -v163, v224, v164
	v_fmac_f32_e32 v209, v237, v181
	v_div_fixup_f32 v49, v117, v51, v49
	v_div_fmas_f32 v51, v120, v176, v204
	s_mov_b32 vcc_lo, s24
	v_fmac_f32_e32 v220, v234, v192
	v_fma_f32 v123, -v129, v207, v130
	v_div_scale_f32 v150, s12, v64, v91, v64
	v_div_fixup_f32 v55, v118, v55, v76
	v_div_fmas_f32 v76, v121, v177, v205
	s_mov_b32 vcc_lo, s23
	v_mul_f32_e32 v215, v146, v187
	v_fma_f32 v124, -v131, v208, v132
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v241, -v141, v213, v142
	v_div_fmas_f32 v77, v122, v178, v206
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v221, -v157, v193, 1.0
	v_dual_fmac_f32 v211, v239, v183 :: v_dual_fmac_f32 v224, v238, v196
	v_fma_f32 v125, -v133, v209, v134
	v_div_fixup_f32 v51, v51, v71, v74
	v_div_scale_f32 v154, s10, v62, v89, v62
	v_div_scale_f32 v172, s0, v50, v109, v50
	v_div_fmas_f32 v71, v123, v179, v207
	s_mov_b32 vcc_lo, s21
	v_mul_f32_e32 v217, v150, v189
	v_fma_f32 v229, -v145, v215, v146
	v_dual_fmac_f32 v213, v241, v185 :: v_dual_mul_f32 v22, v22, v55
	v_fma_f32 v126, -v135, v210, v136
	v_div_fixup_f32 v55, v76, v73, v72
	v_div_fmas_f32 v72, v124, v180, v208
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v158, s8, v60, v103, v60
	v_dual_fmac_f32 v193, v221, v193 :: v_dual_mul_f32 v228, v172, v200
	v_fma_f32 v127, -v137, v211, v138
	v_div_fixup_f32 v59, v77, v75, v18
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v101, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v51, v125, v181, v209
	v_mul_f32_e32 v219, v154, v191
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v231, -v149, v217, v150
	v_fma_f32 v128, -v139, v212, v140
	v_div_fixup_f32 v71, v71, v78, v9
	v_fmac_f32_e32 v215, v229, v187
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v9, v100, v55 :: v_dual_mul_f32 v6, v6, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v126, v182, v210
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v162, s6, v56, v93, v56
	v_fma_f32 v129, -v141, v213, v142
	v_div_fixup_f32 v72, v72, v79, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v99, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v59, v127, v183, v211
	v_div_fixup_f32 v51, v51, v83, v4
	v_mul_f32_e32 v221, v158, v193
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v233, -v153, v219, v154
	v_fma_f32 v130, -v143, v214, v144
	v_dual_fmac_f32 v217, v231, v189 :: v_dual_mul_f32 v4, v98, v71
	v_div_fmas_f32 v71, v128, v184, v212
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v131, -v145, v215, v146
	v_dual_mul_f32 v223, v162, v195 :: v_dual_mul_f32 v12, v12, v17
	v_div_fixup_f32 v55, v55, v82, v5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v97, v72 :: v_dual_mul_f32 v8, v8, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v72, v129, v185, v213
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v132, -v147, v216, v148
	v_div_fixup_f32 v59, v59, v81, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v70, v96, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v235, -v157, v221, v158
	v_fmac_f32_e32 v219, v233, v191
	v_div_fmas_f32 v51, v130, v186, v214
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v133, -v149, v217, v150
	v_div_fixup_f32 v71, v71, v80, v69
	v_div_fmas_f32 v73, v131, v187, v215
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v237, -v161, v223, v162
	v_fma_f32 v134, -v151, v218, v152
	v_fmac_f32_e32 v221, v235, v193
	v_div_fixup_f32 v68, v72, v87, v68
	v_div_fmas_f32 v72, v132, v188, v216
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v135, -v153, v219, v154
	v_div_scale_f32 v166, s4, v54, v112, v54
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v69, v95, v55
	v_mul_f32_e32 v55, v94, v59
	v_mul_f32_e32 v59, v32, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v133, v189, v217
	s_mov_b32 vcc_lo, s11
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v116, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v136, -v155, v220, v156
	v_dual_fmac_f32 v223, v237, v195 :: v_dual_mul_f32 v2, v2, v17
	v_div_fixup_f32 v51, v51, v86, v67
	v_div_fmas_f32 v67, v134, v190, v218
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v137, -v157, v221, v158
	v_div_fixup_f32 v65, v72, v84, v65
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v33, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v135, v191, v219
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v138, -v159, v222, v160
	v_div_fixup_f32 v32, v32, v91, v64
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v10, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v225, v166, v197
	v_div_fmas_f32 v64, v136, v192, v220
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v139, -v161, v223, v162
	v_div_fixup_f32 v63, v67, v90, v63
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v51, v31, v51
	v_mul_f32_e32 v31, v29, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v65, v137, v193, v221
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v170, s1, v52, v110, v52
	v_fma_f32 v239, -v165, v225, v166
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v28, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v138, v194, v222
	s_mov_b32 vcc_lo, s6
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v113, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v140, -v163, v224, v164
	v_div_fixup_f32 v62, v68, v89, v62
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v63, v139, v195, v223
	v_mul_f32_e32 v227, v170, v199
	s_mov_b32 vcc_lo, s5
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v44, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v225, v239, v197
	v_div_fixup_f32 v61, v64, v88, v61
	v_div_fixup_f32 v60, v65, v103, v60
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v26, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v62, v140, v196, v224
	v_div_fixup_f32 v56, v63, v93, v56
	v_fma_f32 v241, -v169, v227, v170
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v12, v114, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v141, -v165, v225, v166
	v_fma_f32 v142, -v167, v226, v168
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v20, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v57, v62, v92, v57
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v14, v60
	v_mul_f32_e32 v14, v21, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v171, v228, v172
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v32, v102, v58
	v_div_fmas_f32 v58, v141, v197, v225
	s_mov_b32 vcc_lo, s3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v11, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v227, v241, v199
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v25, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v142, v198, v226
	v_fmac_f32_e32 v228, v56, v200
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v107, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v39, v1, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v32
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v58, v112, v54
	v_fma_f32 v54, -v169, v227, v170
	v_div_fixup_f32 v25, v25, v111, v53
	v_fma_f32 v10, -v171, v228, v172
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v8, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v54, v54, v199, v227
	s_mov_b32 vcc_lo, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v200, v228
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_mul_f32_e32 v53, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v52, v54, v110, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v109, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v53
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v23, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v24, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v49, v104, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v66, v73, v85, v66
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v105, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v2
	v_exp_f32_e32 v50, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v41, v7, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v12, v23
	v_exp_f32_e32 v23, v24
	v_exp_f32_e32 v44, v44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v66
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v42, v6, s2
	s_mov_b32 s4, 0x76543210
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v50, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v12, v12, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v25
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v44, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v24, v24, v46
	v_div_scale_f32 v44, null, v23, v23, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v50, v52, 1.0
	v_rcp_f32_e32 v57, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v17, null, v25, v25, v2
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, vcc_lo, v47, v12, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v60, v17
	v_fma_f32 v58, -v53, v54, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v44, v57, 1.0
	v_mul_f32_e32 v62, v56, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v58, v54
	v_div_scale_f32 v58, s0, v46, v24, v46
	v_fmac_f32_e32 v57, v61, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v17, v60, 1.0
	v_div_scale_f32 v61, s1, v45, v23, v45
	v_fma_f32 v64, -v50, v62, v56
	v_dual_mul_f32 v65, v58, v54 :: v_dual_fmac_f32 v60, v63, v60
	v_div_scale_f32 v63, s3, v2, v25, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v61, v57
	v_fmac_f32_e32 v62, v64, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v53, v65, v58
	v_mul_f32_e32 v68, v63, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v44, v66, v61
	v_fma_f32 v50, -v50, v62, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v64, v54
	v_fma_f32 v56, -v17, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v67, v57
	v_div_fmas_f32 v50, v50, v52, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v53, v65, v58
	v_fmac_f32_e32 v68, v56, v60
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v44, v66, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v52, v52, v54, v65
	v_fma_f32 v17, -v17, v68, v63
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v44, v44, v57, v66
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v52, v24, v46
	v_div_fmas_f32 v17, v17, v60, v68
	v_div_fixup_f32 v2, v17, v25, v2
	v_div_fixup_f32 v17, v44, v23, v45
	v_div_fixup_f32 v25, v50, v12, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v13, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v13, v7, v24 :: v_dual_mul_f32 v8, v1, v2
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v70|, |v69|
	v_max3_f32 v2, |v55|, |v33|, |v51|
	v_max3_f32 v7, |v29|, |v27|, |v28|
	v_max3_f32 v24, |v26|, |v22|, |v16|
.Ltmp30:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v40, v17
	v_mul_f32_e32 v17, v6, v25
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, |v30|, |v31|, |v49|
	v_max3_f32 v1, v1, |v59|, v2
	v_max3_f32 v2, v7, v24, |v18|
	v_max_f32_e64 v25, |v20|, |v19|
	v_max3_f32 v32, |v14|, |v23|, |v15|
	v_max3_f32 v39, |v17|, |v13|, |v12|
	v_max3_f32 v40, |v8|, |v3|, |v4|
	v_max3_f32 v1, v1, v6, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v24, v25, |v21|, v32
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v32, 8, v0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v25, v39, v40, |v5|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v1, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max3_f32 v7, |v11|, |v10|, |v9|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v6
	v_max3_f32 v2, v24, v7, v25
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v24, 4, v38
	v_lshrrev_b32_e32 v25, 1, v43
	v_lshl_add_u32 v38, v38, 7, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v7, v2, s4, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v39, v43, 2, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v24, v24, v25
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v6, v39, v25
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v7 :: v_dual_lshlrev_b32 v25, 3, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v7, v38, v24, v32
	v_add3_u32 v6, 0, v32, v6
	v_lshrrev_b32_e32 v24, 2, v43
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v2
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v2, v2, v7
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v6, v1, v6 :: v_dual_lshlrev_b32 v1, 3, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v7, v2, v7
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, 0, v25, v24
	v_add_nc_u32_e32 v24, 0, v1
	ds_store_b64 v2, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v24
.Ltmp49:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v2, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v6
	v_fma_f32 v25, -v6, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v32, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v6, v32, v25
	v_fmac_f32_e32 v32, v38, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v32, v25
	v_div_fmas_f32 v6, v6, v24, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v6, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v2, v6, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v41, 0xffff0000, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v47, null, v41, v41, v55
	v_div_scale_f32 v44, null, v41, v41, v59
	v_div_scale_f32 v32, null, v41, v41, v70
	v_rcp_f32_e32 v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v50, s0, v69, v41, v69
	v_rcp_f32_e32 v40, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v56, -v47, v52, 1.0
	v_fma_f32 v54, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v52, v56, v52 :: v_dual_max_f32 v7, v7, v7
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 14 is_stmt 1               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v39, null, 0x40e00000, 0x40e00000, v7
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v39, v38, 1.0
	v_fmac_f32_e32 v38, v24, v38
	v_div_scale_f32 v24, vcc_lo, v7, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v2, v24, v38
	v_fma_f32 v25, -v39, v2, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v2, v25, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v25, null, v41, v41, v69
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v24, -v39, v2, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v39, v25
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v2, v24, v38, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v24, -v32, v40, 1.0
	v_div_scale_f32 v42, vcc_lo, v70, v41, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v38, v2, 0x40e00000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v2, -v25, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v24, v40
.Ltmp50:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v7, 4, v37
.Ltmp51:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v24, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v39, v2, v39
	v_mul_f32_e32 v45, v42, v40
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.h, 0
	v_mov_b16_e32 v2.l, v6.h
	v_add3_u32 v24, v38, v24, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v53, v50, v39
	v_fma_f32 v38, -v32, v45, v42
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v24.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v24, 0xffff0000, v24
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v38, v40
	v_fma_f32 v38, -v25, v53, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v45, v42
	v_fmac_f32_e32 v53, v38, v39
	v_div_scale_f32 v42, s2, v55, v41, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v40, v45
	v_fma_f32 v25, -v25, v53, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v50, v42, v52
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v39, v25, v39, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v47, v50, v42
	v_fmac_f32_e32 v50, v53, v52
	v_div_scale_f32 v54, s1, v59, v41, v59
	v_div_scale_f32 v56, null, v41, v41, v33
	v_div_scale_f32 v57, null, v41, v41, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v54, v46
	v_rcp_f32_e32 v45, v56
	v_div_fixup_f32 v25, v32, v41, v70
	v_div_fixup_f32 v32, v39, v41, v69
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v44, v38, v54
	v_div_scale_f32 v61, null, v41, v41, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v38, v40, v46
	v_rcp_f32_e32 v40, v57
	v_fma_f32 v58, -v56, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v44, v38, v54
	v_div_scale_f32 v44, s0, v33, v41, v33
	v_div_scale_f32 v54, null, v41, v41, v30
	v_div_fmas_f32 v38, v39, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v57, v40, 1.0
	v_fmac_f32_e32 v45, v58, v45
	v_fma_f32 v39, -v47, v50, v42
	v_div_scale_f32 v47, s1, v51, v41, v51
	v_fmac_f32_e32 v40, v53, v40
	v_div_scale_f32 v53, null, v41, v41, v31
	v_mul_f32_e32 v42, v44, v45
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v46, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v60, v53
	v_div_fmas_f32 v39, v39, v52, v50
	v_fma_f32 v50, -v56, v42, v44
	v_mul_f32_e32 v52, v47, v40
	v_div_fixup_f32 v38, v38, v41, v59
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v39, v39, v41, v55
	v_div_scale_f32 v55, s2, v30, v41, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v58, -v54, v46, 1.0
	v_fma_f32 v59, -v53, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v60, v59, v60
	v_div_scale_f32 v59, s3, v31, v41, v31
	v_fmac_f32_e32 v42, v50, v45
	v_fma_f32 v50, -v57, v52, v47
	v_fma_f32 v44, -v56, v42, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v52, v50, v40
	v_div_fmas_f32 v42, v44, v45, v42
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v44, -v57, v52, v47
	v_dual_mul_f32 v47, v59, v60 :: v_dual_fmac_f32 v46, v58, v46
	v_div_scale_f32 v58, null, v41, v41, v49
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v33, v42, v41, v33
	v_mul_f32_e32 v50, v55, v46
	v_rcp_f32_e32 v56, v58
	v_div_fmas_f32 v40, v44, v40, v52
	v_rcp_f32_e32 v44, v61
	v_div_scale_f32 v52, s0, v49, v41, v49
	v_fma_f32 v45, -v54, v50, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v40, v40, v41, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v58, v56, 1.0
	v_fma_f32 v51, -v61, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_fmac_f32_e32 v50, v45, v46
	v_fma_f32 v45, -v53, v47, v59
	v_fmac_f32_e32 v47, v45, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v52, v56
	v_fma_f32 v42, -v54, v50, v55
	v_div_scale_f32 v54, null, v41, v41, v27
	v_div_scale_f32 v55, null, v41, v41, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v46, v50
	v_fma_f32 v46, -v53, v47, v59
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v58, v45, v52
	v_div_scale_f32 v53, s1, v29, v41, v29
	v_div_fmas_f32 v46, v46, v60, v47
	v_rcp_f32_e32 v47, v55
	v_fmac_f32_e32 v44, v51, v44
	v_rcp_f32_e32 v51, v54
	v_fmac_f32_e32 v45, v50, v56
	v_div_fixup_f32 v30, v42, v41, v30
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v46, v41, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v58, v45, v52
	v_div_scale_f32 v52, s2, v27, v41, v27
	v_div_scale_f32 v58, null, v41, v41, v26
	v_fma_f32 v57, -v54, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v56, v45
	v_div_scale_f32 v56, s0, v28, v41, v28
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v51, v57, v51
	v_fma_f32 v57, -v55, v47, 1.0
	v_div_fixup_f32 v42, v42, v41, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v45, v52, v51
	v_fmac_f32_e32 v47, v57, v47
	v_mul_f32_e32 v50, v53, v44
	v_div_scale_f32 v57, null, v41, v41, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v59, v56, v47
	v_fma_f32 v46, -v61, v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v60, v57
	v_fmac_f32_e32 v50, v46, v44
	v_rcp_f32_e32 v46, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v49, -v61, v50, v53
	v_fma_f32 v53, -v54, v45, v52
	v_fma_f32 v61, -v58, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v53, v51
	v_div_fmas_f32 v44, v49, v44, v50
	v_fma_f32 v49, -v55, v59, v56
	v_div_scale_f32 v50, s1, v26, v41, v26
	v_fmac_f32_e32 v46, v61, v46
	v_fma_f32 v53, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v49, v47
	v_div_fixup_f32 v29, v44, v41, v29
	v_fma_f32 v44, -v54, v45, v52
	v_dual_mul_f32 v49, v50, v46 :: v_dual_fmac_f32 v60, v53, v60
	v_div_scale_f32 v53, null, v41, v41, v16
	v_div_scale_f32 v52, s3, v22, v41, v22
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v54, v53
	v_div_fmas_f32 v44, v44, v51, v45
	v_fma_f32 v45, -v55, v59, v56
	v_fma_f32 v51, -v58, v49, v50
	v_mul_f32_e32 v55, v52, v60
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v44, v41, v27
	v_div_fmas_f32 v45, v45, v47, v59
	v_fmac_f32_e32 v49, v51, v46
	v_fma_f32 v51, -v57, v55, v52
	v_fma_f32 v59, -v53, v54, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v45, v41, v28
	v_fma_f32 v44, -v58, v49, v50
	v_fmac_f32_e32 v55, v51, v60
	v_fmac_f32_e32 v54, v59, v54
	v_div_scale_f32 v45, s0, v16, v41, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v44, v44, v46, v49
	v_fma_f32 v46, -v57, v55, v52
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v49, v45, v54
	v_div_scale_f32 v56, null, v41, v41, v18
	v_div_fmas_f32 v46, v46, v60, v55
	v_div_scale_f32 v60, null, v24, v24, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v53, v49, v45
	v_rcp_f32_e32 v47, v56
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v62, v60
	v_div_scale_f32 v51, s1, v18, v41, v18
	v_fmac_f32_e32 v49, v55, v54
	v_div_scale_f32 v58, null, v24, v24, v19
	v_div_fixup_f32 v26, v44, v41, v26
	v_div_fixup_f32 v22, v46, v41, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v45, -v53, v49, v45
	v_fma_f32 v50, -v56, v47, 1.0
	v_div_scale_f32 v53, null, v24, v24, v21
	v_rcp_f32_e32 v46, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v45, v45, v54, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v54, s0, v19, v24, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v16, v45, v41, v16
	v_fma_f32 v45, -v60, v62, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v59, -v58, v46, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v62, v45, v62
	v_div_scale_f32 v45, s1, v14, v24, v14
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, null, v24, v24, v20
	v_fmac_f32_e32 v46, v59, v46
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v57, v51, v47
	v_rcp_f32_e32 v52, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v61, v54, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v56, v57, v51
	v_fmac_f32_e32 v57, v44, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v50, v52, 1.0
	v_div_scale_f32 v44, s2, v20, v24, v20
	v_fma_f32 v49, -v56, v57, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v52, v55, v52
	v_rcp_f32_e32 v55, v53
	v_div_fmas_f32 v47, v49, v47, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v44, v52
	v_fma_f32 v49, -v58, v61, v54
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v18, v47, v41, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v50, v51, v44
	v_fma_f32 v56, -v53, v55, 1.0
	v_div_scale_f32 v47, null, v24, v24, v23
	v_fmac_f32_e32 v61, v49, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v59, v52
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, s3, v21, v24, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v58, v61, v54
	v_fma_f32 v41, -v50, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v50, v45, v62 :: v_dual_mul_f32 v57, v56, v55
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v52, v51
	v_div_scale_f32 v51, null, v24, v24, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v53, v57, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v60, v50, v45
	v_div_fmas_f32 v46, v49, v46, v61
	v_div_fixup_f32 v20, v41, v24, v20
	v_fmac_f32_e32 v57, v44, v55
	v_rcp_f32_e32 v44, v47
	v_fmac_f32_e32 v50, v54, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v46, v24, v19
	v_fma_f32 v49, -v53, v57, v56
	v_rcp_f32_e32 v53, v51
	v_fma_f32 v45, -v60, v50, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v49, v49, v55, v57
	v_fma_f32 v52, -v47, v44, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v45, v45, v62, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v49, v24, v21
	v_fmac_f32_e32 v44, v52, v44
	v_div_scale_f32 v52, s0, v23, v24, v23
	v_fma_f32 v46, -v51, v53, 1.0
	v_div_scale_f32 v49, null, v24, v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v52, v44
	v_div_fixup_f32 v14, v45, v24, v14
	v_fmac_f32_e32 v53, v46, v53
	v_div_scale_f32 v46, s2, v15, v24, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v47, v41, v52
	v_rcp_f32_e32 v55, v49
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v50, v46, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v54, v44
	v_div_scale_f32 v54, null, v24, v24, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v45, -v47, v41, v52
	v_fma_f32 v47, -v51, v50, v46
	v_fma_f32 v52, -v49, v55, 1.0
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v45, v44, v41
	v_div_scale_f32 v44, null, v24, v24, v9
	v_dual_fmac_f32 v50, v47, v53 :: v_dual_fmac_f32 v55, v52, v55
	v_div_scale_f32 v52, null, v24, v24, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v47, v44
	v_div_scale_f32 v45, s0, v11, v24, v11
	v_div_fixup_f32 v23, v41, v24, v23
	v_fma_f32 v41, -v54, v56, 1.0
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v46, -v51, v50, v46
	v_mul_f32_e32 v51, v45, v55
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v56, v41, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v44, v47, 1.0
	v_div_scale_f32 v41, s1, v10, v24, v10
	v_div_fmas_f32 v46, v46, v53, v50
	v_fma_f32 v50, -v49, v51, v45
	v_fmac_f32_e32 v47, v57, v47
	v_div_scale_f32 v57, null, v24, v24, v13
	v_mul_f32_e32 v53, v41, v56
	v_div_scale_f32 v59, s2, v9, v24, v9
	v_fma_f32 v60, -v52, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v61, v57
	v_fmac_f32_e32 v51, v50, v55
	v_fma_f32 v50, -v54, v53, v41
	v_mul_f32_e32 v62, v59, v47
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s3, v17, v24, v17
	v_div_fixup_f32 v15, v46, v24, v15
	v_fma_f32 v45, -v49, v51, v45
	v_fmac_f32_e32 v53, v50, v56
	v_fma_f32 v46, -v44, v62, v59
	v_mul_f32_e32 v49, v60, v58
	v_fma_f32 v50, -v57, v61, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v54, v53, v41
	v_fmac_f32_e32 v62, v46, v47
	v_fma_f32 v46, -v52, v49, v60
	v_fmac_f32_e32 v61, v50, v61
	v_div_scale_f32 v50, s0, v13, v24, v13
	v_div_fmas_f32 v45, v45, v55, v51
	v_fma_f32 v44, -v44, v62, v59
	v_fmac_f32_e32 v49, v46, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v46, v50, v61
	v_div_scale_f32 v51, null, v24, v24, v12
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v11, v45, v24, v11
	v_div_fmas_f32 v41, v41, v56, v53
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v53, v51
	v_div_fmas_f32 v44, v44, v47, v62
	v_fma_f32 v47, -v52, v49, v60
	v_fma_f32 v52, -v57, v46, v50
	v_div_fixup_f32 v10, v41, v24, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v44, v24, v9
	v_div_fmas_f32 v47, v47, v58, v49
	v_fmac_f32_e32 v46, v52, v61
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v45, -v51, v53, 1.0
	v_div_scale_f32 v44, null, v24, v24, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v57, v46, v50
	v_div_fixup_f32 v17, v47, v24, v17
	v_fmac_f32_e32 v53, v45, v53
	v_div_scale_f32 v45, null, v24, v24, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v61, v46
	v_div_scale_f32 v49, vcc_lo, v12, v24, v12
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v47, null, v24, v24, v4
	v_mul_f32_e32 v54, v49, v53
	v_div_scale_f32 v55, null, v24, v24, v5
	v_rcp_f32_e32 v50, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v47
	v_fma_f32 v58, -v51, v54, v49
	v_div_fixup_f32 v13, v41, v24, v13
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v41, -v44, v46, 1.0
	v_rcp_f32_e32 v57, v55
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v54, v58, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v41, v46
	v_div_scale_f32 v41, s0, v8, v24, v8
	v_fma_f32 v56, -v45, v50, 1.0
	v_fma_f32 v49, -v51, v54, v49
	v_fma_f32 v59, -v47, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v60, v41, v46
	v_fma_f32 v61, -v55, v57, 1.0
	v_fmac_f32_e32 v50, v56, v50
	v_div_scale_f32 v56, s1, v3, v24, v3
	v_div_fmas_f32 v49, v49, v53, v54
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v52, v59, v52
	v_div_scale_f32 v59, s2, v4, v24, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v58, -v44, v60, v41
	v_fmac_f32_e32 v57, v61, v57
	v_div_scale_f32 v61, s3, v5, v24, v5
	v_mul_f32_e32 v62, v56, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v63, v59, v52 :: v_dual_fmac_f32 v60, v58, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v64, v61, v57
	v_fma_f32 v51, -v45, v62, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v58, -v47, v63, v59
	v_fma_f32 v41, -v44, v60, v41
	v_fma_f32 v44, -v55, v64, v61
	v_fmac_f32_e32 v62, v51, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v63, v58, v52
	v_div_fmas_f32 v41, v41, v46, v60
	v_fmac_f32_e32 v64, v44, v57
	v_fma_f32 v45, -v45, v62, v56
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v44, -v47, v63, v59
	v_div_fixup_f32 v12, v49, v24, v12
	v_fma_f32 v46, -v55, v64, v61
	v_div_fmas_f32 v45, v45, v50, v62
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v41, v24, v8
	v_div_fmas_f32 v44, v44, v52, v63
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v45, v24, v3
	v_div_fmas_f32 v46, v46, v57, v64
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v44, v24, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v46, v24, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v32
	v_rndne_f32_e32 v32, v38
	v_rndne_f32_e32 v38, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v42
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v56, v12
	v_and_b32_e32 v12, 15, v33
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v33, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v47, v14
	v_cvt_i32_f32_e32 v50, v15
	v_cvt_i32_f32_e32 v52, v10
	v_and_b32_e32 v10, 15, v32
	v_and_b32_e32 v14, 15, v30
	v_and_b32_e32 v15, 15, v31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v30, 4, v36
	v_and_b32_e32 v31, 0x60, v0
	v_lshlrev_b32_e32 v32, 10, v48
	v_and_b32_e32 v36, 0x400, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v41, v16
	v_cvt_i32_f32_e32 v51, v11
	v_and_b32_e32 v11, 15, v38
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v38, v30, v31
	v_add3_u32 v36, 0, v32, v36
	v_and_or_b32 v34, 0x1b00, v33, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v46, v21
	v_cvt_i32_f32_e32 v53, v9
	v_cvt_i32_f32_e32 v57, v8
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v25
	v_and_b32_e32 v16, 15, v40
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v41
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v40, v36, v35, v38
	v_xad_u32 v41, v34, v37, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v42, v18
	v_cvt_i32_f32_e32 v45, v19
	v_cvt_i32_f32_e32 v54, v17
	v_and_b32_e32 v17, 15, v29
	v_and_b32_e32 v18, 15, v27
	v_and_b32_e32 v19, 15, v28
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v40, v[8:11]
	ds_store_b128 v40, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v41
	ds_load_b128 v[16:19], v41 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v4, v4
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v3
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v4, v16, 4, v8
	v_lshl_or_b32 v3, v17, 4, v9
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v7, s0, v7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v19, 4, v11
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v3.h, 0xff, v4.l
	v_lshlrev_b16 v3.l, 8, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v44, v20
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v17, s2, v1, v7
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_or_b16 v8.l, v3.h, v3.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v55, v13
	v_and_b32_e32 v13, 15, v39
	v_and_b32_e32 v20, 15, v26
	v_and_b32_e32 v25, 15, v45
	v_and_b32_e32 v26, 15, v46
	v_and_b32_e32 v27, 15, v47
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v24, 15, v44
	v_cvt_i32_f32_e32 v49, v23
	v_and_b32_e32 v23, 15, v42
	v_and_b32_e32 v30, 15, v53
	v_and_b32_e32 v31, 15, v54
	v_and_b32_e32 v32, 15, v55
	v_and_b32_e32 v33, 15, v56
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
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v2, v6, vcc_lo
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v40, v[12:15]
	ds_store_b128 v40, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v41
	ds_load_b128 v[20:23], v41 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v5, v5
	v_and_b32_e32 v28, 15, v49
	v_and_b32_e32 v29, 15, v50
	v_and_b32_e32 v30, 15, v51
	v_and_b32_e32 v31, 15, v52
	v_and_b32_e32 v36, 15, v57
	v_and_b32_e32 v39, 15, v5
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
	v_lshl_or_b32 v5, v18, 4, v10
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v11, v22, 4, v14
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v22, s0, 4, v17
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v9.l
	v_lshlrev_b16 v5.l, 8, v10.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v12, v23, 4, v15
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v34, 4, v26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v5.h, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
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
.Ltmp52:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 247
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 247
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16696
; TotalNumSgprs: 45
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 247
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
