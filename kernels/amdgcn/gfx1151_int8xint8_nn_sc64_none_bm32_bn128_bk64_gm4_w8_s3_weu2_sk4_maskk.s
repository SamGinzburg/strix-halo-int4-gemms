	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v40, 3, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v42, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v5, 32, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, 0, v43
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
	v_mul_lo_u32 v6, s6, v40
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
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v1, 4, v2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 3, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[3:4], null, s35, v40, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s18, s19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v4, s35, 5, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_add_i32 s21, s6, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s19, s4, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s19, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s21, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s7, v2
	v_or_b32_e32 v8, s7, v40
	v_or_b32_e32 v9, s7, v5
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s6, 0xff
.Ltmp21:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s4, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s3, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s35, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s6, v8
	v_cmp_gt_i32_e64 s4, s6, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s33, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s16, s34, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s5, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v6, v6, v2, s16
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s20, 0x1ff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s7, 0x100
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s7, v6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v10, s17, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s5, v4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s17, v40
	v_or_b32_e32 v5, s17, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s43, s35, 8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s17, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s43
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v11
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s5, v3
	v_add_nc_u32_e32 v4, s5, v4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s6, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v7, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v8, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[29:30], v9, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v9, 3, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[31:32], v5, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v3, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v4, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v5, 48, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v7, 16, v42
	s_mov_b32 s16, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v41, 0x70, v3
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v44, v9, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0x2ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v6, v4, 1, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v34, 0, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v33, v[17:20] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v34, v[29:30] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v33, v[13:16]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v6
	v_or_b32_e32 v10, 4, v6
	v_or_b32_e32 v11, 6, v6
	v_or_b32_e32 v12, 8, v6
	v_or_b32_e32 v3, 10, v6
	v_or_b32_e32 v4, 12, v6
	v_or_b32_e32 v5, 14, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v34, v[31:32] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v33, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v13, 48, v9
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v42, 6, v13
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v38, 32, v36
	v_xor_b32_e32 v39, 48, v36
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
.LBB0_3:                                ; %Flow119
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v13, s34, v42
	v_or_b32_e32 v7, s34, v7
	s_ashr_i32 s40, s21, 6
	v_or_b32_e32 v33, s33, v6
	v_or_b32_e32 v32, s33, v8
	v_mul_lo_u32 v34, v13, s40
	v_mul_lo_u32 v35, v7, s40
	v_or_b32_e32 v31, s33, v10
	v_or_b32_e32 v29, s33, v11
	v_or_b32_e32 v27, s33, v12
	v_or_b32_e32 v30, s33, v3
	v_or_b32_e32 v28, s33, v4
	v_or_b32_e32 v26, s33, v5
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v3, s7, v40
	s_lshl_b32 s15, s19, 7
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v9, 3, v0
	s_lshl_b32 s16, s18, 7
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v5, 0x220, v3
	v_add_nc_u32_e32 v3, 0x200, v3
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s20, 8
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v48, 0x200, v2
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_mul_lo_u32 v5, s35, v5
	v_mul_lo_u32 v3, s35, v3
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_add3_u32 v5, v5, s15, v1
	v_add3_u32 v1, v3, s15, v1
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v45, s16, v5
	v_subrev_nc_u32_e32 v46, s16, v1
	s_mov_b32 s16, 0
	v_mov_b32_e32 v23, 0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 48, v9
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v42, 6, v4
	v_add_nc_u32_e32 v4, s34, v40
	s_mov_b32 s28, s12
	v_mov_b32_e32 v12, 0
	s_and_b32 s37, s5, 0xffff
	v_xor_b32_e32 v37, 16, v36
	v_mul_lo_u32 v4, s6, v4
	v_xor_b32_e32 v38, 32, v36
	v_xor_b32_e32 v39, 48, v36
	s_mov_b32 s36, s4
	s_add_i32 s15, s14, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s41, 0, 0x4800
	s_add_i32 s42, 0, 0x2000
	v_add3_u32 v47, v4, v2, 0x200
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	s_mov_b32 s44, 1
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
	v_add_nc_u32_e32 v49, s17, v48
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v51, s17, v47
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v50, s17, v40
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v49
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 6
	s_mov_b32 s18, s16
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v52, v35, s7, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v49, 0x80000000, v51, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v51, v34, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s7, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v32, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[117:118], v49, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v49, v33, s7, 1
	v_add_lshl_u32 v54, v31, s7, 1
	v_add_lshl_u32 v55, v29, s7, 1
	v_add_lshl_u32 v56, v27, s7, 1
	v_add_lshl_u32 v57, v30, s7, 1
	v_add_lshl_u32 v58, v28, s7, 1
	v_add_lshl_u32 v59, v26, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v119, v51, s[28:31], 0 offen
	buffer_load_u16 v120, v52, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v121, v49, s[36:39], 0 offen
	buffer_load_u16 v122, v53, s[36:39], 0 offen
	buffer_load_u16 v123, v54, s[36:39], 0 offen
	buffer_load_u16 v124, v55, s[36:39], 0 offen
	buffer_load_u16 v125, v56, s[36:39], 0 offen
	buffer_load_u16 v126, v57, s[36:39], 0 offen
	buffer_load_u16 v127, v58, s[36:39], 0 offen
	buffer_load_u16 v128, v59, s[36:39], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v49, 0x200, v50
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v50, 0x220, v50
	s_mov_b32 s7, s14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v53, s18, v41, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v51, s7, v38
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, s7, v39
	s_mov_b32 s16, s42
	s_mov_b32 s14, s41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v49, 0x80000000, v46, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v50, 0x80000000, v45, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[65:68], v49, s[24:27], 0 offen
	buffer_load_b128 v[69:72], v50, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, s7, v36
	v_add_nc_u32_e32 v50, s7, v37
	ds_load_b128 v[57:60], v49
	ds_load_b128 v[73:76], v49 offset:1024
	ds_load_b128 v[77:80], v50
	ds_load_b128 v[81:84], v50 offset:1024
	ds_load_b128 v[85:88], v51
	ds_load_b128 v[89:92], v51 offset:1024
	ds_load_b128 v[93:96], v52
	ds_load_b128 v[97:100], v52 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v53 offset:1664
	ds_load_u8 v50, v53 offset:1920
	ds_load_u8 v51, v53 offset:1792
	ds_load_u8 v52, v53 offset:1536
	ds_load_u8 v54, v53 offset:1152
	ds_load_u8 v55, v53 offset:1408
	ds_load_u8 v56, v53 offset:1280
	ds_load_u8 v61, v53 offset:1024
	ds_load_u8 v62, v53 offset:640
	ds_load_u8 v63, v53 offset:896
	ds_load_u8 v64, v53 offset:768
	ds_load_u8 v101, v53 offset:512
	ds_load_u8 v102, v53 offset:128
	ds_load_u8 v103, v53 offset:384
	ds_load_u8 v104, v53 offset:256
	ds_load_u8 v105, v53
	ds_load_u8 v106, v53 offset:3712
	ds_load_u8 v107, v53 offset:3968
	ds_load_u8 v108, v53 offset:3840
	ds_load_u8 v109, v53 offset:3584
	ds_load_u8 v110, v53 offset:3200
	ds_load_u8 v111, v53 offset:3456
	ds_load_u8 v112, v53 offset:3328
	ds_load_u8 v113, v53 offset:3072
	ds_load_u8 v114, v53 offset:2688
	ds_load_u8 v115, v53 offset:2944
	ds_load_u8 v116, v53 offset:2816
	ds_load_u8 v129, v53 offset:2560
	ds_load_u8 v130, v53 offset:2176
	ds_load_u8 v131, v53 offset:2432
	ds_load_u8 v132, v53 offset:2304
	ds_load_u8 v133, v53 offset:2048
	ds_load_u8 v134, v53 offset:5760
	ds_load_u8 v135, v53 offset:6016
	ds_load_u8 v136, v53 offset:5888
	ds_load_u8 v137, v53 offset:5632
	ds_load_u8 v138, v53 offset:5248
	ds_load_u8 v139, v53 offset:5504
	ds_load_u8 v140, v53 offset:5376
	ds_load_u8 v141, v53 offset:5120
	ds_load_u8 v142, v53 offset:4736
	ds_load_u8 v143, v53 offset:4992
	ds_load_u8 v144, v53 offset:4864
	ds_load_u8 v145, v53 offset:4608
	ds_load_u8 v146, v53 offset:4224
	ds_load_u8 v147, v53 offset:4480
	ds_load_u8 v148, v53 offset:4352
	ds_load_u8 v149, v53 offset:4096
	ds_load_u8 v150, v53 offset:7808
	ds_load_u8 v151, v53 offset:8064
	ds_load_u8 v152, v53 offset:7936
	ds_load_u8 v153, v53 offset:7680
	ds_load_u8 v154, v53 offset:7296
	ds_load_u8 v155, v53 offset:7552
	ds_load_u8 v156, v53 offset:7424
	ds_load_u8 v157, v53 offset:7168
	ds_load_u8 v158, v53 offset:6784
	ds_load_u8 v159, v53 offset:7040
	ds_load_u8 v160, v53 offset:6912
	ds_load_u8 v161, v53 offset:6656
	ds_load_u8 v162, v53 offset:6272
	ds_load_u8 v163, v53 offset:6528
	ds_load_u8 v164, v53 offset:6400
	ds_load_u8 v53, v53 offset:6144
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v49, v52, v49, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v51, v61, v54, 0xc0c0004
	v_perm_b32 v52, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v54, v101, v62, 0xc0c0004
	v_perm_b32 v55, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v56, v105, v102, 0xc0c0004
	v_perm_b32 v61, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v62, v109, v106, 0xc0c0004
	v_perm_b32 v63, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v64, v113, v110, 0xc0c0004
	v_perm_b32 v105, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v106, v129, v114, 0xc0c0004
	v_perm_b32 v109, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v110, v133, v130, 0xc0c0004
	v_perm_b32 v111, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v112, v137, v134, 0xc0c0004
	v_perm_b32 v113, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v114, v141, v138, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v53, v162, 0xc0c0004
	v_perm_b32 v138, v164, v163, 0xc0c0004
	v_lshl_or_b32 v104, v50, 16, v49
	v_lshl_or_b32 v103, v52, 16, v51
	v_lshl_or_b32 v102, v55, 16, v54
	v_lshl_or_b32 v101, v61, 16, v56
	v_perm_b32 v115, v140, v139, 0xc0c0004
	v_perm_b32 v116, v145, v142, 0xc0c0004
	v_perm_b32 v129, v144, v143, 0xc0c0004
	v_perm_b32 v130, v149, v146, 0xc0c0004
	v_perm_b32 v131, v148, v147, 0xc0c0004
	v_lshl_or_b32 v108, v63, 16, v62
	v_lshl_or_b32 v107, v105, 16, v64
	v_lshl_or_b32 v106, v109, 16, v106
	v_lshl_or_b32 v105, v111, 16, v110
	v_lshl_or_b32 v112, v113, 16, v112
	v_lshl_or_b32 v113, v138, 16, v53
	v_wmma_i32_16x16x16_iu8 v[49:56], v[101:104], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v132, v153, v150, 0xc0c0004
	v_perm_b32 v133, v152, v151, 0xc0c0004
	v_perm_b32 v134, v157, v154, 0xc0c0004
	v_perm_b32 v135, v156, v155, 0xc0c0004
	v_perm_b32 v136, v161, v158, 0xc0c0004
	v_perm_b32 v137, v160, v159, 0xc0c0004
	v_lshl_or_b32 v111, v115, 16, v114
	v_lshl_or_b32 v110, v129, 16, v116
	v_lshl_or_b32 v109, v131, 16, v130
	v_wmma_i32_16x16x16_iu8 v[49:56], v[105:108], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v133, 16, v132
	v_lshl_or_b32 v115, v135, 16, v134
	v_lshl_or_b32 v114, v137, 16, v136
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[109:112], v[85:88], v[49:56] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s44, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[81:84], v[57:64] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s7, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[113:116], v[93:96], v[49:56] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s44, s7, 0
	s_add_i32 s15, s15, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[89:92], v[57:64] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s18, s44, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v55, v55
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[97:100], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s19, s44, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s18, s18, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s42, s19, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s17, 0x100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s41, s18, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v73, 16, v119
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v74, 16, v120
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v75, 16, v121
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v76, 16, v122
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v83, v73, v75 :: v_dual_lshlrev_b32 v78, 16, v124
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v10, v83, v49
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v73, v76
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v76, v74, v76 :: v_dual_lshlrev_b32 v81, 16, v127
	v_mul_f32_e32 v86, v73, v78
	v_mul_f32_e32 v78, v74, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v11, v84, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v20, v76, v58 :: v_dual_mul_f32 v89, v73, v81
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v79, 16, v125
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v13, v86, v52
	v_fmac_f32_e32 v22, v78, v60
	v_fmac_f32_e32 v16, v89, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v87, v73, v79
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v77, 16, v123
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v79, v74, v79 :: v_dual_lshlrev_b32 v82, 16, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v14, v87, v53 :: v_dual_add_nc_u32 v165, s18, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v85, v73, v77 :: v_dual_lshlrev_b32 v80, 16, v126
	v_dual_mul_f32 v77, v74, v77 :: v_dual_add_nc_u32 v166, s42, v43
	v_dual_mul_f32 v88, v73, v80 :: v_dual_add_nc_u32 v45, s43, v45
	v_dual_mul_f32 v73, v73, v82 :: v_dual_mul_f32 v80, v74, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v74, v81 :: v_dual_fmac_f32 v12, v85, v51
	v_dual_mul_f32 v75, v74, v75 :: v_dual_add_nc_u32 v46, s43, v46
	v_mul_f32_e32 v74, v74, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v15, v88, v54
	v_fmac_f32_e32 v17, v73, v56
	v_fmac_f32_e32 v21, v77, v59
	v_fmac_f32_e32 v19, v75, v57
	v_dual_fmac_f32 v23, v79, v61 :: v_dual_fmac_f32 v24, v80, v62
	v_dual_fmac_f32 v25, v81, v63 :: v_dual_fmac_f32 v18, v74, v64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v165, v[117:118] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v166, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v166, v[69:72] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
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
	s_add_i32 s41, 0, 0x4800
	s_add_i32 s42, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v74, v41, v42
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v48, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s16, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v1 offset:1664
	ds_load_u8 v8, v1 offset:1920
	ds_load_u8 v40, v1 offset:1792
	ds_load_u8 v41, v1 offset:1536
	ds_load_u8 v42, v1 offset:1152
	ds_load_u8 v43, v1 offset:1408
	ds_load_u8 v44, v1 offset:1280
	ds_load_u8 v45, v1 offset:1024
	ds_load_u8 v46, v1 offset:640
	ds_load_u8 v47, v1 offset:768
	ds_load_u8 v48, v1 offset:512
	ds_load_u8 v49, v1 offset:896
	ds_load_u8 v50, v1 offset:128
	ds_load_u8 v51, v1 offset:384
	ds_load_u8 v52, v1 offset:256
	ds_load_u8 v53, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v71, s14, v38
	v_add_nc_u32_e32 v55, s14, v36
	v_add_nc_u32_e32 v54, s14, v37
	v_add_nc_u32_e32 v72, s14, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v8, v40, v8, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v41, v2, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v41, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v45, v42, 0xc0c0004
	v_lshl_or_b32 v82, v8, 16, v2
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v42, v48, v46, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v47, v49, 0xc0c0004
	v_lshl_or_b32 v81, v41, 16, v40
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v53, v50, 0xc0c0004
	v_lshl_or_b32 v80, v43, 16, v42
	v_dual_mov_b32 v50, s27 :: v_dual_mov_b32 v49, s26
	v_mov_b32_e32 v48, s25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[4:7], v71
	ds_load_b128 v[59:62], v54 offset:1024
	ds_load_b128 v[63:66], v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v46, s23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[67:70], v55 offset:1024
	ds_load_b128 v[75:78], v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v1 offset:3712
	ds_load_u8 v41, v1 offset:3968
	ds_load_u8 v42, v1 offset:3840
	ds_load_u8 v51, v1 offset:3584
	ds_load_u8 v52, v1 offset:3200
	ds_load_u8 v53, v1 offset:3456
	ds_load_u8 v54, v1 offset:3328
	ds_load_u8 v55, v1 offset:3072
	ds_load_u8 v56, v1 offset:2688
	ds_load_u8 v57, v1 offset:2944
	ds_load_u8 v58, v1 offset:2816
	ds_load_u8 v73, v1 offset:2560
	ds_load_u8 v83, v1 offset:2176
	ds_load_u8 v84, v1 offset:2432
	ds_load_u8 v85, v1 offset:2304
	ds_load_u8 v86, v1 offset:2048
	ds_load_u8 v94, v1 offset:4736
	ds_load_u8 v95, v1 offset:4864
	ds_load_u8 v96, v1 offset:4608
	v_lshl_or_b32 v79, v8, 16, v2
	v_mov_b32_e32 v47, s24
	v_dual_mov_b32 v45, s22 :: v_dual_mov_b32 v44, s21
	v_mov_b32_e32 v43, s20
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v40, v51, v40, 0xc0c0004
	ds_load_u8 v2, v1 offset:5760
	ds_load_u8 v8, v1 offset:6016
	ds_load_u8 v87, v1 offset:5888
	ds_load_u8 v88, v1 offset:5632
	ds_load_u8 v89, v1 offset:5248
	ds_load_u8 v90, v1 offset:5504
	ds_load_u8 v91, v1 offset:5376
	ds_load_u8 v92, v1 offset:5120
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v93, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v42, v55, v52, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v97, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v73, v73, v56, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v83, v86, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[51:58], v[79:82], v[75:78], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v41, 16, v40
	v_lshl_or_b32 v77, v93, 16, v42
	v_lshl_or_b32 v76, v97, 16, v73
	v_lshl_or_b32 v75, v84, 16, v83
	ds_load_u8 v41, v1 offset:4992
	ds_load_u8 v42, v1 offset:4224
	ds_load_u8 v73, v1 offset:4480
	ds_load_u8 v83, v1 offset:4352
	ds_load_u8 v84, v1 offset:4096
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v86, v96, v94, 0xc0c0004
	ds_load_u8 v96, v1 offset:7808
	ds_load_u8 v97, v1 offset:8064
	ds_load_u8 v98, v1 offset:7936
	ds_load_u8 v99, v1 offset:7680
	ds_load_u8 v100, v1 offset:7296
	ds_load_u8 v101, v1 offset:7552
	ds_load_u8 v102, v1 offset:7424
	ds_load_u8 v103, v1 offset:7168
	ds_load_u8 v104, v1 offset:6784
	ds_load_u8 v105, v1 offset:7040
	ds_load_u8 v106, v1 offset:6912
	ds_load_u8 v107, v1 offset:6656
	ds_load_u8 v108, v1 offset:6272
	ds_load_u8 v109, v1 offset:6528
	ds_load_u8 v110, v1 offset:6400
	ds_load_u8 v1, v1 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v40, v92, v89, 0xc0c0004
	v_perm_b32 v85, v91, v90, 0xc0c0004
	v_perm_b32 v2, v88, v2, 0xc0c0004
	v_perm_b32 v8, v87, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[51:58], v[75:78], v[63:66], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[79:82], v[67:70], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v85, 16, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v66, v8, 16, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v99, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[75:78], v[59:62], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v41, v95, v41, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v40, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v107, v104, 0xc0c0004
	v_perm_b32 v73, v83, v73, 0xc0c0004
	v_perm_b32 v42, v84, v42, 0xc0c0004
	v_lshl_or_b32 v64, v41, 16, v86
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[83:86], v71 offset:1024
	ds_load_b128 v[87:90], v72 offset:1024
	ds_load_b128 v[91:94], v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v108, 0xc0c0004
	v_perm_b32 v41, v110, v109, 0xc0c0004
	v_lshl_or_b32 v63, v73, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[63:66], v[4:7], v[51:58] neg_lo:[1,1,0]
	v_perm_b32 v4, v98, v97, 0xc0c0004
	v_perm_b32 v5, v103, v100, 0xc0c0004
	v_perm_b32 v6, v102, v101, 0xc0c0004
	v_lshl_or_b32 v7, v4, 16, v2
	v_lshl_or_b32 v4, v41, 16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v40, 16, v8
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[83:86], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[4:7], v[91:94], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[4:7], v[87:90], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v53
	v_cvt_f32_i32_e32 v6, v54
	v_cvt_f32_i32_e32 v7, v55
	v_cvt_f32_i32_e32 v40, v56
	v_cvt_f32_i32_e32 v41, v57
	v_cvt_f32_i32_e32 v42, v58
	v_cvt_f32_i32_e32 v2, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v8, v51
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s7, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s6, 6
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s6, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v33, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v34, s6, 1
	v_add_lshl_u32 v50, v35, s6, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v52, v32, s8, 1
	v_add_lshl_u32 v53, v31, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v54, v29, s8, 1
	v_add_lshl_u32 v55, v27, s8, 1
	v_add_lshl_u32 v56, v30, s8, 1
	v_add_lshl_u32 v57, v28, s8, 1
	v_add_lshl_u32 v58, v26, s8, 1
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_clause 0x7
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v73, 0
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
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s42, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v63, v3 offset:1664
	ds_load_u8 v64, v3 offset:1920
	ds_load_u8 v65, v3 offset:1792
	ds_load_u8 v66, v3 offset:1536
	ds_load_u8 v67, v3 offset:1152
	ds_load_u8 v68, v3 offset:1408
	ds_load_u8 v69, v3 offset:1280
	ds_load_u8 v70, v3 offset:1024
	ds_load_u8 v71, v3 offset:640
	ds_load_u8 v72, v3 offset:768
	ds_load_u8 v73, v3 offset:512
	ds_load_u8 v74, v3 offset:896
	ds_load_u8 v75, v3 offset:128
	ds_load_u8 v76, v3 offset:384
	ds_load_u8 v77, v3 offset:256
	ds_load_u8 v78, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v98, s41, v38
	v_add_nc_u32_e32 v80, s41, v36
	v_add_nc_u32_e32 v79, s41, v37
	v_add_nc_u32_e32 v106, s41, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v66, v63, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v70, v67, 0xc0c0004
	v_lshl_or_b32 v97, v64, 16, v63
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v67, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v72, v74, 0xc0c0004
	v_lshl_or_b32 v96, v66, 16, v65
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v64, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v78, v75, 0xc0c0004
	v_lshl_or_b32 v95, v68, 16, v67
	v_dual_mov_b32 v73, s27 :: v_dual_mov_b32 v72, s26
	v_mov_b32_e32 v70, s24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[36:39], v98
	ds_load_b128 v[59:62], v79 offset:1024
	ds_load_b128 v[82:85], v79
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v69, s23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[86:89], v80 offset:1024
	ds_load_b128 v[90:93], v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v3 offset:3712
	ds_load_u8 v74, v3 offset:3968
	ds_load_u8 v75, v3 offset:3840
	ds_load_u8 v76, v3 offset:3584
	ds_load_u8 v77, v3 offset:3200
	ds_load_u8 v78, v3 offset:3456
	ds_load_u8 v79, v3 offset:3328
	ds_load_u8 v80, v3 offset:3072
	ds_load_u8 v81, v3 offset:2688
	ds_load_u8 v99, v3 offset:2944
	ds_load_u8 v100, v3 offset:2816
	ds_load_u8 v101, v3 offset:2560
	ds_load_u8 v102, v3 offset:2176
	ds_load_u8 v103, v3 offset:2432
	ds_load_u8 v104, v3 offset:2304
	ds_load_u8 v105, v3 offset:2048
	v_lshl_or_b32 v94, v64, 16, v63
	v_dual_mov_b32 v71, s25 :: v_dual_mov_b32 v68, s22
	v_dual_mov_b32 v67, s21 :: v_dual_mov_b32 v66, s20
	ds_load_u8 v63, v3 offset:5760
	ds_load_u8 v64, v3 offset:6016
	ds_load_u8 v107, v3 offset:5888
	ds_load_u8 v108, v3 offset:5632
	ds_load_u8 v109, v3 offset:5248
	ds_load_u8 v110, v3 offset:5504
	ds_load_u8 v111, v3 offset:5376
	ds_load_u8 v112, v3 offset:5120
	ds_load_u8 v116, v3 offset:4736
	ds_load_u8 v117, v3 offset:4864
	ds_load_u8 v118, v3 offset:4608
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v65, v76, v65, 0xc0c0004
	v_perm_b32 v113, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v115, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v114, v80, v77, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v101, v101, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[90:93], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v100, v105, v102, 0xc0c0004
	v_perm_b32 v102, v104, v103, 0xc0c0004
	v_lshl_or_b32 v91, v99, 16, v101
	v_lshl_or_b32 v93, v113, 16, v65
	v_lshl_or_b32 v92, v115, 16, v114
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v65, v112, v109, 0xc0c0004
	v_lshl_or_b32 v90, v102, 16, v100
	ds_load_u8 v99, v3 offset:4992
	ds_load_u8 v100, v3 offset:4224
	ds_load_u8 v101, v3 offset:4480
	ds_load_u8 v102, v3 offset:4352
	ds_load_u8 v103, v3 offset:4096
	v_perm_b32 v104, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v105, v118, v116, 0xc0c0004
	ds_load_u8 v110, v3 offset:7808
	ds_load_u8 v111, v3 offset:8064
	ds_load_u8 v112, v3 offset:7936
	ds_load_u8 v113, v3 offset:7680
	ds_load_u8 v114, v3 offset:7296
	ds_load_u8 v115, v3 offset:7552
	ds_load_u8 v116, v3 offset:7424
	ds_load_u8 v118, v3 offset:7168
	ds_load_u8 v119, v3 offset:6784
	ds_load_u8 v120, v3 offset:7040
	ds_load_u8 v121, v3 offset:6912
	ds_load_u8 v122, v3 offset:6656
	ds_load_u8 v123, v3 offset:6272
	ds_load_u8 v124, v3 offset:6528
	ds_load_u8 v125, v3 offset:6400
	ds_load_u8 v3, v3 offset:6144
	v_perm_b32 v63, v108, v63, 0xc0c0004
	v_perm_b32 v64, v107, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[74:81], v[90:93], v[82:85], v[74:81] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v104, 16, v65
	v_wmma_i32_16x16x16_iu8 v[66:73], v[94:97], v[86:89], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v85, v64, 16, v63
	v_wmma_i32_16x16x16_iu8 v[66:73], v[90:93], v[59:62], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v63, v116, v115, 0xc0c0004
	v_perm_b32 v99, v117, v99, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v65, v121, v120, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v100, v103, v100, 0xc0c0004
	v_lshl_or_b32 v83, v99, 16, v105
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v122, v119, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v123, 0xc0c0004
	v_perm_b32 v86, v125, v124, 0xc0c0004
	v_lshl_or_b32 v82, v101, 16, v100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[98:101], v98 offset:1024
	ds_load_b128 v[102:105], v106 offset:1024
	ds_load_b128 v[106:109], v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[36:39], v[74:81] neg_lo:[1,1,0]
	v_perm_b32 v36, v113, v110, 0xc0c0004
	v_perm_b32 v37, v112, v111, 0xc0c0004
	v_perm_b32 v38, v118, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v39, v37, 16, v36
	v_lshl_or_b32 v38, v63, 16, v38
	v_lshl_or_b32 v37, v65, 16, v64
	v_lshl_or_b32 v36, v86, 16, v3
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[98:101], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[36:39], v[106:109], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[36:39], v[102:105], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v74
	v_cvt_f32_i32_e32 v59, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v81
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s17, 31
	v_mov_b16_e32 v36.l, 0
	s_lshr_b32 s6, s6, 26
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v36.h, v50.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s9, s7, 6
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
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	v_mov_b16_e32 v37.h, v58.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v74, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v37.l, v36.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v58, 2, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v39.h, v56.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v56, 7, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v38.h, v57.l
	v_mov_b16_e32 v50.h, v55.l
	v_mov_b16_e32 v51.h, v54.l
	v_mov_b16_e32 v52.h, v53.l
	v_mov_b16_e32 v53.h, v52.l
	v_mov_b16_e32 v54.h, v51.l
	v_mov_b16_e32 v38.l, v36.l
	v_mov_b16_e32 v39.l, v36.l
	v_mov_b16_e32 v50.l, v36.l
	v_mov_b16_e32 v51.l, v36.l
	v_mov_b16_e32 v52.l, v36.l
	v_mov_b16_e32 v53.l, v36.l
	v_mov_b16_e32 v54.l, v36.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v79, v36, v51 :: v_dual_and_b32 v74, 0x440, v74
	v_dual_mul_f32 v75, v36, v37 :: v_dual_and_b32 v58, 0x3f8, v58
	v_mul_f32_e32 v77, v36, v39
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v56, s35, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v76, v36, v38 :: v_dual_and_b32 v55, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s34, s35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v78, v36, v50 :: v_dual_and_b32 v57, 14, v0
	v_mul_f32_e32 v80, v36, v52
	v_mul_f32_e32 v81, v36, v53
	v_mul_f32_e32 v82, v36, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v58, v74, v58
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s33
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v75, v49, v18
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s4, v55, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v36, v37
	v_mul_f32_e32 v38, v36, v38
	v_mul_f32_e32 v39, v36, v39
	v_mul_f32_e32 v50, v36, v50
	v_mul_f32_e32 v51, v36, v51
	v_mul_f32_e32 v52, v36, v52
	v_mul_f32_e32 v53, v36, v53
	v_mul_f32_e32 v36, v36, v54
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v54, v57, 10, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v80, v44, v21
	v_fma_f32 v55, v82, v2, v19
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v36, v8, v10
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v36, 0, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v81, v43, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v18, v49, s3
	v_cndmask_b32_e64 v21, v21, v44, s3
	v_cndmask_b32_e64 v44, v19, v55, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v37, v42, v17
	v_fma_f32 v19, v38, v41, v16
	v_fma_f32 v37, v52, v5, v12
	v_fma_f32 v38, v53, v4, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v20, v43, s3
	v_cndmask_b32_e64 v2, v10, v8, s3
	v_cndmask_b32_e64 v17, v17, v18, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v50, v7, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v19, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v18, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v5, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v79, v45, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v14, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v78, v46, v23
	v_fma_f32 v48, v76, v48, v25
	v_fma_f32 v47, v77, v47, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v38, s3
	v_cndmask_b32_e64 v22, v22, v45, s3
	v_cndmask_b32_e64 v23, v23, v46, s3
	v_cndmask_b32_e64 v25, v25, v48, s3
	v_cndmask_b32_e64 v24, v24, v47, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v41, v54, 24, 0
	v_xad_u32 v42, v54, 32, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v45, v54, 40, 0
	v_xad_u32 v46, v54, 48, 0
	v_xad_u32 v47, v54, 56, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v39, v40, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v51, v6, v13
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v39, v54, 8, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v4, 16, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v20, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v5, 16, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v6, s3
	v_cndmask_b32_e64 v6, v12, v37, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v27
	v_lshlrev_b32_e32 v14, 16, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v4, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v4, v12 :: v_dual_lshlrev_b32 v26, 16, v26
	v_mul_f32_e32 v33, v4, v20
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v5, v8
	v_mul_f32_e32 v30, v4, v10
	v_mul_f32_e32 v10, v5, v10
	v_mul_f32_e32 v12, v5, v12
	v_mul_f32_e32 v35, v4, v28
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
	v_fma_f32 v8, v8, v66, v44
	v_fma_f32 v26, v30, v59, v11
	v_fma_f32 v29, v31, v60, v6
	v_fma_f32 v31, v33, v62, v7
	v_fma_f32 v33, v35, v64, v16
	v_fma_f32 v35, v10, v67, v43
	v_fma_f32 v37, v12, v68, v21
	v_fma_f32 v30, v32, v61, v13
	v_fma_f32 v38, v14, v69, v22
	v_fma_f32 v48, v20, v70, v23
	v_fma_f32 v50, v5, v73, v49
	v_fma_f32 v32, v34, v63, v15
	v_fma_f32 v34, v4, v65, v17
	v_fma_f32 v27, v27, v71, v24
	v_fma_f32 v28, v28, v72, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v3, s2
	v_cndmask_b32_e64 v3, v44, v8, s2
	v_cndmask_b32_e64 v4, v11, v26, s2
	v_cndmask_b32_e64 v5, v43, v35, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v40, v54, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v29, s2
	v_cndmask_b32_e64 v12, v7, v31, s2
	v_cndmask_b32_e64 v7, v21, v37, s2
	v_cndmask_b32_e64 v10, v13, v30, s2
	v_cndmask_b32_e64 v11, v22, v38, s2
	v_cndmask_b32_e64 v13, v23, v48, s2
	v_cndmask_b32_e64 v21, v49, v50, s2
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
	ds_store_b64 v45, v[14:15]
	ds_store_b64 v46, v[16:17]
	ds_store_b64 v47, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v21, v[18:19], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x380, v9
	v_lshlrev_b32_e32 v4, 2, v57
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 167
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9964
; TotalNumSgprs: 47
; NumVgprs: 167
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
