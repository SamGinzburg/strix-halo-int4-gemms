	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v9, 3, v0
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v2, 56, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s34, 31
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
	s_lshr_b32 s11, s11, 27
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
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s6, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s18, s7
	s_sub_i32 s19, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v8
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[5:6], null, s6, v4, v[1:2]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s11
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s18, s19
	s_add_i32 s18, s18, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s18
	s_xor_b32 s18, s2, s17
	s_mul_i32 s19, s4, s7
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s19, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s6, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s20, s4, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s20, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s21, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s7, v2
	v_or_b32_e32 v10, s7, v1
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s19, s6, 0x1ff
.Ltmp21:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s4, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s3, 5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s33, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s19, 0x1ff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s6, v10
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s34, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_lshl_b32 s16, s6, 6
	s_add_i32 s4, s4, s7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v6, v7, v2, s5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, s4, v5
	v_add3_u32 v5, s4, s16, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s19, 0x3ff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v11, 0x80000000, v7, s2
	v_cndmask_b32_e64 v12, 0x80000000, v5, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s7, 0x200
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s7, v6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s17, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s17, v6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, 0x200, v7
	v_add_nc_u32_e32 v5, 0x200, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v13
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[17:20], v11, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v12, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[33:34], v10, s[8:11], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 4, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s16, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v14, s17, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v11, 48, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[35:36], v6, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v7, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v5, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0xe0, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v45, v8, v11
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v6, 15, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s19, 0x5ff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v7, 1, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v38, 0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v13, 16, v6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v10, 1, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v10, 48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v12, 2, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v44, v9, v10
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v14, 4, v7
	v_or_b32_e32 v15, 6, v7
	v_or_b32_e32 v16, 8, v7
	v_or_b32_e32 v8, 10, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v37, 0, v44
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v10, 12, v7
	v_or_b32_e32 v11, 14, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v37, v[33:34] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v38, v[17:20]
	ds_store_b128 v38, v[21:24] offset:4096
	v_and_b32_e32 v17, 48, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v37, v[35:36] offset:18432
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[25:28] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[29:32] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v36, v6, 6, v17
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v40, v5, 5, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v39, 32, v36
	v_xor_b32_e32 v38, 48, v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v41, 16, v40
	v_xor_b32_e32 v42, 32, v40
	v_xor_b32_e32 v43, 48, v40
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow115
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v18, s34, v6
	v_or_b32_e32 v13, s34, v13
	s_ashr_i32 s40, s21, 8
	v_or_b32_e32 v33, s33, v7
	v_or_b32_e32 v32, s33, v12
	v_mul_lo_u32 v34, v18, s40
	v_mul_lo_u32 v35, v13, s40
	v_or_b32_e32 v31, s33, v14
	v_or_b32_e32 v29, s33, v15
	v_or_b32_e32 v27, s33, v16
	v_or_b32_e32 v30, s33, v8
	v_or_b32_e32 v28, s33, v10
	v_or_b32_e32 v26, s33, v11
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v4, s20, 7, v4
	s_lshl_b32 s15, s18, 7
	v_lshl_or_b32 v36, v6, 6, v17
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v3, s34, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s15, v4
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s19, 9
	v_lshl_or_b32 v40, v5, 5, v36
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v3, s6, v3
	s_mov_b32 s17, s16
	v_or_b32_e32 v5, 64, v4
	v_mul_lo_u32 v4, s6, v4
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_mul_lo_u32 v5, s6, v5
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add3_u32 v47, v4, v1, 0x400
	v_add3_u32 v48, v3, v2, 0x400
	v_or_b32_e32 v49, 0x400, v1
	v_or_b32_e32 v50, 0x400, v2
	v_add3_u32 v46, v5, v1, 0x400
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v39, 32, v36
	v_xor_b32_e32 v38, 48, v36
	v_xor_b32_e32 v41, 16, v40
	v_xor_b32_e32 v42, 32, v40
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
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_add_i32 s15, s14, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s41, 0, 0x4800
	s_add_i32 s42, 0, 0x2000
	s_mov_b32 s43, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s7
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v51, s17, v50
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v53, s17, v48
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v52, s17, v49
	v_cmp_gt_i32_e32 vcc_lo, s6, v51
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 8
	s_mov_b32 s18, s16
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v54, v35, s7, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v51, 0x80000000, v53, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v34, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s7, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v32, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[119:120], v51, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v33, s7, 1
	v_add_lshl_u32 v56, v31, s7, 1
	v_add_lshl_u32 v57, v29, s7, 1
	v_add_lshl_u32 v58, v27, s7, 1
	v_add_lshl_u32 v59, v30, s7, 1
	v_add_lshl_u32 v60, v28, s7, 1
	v_add_lshl_u32 v61, v26, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v121, v53, s[28:31], 0 offen
	buffer_load_u16 v122, v54, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v123, v51, s[36:39], 0 offen
	buffer_load_u16 v124, v55, s[36:39], 0 offen
	buffer_load_u16 v125, v56, s[36:39], 0 offen
	buffer_load_u16 v126, v57, s[36:39], 0 offen
	buffer_load_u16 v127, v58, s[36:39], 0 offen
	buffer_load_u16 v128, v59, s[36:39], 0 offen
	buffer_load_u16 v129, v60, s[36:39], 0 offen
	buffer_load_u16 v130, v61, s[36:39], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v51, s17, v47
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v52
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v53, s17, v46
	s_mov_b32 s7, s14
	v_add_nc_u32_e32 v55, s18, v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, s7, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v52, 0x80000000, v53
	s_clause 0x1
	buffer_load_b128 v[67:70], v51, s[24:27], 0 offen
	buffer_load_b128 v[71:74], v52, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v51, s7, v36
	v_add_nc_u32_e32 v52, s7, v37
	v_add_nc_u32_e32 v53, s7, v39
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v56, s18, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[59:62], v51
	ds_load_b128 v[75:78], v51 offset:1024
	ds_load_b128 v[79:82], v52
	ds_load_b128 v[83:86], v52 offset:1024
	ds_load_b128 v[87:90], v53
	ds_load_b128 v[91:94], v53 offset:1024
	ds_load_b128 v[95:98], v54
	ds_load_b128 v[99:102], v54 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[103:106], v55
	ds_load_b128 v[107:110], v56
	v_add_nc_u32_e32 v57, s18, v42
	v_add_nc_u32_e32 v58, s18, v43
	ds_load_b128 v[111:114], v57
	ds_load_b128 v[115:118], v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s43, 1
	s_mov_b32 s16, s42
	s_cmp_lt_i32 s7, 2
	s_mov_b32 s14, s41
	s_cselect_b32 s43, s7, 0
	s_add_i32 s15, s15, -1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s19, s43, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s18, s43, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s42, s19, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s18, s18, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s17, 0x200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s41, s18, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[103:106], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[103:106], v[75:78], v[1:8] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[79:82], v[51:58] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[107:110], v[83:86], v[59:66] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[111:114], v[87:90], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[111:114], v[91:94], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[95:98], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[115:118], v[99:102], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4)
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
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v75, 16, v121
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v76, 16, v122
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v78, 16, v124
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v80, 16, v126
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v81, 16, v127
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v83, 16, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v89, v75, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v14, v89, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v75, v83
	v_dual_mul_f32 v88, v75, v80 :: v_dual_lshlrev_b32 v77, 16, v123
	v_mul_f32_e32 v80, v76, v80
	v_mul_f32_e32 v86, v75, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v16, v91, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v85, v75, v77 :: v_dual_lshlrev_b32 v82, 16, v128
	v_mul_f32_e32 v77, v76, v77
	v_dual_mul_f32 v78, v76, v78 :: v_dual_lshlrev_b32 v79, 16, v125
	v_mul_f32_e32 v90, v75, v82
	v_mul_f32_e32 v82, v76, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v22, v80, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v81, v76, v81 :: v_dual_lshlrev_b32 v84, 16, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v20, v78, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v87, v75, v79 :: v_dual_add_nc_u32 v132, s42, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v75, v75, v84
	v_dual_mul_f32 v79, v76, v79 :: v_dual_fmac_f32 v24, v82, v64
	v_mul_f32_e32 v83, v76, v83
	v_mul_f32_e32 v76, v76, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v12, v87, v53 :: v_dual_add_nc_u32 v131, s18, v44
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
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v131, v[119:120] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[67:70]
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[71:74] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_addk_i32 s17, 0x400
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
	s_add_i32 s41, 0, 0x4800
	s_add_i32 s42, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v52, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s20, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v54, s27 :: v_dual_add_nc_u32 v1, s16, v43
	v_dual_mov_b32 v53, s26 :: v_dual_add_nc_u32 v2, s16, v42
	v_dual_mov_b32 v51, s24 :: v_dual_add_nc_u32 v8, s16, v41
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	ds_load_b128 v[4:7], v1
	ds_load_b128 v[63:66], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s25 :: v_dual_add_nc_u32 v1, s14, v36
	v_dual_mov_b32 v49, s22 :: v_dual_add_nc_u32 v44, s16, v40
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[67:70], v8
	ds_load_b128 v[71:74], v44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, s14, v37
	ds_load_b128 v[75:78], v1 offset:1024
	ds_load_b128 v[79:82], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v47, s20 :: v_dual_add_nc_u32 v2, s14, v39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[87:90], v8 offset:1024
	ds_load_b128 v[91:94], v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v50, s23 :: v_dual_add_nc_u32 v1, s14, v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[83:86], v2
	ds_load_b128 v[95:98], v2 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v48, s21
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[99:102], v1
	ds_load_b128 v[103:106], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[79:82], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[71:74], v[75:78], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[67:70], v[91:94], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[67:70], v[87:90], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[83:86], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[63:66], v[95:98], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[4:7], v[99:102], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[4:7], v[103:106], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v56
	v_cvt_f32_i32_e32 v5, v57
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v44, v60
	v_cvt_f32_i32_e32 v45, v61
	v_cvt_f32_i32_e32 v46, v62
	v_cvt_f32_i32_e32 v2, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v8, v55
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s7, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s6, 8
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v34, s6, 1
	v_add_lshl_u32 v54, v35, s6, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s6, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v33, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v56, v32, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v69, v54, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v54, v31, s8, 1
	v_add_lshl_u32 v57, v29, s8, 1
	v_add_lshl_u32 v58, v27, s8, 1
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_add_lshl_u32 v59, v30, s8, 1
	v_add_lshl_u32 v60, v28, s8, 1
	v_add_lshl_u32 v61, v26, s8, 1
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	s_clause 0x7
	buffer_load_u16 v70, v55, s[4:7], 0 offen
	buffer_load_u16 v71, v56, s[4:7], 0 offen
	buffer_load_u16 v72, v54, s[4:7], 0 offen
	buffer_load_u16 v73, v57, s[4:7], 0 offen
	buffer_load_u16 v74, v58, s[4:7], 0 offen
	buffer_load_u16 v75, v59, s[4:7], 0 offen
	buffer_load_u16 v76, v60, s[4:7], 0 offen
	buffer_load_u16 v77, v61, s[4:7], 0 offen
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v68, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s20, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v3, s42, v43
	v_add_nc_u32_e32 v42, s42, v42
	v_add_nc_u32_e32 v41, s42, v41
	ds_load_b128 v[62:65], v3
	ds_load_b128 v[78:81], v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s41, v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v40, s42, v40
	ds_load_b128 v[82:85], v41
	ds_load_b128 v[86:89], v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v37, s41, v37
	ds_load_b128 v[90:93], v3 offset:1024
	ds_load_b128 v[94:97], v3
	v_add_nc_u32_e32 v36, s41, v39
	ds_load_b128 v[102:105], v37 offset:1024
	ds_load_b128 v[106:109], v37
	v_add_nc_u32_e32 v3, s41, v38
	ds_load_b128 v[98:101], v36
	ds_load_b128 v[110:113], v36 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v43, s27 :: v_dual_mov_b32 v42, s26
	v_dual_mov_b32 v41, s25 :: v_dual_mov_b32 v40, s24
	v_dual_mov_b32 v39, s23 :: v_dual_mov_b32 v38, s22
	v_dual_mov_b32 v37, s21 :: v_dual_mov_b32 v36, s20
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[114:117], v3
	ds_load_b128 v[118:121], v3 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[86:89], v[94:97], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[86:89], v[90:93], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[82:85], v[106:109], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[82:85], v[102:105], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[98:101], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[78:81], v[110:113], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[62:65], v[114:117], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[62:65], v[118:121], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v54
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
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s17, 31
	v_mov_b16_e32 v36.l, 0
	s_lshr_b32 s6, s6, 24
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v36.h, v69.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s9, s7, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s9, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v34, v34, s9, 1
	v_add_lshl_u32 v35, v35, s9, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s9, s9, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s10, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v33, s9, 1
	v_add_lshl_u32 v32, v32, s9, 1
	v_add_lshl_u32 v31, v31, s9, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v29, v29, s9, 1
	v_add_lshl_u32 v27, v27, s9, 1
	v_add_lshl_u32 v30, v30, s9, 1
	v_add_lshl_u32 v28, v28, s9, 1
	v_add_lshl_u32 v26, v26, s9, 1
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x7
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	s_clause 0x1
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v38.h, v76.l
	v_mov_b16_e32 v40.h, v74.l
	v_mov_b16_e32 v41.h, v73.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v74, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v38.l, v36.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v73, 2, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v37.h, v77.l
	v_mov_b16_e32 v39.h, v75.l
	v_mov_b16_e32 v42.h, v72.l
	v_mov_b16_e32 v43.h, v71.l
	v_mov_b16_e32 v69.h, v70.l
	v_mov_b16_e32 v37.l, v36.l
	v_mov_b16_e32 v39.l, v36.l
	v_mov_b16_e32 v40.l, v36.l
	v_mov_b16_e32 v41.l, v36.l
	v_mov_b16_e32 v42.l, v36.l
	v_mov_b16_e32 v43.l, v36.l
	v_mov_b16_e32 v69.l, v36.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v79, v36, v41 :: v_dual_and_b32 v74, 0x440, v74
	v_dual_mul_f32 v76, v36, v38 :: v_dual_and_b32 v73, 0x3f8, v73
	v_mul_f32_e32 v78, v36, v40
	v_dual_mul_f32 v75, v36, v37 :: v_dual_and_b32 v70, 0x7f, v0
	v_dual_mul_f32 v77, v36, v39 :: v_dual_and_b32 v72, 14, v0
	v_mul_f32_e32 v80, v36, v42
	v_mul_f32_e32 v81, v36, v43
	v_mul_f32_e32 v82, v36, v69
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v73, v74, v73
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v71, 7, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s34, s35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v75, v53, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v36, v37
	v_mul_f32_e32 v38, v36, v38
	v_mul_f32_e32 v39, v36, v39
	v_mul_f32_e32 v41, v36, v41
	v_mul_f32_e32 v42, v36, v42
	v_mul_f32_e32 v43, v36, v43
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v71, s35, v71
	s_add_i32 s4, s4, s33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v80, v48, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v18, v53, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v37, v46, v17
	v_fma_f32 v37, v42, v5, v12
	v_fma_f32 v49, v79, v49, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v48, s3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s4, v70, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v18, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v78, v50, v23
	v_fma_f32 v52, v76, v52, v25
	v_fma_f32 v51, v77, v51, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v49, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v50, s3
	v_cndmask_b32_e64 v25, v25, v52, s3
	v_cndmask_b32_e64 v24, v24, v51, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v36, v40
	v_mul_f32_e32 v36, v36, v69
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v69, v72, 10, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v40, v7, v14
	v_fma_f32 v8, v36, v8, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v36, 0, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v81, v47, v20
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v40, v69, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v14, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v29
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v42, v69, 32, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v20, v47, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v39, v44, v15
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v39, v69, 8, 0
	v_xad_u32 v44, v69, 48, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v20, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v27
	v_lshlrev_b32_e32 v27, 16, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v82, v2, v19
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v19, v70, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v38, v45, v16
	v_fma_f32 v38, v43, v4, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v10, v8, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v41, v6, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v19, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v33
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v18, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v5, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v34
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v6, s3
	v_cndmask_b32_e64 v6, v12, v37, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v29, v4, v8 :: v_dual_lshlrev_b32 v12, 16, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v5, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v38, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v4, v10
	v_mul_f32_e32 v31, v4, v12
	v_mul_f32_e32 v33, v4, v20
	v_dual_mul_f32 v35, v4, v28 :: v_dual_mul_f32 v10, v5, v10
	v_mul_f32_e32 v12, v5, v12
	v_mul_f32_e32 v32, v4, v14
	v_mul_f32_e32 v14, v5, v14
	v_mul_f32_e32 v34, v4, v27
	v_mul_f32_e32 v20, v5, v20
	v_mul_f32_e32 v27, v5, v27
	v_mul_f32_e32 v28, v5, v28
	v_mul_f32_e32 v5, v5, v26
	v_mul_f32_e32 v4, v4, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v29, v3, v2
	v_fma_f32 v8, v8, v61, v48
	v_fma_f32 v26, v30, v54, v11
	v_fma_f32 v29, v31, v55, v6
	v_fma_f32 v31, v33, v57, v7
	v_fma_f32 v33, v35, v59, v16
	v_fma_f32 v35, v10, v62, v47
	v_fma_f32 v37, v12, v63, v21
	v_fma_f32 v30, v32, v56, v13
	v_fma_f32 v38, v14, v64, v22
	v_fma_f32 v46, v20, v65, v23
	v_fma_f32 v49, v5, v68, v53
	v_fma_f32 v32, v34, v58, v15
	v_fma_f32 v34, v4, v60, v17
	v_fma_f32 v27, v27, v66, v24
	v_fma_f32 v28, v28, v67, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v3, s2
	v_cndmask_b32_e64 v3, v48, v8, s2
	v_cndmask_b32_e64 v4, v11, v26, s2
	v_cndmask_b32_e64 v5, v47, v35, s2
	v_cndmask_b32_e64 v6, v6, v29, s2
	v_cndmask_b32_e64 v12, v7, v31, s2
	v_cndmask_b32_e64 v7, v21, v37, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v41, v69, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v13, v30, s2
	v_cndmask_b32_e64 v11, v22, v38, s2
	v_cndmask_b32_e64 v13, v23, v46, s2
	v_cndmask_b32_e64 v21, v53, v49, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v43, v69, 40, 0
	v_xad_u32 v45, v69, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v15, v32, s2
	v_cndmask_b32_e64 v16, v16, v33, s2
	v_cndmask_b32_e64 v20, v17, v34, s2
	v_cndmask_b32_e64 v15, v24, v27, s2
	v_cndmask_b32_e64 v17, v25, v28, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b64 v36, v[2:3]
	ds_store_b64 v39, v[4:5]
	ds_store_b64 v40, v[6:7]
	ds_store_b64 v41, v[10:11]
	ds_store_b64 v42, v[12:13]
	ds_store_b64 v43, v[14:15]
	ds_store_b64 v44, v[16:17]
	ds_store_b64 v45, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v21, v[18:19], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x380, v9
	v_lshlrev_b32_e32 v4, 2, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v0, 0x440, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v2
	v_or3_b32 v0, v3, v4, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x808, v0, 0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v5, 0x1818, v0, 0
	v_xad_u32 v6, 0x2020, v0, 0
	v_xad_u32 v7, 0x2828, v0, 0
	v_xad_u32 v20, 0x3030, v0, 0
	v_xad_u32 v0, 0x3838, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v20
	ds_load_b64 v[2:3], v0
.LBB0_13:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v20, v21, v16
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s8, vcc_lo, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s35, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 14, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 4, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 18, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 20, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s0, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s1, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 22, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_35:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 24, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_37:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 26, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_39:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 28, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_41:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 30, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_43:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_inst_pref_size 54
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 133
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6876
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
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
