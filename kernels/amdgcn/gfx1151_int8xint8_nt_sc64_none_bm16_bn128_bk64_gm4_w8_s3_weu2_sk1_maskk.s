	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v9, 48, v5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[10:11], null, s7, v3, v[9:10]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v38, s7, 6, v10
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v37, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s6, s10
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s9, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s18, s6
	s_sub_i32 s22, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v2, s18
	v_readfirstlane_b32 s18, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s7, v4
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s22, s22, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s18, s22
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s22, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s18, s18, s4
	s_mul_hi_u32 s4, s5, s18
	s_xor_b32 s18, s2, s17
	s_mul_i32 s23, s4, s6
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s5, s5, s23
	s_add_i32 s24, s4, 1
	s_sub_i32 s25, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s23, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s24, s4
	s_cselect_b32 s5, s25, s5
	s_add_i32 s24, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s24, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s26, s7, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s26, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s3, s17
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s18, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s6, v37
	v_or_b32_e32 v6, s6, v9
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s25, s3, 4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s24, s26, s4
.Ltmp19:
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s34, s18, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s26, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s4, s25, s7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s7, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v39, v2, v37, s4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s34, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s4, v10
	v_add_nc_u32_e32 v3, s4, v38
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s26, 0x7f
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v7, 0x80000000, v2, s2
	v_cndmask_b32_e64 v8, 0x80000000, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s6, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s6, v39
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s33, v37
	v_or_b32_e32 v12, s33, v9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v21, s33, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v3, 64, v3
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s7, v12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v7, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v8, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v29, v6, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v6, 0x80000000, v21, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v2, 64, v2
	v_and_b32_e32 v7, 48, v7
	s_mov_b64 s[4:5], s[14:15]
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v30, v6, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v2, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v3, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0xe0, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v41, v5, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s26, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v32, 0, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v40, v8, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v3, v4, 1, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v31, 0, v40
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 2, v3
	v_or_b32_e32 v8, 4, v3
	v_or_b32_e32 v11, 6, v3
	v_or_b32_e32 v12, 8, v3
	v_or_b32_e32 v5, 10, v3
	v_or_b32_e32 v6, 12, v3
	v_or_b32_e32 v7, 14, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v31, v29 offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v32, v[13:16]
	ds_store_b128 v32, v[17:20] offset:4096
	v_lshlrev_b32_e32 v13, 3, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v31, v30 offset:17408
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v32, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v32, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v14, 48, v13
	s_mov_b32 s15, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v1, 6, v14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v34, v2, 5, v29
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v32, 16, v29
	v_xor_b32_e32 v30, 32, v29
	v_xor_b32_e32 v31, 48, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v36, 16, v34
	v_xor_b32_e32 v33, 32, v34
	v_xor_b32_e32 v35, 48, v34
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s15, -1
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow73
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v19, s25, v1
	s_ashr_i32 s0, s24, 6
	v_or_b32_e32 v27, s18, v3
	v_or_b32_e32 v26, s18, v4
	v_or_b32_e32 v25, s18, v8
	v_mul_lo_u32 v28, v19, s0
	v_or_b32_e32 v23, s18, v11
	v_or_b32_e32 v21, s18, v12
	v_or_b32_e32 v24, s18, v5
	v_or_b32_e32 v22, s18, v6
	v_or_b32_e32 v20, s18, v7
	s_and_not1_b32 vcc_lo, exec_lo, s15
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v3, 48, v13
	v_mov_b32_e32 v13, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s37, s0, 3
	v_lshl_or_b32 v29, v1, 6, v3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v11, 0
	s_add_i32 s36, s33, 64
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v34, v2, 5, v29
	v_xor_b32_e32 v32, 16, v29
	v_xor_b32_e32 v30, 32, v29
	v_xor_b32_e32 v31, 48, v29
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v36, 16, v34
	v_xor_b32_e32 v33, 32, v34
	v_xor_b32_e32 v35, 48, v34
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v17, 0
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s5, 0xffff
	s_mov_b32 s28, s4
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s1, 0, 0x4400
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s39, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s41, s39, 6
	s_mov_b32 s40, s6
	s_mov_b32 s6, s33
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s36, s41
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s41, s40, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v42, s33, v37
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s41, s41, 26
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v44, s33, v39
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s40, s40, s41
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s42, s33, s34
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v42
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s40, s40, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v43, s33, v9
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s40, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v42, 0x80000000, v44, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v44, v28, s40, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s40, s40, s19
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v45, v27, s40, 1
	v_add_lshl_u32 v46, v26, s40, 1
	v_add_lshl_u32 v47, v25, s40, 1
	v_add_lshl_u32 v48, v23, s40, 1
	v_add_lshl_u32 v49, v21, s40, 1
	v_add_lshl_u32 v50, v24, s40, 1
	v_add_lshl_u32 v51, v22, s40, 1
	v_add_lshl_u32 v52, v20, s40, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v90, v42, s[8:11], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v42, 0x80000000, v44, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v44, 0x80000000, v45 :: v_dual_cndmask_b32 v45, 0x80000000, v46
	v_dual_cndmask_b32 v46, 0x80000000, v47 :: v_dual_cndmask_b32 v47, 0x80000000, v48
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v48, 0x80000000, v49 :: v_dual_cndmask_b32 v49, 0x80000000, v50
	v_dual_cndmask_b32 v50, 0x80000000, v51 :: v_dual_cndmask_b32 v51, 0x80000000, v52
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v91, v42, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v92, v44, s[28:31], 0 offen
	buffer_load_u16 v93, v45, s[28:31], 0 offen
	buffer_load_u16 v94, v46, s[28:31], 0 offen
	buffer_load_u16 v95, v47, s[28:31], 0 offen
	buffer_load_u16 v96, v48, s[28:31], 0 offen
	buffer_load_u16 v97, v49, s[28:31], 0 offen
	buffer_load_u16 v98, v50, s[28:31], 0 offen
	buffer_load_u16 v99, v51, s[28:31], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v42, s42, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v43
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v44, s42, v38
	s_mov_b32 s40, s15
	s_mov_b32 s15, s1
	s_mov_b32 s1, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v44
	s_clause 0x1
	buffer_load_b128 v[50:53], v42, s[20:23], 0 offen
	buffer_load_b128 v[54:57], v43, s[20:23], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v42, s40, v29
	v_add_nc_u32_e32 v43, s40, v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v46, s1, v34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v44, s40, v30
	v_add_nc_u32_e32 v45, s40, v31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v47, s1, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[58:61], v42
	ds_load_b128 v[62:65], v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[66:69], v46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[70:73], v44
	ds_load_b128 v[74:77], v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[78:81], v47
	v_add_nc_u32_e32 v48, s1, v33
	v_add_nc_u32_e32 v49, s1, v35
	ds_load_b128 v[82:85], v48
	ds_load_b128 v[86:89], v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s38, 1
	s_mov_b32 s14, s35
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s1, 0
	s_add_i32 s40, s39, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s38, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s35, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s41, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s35, s35, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[42:49], v[66:69], v[58:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s41, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s39, s37
	s_mov_b32 s39, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[42:49], v[78:81], v[62:65], v[42:49] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[42:49], v[82:85], v[70:73], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[86:89], v[74:77], v[42:49] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v58, 16, v91
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v59, 16, v92
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v60, 16, v93
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v62, 16, v95
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v63, 16, v96
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v97
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v58, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v99
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v58, v62
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v65, 16, v98
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v58, v59
	v_mul_f32_e32 v64, v58, v64
	v_mul_f32_e32 v63, v58, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v62, v45 :: v_dual_lshlrev_b32 v61, 16, v94
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v58, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v15, v63, v46 :: v_dual_add_nc_u32 v100, s41, v40
	v_dual_fmac_f32 v18, v60, v43 :: v_dual_add_nc_u32 v101, s35, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v58, v61
	v_dual_mul_f32 v58, v58, v65 :: v_dual_fmac_f32 v11, v59, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v14, v64, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v12, v66, v49 :: v_dual_fmac_f32 v17, v61, v44
	v_fmac_f32_e32 v13, v58, v48
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v100, v90 offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[50:53]
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[54:57] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s1, 0, 0x4400
	s_add_i32 s35, 0, 0x2000
.LBB0_7:                                ; %Flow74
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v10, 0xf0, v0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s14, v36
	v_add_nc_u32_e32 v6, s14, v34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v37, s15, v32
	v_add_nc_u32_e32 v38, s15, v29
	v_add_nc_u32_e32 v40, s15, v31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[6:9], v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[45:48], v37
	ds_load_b128 v[49:52], v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v37, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v39, s14, v35
	v_add_nc_u32_e32 v38, s14, v33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v41, s15, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v43, v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[53:56], v39
	ds_load_b128 v[57:60], v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[61:64], v40
	ds_load_b128 v[65:68], v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v39, v37
	v_mov_b32_e32 v40, v37
	v_mov_b32_e32 v41, v37
	v_mov_b32_e32 v42, v37
	v_mov_b32_e32 v44, v37
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[6:9], v[49:52], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[2:5], v[45:48], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[65:68], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[61:64], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v3, v39
	v_cvt_f32_i32_e32 v7, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v41
	v_cvt_f32_i32_e32 v4, v42
	v_cvt_f32_i32_e32 v5, v43
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v6, v37
	v_cvt_f32_i32_e32 v9, v38
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s7, s7, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s7, s6, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v37, v28, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s7, s19
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v38, v27, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v26, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v25, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v42, v24, s8, 1
	v_add_lshl_u32 v41, v21, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v50, v37, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v37, 0x80000000, v38 :: v_dual_cndmask_b32 v38, 0x80000000, v39
	v_dual_cndmask_b32 v39, 0x80000000, v40 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	v_add_lshl_u32 v40, v23, s8, 1
	v_add_lshl_u32 v44, v20, s8, 1
	v_add_lshl_u32 v43, v22, s8, 1
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_cndmask_b32_e32 v45, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	s_clause 0x7
	buffer_load_u16 v51, v37, s[4:7], 0 offen
	buffer_load_u16 v52, v38, s[4:7], 0 offen
	buffer_load_u16 v48, v39, s[4:7], 0 offen
	buffer_load_u16 v49, v40, s[4:7], 0 offen
	buffer_load_u16 v46, v41, s[4:7], 0 offen
	buffer_load_u16 v47, v42, s[4:7], 0 offen
	buffer_load_u16 v44, v43, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v43, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s35, v36
	v_add_nc_u32_e32 v34, s35, v34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v32, s1, v32
	v_add_nc_u32_e32 v29, s1, v29
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[37:40], v1
	ds_load_b128 v[53:56], v34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[57:60], v32
	ds_load_b128 v[61:64], v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v29, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v35, s35, v35
	v_add_nc_u32_e32 v1, s35, v33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v31, s1, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v33, v29 :: v_dual_add_nc_u32 v30, s1, v30
	v_mov_b32_e32 v32, v29
	v_mov_b32_e32 v34, v29
	v_mov_b32_e32 v36, v29
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[65:68], v35
	ds_load_b128 v[69:72], v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[73:76], v31
	ds_load_b128 v[77:80], v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v30, v29
	v_mov_b32_e32 v31, v29
	v_mov_b32_e32 v35, v29
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[53:56], v[61:64], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[37:40], v[57:60], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[69:72], v[77:80], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[65:68], v[73:76], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v29
	v_cvt_f32_i32_e32 v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v31
	v_cvt_f32_i32_e32 v42, v32
	v_cvt_f32_i32_e32 v37, v33
	v_cvt_f32_i32_e32 v40, v34
	v_cvt_f32_i32_e32 v41, v35
	v_cvt_f32_i32_e32 v43, v36
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s33, 31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v29.h, v50.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s33, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v31.h, v51.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.l, v29.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v28, v28, s1, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s1, s19
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v26, s1, 1
	v_add_lshl_u32 v27, v27, s1, 1
	v_add_lshl_u32 v23, v23, s1, 1
	v_add_lshl_u32 v25, v25, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v21, v21, s1, 1
	v_add_lshl_u32 v24, v24, s1, 1
	v_add_lshl_u32 v22, v22, s1, 1
	v_add_lshl_u32 v20, v20, s1, 1
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_mul_f32 v31, v29, v31
	s_clause 0x7
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v33.h, v48.l
	v_mov_b16_e32 v33.l, v29.l
	v_mov_b16_e32 v30.h, v52.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v32.h, v49.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v34.h, v47.l
	v_mov_b16_e32 v35.h, v46.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v36.h, v45.l
	v_mov_b16_e32 v44.h, v44.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v46, 0x7632 :: v_dual_mul_f32 v33, v29, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v30.l, v29.l
	v_mov_b16_e32 v32.l, v29.l
	v_mov_b16_e32 v34.l, v29.l
	v_mov_b16_e32 v35.l, v29.l
	v_mov_b16_e32 v36.l, v29.l
	v_mov_b16_e32 v44.l, v29.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v29.l
	v_mov_b16_e32 v48.h, v29.l
	v_mov_b16_e32 v49.h, v29.l
	v_mov_b16_e32 v50.h, v29.l
	v_mov_b16_e32 v51.h, v29.l
	v_mov_b16_e32 v52.h, v29.l
	v_mov_b16_e32 v53.h, v29.l
	v_mov_b16_e32 v54.h, v29.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v29, v30
	v_mul_f32_e32 v32, v29, v32
	v_mul_f32_e32 v35, v29, v35
	v_mul_f32_e32 v34, v29, v34
	v_mul_f32_e32 v44, v29, v44
	v_mul_f32_e32 v29, v29, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v33, v3, v17
	v_fma_f32 v6, v31, v6, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v29, v8, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v17, v3, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v6, v11, v6, s3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 1, v10
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v19, v19, s19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v12, v8, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v12, 16, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v35, v2, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v17, 16, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v44, v5, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v15, v2, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v30, v9, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v13, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v13, 16, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v32, v7, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v18, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v11, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v34, v4, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v11, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v16, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v38, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v14, v4, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v13, v1, v6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v15, v11, v15 :: v_dual_lshlrev_b32 v18, 16, v20
	v_dual_mul_f32 v17, v11, v17 :: v_dual_lshlrev_b32 v20, 16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v6, v1, s2
	v_cndmask_b32_e64 v6, v9, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v11, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v47.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v11, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v47
	v_add3_u32 v6, v6, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v11, v20
	v_mul_f32_e32 v11, v11, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v43, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v11, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v14, v42, v7
	v_fma_f32 v14, v15, v39, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.l, v8.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v1, v11, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v13, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v3, v3, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v11, 0x3276, v46 :: v_dual_and_b32 v0, 1, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v6.l, 0x7fff, v1.h, s0
	v_mov_b16_e32 v49.l, v7.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v50.l, v3.h
	v_cmp_o_f32_e64 s1, v7, v7
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v0, v8, v0, 0x7fff
	v_and_b32_e32 v14, 1, v49
	v_and_b32_e32 v9, 1, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v16, v40, v4
	v_fma_f32 v16, v17, v37, v2
	v_fma_f32 v17, v20, v41, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v14, 0x7fff
	v_lshl_or_b32 v8, v11, 8, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v15, s2
	v_cndmask_b32_e64 v2, v2, v16, s2
	v_cndmask_b32_e64 v5, v5, v17, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v3, v3, v9, 0x7fff
	v_mov_b16_e32 v51.l, v4.h
	v_mov_b16_e32 v52.l, v2.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v2, v2
	v_mov_b16_e32 v54.l, v5.h
	v_dual_cndmask_b32 v9, 0x1054, v45 :: v_dual_and_b32 v12, 1, v51
	v_cmp_o_f32_e64 s6, v5, v5
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.l, 0x7fff, v3.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v4, v12, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_and_b32_e32 v13, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v13, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s4
	v_and_b32_e32 v2, 1, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v4, v1, v6 :: v_dual_cndmask_b32 v1, v6, v1
	v_add3_u32 v2, v5, v2, 0x7fff
	v_lshl_or_b32 v5, v9, 8, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x540054, v5
	v_dual_cndmask_b32 v6, v0, v7 :: v_dual_and_b32 v5, 0x760076, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v5, 4, v5
	v_cndmask_b32_e32 v5, v7, v0, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v7, s18, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s18, s14
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v1, v4, v2
	v_perm_b32 v1, v1, v4, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v5, v6, v2
	v_perm_b32 v3, v5, v6, v3
	v_add_lshl_u32 v4, v7, v19, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 102
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4304
; TotalNumSgprs: 45
; NumVgprs: 102
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     102
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
