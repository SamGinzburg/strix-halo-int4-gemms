	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v9, 3, v0
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v2, 56, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v7, s27, v3
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
	s_min_i32 s17, s6, 4
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s17
	s_xor_b32 s5, s2, s17
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s18, 0, s6
	s_ashr_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 48, v8
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[5:6], null, s27, v4, v[1:2]
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s7, s7
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s7
	s_mul_hi_u32 s4, s7, s18
	s_abs_i32 s18, s2
	s_add_i32 s7, s7, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s18, s7
	s_mul_i32 s7, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s18, s7
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s7, s19, s7
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s18, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s27, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s7, s4, s5
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s7, s5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s4, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s18, s3
.Ltmp19:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s3, s2, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s30, v2
	v_or_b32_e32 v10, s30, v1
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s3, s16
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s27, 0xff
.Ltmp21:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s4, 7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s3, 5
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s4, s33, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0xff
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s27, v10
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s16, s26, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_lshl_b32 s17, s27, 6
	s_add_i32 s4, s4, s30
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, v7, v2, s16
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v7, s4, v5
	v_add3_u32 v5, s4, s17, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s6, 0x1ff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v11, 0x80000000, v7, s2
	v_cndmask_b32_e64 v12, 0x80000000, v5, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s17, s30, 0x100
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s30, v6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s17, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s17, v6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v7, 0x100, v7
	v_add_nc_u32_e32 v5, 0x100, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v13
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[17:20], v11, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v12, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[33:34], v10, s[8:11], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 4, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v14, s17, v1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v11, 48, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s27, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	s_cmpk_gt_i32 s6, 0x2ff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[35:36], v6, s[8:11], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v7, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v5, s[36:39], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v5, 0xe0, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v45, v8, v11
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v7, 1, v5
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v38, 0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v13, 16, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v7, v10, 1, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v10, 48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 2, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v44, v9, v10
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 4, v7
	v_or_b32_e32 v15, 6, v7
	v_or_b32_e32 v16, 8, v7
	v_or_b32_e32 v8, 10, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v37, 0, v44
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 12, v7
	v_or_b32_e32 v11, 14, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v37, v[33:34] offset:16384
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v38, v[17:20]
	ds_store_b128 v38, v[21:24] offset:4096
	v_and_b32_e32 v17, 48, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v37, v[35:36] offset:18432
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[25:28] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[29:32] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v36, v6, 6, v17
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshl_or_b32 v40, v5, 5, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v39, 32, v36
	v_xor_b32_e32 v38, 48, v36
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v42, 16, v40
	v_xor_b32_e32 v41, 32, v40
	v_xor_b32_e32 v43, 48, v40
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow29
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v18, s26, v6
	v_or_b32_e32 v13, s26, v13
	s_ashr_i32 s0, s18, 7
	v_or_b32_e32 v33, s33, v7
	v_or_b32_e32 v32, s33, v12
	v_mul_lo_u32 v34, v18, s0
	v_mul_lo_u32 v35, v13, s0
	v_or_b32_e32 v31, s33, v14
	v_or_b32_e32 v29, s33, v15
	v_or_b32_e32 v27, s33, v16
	v_or_b32_e32 v30, s33, v8
	v_or_b32_e32 v28, s33, v10
	v_or_b32_e32 v26, s33, v11
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_lshl_or_b32 v4, s7, 7, v4
	s_lshl_b32 s4, s5, 7
	v_lshl_or_b32 v36, v6, 6, v17
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v3, s26, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s4, v4
	s_mov_b32 s17, s16
	v_lshl_or_b32 v40, v5, 5, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s27, v3
	s_mov_b32 s18, s16
	v_or_b32_e32 v5, 64, v4
	v_mul_lo_u32 v4, s27, v4
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	v_mul_lo_u32 v5, s27, v5
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add3_u32 v48, v3, v2, 0x200
	v_add3_u32 v47, v4, v1, 0x200
	v_or_b32_e32 v49, 0x200, v1
	v_or_b32_e32 v50, 0x200, v2
	v_xor_b32_e32 v37, 16, v36
	v_add3_u32 v46, v5, v1, 0x200
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_xor_b32_e32 v39, 32, v36
	v_xor_b32_e32 v38, 48, v36
	v_xor_b32_e32 v42, 16, v40
	v_xor_b32_e32 v41, 32, v40
	v_xor_b32_e32 v43, 48, v40
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v25, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s6, 8
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s1, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s34, 0, 0x2000
	s_mov_b32 s31, 1
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
	v_add_nc_u32_e32 v51, s17, v50
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v53, s17, v48
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s30, s18
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v52, s17, v49
	v_cmp_gt_i32_e32 vcc_lo, s27, v51
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s18, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v54, v35, s18, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v51, 0x80000000, v53, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v53, v34, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v55, v32, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[119:120], v51, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v51, v33, s18, 1
	v_add_lshl_u32 v56, v31, s18, 1
	v_add_lshl_u32 v57, v29, s18, 1
	v_add_lshl_u32 v58, v27, s18, 1
	v_add_lshl_u32 v59, v30, s18, 1
	v_add_lshl_u32 v60, v28, s18, 1
	v_add_lshl_u32 v61, v26, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v121, v53, s[4:7], 0 offen
	buffer_load_u16 v122, v54, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v123, v51, s[40:43], 0 offen
	buffer_load_u16 v124, v55, s[40:43], 0 offen
	buffer_load_u16 v125, v56, s[40:43], 0 offen
	buffer_load_u16 v126, v57, s[40:43], 0 offen
	buffer_load_u16 v127, v58, s[40:43], 0 offen
	buffer_load_u16 v128, v59, s[40:43], 0 offen
	buffer_load_u16 v129, v60, s[40:43], 0 offen
	buffer_load_u16 v130, v61, s[40:43], 0 offen
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v51, s17, v47
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v52
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v53, s17, v46
	s_mov_b32 s18, s14
	s_mov_b32 s14, s1
	s_mov_b32 s1, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v52, 0x80000000, v53
	s_clause 0x1
	buffer_load_b128 v[67:70], v51, s[36:39], 0 offen
	buffer_load_b128 v[71:74], v52, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v51, s18, v36
	v_add_nc_u32_e32 v52, s18, v37
	v_add_nc_u32_e32 v53, s18, v39
	v_add_nc_u32_e32 v54, s18, v38
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v55, s1, v40
	v_add_nc_u32_e32 v56, s1, v42
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[59:62], v51
	ds_load_b128 v[75:78], v51 offset:1024
	ds_load_b128 v[79:82], v52
	ds_load_b128 v[83:86], v52 offset:1024
	ds_load_b128 v[87:90], v53
	ds_load_b128 v[91:94], v53 offset:1024
	ds_load_b128 v[95:98], v54
	ds_load_b128 v[99:102], v54 offset:1024
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[103:106], v55
	ds_load_b128 v[107:110], v56
	v_add_nc_u32_e32 v57, s1, v41
	v_add_nc_u32_e32 v58, s1, v43
	ds_load_b128 v[111:114], v57
	ds_load_b128 v[115:118], v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s31, 1
	s_mov_b32 s16, s34
	s_cmp_lt_i32 s1, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, s1, 0
	s_add_i32 s15, s15, -1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s18, s31, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s31, 11
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_add_i32 s34, s18, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s19, s1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_addk_i32 s30, 0x100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s19, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[103:106], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[103:106], v[75:78], v[1:8] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s15, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[79:82], v[51:58] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[107:110], v[83:86], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[111:114], v[87:90], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[111:114], v[91:94], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[95:98], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[115:118], v[99:102], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v75, 16, v121
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v76, 16, v122
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v78, 16, v124
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v80, 16, v126
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v81, 16, v127
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v83, 16, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v89, v75, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v14, v89, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v75, v83
	v_dual_mul_f32 v88, v75, v80 :: v_dual_lshlrev_b32 v77, 16, v123
	v_mul_f32_e32 v80, v76, v80
	v_mul_f32_e32 v86, v75, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v16, v91, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v85, v75, v77 :: v_dual_lshlrev_b32 v82, 16, v128
	v_mul_f32_e32 v77, v76, v77
	v_dual_mul_f32 v78, v76, v78 :: v_dual_lshlrev_b32 v79, 16, v125
	v_mul_f32_e32 v90, v75, v82
	v_mul_f32_e32 v82, v76, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v22, v80, v62
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v81, v76, v81 :: v_dual_lshlrev_b32 v84, 16, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v20, v78, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v87, v75, v79 :: v_dual_add_nc_u32 v132, s34, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v75, v75, v84
	v_dual_mul_f32 v79, v76, v79 :: v_dual_fmac_f32 v24, v82, v64
	v_mul_f32_e32 v83, v76, v83
	v_mul_f32_e32 v76, v76, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v12, v87, v53 :: v_dual_add_nc_u32 v131, s19, v44
	v_dual_fmac_f32 v10, v85, v51 :: v_dual_fmac_f32 v11, v86, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v18, v76, v66
	v_fmac_f32_e32 v13, v88, v54
	v_fmac_f32_e32 v15, v90, v56
	v_fmac_f32_e32 v17, v75, v58
	v_fmac_f32_e32 v19, v77, v59
	v_fmac_f32_e32 v21, v79, v61
	v_fmac_f32_e32 v23, v81, v63
	v_fmac_f32_e32 v25, v83, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v131, v[119:120] offset:16384
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[67:70]
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[71:74] offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_addk_i32 s17, 0x200
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
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
	v_add_nc_u32_e32 v2, s16, v43
	v_add_nc_u32_e32 v6, s16, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v52, s11 :: v_dual_add_nc_u32 v7, s16, v42
	v_mov_b32_e32 v51, s10
	v_mov_b32_e32 v49, s8
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[61:64], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v45, s4 :: v_dual_add_nc_u32 v6, s14, v36
	v_dual_mov_b32 v47, s6 :: v_dual_add_nc_u32 v8, s16, v40
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[65:68], v7
	ds_load_b128 v[69:72], v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s14, v37
	ds_load_b128 v[73:76], v6 offset:1024
	ds_load_b128 v[77:80], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v50, s9 :: v_dual_add_nc_u32 v7, s14, v39
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[85:88], v8 offset:1024
	ds_load_b128 v[89:92], v8
	v_add_nc_u32_e32 v6, s14, v38
	ds_load_b128 v[81:84], v7
	ds_load_b128 v[93:96], v7 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v48, s7
	v_mov_b32_e32 v46, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[97:100], v6
	ds_load_b128 v[101:104], v6 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[77:80], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[69:72], v[73:76], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[65:68], v[89:92], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[85:88], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[81:84], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[93:96], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[2:5], v[97:100], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[2:5], v[101:104], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v54
	v_cvt_f32_i32_e32 v3, v55
	v_cvt_f32_i32_e32 v4, v56
	v_cvt_f32_i32_e32 v5, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v8, v59
	v_cvt_f32_i32_e32 v44, v60
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v6, v53
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
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v53, v34, s4, 1
	v_add_lshl_u32 v54, v35, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v55, v33, s4, 1
	v_add_lshl_u32 v56, v32, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v53, v53, s[12:15], 0 offen
	buffer_load_u16 v69, v54, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v54, v31, s4, 1
	v_add_lshl_u32 v57, v29, s4, 1
	v_add_lshl_u32 v58, v27, s4, 1
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_add_lshl_u32 v59, v30, s4, 1
	v_add_lshl_u32 v60, v28, s4, 1
	v_add_lshl_u32 v61, v26, s4, 1
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	s_clause 0x7
	buffer_load_u16 v70, v55, s[28:31], 0 offen
	buffer_load_u16 v71, v56, s[28:31], 0 offen
	buffer_load_u16 v72, v54, s[28:31], 0 offen
	buffer_load_u16 v73, v57, s[28:31], 0 offen
	buffer_load_u16 v74, v58, s[28:31], 0 offen
	buffer_load_u16 v75, v59, s[28:31], 0 offen
	buffer_load_u16 v76, v60, s[28:31], 0 offen
	buffer_load_u16 v77, v61, s[28:31], 0 offen
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v68, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
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
	v_add_nc_u32_e32 v1, s34, v42
	v_add_nc_u32_e32 v40, s34, v40
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v42, s34, v43
	v_add_nc_u32_e32 v41, s34, v41
	ds_load_b128 v[62:65], v1
	ds_load_b128 v[78:81], v40
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s1, v39
	v_add_nc_u32_e32 v37, s1, v37
	ds_load_b128 v[82:85], v36 offset:1024
	ds_load_b128 v[86:89], v36
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[90:93], v42
	ds_load_b128 v[94:97], v41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[98:101], v1
	ds_load_b128 v[102:105], v37 offset:1024
	ds_load_b128 v[106:109], v37
	v_add_nc_u32_e32 v54, s1, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v38, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[110:113], v1 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v42, s10 :: v_dual_mov_b32 v41, s9
	v_dual_mov_b32 v40, s8 :: v_dual_mov_b32 v39, s7
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[114:117], v54
	ds_load_b128 v[118:121], v54 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[86:89], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[78:81], v[82:85], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[62:65], v[106:109], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[62:65], v[102:105], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[94:97], v[98:101], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[94:97], v[110:113], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[90:93], v[114:117], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[90:93], v[118:121], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v62, v37
	v_cvt_f32_i32_e32 v63, v38
	v_cvt_f32_i32_e32 v64, v39
	v_cvt_f32_i32_e32 v65, v40
	v_cvt_f32_i32_e32 v66, v41
	v_cvt_f32_i32_e32 v67, v42
	v_cvt_f32_i32_e32 v68, v43
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s17, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s17, s1
	v_mov_b16_e32 v36.l, 0
	s_ashr_i32 s1, s1, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v36.h, v69.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v34, v34, s1, 1
	v_add_lshl_u32 v35, v35, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v33, v33, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v32, v32, s1, 1
	v_add_lshl_u32 v31, v31, s1, 1
	v_add_lshl_u32 v29, v29, s1, 1
	v_add_lshl_u32 v27, v27, s1, 1
	v_add_lshl_u32 v30, v30, s1, 1
	v_add_lshl_u32 v28, v28, s1, 1
	v_add_lshl_u32 v26, v26, s1, 1
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x7
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v27, v27, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	buffer_load_u16 v26, v26, s[28:31], 0 offen
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v37.h, v77.l
	v_mov_b16_e32 v38.h, v76.l
	v_mov_b16_e32 v39.h, v75.l
	v_mov_b16_e32 v40.h, v74.l
	v_mov_b16_e32 v41.h, v73.l
	v_mov_b16_e32 v42.h, v72.l
	v_mov_b16_e32 v43.h, v71.l
	v_mov_b16_e32 v69.h, v70.l
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v71, v0, 7, 1
	v_lshrrev_b32_e32 v72, 7, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v37.l, v36.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v70, 0x7f, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v38.l, v36.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v73, 14, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v39.l, v36.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v74, 2, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v40.l, v36.l
	v_mov_b16_e32 v41.l, v36.l
	v_mov_b16_e32 v42.l, v36.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v75, 1, v0
	v_bfe_i32 v0, v0, 0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v43.l, v36.l
	v_mov_b16_e32 v69.l, v36.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v80, v36, v40 :: v_dual_and_b32 v9, 0x380, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v83, v36, v43 :: v_dual_and_b32 v0, 0x440, v0
	v_mul_f32_e32 v77, v36, v37
	v_mul_f32_e32 v78, v36, v38
	v_dual_mul_f32 v79, v36, v39 :: v_dual_and_b32 v74, 0x3f8, v74
	v_mul_f32_e32 v81, v36, v41
	v_dual_mul_f32 v82, v36, v42 :: v_dual_lshlrev_b32 v75, 6, v75
	v_mul_f32_e32 v84, v36, v69
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v36.h, v53.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v71, 0x440, v71
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v72, s35, v72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v76, 2, v73
	v_xor_b32_e32 v0, v0, v74
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v36, v38
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v53, v71, v75
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v41, v36, v41
	v_mul_f32_e32 v43, v36, v43
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s13, s26, s35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v36, v39
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s13, s13, s33
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v73, 10, v0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v70, s13, v70, v72
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v36, v37
	v_mul_f32_e32 v40, v36, v40
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v9, v9, v76, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v36, v42
	v_mul_f32_e32 v36, v36, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v38, v8, v16
	v_fma_f32 v4, v41, v4, v13
	v_fma_f32 v2, v43, v2, v11
	v_fma_f32 v45, v84, v45, v19
	v_fma_f32 v52, v77, v52, v18
	v_fma_f32 v51, v78, v51, v25
	v_fma_f32 v50, v79, v50, v24
	v_fma_f32 v49, v80, v49, v23
	v_fma_f32 v48, v81, v48, v22
	v_fma_f32 v47, v82, v47, v21
	v_fma_f32 v46, v83, v46, v20
	v_fma_f32 v7, v39, v7, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v8, s3
	v_cndmask_b32_e64 v8, v13, v4, s3
	v_cndmask_b32_e64 v2, v11, v2, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v53, 2, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v45, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v40, v5, v14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v45, 0, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v42, v3, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v52, s3
	v_cndmask_b32_e64 v25, v25, v51, s3
	v_cndmask_b32_e64 v24, v24, v50, s3
	v_cndmask_b32_e64 v23, v23, v49, s3
	v_cndmask_b32_e64 v22, v22, v48, s3
	v_cndmask_b32_e64 v21, v21, v47, s3
	v_cndmask_b32_e64 v20, v20, v46, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v46, 0x808, v9, 0
	v_xad_u32 v47, 0x1010, v9, 0
	v_xad_u32 v48, 0x1818, v9, 0
	v_xad_u32 v49, 0x2020, v9, 0
	v_xad_u32 v50, 0x2828, v9, 0
	v_xad_u32 v51, 0x3030, v9, 0
	v_xad_u32 v52, 0x3838, v9, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v15, v7, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v38, v0, 8, 0
	v_xad_u32 v39, v0, 16, 0
	v_xad_u32 v40, v0, 24, 0
	v_xad_u32 v41, v0, 32, 0
	v_xad_u32 v42, v0, 40, 0
	v_xad_u32 v43, v0, 48, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v14, v5, s3
	v_cndmask_b32_e64 v3, v12, v3, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s26, s14
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s14, s35, 1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s27, s15
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s15, s35, 2
	s_mul_i32 s12, s35, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v69, v70, s14, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s16, s35, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v71, v70, s15, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s35, 10
	s_mul_i32 s10, s35, 12
	s_mul_i32 s9, s35, 14
	s_mul_i32 s8, s35, 18
	s_mul_i32 s7, s35, 20
	s_lshl_b32 s17, s35, 4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s6, s35, 22
	s_mul_i32 s5, s35, 24
	s_mul_i32 s4, s35, 26
	s_mul_i32 s1, s35, 28
	s_mul_i32 s0, s35, 30
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v4, 16, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v36, v6, v10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v36, 0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v44, v17
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v44, v0, 56, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v10, v6, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v10, 16, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v17, v37, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v28, v4, v11 :: v_dual_lshlrev_b32 v15, 16, v30
	v_mul_f32_e32 v30, v4, v13
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v6, 16, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v14, 16, v27
	v_lshlrev_b32_e32 v12, 16, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v4, v15
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v33, v4, v17 :: v_dual_lshlrev_b32 v26, 16, v26
	v_mul_f32_e32 v27, v4, v10
	v_mul_f32_e32 v31, v4, v14
	v_dual_mul_f32 v29, v4, v12 :: v_dual_mul_f32 v10, v6, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v4, v4, v26 :: v_dual_mul_f32 v11, v6, v11
	v_mul_f32_e32 v12, v6, v12
	v_mul_f32_e32 v13, v6, v13
	v_mul_f32_e32 v14, v6, v14
	v_mul_f32_e32 v15, v6, v15
	v_mul_f32_e32 v17, v6, v17
	v_mul_f32_e32 v6, v6, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v27, v1, v0
	v_fma_f32 v27, v29, v55, v3
	v_fma_f32 v29, v31, v57, v5
	v_fma_f32 v31, v33, v59, v16
	v_fma_f32 v33, v10, v61, v19
	v_fma_f32 v26, v28, v54, v2
	v_fma_f32 v11, v11, v62, v20
	v_fma_f32 v28, v30, v56, v8
	v_fma_f32 v34, v12, v63, v21
	v_fma_f32 v30, v32, v58, v7
	v_fma_f32 v13, v13, v64, v22
	v_fma_f32 v32, v4, v60, v9
	v_fma_f32 v35, v14, v65, v23
	v_fma_f32 v15, v15, v66, v24
	v_fma_f32 v17, v17, v67, v25
	v_fma_f32 v37, v6, v68, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s2
	v_cndmask_b32_e64 v1, v19, v33, s2
	v_cndmask_b32_e64 v2, v2, v26, s2
	v_cndmask_b32_e64 v4, v3, v27, s2
	v_cndmask_b32_e64 v3, v20, v11, s2
	v_cndmask_b32_e64 v6, v8, v28, s2
	v_cndmask_b32_e64 v8, v5, v29, s2
	v_cndmask_b32_e64 v5, v21, v34, s2
	v_cndmask_b32_e64 v10, v7, v30, s2
	v_cndmask_b32_e64 v7, v22, v13, s2
	v_cndmask_b32_e64 v12, v16, v31, s2
	v_cndmask_b32_e64 v14, v9, v32, s2
	v_cndmask_b32_e64 v9, v23, v35, s2
	v_cndmask_b32_e64 v11, v24, v15, s2
	v_cndmask_b32_e64 v13, v25, v17, s2
	v_cndmask_b32_e64 v15, v18, v37, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b64 v36, v[0:1]
	ds_store_b64 v38, v[2:3]
	ds_store_b64 v39, v[4:5]
	ds_store_b64 v40, v[6:7]
	ds_store_b64 v41, v[8:9]
	ds_store_b64 v42, v[10:11]
	ds_store_b64 v43, v[12:13]
	ds_store_b64 v44, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v45
	ds_load_b64 v[2:3], v46
	ds_load_b64 v[4:5], v47
	ds_load_b64 v[6:7], v48
	ds_load_b64 v[8:9], v49
	ds_load_b64 v[10:11], v50
	ds_load_b64 v[12:13], v51
	ds_load_b64 v[14:15], v52
	v_add_lshl_u32 v16, v70, s12, 2
	v_add_lshl_u32 v17, v70, s16, 2
	v_add_lshl_u32 v18, v70, s11, 2
	v_add_lshl_u32 v19, v70, s10, 2
	v_add_lshl_u32 v20, v70, s9, 2
	v_add_lshl_u32 v21, v70, s17, 2
	v_add_lshl_u32 v22, v70, s8, 2
	v_add_lshl_u32 v23, v70, s7, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v53, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v69, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v71, s[24:27], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v16, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v19, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v20, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v21, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v22, s[24:27], 0 offen
	buffer_atomic_add_f32 v5, v23, s[24:27], 0 offen
	v_add_lshl_u32 v24, v70, s6, 2
	v_add_lshl_u32 v25, v70, s5, 2
	v_add_lshl_u32 v26, v70, s4, 2
	v_add_lshl_u32 v27, v70, s1, 2
	v_add_lshl_u32 v0, v70, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v24, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v25, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v26, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v27, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 133
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5548
; TotalNumSgprs: 46
; NumVgprs: 133
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     133
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
