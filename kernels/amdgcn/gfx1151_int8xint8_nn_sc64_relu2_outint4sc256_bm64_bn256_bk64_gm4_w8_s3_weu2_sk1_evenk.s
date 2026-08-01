	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_mov_b32_e32 v71, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v247, 3, v71
	v_lshlrev_b32_e32 v246, 4, v247
	v_and_b32_e32 v57, 15, v71
	v_lshrrev_b32_e32 v243, 4, v71
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v0, 4, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v244, 4, v57
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
	v_mad_u64_u32 v[13:14], null, s35, v243, v[244:245]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v57, off offset:4
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[14:15], null, s35, 48, v[13:14]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v16, s35, 4, v13
	v_lshl_add_u32 v17, s35, 5, v13
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
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
	s_mul_i32 s14, s14, s13
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v71
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s12, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s13, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s13, s6, s13
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s13, s14, s13
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s13, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s18
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s13, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s33, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s27, s33, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14 is_stmt 1              ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s34, s12
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s2, 26
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v18, v1, v246, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s35, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s27, s12
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s26, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v13
	v_add_nc_u32_e32 v3, s12, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 6
	v_add_nc_u32_e32 v4, s12, v17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s26, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s12, v14
	s_add_i32 s12, s12, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s44, v18
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s12, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s12, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v15, s12, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v19, s12, v14
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b128 v[7:10], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v2, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v3, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v4, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	v_cndmask_b32_e64 v3, 0x80000000, v12, s2
	v_cndmask_b32_e64 v4, 0x80000000, v15, s2
	v_cndmask_b32_e64 v5, 0x80000000, v19, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[37:40], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[41:44], v2, s[28:31], 0 offen
	buffer_load_b128 v[45:48], v3, s[28:31], 0 offen
	buffer_load_b128 v[49:52], v4, s[28:31], 0 offen
	buffer_load_b128 v[53:56], v5, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v3, 1, v71
	v_lshrrev_b32_e32 v2, 1, v71
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v57
	v_or_b32_e32 v5, 32, v57
	v_or_b32_e32 v6, 48, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v3
	v_lshlrev_b32_e32 v19, 6, v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, 0, v0
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v20, v0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v20
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[7:10] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v11, v[21:24]
	s_waitcnt vmcnt(7)
	ds_store_b128 v11, v[25:28] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v11, v[29:32] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v11, v[33:36] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[37:40] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v11, v[41:44] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v11, v[45:48] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v11, v[49:52] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[53:56] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 15, v71
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v15, 0x70, v2
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr15
.LBB0_3:                                ; %Flow94
	s_load_b128 s[20:23], s[0:1], 0x20
	v_and_b32_e32 v7, 15, v71
	v_or_b32_e32 v4, s34, v4
	v_or_b32_e32 v5, s34, v5
	v_or_b32_e32 v6, s34, v6
	v_and_b32_e32 v245, 0xf0, v71
	v_or_b32_e32 v7, s34, v7
	s_ashr_i32 s0, s13, 6
	v_or_b32_e32 v107, s27, v71
	v_mul_lo_u32 v0, v4, s0
	v_mul_lo_u32 v105, v5, s0
	v_mul_lo_u32 v108, v7, s0
	v_mul_lo_u32 v106, v6, s0
	v_lshlrev_b32_e32 v22, 2, v245
	v_and_b32_e32 v21, 28, v3
	v_lshlrev_b32_e32 v24, 5, v71
	v_lshlrev_b32_e32 v23, 1, v245
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 3, v71
	v_and_b32_e32 v15, 0x70, v2
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v30, 0, v23
	v_mov_b32_e32 v74, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v25, v1, 48, v19
	v_and_b32_e32 v1, 32, v24
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v76, 0
	v_xor_b32_e32 v26, 16, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v9, 0, v22, v1
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v27, 32, v25
	v_xor_b32_e32 v28, 48, v25
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v78, 0
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v29, v9, v21
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v141, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s46, s0, 3
	s_add_i32 s10, s44, 64
	s_mov_b32 s11, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s46, s46, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v9, 15, v71
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s12
	s_mov_b32 s12, s26
	s_mov_b32 s26, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s10, s15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v31, s14, v15, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s44, v18
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v64, s47, v25
	v_add_nc_u32_e32 v65, s47, v26
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s44, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v32, v31 offset:3328
	ds_load_u8 v33, v31 offset:3072
	ds_load_u8 v34, v31 offset:3840
	ds_load_u8 v35, v31 offset:3584
	ds_load_u8 v36, v31 offset:2304
	ds_load_u8 v37, v31 offset:2048
	ds_load_u8 v38, v31 offset:2816
	ds_load_u8 v39, v31 offset:2560
	ds_load_u8 v40, v31 offset:1280
	ds_load_u8 v41, v31 offset:1024
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[48:51], v64
	ds_load_b128 v[52:55], v65
	ds_load_b128 v[142:145], v64 offset:1024
	ds_load_b128 v[146:149], v65 offset:1024
	ds_load_b128 v[158:161], v64 offset:2048
	ds_load_b128 v[162:165], v65 offset:2048
	ds_load_b128 v[182:185], v64 offset:3072
	ds_load_b128 v[186:189], v65 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v64, v31 offset:11520
	ds_load_u8 v65, v31 offset:11264
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s12, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s15, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v70, s12, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:1792
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s15, s14, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v39, v38, 0xc0c0004
	v_lshl_or_b32 v169, v34, 16, v32
	ds_load_u8 v32, v31 offset:256
	ds_load_u8 v34, v31
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v168, v37, 16, v36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v36, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:12032
	ds_load_u8 v66, v31 offset:11776
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s11, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v37, v31 offset:768
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s11, s11, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v32, v34, v32, 0xc0c0004
	ds_load_u8 v34, v31 offset:7936
	ds_load_u8 v35, v31 offset:1536
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v31 offset:10496
	ds_load_u8 v68, v31 offset:10240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v31 offset:512
	v_lshl_or_b32 v167, v33, 16, v36
	ds_load_u8 v33, v31 offset:7424
	ds_load_u8 v36, v31 offset:7168
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v31 offset:11008
	ds_load_u8 v69, v31 offset:10752
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v35, v37, 0xc0c0004
	ds_load_u8 v37, v31 offset:7680
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v36, v33, 0xc0c0004
	ds_load_u8 v36, v31 offset:6400
	v_lshl_or_b32 v166, v35, 16, v32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	ds_load_u8 v37, v31 offset:6144
	v_lshl_or_b32 v173, v34, 16, v33
	ds_load_u8 v32, v31 offset:5376
	ds_load_u8 v33, v31 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v31 offset:6912
	ds_load_u8 v38, v31 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:5888
	ds_load_u8 v34, v31 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v172, v37, 16, v36
	v_lshl_or_b32 v171, v33, 16, v32
	ds_load_u8 v32, v31 offset:4352
	ds_load_u8 v33, v31 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:4864
	ds_load_u8 v34, v31 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v33, 16, v32
	ds_load_u8 v32, v31 offset:3456
	ds_load_u8 v33, v31 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:3968
	ds_load_u8 v34, v31 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v31 offset:2432
	ds_load_u8 v35, v31 offset:2176
	v_lshl_or_b32 v177, v33, 16, v32
	ds_load_u8 v32, v31 offset:1408
	ds_load_u8 v33, v31 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v31 offset:2944
	ds_load_u8 v36, v31 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v176, v35, 16, v34
	ds_load_u8 v33, v31 offset:1920
	ds_load_u8 v34, v31 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v175, v33, 16, v32
	ds_load_u8 v32, v31 offset:384
	ds_load_u8 v33, v31 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:896
	ds_load_u8 v34, v31 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v33, 16, v32
	ds_load_u8 v32, v31 offset:7552
	ds_load_u8 v33, v31 offset:7296
	v_wmma_i32_16x16x16_iu8 v[40:47], v[174:177], v[48:51], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[174:177], v[142:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[174:177], v[158:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:8064
	ds_load_u8 v34, v31 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v31 offset:6528
	ds_load_u8 v35, v31 offset:6272
	v_lshl_or_b32 v181, v33, 16, v32
	ds_load_u8 v32, v31 offset:5504
	ds_load_u8 v33, v31 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v31 offset:7040
	ds_load_u8 v36, v31 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v180, v35, 16, v34
	ds_load_u8 v33, v31 offset:6016
	ds_load_u8 v34, v31 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v179, v33, 16, v32
	ds_load_u8 v32, v31 offset:4480
	ds_load_u8 v33, v31 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v31 offset:4992
	ds_load_u8 v34, v31 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v178, v33, 16, v32
	v_wmma_i32_16x16x16_iu8 v[32:39], v[166:169], v[48:51], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[178:181], v[52:55], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[170:173], v[52:55], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[166:169], v[142:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[178:181], v[146:149], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[178:181], v[162:165], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[170:173], v[146:149], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[166:169], v[158:161], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[170:173], v[162:165], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[166:169], v[182:185], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[170:173], v[186:189], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[174:177], v[182:185], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v65, 16, v64
	ds_load_u8 v64, v31 offset:9472
	ds_load_u8 v65, v31 offset:9216
	v_lshl_or_b32 v176, v68, 16, v66
	v_wmma_i32_16x16x16_iu8 v[166:173], v[178:181], v[186:189], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:9984
	ds_load_u8 v66, v31 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v65, 16, v64
	ds_load_u8 v64, v31 offset:8448
	ds_load_u8 v65, v31 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:8960
	ds_load_u8 v66, v31 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v65, 16, v64
	ds_load_u8 v64, v31 offset:11648
	ds_load_u8 v65, v31 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:12160
	ds_load_u8 v66, v31 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v31 offset:10624
	ds_load_u8 v68, v31 offset:10368
	v_lshl_or_b32 v181, v65, 16, v64
	ds_load_u8 v64, v31 offset:9600
	ds_load_u8 v65, v31 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v31 offset:11136
	ds_load_u8 v69, v31 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v180, v68, 16, v66
	ds_load_u8 v65, v31 offset:10112
	ds_load_u8 v66, v31 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v179, v65, 16, v64
	ds_load_u8 v64, v31 offset:8576
	ds_load_u8 v65, v31 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:9088
	ds_load_u8 v66, v31 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v65, 16, v64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v64, s47, v27
	ds_load_b128 v[182:185], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[174:177], v[182:185], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[178:181], v[182:185], v[40:47] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v64 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[174:177], v[182:185], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[178:181], v[182:185], v[56:63] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v64 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[174:177], v[182:185], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[178:181], v[182:185], v[150:157] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v64 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v64, v31 offset:15616
	ds_load_u8 v65, v31 offset:15360
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[174:177], v[182:185], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:16128
	ds_load_u8 v66, v31 offset:15872
	v_wmma_i32_16x16x16_iu8 v[166:173], v[178:181], v[182:185], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v31 offset:14592
	ds_load_u8 v68, v31 offset:14336
	v_lshl_or_b32 v177, v65, 16, v64
	ds_load_u8 v64, v31 offset:13568
	ds_load_u8 v65, v31 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v31 offset:15104
	ds_load_u8 v69, v31 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v176, v68, 16, v66
	ds_load_u8 v65, v31 offset:14080
	ds_load_u8 v66, v31 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v175, v65, 16, v64
	ds_load_u8 v64, v31 offset:12544
	ds_load_u8 v65, v31 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:13056
	ds_load_u8 v66, v31 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v65, 16, v64
	ds_load_u8 v64, v31 offset:15744
	ds_load_u8 v65, v31 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:16256
	ds_load_u8 v66, v31 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v31 offset:14720
	ds_load_u8 v68, v31 offset:14464
	v_lshl_or_b32 v181, v65, 16, v64
	ds_load_u8 v64, v31 offset:13696
	ds_load_u8 v65, v31 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v31 offset:15232
	ds_load_u8 v69, v31 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v69, v106, s14, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v180, v68, 16, v66
	ds_load_u8 v65, v31 offset:14208
	ds_load_u8 v66, v31 offset:13952
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v68, v105, s14, 1
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v66, v0, s14, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v179, v65, 16, v64
	ds_load_u8 v64, v31 offset:12672
	ds_load_u8 v65, v31 offset:12416
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v31 offset:13184
	ds_load_u8 v31, v31 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v31, v65, 0xc0c0004
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v65, v107, s15, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v178, v31, 16, v64
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v31, s47, v28
	s_mov_b32 s47, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[174:177], v[182:185], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[178:181], v[182:185], v[40:47] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v31 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[174:177], v[182:185], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[178:181], v[182:185], v[56:63] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v31 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[174:177], v[182:185], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[178:181], v[182:185], v[150:157] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v31 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v64, v142
	v_cvt_f32_i32_e32 v72, v143
	v_cvt_f32_i32_e32 v142, v144
	v_cvt_f32_i32_e32 v143, v145
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v145, v147
	v_cvt_f32_i32_e32 v146, v148
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v148, v150
	v_cvt_f32_i32_e32 v149, v151
	v_cvt_f32_i32_e32 v150, v152
	v_cvt_f32_i32_e32 v151, v153
	v_cvt_f32_i32_e32 v152, v154
	v_cvt_f32_i32_e32 v153, v155
	v_cvt_f32_i32_e32 v154, v156
	v_cvt_f32_i32_e32 v155, v157
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[174:177], v[182:185], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[178:181], v[182:185], v[166:173] neg_lo:[1,1,0]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v175, s12, v16
	v_add_nc_u32_e32 v179, s12, v17
	v_add_nc_u32_e32 v183, s12, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v156, v158
	v_cvt_f32_i32_e32 v157, v159
	v_cvt_f32_i32_e32 v158, v160
	v_cvt_f32_i32_e32 v159, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v161, v163
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v163, v165
	v_cvt_f32_i32_e32 v164, v166
	v_cvt_f32_i32_e32 v165, v167
	v_cvt_f32_i32_e32 v166, v168
	v_cvt_f32_i32_e32 v167, v169
	v_cvt_f32_i32_e32 v168, v170
	v_cvt_f32_i32_e32 v169, v171
	v_cvt_f32_i32_e32 v170, v172
	v_cvt_f32_i32_e32 v31, v173
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[171:174], v70, s[28:31], 0 offen
	buffer_load_b128 v[175:178], v175, s[28:31], 0 offen
	buffer_load_b128 v[179:182], v179, s[28:31], 0 offen
	buffer_load_b128 v[183:186], v183, s[28:31], 0 offen
	s_mov_b32 s12, s45
	s_add_i32 s45, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v29, v65 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v65, v108, s14, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s14, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s14, s14, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x3
	buffer_load_u16 v65, v65, s[36:39], 0 offen
	buffer_load_u16 v66, v66, s[36:39], 0 offen
	buffer_load_u16 v68, v68, s[36:39], 0 offen
	buffer_load_u16 v69, v69, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[187:190], v30 offset:40960
	ds_load_b128 v[191:194], v30 offset:40976
	ds_load_b128 v[195:198], v30 offset:41472
	ds_load_b128 v[199:202], v30 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v70, s14, v20
	s_add_i32 s1, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s46
	s_mov_b32 s13, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v70, v[9:12] offset:32768
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v68
	v_lshlrev_b32_e32 v10, 16, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v216, v192, v12 :: v_dual_lshlrev_b32 v11, 16, v66
	v_mul_f32_e32 v205, v189, v12
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v210, v194, v10 :: v_dual_lshlrev_b32 v65, 16, v69
	v_dual_mul_f32 v68, v188, v10 :: v_dual_lshlrev_b32 v9, 4, v71
	v_mul_f32_e32 v66, v187, v10
	v_mul_f32_e32 v69, v189, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v70, v190, v10 :: v_dual_add_nc_u32 v9, s45, v9
	v_dual_mul_f32 v208, v192, v10 :: v_dual_mul_f32 v203, v187, v12
	v_mul_f32_e32 v204, v188, v12
	v_mul_f32_e32 v206, v190, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v9, v[171:174]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v171, v187, v11
	v_mul_f32_e32 v172, v188, v11
	v_mul_f32_e32 v173, v189, v11
	v_dual_mul_f32 v174, v190, v11 :: v_dual_mul_f32 v187, v187, v65
	v_mul_f32_e32 v212, v192, v11
	v_mul_f32_e32 v188, v188, v65
	v_dual_mul_f32 v189, v189, v65 :: v_dual_mul_f32 v214, v194, v11
	v_dual_mul_f32 v190, v190, v65 :: v_dual_mul_f32 v207, v191, v10
	v_dual_mul_f32 v218, v194, v12 :: v_dual_mul_f32 v209, v193, v10
	v_dual_mul_f32 v192, v192, v65 :: v_dual_mul_f32 v211, v191, v11
	v_dual_mul_f32 v194, v194, v65 :: v_dual_mul_f32 v213, v193, v11
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v220, v196, v10 :: v_dual_mul_f32 v215, v191, v12
	v_dual_mul_f32 v222, v198, v10 :: v_dual_mul_f32 v217, v193, v12
	v_dual_mul_f32 v224, v196, v11 :: v_dual_mul_f32 v191, v191, v65
	v_dual_mul_f32 v226, v198, v11 :: v_dual_mul_f32 v193, v193, v65
	v_dual_mul_f32 v228, v196, v12 :: v_dual_mul_f32 v219, v195, v10
	v_dual_mul_f32 v230, v198, v12 :: v_dual_mul_f32 v221, v197, v10
	v_dual_mul_f32 v196, v196, v65 :: v_dual_mul_f32 v223, v195, v11
	v_dual_mul_f32 v198, v198, v65 :: v_dual_mul_f32 v225, v197, v11
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v232, v200, v10 :: v_dual_mul_f32 v227, v195, v12
	v_dual_mul_f32 v229, v197, v12 :: v_dual_mul_f32 v234, v199, v11
	v_dual_mul_f32 v195, v195, v65 :: v_dual_mul_f32 v236, v201, v11
	v_dual_mul_f32 v197, v197, v65 :: v_dual_mul_f32 v238, v200, v12
	v_mul_f32_e32 v231, v199, v10
	v_mul_f32_e32 v233, v201, v10
	v_dual_mul_f32 v10, v202, v10 :: v_dual_mul_f32 v235, v200, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v110, v203, v64 :: v_dual_mul_f32 v11, v202, v11
	v_dual_fmac_f32 v74, v68, v33 :: v_dual_mul_f32 v237, v199, v12
	v_dual_fmac_f32 v76, v70, v35 :: v_dual_mul_f32 v239, v201, v12
	v_fmac_f32_e32 v78, v208, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v12, v202, v12 :: v_dual_mul_f32 v199, v199, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v80, v210, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v200, v200, v65
	v_dual_mul_f32 v201, v201, v65 :: v_dual_fmac_f32 v84, v222, v43
	v_dual_mul_f32 v65, v202, v65 :: v_dual_fmac_f32 v104, v11, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v73, v66, v32 :: v_dual_fmac_f32 v82, v220, v41
	v_dual_fmac_f32 v75, v69, v34 :: v_dual_fmac_f32 v86, v232, v45
	v_dual_fmac_f32 v77, v207, v36 :: v_dual_fmac_f32 v88, v10, v47
	v_dual_fmac_f32 v79, v209, v38 :: v_dual_fmac_f32 v90, v172, v49
	v_dual_fmac_f32 v81, v219, v40 :: v_dual_fmac_f32 v92, v174, v51
	v_dual_fmac_f32 v83, v221, v42 :: v_dual_fmac_f32 v94, v212, v53
	v_dual_fmac_f32 v85, v231, v44 :: v_dual_fmac_f32 v96, v214, v55
	v_dual_fmac_f32 v87, v233, v46 :: v_dual_fmac_f32 v98, v224, v57
	v_dual_fmac_f32 v89, v171, v48 :: v_dual_fmac_f32 v100, v226, v59
	v_dual_fmac_f32 v91, v173, v50 :: v_dual_fmac_f32 v102, v235, v61
	v_dual_fmac_f32 v93, v211, v52 :: v_dual_fmac_f32 v112, v205, v142
	v_dual_fmac_f32 v95, v213, v54 :: v_dual_fmac_f32 v114, v215, v144
	v_dual_fmac_f32 v97, v223, v56 :: v_dual_fmac_f32 v116, v217, v146
	v_dual_fmac_f32 v99, v225, v58 :: v_dual_fmac_f32 v118, v227, v148
	v_dual_fmac_f32 v101, v234, v60 :: v_dual_fmac_f32 v120, v229, v150
	v_dual_fmac_f32 v103, v236, v62 :: v_dual_fmac_f32 v122, v237, v152
	v_dual_fmac_f32 v111, v204, v72 :: v_dual_fmac_f32 v124, v239, v154
	v_dual_fmac_f32 v113, v206, v143 :: v_dual_fmac_f32 v126, v187, v156
	v_dual_fmac_f32 v115, v216, v145 :: v_dual_fmac_f32 v128, v189, v158
	v_dual_fmac_f32 v117, v218, v147 :: v_dual_fmac_f32 v130, v191, v160
	v_dual_fmac_f32 v119, v228, v149 :: v_dual_fmac_f32 v132, v193, v162
	v_dual_fmac_f32 v121, v230, v151 :: v_dual_fmac_f32 v136, v196, v165
	v_dual_fmac_f32 v123, v238, v153 :: v_dual_fmac_f32 v134, v65, v31
	v_fmac_f32_e32 v125, v12, v155
	v_dual_fmac_f32 v127, v188, v157 :: v_dual_fmac_f32 v138, v198, v167
	v_dual_fmac_f32 v129, v190, v159 :: v_dual_fmac_f32 v140, v200, v169
	v_fmac_f32_e32 v131, v192, v161
	v_fmac_f32_e32 v133, v194, v163
	v_fmac_f32_e32 v135, v195, v164
	v_fmac_f32_e32 v137, v197, v166
	v_fmac_f32_e32 v139, v199, v168
	v_fmac_f32_e32 v141, v201, v170
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v9, v[175:178] offset:4096
	ds_store_b128 v9, v[179:182] offset:8192
	ds_store_b128 v9, v[183:186] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v19
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v179, 0 :: v_dual_and_b32 v248, 6, v71
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v2, 15, v71
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v169, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v34, v248, 3, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v38, v15, v2
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v36, 16, v34
	v_xor_b32_e32 v37, 32, v34
	v_xor_b32_e32 v35, 48, v34
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v162, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v163, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v30, s12, v38
	s_mov_b32 s12, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v42, v30 offset:2304
	ds_load_u8 v43, v30 offset:2048
	ds_load_u8 v44, v30 offset:2816
	ds_load_u8 v45, v30 offset:2560
	ds_load_u8 v46, v30 offset:1280
	ds_load_u8 v47, v30 offset:1024
	ds_load_u8 v48, v30 offset:1792
	ds_load_u8 v49, v30 offset:1536
	ds_load_u8 v56, v30 offset:3968
	ds_load_u8 v57, v30 offset:3712
	ds_load_u8 v58, v30 offset:3456
	ds_load_u8 v59, v30 offset:3200
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s47, v35
	v_add_nc_u32_e32 v17, s47, v37
	v_add_nc_u32_e32 v31, s47, v36
	ds_load_b128 v[1:4], v25 offset:1024
	ds_load_b128 v[26:29], v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v32, v30 offset:3328
	ds_load_u8 v39, v30 offset:3072
	ds_load_u8 v40, v30 offset:3840
	ds_load_u8 v41, v30 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[63:66], v17
	ds_load_b128 v[17:20], v31 offset:1024
	ds_load_b128 v[142:145], v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v44, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v55, s47, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v156, v43, 16, v42
	v_lshl_or_b32 v155, v45, 16, v44
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v39, v32, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v40, v30 offset:256
	ds_load_u8 v41, v30
	ds_load_u8 v50, v30 offset:768
	ds_load_u8 v51, v30 offset:512
	ds_load_u8 v60, v30 offset:2944
	ds_load_u8 v61, v30 offset:2688
	ds_load_u8 v62, v30 offset:2432
	ds_load_u8 v68, v30 offset:2176
	v_lshl_or_b32 v157, v39, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v68, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v154, v40, 16, v39
	v_dual_mov_b32 v46, s19 :: v_dual_mov_b32 v45, s18
	ds_load_u8 v47, v30 offset:7424
	ds_load_u8 v48, v30 offset:7168
	ds_load_u8 v49, v30 offset:7936
	ds_load_u8 v50, v30 offset:7680
	ds_load_u8 v51, v30 offset:6400
	ds_load_u8 v52, v30 offset:6144
	ds_load_u8 v53, v30 offset:6912
	ds_load_u8 v54, v30 offset:6656
	ds_load_u8 v162, v30 offset:5376
	ds_load_u8 v163, v30 offset:5120
	ds_load_u8 v164, v30 offset:5888
	ds_load_u8 v165, v30 offset:5632
	ds_load_u8 v174, v30 offset:8064
	ds_load_u8 v175, v30 offset:7808
	ds_load_u8 v176, v30 offset:7552
	ds_load_u8 v177, v30 offset:7296
	ds_load_u8 v210, v30 offset:15616
	ds_load_u8 v211, v30 offset:15360
	v_mov_b32_e32 v40, s13
	ds_load_u8 v69, v30 offset:1920
	ds_load_u8 v70, v30 offset:1664
	ds_load_u8 v72, v30 offset:1408
	ds_load_u8 v158, v30 offset:1152
	ds_load_u8 v32, v30 offset:896
	ds_load_u8 v159, v30 offset:640
	ds_load_u8 v160, v30 offset:384
	ds_load_u8 v161, v30 offset:128
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[146:149], v55 offset:1024
	ds_load_b128 v[150:153], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v182, v30 offset:6016
	ds_load_u8 v183, v30 offset:5760
	ds_load_u8 v184, v30 offset:5504
	ds_load_u8 v185, v30 offset:5248
	v_mov_b32_e32 v42, s15
	ds_load_u8 v218, v30 offset:9088
	ds_load_u8 v219, v30 offset:8832
	ds_load_u8 v220, v30 offset:8576
	ds_load_u8 v221, v30 offset:8320
	ds_load_u8 v233, v30 offset:15232
	ds_load_u8 v234, v30 offset:14976
	ds_load_u8 v235, v30 offset:14720
	ds_load_u8 v236, v30 offset:14464
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v168, v52, v51, 0xc0c0004
	v_mov_b32_e32 v44, s17
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v170, v54, v53, 0xc0c0004
	v_mov_b32_e32 v43, s16
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_mov_b32_e32 v41, s14
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v163, v165, v164, 0xc0c0004
	v_perm_b32 v166, v48, v47, 0xc0c0004
	ds_load_u8 v164, v30 offset:11520
	ds_load_u8 v165, v30 offset:11264
	ds_load_u8 v171, v30 offset:12032
	ds_load_u8 v172, v30 offset:11776
	ds_load_u8 v186, v30 offset:4992
	ds_load_u8 v187, v30 offset:4736
	ds_load_u8 v188, v30 offset:4480
	ds_load_u8 v189, v30 offset:4224
	v_perm_b32 v167, v50, v49, 0xc0c0004
	ds_load_u8 v47, v30 offset:4352
	ds_load_u8 v48, v30 offset:4096
	ds_load_u8 v49, v30 offset:4864
	ds_load_u8 v50, v30 offset:4608
	ds_load_u8 v178, v30 offset:7040
	ds_load_u8 v179, v30 offset:6784
	ds_load_u8 v180, v30 offset:6528
	ds_load_u8 v181, v30 offset:6272
	v_lshl_or_b32 v168, v170, 16, v168
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v232, v211, v210, 0xc0c0004
	ds_load_u8 v210, v30 offset:12544
	ds_load_u8 v211, v30 offset:12288
	v_lshl_or_b32 v169, v167, 16, v166
	v_lshl_or_b32 v167, v163, 16, v162
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v32, v159, v32, 0xc0c0004
	v_mov_b32_e32 v39, s12
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v159, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v173, v48, v47, 0xc0c0004
	v_perm_b32 v165, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v190, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[154:157], v[150:153], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v205, v165, 16, v164
	v_lshl_or_b32 v166, v190, 16, v173
	ds_load_u8 v190, v30 offset:9472
	ds_load_u8 v191, v30 offset:9216
	ds_load_u8 v192, v30 offset:9984
	ds_load_u8 v193, v30 offset:9728
	ds_load_u8 v202, v30 offset:8448
	ds_load_u8 v203, v30 offset:8192
	ds_load_u8 v206, v30 offset:8960
	ds_load_u8 v207, v30 offset:8704
	ds_load_u8 v214, v30 offset:11136
	ds_load_u8 v215, v30 offset:10880
	ds_load_u8 v216, v30 offset:10624
	ds_load_u8 v217, v30 offset:10368
	ds_load_u8 v162, v30 offset:10496
	ds_load_u8 v163, v30 offset:10240
	ds_load_u8 v170, v30 offset:11008
	ds_load_u8 v173, v30 offset:10752
	ds_load_u8 v194, v30 offset:12160
	ds_load_u8 v195, v30 offset:11904
	ds_load_u8 v196, v30 offset:11648
	ds_load_u8 v197, v30 offset:11392
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v242, v211, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[166:169], v[142:145], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v165, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v190, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v191, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v192, v207, v206, 0xc0c0004
	v_lshl_or_b32 v203, v190, 16, v165
	ds_load_u8 v165, v30 offset:16128
	ds_load_u8 v212, v30 offset:15872
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v163, v173, v170, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v31 offset:3072
	ds_load_b128 v[198:201], v31 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v202, v192, 16, v191
	ds_load_u8 v213, v30 offset:14592
	ds_load_u8 v222, v30 offset:14336
	ds_load_u8 v223, v30 offset:15104
	ds_load_u8 v224, v30 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[206:209], v55 offset:3072
	ds_load_b128 v[190:193], v55 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v55, v30 offset:13568
	ds_load_u8 v225, v30 offset:13312
	ds_load_u8 v226, v30 offset:14080
	ds_load_u8 v227, v30 offset:13824
	ds_load_u8 v228, v30 offset:16256
	ds_load_u8 v229, v30 offset:16000
	ds_load_u8 v230, v30 offset:15744
	ds_load_u8 v231, v30 offset:15488
	v_lshl_or_b32 v204, v163, 16, v162
	ds_load_u8 v31, v30 offset:10112
	ds_load_u8 v162, v30 offset:9856
	ds_load_u8 v163, v30 offset:9600
	ds_load_u8 v164, v30 offset:9344
	v_wmma_i32_16x16x16_iu8 v[47:54], v[202:205], v[63:66], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v225, v225, v55, 0xc0c0004
	v_perm_b32 v165, v212, v165, 0xc0c0004
	v_perm_b32 v222, v222, v213, 0xc0c0004
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v212, v30 offset:13056
	ds_load_u8 v213, v30 offset:12800
	ds_load_u8 v224, v30 offset:14208
	ds_load_u8 v237, v30 offset:13952
	ds_load_u8 v238, v30 offset:13696
	ds_load_u8 v239, v30 offset:13440
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v226, v227, v226, 0xc0c0004
	ds_load_u8 v227, v30 offset:13184
	ds_load_u8 v240, v30 offset:12928
	ds_load_u8 v241, v30 offset:12672
	ds_load_u8 v30, v30 offset:12416
	v_perm_b32 v55, v59, v58, 0xc0c0004
	v_perm_b32 v58, v61, v60, 0xc0c0004
	v_perm_b32 v59, v158, v72, 0xc0c0004
	v_perm_b32 v60, v70, v69, 0xc0c0004
	v_perm_b32 v61, v161, v160, 0xc0c0004
	v_perm_b32 v69, v175, v174, 0xc0c0004
	v_perm_b32 v70, v181, v180, 0xc0c0004
	v_perm_b32 v72, v179, v178, 0xc0c0004
	v_lshl_or_b32 v211, v60, 16, v59
	v_lshl_or_b32 v210, v32, 16, v61
	v_perm_b32 v32, v177, v176, 0xc0c0004
	v_perm_b32 v158, v185, v184, 0xc0c0004
	v_perm_b32 v160, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v213, v212, 0xc0c0004
	v_lshl_or_b32 v213, v56, 16, v55
	v_lshl_or_b32 v212, v58, 16, v57
	v_perm_b32 v161, v187, v186, 0xc0c0004
	v_perm_b32 v31, v162, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[174:181], v[154:157], v[190:193], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[210:213], v[150:153], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v153, v69, 16, v32
	v_lshl_or_b32 v152, v72, 16, v70
	v_lshl_or_b32 v151, v159, 16, v158
	v_lshl_or_b32 v150, v161, 16, v160
	v_perm_b32 v32, v197, v196, 0xc0c0004
	v_perm_b32 v69, v195, v194, 0xc0c0004
	v_perm_b32 v70, v217, v216, 0xc0c0004
	v_perm_b32 v72, v215, v214, 0xc0c0004
	v_perm_b32 v158, v164, v163, 0xc0c0004
	v_perm_b32 v159, v221, v220, 0xc0c0004
	v_perm_b32 v160, v219, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[150:153], v[142:145], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v69, 16, v32
	v_lshl_or_b32 v144, v72, 16, v70
	v_lshl_or_b32 v143, v31, 16, v158
	v_lshl_or_b32 v142, v160, 16, v159
	v_lshl_or_b32 v214, v68, 16, v242
	v_perm_b32 v31, v231, v230, 0xc0c0004
	v_perm_b32 v32, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v239, v238, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[142:145], v[63:66], v[55:62] neg_lo:[1,1,0]
	v_perm_b32 v63, v236, v235, 0xc0c0004
	v_perm_b32 v64, v234, v233, 0xc0c0004
	v_perm_b32 v69, v237, v224, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v241, 0xc0c0004
	v_perm_b32 v70, v240, v227, 0xc0c0004
	v_lshl_or_b32 v217, v165, 16, v232
	v_lshl_or_b32 v216, v223, 16, v222
	v_lshl_or_b32 v215, v226, 16, v225
	v_lshl_or_b32 v66, v32, 16, v31
	v_lshl_or_b32 v65, v64, 16, v63
	v_lshl_or_b32 v64, v69, 16, v68
	v_lshl_or_b32 v63, v70, 16, v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[218:221], v25 offset:3072
	ds_load_b128 v[222:225], v25 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[158:165], v[154:157], v[146:149], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[214:217], v[26:29], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[26:29], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[210:213], v[146:149], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[210:213], v[190:193], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[154:157], v[206:209], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[210:213], v[206:209], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[166:169], v[17:20], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[150:153], v[17:20], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[166:169], v[198:201], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[150:153], v[198:201], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[166:169], v[170:173], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[150:153], v[170:173], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[202:205], v[13:16], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[202:205], v[9:12], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[142:145], v[9:12], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[202:205], v[5:8], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[142:145], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[214:217], v[1:4], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[63:66], v[1:4], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[214:217], v[222:225], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[63:66], v[222:225], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[214:217], v[218:221], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[63:66], v[218:221], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v48
	v_cvt_f32_i32_e32 v167, v49
	v_cvt_f32_i32_e32 v168, v50
	v_cvt_f32_i32_e32 v169, v51
	v_cvt_f32_i32_e32 v170, v52
	v_cvt_f32_i32_e32 v171, v53
	v_cvt_f32_i32_e32 v172, v54
	v_cvt_f32_i32_e32 v173, v55
	v_cvt_f32_i32_e32 v208, v56
	v_cvt_f32_i32_e32 v209, v57
	v_cvt_f32_i32_e32 v210, v58
	v_cvt_f32_i32_e32 v211, v59
	v_cvt_f32_i32_e32 v234, v60
	v_cvt_f32_i32_e32 v235, v61
	v_cvt_f32_i32_e32 v236, v62
	v_cvt_f32_i32_e32 v237, v158
	v_cvt_f32_i32_e32 v238, v159
	v_cvt_f32_i32_e32 v239, v160
	v_cvt_f32_i32_e32 v240, v161
	v_cvt_f32_i32_e32 v201, v162
	v_cvt_f32_i32_e32 v242, v163
	v_cvt_f32_i32_e32 v249, v164
	v_cvt_f32_i32_e32 v65, v165
	v_cvt_f32_i32_e32 v165, v25
	v_cvt_f32_i32_e32 v250, v26
	v_cvt_f32_i32_e32 v251, v27
	v_cvt_f32_i32_e32 v252, v28
	v_cvt_f32_i32_e32 v253, v29
	v_cvt_f32_i32_e32 v254, v30
	v_cvt_f32_i32_e32 v255, v31
	v_cvt_f32_i32_e32 v1, v32
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v33, v179
	v_mov_b32_e32 v179, 0
	v_cvt_f32_i32_e32 v202, v180
	v_cvt_f32_i32_e32 v203, v181
	v_cvt_f32_i32_e32 v204, v182
	v_cvt_f32_i32_e32 v205, v183
	v_cvt_f32_i32_e32 v207, v184
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v198, v186
	v_cvt_f32_i32_e32 v186, v187
	v_cvt_f32_i32_e32 v187, v188
	v_cvt_f32_i32_e32 v67, v189
	v_cvt_f32_i32_e32 v148, v190
	v_cvt_f32_i32_e32 v149, v191
	v_cvt_f32_i32_e32 v150, v192
	v_cvt_f32_i32_e32 v151, v193
	v_cvt_f32_i32_e32 v152, v194
	v_cvt_f32_i32_e32 v153, v195
	v_cvt_f32_i32_e32 v154, v196
	v_cvt_f32_i32_e32 v155, v197
	v_cvt_f32_i32_e32 v156, v39
	v_cvt_f32_i32_e32 v157, v40
	v_cvt_f32_i32_e32 v158, v41
	v_cvt_f32_i32_e32 v159, v42
	v_cvt_f32_i32_e32 v160, v43
	v_cvt_f32_i32_e32 v161, v44
	v_cvt_f32_i32_e32 v162, v45
	v_cvt_f32_i32_e32 v163, v46
	v_cvt_f32_i32_e32 v164, v47
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v71, off offset:8
	scratch_store_b32 off, v1, off
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s11, 0x31027000
	s_add_i32 s4, s26, s4
	s_mov_b32 s10, 0x7ffffffe
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v108, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v107, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v3, v0, s4, 1
	v_add_lshl_u32 v4, v105, s4, 1
	v_add_lshl_u32 v5, v106, s4, 1
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v206, 0, v23
	s_clause 0x3
	buffer_load_u16 v180, v1, s[8:11], 0 offen
	buffer_load_u16 v181, v3, s[8:11], 0 offen
	buffer_load_u16 v183, v4, s[8:11], 0 offen
	buffer_load_u16 v66, v5, s[8:11], 0 offen
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 32, v24
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v22, v1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_add_nc_u32_e32 v71, v1, v21
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	v_mov_b32_e32 v226, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v71, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v206 offset:40960
	ds_load_b128 v[21:24], v206 offset:40976
	ds_load_b128 v[25:28], v206 offset:41472
	ds_load_b128 v[29:32], v206 offset:41488
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
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v212, s1, v37
	v_add_nc_u32_e32 v215, s1, v36
	v_add_nc_u32_e32 v214, s1, v35
	v_add_nc_u32_e32 v13, s1, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v213, s45, v38
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[34:37], v212
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v213 offset:3328
	ds_load_u8 v2, v213 offset:3072
	ds_load_u8 v3, v213 offset:3840
	ds_load_u8 v4, v213 offset:3584
	ds_load_u8 v5, v213 offset:2304
	ds_load_u8 v6, v213 offset:2048
	ds_load_u8 v7, v213 offset:2816
	ds_load_u8 v8, v213 offset:2560
	ds_load_u8 v9, v213 offset:1280
	ds_load_u8 v10, v213 offset:1024
	ds_load_u8 v11, v213 offset:1792
	ds_load_u8 v12, v213 offset:1536
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v151, off offset:44
	scratch_store_b32 off, v152, off offset:48
	scratch_store_b32 off, v153, off offset:52
	scratch_store_b32 off, v164, off offset:16
	scratch_store_b32 off, v150, off offset:40
	scratch_store_b32 off, v154, off offset:56
	scratch_store_b32 off, v155, off offset:60
	scratch_store_b32 off, v165, off offset:20
	scratch_store_b32 off, v156, off offset:64
	scratch_store_b32 off, v157, off offset:68
	scratch_store_b32 off, v158, off offset:72
	scratch_store_b32 off, v159, off offset:76
	scratch_store_b32 off, v160, off offset:80
	scratch_store_b32 off, v161, off offset:84
	scratch_store_b32 off, v162, off offset:88
	scratch_store_b32 off, v163, off offset:92
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(12)
	scratch_store_b128 off, v[34:37], off offset:112 ; 16-byte Folded Spill
	ds_load_b128 v[37:40], v215 offset:1024
	ds_load_b128 v[142:145], v215
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v14, v213 offset:256
	ds_load_u8 v15, v213
	ds_load_u8 v16, v213 offset:768
	ds_load_u8 v45, v213 offset:512
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v33, off offset:24
	scratch_store_b32 off, v234, off offset:28
	scratch_store_b32 off, v202, off offset:96
	scratch_store_b32 off, v203, off offset:100
	scratch_store_b32 off, v204, off offset:104
	scratch_store_b32 off, v247, off offset:108
	v_lshl_or_b32 v48, v2, 16, v1
	v_perm_b32 v1, v8, v7, 0xc0c0004
	v_perm_b32 v2, v10, v9, 0xc0c0004
	v_dual_mov_b32 v203, v236 :: v_dual_mov_b32 v204, v237
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v148, off offset:32
	scratch_store_b32 off, v149, off offset:36
	v_lshl_or_b32 v47, v1, 16, v3
	v_lshl_or_b32 v46, v4, 16, v2
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v15, v14, 0xc0c0004
	v_mov_b32_e32 v202, v235
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v45, v16, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.l, v66.l
	v_dual_mov_b32 v184, v238 :: v_dual_mov_b32 v189, v239
	v_mov_b32_e32 v197, v243
	v_lshl_or_b32 v45, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	ds_load_u8 v9, v213 offset:7424
	ds_load_u8 v10, v213 offset:7168
	ds_load_u8 v11, v213 offset:7936
	ds_load_u8 v12, v213 offset:7680
	ds_load_u8 v53, v213 offset:6400
	ds_load_u8 v54, v213 offset:6144
	ds_load_u8 v14, v213 offset:6912
	ds_load_u8 v15, v213 offset:6656
	ds_load_u8 v61, v213 offset:5376
	ds_load_u8 v62, v213 offset:5120
	ds_load_u8 v150, v213 offset:4096
	ds_load_u8 v151, v213 offset:4864
	ds_load_u8 v152, v213 offset:4608
	ds_load_u8 v161, v213 offset:8192
	ds_load_u8 v235, v213 offset:4224
	ds_load_u8 v236, v213 offset:4992
	ds_load_u8 v237, v213 offset:4736
	ds_load_u8 v234, v213 offset:4480
	ds_load_u8 v154, v213 offset:11776
	ds_load_u8 v164, v213 offset:15616
	ds_load_u8 v155, v213 offset:10496
	ds_load_u8 v157, v213 offset:11008
	ds_load_u8 v158, v213 offset:10752
	ds_load_u8 v156, v213 offset:10240
	ds_load_u8 v159, v213 offset:9472
	ds_load_u8 v160, v213 offset:9216
	ds_load_u8 v162, v213 offset:8960
	ds_load_u8 v163, v213 offset:8704
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v55, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v56, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v213 offset:5888
	ds_load_u8 v63, v213 offset:5632
	ds_load_u8 v64, v213 offset:4352
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v153, v15, v14, 0xc0c0004
	v_mov_b32_e32 v7, s18
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v165, v213 offset:15360
	ds_load_u8 v216, v213 offset:16128
	ds_load_u8 v217, v213 offset:15872
	v_mov_b32_e32 v6, s17
	v_lshl_or_b32 v55, v153, 16, v53
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	ds_load_u8 v61, v213 offset:11520
	ds_load_u8 v62, v213 offset:11264
	ds_load_u8 v153, v213 offset:12032
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[146:149], v13
	ds_load_b128 v[57:60], v13 offset:1024
	ds_load_b128 v[41:44], v13 offset:3072
	ds_load_b128 v[49:52], v13 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	ds_load_u8 v66, v213 offset:11904
	ds_load_u8 v68, v213 offset:10624
	ds_load_u8 v72, v213 offset:10368
	ds_load_u8 v70, v213 offset:11136
	ds_load_u8 v69, v213 offset:10880
	v_mov_b16_e64 v182.l, v181.l
	v_mov_b16_e64 v181.l, v180.l
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v63, v54, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v63, v150, v64, 0xc0c0004
	v_perm_b32 v64, v152, v151, 0xc0c0004
	ds_load_u8 v150, v213 offset:9984
	ds_load_u8 v151, v213 offset:9728
	ds_load_u8 v152, v213 offset:8448
	v_dual_mov_b32 v180, v71 :: v_dual_mov_b32 v71, v198
	v_lshl_or_b32 v54, v54, 16, v53
	v_lshl_or_b32 v53, v64, 16, v63
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v154, v153, 0xc0c0004
	v_perm_b32 v63, v156, v155, 0xc0c0004
	v_perm_b32 v153, v158, v157, 0xc0c0004
	v_perm_b32 v154, v160, v159, 0xc0c0004
	ds_load_u8 v155, v213 offset:3456
	ds_load_u8 v156, v213 offset:3200
	ds_load_u8 v157, v213 offset:3968
	ds_load_u8 v158, v213 offset:3712
	ds_load_u8 v159, v213 offset:2432
	ds_load_u8 v160, v213 offset:2176
	v_lshl_or_b32 v64, v62, 16, v61
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v153, 16, v63
	v_mov_b32_e32 v198, v176
	v_dual_mov_b32 v176, v209 :: v_dual_mov_b32 v209, v244
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[142:145], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v151, v161, v152, 0xc0c0004
	v_perm_b32 v152, v163, v162, 0xc0c0004
	v_perm_b32 v162, v217, v216, 0xc0c0004
	v_perm_b32 v161, v165, v164, 0xc0c0004
	v_lshl_or_b32 v62, v150, 16, v154
	ds_load_u8 v163, v213 offset:14592
	ds_load_u8 v164, v213 offset:14336
	ds_load_u8 v165, v213 offset:15104
	ds_load_u8 v224, v213 offset:14848
	ds_load_u8 v225, v213 offset:13568
	ds_load_u8 v226, v213 offset:13312
	ds_load_u8 v227, v213 offset:14080
	v_lshl_or_b32 v61, v152, 16, v151
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v150, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v151, v158, v157, 0xc0c0004
	v_dual_mov_b32 v199, v245 :: v_dual_mov_b32 v196, v246
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v152, v160, v159, 0xc0c0004
	ds_load_u8 v153, v213 offset:2944
	ds_load_u8 v154, v213 offset:2688
	ds_load_u8 v155, v213 offset:1408
	ds_load_u8 v156, v213 offset:1152
	ds_load_u8 v157, v213 offset:1920
	ds_load_u8 v158, v213 offset:1664
	ds_load_u8 v159, v213 offset:384
	ds_load_u8 v160, v213 offset:128
	ds_load_u8 v216, v213 offset:896
	ds_load_u8 v217, v213 offset:640
	ds_load_u8 v218, v213 offset:7552
	ds_load_u8 v219, v213 offset:7296
	ds_load_u8 v220, v213 offset:8064
	ds_load_u8 v221, v213 offset:7808
	ds_load_u8 v222, v213 offset:6528
	ds_load_u8 v223, v213 offset:6272
	ds_load_u8 v228, v213 offset:7040
	ds_load_u8 v229, v213 offset:6784
	ds_load_u8 v230, v213 offset:5504
	ds_load_u8 v231, v213 offset:5248
	ds_load_u8 v232, v213 offset:6016
	ds_load_u8 v233, v213 offset:5760
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v154, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_lshl_or_b32 v153, v151, 16, v150
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	v_dual_mov_b32 v179, v67 :: v_dual_mov_b32 v200, v248
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v158, v217, v216, 0xc0c0004
	ds_load_u8 v159, v213 offset:13824
	v_lshl_or_b32 v152, v154, 16, v152
	v_lshl_or_b32 v151, v156, 16, v155
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v154, v219, v218, 0xc0c0004
	v_lshl_or_b32 v150, v158, 16, v157
	ds_load_u8 v158, v213 offset:11648
	ds_load_u8 v160, v213 offset:11392
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v155, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v156, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v229, v231, v230, 0xc0c0004
	v_perm_b32 v231, v235, v234, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v230, v233, v232, 0xc0c0004
	v_perm_b32 v232, v237, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[216:223], v[150:153], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v155, 16, v154
	v_lshl_or_b32 v156, v228, 16, v156
	v_lshl_or_b32 v155, v230, 16, v229
	v_lshl_or_b32 v154, v232, 16, v231
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_perm_b32 v164, v224, v165, 0xc0c0004
	v_perm_b32 v165, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v159, v159, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[216:223], v[154:157], v[142:145], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[45:48], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v160, v158, 0xc0c0004
	ds_load_u8 v160, v213 offset:12160
	v_wmma_i32_16x16x16_iu8 v[232:239], v[150:153], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v67, v65 :: v_dual_mov_b32 v190, v250
	v_dual_mov_b32 v109, v240 :: v_dual_mov_b32 v188, v249
	v_dual_mov_b32 v65, v242 :: v_dual_mov_b32 v192, v252
	v_wmma_i32_16x16x16_iu8 v[240:247], v[45:48], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v191, v251 :: v_dual_mov_b32 v194, v254
	v_mov_b32_e32 v193, v253
	v_mov_b32_e32 v195, v255
	v_wmma_i32_16x16x16_iu8 v[248:255], v[150:153], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[150:153], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v50, v213 offset:9600
	ds_load_u8 v51, v213 offset:9344
	ds_load_u8 v52, v213 offset:10112
	ds_load_u8 v57, v213 offset:9856
	ds_load_u8 v58, v213 offset:8576
	ds_load_u8 v59, v213 offset:8320
	ds_load_u8 v60, v213 offset:9088
	ds_load_u8 v150, v213 offset:8832
	v_wmma_i32_16x16x16_iu8 v[224:231], v[53:56], v[37:40], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[232:239], v[154:157], v[37:40], v[232:239] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[37:40], v215 offset:2048
	ds_load_b128 v[44:47], v215 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v43, v162, 16, v161
	v_lshl_or_b32 v42, v164, 16, v163
	v_lshl_or_b32 v41, v159, 16, v165
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v57, v52, 0xc0c0004
	ds_load_u8 v57, v213 offset:12800
	v_perm_b32 v48, v66, v160, 0xc0c0004
	v_perm_b32 v66, v72, v68, 0xc0c0004
	v_perm_b32 v68, v69, v70, 0xc0c0004
	ds_load_u8 v69, v213 offset:13056
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v49, v48, 16, v158
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[53:56], v[37:40], v[240:247] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v68, 16, v66
	ds_load_u8 v66, v213 offset:12544
	ds_load_u8 v68, v213 offset:12288
	v_wmma_i32_16x16x16_iu8 v[248:255], v[154:157], v[37:40], v[248:255] neg_lo:[1,1,0]
	v_perm_b32 v59, v150, v60, 0xc0c0004
	ds_load_u8 v60, v213 offset:15744
	ds_load_u8 v70, v213 offset:15488
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[53:56], v[44:47], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[154:157], v[44:47], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v44, v213 offset:14208
	ds_load_u8 v45, v213 offset:13952
	ds_load_u8 v162, v213 offset:12672
	ds_load_u8 v163, v213 offset:12416
	ds_load_u8 v164, v213 offset:13184
	ds_load_u8 v165, v213 offset:12928
	ds_load_u8 v37, v213 offset:16256
	ds_load_u8 v38, v213 offset:16000
	ds_load_u8 v39, v213 offset:14720
	ds_load_u8 v72, v213 offset:14464
	ds_load_u8 v158, v213 offset:15232
	ds_load_u8 v159, v213 offset:14976
	ds_load_u8 v160, v213 offset:13696
	ds_load_u8 v161, v213 offset:13440
	v_lshl_or_b32 v47, v51, 16, v50
	v_lshl_or_b32 v46, v59, 16, v58
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[150:153], v212 offset:1024
	ds_load_b128 v[154:157], v212 offset:2048
	ds_load_b128 v[50:53], v214 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v58, v57, v69, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[54:57], v214
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v40, v68, v66, 0xc0c0004
	v_mov_b16_e32 v66.l, v33.l
	scratch_load_b128 v[33:36], off, off offset:112 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v45, v163, v162, 0xc0c0004
	v_lshl_or_b32 v40, v58, 16, v40
	v_perm_b32 v58, v70, v60, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v165, v164, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[162:165], v214 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v38, v72, v39, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v39, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v59, v161, v160, 0xc0c0004
	v_lshl_or_b32 v158, v60, 16, v45
	v_lshl_or_b32 v161, v37, 16, v58
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[224:231], v[61:64], v[150:153], v[224:231] neg_lo:[1,1,0]
	v_lshl_or_b32 v160, v39, 16, v38
	v_lshl_or_b32 v159, v44, 16, v59
	v_wmma_i32_16x16x16_iu8 v[232:239], v[46:49], v[150:153], v[232:239] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[61:64], v[154:157], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[46:49], v[154:157], v[248:255] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[224:231], v[40:43], v[50:53], v[224:231] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v153, off, off offset:52
	scratch_load_b32 v152, off, off offset:48
	scratch_load_b32 v151, off, off offset:44
	scratch_load_b32 v150, off, off offset:40
	v_wmma_i32_16x16x16_iu8 v[232:239], v[158:161], v[50:53], v[232:239] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v157, off, off offset:68
	scratch_load_b32 v156, off, off offset:64
	scratch_load_b32 v155, off, off offset:60
	scratch_load_b32 v154, off, off offset:56
	v_cvt_f32_i32_e32 v53, v231
	v_cvt_f32_i32_e32 v50, v228
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[40:43], v[162:165], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[158:161], v[162:165], v[248:255] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v163, off, off offset:92
	scratch_load_b32 v162, off, off offset:88
	scratch_load_b32 v165, off, off offset:20
	scratch_load_b32 v164, off, off offset:16
	v_cvt_f32_i32_e32 v58, v236
	v_mov_b32_e32 v236, v203
	v_cvt_f32_i32_e32 v59, v237
	v_mov_b32_e32 v237, v204
	v_cvt_f32_i32_e32 v51, v229
	v_cvt_f32_i32_e32 v52, v230
	v_cvt_f32_i32_e32 v60, v238
	v_mov_b32_e32 v238, v184
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v203, off, off offset:100
	scratch_load_b32 v204, off, off offset:104
	s_waitcnt vmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[46:49], v[33:36], v[216:223] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[33:36], v212 offset:3072
	ds_load_b128 v[212:215], v214 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[40:43], v[54:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[158:161], v[54:57], v[216:223] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v54, v232
	v_cvt_f32_i32_e32 v56, v234
	v_cvt_f32_i32_e32 v57, v235
	v_mov_b32_e32 v235, v202
	scratch_load_b32 v202, off, off offset:96 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v39, v217
	v_cvt_f32_i32_e32 v44, v222
	v_cvt_f32_i32_e32 v45, v223
	v_cvt_f32_i32_e32 v55, v233
	v_cvt_f32_i32_e32 v217, v248
	v_mov_b32_e32 v248, v200
	v_cvt_f32_i32_e32 v222, v253
	v_mov_b32_e32 v253, v193
	v_cvt_f32_i32_e32 v223, v254
	v_mov_b32_e32 v254, v194
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[61:64], v[33:36], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[46:49], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v34, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[40:43], v[212:215], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[158:161], v[212:215], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v161, off, off offset:84
	scratch_load_b32 v160, off, off offset:80
	scratch_load_b32 v159, off, off offset:76
	scratch_load_b32 v158, off, off offset:72
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v216
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v234, off, off offset:28
	scratch_load_b32 v33, off, off offset:24
	v_cvt_f32_i32_e32 v216, v247
	scratch_load_b32 v247, off, off offset:108 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v231, v148
	scratch_load_b32 v148, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v232, v149
	scratch_load_b32 v149, off, off offset:36 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v40, v218
	v_cvt_f32_i32_e32 v41, v219
	v_cvt_f32_i32_e32 v42, v220
	v_cvt_f32_i32_e32 v43, v221
	v_cvt_f32_i32_e32 v46, v224
	v_cvt_f32_i32_e32 v47, v225
	v_cvt_f32_i32_e32 v48, v226
	v_cvt_f32_i32_e32 v49, v227
	v_cvt_f32_i32_e32 v61, v239
	v_mov_b32_e32 v239, v189
	v_cvt_f32_i32_e32 v62, v240
	v_mov_b32_e32 v240, v109
	v_cvt_f32_i32_e32 v63, v241
	v_cvt_f32_i32_e32 v64, v242
	v_mov_b32_e32 v242, v65
	v_cvt_f32_i32_e32 v212, v243
	v_mov_b32_e32 v243, v197
	v_cvt_f32_i32_e32 v213, v244
	v_cvt_f32_i32_e32 v214, v245
	v_dual_mov_b32 v245, v199 :: v_dual_mov_b32 v244, v209
	v_dual_mov_b32 v209, v176 :: v_dual_mov_b32 v176, v198
	v_dual_mov_b32 v198, v71 :: v_dual_mov_b32 v71, v180
	v_mov_b16_e64 v180.l, v181.l
	v_mov_b16_e64 v181.l, v182.l
	v_cvt_f32_i32_e32 v215, v246
	v_dual_mov_b32 v246, v196 :: v_dual_mov_b32 v65, v67
	v_mov_b32_e32 v67, v179
	v_mov_b32_e32 v179, v34
	v_cvt_f32_i32_e32 v218, v249
	v_mov_b32_e32 v249, v188
	v_cvt_f32_i32_e32 v219, v250
	v_mov_b32_e32 v250, v190
	v_cvt_f32_i32_e32 v220, v251
	v_mov_b32_e32 v251, v191
	v_cvt_f32_i32_e32 v221, v252
	v_mov_b32_e32 v252, v192
	v_cvt_f32_i32_e32 v224, v255
	v_mov_b32_e32 v255, v195
	v_cvt_f32_i32_e32 v225, v142
	v_cvt_f32_i32_e32 v226, v143
	v_cvt_f32_i32_e32 v227, v144
	v_cvt_f32_i32_e32 v228, v145
	v_cvt_f32_i32_e32 v229, v146
	v_cvt_f32_i32_e32 v230, v147
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v233, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s44, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v108, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v107, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v35, v0, s1, 1
	v_add_lshl_u32 v36, v105, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v37, v106, s1, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v38, v2, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v37, v37, s[8:11], 0 offen
.Ltmp20:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, 0
.Ltmp21:
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v2.h, v66.l
	s_mov_b32 s0, 0x76543210
.Ltmp22:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s8, s20
.Ltmp23:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v66, v32, v2
	v_mul_f32_e32 v68, v31, v2
	v_mul_f32_e32 v69, v30, v2
	v_mul_f32_e32 v105, v27, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v69, v161, v140
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v140, v69, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v70, v29, v2 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v72, v28, v2
	v_mul_f32_e32 v106, v26, v2
	v_mul_f32_e32 v107, v25, v2
	v_mul_f32_e32 v108, v24, v2
	v_mul_f32_e32 v109, v23, v2
	v_mul_f32_e32 v142, v22, v2
	v_mul_f32_e32 v143, v21, v2
	v_mul_f32_e32 v144, v20, v2
	v_mul_f32_e32 v145, v19, v2
	v_mul_f32_e32 v146, v18, v2
	v_mul_f32_e32 v147, v17, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v183.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v109, v154, v132
	v_fma_f32 v66, v66, v163, v134
	v_fma_f32 v70, v70, v160, v139
	v_fma_f32 v147, v147, v148, v126
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v148, v32, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v132, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v72, v159, v138
	v_fma_f32 v106, v106, v157, v136
	v_fma_f32 v107, v107, v156, v135
	v_fma_f32 v132, v148, v67, v125
	v_fma_f32 v108, v108, v155, v133
	v_fma_f32 v142, v142, v153, v131
	v_fma_f32 v143, v143, v152, v130
	v_fma_f32 v144, v144, v151, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v125, v125, v132, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v132, off, off         ; 4-byte Folded Reload
	v_fma_f32 v145, v145, v150, v128
	v_fma_f32 v146, v146, v149, v127
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v149, v31, v2
	v_mul_f32_e32 v150, v30, v2
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v151, v29, v2 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v105, v158, v137
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v152, v28, v2
	v_mul_f32_e32 v153, v27, v2
	v_mul_f32_e32 v154, v26, v2
	v_mul_f32_e32 v155, v25, v2
	v_mul_f32_e32 v156, v24, v2
	v_mul_f32_e32 v157, v23, v2
	v_mul_f32_e32 v158, v22, v2
	v_mul_f32_e32 v159, v21, v2
	v_mul_f32_e32 v160, v20, v2
	v_mul_f32_e32 v161, v19, v2
	v_mul_f32_e32 v163, v17, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v68, v162, v141
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v162, v18, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v181.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v134, v66, s3
	v_cndmask_b32_e64 v70, v139, v70, s3
	v_cndmask_b32_e64 v68, v141, v68, s3
	v_cndmask_b32_e64 v72, v138, v72, s3
	v_cndmask_b32_e64 v105, v137, v105, s3
	v_cndmask_b32_e64 v106, v136, v106, s3
	v_cndmask_b32_e64 v107, v135, v107, s3
	v_cndmask_b32_e64 v108, v133, v108, s3
	v_cndmask_b32_e64 v131, v131, v142, s3
	v_cndmask_b32_e64 v130, v130, v143, s3
	v_cndmask_b32_e64 v129, v129, v144, s3
	v_cndmask_b32_e64 v128, v128, v145, s3
	v_cndmask_b32_e64 v127, v127, v146, s3
	v_cndmask_b32_e64 v126, v126, v147, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v133, v149, v187, v124
	v_fma_f32 v134, v150, v186, v123
	v_fma_f32 v135, v151, v198, v122
	v_fma_f32 v136, v152, v185, v121
	v_fma_f32 v137, v153, v207, v120
	v_fma_f32 v138, v154, v205, v119
	v_fma_f32 v139, v155, v204, v118
	v_fma_f32 v140, v156, v203, v117
	v_fma_f32 v141, v157, v202, v116
	v_fma_f32 v142, v158, v33, v115
	v_fma_f32 v143, v159, v178, v114
	v_fma_f32 v144, v160, v177, v113
	v_fma_f32 v145, v161, v176, v112
	v_fma_f32 v146, v162, v175, v111
	v_fma_f32 v147, v163, v174, v110
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v148, v32, v2
	v_mul_f32_e32 v149, v31, v2
	v_mul_f32_e32 v150, v30, v2
	v_mul_f32_e32 v151, v29, v2
	v_mul_f32_e32 v152, v28, v2
	v_mul_f32_e32 v153, v27, v2
	v_mul_f32_e32 v154, v26, v2
	v_mul_f32_e32 v155, v25, v2
	v_mul_f32_e32 v156, v24, v2
	v_mul_f32_e32 v157, v23, v2
	v_mul_f32_e32 v158, v22, v2
	v_mul_f32_e32 v159, v21, v2
	v_mul_f32_e32 v160, v20, v2
	v_mul_f32_e32 v161, v19, v2
	v_mul_f32_e32 v162, v18, v2
	v_mul_f32_e32 v163, v17, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v180.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v119, v119, v138, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v138, v154, v250, v98
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v17, v17, v2
	v_mul_f32_e32 v28, v28, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v98, v98, v138, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v26, v26, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v138, v17, v164, v73
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v25, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v210, v84
	v_fma_f32 v27, v27, v209, v83
	v_fma_f32 v26, v26, v208, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v71, v17 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v173, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v28, s3
	v_cndmask_b32_e64 v83, v83, v27, s3
	v_cndmask_b32_e64 v82, v82, v26, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v32, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v81, v25, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v206 offset:41472
	v_mul_f32_e32 v31, v31, v2
	v_mul_f32_e32 v30, v30, v2
	v_mul_f32_e32 v29, v29, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v236, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v138, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v31, v235, v87
	v_fma_f32 v30, v30, v234, v86
	v_fma_f32 v29, v29, v211, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v88, v32, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v156, v65, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v87, v31, s3
	v_cndmask_b32_e64 v86, v86, v30, s3
	v_cndmask_b32_e64 v85, v85, v29, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[29:32], v206 offset:41488
	v_mul_f32_e32 v24, v24, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v124, v133, s3
	v_cndmask_b32_e64 v123, v123, v134, s3
	v_cndmask_b32_e64 v122, v122, v135, s3
	v_cndmask_b32_e64 v121, v121, v136, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v138, v25, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v120, v137, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v134, v150, v254, v102
	v_fma_f32 v136, v152, v252, v100
	v_fma_f32 v137, v153, v251, v99
	v_fma_f32 v16, v138, v16, v81
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v22, v2
	v_mul_f32_e32 v21, v21, v2
	v_mul_f32_e32 v20, v20, v2
	v_mul_f32_e32 v18, v18, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v81, v16, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v23, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v96, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v96, v24, v172, v80
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v172, v29, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v133, v149, v255, v103
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v173, v30, v36
	v_mul_f32_e32 v174, v31, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v135, v151, v253, v101
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v16, v16, v16 :: v_dual_mul_f32 v19, v19, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v103, v133, s3
	v_cndmask_b32_e64 v102, v102, v134, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v101, v101, v135, s3
	v_cndmask_b32_e64 v100, v100, v136, s3
	v_cndmask_b32_e64 v99, v99, v137, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v133, v22, v170, v78
	v_fma_f32 v134, v21, v169, v77
	v_fma_f32 v135, v20, v168, v76
	v_fma_f32 v137, v18, v166, v74
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, 0, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v136, v19, v167, v75
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[17:20], v206 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v80, v96, s3
	v_cndmask_b32_e64 v74, v74, v137, s3
	v_cndmask_b32_e64 v111, v111, v146, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v146, v163, v237, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v118, v118, v139, s3
	v_cndmask_b32_e64 v117, v117, v140, s3
	v_cndmask_b32_e64 v115, v115, v142, s3
	v_cndmask_b32_e64 v113, v113, v144, s3
	v_cndmask_b32_e64 v89, v89, v146, s3
	v_cndmask_b32_e64 v78, v78, v133, s3
	v_cndmask_b32_e64 v76, v76, v135, s3
	v_cndmask_b32_e64 v116, v116, v141, s3
	v_cndmask_b32_e64 v114, v114, v143, s3
	v_cndmask_b32_e64 v112, v112, v145, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v153, v25, v35
	v_mul_f32_e32 v168, v25, v36
	v_dual_mul_f32 v170, v27, v36 :: v_dual_mul_f32 v25, v25, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v141, v158, v242, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v110, v147, s3
	v_cndmask_b32_e64 v77, v77, v134, s3
	v_cndmask_b32_e64 v75, v75, v136, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v26, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v94, v141, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v28, v35
	v_mul_f32_e32 v158, v30, v35
	v_mul_f32_e32 v169, v26, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v25, v1, v107
	v_fma_f32 v138, v174, v223, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v107, v1, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, 0, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v132, v148, v132, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v104, v132, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v132, v23, v171, v79
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[21:24], v206 offset:40976
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v146, v18, v35
	v_mul_f32_e32 v148, v20, v35
	v_mul_f32_e32 v163, v20, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v79, v132, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v147, v19, v35
	v_mul_f32_e32 v171, v28, v36
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v137, v24, v38 :: v_dual_mul_f32 v150, v22, v35
	v_mul_f32_e32 v152, v24, v35
	v_mul_f32_e32 v167, v24, v36
	v_mul_f32_e32 v24, v24, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v137, v15, v80
	v_fma_f32 v144, v161, v239, v91
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v161, v18, v36
	v_mul_f32_e32 v149, v21, v35
	v_mul_f32_e32 v151, v23, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v80, v15, s2
	v_cndmask_b32_e64 v91, v91, v144, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v21, v36
	v_mul_f32_e32 v166, v23, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v137, v173, v222, v123
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, v15, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v232, v108
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v96, v18, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v133, v20, v38
	v_mul_f32_e32 v135, v22, v38
	v_mul_f32_e32 v18, v18, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v139, v155, v165, v97
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v165, v22, v36 :: v_dual_mul_f32 v20, v20, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v140, v157, v249, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v22, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v142, v159, v201, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v97, v139, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v139, v26, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v140, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v140, v27, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v142, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v142, v29, v38 :: v_dual_mul_f32 v155, v27, v35
	v_mul_f32_e32 v157, v29, v35
	v_mul_f32_e32 v27, v27, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v143, v160, v240, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v29, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v145, v162, v238, v90
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v88, v17, v38
	v_mul_f32_e32 v132, v19, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v92, v143, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v134, v21, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v90, v145, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v136, v23, v38
	v_mul_f32_e32 v141, v28, v38
	v_mul_f32_e32 v143, v30, v38
	v_mul_f32_e32 v144, v31, v38
	v_dual_mul_f32 v38, v32, v38 :: v_dual_mul_f32 v145, v17, v35
	v_mul_f32_e32 v159, v31, v35
	v_dual_mul_f32 v35, v32, v35 :: v_dual_mul_f32 v160, v17, v36
	v_mul_f32_e32 v162, v19, v36
	v_dual_mul_f32 v36, v32, v36 :: v_dual_mul_f32 v17, v17, v37
	v_mul_f32_e32 v19, v19, v37
	v_mul_f32_e32 v21, v21, v37
	v_mul_f32_e32 v23, v23, v37
	v_mul_f32_e32 v26, v26, v37
	v_mul_f32_e32 v28, v28, v37
	v_mul_f32_e32 v30, v30, v37
	v_mul_f32_e32 v31, v31, v37
	v_mul_f32_e32 v32, v32, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v139, v39, v82
	v_fma_f32 v3, v27, v3, v105
	v_fma_f32 v38, v38, v45, v34
	v_fma_f32 v25, v26, v233, v106
	v_fma_f32 v45, v146, v47, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v82, v37, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v29, v5, v70
	v_fma_f32 v47, v148, v49, v92
	v_fma_f32 v49, v150, v51, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v90, v45, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v27, v27, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v88, v179, v73
	v_fma_f32 v51, v152, v53, v65
	v_fma_f32 v53, v154, v55, v98
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v37, v37, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v55, v156, v57, v100
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v73, v33, s2
	v_cndmask_b32_e64 v33, v34, v38, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v158, v59, v102
	v_fma_f32 v59, v160, v62, v110
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v27, 0, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v132, v10, v75
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v33, v33, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v140, v40, v83
	v_fma_f32 v40, v141, v41, v84
	v_fma_f32 v132, v168, v217, v118
	v_fma_f32 v35, v35, v61, v104
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v33, 0, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v142, v42, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v84, v40, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v143, v43, v86
	v_fma_f32 v43, v144, v44, v87
	v_fma_f32 v44, v145, v46, v89
	v_fma_f32 v46, v147, v48, v91
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v29, v29, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v149, v50, v93
	v_fma_f32 v50, v151, v52, v95
	v_fma_f32 v52, v153, v54, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v91, v46, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v29, 0, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v136, v14, v79
	v_fma_f32 v54, v155, v56, v99
	v_fma_f32 v56, v157, v58, v101
	v_fma_f32 v58, v159, v60, v103
	v_fma_f32 v60, v161, v63, v111
	v_fma_f32 v4, v28, v4, v72
	v_fma_f32 v6, v30, v6, v69
	v_fma_f32 v7, v31, v7, v68
	v_fma_f32 v8, v32, v8, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v79, v14, s2
	v_cndmask_b32_e64 v28, v83, v39, s2
	v_cndmask_b32_e64 v30, v85, v41, s2
	v_cndmask_b32_e64 v32, v87, v43, s2
	v_cndmask_b32_e64 v39, v92, v47, s2
	v_cndmask_b32_e64 v40, v93, v48, s2
	v_cndmask_b32_e64 v41, v94, v49, s2
	v_cndmask_b32_e64 v43, v65, v51, s2
	v_cndmask_b32_e64 v47, v100, v55, s2
	v_cndmask_b32_e64 v51, v110, v59, s2
	v_cndmask_b32_e64 v59, v118, v132, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v38, v38, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v162, v64, v112
	v_fma_f32 v64, v165, v214, v115
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v86, v42, s2
	v_cndmask_b32_e64 v34, v89, v44, s2
	v_cndmask_b32_e64 v44, v97, v52, s2
	v_cndmask_b32_e64 v35, v104, v35, s2
	v_cndmask_b32_e64 v52, v111, v60, s2
	v_cndmask_b32_e64 v6, v69, v6, s2
	v_cndmask_b32_e64 v7, v68, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v68, 0, v37 :: v_dual_max_f32 v37, v40, v40
	v_max_f32_e32 v26, 0, v26
	v_dual_max_f32 v69, 0, v38 :: v_dual_max_f32 v38, v41, v41
	v_max_f32_e32 v41, v47, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v75, v10, s2
	v_cndmask_b32_e64 v45, v98, v53, s2
	v_cndmask_b32_e64 v48, v101, v56, s2
	v_cndmask_b32_e64 v56, v115, v64, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v14, 0, v14
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v35, 0, v35
	v_max_f32_e32 v31, v31, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v134, v12, v77
	v_fma_f32 v134, v170, v219, v120
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v34, v34, v34
	v_dual_max_f32 v82, 0, v41 :: v_dual_max_f32 v41, v52, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v163, v212, v113
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v95, v50, s2
	v_cndmask_b32_e64 v50, v103, v58, s2
	v_cndmask_b32_e64 v53, v112, v61, s2
	v_cndmask_b32_e64 v61, v120, v134, s2
	v_cndmask_b32_e64 v5, v70, v5, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v10, v10, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v66, v8, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v85, 0, v41
	v_max_f32_e32 v70, 0, v37
	v_max_f32_e32 v37, v45, v45
	v_dual_max_f32 v41, v56, v56 :: v_dual_max_f32 v66, 0, v34
	v_max_f32_e32 v34, v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v224, v125
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v99, v54, s2
	v_cndmask_b32_e64 v49, v102, v57, s2
	v_cndmask_b32_e64 v54, v113, v62, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v47, 0, v37
	v_dual_max_f32 v40, v43, v43 :: v_dual_max_f32 v39, v42, v42
	v_dual_max_f32 v43, 0, v34 :: v_dual_max_f32 v34, v44, v44
	v_dual_max_f32 v42, v48, v48 :: v_dual_max_f32 v37, v50, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v166, v215, v116
	v_fma_f32 v19, v19, v227, v128
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v123, v137, s2
	v_cndmask_b32_e64 v36, v125, v36, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v44, 0, v34
	v_max_f32_e32 v34, v49, v49
	v_dual_max_f32 v52, 0, v37 :: v_dual_max_f32 v37, v54, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v164, v213, v114
	v_fma_f32 v17, v17, v225, v126
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v116, v88, s2
	v_cndmask_b32_e64 v19, v128, v19, s2
	v_cndmask_b32_e64 v4, v72, v4, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v32, v32, v32
	v_max_f32_e32 v88, 0, v41
	v_dual_max_f32 v41, v61, v61 :: v_dual_max_f32 v36, v36, v36
	v_dual_max_f32 v86, 0, v37 :: v_dual_max_f32 v37, v59, v59
	v_max_f32_e32 v72, 0, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v38, v46, v46 :: v_dual_max_f32 v93, 0, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v96, v9, v74
	v_fma_f32 v13, v135, v13, v78
	v_fma_f32 v96, v167, v216, v117
	v_fma_f32 v21, v21, v229, v130
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v114, v63, s2
	v_cndmask_b32_e64 v17, v126, v17, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v32, 0, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v133, v11, v76
	v_fma_f32 v133, v169, v218, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v48, 0, v38 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v83, 0, v42 :: v_dual_max_f32 v38, v51, v51
	v_dual_max_f32 v51, 0, v34 :: v_dual_max_f32 v42, v57, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v135, v171, v220, v121
	v_fma_f32 v136, v172, v221, v122
	v_fma_f32 v22, v22, v230, v131
	v_fma_f32 v23, v23, v231, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v74, v9, s2
	v_cndmask_b32_e64 v11, v76, v11, s2
	v_cndmask_b32_e64 v12, v77, v12, s2
	v_cndmask_b32_e64 v13, v78, v13, s2
	v_cndmask_b32_e64 v58, v117, v96, s2
	v_cndmask_b32_e64 v60, v119, v133, s2
	v_cndmask_b32_e64 v21, v130, v21, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v89, 0, v42
	v_max_f32_e32 v91, 0, v37
	v_dual_max_f32 v37, v64, v64 :: v_dual_max_f32 v84, 0, v38
	v_max_f32_e32 v38, v55, v55
	v_max_f32_e32 v34, v53, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v226, v127
	v_fma_f32 v20, v20, v228, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v121, v135, s2
	v_cndmask_b32_e64 v63, v122, v136, s2
	v_cndmask_b32_e64 v65, v124, v138, s2
	v_cndmask_b32_e64 v22, v131, v22, s2
	v_cndmask_b32_e64 v23, v109, v23, s2
	v_cndmask_b32_e64 v3, v105, v3, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, v9, v9
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v28, v28, v28
	v_max_f32_e32 v87, 0, v38
	v_max_f32_e32 v57, 0, v34
	v_dual_max_f32 v34, v58, v58 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v38, v60, v60 :: v_dual_max_f32 v21, v21, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v127, v18, s2
	v_cndmask_b32_e64 v20, v129, v20, s2
	v_cndmask_b32_e64 v24, v108, v24, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, 0, v9
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v90, 0, v34
	v_max_f32_e32 v92, 0, v38
	v_dual_max_f32 v38, v65, v65 :: v_dual_max_f32 v3, v3, v3
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v42, v62, v62
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v7, v7, v7
	v_max_f32_e32 v34, v63, v63
	v_dual_max_f32 v4, v4, v4 :: v_dual_mul_f32 v59, v31, v31
	v_dual_max_f32 v6, v6, v6 :: v_dual_mul_f32 v49, v16, v16
	v_dual_max_f32 v8, v8, v8 :: v_dual_mul_f32 v63, v33, v33
	v_dual_max_f32 v98, 0, v21 :: v_dual_max_f32 v21, v23, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v106, v25, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v95, 0, v37
	v_max_f32_e32 v96, 0, v38
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v94, 0, v42
	v_max_f32_e32 v23, v25, v25
	v_max_f32_e32 v99, 0, v22
	v_dual_max_f32 v65, 0, v34 :: v_dual_max_f32 v22, v24, v24
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v37, v10, v10 :: v_dual_max_f32 v100, 0, v21
	v_mul_f32_e32 v41, v12, v12
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v79, v43, v43
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v53, v28, v28
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v104, v26, v26 :: v_dual_mul_f32 v81, v68, v68
	v_dual_mul_f32 v34, v9, v9 :: v_dual_mul_f32 v77, v72, v72
	v_dual_mul_f32 v38, v11, v11 :: v_dual_mul_f32 v75, v40, v40
	v_dual_mul_f32 v42, v13, v13 :: v_dual_mul_f32 v73, v47, v47
	v_dual_mul_f32 v50, v27, v27 :: v_dual_mul_f32 v47, v84, v84
	v_dual_mul_f32 v54, v29, v29 :: v_dual_mul_f32 v55, v83, v83
	v_mul_f32_e32 v58, v30, v30
	v_dual_mul_f32 v62, v32, v32 :: v_dual_mul_f32 v43, v57, v57
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v18, 0, v18
	v_max_f32_e32 v5, 0, v5
	v_max_f32_e32 v101, 0, v22
	v_max_f32_e32 v97, 0, v36
	v_dual_max_f32 v103, 0, v8 :: v_dual_mul_f32 v46, v15, v15
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v61, v82, v82
	v_mul_f32_e32 v80, v66, v66
	v_mul_f32_e32 v78, v70, v70
	v_dual_mul_f32 v60, v48, v48 :: v_dual_mul_f32 v25, v97, v97
	v_mul_f32_e32 v56, v51, v51
	v_dual_mul_f32 v52, v52, v52 :: v_dual_mul_f32 v21, v18, v18
	v_dual_mul_f32 v51, v35, v35 :: v_dual_mul_f32 v36, v90, v90
	v_mul_f32_e32 v13, v3, v3
	v_mul_f32_e32 v32, v91, v91
	v_mul_f32_e32 v16, v1, v1
	v_mul_f32_e32 v8, v4, v4
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v104, v34
	v_max3_f32 v3, v38, v41, v42
	v_max3_f32 v4, v50, v53, v54
	v_max3_f32 v11, v58, v59, v62
.Ltmp25:
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v102, 0, v23 :: v_dual_mul_f32 v45, v14, v14
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v76, v69, v69 :: v_dual_mul_f32 v31, v92, v92
	v_dual_mul_f32 v74, v39, v39 :: v_dual_mul_f32 v29, v94, v94
	v_dual_mul_f32 v64, v44, v44 :: v_dual_mul_f32 v27, v65, v65
	v_mul_f32_e32 v48, v85, v85
	v_dual_mul_f32 v44, v86, v86 :: v_dual_mul_f32 v15, v101, v101
	v_dual_mul_f32 v39, v87, v87 :: v_dual_mul_f32 v40, v88, v88
	v_dual_mul_f32 v35, v89, v89 :: v_dual_mul_f32 v26, v95, v95
	v_dual_mul_f32 v9, v5, v5 :: v_dual_mul_f32 v24, v96, v96
	v_dual_mul_f32 v23, v17, v17 :: v_dual_mul_f32 v22, v19, v19
	v_dual_mul_f32 v19, v98, v98 :: v_dual_mul_f32 v28, v93, v93
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v33, v47, v48 :: v_dual_mul_f32 v10, v6, v6
	v_max3_f32 v1, v1, v37, v3
	v_max3_f32 v3, v4, v11, v63
	v_max_f32_e32 v4, v80, v81
	v_max3_f32 v6, v79, v78, v77
	v_max3_f32 v11, v73, v60, v61
	v_max3_f32 v12, v55, v56, v52
.Ltmp27:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v17, v102, v102
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v57, v44, v39, v40
	v_max3_f32 v65, v31, v28, v29
	v_max3_f32 v4, v4, v76, v6
	v_max3_f32 v6, v11, v12, v51
.Ltmp29:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v7, v7
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v66, v27, v26, v24
	v_max3_f32 v5, v45, v46, v49
	v_max3_f32 v30, v74, v75, v64
	v_max3_f32 v68, v35, v36, v32
	v_max3_f32 v33, v33, v43, v57
	v_max3_f32 v57, v65, v66, v25
	v_max3_f32 v1, v1, v5, v3
	v_max3_f32 v3, v4, v30, v6
.Ltmp31:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v20, v20, v20 :: v_dual_max_f32 v5, v23, v21
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v4, v33, v68, v57
.Ltmp33:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v103, v103
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v30, v17, v13, v8
	v_max3_f32 v33, v9, v10, v11
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v57, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v99, v99
.Ltmp37:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.h, v2.l
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v30, v30, v33, v12
	v_max_f32_e32 v33, v57, v57
	v_max_f32_e32 v57, v65, v65
	v_max3_f32 v6, v20, v19, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v14, v100, v100 :: v_dual_max_f32 v69, v3, v33
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v3, 4, v0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v5, v22, v6
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v70, v4, v57
	v_max3_f32 v7, v14, v15, v16
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v4, 5, v247
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_and_b32 v33, 8, v0
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v82, v3, 6, 0
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v5, v7, v30
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v7, 0x60, v0
	v_and_b32_e32 v30, 0x80, v0
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v68, v1, v6
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v6, v247, 9, 0
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v66, v4, v7
	v_lshrrev_b32_e32 v72, 3, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v57, v3, 2, v6
	scratch_load_b32 v6, off, off offset:12 ; 4-byte Folded Reload
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v57, v33, 4, v57
	v_lshlrev_b32_e32 v33, 3, v33
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v71, v5, v1
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt vmcnt(0)
	v_and_or_b32 v65, 0x680, v6, v4
	v_lshlrev_b32_e32 v6, 1, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v65, v65, v7
	v_add3_u32 v1, v57, v6, v66
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v5, v82, v72, v65
	ds_store_b128 v1, v[68:71]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v68
	v_mov_b32_e32 v5, v69
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v65, v68, v68 :: v_dual_max_f32 v66, v69, v69
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v57, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v68, v71, v71
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v65, v1 :: v_dual_add_nc_u32 v30, 0, v30
	v_max_f32_e32 v65, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, v66, v5 :: v_dual_max_f32 v66, v71, v71
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v70, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v57, v65, v57
	v_max_f32_e32 v65, v68, v66
	v_max_f32_e32 v5, v5, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v68, v65
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v65, v65, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v71, v65
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v70, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v66, v57
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v69, v1 :: v_dual_max_f32 v66, v66, v66
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v57, v57, v66
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v66, v57
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v69, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v68, v69, v69 :: v_dual_max_f32 v69, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v68, v1, v68 :: v_dual_max_f32 v1, v66, v66
	v_max_f32_e32 v69, v5, v69
	v_max_f32_e32 v5, v71, v71
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v66, 1, v7
.Ltmp71:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v244, v7
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v70, v57, v1 :: v_dual_lshlrev_b32 v1, 5, v3
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v3, 0, v246
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v71, v65, v5
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v30, v66, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v3, v1, v33
	ds_store_b128 v5, v[68:71]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v1
.Ltmp76:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v68, v68
	v_max_f32_e32 v33, v70, v70
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v70, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v33, 0x2b8cbccc, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v65, null, 0x40e00000, 0x40e00000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v5, v3
	v_rcp_f32_e32 v68, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v3, v5, 1.0
	v_fmac_f32_e32 v5, v30, v5
	v_div_scale_f32 v30, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v30, v5
	v_fma_f32 v66, -v3, v57, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v57, v66, v5
	v_dual_max_f32 v66, 0x2b8cbccc, v69 :: v_dual_max_f32 v69, 0x2b8cbccc, v70
	v_fma_f32 v3, -v3, v57, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v70, null, 0x40e00000, 0x40e00000, v66
	v_fma_f32 v30, -v65, v68, 1.0
	v_div_scale_f32 v84, s0, v66, 0x40e00000, v66
	v_div_fmas_f32 v3, v3, v5, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v5, v70
	v_fmac_f32_e32 v68, v30, v68
	v_div_scale_f32 v30, vcc_lo, v33, 0x40e00000, v33
	v_div_scale_f32 v57, null, 0x40e00000, 0x40e00000, v69
	v_div_fixup_f32 v1, v3, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v71, v30, v68
	v_div_scale_f32 v85, s1, v69, 0x40e00000, v69
	v_rcp_f32_e32 v72, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v70, v5, 1.0
	v_fma_f32 v82, -v65, v71, v30
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v5, v3, v5
	v_dual_fmac_f32 v71, v82, v68 :: v_dual_and_b32 v82, 1, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v57, v72, 1.0
	v_mul_f32_e32 v83, v84, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v65, v71, v30
	v_fmac_f32_e32 v72, v3, v72
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v70, v83, v84
	v_div_fmas_f32 v30, v30, v68, v71
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v65, v85, v72 :: v_dual_and_b32 v68, 0xffff0000, v3
	v_fmac_f32_e32 v83, v1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v30, 0x40e00000, v33
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v71.h, v2.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v57, v65, v85
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v86, null, v68, v68, v38
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v33, -v70, v83, v84
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v70, null, v68, v68, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v65, v1, v72
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v84, null, v68, v68, v37
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v33, v5, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v33, v70
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v57, v65, v85
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v30.h
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v66, v1, 0x40e00000, v66
	v_div_fmas_f32 v1, v57, v72, v65
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v65, null, v68, v68, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v70, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v69, v1, 0x40e00000, v69
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v71.l, v66.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v83, vcc_lo, v104, v68, v104
	v_fmac_f32_e32 v33, v57, v33
	v_rcp_f32_e32 v72, v65
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v30, v5, 0x7fff
	v_mov_b16_e32 v5.l, v69.h
	v_mov_b16_e32 v5.h, v2.l
	v_and_b32_e32 v2, 1, v71
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v71, v83, v33
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v87, s0, v34, v68, v34
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v57, 1, v5
	v_add3_u32 v5, v66, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v66, -v70, v71, v83
	v_fma_f32 v30, -v65, v72, 1.0
	v_div_scale_f32 v90, null, v68, v68, v41
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v69, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v71, v66, v33
	v_rcp_f32_e32 v66, v86
	v_fmac_f32_e32 v72, v30, v72
	v_fma_f32 v88, -v84, v85, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 0xffff0000, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v70, -v70, v71, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v69, v87, v72 :: v_dual_and_b32 v30, 0xffff0000, v2
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s1, v37, v68, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v86, v66, 1.0
	v_fma_f32 v83, -v65, v69, v87
	v_div_fmas_f32 v33, v70, v33, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v70, v88, v85
	v_rcp_f32_e32 v71, v90
	v_fmac_f32_e32 v66, v89, v66
	v_div_scale_f32 v89, null, v68, v68, v42
	v_fmac_f32_e32 v69, v83, v72
	v_div_scale_f32 v83, s2, v38, v68, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v89
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v65, -v65, v69, v87
	v_fma_f32 v87, -v84, v70, v88
	v_mul_f32_e32 v91, v83, v66
	v_fma_f32 v93, -v90, v71, 1.0
	v_div_fixup_f32 v33, v33, v68, v104
	v_div_fmas_f32 v65, v65, v72, v69
	v_fmac_f32_e32 v70, v87, v85
	v_fma_f32 v69, -v86, v91, v83
	v_fma_f32 v87, -v89, v92, 1.0
	v_fmac_f32_e32 v71, v93, v71
	v_div_scale_f32 v72, s0, v41, v68, v41
	v_div_fixup_f32 v34, v65, v68, v34
	v_fma_f32 v65, -v84, v70, v88
	v_dual_fmac_f32 v91, v69, v66 :: v_dual_fmac_f32 v92, v87, v92
	v_div_scale_f32 v87, null, v68, v68, v45
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v69, v72, v71
	v_div_scale_f32 v84, s3, v42, v68, v42
	v_div_fmas_f32 v65, v65, v85, v70
	v_fma_f32 v70, -v86, v91, v83
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v88, null, v68, v68, v46
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v83, -v90, v69, v72
	v_mul_f32_e32 v86, v84, v92
	v_div_fmas_f32 v66, v70, v66, v91
	v_rcp_f32_e32 v70, v88
	v_div_fixup_f32 v37, v65, v68, v37
	v_fmac_f32_e32 v69, v83, v71
	v_fma_f32 v83, -v89, v86, v84
	v_fma_f32 v91, -v87, v85, 1.0
	v_div_fixup_f32 v38, v66, v68, v38
	v_div_scale_f32 v66, s1, v45, v68, v45
	v_fma_f32 v65, -v90, v69, v72
	v_fmac_f32_e32 v86, v83, v92
	v_fmac_f32_e32 v85, v91, v85
	v_fma_f32 v72, -v88, v70, 1.0
	v_div_scale_f32 v83, null, v68, v68, v49
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, null, v68, v68, v54
	v_div_fmas_f32 v65, v65, v71, v69
	v_fma_f32 v69, -v89, v86, v84
	v_dual_mul_f32 v71, v66, v85 :: v_dual_fmac_f32 v70, v72, v70
	v_rcp_f32_e32 v72, v83
	v_div_scale_f32 v84, s0, v46, v68, v46
	v_div_scale_f32 v89, null, v68, v68, v50
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v90, v84, v70
	v_div_fmas_f32 v69, v69, v92, v86
	v_fma_f32 v86, -v87, v71, v66
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v83, v72, 1.0
	v_div_fixup_f32 v41, v65, v68, v41
	v_fma_f32 v65, -v88, v90, v84
	v_fmac_f32_e32 v71, v86, v85
	v_div_scale_f32 v86, null, v68, v68, v53
	v_div_fixup_f32 v42, v69, v68, v42
	v_fmac_f32_e32 v72, v91, v72
	v_div_scale_f32 v69, s2, v49, v68, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v66, -v87, v71, v66
	v_fmac_f32_e32 v90, v65, v70
	v_rcp_f32_e32 v87, v86
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v65, v69, v72
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s3, v50, v68, v50
	v_div_fmas_f32 v66, v66, v85, v71
	v_fma_f32 v71, -v88, v90, v84
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v84, -v83, v65, v69
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v88, -v86, v87, 1.0
	v_div_fmas_f32 v70, v71, v70, v90
	v_rcp_f32_e32 v71, v93
	v_fmac_f32_e32 v65, v84, v72
	v_fma_f32 v84, -v89, v85, v91
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, s0, v53, v68, v53
	v_div_fixup_f32 v45, v66, v68, v45
	v_div_fixup_f32 v46, v70, v68, v46
	v_fma_f32 v66, -v83, v65, v69
	v_fmac_f32_e32 v85, v84, v92
	v_mul_f32_e32 v69, v88, v87
	v_fma_f32 v70, -v93, v71, 1.0
	v_div_scale_f32 v83, null, v68, v68, v58
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v54, v68, v54
	v_div_fmas_f32 v65, v66, v72, v65
	v_fma_f32 v66, -v89, v85, v91
	v_fma_f32 v72, -v86, v69, v88
	v_fmac_f32_e32 v71, v70, v71
	v_rcp_f32_e32 v70, v83
	v_div_scale_f32 v89, null, v68, v68, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v72, v87
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v49, v65, v68, v49
	v_rcp_f32_e32 v72, v89
	v_div_fmas_f32 v66, v66, v92, v85
	v_mul_f32_e32 v85, v84, v71
	v_fma_f32 v65, -v86, v69, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v70, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v50, v66, v68, v50
	v_fma_f32 v66, -v93, v85, v84
	v_div_scale_f32 v86, s2, v58, v68, v58
	v_fmac_f32_e32 v70, v90, v70
	v_fma_f32 v88, -v89, v72, 1.0
	v_div_scale_f32 v90, null, v68, v68, v62
	v_div_fmas_f32 v65, v65, v87, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v66, v71 :: v_dual_fmac_f32 v72, v88, v72
	v_rcp_f32_e32 v69, v90
	v_div_scale_f32 v88, null, v68, v68, v63
	v_mul_f32_e32 v66, v86, v70
	v_div_scale_f32 v87, s0, v59, v68, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v53, v65, v68, v53
	v_fma_f32 v65, -v93, v85, v84
	v_fma_f32 v84, -v83, v66, v86
	v_mul_f32_e32 v91, v87, v72
	v_fma_f32 v93, -v90, v69, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v65, v65, v71, v85
	v_fmac_f32_e32 v66, v84, v70
	v_fma_f32 v71, -v89, v91, v87
	v_fmac_f32_e32 v69, v93, v69
	v_div_scale_f32 v84, s1, v62, v68, v62
	v_fma_f32 v85, -v88, v92, 1.0
	v_div_fixup_f32 v54, v65, v68, v54
	v_fma_f32 v65, -v83, v66, v86
	v_fmac_f32_e32 v91, v71, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v71, v84, v69 :: v_dual_fmac_f32 v92, v85, v92
	v_div_scale_f32 v85, null, v82, v82, v80
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s3, v63, v68, v63
	v_div_fmas_f32 v65, v65, v70, v66
	v_fma_f32 v66, -v89, v91, v87
	v_fma_f32 v70, -v90, v71, v84
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v82, v82, v81
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v70, v69
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v70, v89
	v_div_fmas_f32 v66, v66, v72, v91
	v_fma_f32 v72, -v88, v87, v83
	v_div_fixup_f32 v58, v65, v68, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v86, 1.0
	v_fma_f32 v65, -v90, v71, v84
	v_div_fixup_f32 v59, v66, v68, v59
	v_fmac_f32_e32 v87, v72, v92
	v_div_scale_f32 v66, s0, v80, v82, v80
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v72, -v89, v70, 1.0
	v_div_scale_f32 v84, null, v82, v82, v76
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v65, v65, v69, v71
	v_fma_f32 v69, -v88, v87, v83
	v_mul_f32_e32 v71, v66, v86
	v_fmac_f32_e32 v70, v72, v70
	v_rcp_f32_e32 v72, v84
	v_div_scale_f32 v88, null, v82, v82, v79
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v83, s1, v81, v82, v81
	v_div_fmas_f32 v69, v69, v92, v87
	v_fma_f32 v87, -v85, v71, v66
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v90, v83, v70 :: v_dual_and_b32 v57, 0xffff0000, v1
	v_fma_f32 v91, -v84, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v71, v87, v86
	v_div_scale_f32 v87, null, v82, v82, v78
	v_div_fixup_f32 v62, v65, v68, v62
	v_div_fixup_f32 v63, v69, v68, v63
	v_fma_f32 v65, -v89, v90, v83
	v_fmac_f32_e32 v72, v91, v72
	v_div_scale_f32 v68, s2, v76, v82, v76
	v_fma_f32 v69, -v88, v92, 1.0
	v_fma_f32 v66, -v85, v71, v66
	v_rcp_f32_e32 v85, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v65, v70 :: v_dual_mul_f32 v65, v68, v72
	v_fmac_f32_e32 v92, v69, v92
	v_div_scale_f32 v91, s3, v79, v82, v79
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v69, -v89, v90, v83
	v_div_fmas_f32 v66, v66, v86, v71
	v_fma_f32 v71, -v84, v65, v68
	v_mul_f32_e32 v83, v91, v92
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v87, v85, 1.0
	v_div_scale_f32 v89, null, v82, v82, v77
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v65, v71, v72
	v_div_fmas_f32 v70, v69, v70, v90
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v71, -v88, v83, v91
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, s0, v78, v82, v78
	v_div_fixup_f32 v69, v66, v82, v80
	v_fma_f32 v66, -v84, v65, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v83, v71, v92 :: v_dual_mul_f32 v68, v86, v85
	v_div_scale_f32 v80, null, v82, v82, v74
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v70, v70, v82, v81
	v_fma_f32 v71, -v89, v90, 1.0
	v_div_fmas_f32 v65, v66, v72, v65
	v_fma_f32 v66, -v88, v83, v91
	v_fma_f32 v72, -v87, v68, v86
	v_rcp_f32_e32 v81, v80
	v_div_scale_f32 v88, null, v82, v82, v75
	v_fmac_f32_e32 v90, v71, v90
	v_div_scale_f32 v84, s1, v77, v82, v77
	v_fmac_f32_e32 v68, v72, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v72, v88
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v71, v65, v82, v76
	v_div_fmas_f32 v66, v66, v92, v83
	v_mul_f32_e32 v83, v84, v90
	v_fma_f32 v91, -v80, v81, 1.0
	v_fma_f32 v65, -v87, v68, v86
	v_div_scale_f32 v87, null, v82, v82, v64
	v_div_fixup_f32 v76, v66, v82, v79
	v_fma_f32 v66, -v89, v83, v84
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v79, s2, v74, v82, v74
	v_fma_f32 v86, -v88, v72, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v66, v90
	v_div_fmas_f32 v65, v65, v85, v68
	v_mul_f32_e32 v66, v79, v81
	v_fmac_f32_e32 v72, v86, v72
	v_rcp_f32_e32 v68, v87
	v_div_scale_f32 v85, s0, v75, v82, v75
	v_div_scale_f32 v86, null, v82, v82, v73
	v_div_fixup_f32 v78, v65, v82, v78
	v_fma_f32 v65, -v89, v83, v84
	v_fma_f32 v84, -v80, v66, v79
	v_mul_f32_e32 v89, v85, v72
	v_rcp_f32_e32 v91, v86
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v68, 1.0
	v_div_fmas_f32 v65, v65, v90, v83
	v_fmac_f32_e32 v66, v84, v81
	v_fma_f32 v83, -v88, v89, v85
	v_div_scale_f32 v84, s1, v64, v82, v64
	v_fmac_f32_e32 v68, v92, v68
	v_div_fixup_f32 v77, v65, v82, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v86, v91, 1.0
	v_fma_f32 v65, -v80, v66, v79
	v_fmac_f32_e32 v89, v83, v72
	v_div_scale_f32 v83, null, v82, v82, v60
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v79, v84, v68
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v80, s3, v73, v82, v73
	v_div_fmas_f32 v65, v65, v81, v66
	v_fma_f32 v66, -v88, v89, v85
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v90, null, v82, v82, v61
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v81, -v87, v79, v84
	v_mul_f32_e32 v88, v80, v91
	v_div_fmas_f32 v66, v66, v72, v89
	v_rcp_f32_e32 v72, v90
	v_div_fixup_f32 v74, v65, v82, v74
	v_fmac_f32_e32 v79, v81, v68
	v_fma_f32 v81, -v86, v88, v80
	v_fma_f32 v89, -v83, v85, 1.0
	v_div_fixup_f32 v75, v66, v82, v75
	v_div_scale_f32 v66, s0, v60, v82, v60
	v_fma_f32 v65, -v87, v79, v84
	v_fmac_f32_e32 v88, v81, v91
	v_fmac_f32_e32 v85, v89, v85
	v_fma_f32 v81, -v90, v72, 1.0
	v_div_scale_f32 v84, null, v82, v82, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v82, v82, v51
	v_div_fmas_f32 v65, v65, v68, v79
	v_fma_f32 v68, -v86, v88, v80
	v_dual_mul_f32 v79, v66, v85 :: v_dual_fmac_f32 v72, v81, v72
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s1, v61, v82, v61
	v_div_scale_f32 v86, null, v82, v82, v56
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v87, -v83, v79, v66
	v_div_fmas_f32 v68, v68, v91, v88
	v_mul_f32_e32 v88, v81, v72
	v_rcp_f32_e32 v91, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v64, v65, v82, v64
	v_fmac_f32_e32 v79, v87, v85
	v_fma_f32 v65, -v90, v88, v81
	v_div_fixup_f32 v73, v68, v82, v73
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v68, s2, v55, v82, v55
	v_div_scale_f32 v87, null, v82, v82, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v86, v91, 1.0
	v_fma_f32 v66, -v83, v79, v66
	v_fmac_f32_e32 v88, v65, v72
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v65, v68, v80
	v_rcp_f32_e32 v83, v87
	v_fmac_f32_e32 v91, v89, v91
	v_div_scale_f32 v89, s3, v56, v82, v56
	v_div_fmas_f32 v66, v66, v85, v79
	v_fma_f32 v79, -v90, v88, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v84, v65, v68
	v_mul_f32_e32 v85, v89, v91
	v_div_fixup_f32 v60, v66, v82, v60
	v_div_fmas_f32 v72, v79, v72, v88
	v_rcp_f32_e32 v79, v92
	v_fma_f32 v90, -v87, v83, 1.0
	v_fmac_f32_e32 v65, v81, v80
	v_fma_f32 v81, -v86, v85, v89
	v_div_scale_f32 v88, s0, v52, v82, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v90, v83
	v_div_fixup_f32 v61, v72, v82, v61
	v_fmac_f32_e32 v85, v81, v91
	v_div_scale_f32 v81, null, v57, v57, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v92, v79, 1.0
	v_fma_f32 v66, -v84, v65, v68
	v_mul_f32_e32 v68, v88, v83
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v51, v82, v51
	v_fmac_f32_e32 v79, v72, v79
	v_rcp_f32_e32 v72, v81
	v_div_fmas_f32 v65, v66, v80, v65
	v_fma_f32 v66, -v86, v85, v89
	v_fma_f32 v80, -v87, v68, v88
	v_div_scale_f32 v86, null, v57, v57, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v55, v65, v82, v55
	v_fmac_f32_e32 v68, v80, v83
	v_rcp_f32_e32 v80, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v81, v72, 1.0
	v_div_fmas_f32 v66, v66, v91, v85
	v_mul_f32_e32 v85, v84, v79
	v_fma_f32 v65, -v87, v68, v88
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v72, v89, v72
	v_div_scale_f32 v89, null, v57, v57, v43
	v_div_fixup_f32 v56, v66, v82, v56
	v_fma_f32 v66, -v92, v85, v84
	v_div_scale_f32 v87, s2, v47, v57, v47
	v_fma_f32 v88, -v86, v80, 1.0
	v_div_fmas_f32 v65, v65, v83, v68
	v_rcp_f32_e32 v68, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v66, v79 :: v_dual_mul_f32 v66, v87, v72
	v_fmac_f32_e32 v80, v88, v80
	v_div_scale_f32 v83, s0, v48, v57, v48
	v_div_scale_f32 v88, null, v57, v57, v44
	v_div_fixup_f32 v52, v65, v82, v52
	v_fma_f32 v65, -v92, v85, v84
	v_fma_f32 v84, -v81, v66, v87
	v_mul_f32_e32 v90, v83, v80
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v68, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v66, v84, v72
	v_div_fmas_f32 v65, v65, v79, v85
	v_fma_f32 v79, -v86, v90, v83
	v_fmac_f32_e32 v68, v92, v68
	v_div_scale_f32 v84, s1, v43, v57, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v51, v65, v82, v51
	v_fma_f32 v85, -v88, v91, 1.0
	v_fma_f32 v65, -v81, v66, v87
	v_fmac_f32_e32 v90, v79, v80
	v_mul_f32_e32 v79, v84, v68
	v_div_scale_f32 v82, null, v57, v57, v39
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v81, s3, v44, v57, v44
	v_div_fmas_f32 v65, v65, v72, v66
	v_fma_f32 v66, -v86, v90, v83
	v_fma_f32 v72, -v89, v79, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v57, v57, v40
	v_mul_f32_e32 v85, v81, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v72, v68
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v72, v86
	v_div_fmas_f32 v66, v66, v80, v90
	v_fma_f32 v80, -v88, v85, v81
	v_div_fixup_f32 v47, v65, v57, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v82, v83, 1.0
	v_fma_f32 v65, -v89, v79, v84
	v_div_fixup_f32 v48, v66, v57, v48
	v_fmac_f32_e32 v85, v80, v91
	v_div_scale_f32 v66, s0, v39, v57, v39
	v_fmac_f32_e32 v83, v87, v83
	v_fma_f32 v80, -v86, v72, 1.0
	v_div_scale_f32 v84, null, v57, v57, v35
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v57, v57, v36
	v_div_fmas_f32 v65, v65, v68, v79
	v_fma_f32 v68, -v88, v85, v81
	v_dual_mul_f32 v79, v66, v83 :: v_dual_fmac_f32 v72, v80, v72
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s1, v40, v57, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v90, v87
	v_div_fmas_f32 v68, v68, v91, v85
	v_fma_f32 v85, -v82, v79, v66
	v_mul_f32_e32 v88, v81, v72
	v_div_fixup_f32 v43, v65, v57, v43
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_fmac_f32_e32 v79, v85, v83
	v_fma_f32 v65, -v86, v88, v81
	v_div_scale_f32 v85, null, v57, v57, v32
	v_div_fixup_f32 v44, v68, v57, v44
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v68, s2, v35, v57, v35
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v66, -v82, v79, v66
	v_fmac_f32_e32 v88, v65, v72
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v65, v68, v80 :: v_dual_fmac_f32 v90, v89, v90
	v_div_scale_f32 v89, s3, v36, v57, v36
	v_div_fmas_f32 v66, v66, v83, v79
	v_fma_f32 v79, -v86, v88, v81
	v_div_scale_f32 v91, null, v57, v57, v31
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v84, v65, v68
	v_mul_f32_e32 v83, v89, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v72, v79, v72, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v65, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v32, v57, v32
	v_div_fixup_f32 v39, v66, v57, v39
	v_div_fixup_f32 v40, v72, v57, v40
	v_fma_f32 v66, -v84, v65, v68
	v_fmac_f32_e32 v83, v81, v90
	v_mul_f32_e32 v68, v86, v82
	v_fma_f32 v72, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v57, v57, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v31, v57, v31
	v_div_fmas_f32 v65, v66, v80, v65
	v_fma_f32 v66, -v87, v83, v89
	v_fma_f32 v80, -v85, v68, v86
	v_fmac_f32_e32 v79, v72, v79
	v_rcp_f32_e32 v72, v81
	v_div_scale_f32 v87, null, v57, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v80, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v35, v65, v57, v35
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v66, v66, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v65, -v85, v68, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v72, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v36, v66, v57, v36
	v_fma_f32 v66, -v91, v83, v84
	v_div_scale_f32 v85, s2, v28, v57, v28
	v_fmac_f32_e32 v72, v88, v72
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v57, v57, v27
	v_div_fmas_f32 v65, v65, v82, v68
	v_fmac_f32_e32 v83, v66, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v86, v80
	v_rcp_f32_e32 v68, v88
	v_div_scale_f32 v86, null, v57, v57, v26
	v_mul_f32_e32 v66, v85, v72
	v_div_scale_f32 v82, s0, v29, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v32, v65, v57, v32
	v_fma_f32 v65, -v91, v83, v84
	v_fma_f32 v84, -v81, v66, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v68, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v65, v65, v79, v83
	v_fmac_f32_e32 v66, v84, v72
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v68, v91, v68
	v_div_scale_f32 v83, s1, v27, v57, v27
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v31, v65, v57, v31
	v_fma_f32 v65, -v81, v66, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v68 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v57, v57, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v81, s3, v26, v57, v26
	v_div_fmas_f32 v65, v65, v72, v66
	v_fma_f32 v66, -v87, v89, v82
	v_fma_f32 v72, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v57, v57, v25
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v72, v68
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v72, v87
	v_div_fmas_f32 v66, v66, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v28, v65, v57, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v65, -v88, v79, v83
	v_div_fixup_f32 v29, v66, v57, v29
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v66, s0, v24, v57, v24
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v72, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v88, null, v30, v30, v21
	v_div_fmas_f32 v65, v65, v68, v79
	v_fma_f32 v68, -v86, v85, v81
	v_dual_mul_f32 v79, v66, v82 :: v_dual_fmac_f32 v72, v80, v72
	v_div_scale_f32 v80, null, v30, v30, v23
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, s1, v25, v57, v25
	v_div_fmas_f32 v68, v68, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v72
	v_div_fixup_f32 v27, v65, v57, v27
	v_div_fixup_f32 v26, v68, v57, v26
	v_rcp_f32_e32 v68, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v65, -v87, v86, v81
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v30, v30, v20
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v66, -v84, v79, v66
	v_div_scale_f32 v84, null, v30, v30, v22
	v_fmac_f32_e32 v86, v65, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v65, s2, v23, v30, v23
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v89, -v88, v68, 1.0
	v_div_fmas_f32 v66, v66, v82, v79
	v_fma_f32 v79, -v87, v86, v81
	v_mul_f32_e32 v81, v65, v83
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v68, v89, v68
	v_div_scale_f32 v82, s0, v21, v30, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v80, v81, v65
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v72, v79, v72, v86
	v_mul_f32_e32 v91, v82, v68
	v_fmac_f32_e32 v81, v89, v83
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s3, v22, v30, v22
	v_div_fixup_f32 v24, v66, v57, v24
	v_div_fixup_f32 v25, v72, v57, v25
	v_fma_f32 v57, -v80, v81, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v87, v85
	v_div_scale_f32 v72, null, v30, v30, v19
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v66, -v90, v92, 1.0
	v_fma_f32 v65, -v84, v86, v87
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v79, v68
	v_fmac_f32_e32 v92, v66, v92
	v_fmac_f32_e32 v86, v65, v85
	v_rcp_f32_e32 v65, v72
	v_div_scale_f32 v66, s1, v20, v30, v20
	v_div_fmas_f32 v57, v57, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v81, null, v30, v30, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v66, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v57, v30, v23
	v_fma_f32 v82, -v72, v65, 1.0
	v_div_fmas_f32 v68, v79, v68, v91
	v_fma_f32 v79, -v84, v86, v87
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v66
	v_fmac_f32_e32 v65, v82, v65
	v_div_scale_f32 v82, s0, v19, v30, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	v_mul_f32_e32 v57, v82, v65
	v_div_fixup_f32 v21, v68, v30, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v81, v83, 1.0
	v_fma_f32 v66, -v90, v80, v66
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v72, v57, v82
	v_div_fixup_f32 v22, v79, v30, v22
	v_div_scale_f32 v79, null, v30, v30, v14
	v_fmac_f32_e32 v83, v68, v83
	v_div_scale_f32 v68, s2, v18, v30, v18
	v_div_fmas_f32 v66, v66, v92, v80
	v_fmac_f32_e32 v57, v84, v65
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v68, v83
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v66, v30, v20
	v_fma_f32 v66, -v72, v57, v82
	v_div_scale_f32 v84, null, v30, v30, v15
	v_fma_f32 v72, -v81, v80, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v57, v66, v65, v57
	v_div_scale_f32 v65, null, v30, v30, v16
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v72, v83
	v_rcp_f32_e32 v72, v65
	v_div_scale_f32 v66, s0, v14, v30, v14
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v30, v30, v17
	v_div_fixup_f32 v19, v57, v30, v19
	v_fma_f32 v68, -v81, v80, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v65, v72, 1.0
	v_mul_f32_e32 v81, v66, v85
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v57, v86
	v_div_scale_f32 v57, s1, v15, v30, v15
	v_fmac_f32_e32 v72, v87, v72
	v_div_scale_f32 v87, null, v30, v30, v13
	v_div_fmas_f32 v68, v68, v83, v80
	v_fma_f32 v80, -v79, v81, v66
	v_mul_f32_e32 v83, v57, v86
	v_div_scale_f32 v89, s2, v16, v30, v16
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v57
	v_mul_f32_e32 v92, v89, v72
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s3, v17, v30, v17
	v_div_fixup_f32 v18, v68, v30, v18
	v_fma_f32 v66, -v79, v81, v66
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v68, -v65, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v57, -v84, v83, v57
	v_fmac_f32_e32 v92, v68, v72
	v_fma_f32 v68, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s0, v13, v30, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v65, v92, v89
	v_fmac_f32_e32 v79, v68, v88
	v_div_fmas_f32 v66, v66, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v68, v80, v91
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, null, v30, v30, v8
	v_div_fmas_f32 v57, v57, v86, v83
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v66, v30, v14
	v_div_fmas_f32 v65, v65, v72, v92
	v_fma_f32 v72, -v82, v79, v90
	v_fma_f32 v82, -v87, v68, v80
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v15, v57, v30, v15
	v_div_fixup_f32 v16, v65, v30, v16
	v_div_scale_f32 v65, null, v30, v30, v9
	v_fmac_f32_e32 v68, v82, v91
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v85, null, v30, v30, v12
	v_div_fmas_f32 v72, v72, v88, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v57, -v87, v68, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v66, -v81, v83, 1.0
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v17, v72, v30, v17
	v_div_fmas_f32 v57, v57, v91, v68
	v_rcp_f32_e32 v68, v65
	v_fmac_f32_e32 v83, v66, v83
	v_div_scale_f32 v79, vcc_lo, v8, v30, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v57, v30, v13
	v_div_scale_f32 v66, null, v30, v30, v10
	v_mul_f32_e32 v84, v79, v83
	v_div_scale_f32 v72, null, v30, v30, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v65, v68, 1.0
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v88, -v81, v84, v79
	v_rcp_f32_e32 v80, v66
	v_rcp_f32_e32 v82, v72
	v_fmac_f32_e32 v68, v57, v68
	v_div_scale_f32 v57, s0, v9, v30, v9
	v_fmac_f32_e32 v84, v88, v83
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s3, v12, v30, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v57, v68
	v_fma_f32 v86, -v66, v80, 1.0
	v_fma_f32 v79, -v81, v84, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v89, -v72, v82, 1.0
	v_fma_f32 v88, -v65, v90, v57
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s1, v10, v30, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v90, v88, v68
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v57, -v65, v90, v57
	v_fma_f32 v65, -v85, v94, v91
	v_div_scale_f32 v89, s2, v11, v30, v11
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v92, v86, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v94, v65, v87
	v_div_fmas_f32 v57, v57, v68, v90
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v79, v30, v8
	v_fma_f32 v81, -v66, v92, v86
	v_fma_f32 v68, -v85, v94, v91
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v91, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v93, v89, v82
	v_div_fixup_f32 v9, v57, v30, v9
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v72, v93, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v66, -v66, v92, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v66, v66, v80, v92
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v65, -v72, v93, v89
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v59
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v66, v30, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v76
	v_rndne_f32_e32 v59, v63
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v65, v65, v82, v93
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v68, v68, v87, v94
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v66, v66, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v65, v30, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v71, v75
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v68, v30, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v33
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v49
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v65, v65, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v69
	v_rndne_f32_e32 v69, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v75, v35
	v_cvt_i32_f32_e32 v77, v32
	v_and_b32_e32 v32, 15, v64
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v64, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_cvt_i32_f32_e32 v81, v27
	v_cvt_i32_f32_e32 v82, v26
	v_cvt_i32_f32_e32 v93, v16
	v_and_b32_e32 v16, 15, v46
	v_and_b32_e32 v26, 15, v65
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v46, 15, v75
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v65, 10, v248
	v_lshlrev_b32_e32 v66, 6, v64
	v_lshlrev_b32_e32 v75, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v65, 0, v65, v66
	v_and_or_b32 v4, 0x1b00, v75, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v83, v24
	v_cvt_i32_f32_e32 v84, v25
	v_cvt_i32_f32_e32 v96, v8
	v_cvt_i32_f32_e32 v97, v9
	v_cvt_i32_f32_e32 v98, v10
	v_cvt_i32_f32_e32 v99, v11
	v_and_b32_e32 v8, 15, v30
	v_and_b32_e32 v9, 15, v33
	v_and_b32_e32 v10, 15, v34
	v_and_b32_e32 v11, 15, v37
	v_and_b32_e32 v24, 15, v62
	v_and_b32_e32 v25, 15, v63
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v65, v65, v7, v6
	v_xad_u32 v4, v4, v245, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v89, v19
	v_cvt_i32_f32_e32 v90, v18
	v_cvt_i32_f32_e32 v94, v17
	v_and_b32_e32 v17, 15, v49
	v_and_b32_e32 v18, 15, v50
	v_and_b32_e32 v19, 15, v53
	v_and_b32_e32 v33, 15, v72
	v_and_b32_e32 v34, 15, v60
	v_and_b32_e32 v35, 15, v61
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v78
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v15, v15
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v65, v[8:11]
	ds_store_b128 v65, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[16:19], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[24:27]
	ds_store_b128 v65, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[32:35], v4 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v73, v39
	v_cvt_i32_f32_e32 v74, v40
	v_cvt_i32_f32_e32 v76, v36
	v_cvt_i32_f32_e32 v85, v23
	v_cvt_i32_f32_e32 v86, v21
	v_cvt_i32_f32_e32 v87, v22
	v_cvt_i32_f32_e32 v88, v20
	v_cvt_i32_f32_e32 v92, v15
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v78, v31
	v_cvt_i32_f32_e32 v79, v28
	v_cvt_i32_f32_e32 v80, v29
	v_cvt_i32_f32_e32 v95, v13
	v_cvt_i32_f32_e32 v100, v12
	v_and_b32_e32 v12, 15, v38
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v15, 15, v45
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v28, 15, v68
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v30, 15, v70
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v37, 15, v56
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v73
	v_and_b32_e32 v45, 15, v74
	v_and_b32_e32 v47, 15, v76
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v20, 15, v54
	v_and_b32_e32 v36, 15, v55
	v_and_b32_e32 v38, 15, v52
	v_and_b32_e32 v39, 15, v51
	v_and_b32_e32 v48, 15, v77
	v_and_b32_e32 v49, 15, v78
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v51, 15, v80
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_and_b32_e32 v70, 15, v95
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	v_and_b32_e32 v74, 15, v99
	v_and_b32_e32 v75, 15, v100
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[40:43]
	ds_store_b128 v65, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v4
	ds_load_b128 v[48:51], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[56:59]
	ds_store_b128 v65, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v4
	ds_load_b128 v[68:71], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[12:15]
	ds_store_b128 v65, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[28:31]
	ds_store_b128 v65, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[36:39], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[44:47]
	ds_store_b128 v65, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[52:55], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[60:63]
	ds_store_b128 v65, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v4
	ds_load_b128 v[72:75], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v6
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b32 v35, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v17, 4, v7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v18, 4, v8
	v_lshl_or_b32 v8, v19, 4, v9
	v_lshl_or_b32 v9, v20, 4, v10
	v_lshl_or_b32 v10, v21, 4, v11
	v_lshl_or_b32 v11, v22, 4, v12
	v_lshl_or_b32 v12, v23, 4, v13
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v243
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v12.l
	v_and_b16 v5.l, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v48, 4, v40
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
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
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v29, v68, 4, v56
	v_lshl_or_b32 v30, v69, 4, v57
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v37, v74, 4, v62
	v_lshl_or_b32 v39, v75, 4, v63
	v_lshl_or_b32 v31, v70, 4, v58
	v_lshl_or_b32 v32, v71, 4, v59
	v_lshl_or_b32 v33, v72, 4, v60
	v_lshl_or_b32 v34, v73, 4, v61
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 3, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add_nc_u32_e32 v40, v38, v36
	v_add3_u32 v41, v36, s1, v38
	v_add3_u32 v42, v36, s2, v38
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
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
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v9.l, v4.l, v3.l
	v_lshlrev_b16 v1.l, 8, v32.l
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	buffer_store_b64 v[7:8], v42, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v243
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v35
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v4, v7, v35
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s34
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
.Ltmp77:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp78:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 132
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 132
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26708
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 132
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 132
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 32
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
