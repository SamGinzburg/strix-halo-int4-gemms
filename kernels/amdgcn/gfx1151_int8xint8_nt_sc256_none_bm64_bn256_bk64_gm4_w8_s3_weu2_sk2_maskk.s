	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s22, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	v_mov_b32_e32 v254, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v241, 4, v254
	v_and_b32_e32 v11, 48, v241
	v_lshrrev_b32_e32 v2, 2, v254
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v243, 1, v254
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, 0xc0, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[4:5], null, s22, v2, v[11:12]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s22, 6, v4
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v8, s22, 7, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s19, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s14, s7, s19
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s14, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s13, s2
	s_abs_i32 s15, s17
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s14, s15
	s_sub_i32 s16, 0, s15
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s14
	v_readfirstlane_b32 s14, v1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mul_lo_u32 v1, s22, v3
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s14, s14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s6
	s_mov_b64 s[20:21], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s16, s16, s14
	s_mul_hi_u32 s12, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s12
	s_mul_hi_u32 s12, s13, s14
	s_xor_b32 s14, s2, s17
	s_mul_i32 s16, s12, s15
	s_ashr_i32 s14, s14, 31
	s_sub_i32 s13, s13, s16
	s_add_i32 s16, s12, 1
	s_sub_i32 s18, s13, s15
	s_cmp_ge_u32 s13, s15
	s_cselect_b32 s12, s16, s12
	s_cselect_b32 s13, s18, s13
	s_add_i32 s16, s12, 1
	s_cmp_ge_u32 s13, s15
	s_cselect_b32 s12, s16, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s23, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s22, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s15, s14
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s23, v11
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s13, s12, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s13
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s19
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s22, 0x7f
.Ltmp19:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s17, s12, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s18, s3
.Ltmp21:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v5
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[5:6], null, s33, s22, v[4:5]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s12, s17, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s12, s12, s23
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s16, 0xff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v4, s12, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s13, s23, 0x80
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v6, s12, v7
	v_add_nc_u32_e32 v9, s12, v8
	v_add3_u32 v1, v1, v11, s12
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s23, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v16, s13, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v15, 0x80000000, v9
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v14, 0x80, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_mov_b32_e32 v9, v11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v13, 0x80, v4
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v16
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_addk_i32 s12, 0x80
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s13, v5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, s12, v7
	v_add_nc_u32_e32 v8, s12, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v4, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v6, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v15, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v1, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v4, 0x80000000, v13 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	v_dual_cndmask_b32 v6, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v14
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	scratch_store_b64 off, v[9:10], off offset:28 ; 8-byte Folded Spill
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[4:7], 0 offen
	buffer_load_b128 v[37:40], v1, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[41:44], v4, s[24:27], 0 offen
	buffer_load_b128 v[45:48], v5, s[24:27], 0 offen
	buffer_load_b128 v[49:52], v6, s[24:27], 0 offen
	buffer_load_b128 v[53:56], v7, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v243
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 15, v254
	v_lshlrev_b32_e32 v5, 3, v254
	v_lshlrev_b32_e32 v15, 5, v254
	s_mov_b32 s12, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v16, v241, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 16, v4
	v_or_b32_e32 v7, 32, v4
	v_or_b32_e32 v8, 48, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x17f
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, 0, v16
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[9:12] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v1, v[21:24]
	ds_store_b128 v1, v[25:28] offset:4096
	ds_store_b128 v1, v[29:32] offset:8192
	ds_store_b128 v1, v[33:36] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[37:40] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[41:44] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[45:48] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[49:52] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[53:56] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v9, 48, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v1, 5, v254
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v91, v4, 6, v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v242, 0x1c00, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v92, 16, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v94, v91, v242
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v93, 32, v91
	v_xor_b32_e32 v90, 48, v91
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v97, 48, v94
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
.LBB0_3:                                ; %Flow470
	s_load_b64 s[40:41], s[0:1], 0x20
	v_or_b32_e32 v9, s33, v4
	v_or_b32_e32 v6, s33, v6
	v_or_b32_e32 v7, s33, v7
	v_or_b32_e32 v8, s33, v8
	s_ashr_i32 s1, s18, 8
	v_or_b32_e32 v68, s17, v254
	v_mul_lo_u32 v40, v9, s1
	v_mul_lo_u32 v33, v6, s1
	v_mul_lo_u32 v34, v7, s1
	v_mul_lo_u32 v35, v8, s1
	v_and_b32_e32 v14, 0xf0, v254
	v_and_b32_e32 v13, 28, v243
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s16, 7
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s10, s15, 8
	s_lshl_b32 s11, s14, 8
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 48, v5
	v_or_b32_e32 v3, s10, v3
	v_and_b32_e32 v5, 32, v15
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v242, 0x1c00, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v91, v4, 6, v1
	v_or_b32_e32 v1, s10, v2
	v_lshlrev_b32_e32 v4, 2, v14
	v_subrev_nc_u32_e32 v3, s11, v3
	v_add_nc_u32_e32 v2, s33, v2
	v_or_b32_e32 v94, v91, v242
	v_subrev_nc_u32_e32 v1, s11, v1
	v_add3_u32 v9, 0, v4, v5
	v_mul_lo_u32 v3, s22, v3
	v_mul_lo_u32 v2, s22, v2
	v_lshlrev_b32_e32 v10, 1, v14
	v_or_b32_e32 v6, 0x80, v1
	v_or_b32_e32 v7, 64, v1
	v_mul_lo_u32 v1, s22, v1
	v_xor_b32_e32 v92, 16, v91
	v_xor_b32_e32 v93, 32, v91
	v_mul_lo_u32 v4, s22, v6
	v_mul_lo_u32 v5, s22, v7
	v_and_b32_e32 v6, 48, v241
	v_xor_b32_e32 v90, 48, v91
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v97, 48, v94
	v_add3_u32 v98, v3, v6, 0x100
	v_add3_u32 v99, v4, v6, 0x100
	v_add3_u32 v100, v5, v6, 0x100
	v_add3_u32 v101, v1, v6, 0x100
	v_add3_u32 v102, v2, v6, 0x100
	v_or_b32_e32 v103, 0x100, v6
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_add_nc_u32_e32 v105, 0, v10
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v104, v9, v13
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_mov_b32 s11, 1
	s_add_i32 s10, s0, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s34, 0, 0x9000
	s_add_i32 s42, 0, 0x4000
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s13, s23
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v20, s12, v94
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v9, s13, v103
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s13, v102
	v_add_nc_u32_e32 v18, s0, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v106, s12, v95
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v19, s0, v92
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[171:174], v20 offset:8192
	ds_load_b128 v[175:178], v106 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[123:126], v18
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v20
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[127:130], v19
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v106
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[139:142], v18 offset:1024
	ds_load_b128 v[143:146], v19 offset:1024
	ds_load_b128 v[155:158], v18 offset:2048
	ds_load_b128 v[159:162], v19 offset:2048
	ds_load_b128 v[179:182], v18 offset:3072
	ds_load_b128 v[183:186], v19 offset:3072
	v_add_nc_u32_e32 v18, s0, v93
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v19, s12, v96
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v20, s13, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[163:166], v[123:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[171:174], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[171:174], v[139:142], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[127:130], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[175:178], v[127:130], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[163:166], v[139:142], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[175:178], v[143:146], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[171:174], v[155:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[143:146], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[155:158], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[159:162], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[159:162], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[179:182], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[183:186], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[171:174], v[179:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[179:182], v19 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[163:170], v[175:178], v[183:186], v[163:170] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[175:178], v19
	v_add_nc_u32_e32 v19, s12, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[171:174], v[115:122] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[175:178], v[171:174], v[107:114] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[175:178], v[171:174], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[171:174], v[131:138] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[171:174], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[171:174], v[147:154] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18 offset:3072
	v_add_nc_u32_e32 v18, s0, v90
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s23, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 24
	s_add_i32 s0, s23, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s0, 8
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s14, s12, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	s_add_i32 s10, s10, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[175:178], v[171:174], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[179:182], v[171:174], v[163:170] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[175:178], v19
	ds_load_b128 v[179:182], v19 offset:8192
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v19, s13, v100
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_addk_i32 s23, 0x80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[175:178], v[171:174], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[171:174], v[115:122] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[175:178], v[171:174], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[171:174], v[131:138] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[171:174], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[171:174], v[147:154] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v18 offset:3072
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v68, s14, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v18, v18, s[36:39], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[163:170], v[179:182], v[171:174], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[175:178], v[171:174], v[155:162] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v171, v33, s12, 1
	v_add_lshl_u32 v172, v34, s12, 1
	v_add_lshl_u32 v173, v35, s12, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v106, v170
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v170, s13, v98
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v154, v154
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v182, 0x80000000, v170, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v170, v40, s12, 1
	s_mov_b32 s12, s42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	s_clause 0x3
	buffer_load_u16 v202, v170, s[28:31], 0 offen
	buffer_load_u16 v203, v171, s[28:31], 0 offen
	buffer_load_u16 v204, v172, s[28:31], 0 offen
	buffer_load_u16 v205, v173, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s11, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s14, s0, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s0, s11, 14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s42, s0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	s_mov_b32 s0, s34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s34, s14, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s10, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v104, v18 offset:40960
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v18, s13, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[170:173], v18, s[24:27], 0 offen
	buffer_load_b128 v[174:177], v19, s[24:27], 0 offen
	buffer_load_b128 v[178:181], v20, s[24:27], 0 offen
	buffer_load_b128 v[182:185], v182, s[24:27], 0 offen
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[186:189], v105 offset:40960
	ds_load_b128 v[190:193], v105 offset:40976
	ds_load_b128 v[194:197], v105 offset:41472
	ds_load_b128 v[198:201], v105 offset:41488
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v18, s14, v16
	ds_store_b128 v18, v[9:12] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v203
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v205
	v_lshlrev_b32_e32 v12, 16, v204
	v_lshlrev_b32_e32 v10, 16, v202
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v202, v188, v11 :: v_dual_add_nc_u32 v9, s42, v16
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v217, v191, v12 :: v_dual_mul_f32 v220, v194, v10
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v237, v200, v11
	v_mul_f32_e32 v19, v186, v10
	v_dual_mul_f32 v20, v187, v10 :: v_dual_mul_f32 v203, v189, v11
	v_dual_mul_f32 v207, v189, v12 :: v_dual_mul_f32 v208, v190, v10
	v_mul_f32_e32 v225, v195, v11
	v_mul_f32_e32 v209, v191, v10
	v_dual_mul_f32 v210, v192, v10 :: v_dual_mul_f32 v227, v197, v11
	v_dual_mul_f32 v211, v193, v10 :: v_dual_mul_f32 v212, v190, v11
	v_mul_f32_e32 v221, v195, v10
	v_mul_f32_e32 v213, v191, v11
	v_dual_mul_f32 v214, v192, v11 :: v_dual_mul_f32 v223, v197, v10
	v_dual_mul_f32 v215, v193, v11 :: v_dual_mul_f32 v222, v196, v10
	v_mul_f32_e32 v235, v198, v11
	v_dual_mul_f32 v224, v194, v11 :: v_dual_mul_f32 v233, v199, v10
	v_dual_mul_f32 v232, v198, v10 :: v_dual_fmac_f32 v25, v208, v111
	v_dual_mul_f32 v234, v200, v10 :: v_dual_fmac_f32 v27, v210, v113
	v_dual_mul_f32 v236, v199, v11 :: v_dual_fmac_f32 v31, v222, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v26, v209, v112 :: v_dual_fmac_f32 v53, v235, v135
	v_dual_fmac_f32 v28, v211, v114 :: v_dual_fmac_f32 v55, v237, v137
	v_fmac_f32_e32 v60, v207, v142
	v_dual_fmac_f32 v62, v217, v144 :: v_dual_fmac_f32 v29, v220, v115
	v_fmac_f32_e32 v21, v19, v107
	v_fmac_f32_e32 v37, v233, v120
	v_fmac_f32_e32 v43, v202, v125
	v_fmac_f32_e32 v45, v212, v127
	v_fmac_f32_e32 v47, v214, v129
	v_fmac_f32_e32 v49, v224, v131
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[170:173]
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v170, v188, v10
	v_dual_mul_f32 v171, v189, v10 :: v_dual_mul_f32 v172, v186, v11
	v_mul_f32_e32 v173, v187, v11
	v_mul_f32_e32 v189, v189, v18
	v_mul_f32_e32 v205, v187, v12
	v_mul_f32_e32 v206, v188, v12
	v_mul_f32_e32 v219, v193, v12
	v_dual_mul_f32 v204, v186, v12 :: v_dual_mul_f32 v191, v191, v18
	v_mul_f32_e32 v186, v186, v18
	v_mul_f32_e32 v187, v187, v18
	v_mul_f32_e32 v188, v188, v18
	v_mul_f32_e32 v216, v190, v12
	v_mul_f32_e32 v218, v192, v12
	v_dual_mul_f32 v190, v190, v18 :: v_dual_mul_f32 v229, v195, v12
	v_dual_mul_f32 v192, v192, v18 :: v_dual_mul_f32 v231, v197, v12
	v_dual_mul_f32 v193, v193, v18 :: v_dual_mul_f32 v226, v196, v11
	v_mul_f32_e32 v239, v199, v12
	v_dual_mul_f32 v228, v194, v12 :: v_dual_mul_f32 v11, v201, v11
	v_dual_mul_f32 v230, v196, v12 :: v_dual_mul_f32 v199, v199, v18
	v_mul_f32_e32 v194, v194, v18
	v_mul_f32_e32 v195, v195, v18
	v_dual_mul_f32 v196, v196, v18 :: v_dual_fmac_f32 v23, v170, v109
	v_mul_f32_e32 v197, v197, v18
	v_mul_f32_e32 v10, v201, v10
	v_dual_mul_f32 v238, v198, v12 :: v_dual_fmac_f32 v41, v172, v123
	v_mul_f32_e32 v240, v200, v12
	v_mul_f32_e32 v12, v201, v12
	v_mul_f32_e32 v198, v198, v18
	v_mul_f32_e32 v200, v200, v18
	v_mul_f32_e32 v18, v201, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v22, v20, v108 :: v_dual_fmac_f32 v51, v226, v133
	v_fmac_f32_e32 v24, v171, v110
	v_dual_fmac_f32 v30, v221, v116 :: v_dual_fmac_f32 v57, v204, v139
	v_dual_fmac_f32 v32, v223, v118 :: v_dual_fmac_f32 v59, v206, v141
	v_dual_fmac_f32 v36, v232, v119 :: v_dual_fmac_f32 v63, v218, v145
	v_dual_fmac_f32 v38, v234, v121 :: v_dual_fmac_f32 v61, v216, v143
	v_dual_fmac_f32 v39, v10, v122 :: v_dual_fmac_f32 v42, v173, v124
	v_dual_fmac_f32 v65, v228, v147 :: v_dual_fmac_f32 v44, v203, v126
	v_dual_fmac_f32 v67, v230, v149 :: v_dual_fmac_f32 v46, v213, v128
	v_fmac_f32_e32 v69, v231, v150
	v_dual_fmac_f32 v48, v215, v130 :: v_dual_fmac_f32 v83, v194, v163
	v_dual_fmac_f32 v50, v225, v132 :: v_dual_fmac_f32 v73, v12, v154
	v_dual_fmac_f32 v52, v227, v134 :: v_dual_fmac_f32 v85, v196, v165
	v_dual_fmac_f32 v54, v236, v136 :: v_dual_fmac_f32 v77, v189, v158
	v_dual_fmac_f32 v56, v11, v138 :: v_dual_fmac_f32 v87, v198, v167
	v_dual_fmac_f32 v58, v205, v140 :: v_dual_fmac_f32 v89, v200, v169
	v_fmac_f32_e32 v64, v219, v146
	v_fmac_f32_e32 v66, v229, v148
	v_dual_fmac_f32 v70, v238, v151 :: v_dual_fmac_f32 v71, v239, v152
	v_dual_fmac_f32 v72, v240, v153 :: v_dual_fmac_f32 v75, v187, v156
	v_dual_fmac_f32 v74, v186, v155 :: v_dual_fmac_f32 v79, v191, v160
	v_dual_fmac_f32 v76, v188, v157 :: v_dual_fmac_f32 v81, v193, v162
	v_fmac_f32_e32 v78, v190, v159
	v_fmac_f32_e32 v80, v192, v161
	v_fmac_f32_e32 v84, v195, v164
	v_fmac_f32_e32 v86, v197, v166
	v_fmac_f32_e32 v88, v199, v168
	v_fmac_f32_e32 v82, v18, v106
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[174:177] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[178:181] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[182:185] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v15
	s_addk_i32 s13, 0x100
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s34, 0, 0x9000
	s_add_i32 s42, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v233, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v237, 0
	v_mov_b32_e32 v249, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v2, off offset:8
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v165, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v17, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v2, off offset:12
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v245, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v236, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v160, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s24, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v5, s12, v94
	v_add_nc_u32_e32 v2, s12, v96
	v_add_nc_u32_e32 v4, s12, v97
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s0, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v3, s12, v95
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s0, v93
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[174:177], v5 offset:8192
	ds_load_b128 v[178:181], v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v15, s0, v92
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[99:102], v2 offset:8192
	ds_load_b128 v[162:165], v2
	ds_load_b128 v[166:169], v3 offset:8192
	ds_load_b128 v[170:173], v3
	ds_load_b128 v[190:193], v4 offset:8192
	ds_load_b128 v[194:197], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v2, s24 :: v_dual_mov_b32 v7, s29
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[138:141], v10 offset:1024
	ds_load_b128 v[122:125], v10
	ds_load_b128 v[182:185], v11 offset:1024
	ds_load_b128 v[130:133], v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v8, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[186:189], v15 offset:1024
	ds_load_b128 v[134:137], v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v9, s31 :: v_dual_add_nc_u32 v12, s0, v90
	v_dual_mov_b32 v3, s25 :: v_dual_mov_b32 v4, s26
	v_dual_mov_b32 v5, s27 :: v_dual_mov_b32 v6, s28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[198:201], v12 offset:1024
	ds_load_b128 v[142:145], v12
	ds_load_b128 v[202:205], v10 offset:3072
	ds_load_b128 v[154:157], v10 offset:2048
	ds_load_b128 v[206:209], v15 offset:3072
	ds_load_b128 v[210:213], v15 offset:2048
	ds_load_b128 v[214:217], v11 offset:3072
	ds_load_b128 v[218:221], v11 offset:2048
	ds_load_b128 v[222:225], v12 offset:3072
	ds_load_b128 v[226:229], v12 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[122:125], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[122:125], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[178:181], v[138:141], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[170:173], v[134:137], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[134:137], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[170:173], v[186:189], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[130:133], v[114:121] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[99:102], v[130:133], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[138:141], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[154:157], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[194:197], v[142:145], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[190:193], v[142:145], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[178:181], v[154:157], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[178:181], v[202:205], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[174:177], v[202:205], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[170:173], v[210:213], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[166:169], v[210:213], v[146:153] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v119
	v_wmma_i32_16x16x16_iu8 v[130:137], v[166:169], v[186:189], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[166:169], v[206:209], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[218:221], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[170:173], v[206:209], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[99:102], v[218:221], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[182:185], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[99:102], v[214:217], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[194:197], v[226:229], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[99:102], v[182:185], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[214:217], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[190:193], v[226:229], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[190:193], v[222:225], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v140
	v_wmma_i32_16x16x16_iu8 v[122:129], v[194:197], v[198:201], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[190:193], v[198:201], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[194:197], v[222:225], v[154:161] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v236, v2
	v_cvt_f32_i32_e32 v2, v114
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v10, off offset:8
	v_cvt_f32_i32_e32 v0, v108
	v_cvt_f32_i32_e32 v10, v151
	v_cvt_f32_i32_e32 v232, v115
	v_cvt_f32_i32_e32 v233, v116
	v_cvt_f32_i32_e32 v234, v117
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:16
	scratch_store_b32 off, v2, off offset:4
	v_cvt_f32_i32_e32 v0, v109
	v_cvt_f32_i32_e32 v235, v118
	v_cvt_f32_i32_e32 v237, v120
	v_cvt_f32_i32_e32 v165, v121
	v_cvt_f32_i32_e32 v239, v106
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v10, off offset:12
	v_cvt_f32_i32_e32 v0, v112
	v_cvt_f32_i32_e32 v240, v107
	v_cvt_f32_i32_e32 v246, v110
	v_cvt_f32_i32_e32 v247, v111
	v_cvt_f32_i32_e32 v249, v113
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v250, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v17, v125
	v_cvt_f32_i32_e32 v188, v126
	v_cvt_f32_i32_e32 v126, v127
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v162, v129
	v_cvt_f32_i32_e32 v0, v130
	v_cvt_f32_i32_e32 v255, v131
	v_cvt_f32_i32_e32 v244, v132
	v_cvt_f32_i32_e32 v245, v133
	v_cvt_f32_i32_e32 v248, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v166, v136
	v_cvt_f32_i32_e32 v172, v137
	v_cvt_f32_i32_e32 v169, v138
	v_cvt_f32_i32_e32 v251, v139
	v_cvt_f32_i32_e32 v187, v141
	v_cvt_f32_i32_e32 v189, v142
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v252, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v170, v150
	v_cvt_f32_i32_e32 v18, v152
	v_cvt_f32_i32_e32 v171, v153
	v_cvt_f32_i32_e32 v109, v154
	v_cvt_f32_i32_e32 v164, v155
	v_cvt_f32_i32_e32 v111, v156
	v_cvt_f32_i32_e32 v112, v157
	v_cvt_f32_i32_e32 v121, v158
	v_cvt_f32_i32_e32 v152, v159
	v_cvt_f32_i32_e32 v113, v160
	v_cvt_f32_i32_e32 v115, v161
	v_cvt_f32_i32_e32 v122, v3
	v_cvt_f32_i32_e32 v130, v4
	v_cvt_f32_i32_e32 v116, v5
	v_cvt_f32_i32_e32 v133, v6
	v_cvt_f32_i32_e32 v150, v7
	v_cvt_f32_i32_e32 v119, v8
	v_cvt_f32_i32_e32 v160, v9
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s23, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s23, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v40, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v68, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v33, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_add_lshl_u32 v5, v34, s0, 1
	v_add_lshl_u32 v6, v35, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v1, 32, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v127, v2, s[8:11], 0 offen
	buffer_load_u16 v132, v4, s[8:11], 0 offen
	buffer_load_u16 v114, v5, s[8:11], 0 offen
	buffer_load_u16 v20, v6, s[8:11], 0 offen
	v_dual_mov_b32 v167, 0 :: v_dual_lshlrev_b32 v2, 2, v14
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v4, 1, v14
	v_mov_b32_e32 v210, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v1, 0, v2, v1
	v_mov_b32_e32 v208, 0
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v163, 0, v4
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v129, v1, v13
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v231, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s0, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v129, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v163 offset:40960
	ds_load_b128 v[5:8], v163 offset:40976
	ds_load_b128 v[9:12], v163 offset:41472
	ds_load_b128 v[13:16], v163 offset:41488
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v155, v141 :: v_dual_add_nc_u32 v98, s42, v95
	v_dual_mov_b32 v158, v245 :: v_dual_add_nc_u32 v99, s42, v94
	v_dual_mov_b32 v138, v247 :: v_dual_add_nc_u32 v91, s34, v91
	v_dual_mov_b32 v156, v255 :: v_dual_add_nc_u32 v167, s42, v97
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v242, off offset:64
	scratch_store_b32 off, v243, off offset:36
	scratch_store_b32 off, v252, off offset:52
	v_dual_mov_b32 v157, v244 :: v_dual_mov_b32 v146, v249
	v_dual_mov_b32 v137, v246 :: v_dual_add_nc_u32 v92, s34, v92
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	ds_load_b128 v[244:247], v98 offset:8192
	v_dual_mov_b32 v149, v251 :: v_dual_mov_b32 v140, v250
	v_mov_b32_e32 v159, v145
	v_dual_mov_b32 v145, v248 :: v_dual_mov_b32 v154, v233
	ds_load_b128 v[248:251], v98
	v_dual_mov_b32 v19, v90 :: v_dual_mov_b32 v222, v187
	v_mov_b32_e32 v90, v254
	ds_load_b128 v[252:255], v99 offset:8192
	ds_load_b128 v[98:101], v99
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[190:193], v91
	s_mov_b32 s24, 0
	ds_load_b128 v[102:105], v91 offset:3072
	ds_load_b128 v[206:209], v91 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s31, s24
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v234, off offset:72
	scratch_store_b32 off, v126, off offset:60
	scratch_store_b32 off, v189, off offset:68
	scratch_store_b32 off, v171, off offset:48
	scratch_store_b32 off, v235, off offset:44
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	v_mov_b32_e32 v223, v232
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[232:235], v91 offset:2048
	v_dual_mov_b32 v189, v109 :: v_dual_mov_b32 v134, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v231, s31 :: v_dual_mov_b32 v136, v113
	v_dual_mov_b32 v187, v111 :: v_dual_mov_b32 v128, v122
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v92
	v_dual_mov_b32 v141, v0 :: v_dual_mov_b32 v148, v169
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v172, off offset:56
	scratch_store_b32 off, v18, off offset:40
	v_dual_mov_b32 v151, v17 :: v_dual_mov_b32 v226, s26
	v_dual_mov_b32 v161, v121 :: v_dual_mov_b32 v224, s24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v229, s29 :: v_dual_mov_b32 v18, v40
	v_dual_mov_b32 v227, s27 :: v_dual_mov_b32 v40, v35
	v_mov_b32_e32 v225, s25
	v_dual_mov_b32 v35, v34 :: v_dual_mov_b32 v126, v119
	v_dual_mov_b32 v34, v33 :: v_dual_mov_b32 v33, v115
	v_dual_mov_b32 v17, v116 :: v_dual_mov_b32 v122, v135
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v0.l, v114.l
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[114:117], v92 offset:2048
	ds_load_b128 v[118:121], v92 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v230, s30 :: v_dual_add_nc_u32 v169, s34, v93
	v_mov_b32_e32 v228, s28
	v_dual_mov_b32 v147, v240 :: v_dual_add_nc_u32 v168, s42, v96
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[94:97], v167 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[106:109], v92 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[98:101], v[190:193], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[252:255], v[190:193], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[98:101], v[206:209], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[252:255], v[206:209], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[98:101], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[252:255], v[232:235], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[248:251], v[110:113], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[244:247], v[110:113], v[179:186] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[110:113], v167
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v167, s34, v19
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[240:243], v168
	v_mov_b16_e64 v131.l, v127.l
	v_mov_b32_e32 v135, v123
	v_mov_b32_e32 v123, v237
	v_mov_b32_e32 v153, v139
	v_mov_b32_e32 v139, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[248:251], v[118:121], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[244:247], v[118:121], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[248:251], v[114:117], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[244:247], v[114:117], v[214:221] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[114:117], v167
	ds_load_b128 v[118:121], v167 offset:1024
	v_mov_b32_e32 v127, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[232:239], v[98:101], v[102:105], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[252:255], v[102:105], v[224:231] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[98:101], v169
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[102:105], v168 offset:8192
	v_mov_b32_e32 v254, v90
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[90:93], v169 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[248:251], v[106:109], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[244:247], v[106:109], v[224:231] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[106:109], v169 offset:2048
	ds_load_b128 v[244:247], v169 offset:3072
	ds_load_b128 v[248:251], v167 offset:2048
	v_mov_b32_e32 v255, v156
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[240:243], v[98:101], v[171:178] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[102:105], v[98:101], v[179:186] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[98:101], v167 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[240:243], v[90:93], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[102:105], v[90:93], v[198:205] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[240:243], v[106:109], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[102:105], v[106:109], v[214:221] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[240:243], v[244:247], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[110:113], v[114:117], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[110:113], v[118:121], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[102:105], v[244:247], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[94:97], v[118:121], v[198:205] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[110:113], v[248:251], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[94:97], v[248:251], v[214:221] neg_lo:[1,1,0]
	v_mov_b32_e32 v109, v189
	v_mov_b32_e32 v119, v126
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v252, off, off offset:52
	scratch_load_b32 v243, off, off offset:36
	scratch_load_b32 v242, off, off offset:64
	v_wmma_i32_16x16x16_iu8 v[179:186], v[94:97], v[114:117], v[179:186] neg_lo:[1,1,0]
	v_dual_mov_b32 v115, v33 :: v_dual_mov_b32 v250, v140
	v_dual_mov_b32 v33, v34 :: v_dual_mov_b32 v34, v35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[110:113], v[98:101], v[232:239] neg_lo:[1,1,0]
	v_mov_b32_e32 v112, v134
	v_wmma_i32_16x16x16_iu8 v[224:231], v[94:97], v[98:101], v[224:231] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v171
	v_cvt_f32_i32_e32 v134, v195
	v_cvt_f32_i32_e32 v195, v201
	v_cvt_f32_i32_e32 v201, v207
	v_cvt_f32_i32_e32 v207, v213
	v_cvt_f32_i32_e32 v213, v219
	v_cvt_f32_i32_e32 v219, v235
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v235, off, off offset:44
	scratch_load_b32 v171, off, off offset:48
	scratch_load_b32 v189, off, off offset:68
	scratch_load_b32 v126, off, off offset:60
	v_dual_mov_b32 v35, v40 :: v_dual_mov_b32 v248, v145
	v_mov_b32_e32 v40, v18
	v_mov_b32_e32 v246, v137
	v_cvt_f32_i32_e32 v167, v172
	v_cvt_f32_i32_e32 v137, v194
	v_cvt_f32_i32_e32 v194, v200
	v_cvt_f32_i32_e32 v200, v206
	v_cvt_f32_i32_e32 v206, v212
	v_cvt_f32_i32_e32 v212, v218
	scratch_load_b32 v172, off, off offset:56 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v218, v234
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v234, off, off offset:72
	scratch_load_b32 v18, off, off offset:40
	v_mov_b16_e32 v114.l, v0.l
	v_mov_b32_e32 v116, v17
	v_dual_mov_b32 v240, v147 :: v_dual_lshlrev_b32 v241, 4, v254
	v_mov_b32_e32 v247, v138
	v_dual_mov_b32 v245, v158 :: v_dual_mov_b32 v244, v157
	v_dual_mov_b32 v0, v141 :: v_dual_mov_b32 v141, v155
	v_mov_b32_e32 v145, v159
	v_mov_b32_e32 v249, v146
	v_mov_b32_e32 v251, v149
	v_mov_b32_e32 v169, v148
	v_mov_b32_e32 v113, v136
	v_mov_b32_e32 v111, v187
	v_cvt_f32_i32_e32 v168, v173
	v_cvt_f32_i32_e32 v146, v174
	v_cvt_f32_i32_e32 v155, v175
	v_cvt_f32_i32_e32 v136, v176
	v_cvt_f32_i32_e32 v173, v177
	v_cvt_f32_i32_e32 v174, v178
	v_cvt_f32_i32_e32 v175, v179
	v_cvt_f32_i32_e32 v176, v180
	v_cvt_f32_i32_e32 v177, v181
	v_cvt_f32_i32_e32 v178, v182
	v_cvt_f32_i32_e32 v179, v183
	v_cvt_f32_i32_e32 v180, v184
	v_cvt_f32_i32_e32 v181, v185
	v_cvt_f32_i32_e32 v182, v186
	v_cvt_f32_i32_e32 v183, v190
	v_cvt_f32_i32_e32 v184, v191
	v_cvt_f32_i32_e32 v185, v192
	v_cvt_f32_i32_e32 v186, v193
	v_cvt_f32_i32_e32 v190, v196
	v_cvt_f32_i32_e32 v191, v197
	v_cvt_f32_i32_e32 v192, v198
	v_cvt_f32_i32_e32 v193, v199
	v_cvt_f32_i32_e32 v196, v202
	v_cvt_f32_i32_e32 v197, v203
	v_cvt_f32_i32_e32 v198, v204
	v_cvt_f32_i32_e32 v199, v205
	v_cvt_f32_i32_e32 v202, v208
	v_cvt_f32_i32_e32 v203, v209
	v_cvt_f32_i32_e32 v204, v210
	v_cvt_f32_i32_e32 v205, v211
	v_cvt_f32_i32_e32 v208, v214
	v_cvt_f32_i32_e32 v209, v215
	v_cvt_f32_i32_e32 v210, v216
	v_cvt_f32_i32_e32 v211, v217
	v_cvt_f32_i32_e32 v214, v220
	v_cvt_f32_i32_e32 v215, v221
	v_cvt_f32_i32_e32 v216, v232
	v_mov_b32_e32 v232, v223
	v_cvt_f32_i32_e32 v217, v233
	v_mov_b32_e32 v233, v154
	v_mov_b32_e32 v121, v161
	v_mov_b32_e32 v17, v151
	v_mov_b32_e32 v187, v222
	v_cvt_f32_i32_e32 v220, v236
	v_cvt_f32_i32_e32 v221, v237
	v_mov_b32_e32 v237, v123
	v_mov_b32_e32 v123, v135
	v_dual_mov_b32 v135, v122 :: v_dual_mov_b32 v236, v127
	v_mov_b32_e32 v122, v128
	v_mov_b16_e64 v127.l, v131.l
	v_cvt_f32_i32_e32 v222, v238
	v_cvt_f32_i32_e32 v223, v239
	v_mov_b32_e32 v239, v139
	v_mov_b32_e32 v139, v153
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v231, v231
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s13, 31
	v_mov_b16_e32 v91.l, 0
	s_lshr_b32 s4, s4, 24
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v20.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s13, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s4, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v40, v40, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v90, v68, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v33, v33, s4, 1
	v_add_lshl_u32 v34, v34, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v35, v35, s4, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_mul_f32 v93, v15, v91
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v90, v90, s[20:23], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v16, v91
	v_mul_f32_e32 v94, v14, v91
	v_mul_f32_e32 v95, v13, v91
	v_mul_f32_e32 v96, v12, v91
	v_mul_f32_e32 v97, v11, v91
	v_mul_f32_e32 v99, v10, v91
	v_mul_f32_e32 v100, v9, v91
	v_mul_f32_e32 v101, v8, v91
	v_mul_f32_e32 v102, v7, v91
	v_mul_f32_e32 v103, v6, v91
	v_mul_f32_e32 v104, v5, v91
	v_mul_f32_e32 v105, v4, v91
	v_mul_f32_e32 v106, v3, v91
	v_mul_f32_e32 v107, v2, v91
	v_mul_f32_e32 v108, v1, v91
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v91.h, v114.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v93, v93, v119, v89
	v_fma_f32 v96, v96, v116, v86
	v_fma_f32 v100, v100, v236, v83
	v_fma_f32 v101, v101, v115, v81
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v110, v15, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v93, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v102, v102, v113, v80
	v_fma_f32 v104, v104, v121, v78
	v_fma_f32 v105, v105, v112, v77
	v_fma_f32 v93, v110, v18, v72
	scratch_load_b32 v18, off, off offset:12 ; 4-byte Folded Reload
	v_fma_f32 v106, v106, v111, v76
	v_fma_f32 v108, v108, v109, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v16, v91
	v_mul_f32_e32 v111, v14, v91
	v_mul_f32_e32 v112, v13, v91
	v_mul_f32_e32 v113, v12, v91
	v_mul_f32_e32 v114, v11, v91
	v_mul_f32_e32 v115, v10, v91
	v_mul_f32_e32 v116, v9, v91
	v_mul_f32_e32 v117, v8, v91
	v_mul_f32_e32 v118, v7, v91
	v_mul_f32_e32 v119, v6, v91
	v_mul_f32_e32 v120, v5, v91
	v_mul_f32_e32 v121, v4, v91
	v_mul_f32_e32 v147, v3, v91
	v_mul_f32_e32 v148, v2, v91
	v_mul_f32_e32 v149, v1, v91
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v91.h, v132.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v94, v150, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v100, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v100, v116, v142, v65
	v_fma_f32 v92, v92, v160, v82
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v116, v9, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v94, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v95, v95, v133, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v100, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v97, v97, v130, v85
	v_fma_f32 v100, v116, v0, v49
	v_fma_f32 v99, v99, v122, v84
	v_fma_f32 v103, v103, v152, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v82, v92, s3
	v_cndmask_b32_e64 v87, v87, v95, s3
	v_cndmask_b32_e64 v86, v86, v96, s3
	v_cndmask_b32_e64 v85, v85, v97, s3
	v_cndmask_b32_e64 v84, v84, v99, s3
	v_cndmask_b32_e64 v81, v81, v101, s3
	v_cndmask_b32_e64 v80, v80, v102, s3
	v_cndmask_b32_e64 v79, v79, v103, s3
	v_cndmask_b32_e64 v78, v78, v104, s3
	v_cndmask_b32_e64 v77, v77, v105, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v92, v109, v171, v73
	v_fma_f32 v95, v112, v170, v70
	v_fma_f32 v96, v113, v145, v69
	v_fma_f32 v97, v114, v144, v67
	v_fma_f32 v99, v115, v143, v66
	v_fma_f32 v101, v117, v141, v64
	v_fma_f32 v102, v118, v252, v63
	v_fma_f32 v103, v119, v139, v62
	v_fma_f32 v104, v120, v189, v61
	v_fma_f32 v105, v121, v187, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v16, v91
	v_mul_f32_e32 v110, v15, v91
	v_mul_f32_e32 v112, v13, v91
	v_mul_f32_e32 v113, v12, v91
	v_mul_f32_e32 v114, v11, v91
	v_mul_f32_e32 v115, v10, v91
	v_mul_f32_e32 v117, v8, v91
	v_mul_f32_e32 v118, v7, v91
	v_mul_f32_e32 v119, v6, v91
	v_mul_f32_e32 v120, v5, v91
	v_mul_f32_e32 v121, v4, v91
	v_mul_f32_e32 v131, v3, v91
	v_mul_f32_e32 v132, v2, v91
	v_mul_f32_e32 v133, v1, v91
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v119, v126, v46
	v_fma_f32 v20, v120, v188, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v106, s3
	v_cndmask_b32_e64 v72, v72, v93, s3
	v_cndmask_b32_e64 v93, v69, v96, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v107, v107, v164, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v92, s3
	v_cndmask_b32_e64 v92, v70, v95, s3
	v_cndmask_b32_e64 v66, v66, v99, s3
	v_cndmask_b32_e64 v61, v61, v104, s3
	v_cndmask_b32_e64 v75, v75, v107, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v96, v113, v245, v52
	v_fma_f32 v99, v115, v255, v50
	v_fma_f32 v104, v132, v123, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v108, s3
	v_cndmask_b32_e64 v67, v67, v97, s3
	v_cndmask_b32_e64 v64, v64, v101, s3
	v_cndmask_b32_e64 v63, v63, v102, s3
	v_cndmask_b32_e64 v62, v62, v103, s3
	v_cndmask_b32_e64 v60, v60, v105, s3
	v_cndmask_b32_e64 v52, v52, v96, s3
	v_cndmask_b32_e64 v49, v49, v100, s3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s33, s33, s35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v94, v111, v18, v71
	scratch_load_b32 v18, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v111, v14, v91
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v91.h, v127.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v94, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v111, v135, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v15, v91
	v_mul_f32_e32 v12, v12, v91
	v_mul_f32_e32 v11, v11, v91
	v_mul_f32_e32 v6, v6, v91
	v_mul_f32_e32 v16, v16, v91
	v_mul_f32_e32 v14, v14, v91
	v_mul_f32_e32 v13, v13, v91
	v_mul_f32_e32 v10, v10, v91
	v_mul_f32_e32 v9, v9, v91
	v_mul_f32_e32 v8, v8, v91
	v_mul_f32_e32 v7, v7, v91
	v_mul_f32_e32 v5, v5, v91
	v_mul_f32_e32 v4, v4, v91
	v_mul_f32_e32 v3, v3, v91
	v_mul_f32_e32 v2, v2, v91
	v_mul_f32_e32 v1, v1, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v46, v19, s3
	v_cndmask_b32_e64 v19, v45, v20, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v240, v30
	v_fma_f32 v9, v9, v239, v29
	v_fma_f32 v16, v16, v249, v39
	v_fma_f32 v14, v14, v247, v37
	v_fma_f32 v13, v13, v246, v36
	v_fma_f32 v46, v5, v235, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v9, s3
	v_cndmask_b32_e64 v39, v39, v16, s3
	v_cndmask_b32_e64 v37, v37, v14, s3
	v_cndmask_b32_e64 v36, v36, v13, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v106, v147, v18, v59
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v0, v38
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v59, v106, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v110, v166, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v55, v59, s3
	v_cndmask_b32_e64 v55, v54, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v3, v233, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v54, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v0, v32
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v12, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v0, v31
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v11, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v45, v6, v0, v26
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v45, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v1, v0, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v1, 16, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v38, v15, s3
	v_cndmask_b32_e64 v38, v30, v10, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v30, 16, v33
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v129, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v163 offset:41472
	ds_load_b128 v[13:16], v163 offset:41488
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v69, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v34, 16, v35
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v0, 6, v254
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v111, v9, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v107, v148, v251, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v113, v11, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v112, v248, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v116, v14, v30
	v_mul_f32_e32 v126, v9, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v58, v107, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v58, v109, v172, v56
	v_fma_f32 v18, v121, v17, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v53, v70, s3
	v_cndmask_b32_e64 v70, v50, v99, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v4, v234, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v58, s3
	v_cndmask_b32_e64 v20, v44, v18, s3
	v_cndmask_b32_e64 v44, v42, v104, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v8, v165, v28
	v_fma_f32 v42, v7, v237, v27
	v_fma_f32 v58, v2, v232, v22
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[1:4], v163 offset:40960
	ds_load_b128 v[5:8], v163 offset:40976
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v18, s3
	v_cndmask_b32_e64 v18, v25, v46, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v128, v11, v33 :: v_dual_lshlrev_b32 v25, 16, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v105, v133, v250, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v130, v13, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v103, v131, v124, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v42, s3
	v_cndmask_b32_e64 v24, v24, v50, s3
	v_cndmask_b32_e64 v41, v41, v105, s3
	v_cndmask_b32_e64 v22, v22, v58, s3
	v_cndmask_b32_e64 v43, v43, v103, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v9, v25
	v_mul_f32_e32 v96, v10, v25
	v_mul_f32_e32 v99, v12, v25
	v_mul_f32_e32 v115, v13, v30
	v_mul_f32_e32 v127, v10, v33
	v_mul_f32_e32 v100, v13, v25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v119, v2, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v97, v114, v244, v51
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v114, v12, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v108, v149, v169, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v121, v4, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v102, v118, v125, v47
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v122, v5, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v101, v117, v162, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v108, s3
	v_cndmask_b32_e64 v51, v51, v97, s3
	v_cndmask_b32_e64 v47, v47, v102, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v1, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v101, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v2, v25
	v_mul_f32_e32 v42, v3, v25
	v_mul_f32_e32 v45, v4, v25
	v_mul_f32_e32 v46, v5, v25
	v_mul_f32_e32 v50, v6, v25
	v_mul_f32_e32 v54, v7, v25
	v_mul_f32_e32 v58, v8, v25
	v_mul_f32_e32 v97, v11, v25
	v_mul_f32_e32 v101, v14, v25
	v_mul_f32_e32 v103, v1, v30
	v_mul_f32_e32 v105, v3, v30
	v_mul_f32_e32 v107, v5, v30
	v_mul_f32_e32 v109, v7, v30
	v_dual_mul_f32 v117, v15, v30 :: v_dual_mul_f32 v118, v1, v33
	v_mul_f32_e32 v120, v3, v33
	v_mul_f32_e32 v123, v6, v33
	v_mul_f32_e32 v124, v7, v33
	v_mul_f32_e32 v125, v8, v33
	v_mul_f32_e32 v102, v15, v25
	v_dual_mul_f32 v25, v16, v25 :: v_dual_mul_f32 v104, v2, v30
	v_mul_f32_e32 v106, v4, v30
	v_mul_f32_e32 v108, v6, v30
	v_mul_f32_e32 v110, v8, v30
	v_mul_f32_e32 v112, v10, v30
	v_mul_f32_e32 v30, v16, v30
	v_mul_f32_e32 v129, v12, v33
	v_mul_f32_e32 v131, v14, v33
	v_mul_f32_e32 v132, v15, v33
	v_mul_f32_e32 v33, v16, v33
	v_mul_f32_e32 v1, v1, v34
	v_mul_f32_e32 v2, v2, v34
	v_mul_f32_e32 v3, v3, v34
	v_mul_f32_e32 v4, v4, v34
	v_mul_f32_e32 v5, v5, v34
	v_mul_f32_e32 v6, v6, v34
	v_mul_f32_e32 v7, v7, v34
	v_mul_f32_e32 v8, v8, v34
	v_mul_f32_e32 v9, v9, v34
	v_mul_f32_e32 v10, v10, v34
	v_mul_f32_e32 v11, v11, v34
	v_mul_f32_e32 v12, v12, v34
	v_mul_f32_e32 v13, v13, v34
	v_mul_f32_e32 v14, v14, v34
	v_mul_f32_e32 v15, v15, v34
	v_mul_f32_e32 v16, v16, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v35, v98, v21
	v_fma_f32 v35, v40, v167, v22
	v_fma_f32 v40, v42, v168, v23
	v_fma_f32 v42, v45, v146, v24
	v_fma_f32 v45, v46, v155, v18
	v_fma_f32 v46, v50, v136, v26
	v_fma_f32 v50, v54, v173, v27
	v_fma_f32 v54, v58, v174, v28
	v_fma_f32 v58, v69, v175, v29
	v_fma_f32 v69, v96, v176, v38
	v_fma_f32 v96, v97, v177, v31
	v_fma_f32 v97, v99, v178, v32
	v_fma_f32 v99, v101, v180, v37
	v_fma_f32 v101, v103, v183, v41
	v_fma_f32 v103, v105, v185, v43
	v_fma_f32 v105, v107, v137, v19
	v_fma_f32 v107, v109, v190, v47
	v_fma_f32 v109, v111, v192, v49
	v_fma_f32 v111, v113, v194, v51
	v_fma_f32 v113, v115, v196, v53
	v_fma_f32 v115, v117, v198, v59
	v_fma_f32 v117, v118, v200, v57
	v_fma_f32 v118, v119, v201, v95
	v_fma_f32 v119, v120, v202, v94
	v_fma_f32 v120, v121, v203, v60
	v_fma_f32 v121, v122, v204, v61
	v_fma_f32 v122, v123, v205, v62
	v_fma_f32 v123, v124, v206, v63
	v_fma_f32 v124, v125, v207, v64
	v_fma_f32 v125, v126, v208, v65
	v_fma_f32 v126, v127, v209, v66
	v_fma_f32 v140, v9, v224, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v23, v40, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v98, v100, v179, v36
	v_fma_f32 v100, v102, v181, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v66, v126, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v66, 16, v254
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v102, v104, v184, v44
	v_fma_f32 v104, v106, v186, v20
	v_fma_f32 v106, v108, v134, v91
	v_fma_f32 v108, v110, v191, v48
	v_fma_f32 v110, v112, v193, v70
	v_fma_f32 v112, v114, v195, v52
	v_fma_f32 v114, v116, v197, v55
	v_fma_f32 v116, v30, v199, v56
	v_fma_f32 v133, v2, v217, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v28, v54, s2
	v_cndmask_b32_e64 v54, v37, v99, s2
	v_cndmask_b32_e64 v2, v41, v101, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v37, 0xcf0, v241
	v_and_or_b32 v41, v243, 64, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v134, v3, v218, v76
	v_fma_f32 v141, v10, v225, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v43, v103, s2
	v_cndmask_b32_e64 v43, v51, v111, s2
	v_cndmask_b32_e64 v51, v53, v113, s2
	v_cndmask_b32_e64 v3, v57, v117, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v53, 13, v254
	v_xor_b32_e32 v57, v41, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v127, v128, v210, v67
	v_fma_f32 v128, v129, v211, v93
	v_fma_f32 v129, v130, v212, v92
	v_fma_f32 v130, v131, v213, v71
	v_fma_f32 v131, v132, v214, v72
	v_fma_f32 v132, v1, v216, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v63, v123, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_or_b32 v63, 0xe000, v53, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v136, v5, v220, v78
	v_fma_f32 v138, v7, v222, v80
	v_fma_f32 v135, v4, v219, v77
	v_fma_f32 v144, v13, v228, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v21, v34, s2
	v_cndmask_b32_e64 v5, v22, v35, s2
	v_cndmask_b32_e64 v13, v24, v42, s2
	v_cndmask_b32_e64 v22, v26, v46, s2
	v_cndmask_b32_e64 v46, v32, v97, s2
	v_cndmask_b32_e64 v24, v62, v122, s2
	v_cndmask_b32_e64 v32, v64, v124, s2
	v_cndmask_b32_e64 v4, v74, v132, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v64, 0, v63
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v62, s33, v68
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v142, v11, v226, v85
	v_fma_f32 v143, v12, v227, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v94, v119, s2
	v_cndmask_b32_e64 v12, v76, v134, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v145, v14, v229, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v45, s2
	v_cndmask_b32_e64 v14, v20, v104, s2
	v_cndmask_b32_e64 v19, v19, v105, s2
	v_cndmask_b32_e64 v20, v61, v121, s2
	v_cndmask_b32_e64 v21, v78, v136, s2
	v_cndmask_b32_e64 v26, v27, v50, s2
	v_cndmask_b32_e64 v34, v29, v58, s2
	v_cndmask_b32_e64 v27, v47, v107, s2
	v_cndmask_b32_e64 v29, v80, v138, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[1:4]
	ds_store_b128 v64, v[9:12] offset:256
	ds_store_b128 v64, v[18:21] offset:512
	ds_store_b128 v64, v[26:29] offset:768
	v_xad_u32 v3, v63, 32, 0
	v_ashrrev_i32_e32 v63, 31, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v146, v15, v230, v89
	v_fma_f32 v25, v25, v182, v39
	v_fma_f32 v137, v6, v221, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v36, v98, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[1:2], 2, v[62:63]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v49, v109, s2
	v_cndmask_b32_e64 v47, v52, v112, s2
	v_cndmask_b32_e64 v36, v65, v125, s2
	v_cndmask_b32_e64 v52, v92, v129, s2
	v_cndmask_b32_e64 v37, v83, v140, s2
	v_cndmask_b32_e64 v53, v87, v144, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v215, v73
	v_fma_f32 v139, v8, v223, v81
	v_fma_f32 v147, v16, v231, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v31, v96, s2
	v_cndmask_b32_e64 v58, v90, v100, s2
	v_cndmask_b32_e64 v6, v44, v102, s2
	v_cndmask_b32_e64 v59, v59, v115, s2
	v_cndmask_b32_e64 v15, v60, v120, s2
	v_cndmask_b32_e64 v44, v67, v127, s2
	v_cndmask_b32_e64 v60, v72, v131, s2
	v_cndmask_b32_e64 v45, v85, v142, s2
	v_cndmask_b32_e64 v61, v89, v146, s2
	v_cndmask_b32_e64 v7, v95, v118, s2
	v_cndmask_b32_e64 v8, v75, v133, s2
	v_cndmask_b32_e64 v16, v77, v135, s2
	v_cndmask_b32_e64 v38, v38, v69, s2
	v_cndmask_b32_e64 v69, v39, v25, s2
	v_cndmask_b32_e64 v23, v91, v106, s2
	v_cndmask_b32_e64 v39, v70, v110, s2
	v_cndmask_b32_e64 v55, v55, v114, s2
	v_cndmask_b32_e64 v70, v56, v116, s2
	v_cndmask_b32_e64 v56, v71, v130, s2
	v_cndmask_b32_e64 v25, v79, v137, s2
	v_cndmask_b32_e64 v57, v88, v145, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b128 v64, v[34:37] offset:4096
	ds_store_b128 v64, v[42:45] offset:4352
	ds_store_b128 v64, v[50:53] offset:4608
	ds_store_b128 v64, v[58:61] offset:4864
	ds_store_b128 v3, v[5:8]
	ds_store_b128 v3, v[13:16] offset:256
	v_add_co_u32 v64, vcc_lo, s40, v1
	v_lshlrev_b32_e32 v1, 2, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v48, v108, s2
	v_cndmask_b32_e64 v71, v73, v33, s2
	v_cndmask_b32_e64 v33, v81, v139, s2
	v_cndmask_b32_e64 v72, v82, v147, s2
	v_cndmask_b32_e64 v41, v84, v141, s2
	v_cndmask_b32_e64 v48, v93, v128, s2
	v_cndmask_b32_e64 v49, v86, v143, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b128 v3, v[22:25] offset:512
	ds_store_b128 v3, v[30:33] offset:768
	ds_store_b128 v3, v[38:41] offset:4096
	ds_store_b128 v3, v[46:49] offset:4352
	v_add_co_ci_u32_e64 v65, null, s41, v2, vcc_lo
	ds_store_b128 v3, v[54:57] offset:4608
	ds_store_b128 v3, v[69:72] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_or_b32 v0, 0x300, v0, v1
	scratch_load_b64 v[1:2], off, off offset:28 ; 8-byte Folded Reload
	global_load_b32 v67, v[64:65], off
	s_waitcnt vmcnt(1)
	v_or3_b32 v0, v0, v242, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	ds_load_b128 v[60:63], v1
	ds_load_b128 v[28:31], v1 offset:128
	v_xad_u32 v1, 0x6030, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	ds_load_b128 v[56:59], v2
	ds_load_b128 v[24:27], v2 offset:128
	ds_load_b128 v[52:55], v3
	ds_load_b128 v[20:23], v3 offset:128
	v_xad_u32 v2, 0x8040, v0, 0
	ds_load_b128 v[48:51], v1
	ds_load_b128 v[16:19], v1 offset:128
	v_xad_u32 v1, 0xa050, v0, 0
	v_xad_u32 v3, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[44:47], v2
	ds_load_b128 v[12:15], v2 offset:128
	ds_load_b128 v[40:43], v1
	ds_load_b128 v[8:11], v1 offset:128
	ds_load_b128 v[36:39], v3
	ds_load_b128 v[4:7], v3 offset:128
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[0:3], v0 offset:128
.LBB0_13:                               ; %atomicrmw.start374
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v66, v67, v60
	global_atomic_cmpswap_b32 v66, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v66, v67
	v_mov_b32_e32 v67, v66
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end373
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v64, s33, s35, v68
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v64, vcc_lo, s40, v64
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_15:                               ; %atomicrmw.start368
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v66, v67, v56
	global_atomic_cmpswap_b32 v60, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v60, v67
	v_mov_b32_e32 v67, v60
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end367
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_17:                               ; %atomicrmw.start362
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v66, v67, v52
	global_atomic_cmpswap_b32 v56, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v56, v67
	v_mov_b32_e32 v67, v56
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end361
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_19:                               ; %atomicrmw.start356
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v66, v67, v48
	global_atomic_cmpswap_b32 v52, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v52, v67
	v_mov_b32_e32 v67, v52
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end355
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s35, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_21:                               ; %atomicrmw.start350
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v66, v67, v44
	global_atomic_cmpswap_b32 v48, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v48, v67
	v_mov_b32_e32 v67, v48
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end349
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_23:                               ; %atomicrmw.start344
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v66, v67, v40
	global_atomic_cmpswap_b32 v44, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v44, v67
	v_mov_b32_e32 v67, v44
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end343
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_25:                               ; %atomicrmw.start338
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v66, v67, v36
	global_atomic_cmpswap_b32 v40, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v40, v67
	v_mov_b32_e32 v67, v40
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end337
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_27:                               ; %atomicrmw.start332
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v66, v67, v32
	global_atomic_cmpswap_b32 v36, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v36, v67
	v_mov_b32_e32 v67, v36
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end331
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s35, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_29:                               ; %atomicrmw.start326
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v28
	global_atomic_cmpswap_b32 v32, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v32, v67
	v_mov_b32_e32 v67, v32
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end325
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_31:                               ; %atomicrmw.start320
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v24
	global_atomic_cmpswap_b32 v28, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v67
	v_mov_b32_e32 v67, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end319
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_33:                               ; %atomicrmw.start314
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v20
	global_atomic_cmpswap_b32 v24, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v67
	v_mov_b32_e32 v67, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end313
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_35:                               ; %atomicrmw.start308
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v16
	global_atomic_cmpswap_b32 v20, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v67
	v_mov_b32_e32 v67, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end307
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_37:                               ; %atomicrmw.start302
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v12
	global_atomic_cmpswap_b32 v16, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v67
	v_mov_b32_e32 v67, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end301
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_39:                               ; %atomicrmw.start296
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v8
	global_atomic_cmpswap_b32 v12, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v67
	v_mov_b32_e32 v67, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end295
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_41:                               ; %atomicrmw.start290
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v4
	global_atomic_cmpswap_b32 v8, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v67
	v_mov_b32_e32 v67, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end289
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_43:                               ; %atomicrmw.start284
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v66, v67, v0
	global_atomic_cmpswap_b32 v4, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v67
	v_mov_b32_e32 v67, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end283
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s35, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s40, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s41, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_45:                               ; %atomicrmw.start278
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v61
	global_atomic_cmpswap_b32 v0, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v67
	v_mov_b32_e32 v67, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end277
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v61, 31, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[60:61], 2, v[60:61]
	v_add_co_u32 v60, vcc_lo, s40, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v61, null, s41, v61, vcc_lo
	global_load_b32 v65, v[60:61], off
.LBB0_47:                               ; %atomicrmw.start272
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v64, v65, v57
	global_atomic_cmpswap_b32 v0, v[60:61], v[64:65], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v65
	v_mov_b32_e32 v65, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end271
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v56, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v57, 31, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[56:57], 2, v[56:57]
	v_add_co_u32 v56, vcc_lo, s40, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v57, null, s41, v57, vcc_lo
	global_load_b32 v61, v[56:57], off
.LBB0_49:                               ; %atomicrmw.start266
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v60, v61, v53
	global_atomic_cmpswap_b32 v0, v[56:57], v[60:61], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v61
	v_mov_b32_e32 v61, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end265
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v53, 31, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[52:53], 2, v[52:53]
	v_add_co_u32 v52, vcc_lo, s40, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v53, null, s41, v53, vcc_lo
	global_load_b32 v57, v[52:53], off
.LBB0_51:                               ; %atomicrmw.start260
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v56, v57, v49
	global_atomic_cmpswap_b32 v0, v[52:53], v[56:57], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v57
	v_mov_b32_e32 v57, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end259
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v49, 31, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[48:49], 2, v[48:49]
	v_add_co_u32 v48, vcc_lo, s40, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v49, null, s41, v49, vcc_lo
	global_load_b32 v53, v[48:49], off
.LBB0_53:                               ; %atomicrmw.start254
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v52, v53, v45
	global_atomic_cmpswap_b32 v0, v[48:49], v[52:53], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v53
	v_mov_b32_e32 v53, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end253
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v44, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v45, 31, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[44:45], 2, v[44:45]
	v_add_co_u32 v44, vcc_lo, s40, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v45, null, s41, v45, vcc_lo
	global_load_b32 v49, v[44:45], off
.LBB0_55:                               ; %atomicrmw.start248
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v48, v49, v41
	global_atomic_cmpswap_b32 v0, v[44:45], v[48:49], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v49
	v_mov_b32_e32 v49, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end247
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v41, 31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[40:41], 2, v[40:41]
	v_add_co_u32 v40, vcc_lo, s40, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v41, null, s41, v41, vcc_lo
	global_load_b32 v45, v[40:41], off
.LBB0_57:                               ; %atomicrmw.start242
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v45, v37
	global_atomic_cmpswap_b32 v0, v[40:41], v[44:45], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v45
	v_mov_b32_e32 v45, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end241
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v36, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v37, 31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	v_add_co_u32 v36, vcc_lo, s40, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s41, v37, vcc_lo
	global_load_b32 v41, v[36:37], off
.LBB0_59:                               ; %atomicrmw.start236
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v40, v41, v33
	global_atomic_cmpswap_b32 v0, v[36:37], v[40:41], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v41
	v_mov_b32_e32 v41, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end235
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v32, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s40, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s41, v33, vcc_lo
	global_load_b32 v37, v[32:33], off
.LBB0_61:                               ; %atomicrmw.start230
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end229
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s40, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s41, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_63:                               ; %atomicrmw.start224
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end223
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s40, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s41, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_65:                               ; %atomicrmw.start218
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end217
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s40, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s41, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_67:                               ; %atomicrmw.start212
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end211
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s40, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s41, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_69:                               ; %atomicrmw.start206
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end205
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_71:                               ; %atomicrmw.start200
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end199
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_73:                               ; %atomicrmw.start194
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end193
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s40, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s41, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_75:                               ; %atomicrmw.start188
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end187
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s35, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_77:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v62
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_77
; %bb.78:                               ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_79:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v58
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_79
; %bb.80:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_81:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v54
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_81
; %bb.82:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_83:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v50
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_83
; %bb.84:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_85:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v46
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_85
; %bb.86:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_87:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v42
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_87
; %bb.88:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_89:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v38
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_89
; %bb.90:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_91:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v34
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_91
; %bb.92:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_93:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v30
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_93
; %bb.94:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_95:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v26
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_95
; %bb.96:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_97:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v22
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_97
; %bb.98:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_99:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v18
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_99
; %bb.100:                              ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_101:                              ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v14
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_101
; %bb.102:                              ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_103:                              ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_103
; %bb.104:                              ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_105:                              ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v6
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_105
; %bb.106:                              ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_107:                              ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v2
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_107
; %bb.108:                              ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_109:                              ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v63
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_109
; %bb.110:                              ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_111:                              ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v59
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_111
; %bb.112:                              ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_113:                              ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v55
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_113
; %bb.114:                              ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_115:                              ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v51
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_115
; %bb.116:                              ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_117:                              ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v47
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_117
; %bb.118:                              ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_119:                              ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v43
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_119
; %bb.120:                              ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_121:                              ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v39
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_121
; %bb.122:                              ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_123:                              ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v35
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_123
; %bb.124:                              ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_125:                              ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_125
; %bb.126:                              ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_127:                              ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_127
; %bb.128:                              ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_129:                              ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_129
; %bb.130:                              ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_131:                              ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_131
; %bb.132:                              ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_133:                              ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_133
; %bb.134:                              ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_135:                              ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_135
; %bb.136:                              ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_137:                              ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_137
; %bb.138:                              ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s0, v68
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_139:                              ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_139
; %bb.140:                              ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 80
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17656
; TotalNumSgprs: 45
; NumVgprs: 256
; ScratchSize: 80
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 45
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
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 80
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 26
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
