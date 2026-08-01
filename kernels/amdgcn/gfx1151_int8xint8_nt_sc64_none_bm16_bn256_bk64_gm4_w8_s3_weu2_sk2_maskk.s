	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v7, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v2, 2, v7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v5, 0xc0, v4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mul_lo_u32 v11, s27, v5
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_lshl_b32 s16, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s16
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s6
	s_sub_i32 s18, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v6, s17
	v_readfirstlane_b32 s17, v6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v6, s27, v3
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s39, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s19, s4, s6
	s_ashr_i32 s18, s17, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s17, s4, 1
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s17, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s19, s27, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s4, s18
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s6, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s4, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s19, s19, s3
.Ltmp19:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s3, s2, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s30, v2
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s3, s16
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s27, 0x7f
.Ltmp21:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s3, 4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s7, s4, 8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s16, s26, s27
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, v6, v2, s16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s4, s7, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s4, s4, s30
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v15, s30, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_mov_b32 s16, 0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 48, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[8:9], null, s27, v4, v[1:2]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v14, s30, v1
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add3_u32 v11, v11, v1, s4
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s27, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v9, s27, 6, v8
	v_lshl_add_u32 v12, s27, 7, v8
	v_add_nc_u32_e32 v8, s4, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v13, s4, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v14, s4, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v16, 0x80000000, v8, s2
	v_cndmask_b32_e64 v28, 0x80000000, v11, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s30, 0x80
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_addk_i32 s4, 0x80
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v24, s17, v2
	v_or_b32_e32 v25, s17, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s17, v6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v9, s4, v9
	v_add_nc_u32_e32 v12, s4, v12
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v24
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s27, v25
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v8, 0x80, v8
	v_add_nc_u32_e32 v11, 0x80, v11
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v16, s[36:39], 0 offen
	buffer_load_b128 v[20:23], v13, s[36:39], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[24:27], v14, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v28, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v48, v15, s[8:11], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v13, 2, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v6, v6, s[8:11], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[32:35], v8, s[36:39], 0 offen
	buffer_load_b128 v[36:39], v9, s[36:39], 0 offen
	buffer_load_b128 v[40:43], v12, s[36:39], 0 offen
	buffer_load_b128 v[44:47], v11, s[36:39], 0 offen
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v9, 1, v0
	v_lshlrev_b32_e32 v15, 3, v0
	v_lshlrev_b32_e32 v14, 6, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v11, 48, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v9, 48, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v12, v10, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v13, v13, v9
	v_lshlrev_b32_e32 v11, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v9, 0, v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v10, 0, v13
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v9, v[20:23] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v9, v[24:27] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v9, v[28:31] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v10, v48 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v9, v[16:19]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v10, v6 offset:33792
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[32:35] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[36:39] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[40:43] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[44:47] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v9, 48, v15
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v10, 0x1c00, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v36, v14, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_or3_b32 v40, v9, v10, v14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v39, 16, v36
	v_xor_b32_e32 v38, 32, v36
	v_xor_b32_e32 v37, 48, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v41, 16, v40
	v_xor_b32_e32 v42, 32, v40
	v_xor_b32_e32 v43, 48, v40
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow49
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v7, s26, v7
	v_and_b32_e32 v16, 0xf0, v0
	s_ashr_i32 s0, s19, 6
	v_or_b32_e32 v17, s7, v0
	v_and_b32_e32 v10, 28, v8
	v_mul_lo_u32 v35, v7, s0
	v_lshlrev_b32_e32 v9, 2, v16
	v_lshlrev_b32_e32 v18, 1, v16
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s14, s6, 8
	s_lshl_b32 s15, s18, 8
	v_or_b32_e32 v4, s14, v4
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v6, 48, v15
	v_or_b32_e32 v5, s14, v5
	s_mov_b32 s17, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s15, v4
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v7, 0x1c00, v11
	v_subrev_nc_u32_e32 v5, s15, v5
	v_or_b32_e32 v8, 64, v4
	v_add_nc_u32_e32 v3, s26, v3
	v_or_b32_e32 v36, v14, v6
	v_or3_b32 v40, v6, v7, v14
	v_or_b32_e32 v7, 0x80, v4
	v_and_b32_e32 v6, 32, v11
	v_mul_lo_u32 v5, s27, v5
	v_mul_lo_u32 v8, s27, v8
	v_mul_lo_u32 v4, s27, v4
	v_mul_lo_u32 v7, s27, v7
	v_mul_lo_u32 v3, s27, v3
	v_add3_u32 v20, 0, v9, v6
	v_or_b32_e32 v46, 0x100, v1
	v_or_b32_e32 v47, 0x100, v2
	v_add3_u32 v14, v5, v1, 0x100
	v_add3_u32 v16, v8, v1, 0x100
	v_add3_u32 v44, v4, v1, 0x100
	v_add3_u32 v15, v7, v1, 0x100
	v_add3_u32 v45, v3, v2, 0x100
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_xor_b32_e32 v39, 16, v36
	v_xor_b32_e32 v38, 32, v36
	v_xor_b32_e32 v37, 48, v36
	v_xor_b32_e32 v41, 16, v40
	v_xor_b32_e32 v42, 32, v40
	v_xor_b32_e32 v43, 48, v40
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v7, s22
	v_add_nc_u32_e32 v48, v20, v10
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v49, 0, v18
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v27, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s5, 7
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s31, 1
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s1, -2
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s33, 0, 0x4000
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s30
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s30, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v50, s17, v47
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v52, s17, v45
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 26
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v53, s17, v44
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s30, s18
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v50
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s18, 6
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v51, s17, v46
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v55, s17, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v50, 0x80000000, v52, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v52, v35, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v54, s17, v16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v126, v50, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v50, v17, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s18, s14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v51
	s_mov_b32 s14, s1
	s_mov_b32 s1, s16
	s_mov_b32 s16, s33
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v56, s1, v42
	v_cndmask_b32_e32 v51, 0x80000000, v53, vcc_lo
	v_cndmask_b32_e32 v53, 0x80000000, v55, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v127, v50, s[40:43], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v128, v52, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v50, s17, v14
	v_cndmask_b32_e32 v52, 0x80000000, v54, vcc_lo
	v_add_nc_u32_e32 v54, s1, v40
	v_add_nc_u32_e32 v55, s1, v41
	v_add_nc_u32_e32 v57, s1, v43
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[66:69], v51, s[36:39], 0 offen
	buffer_load_b128 v[70:73], v52, s[36:39], 0 offen
	buffer_load_b128 v[74:77], v53, s[36:39], 0 offen
	buffer_load_b128 v[78:81], v50, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v50, s18, v36
	v_add_nc_u32_e32 v51, s18, v39
	v_add_nc_u32_e32 v52, s18, v38
	v_add_nc_u32_e32 v53, s18, v37
	ds_load_b128 v[82:85], v50
	ds_load_b128 v[86:89], v51
	ds_load_b128 v[90:93], v52
	ds_load_b128 v[94:97], v53
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[58:61], v54
	ds_load_b128 v[98:101], v54 offset:8192
	ds_load_b128 v[102:105], v55
	ds_load_b128 v[106:109], v55 offset:8192
	ds_load_b128 v[110:113], v56
	ds_load_b128 v[114:117], v56 offset:8192
	ds_load_b128 v[118:121], v57
	ds_load_b128 v[122:125], v57 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s31, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s31, s1, 0
	s_add_i32 s15, s15, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s31, 10
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s18, s31, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s19, s1, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_add_i32 s33, s18, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_addk_i32 s30, 0x80
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s19, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[82:85], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[98:101], v[82:85], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[102:105], v[86:89], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[106:109], v[86:89], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[110:113], v[90:93], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[114:117], v[90:93], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[118:121], v[94:97], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[122:125], v[94:97], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v82, v50
	v_cvt_f32_i32_e32 v83, v51
	v_cvt_f32_i32_e32 v84, v52
	v_cvt_f32_i32_e32 v85, v53
	v_cvt_f32_i32_e32 v86, v54
	v_cvt_f32_i32_e32 v87, v55
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v97, v65
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v98, 16, v128
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v50, 16, v127
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v48, v50 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v49 offset:34816
	ds_load_b128 v[54:57], v49 offset:34832
	ds_load_b128 v[58:61], v49 offset:35328
	ds_load_b128 v[62:65], v49 offset:35344
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v50, v50, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v19, v50, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v62, v62, v98 :: v_dual_add_nc_u32 v129, s19, v13
	v_dual_mul_f32 v61, v61, v98 :: v_dual_add_nc_u32 v130, s33, v12
	v_mul_f32_e32 v51, v51, v98
	v_mul_f32_e32 v52, v52, v98
	v_mul_f32_e32 v53, v53, v98
	v_mul_f32_e32 v54, v54, v98
	v_mul_f32_e32 v55, v55, v98
	v_mul_f32_e32 v56, v56, v98
	v_mul_f32_e32 v57, v57, v98
	v_mul_f32_e32 v58, v58, v98
	v_mul_f32_e32 v59, v59, v98
	v_mul_f32_e32 v60, v60, v98
	v_mul_f32_e32 v63, v63, v98
	v_mul_f32_e32 v64, v64, v98
	v_dual_mul_f32 v65, v65, v98 :: v_dual_fmac_f32 v20, v51, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v21, v52, v84 :: v_dual_fmac_f32 v22, v53, v85
	v_dual_fmac_f32 v23, v54, v86 :: v_dual_fmac_f32 v24, v55, v87
	v_dual_fmac_f32 v25, v56, v88 :: v_dual_fmac_f32 v26, v57, v89
	v_dual_fmac_f32 v28, v58, v90 :: v_dual_fmac_f32 v29, v59, v91
	v_dual_fmac_f32 v30, v60, v92 :: v_dual_fmac_f32 v31, v61, v93
	v_dual_fmac_f32 v32, v62, v94 :: v_dual_fmac_f32 v33, v63, v95
	v_dual_fmac_f32 v34, v64, v96 :: v_dual_fmac_f32 v27, v65, v97
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v129, v126 offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v130, v[66:69]
	s_waitcnt vmcnt(2)
	ds_store_b128 v130, v[70:73] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[74:77] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[78:81] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v6, v11
	s_addk_i32 s17, 0x100
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s33, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v61, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
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
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v5, s16, v42
	v_add_nc_u32_e32 v15, s16, v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v61, s11 :: v_dual_add_nc_u32 v8, s16, v41
	v_mov_b32_e32 v60, s10
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[1:4], v5 offset:8192
	ds_load_b128 v[11:14], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v54, s4 :: v_dual_add_nc_u32 v5, s14, v39
	v_dual_mov_b32 v59, s9 :: v_dual_add_nc_u32 v16, s14, v36
	v_mov_b32_e32 v56, s6
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[45:48], v15 offset:8192
	ds_load_b128 v[49:52], v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[70:73], v5
	ds_load_b128 v[74:77], v16
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[78:81], v8 offset:8192
	ds_load_b128 v[82:85], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v15, s14, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v58, s8 :: v_dual_add_nc_u32 v7, s16, v43
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v5, s14, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v57, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[86:89], v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v55, s5
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[94:97], v7
	ds_load_b128 v[98:101], v7 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[90:93], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[49:52], v[74:77], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[45:48], v[74:77], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[82:85], v[70:73], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[70:73], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[11:14], v[86:89], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[1:4], v[86:89], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[90:93], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[98:101], v[90:93], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v45, v63
	v_cvt_f32_i32_e32 v46, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v47, v65
	v_cvt_f32_i32_e32 v48, v66
	v_cvt_f32_i32_e32 v50, v67
	v_cvt_f32_i32_e32 v51, v68
	v_cvt_f32_i32_e32 v53, v69
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v49, v62
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v35, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v17, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v62, 0, v18
	v_mov_b32_e32 v64, 0
	buffer_load_u16 v79, v1, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v1, 32, v6
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v78, v9, v1, v10
	v_mov_b32_e32 v63, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v52, 0, v78
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v52, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v62 offset:34816
	ds_load_b128 v[5:8], v62 offset:34832
	ds_load_b128 v[9:12], v62 offset:35328
	ds_load_b128 v[13:16], v62 offset:35344
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v40, s33, v40
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v39, s1, v39
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[71:74], v40 offset:8192
	ds_load_b128 v[80:83], v40
	v_add_nc_u32_e32 v42, s33, v42
	v_add_nc_u32_e32 v41, s33, v41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[84:87], v39
	ds_load_b128 v[88:91], v36
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[92:95], v42 offset:8192
	ds_load_b128 v[96:99], v42
	ds_load_b128 v[100:103], v41 offset:8192
	ds_load_b128 v[104:107], v41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, s1, v38
	v_add_nc_u32_e32 v36, s1, v37
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v44, s33, v43
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[108:111], v38
	ds_load_b128 v[112:115], v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v42, s10
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v38, s6
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[116:119], v44
	ds_load_b128 v[120:123], v44 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[80:83], v[88:91], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[71:74], v[88:91], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[104:107], v[84:87], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[100:103], v[84:87], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[96:99], v[108:111], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[92:95], v[108:111], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[116:119], v[112:115], v[63:70] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[120:123], v[112:115], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v64, v65
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v67, v68
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v69, v70
	v_cvt_f32_i32_e32 v70, v36
	v_cvt_f32_i32_e32 v71, v37
	v_cvt_f32_i32_e32 v72, v38
	v_cvt_f32_i32_e32 v73, v39
	v_cvt_f32_i32_e32 v74, v40
	v_cvt_f32_i32_e32 v75, v41
	v_cvt_f32_i32_e32 v76, v42
	v_cvt_f32_i32_e32 v77, v43
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s17, s1
	v_mov_b16_e32 v39.l, 0
	s_ashr_i32 s1, s1, 6
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v39.h, v79.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v35, v35, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v36, v17, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v40, 0x808, v78, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v41, 0xc0c, v78, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v42, 0x1010, v78, 0
	v_xad_u32 v43, 0x1414, v78, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v37, v36, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v38, v35, s[12:15], 0 offen
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[35:36], null, s26, s35, v[17:18]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v16, v16, v39 :: v_dual_and_b32 v17, 7, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v13, v13, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v18, v17, 2, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v11, v11, v39 :: v_dual_and_b32 v0, 0x2040, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v61, v27
	v_fma_f32 v15, v15, v60, v34
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v18, v18, v0
	v_xad_u32 v36, 0x404, v78, 0
	v_xad_u32 v79, 0x1818, v78, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v27, v16, s3
	v_cndmask_b32_e64 v27, v34, v15, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v17, v17, 10, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v39
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v80, 0x1c1c, v78, 0
	v_xad_u32 v81, 0x2040, v78, 0
	v_xad_u32 v82, 0x2444, v78, 0
	v_xad_u32 v34, v17, 4, 0
	v_xad_u32 v83, 0x2848, v78, 0
	v_xad_u32 v84, 0x2c4c, v78, 0
	v_xad_u32 v85, 0x3050, v78, 0
	v_xad_u32 v86, 0x3454, v78, 0
	v_xad_u32 v87, 0x3858, v78, 0
	v_xad_u32 v78, 0x3c5c, v78, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s35, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v88, v35, s35, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	v_add_lshl_u32 v89, v35, s1, 2
	s_and_b32 s25, s25, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s35, 11
	s_mul_i32 s10, s35, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v90, v35, s4, 2
	v_add_lshl_u32 v91, v35, s5, 2
	v_add_lshl_u32 v92, v35, s6, 2
	v_add_lshl_u32 v93, v35, s7, 2
	v_add_lshl_u32 v94, v35, s8, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s35, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v95, v35, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s12, s35, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v96, v35, s10, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s35, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v97, v35, s11, 2
	v_add_lshl_u32 v98, v35, s12, 2
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v37
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v39
	v_mul_f32_e32 v3, v3, v39
	v_mul_f32_e32 v2, v2, v39
	v_mul_f32_e32 v1, v1, v39
	v_mul_f32_e32 v6, v6, v39
	v_mul_f32_e32 v5, v5, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v47, v22
	v_fma_f32 v46, v3, v46, v21
	v_fma_f32 v45, v2, v45, v20
	v_fma_f32 v47, v1, v49, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v52, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v62 offset:34816
	v_mul_f32_e32 v7, v7, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v50, v24
	v_fma_f32 v5, v5, v48, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v4, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v56, v30
	v_fma_f32 v7, v7, v51, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v6, s3
	v_cndmask_b32_e64 v23, v23, v5, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v58, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v21, v46, s3
	v_cndmask_b32_e64 v25, v25, v7, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v62 offset:34832
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v9, v9, v39
	v_mul_f32_e32 v8, v8, v39
	v_dual_mul_f32 v12, v12, v39 :: v_dual_add_nc_u32 v21, 0, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v59, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v11, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v54, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v55, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v57, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v9, s3
	v_cndmask_b32_e64 v33, v33, v14, s3
	v_cndmask_b32_e64 v29, v29, v10, s3
	v_cndmask_b32_e64 v32, v32, v13, s3
	v_cndmask_b32_e64 v31, v31, v12, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v62 offset:35344
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v5, v5, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v53, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v47, s3
	v_cndmask_b32_e64 v20, v20, v45, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v38
	v_mul_f32_e32 v4, v4, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v8, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v62 offset:35328
	v_dual_mul_f32 v6, v6, v38 :: v_dual_lshlrev_b32 v39, 2, v35
	v_mul_f32_e32 v7, v7, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v44, v19
	v_fma_f32 v1, v1, v63, v20
	v_fma_f32 v2, v2, v64, v18
	v_fma_f32 v3, v3, v65, v22
	v_fma_f32 v4, v4, v66, v23
	v_fma_f32 v5, v5, v67, v24
	v_fma_f32 v6, v6, v68, v25
	v_fma_f32 v7, v7, v69, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v12, v12, v38
	v_mul_f32_e32 v13, v13, v38
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v15, v15, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v19, v0, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v74, v32
	v_fma_f32 v13, v13, v75, v33
	v_fma_f32 v14, v14, v76, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v9, v9, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v11, v11, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v77, v16
	v_fma_f32 v8, v8, v70, v28
	v_fma_f32 v9, v9, v71, v29
	v_fma_f32 v10, v10, v72, v30
	v_fma_f32 v11, v11, v73, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v20, v1, s2
	v_cndmask_b32_e64 v8, v28, v8, s2
	v_cndmask_b32_e64 v9, v29, v9, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v37, v17, 8, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v18, v2, s2
	v_cndmask_b32_e64 v10, v30, v10, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v45, v17, 12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v22, v3, s2
	v_cndmask_b32_e64 v11, v31, v11, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v46, v17, 16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v23, v4, s2
	v_cndmask_b32_e64 v5, v24, v5, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v12, v32, v12, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v47, v17, 20, 0
	v_xad_u32 v48, v17, 24, 0
	v_xad_u32 v17, v17, 28, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v33, v13, s2
	v_cndmask_b32_e64 v14, v27, v14, s2
	v_cndmask_b32_e64 v15, v16, v15, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v21, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v34, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v37, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v45, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v46, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v47, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v48, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v17, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v52
	ds_load_b32 v1, v36
	ds_load_b32 v2, v40
	ds_load_b32 v3, v41
	ds_load_b32 v4, v42
	ds_load_b32 v5, v43
	ds_load_b32 v6, v79
	ds_load_b32 v7, v80
	ds_load_b32 v8, v81
	ds_load_b32 v9, v82
	ds_load_b32 v10, v83
	ds_load_b32 v11, v84
	ds_load_b32 v12, v85
	ds_load_b32 v13, v86
	ds_load_b32 v14, v87
	ds_load_b32 v15, v78
	v_lshl_add_u32 v16, s35, 3, v39
	v_lshl_add_u32 v17, s35, 4, v39
	v_lshl_add_u32 v18, s35, 5, v39
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v39, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v88, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v16, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v89, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v90, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v91, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v92, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v93, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v94, s[24:27], 0 offen
	v_add_lshl_u32 v0, v35, s0, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v11, v95, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v12, v96, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v97, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v14, v98, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5360
; TotalNumSgprs: 46
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
