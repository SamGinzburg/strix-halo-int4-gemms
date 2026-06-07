	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v30, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v11, 7, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v31, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v37, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v29, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v32, 32, v30
	v_or_b32_e32 v36, 0x3f0, v0
	s_mov_b32 s38, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v40, 0, v37
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s28, 15
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
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s29, v30
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s28, v31
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v33, v11, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_lshl_add_u32 v34, s29, 5, v33
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	s_lshl_b32 s21, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s9, s21
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s20, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s16, s6
	s_sub_i32 s22, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_cvt_u32_f32 s19, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s22, s22, s19
	s_mul_hi_u32 s4, s19, s22
	s_xor_b32 s22, s2, s20
	s_add_i32 s4, s19, s4
	s_ashr_i32 s22, s22, 31
	s_mul_hi_u32 s4, s5, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s23, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s23
	s_add_i32 s23, s4, 1
	s_sub_i32 s24, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s23, s4
	s_cselect_b32 s5, s24, s5
	s_add_i32 s23, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s23, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s22
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s23, s7, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s22
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s6, v31
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s22, s3, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s23, 31
.Ltmp15:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s22
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s21
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s23, s4
.Ltmp19:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v3
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s3, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s23, 0xff
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s6, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s6, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s24, s29, s6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s7, v4
	v_cmp_gt_i32_e64 s4, s7, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s21, s33, s24
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 12, v10
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v9, v2, v1, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s21, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s23, 0x1ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s5, s28, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s21, v34
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s5, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s6, 0x100
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s35, v31
	v_or_b32_e32 v5, s35, v30
	v_or_b32_e32 v6, s35, v32
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s4, s28, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s22, s29, 8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s21, s21, s22
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s5, s4, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s7, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s21, v33
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s7, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s21, v34
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v1, s[16:19], 0 offen
	buffer_load_b128 v[17:20], v2, s[16:19], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v2, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v1, v3, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v8, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v4, 0x80000000, v12 :: v_dual_add_nc_u32 v39, 0, v10
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v38, v2, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v3, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v4, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v3, 4, v0
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s23, 0x2ff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v40, v[17:20] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v39, v1 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v40, v[13:16]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v35, 0x70, v2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v39, v38 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[25:28] offset:12288
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v3, 1, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v12, 8, v2
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow57
	s_load_b64 s[30:31], s[0:1], 0x20
	v_or_b32_e32 v13, s34, v29
	s_ashr_i32 s1, s20, 8
	v_or_b32_e32 v27, s33, v2
	v_or_b32_e32 v26, s33, v6
	v_or_b32_e32 v25, s33, v7
	v_mul_lo_u32 v28, v13, s1
	v_or_b32_e32 v23, s33, v8
	v_or_b32_e32 v21, s33, v12
	v_or_b32_e32 v24, s33, v3
	v_or_b32_e32 v22, s33, v4
	v_or_b32_e32 v20, s33, v5
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s39, s1, 3
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v13, 0
	s_add_i32 s15, s35, 0x100
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s37, 0, 0x4400
	s_add_i32 s36, 0, 0x2000
	s_add_i32 s39, s39, -3
	s_mov_b32 s40, 1
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s41, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s42, s41, 8
	s_mov_b32 s0, s6
	s_mov_b32 s6, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s15, s42
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s42, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v40, s35, v31
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[38:39], null, s35, s28, v[9:10]
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s42, s42, 24
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s43, s35, s29
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s42
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v40
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s43, s43, s33
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v39, v28, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s29
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v27, s0, 1
	v_add_lshl_u32 v41, v26, s0, 1
	v_add_lshl_u32 v42, v25, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v43, v23, s0, 1
	v_add_lshl_u32 v44, v21, s0, 1
	v_add_lshl_u32 v45, v24, s0, 1
	v_add_lshl_u32 v46, v22, s0, 1
	v_add_lshl_u32 v47, v20, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v86, v38, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v38, 0x80000000, v40, vcc_lo
	v_dual_cndmask_b32 v40, 0x80000000, v41 :: v_dual_cndmask_b32 v41, 0x80000000, v42
	v_cndmask_b32_e32 v42, 0x80000000, v43, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v43, 0x80000000, v44 :: v_dual_cndmask_b32 v44, 0x80000000, v45
	v_dual_cndmask_b32 v45, 0x80000000, v46 :: v_dual_cndmask_b32 v46, 0x80000000, v47
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v87, v39, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v88, v38, s[24:27], 0 offen
	buffer_load_u16 v89, v40, s[24:27], 0 offen
	buffer_load_u16 v90, v41, s[24:27], 0 offen
	buffer_load_u16 v91, v42, s[24:27], 0 offen
	buffer_load_u16 v92, v43, s[24:27], 0 offen
	buffer_load_u16 v93, v44, s[24:27], 0 offen
	buffer_load_u16 v94, v45, s[24:27], 0 offen
	buffer_load_u16 v95, v46, s[24:27], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v39, s35, v30
	v_or_b32_e32 v38, s35, v32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v40, s43, v33
	v_add_nc_u32_e32 v41, s43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s7, v39
	v_cmp_gt_i32_e32 vcc_lo, s7, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v38, 0x80000000, v40, s0
	v_cndmask_b32_e32 v39, 0x80000000, v41, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[46:49], v38, s[16:19], 0 offen
	buffer_load_b128 v[50:53], v39, s[16:19], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s14, s37
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v38, s0, v29
	s_mov_b32 s37, s38
	v_add_nc_u32_e32 v39, s0, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v40, s37, v35, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v38 offset:208
	ds_load_u8 v42, v38 offset:240
	ds_load_u8 v43, v38 offset:224
	ds_load_u8 v44, v38 offset:192
	ds_load_u8 v45, v38 offset:144
	ds_load_u8 v54, v38 offset:176
	ds_load_u8 v55, v38 offset:160
	ds_load_u8 v56, v38 offset:128
	ds_load_u8 v57, v38 offset:80
	ds_load_u8 v58, v38 offset:112
	ds_load_u8 v59, v38 offset:96
	ds_load_u8 v60, v38 offset:64
	ds_load_u8 v61, v38
	ds_load_u8 v62, v38 offset:16
	ds_load_u8 v63, v38 offset:32
	ds_load_u8 v64, v38 offset:48
	ds_load_u8 v65, v40 offset:1664
	ds_load_u8 v66, v40 offset:1920
	ds_load_u8 v67, v40 offset:1792
	ds_load_u8 v68, v40 offset:1536
	ds_load_u8 v69, v40 offset:1152
	ds_load_u8 v70, v40 offset:1408
	ds_load_u8 v71, v40 offset:1280
	ds_load_u8 v72, v40 offset:1024
	ds_load_u8 v73, v40 offset:640
	ds_load_u8 v74, v40 offset:896
	ds_load_u8 v75, v40 offset:768
	ds_load_u8 v76, v40 offset:512
	ds_load_u8 v77, v40 offset:128
	ds_load_u8 v78, v40 offset:384
	ds_load_u8 v79, v40 offset:256
	ds_load_u8 v80, v40
	ds_load_u8 v81, v38 offset:464
	ds_load_u8 v82, v38 offset:496
	ds_load_u8 v83, v38 offset:480
	ds_load_u8 v84, v38 offset:448
	ds_load_u8 v85, v38 offset:400
	ds_load_u8 v96, v38 offset:432
	ds_load_u8 v97, v38 offset:416
	ds_load_u8 v98, v38 offset:384
	ds_load_u8 v99, v38 offset:336
	ds_load_u8 v100, v38 offset:368
	ds_load_u8 v101, v38 offset:352
	ds_load_u8 v102, v38 offset:320
	ds_load_u8 v103, v38 offset:272
	ds_load_u8 v104, v38 offset:304
	ds_load_u8 v105, v38 offset:288
	ds_load_u8 v106, v38 offset:256
	ds_load_u8 v107, v40 offset:3712
	ds_load_u8 v108, v40 offset:3968
	ds_load_u8 v109, v40 offset:3840
	ds_load_u8 v110, v40 offset:3584
	ds_load_u8 v111, v40 offset:3200
	ds_load_u8 v112, v40 offset:3456
	ds_load_u8 v113, v40 offset:3328
	ds_load_u8 v114, v40 offset:3072
	ds_load_u8 v115, v40 offset:2688
	ds_load_u8 v116, v40 offset:2944
	ds_load_u8 v117, v40 offset:2816
	ds_load_u8 v118, v40 offset:2560
	ds_load_u8 v119, v40 offset:2176
	ds_load_u8 v120, v40 offset:2432
	ds_load_u8 v121, v40 offset:2304
	ds_load_u8 v122, v40 offset:2048
	ds_load_u8 v123, v38 offset:720
	ds_load_u8 v124, v38 offset:752
	ds_load_u8 v125, v38 offset:736
	ds_load_u8 v126, v38 offset:704
	ds_load_u8 v127, v38 offset:656
	ds_load_u8 v128, v38 offset:688
	ds_load_u8 v129, v38 offset:672
	ds_load_u8 v130, v38 offset:640
	ds_load_u8 v131, v38 offset:592
	ds_load_u8 v132, v38 offset:624
	ds_load_u8 v133, v38 offset:608
	ds_load_u8 v134, v38 offset:576
	ds_load_u8 v135, v38 offset:528
	ds_load_u8 v136, v38 offset:560
	ds_load_u8 v137, v38 offset:544
	ds_load_u8 v138, v38 offset:512
	ds_load_u8 v139, v40 offset:5760
	ds_load_u8 v140, v40 offset:6016
	ds_load_u8 v141, v40 offset:5888
	ds_load_u8 v142, v40 offset:5632
	ds_load_u8 v143, v40 offset:5248
	ds_load_u8 v144, v40 offset:5504
	ds_load_u8 v145, v40 offset:5376
	ds_load_u8 v146, v40 offset:5120
	ds_load_u8 v147, v40 offset:4736
	ds_load_u8 v148, v40 offset:4992
	ds_load_u8 v149, v40 offset:4864
	ds_load_u8 v150, v40 offset:4608
	ds_load_u8 v151, v40 offset:4224
	ds_load_u8 v152, v40 offset:4480
	ds_load_u8 v153, v40 offset:4352
	ds_load_u8 v154, v40 offset:4096
	ds_load_u8 v155, v38 offset:976
	ds_load_u8 v39, v39
	ds_load_u8 v156, v38 offset:992
	ds_load_u8 v157, v38 offset:960
	ds_load_u8 v158, v38 offset:912
	ds_load_u8 v159, v38 offset:944
	ds_load_u8 v160, v38 offset:928
	ds_load_u8 v161, v38 offset:896
	ds_load_u8 v162, v38 offset:848
	ds_load_u8 v163, v38 offset:880
	ds_load_u8 v164, v38 offset:864
	ds_load_u8 v165, v38 offset:832
	ds_load_u8 v166, v38 offset:784
	ds_load_u8 v167, v38 offset:816
	ds_load_u8 v168, v38 offset:800
	ds_load_u8 v38, v38 offset:768
	ds_load_u8 v169, v40 offset:7808
	ds_load_u8 v170, v40 offset:8064
	ds_load_u8 v171, v40 offset:7936
	ds_load_u8 v172, v40 offset:7680
	ds_load_u8 v173, v40 offset:7296
	ds_load_u8 v174, v40 offset:7552
	ds_load_u8 v175, v40 offset:7424
	ds_load_u8 v176, v40 offset:7168
	ds_load_u8 v177, v40 offset:6784
	ds_load_u8 v178, v40 offset:7040
	ds_load_u8 v179, v40 offset:6912
	ds_load_u8 v180, v40 offset:6656
	ds_load_u8 v181, v40 offset:6272
	ds_load_u8 v182, v40 offset:6528
	ds_load_u8 v183, v40 offset:6400
	ds_load_u8 v40, v40 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v41, v44, v41, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v56, v45, 0xc0c0004
	v_perm_b32 v44, v55, v54, 0xc0c0004
	v_perm_b32 v45, v60, v57, 0xc0c0004
	v_perm_b32 v54, v59, v58, 0xc0c0004
	v_perm_b32 v58, v61, v62, 0xc0c0004
	v_perm_b32 v59, v63, v64, 0xc0c0004
	v_perm_b32 v60, v68, v65, 0xc0c0004
	v_perm_b32 v61, v67, v66, 0xc0c0004
	v_perm_b32 v62, v72, v69, 0xc0c0004
	v_perm_b32 v63, v71, v70, 0xc0c0004
	v_perm_b32 v64, v76, v73, 0xc0c0004
	v_perm_b32 v65, v75, v74, 0xc0c0004
	v_perm_b32 v66, v80, v77, 0xc0c0004
	v_perm_b32 v67, v79, v78, 0xc0c0004
	v_perm_b32 v68, v84, v81, 0xc0c0004
	v_perm_b32 v69, v83, v82, 0xc0c0004
	v_perm_b32 v70, v98, v85, 0xc0c0004
	v_perm_b32 v71, v97, v96, 0xc0c0004
	v_perm_b32 v72, v102, v99, 0xc0c0004
	v_perm_b32 v73, v101, v100, 0xc0c0004
	v_perm_b32 v74, v106, v103, 0xc0c0004
	v_perm_b32 v75, v105, v104, 0xc0c0004
	v_perm_b32 v76, v110, v107, 0xc0c0004
	v_perm_b32 v77, v109, v108, 0xc0c0004
	v_perm_b32 v78, v114, v111, 0xc0c0004
	v_perm_b32 v79, v113, v112, 0xc0c0004
	v_perm_b32 v80, v118, v115, 0xc0c0004
	v_perm_b32 v81, v117, v116, 0xc0c0004
	v_perm_b32 v82, v122, v119, 0xc0c0004
	v_perm_b32 v83, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v110, v157, v155, 0xc0c0004
	v_perm_b32 v39, v156, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v38, v166, 0xc0c0004
	v_perm_b32 v115, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v181, 0xc0c0004
	v_perm_b32 v122, v183, v182, 0xc0c0004
	v_lshl_or_b32 v57, v42, 16, v41
	v_lshl_or_b32 v56, v44, 16, v43
	v_lshl_or_b32 v55, v54, 16, v45
	v_lshl_or_b32 v54, v59, 16, v58
	v_lshl_or_b32 v61, v61, 16, v60
	v_lshl_or_b32 v60, v63, 16, v62
	v_lshl_or_b32 v59, v65, 16, v64
	v_lshl_or_b32 v58, v67, 16, v66
	v_perm_b32 v84, v126, v123, 0xc0c0004
	v_perm_b32 v85, v125, v124, 0xc0c0004
	v_perm_b32 v96, v130, v127, 0xc0c0004
	v_perm_b32 v97, v129, v128, 0xc0c0004
	v_perm_b32 v98, v134, v131, 0xc0c0004
	v_perm_b32 v99, v133, v132, 0xc0c0004
	v_perm_b32 v100, v138, v135, 0xc0c0004
	v_perm_b32 v101, v137, v136, 0xc0c0004
	v_perm_b32 v102, v142, v139, 0xc0c0004
	v_perm_b32 v103, v141, v140, 0xc0c0004
	v_perm_b32 v104, v146, v143, 0xc0c0004
	v_perm_b32 v105, v145, v144, 0xc0c0004
	v_perm_b32 v106, v150, v147, 0xc0c0004
	v_perm_b32 v107, v149, v148, 0xc0c0004
	v_perm_b32 v108, v154, v151, 0xc0c0004
	v_perm_b32 v109, v153, v152, 0xc0c0004
	v_lshl_or_b32 v65, v69, 16, v68
	v_lshl_or_b32 v64, v71, 16, v70
	v_lshl_or_b32 v63, v73, 16, v72
	v_lshl_or_b32 v62, v75, 16, v74
	v_lshl_or_b32 v69, v77, 16, v76
	v_lshl_or_b32 v68, v79, 16, v78
	v_lshl_or_b32 v67, v81, 16, v80
	v_lshl_or_b32 v66, v83, 16, v82
	v_lshl_or_b32 v81, v39, 16, v110
	v_lshl_or_b32 v78, v115, 16, v38
	v_lshl_or_b32 v82, v122, 16, v40
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v111, v161, v158, 0xc0c0004
	v_perm_b32 v112, v160, v159, 0xc0c0004
	v_perm_b32 v113, v165, v162, 0xc0c0004
	v_perm_b32 v114, v164, v163, 0xc0c0004
	v_perm_b32 v116, v172, v169, 0xc0c0004
	v_perm_b32 v117, v171, v170, 0xc0c0004
	v_perm_b32 v118, v176, v173, 0xc0c0004
	v_perm_b32 v119, v175, v174, 0xc0c0004
	v_perm_b32 v120, v180, v177, 0xc0c0004
	v_perm_b32 v121, v179, v178, 0xc0c0004
	v_lshl_or_b32 v73, v85, 16, v84
	v_lshl_or_b32 v72, v97, 16, v96
	v_lshl_or_b32 v71, v99, 16, v98
	v_lshl_or_b32 v70, v101, 16, v100
	v_lshl_or_b32 v77, v103, 16, v102
	v_lshl_or_b32 v76, v105, 16, v104
	v_lshl_or_b32 v75, v107, 16, v106
	v_lshl_or_b32 v74, v109, 16, v108
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[62:65], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v112, 16, v111
	v_lshl_or_b32 v79, v114, 16, v113
	v_lshl_or_b32 v85, v117, 16, v116
	v_lshl_or_b32 v84, v119, 16, v118
	v_lshl_or_b32 v83, v121, 16, v120
	v_wmma_i32_16x16x16_iu8 v[38:45], v[74:77], v[70:73], v[38:45] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s40, 1
	s_mov_b32 s38, s36
	s_cmp_lt_i32 s0, 2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[82:85], v[78:81], v[38:45] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s40, s0, 0
	s_add_i32 s0, s41, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s36, s40, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s37, s40, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s42, s36, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s36, s37, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s37, s42, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s41, s39
	s_mov_b32 s41, s0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v54, 16, v87
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v55, 16, v88
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v57, 16, v90
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v184, s42, v10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v61, 16, v94
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v57, v54, v57 :: v_dual_lshlrev_b32 v62, 16, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v15, v57, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v59, 16, v92
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v61, v54, v61 :: v_dual_lshlrev_b32 v58, 16, v91
	v_dual_mul_f32 v55, v54, v55 :: v_dual_lshlrev_b32 v60, 16, v93
	v_dual_mul_f32 v59, v54, v59 :: v_dual_lshlrev_b32 v56, 16, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v58, v54, v58 :: v_dual_fmac_f32 v19, v61, v44
	v_dual_mul_f32 v60, v54, v60 :: v_dual_add_nc_u32 v185, s36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v59, v42 :: v_dual_mul_f32 v56, v54, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v54, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v12, v55, v38
	v_fmac_f32_e32 v16, v58, v41
	v_fmac_f32_e32 v18, v60, v43
	v_dual_fmac_f32 v14, v56, v39 :: v_dual_fmac_f32 v13, v54, v45
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v184, v86 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v185, v[46:49]
	s_waitcnt vmcnt(0)
	ds_store_b128 v185, v[50:53] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v36
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s37, 0, 0x4400
	s_add_i32 s36, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v40, v35, v29
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s14, v29
	v_add_nc_u32_e32 v7, s14, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v2 offset:208
	ds_load_u8 v5, v2 offset:224
	ds_load_u8 v6, v2 offset:192
	ds_load_u8 v8, v2 offset:240
	ds_load_u8 v30, v2 offset:144
	ds_load_u8 v31, v2 offset:176
	ds_load_u8 v32, v2 offset:160
	ds_load_u8 v33, v2 offset:128
	ds_load_u8 v34, v2 offset:112
	ds_load_u8 v35, v2 offset:80
	ds_load_u8 v36, v2 offset:96
	ds_load_u8 v37, v2 offset:64
	ds_load_u8 v38, v2
	ds_load_u8 v39, v2 offset:16
	ds_load_u8 v41, v2 offset:32
	ds_load_u8 v42, v2 offset:48
	ds_load_u8 v61, v7
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v5, v8, 0xc0c0004
	v_perm_b32 v3, v6, v3, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v33, v30, 0xc0c0004
	v_perm_b32 v30, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v31, v37, v35, 0xc0c0004
	v_perm_b32 v32, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v38, v39, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v41, v42, 0xc0c0004
	v_lshl_or_b32 v7, v30, 16, v6
	v_lshl_or_b32 v8, v5, 16, v3
	v_lshl_or_b32 v6, v32, 16, v31
	v_mov_b32_e32 v31, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s38, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v9 offset:1664
	ds_load_u8 v44, v9 offset:1920
	ds_load_u8 v45, v9 offset:1792
	ds_load_u8 v46, v9 offset:1536
	ds_load_u8 v47, v9 offset:1152
	ds_load_u8 v48, v9 offset:1408
	ds_load_u8 v49, v9 offset:1280
	ds_load_u8 v50, v9 offset:1024
	ds_load_u8 v51, v9 offset:640
	ds_load_u8 v52, v9 offset:896
	ds_load_u8 v53, v9 offset:768
	ds_load_u8 v54, v9 offset:512
	ds_load_u8 v55, v9 offset:128
	ds_load_u8 v56, v9 offset:384
	ds_load_u8 v57, v9 offset:256
	ds_load_u8 v58, v9
	ds_load_u8 v59, v2 offset:288
	ds_load_u8 v60, v2 offset:256
	v_lshl_or_b32 v5, v34, 16, v33
	v_mov_b32_e32 v38, v31
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v30, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v46, v43, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v33, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v32, v50, v47, 0xc0c0004
	v_lshl_or_b32 v44, v30, 16, v3
	ds_load_u8 v3, v2 offset:464
	ds_load_u8 v30, v2 offset:480
	ds_load_u8 v39, v2 offset:448
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v35, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v54, v51, 0xc0c0004
	ds_load_u8 v45, v2 offset:496
	ds_load_u8 v46, v2 offset:400
	ds_load_u8 v47, v2 offset:432
	ds_load_u8 v48, v2 offset:416
	ds_load_u8 v49, v2 offset:384
	ds_load_u8 v50, v2 offset:336
	ds_load_u8 v51, v2 offset:352
	ds_load_u8 v52, v2 offset:320
	ds_load_u8 v53, v2 offset:368
	v_lshl_or_b32 v43, v33, 16, v32
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v37, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v36, v58, v55, 0xc0c0004
	ds_load_u8 v54, v2 offset:272
	ds_load_u8 v55, v2 offset:304
	v_lshl_or_b32 v42, v35, 16, v34
	v_mov_b32_e32 v32, v31
	v_mov_b32_e32 v33, v31
	v_lshl_or_b32 v41, v37, 16, v36
	v_mov_b32_e32 v34, v31
	v_mov_b32_e32 v35, v31
	v_mov_b32_e32 v36, v31
	v_mov_b32_e32 v37, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[31:38], v[41:44], v[5:8], v[31:38] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v30, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v49, v46, 0xc0c0004
	v_perm_b32 v7, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v30, v52, v50, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v51, v53, 0xc0c0004
	ds_load_u8 v42, v9 offset:3712
	ds_load_u8 v43, v9 offset:3968
	ds_load_u8 v44, v9 offset:3840
	ds_load_u8 v45, v9 offset:3584
	ds_load_u8 v46, v9 offset:3200
	ds_load_u8 v47, v9 offset:3456
	ds_load_u8 v48, v9 offset:3328
	ds_load_u8 v49, v9 offset:3072
	ds_load_u8 v50, v9 offset:2688
	ds_load_u8 v51, v9 offset:2944
	ds_load_u8 v52, v9 offset:2816
	ds_load_u8 v53, v9 offset:2560
	ds_load_u8 v65, v9 offset:2176
	ds_load_u8 v66, v9 offset:2432
	ds_load_u8 v67, v9 offset:2304
	ds_load_u8 v68, v9 offset:2048
	v_perm_b32 v3, v39, v3, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v6
	ds_load_u8 v39, v2 offset:592
	ds_load_u8 v56, v2 offset:608
	ds_load_u8 v57, v2 offset:576
	ds_load_u8 v58, v2 offset:528
	ds_load_u8 v62, v2 offset:560
	ds_load_u8 v63, v2 offset:544
	ds_load_u8 v64, v2 offset:512
	v_lshl_or_b32 v6, v41, 16, v30
	v_lshl_or_b32 v8, v5, 16, v3
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v60, v54, 0xc0c0004
	ds_load_u8 v30, v2 offset:720
	ds_load_u8 v54, v2 offset:736
	ds_load_u8 v60, v2 offset:704
	ds_load_u8 v69, v2 offset:752
	ds_load_u8 v70, v2 offset:656
	ds_load_u8 v71, v2 offset:688
	ds_load_u8 v72, v2 offset:672
	ds_load_u8 v73, v2 offset:640
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v41, v45, v42, 0xc0c0004
	v_perm_b32 v42, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v45, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v43, v49, v46, 0xc0c0004
	v_perm_b32 v5, v59, v55, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v47, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v46, v53, v50, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	v_lshl_or_b32 v5, v5, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v49, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v48, v68, v65, 0xc0c0004
	v_lshl_or_b32 v42, v47, 16, v46
	ds_load_u8 v47, v2 offset:624
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v60, v30, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v46, v54, v69, 0xc0c0004
	v_lshl_or_b32 v41, v49, 16, v48
	v_lshl_or_b32 v43, v45, 16, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v48, v73, v70, 0xc0c0004
	ds_load_u8 v50, v9 offset:5760
	ds_load_u8 v51, v9 offset:6016
	ds_load_u8 v52, v9 offset:5888
	ds_load_u8 v53, v9 offset:5632
	ds_load_u8 v54, v9 offset:5248
	ds_load_u8 v55, v9 offset:5504
	ds_load_u8 v59, v9 offset:5376
	ds_load_u8 v60, v9 offset:5120
	ds_load_u8 v65, v9 offset:4736
	ds_load_u8 v66, v9 offset:4992
	ds_load_u8 v67, v9 offset:4864
	ds_load_u8 v68, v9 offset:4608
	ds_load_u8 v69, v9 offset:4224
	ds_load_u8 v70, v9 offset:4480
	ds_load_u8 v71, v9 offset:4352
	ds_load_u8 v72, v9 offset:4096
	v_perm_b32 v39, v57, v39, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[31:38], v[41:44], v[5:8], v[31:38] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v46, 16, v3
	v_lshl_or_b32 v7, v49, 16, v48
	v_perm_b32 v3, v64, v58, 0xc0c0004
	v_perm_b32 v5, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v41, v52, v51, 0xc0c0004
	ds_load_u8 v30, v2 offset:800
	ds_load_u8 v45, v2 offset:768
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v59, v55, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v60, v54, 0xc0c0004
	v_perm_b32 v47, v56, v47, 0xc0c0004
	ds_load_u8 v56, v2 offset:784
	ds_load_u8 v57, v2 offset:848
	ds_load_u8 v73, v2 offset:864
	ds_load_u8 v74, v2 offset:832
	ds_load_u8 v75, v2 offset:816
	v_lshl_or_b32 v5, v5, 16, v3
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v46, v68, v65, 0xc0c0004
	v_lshl_or_b32 v43, v43, 16, v42
	v_lshl_or_b32 v6, v47, 16, v39
	v_perm_b32 v39, v53, v50, 0xc0c0004
	v_perm_b32 v47, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v48, v72, v69, 0xc0c0004
	v_perm_b32 v49, v71, v70, 0xc0c0004
	v_lshl_or_b32 v44, v41, 16, v39
	v_lshl_or_b32 v42, v47, 16, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v41, v49, 16, v48
	ds_load_u8 v3, v2 offset:976
	ds_load_u8 v39, v2 offset:992
	ds_load_u8 v46, v2 offset:960
	ds_load_u8 v47, v2 offset:912
	ds_load_u8 v48, v2 offset:944
	ds_load_u8 v49, v2 offset:928
	ds_load_u8 v50, v2 offset:896
	ds_load_u8 v2, v2 offset:880
	ds_load_u8 v51, v9 offset:7808
	ds_load_u8 v52, v9 offset:8064
	ds_load_u8 v53, v9 offset:7936
	ds_load_u8 v54, v9 offset:7680
	ds_load_u8 v55, v9 offset:7296
	ds_load_u8 v58, v9 offset:7552
	ds_load_u8 v59, v9 offset:7424
	ds_load_u8 v60, v9 offset:7168
	ds_load_u8 v62, v9 offset:6784
	ds_load_u8 v63, v9 offset:7040
	ds_load_u8 v64, v9 offset:6912
	ds_load_u8 v65, v9 offset:6656
	ds_load_u8 v66, v9 offset:6272
	ds_load_u8 v67, v9 offset:6528
	ds_load_u8 v68, v9 offset:6400
	ds_load_u8 v9, v9 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v3, v46, v3, 0xc0c0004
	v_perm_b32 v39, v39, v61, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v46, v50, v47, 0xc0c0004
	v_perm_b32 v47, v49, v48, 0xc0c0004
	v_perm_b32 v48, v74, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v73, v2, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[31:38], v[41:44], v[5:8], v[31:38] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v39, 16, v3
	v_lshl_or_b32 v7, v47, 16, v46
	v_perm_b32 v3, v30, v75, 0xc0c0004
	v_lshl_or_b32 v6, v2, 16, v48
	v_perm_b32 v2, v45, v56, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v54, v51, 0xc0c0004
	v_perm_b32 v39, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v60, v55, 0xc0c0004
	v_perm_b32 v42, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v65, v62, 0xc0c0004
	v_perm_b32 v46, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v47, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v66, 0xc0c0004
	v_lshl_or_b32 v5, v3, 16, v2
	v_lshl_or_b32 v44, v39, 16, v30
	v_lshl_or_b32 v43, v42, 16, v41
	v_lshl_or_b32 v42, v46, 16, v45
	v_lshl_or_b32 v41, v47, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[31:38], v[41:44], v[5:8], v[31:38] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v33
	v_cvt_f32_i32_e32 v6, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v35
	v_cvt_f32_i32_e32 v8, v36
	v_cvt_f32_i32_e32 v9, v37
	v_cvt_f32_i32_e32 v30, v38
	v_cvt_f32_i32_e32 v5, v31
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s6, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s6, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v31, v28, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v27, s0, 1
	v_add_lshl_u32 v33, v26, s0, 1
	v_add_lshl_u32 v34, v25, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v23, s0, 1
	v_add_lshl_u32 v36, v21, s0, 1
	v_add_lshl_u32 v37, v24, s0, 1
	v_add_lshl_u32 v38, v22, s0, 1
	v_add_lshl_u32 v39, v20, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mov_b32 v42, 0
	s_clause 0x7
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s37, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s36, v40
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s37, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v29, v4 offset:208
	ds_load_u8 v41, v4 offset:224
	ds_load_u8 v42, v4 offset:192
	ds_load_u8 v40, v4 offset:240
	ds_load_u8 v43, v4 offset:144
	ds_load_u8 v44, v4 offset:176
	ds_load_u8 v45, v4 offset:160
	ds_load_u8 v46, v4 offset:128
	ds_load_u8 v47, v4 offset:112
	ds_load_u8 v48, v4 offset:80
	ds_load_u8 v49, v4 offset:96
	ds_load_u8 v50, v4 offset:64
	ds_load_u8 v51, v4
	ds_load_u8 v52, v4 offset:16
	ds_load_u8 v53, v4 offset:32
	ds_load_u8 v54, v4 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v29, v42, v29, 0xc0c0004
	ds_load_u8 v42, v56 offset:1664
	ds_load_u8 v55, v56 offset:1920
	ds_load_u8 v57, v56 offset:1792
	ds_load_u8 v58, v56 offset:1536
	ds_load_u8 v59, v56 offset:1152
	ds_load_u8 v60, v56 offset:1408
	ds_load_u8 v61, v56 offset:1280
	ds_load_u8 v62, v56 offset:1024
	ds_load_u8 v63, v56 offset:640
	ds_load_u8 v64, v56 offset:896
	ds_load_u8 v65, v56 offset:768
	ds_load_u8 v66, v56 offset:512
	ds_load_u8 v67, v56 offset:128
	ds_load_u8 v68, v56 offset:384
	ds_load_u8 v69, v56 offset:256
	ds_load_u8 v70, v56
	ds_load_u8 v71, v4 offset:288
	ds_load_u8 v72, v4 offset:256
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v41, v46, v43, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v44, v50, v48, 0xc0c0004
	v_perm_b32 v45, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v46, v51, v52, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v53, v54, 0xc0c0004
	v_lshl_or_b32 v51, v40, 16, v29
	v_lshl_or_b32 v50, v43, 16, v41
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v58, v42, 0xc0c0004
	v_perm_b32 v41, v57, v55, 0xc0c0004
	v_mov_b32_e32 v40, 0
	v_lshl_or_b32 v49, v45, 16, v44
	v_lshl_or_b32 v48, v47, 16, v46
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v62, v59, 0xc0c0004
	v_perm_b32 v43, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v66, v63, 0xc0c0004
	v_perm_b32 v45, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v70, v67, 0xc0c0004
	v_lshl_or_b32 v55, v41, 16, v29
	v_mov_b32_e32 v41, v40
	ds_load_u8 v59, v4 offset:496
	ds_load_u8 v60, v4 offset:400
	ds_load_u8 v61, v4 offset:432
	ds_load_u8 v62, v4 offset:416
	ds_load_u8 v63, v4 offset:384
	ds_load_u8 v64, v4 offset:336
	ds_load_u8 v65, v4 offset:352
	ds_load_u8 v66, v4 offset:320
	ds_load_u8 v67, v4 offset:368
	ds_load_u8 v29, v4 offset:464
	ds_load_u8 v57, v4 offset:480
	ds_load_u8 v58, v4 offset:448
	v_perm_b32 v47, v69, v68, 0xc0c0004
	ds_load_u8 v68, v4 offset:272
	ds_load_u8 v69, v4 offset:304
	v_lshl_or_b32 v54, v43, 16, v42
	v_lshl_or_b32 v53, v45, 16, v44
	v_mov_b32_e32 v42, v40
	v_lshl_or_b32 v52, v47, 16, v46
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v47, v40
	ds_load_u8 v1, v1
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v63, v60, 0xc0c0004
	v_perm_b32 v50, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v57, v59, 0xc0c0004
	v_perm_b32 v52, v66, v64, 0xc0c0004
	v_perm_b32 v53, v65, v67, 0xc0c0004
	ds_load_u8 v54, v56 offset:3712
	ds_load_u8 v55, v56 offset:3968
	ds_load_u8 v57, v56 offset:3840
	ds_load_u8 v59, v56 offset:3584
	ds_load_u8 v60, v56 offset:3200
	ds_load_u8 v61, v56 offset:3456
	ds_load_u8 v62, v56 offset:3328
	ds_load_u8 v63, v56 offset:3072
	ds_load_u8 v64, v56 offset:2688
	ds_load_u8 v65, v56 offset:2944
	ds_load_u8 v66, v56 offset:2816
	ds_load_u8 v67, v56 offset:2560
	ds_load_u8 v78, v56 offset:2176
	ds_load_u8 v79, v56 offset:2432
	ds_load_u8 v80, v56 offset:2304
	ds_load_u8 v81, v56 offset:2048
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v29, v58, v29, 0xc0c0004
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v58, v4 offset:592
	ds_load_u8 v70, v4 offset:608
	ds_load_u8 v73, v4 offset:576
	ds_load_u8 v74, v4 offset:528
	ds_load_u8 v75, v4 offset:560
	ds_load_u8 v76, v4 offset:544
	ds_load_u8 v77, v4 offset:512
	v_lshl_or_b32 v49, v53, 16, v52
	v_lshl_or_b32 v51, v48, 16, v29
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v29, v72, v68, 0xc0c0004
	ds_load_u8 v68, v4 offset:720
	ds_load_u8 v72, v4 offset:736
	ds_load_u8 v82, v4 offset:704
	ds_load_u8 v83, v4 offset:752
	ds_load_u8 v84, v4 offset:656
	ds_load_u8 v85, v4 offset:688
	ds_load_u8 v86, v4 offset:672
	ds_load_u8 v87, v4 offset:640
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v52, v59, v54, 0xc0c0004
	v_perm_b32 v53, v57, v55, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v57, v62, v61, 0xc0c0004
	v_perm_b32 v48, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v54, v63, v60, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v60, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v59, v67, v64, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	v_lshl_or_b32 v48, v48, 16, v29
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v61, v81, v78, 0xc0c0004
	v_lshl_or_b32 v53, v60, 16, v59
	v_lshl_or_b32 v54, v57, 16, v54
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v82, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v72, v83, 0xc0c0004
	v_lshl_or_b32 v52, v62, 16, v61
	ds_load_u8 v61, v4 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v87, v84, 0xc0c0004
	ds_load_u8 v64, v56 offset:5760
	ds_load_u8 v65, v56 offset:6016
	ds_load_u8 v66, v56 offset:5888
	ds_load_u8 v67, v56 offset:5632
	ds_load_u8 v68, v56 offset:5248
	ds_load_u8 v69, v56 offset:5504
	ds_load_u8 v71, v56 offset:5376
	ds_load_u8 v72, v56 offset:5120
	ds_load_u8 v78, v56 offset:4736
	ds_load_u8 v79, v56 offset:4992
	ds_load_u8 v80, v56 offset:4864
	ds_load_u8 v81, v56 offset:4608
	ds_load_u8 v82, v56 offset:4224
	ds_load_u8 v83, v56 offset:4480
	ds_load_u8 v84, v56 offset:4352
	ds_load_u8 v85, v56 offset:4096
	v_perm_b32 v58, v73, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v60, 16, v29
	v_lshl_or_b32 v50, v63, 16, v62
	v_perm_b32 v29, v77, v74, 0xc0c0004
	v_perm_b32 v48, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v53, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v52, v67, v64, 0xc0c0004
	ds_load_u8 v57, v4 offset:800
	ds_load_u8 v59, v4 offset:768
	v_lshl_or_b32 v48, v48, 16, v29
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v72, v68, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v60, v81, v78, 0xc0c0004
	v_perm_b32 v61, v70, v61, 0xc0c0004
	ds_load_u8 v70, v4 offset:784
	ds_load_u8 v73, v4 offset:848
	ds_load_u8 v86, v4 offset:864
	ds_load_u8 v87, v4 offset:832
	ds_load_u8 v88, v4 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v63, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v62, v85, v82, 0xc0c0004
	v_lshl_or_b32 v49, v61, 16, v58
	v_perm_b32 v58, v71, v69, 0xc0c0004
	v_perm_b32 v61, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v52, v63, 16, v62
	v_lshl_or_b32 v54, v58, 16, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v53, v61, 16, v60
	ds_load_u8 v29, v4 offset:976
	ds_load_u8 v58, v4 offset:992
	ds_load_u8 v60, v4 offset:960
	ds_load_u8 v61, v4 offset:912
	ds_load_u8 v62, v4 offset:944
	ds_load_u8 v63, v4 offset:928
	ds_load_u8 v64, v4 offset:896
	ds_load_u8 v4, v4 offset:880
	ds_load_u8 v65, v56 offset:7808
	ds_load_u8 v66, v56 offset:8064
	ds_load_u8 v67, v56 offset:7936
	ds_load_u8 v68, v56 offset:7680
	ds_load_u8 v69, v56 offset:7296
	ds_load_u8 v71, v56 offset:7552
	ds_load_u8 v72, v56 offset:7424
	ds_load_u8 v74, v56 offset:7168
	ds_load_u8 v75, v56 offset:6784
	ds_load_u8 v76, v56 offset:7040
	ds_load_u8 v77, v56 offset:6912
	ds_load_u8 v78, v56 offset:6656
	ds_load_u8 v79, v56 offset:6272
	ds_load_u8 v80, v56 offset:6528
	ds_load_u8 v81, v56 offset:6400
	ds_load_u8 v56, v56 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v29, v60, v29, 0xc0c0004
	v_perm_b32 v1, v58, v1, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v58, v64, v61, 0xc0c0004
	v_perm_b32 v60, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v4, v86, v4, 0xc0c0004
	v_perm_b32 v61, v87, v73, 0xc0c0004
	v_lshl_or_b32 v51, v1, 16, v29
	v_lshl_or_b32 v50, v60, 16, v58
	v_perm_b32 v1, v59, v70, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v68, v65, 0xc0c0004
	v_lshl_or_b32 v49, v4, 16, v61
	v_perm_b32 v4, v57, v88, 0xc0c0004
	v_perm_b32 v52, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v74, v69, 0xc0c0004
	v_perm_b32 v54, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v78, v75, 0xc0c0004
	v_perm_b32 v58, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v59, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v56, v79, 0xc0c0004
	v_lshl_or_b32 v48, v4, 16, v1
	v_lshl_or_b32 v55, v52, 16, v29
	v_lshl_or_b32 v54, v54, 16, v53
	v_lshl_or_b32 v53, v58, 16, v57
	v_lshl_or_b32 v52, v59, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v32.h, v37.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s6, s6, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v34.h, v35.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s6, s35, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v33.h, v36.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v28, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s7, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v26, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v27, v27, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v25, v25, s1, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v21, v21, s1, 1
	v_add_lshl_u32 v22, v22, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v28, v1, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v23, s1, 1
	v_add_lshl_u32 v23, v24, s1, 1
	v_add_lshl_u32 v20, v20, s1, 1
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v40, 1, v0
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	s_clause 0x7
	buffer_load_u16 v24, v27, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v27, v1, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v1.h, v31.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v35.h, v34.l
	v_mov_b16_e32 v36.h, v33.l
	v_mov_b16_e32 v31.h, v38.l
	v_mov_b16_e32 v35.l, v1.l
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v48, v0, 3, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.l, v1.l
	v_mov_b16_e32 v29.h, v39.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v1, v35
	v_mul_f32_e32 v36, v1, v36
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v39, 7, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v31, v1, v31 :: v_dual_and_b32 v48, 0x1040, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v37.h, v32.l
	v_mov_b16_e32 v37.l, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v39, s29, v39
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v29.l, v1.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v38, 0x7f, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e32 v33.l, v1.l
	v_mov_b16_e32 v34.l, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v31, v9, v19
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s1, s34, s29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v1, v37
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s1, s1, s33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v1, v29
	v_mul_f32_e32 v32, v1, v32
	v_mul_f32_e32 v34, v1, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v19, v9, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v30, v13
	v_fma_f32 v8, v32, v8, v18
	v_fma_f32 v6, v34, v6, v16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v29, s3
	v_cndmask_b32_e64 v8, v18, v8, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v6, v16, v6, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v35, v3, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v37, v5, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v24, v28, v24 :: v_dual_lshlrev_b32 v27, 16, v27
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v25, v28, v25 :: v_dual_lshlrev_b32 v22, 16, v22
	v_dual_mul_f32 v26, v28, v26 :: v_dual_and_b32 v49, 0x1e0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v28, v27
	v_dual_mul_f32 v22, v28, v22 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v49, v11, 2, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v36, v2, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v12, v5, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v21, v28, v21 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v31, v49, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v30, s3
	v_cndmask_b32_e64 v15, v15, v3, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v28, v20
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v11, v11, 9, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v1, v33
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s1, v38, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v28, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v24, v4, v5
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v12, 0, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v33, v7, v17
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v26, v41, v14
	v_fma_f32 v25, v25, v42, v15
	v_fma_f32 v26, v27, v43, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v17, v7, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v45, v8
	v_fma_f32 v22, v22, v46, v9
	v_fma_f32 v20, v20, v47, v13
	v_fma_f32 v21, v21, v44, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v4, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v2, vcc_lo, s30, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	v_xad_u32 v16, v11, 4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v14, v24, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v17, v11, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v15, v25, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v18, v11, 12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v26, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v19, v11, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v21, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v29, v11, 20, 0
	v_xad_u32 v30, v11, 24, 0
	v_xad_u32 v11, v11, 28, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v23, s2
	v_cndmask_b32_e64 v9, v9, v22, s2
	v_cndmask_b32_e64 v13, v13, v20, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b32 v12, v4
	ds_store_b32 v16, v5
	ds_store_b32 v17, v14
	ds_store_b32 v18, v6
	ds_store_b32 v19, v7
	ds_store_b32 v29, v8
	ds_store_b32 v30, v9
	ds_store_b32 v11, v13
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v6, 28, v40
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 0x204, v4
	v_and_or_b32 v6, 0x1c0, v10, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v6, v4
	v_and_or_b32 v0, v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_13:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s30, v2
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_15:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s30, v2
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_17:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s30, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_19:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s30, v2
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_21:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s30, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_23:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s30, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s31, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_25:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_27:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 186
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11080
; TotalNumSgprs: 46
; NumVgprs: 186
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
