	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v11, 4, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 2, v0
	s_mov_b32 s18, 0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v2, 2, v3
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v8, s19, v4
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_sub_i32 s4, s7, s14
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s15, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s16, s15
	s_xor_b32 s12, s2, s15
	s_cvt_f32_u32 s17, s16
	s_ashr_i32 s26, s12, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 48, v11
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s16
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[6:7], null, s19, v5, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s6, s6, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s17, s6
	s_add_i32 s17, s17, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s17
	s_mul_i32 s13, s6, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s12, s7, s13
	s_add_i32 s13, s6, 1
	s_sub_i32 s17, s12, s16
	s_cmp_ge_u32 s12, s16
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s13, s13, s6
	s_cselect_b32 s6, s17, s12
	s_add_i32 s12, s13, 1
	s_cmp_ge_u32 s6, s16
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s28, s19, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s25, s12, s26
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s27, s19, 0x7f
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s12, s25, s26
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s22, s6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s12, s15
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s15, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s12, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s14
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s23, s7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s14, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s28, 31
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s14, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v7, v8, v2, s3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s28, s28, s2
.Ltmp21:
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s2, s33, s19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s27, 0x7f
	s_mov_b64 s[16:17], s[10:11]
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s2, s2, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_lshl_b32 s12, s19, 6
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s15, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s27, 0xff
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v9, s2, v6
	v_add3_u32 v6, s2, s12, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s24, s15, 0x80
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s24, v7
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v10, 0x80000000, v9, s3
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v9, 0x80, v9
	v_add_nc_u32_e32 v12, 0x80, v6
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	buffer_load_b32 v34, v8, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v8, 0x80000000, v9, s2
	v_cndmask_b32_e64 v9, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[18:21], v10, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v6, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v35, v7, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[26:29], v8, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v9, s[20:23], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v6, 0xe0, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v7, 1, v0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s27, 0x17f
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v8, 1, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v12, 48, v7
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v13, 48, v10
	v_lshlrev_b32_e32 v7, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v8, v4, 1, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v36, v9, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v37, v11, v13
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 2, v8
	v_or_b32_e32 v15, 4, v8
	v_or_b32_e32 v16, 6, v8
	v_or_b32_e32 v17, 8, v8
	v_or_b32_e32 v11, 10, v8
	v_or_b32_e32 v12, 12, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, 0, v36
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 14, v8
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v39, 0, v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v38, v34 offset:16384
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v39, v[18:21]
	s_waitcnt vmcnt(3)
	ds_store_b128 v39, v[22:25] offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v38, v35 offset:17408
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v39, v[26:29] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[30:33] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v18, 48, v7
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v3, 6, v18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshl_or_b32 v33, v6, 5, v28
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v31, 16, v28
	v_xor_b32_e32 v29, 32, v28
	v_xor_b32_e32 v30, 48, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v35, 16, v33
	v_xor_b32_e32 v32, 32, v33
	v_xor_b32_e32 v34, 48, v33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
.LBB0_3:                                ; %Flow21
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v18, s14, v3
	s_ashr_i32 s0, s28, 8
	v_or_b32_e32 v26, s33, v8
	v_or_b32_e32 v25, s33, v14
	v_or_b32_e32 v24, s33, v15
	v_mul_lo_u32 v27, v18, s0
	v_or_b32_e32 v22, s33, v16
	v_or_b32_e32 v20, s33, v17
	v_or_b32_e32 v23, s33, v11
	v_or_b32_e32 v21, s33, v12
	v_or_b32_e32 v19, s33, v13
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v7, 48, v7
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_lshl_or_b32 v5, s25, 7, v5
	s_lshl_b32 s10, s26, 7
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v17, 0
	v_lshl_or_b32 v28, v3, 6, v7
	v_add_nc_u32_e32 v3, s14, v4
	v_subrev_nc_u32_e32 v4, s10, v5
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s27, 7
	s_mov_b32 s27, 0x31027000
	v_lshl_or_b32 v33, v6, 5, v28
	v_xor_b32_e32 v31, 16, v28
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_or_b32_e32 v5, 64, v4
	v_mul_lo_u32 v4, s19, v4
	v_xor_b32_e32 v29, 32, v28
	v_xor_b32_e32 v30, 48, v28
	v_xor_b32_e32 v35, 16, v33
	v_mul_lo_u32 v5, s19, v5
	v_xor_b32_e32 v32, 32, v33
	v_xor_b32_e32 v34, 48, v33
	s_mov_b32 s26, 0x7ffffffe
	v_add3_u32 v39, v4, v1, 0x100
	s_and_b32 s25, s9, 0xffff
	v_mov_b32_e32 v14, 0
	s_mov_b32 s24, s8
	v_add3_u32 v38, v5, v1, 0x100
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v7, v1
	v_mov_b32_e32 v4, v1
	v_mul_lo_u32 v3, s19, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v16, 0
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	s_add_i32 s11, s1, -2
	v_add3_u32 v40, v3, v2, 0x100
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s1, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
	s_mov_b32 s19, 1
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s36, s15
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s15, 31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v41, s36, v40
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s15, s36, s15
	s_ashr_i32 s15, s15, 8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v89, v41, s[4:7], 0 offen
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s37, s15, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v41, v27, s15, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s15, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v42, v26, s37, 1
	v_add_lshl_u32 v43, v25, s37, 1
	v_add_lshl_u32 v44, v24, s37, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v45, v22, s37, 1
	v_add_lshl_u32 v46, v20, s37, 1
	v_add_lshl_u32 v47, v23, s37, 1
	v_add_lshl_u32 v48, v21, s37, 1
	v_add_lshl_u32 v49, v19, s37, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v90, v41, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v91, v42, s[28:31], 0 offen
	buffer_load_u16 v92, v43, s[28:31], 0 offen
	buffer_load_u16 v93, v44, s[28:31], 0 offen
	buffer_load_u16 v94, v45, s[28:31], 0 offen
	buffer_load_u16 v95, v46, s[28:31], 0 offen
	buffer_load_u16 v96, v47, s[28:31], 0 offen
	buffer_load_u16 v97, v48, s[28:31], 0 offen
	buffer_load_u16 v98, v49, s[28:31], 0 offen
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v41, s36, v39
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v42, s36, v38
	s_clause 0x1
	buffer_load_b128 v[49:52], v41, s[20:23], 0 offen
	buffer_load_b128 v[53:56], v42, s[20:23], 0 offen
	s_mov_b32 s15, s10
	s_mov_b32 s10, s1
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v41, s15, v28
	v_add_nc_u32_e32 v42, s15, v31
	s_mov_b32 s1, s18
	v_add_nc_u32_e32 v43, s15, v29
	v_add_nc_u32_e32 v44, s15, v30
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v45, s1, v33
	v_add_nc_u32_e32 v46, s1, v35
	v_add_nc_u32_e32 v47, s1, v32
	v_add_nc_u32_e32 v48, s1, v34
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[57:60], v41
	ds_load_b128 v[61:64], v42
	ds_load_b128 v[65:68], v43
	ds_load_b128 v[69:72], v44
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[73:76], v45
	ds_load_b128 v[77:80], v46
	ds_load_b128 v[81:84], v47
	ds_load_b128 v[85:88], v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s19, 1
	s_mov_b32 s18, s34
	s_cmp_lt_i32 s1, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s19, s1, 0
	s_add_i32 s11, s11, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s19, 10
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s34, s19, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s37, s1, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_add_i32 s34, s34, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s36, 0x80
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s37, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s11, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[65:68], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[85:88], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v57, 16, v90
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v58, 16, v91
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v59, 16, v92
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v61, 16, v94
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v63, 16, v96
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v64, 16, v97
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v65, 16, v98
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v57, v61
	v_dual_mul_f32 v63, v57, v63 :: v_dual_lshlrev_b32 v60, 16, v93
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v62, 16, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v57, v58
	v_mul_f32_e32 v59, v57, v59
	v_mul_f32_e32 v64, v57, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v15, v61, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v60, v57, v60 :: v_dual_fmac_f32 v17, v63, v46
	v_mul_f32_e32 v62, v57, v62
	v_mul_f32_e32 v57, v57, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v18, v64, v47 :: v_dual_add_nc_u32 v99, s37, v36
	v_dual_fmac_f32 v13, v59, v42 :: v_dual_add_nc_u32 v100, s34, v37
	v_dual_fmac_f32 v11, v58, v41 :: v_dual_fmac_f32 v14, v60, v43
	v_fmac_f32_e32 v16, v62, v45
	v_fmac_f32_e32 v12, v57, v48
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v99, v89 offset:16384
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v100, v[49:52]
	s_waitcnt vmcnt(0)
	ds_store_b128 v100, v[53:56] offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s24, s36, 0x100
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s1, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %Flow22
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v37, 0xf0, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v36, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v7, s10, v31
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v2, s18, v35
	v_add_nc_u32_e32 v6, s18, v33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s10, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v45, v38 :: v_dual_add_nc_u32 v36, s18, v34
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v41, v38
	v_mov_b32_e32 v43, v38
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[46:49], v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[50:53], v7
	ds_load_b128 v[54:57], v8
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v6, s18, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v40, v38 :: v_dual_add_nc_u32 v7, s10, v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s10, v29
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[58:61], v36
	ds_load_b128 v[62:65], v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[66:69], v7
	ds_load_b128 v[70:73], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v42, v38
	v_mov_b32_e32 v44, v38
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[54:57], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[2:5], v[50:53], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[62:65], v[70:73], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[66:69], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v2, v39
	v_cvt_f32_i32_e32 v3, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v41
	v_cvt_f32_i32_e32 v6, v42
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v36, v45
	v_cvt_f32_i32_e32 v4, v38
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s15, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s15, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v38, v27, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v39, v26, s4, 1
	v_add_lshl_u32 v40, v25, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v41, v24, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v43, v23, s4, 1
	v_add_lshl_u32 v42, v20, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v45, v38, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v38, 0x80000000, v39 :: v_dual_cndmask_b32 v39, 0x80000000, v40
	v_dual_cndmask_b32 v40, 0x80000000, v41 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	v_add_lshl_u32 v41, v22, s4, 1
	v_add_lshl_u32 v44, v21, s4, 1
	v_add_lshl_u32 v46, v19, s4, 1
	s_and_b32 s17, s17, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v53, 0x80000000, v46
	s_clause 0x7
	buffer_load_u16 v46, v38, s[16:19], 0 offen
	buffer_load_u16 v47, v39, s[16:19], 0 offen
	buffer_load_u16 v48, v40, s[16:19], 0 offen
	buffer_load_u16 v49, v41, s[16:19], 0 offen
	buffer_load_u16 v50, v42, s[16:19], 0 offen
	buffer_load_u16 v51, v43, s[16:19], 0 offen
	buffer_load_u16 v52, v44, s[16:19], 0 offen
	buffer_load_u16 v53, v53, s[16:19], 0 offen
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v44, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v1, s34, v35
	v_add_nc_u32_e32 v33, s34, v33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v31, s1, v31
	v_add_nc_u32_e32 v28, s1, v28
	v_add_nc_u32_e32 v29, s1, v29
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[38:41], v1
	ds_load_b128 v[54:57], v33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[58:61], v31
	ds_load_b128 v[62:65], v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v28, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v34, s34, v34
	v_add_nc_u32_e32 v1, s34, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v31, v28 :: v_dual_add_nc_u32 v30, s1, v30
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[66:69], v34
	ds_load_b128 v[70:73], v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[74:77], v30
	ds_load_b128 v[78:81], v29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v29, v28
	v_mov_b32_e32 v30, v28
	v_mov_b32_e32 v32, v28
	v_mov_b32_e32 v33, v28
	v_mov_b32_e32 v34, v28
	v_mov_b32_e32 v35, v28
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[54:57], v[62:65], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[28:35], v[38:41], v[58:61], v[28:35] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[70:73], v[78:81], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[28:35], v[66:69], v[74:77], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v28
	v_cvt_f32_i32_e32 v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v30
	v_cvt_f32_i32_e32 v40, v31
	v_cvt_f32_i32_e32 v41, v32
	v_cvt_f32_i32_e32 v42, v33
	v_cvt_f32_i32_e32 v43, v34
	v_cvt_f32_i32_e32 v44, v35
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s24, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s24, s1
	v_mov_b16_e32 v28.l, 0
	s_ashr_i32 s1, s1, 8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v28.h, v45.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v27, v27, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v26, v26, s1, 1
	v_add_lshl_u32 v25, v25, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v24, v24, s1, 1
	v_add_lshl_u32 v22, v22, s1, 1
	v_add_lshl_u32 v20, v20, s1, 1
	v_add_lshl_u32 v23, v23, s1, 1
	v_add_lshl_u32 v21, v21, s1, 1
	v_add_lshl_u32 v19, v19, s1, 1
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_and_b32 v10, 28, v10
	s_clause 0x7
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v29.h, v53.l
	v_mov_b16_e32 v30.h, v52.l
	v_mov_b16_e32 v31.h, v51.l
	v_mov_b16_e32 v32.h, v50.l
	v_mov_b16_e32 v33.h, v49.l
	v_mov_b16_e32 v34.h, v48.l
	v_mov_b16_e32 v35.h, v47.l
	v_mov_b16_e32 v45.h, v46.l
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v47, v0, 7, 1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_bfe_i32 v50, v0, 3, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v29.l, v28.l
	v_mov_b16_e32 v30.l, v28.l
	v_mov_b16_e32 v31.l, v28.l
	v_mov_b16_e32 v32.l, v28.l
	v_mov_b16_e32 v33.l, v28.l
	v_mov_b16_e32 v34.l, v28.l
	v_mov_b16_e32 v35.l, v28.l
	v_mov_b16_e32 v45.l, v28.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v49, 7, v0
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v46, 0x7f, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v48, 7, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 5, v0
	v_and_b32_e32 v50, 0x1040, v50
	v_and_b32_e32 v47, 0x204, v47
	v_and_or_b32 v9, 0x1c0, v9, v10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v28, v29
	v_mul_f32_e32 v29, v28, v30
	v_mul_f32_e32 v30, v28, v31
	v_mul_f32_e32 v31, v28, v32
	v_mul_f32_e32 v32, v28, v33
	v_mul_f32_e32 v33, v28, v34
	v_mul_f32_e32 v34, v28, v35
	v_mul_f32_e32 v28, v28, v45
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v37, v49, 2, v37
	v_xor_b32_e32 v9, v9, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v36, v12
	v_fma_f32 v3, v33, v3, v14
	v_fma_f32 v5, v32, v5, v15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v35, v37, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v31, v6, v16
	v_fma_f32 v8, v29, v8, v18
	v_fma_f32 v7, v30, v7, v17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v0, v0, 32, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v12, v10, s3
	v_cndmask_b32_e64 v3, v14, v3, s3
	v_cndmask_b32_e64 v5, v15, v5, s3
	v_cndmask_b32_e64 v6, v16, v6, s3
	v_cndmask_b32_e64 v8, v18, v8, s3
	v_cndmask_b32_e64 v7, v17, v7, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v30, 0xc18, v0, 0
	v_xad_u32 v29, 0x810, v0, 0
	v_xad_u32 v31, 0x1040, v0, 0
	v_xad_u32 v32, 0x1448, v0, 0
	v_xad_u32 v33, 0x1850, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v48, s35, v48
	s_mul_i32 s0, s14, s35
	s_mul_i32 s1, s35, 6
	s_add_i32 s0, s0, s33
	s_mul_i32 s4, s35, 10
	s_mul_i32 s5, s35, 12
	s_mul_i32 s6, s35, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s14, s10
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v37, s0, v46, v48
	s_lshl_b32 s0, s35, 1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s15, s11
	s_and_b32 s13, s13, 0xffff
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v28, v4, v11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v28, v49, 9, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v22
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v34, v2, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v27, v22 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v11, v4, s3
	v_cndmask_b32_e64 v2, v13, v2, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v27, v19
	v_dual_mul_f32 v24, v27, v24 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v25, v27, v25 :: v_dual_add_nc_u32 v10, 0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v27, v21
	v_dual_mul_f32 v26, v27, v26 :: v_dual_lshlrev_b32 v23, 16, v23
	v_mul_f32_e32 v20, v27, v20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v18, 0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v38, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v27, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v26, v1, v4
	v_fma_f32 v24, v24, v39, v3
	v_fma_f32 v22, v22, v40, v5
	v_fma_f32 v20, v20, v41, v6
	v_fma_f32 v23, v23, v42, v7
	v_fma_f32 v21, v21, v43, v8
	v_fma_f32 v19, v19, v44, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v4, v1, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v11, v28, 4, 0
	v_xad_u32 v12, v28, 8, 0
	v_xad_u32 v13, v28, 12, 0
	v_xad_u32 v14, v28, 16, 0
	v_xad_u32 v15, v28, 20, 0
	v_xad_u32 v16, v28, 24, 0
	v_xad_u32 v17, v28, 28, 0
	v_xad_u32 v28, 0x408, v0, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v25, s2
	v_cndmask_b32_e64 v3, v3, v24, s2
	v_cndmask_b32_e64 v4, v5, v22, s2
	v_cndmask_b32_e64 v5, v6, v20, s2
	v_cndmask_b32_e64 v6, v7, v23, s2
	v_cndmask_b32_e64 v7, v8, v21, s2
	v_cndmask_b32_e64 v8, v9, v19, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b32 v10, v1
	ds_store_b32 v11, v2
	ds_store_b32 v12, v3
	ds_store_b32 v13, v4
	ds_store_b32 v14, v5
	ds_store_b32 v15, v6
	ds_store_b32 v16, v7
	ds_store_b32 v17, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v18
	ds_load_b32 v2, v28
	ds_load_b32 v3, v29
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v30
	ds_load_b32 v5, v31
	ds_load_b32 v6, v32
	ds_load_b32 v7, v33
	ds_load_b32 v0, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s2, s35, 2
	s_lshl_b32 s3, s35, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v8, 2, v37
	v_add_lshl_u32 v9, v37, s0, 2
	v_add_lshl_u32 v11, v37, s1, 2
	v_add_lshl_u32 v10, v37, s2, 2
	v_add_lshl_u32 v12, v37, s3, 2
	v_add_lshl_u32 v13, v37, s4, 2
	v_add_lshl_u32 v14, v37, s5, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v10, s[12:15], 0 offen
	v_add_lshl_u32 v1, v37, s6, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v4, v11, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v5, v12, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v6, v13, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v7, v14, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v1, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 38
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 101
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4260
; TotalNumSgprs: 40
; NumVgprs: 101
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     101
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
