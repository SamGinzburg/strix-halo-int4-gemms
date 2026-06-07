	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v32, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v33, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v35, 4, v0
	s_mov_b32 s35, 0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 2, v32
	v_or_b32_e32 v6, 32, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, 0, v35
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
	s_lshl_b32 s20, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s20
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s22, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s22
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s16, s7
	s_sub_i32 s19, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v1, 4, v9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[4:5], null, s29, v33, v[1:2]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_2)
	s_mul_i32 s19, s19, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v5, s29, 5, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s18, s19
	s_xor_b32 s19, s2, s22
	s_add_i32 s4, s18, s4
	s_ashr_i32 s26, s19, 31
	s_mul_hi_u32 s4, s5, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s21, s4, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s21
	s_add_i32 s21, s4, 1
	s_sub_i32 s23, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s21, s4
	s_cselect_b32 s5, s23, s5
	s_add_i32 s21, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s21, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s6, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s24, s4, s26
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s23, s24, s26
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s25, s23, s22
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s22, s3, s4
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s25
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s7, v2
	v_or_b32_e32 v10, s7, v33
	v_or_b32_e32 v11, s7, v6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s20
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s21, s6, 0xff
.Ltmp21:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s23, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s30, s3, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s29, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0xff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v8
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s6, v10
	v_cmp_gt_i32_e64 s4, s6, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s28, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s20, s30, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s5, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v7, v2, s20
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s21, 0x1ff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s20, s7, 0x100
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v11, s7, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s20, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s5, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s20, v33
	v_or_b32_e32 v6, s20, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s36, s29, 8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s20, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s36
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s5, v4
	v_add_nc_u32_e32 v5, s5, v5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v8, s[16:19], 0 offen
	buffer_load_b128 v[19:22], v10, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v31, v11, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v10, 2, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v37, v6, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v4, s[16:19], 0 offen
	buffer_load_b128 v[27:30], v5, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v0
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0x2ff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v34, 0x70, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v4
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v3, 1, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v36, v10, v6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 2, v5
	v_or_b32_e32 v12, 4, v5
	v_or_b32_e32 v13, 6, v5
	v_or_b32_e32 v14, 8, v5
	v_or_b32_e32 v6, 10, v5
	v_or_b32_e32 v7, 12, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v39, 0, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 14, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v38, v[19:22] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v39, v31 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v38, v[15:18]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v39, v37 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[23:26] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[27:30] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v15, 48, v4
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v32, 6, v15
	v_xor_b32_e32 v29, 16, v28
	v_xor_b32_e32 v30, 32, v28
	v_xor_b32_e32 v31, 48, v28
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
.LBB0_3:                                ; %Flow63
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v15, s30, v32
	s_ashr_i32 s31, s22, 7
	v_or_b32_e32 v26, s28, v5
	v_or_b32_e32 v25, s28, v11
	v_or_b32_e32 v24, s28, v12
	v_mul_lo_u32 v27, v15, s31
	v_or_b32_e32 v22, s28, v13
	v_or_b32_e32 v20, s28, v14
	v_or_b32_e32 v23, s28, v6
	v_or_b32_e32 v21, s28, v7
	v_or_b32_e32 v19, s28, v8
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v4, 48, v4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v5, s7, v33
	s_lshl_b32 s15, s24, 7
	s_lshl_b32 s18, s26, 7
	v_or_b32_e32 v40, 0x200, v2
	v_lshl_or_b32 v28, v32, 6, v4
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v4, 0x220, v5
	v_add_nc_u32_e32 v5, 0x200, v5
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s29, v4
	v_xor_b32_e32 v29, 16, v28
	v_mul_lo_u32 v5, s29, v5
	v_xor_b32_e32 v30, 32, v28
	v_xor_b32_e32 v31, 48, v28
	v_mov_b32_e32 v17, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s21, 8
	s_mov_b32 s23, 0x31027000
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v4, v4, s15, v1
	s_mov_b32 s22, 0x7ffffffe
	v_add3_u32 v1, v5, s15, v1
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	v_subrev_nc_u32_e32 v37, s18, v4
	s_and_b32 s25, s5, 0xffff
	v_subrev_nc_u32_e32 v38, s18, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s30, v3
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v7, v1
	v_mov_b32_e32 v6, v1
	v_mul_lo_u32 v3, s6, v3
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v14, 0
	s_mov_b32 s24, s4
	s_add_i32 s15, s14, -2
	s_add_i32 s14, 0, 0x4000
	v_add3_u32 v39, v3, v2, 0x200
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	s_add_i32 s33, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
	s_mov_b32 s37, 1
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s38, s7
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v41, s38, v40
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v43, s38, v39
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s38, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v42, s38, v33
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v41
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v41, 0x80000000, v43, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v43, v27, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s7, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v44, v25, s7, 1
	v_add_lshl_u32 v45, v24, s7, 1
	v_add_lshl_u32 v46, v22, s7, 1
	v_add_lshl_u32 v47, v20, s7, 1
	v_add_lshl_u32 v48, v23, s7, 1
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v89, v41, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v41, v26, s7, 1
	v_add_lshl_u32 v49, v21, s7, 1
	v_add_lshl_u32 v50, v19, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v90, v43, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v91, v41, s[24:27], 0 offen
	buffer_load_u16 v92, v44, s[24:27], 0 offen
	buffer_load_u16 v93, v45, s[24:27], 0 offen
	buffer_load_u16 v94, v46, s[24:27], 0 offen
	buffer_load_u16 v95, v47, s[24:27], 0 offen
	buffer_load_u16 v96, v48, s[24:27], 0 offen
	buffer_load_u16 v97, v49, s[24:27], 0 offen
	buffer_load_u16 v98, v50, s[24:27], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v41, 0x200, v42
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v42, 0x220, v42
	s_mov_b32 s7, s14
	s_mov_b32 s14, s33
	s_mov_b32 s33, s35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v43, s7, v30
	v_add_nc_u32_e32 v44, s7, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v45, s33, v34, v32
	s_mov_b32 s35, s34
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v42, 0x80000000, v37, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[49:52], v41, s[16:19], 0 offen
	buffer_load_b128 v[53:56], v42, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v41, s7, v28
	v_add_nc_u32_e32 v42, s7, v29
	ds_load_b128 v[57:60], v41
	ds_load_b128 v[61:64], v42
	ds_load_b128 v[65:68], v43
	ds_load_b128 v[69:72], v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v45 offset:1664
	ds_load_u8 v42, v45 offset:1920
	ds_load_u8 v43, v45 offset:1792
	ds_load_u8 v44, v45 offset:1536
	ds_load_u8 v46, v45 offset:1152
	ds_load_u8 v47, v45 offset:1408
	ds_load_u8 v48, v45 offset:1280
	ds_load_u8 v73, v45 offset:1024
	ds_load_u8 v74, v45 offset:640
	ds_load_u8 v75, v45 offset:896
	ds_load_u8 v76, v45 offset:768
	ds_load_u8 v77, v45 offset:512
	ds_load_u8 v78, v45 offset:128
	ds_load_u8 v79, v45 offset:384
	ds_load_u8 v80, v45 offset:256
	ds_load_u8 v81, v45
	ds_load_u8 v82, v45 offset:3712
	ds_load_u8 v83, v45 offset:3968
	ds_load_u8 v84, v45 offset:3840
	ds_load_u8 v85, v45 offset:3584
	ds_load_u8 v86, v45 offset:3200
	ds_load_u8 v87, v45 offset:3456
	ds_load_u8 v88, v45 offset:3328
	ds_load_u8 v99, v45 offset:3072
	ds_load_u8 v100, v45 offset:2688
	ds_load_u8 v101, v45 offset:2944
	ds_load_u8 v102, v45 offset:2816
	ds_load_u8 v103, v45 offset:2560
	ds_load_u8 v104, v45 offset:2176
	ds_load_u8 v105, v45 offset:2432
	ds_load_u8 v106, v45 offset:2304
	ds_load_u8 v107, v45 offset:2048
	ds_load_u8 v108, v45 offset:5760
	ds_load_u8 v109, v45 offset:6016
	ds_load_u8 v110, v45 offset:5888
	ds_load_u8 v111, v45 offset:5632
	ds_load_u8 v112, v45 offset:5248
	ds_load_u8 v113, v45 offset:5504
	ds_load_u8 v114, v45 offset:5376
	ds_load_u8 v115, v45 offset:5120
	ds_load_u8 v116, v45 offset:4736
	ds_load_u8 v117, v45 offset:4992
	ds_load_u8 v118, v45 offset:4864
	ds_load_u8 v119, v45 offset:4608
	ds_load_u8 v120, v45 offset:4224
	ds_load_u8 v121, v45 offset:4480
	ds_load_u8 v122, v45 offset:4352
	ds_load_u8 v123, v45 offset:4096
	ds_load_u8 v124, v45 offset:7808
	ds_load_u8 v125, v45 offset:8064
	ds_load_u8 v126, v45 offset:7936
	ds_load_u8 v127, v45 offset:7680
	ds_load_u8 v128, v45 offset:7296
	ds_load_u8 v129, v45 offset:7552
	ds_load_u8 v130, v45 offset:7424
	ds_load_u8 v131, v45 offset:7168
	ds_load_u8 v132, v45 offset:6784
	ds_load_u8 v133, v45 offset:7040
	ds_load_u8 v134, v45 offset:6912
	ds_load_u8 v135, v45 offset:6656
	ds_load_u8 v136, v45 offset:6272
	ds_load_u8 v137, v45 offset:6528
	ds_load_u8 v138, v45 offset:6400
	ds_load_u8 v45, v45 offset:6144
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v41, v44, v41, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v43, v73, v46, 0xc0c0004
	v_perm_b32 v44, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v46, v77, v74, 0xc0c0004
	v_perm_b32 v47, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v48, v81, v78, 0xc0c0004
	v_perm_b32 v73, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v77, v85, v82, 0xc0c0004
	v_perm_b32 v78, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v79, v99, v86, 0xc0c0004
	v_perm_b32 v81, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v82, v103, v100, 0xc0c0004
	v_perm_b32 v83, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v84, v107, v104, 0xc0c0004
	v_perm_b32 v85, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v87, v110, v109, 0xc0c0004
	v_lshl_or_b32 v76, v42, 16, v41
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v110, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v136, 0xc0c0004
	v_lshl_or_b32 v75, v44, 16, v43
	v_lshl_or_b32 v74, v47, 16, v46
	v_lshl_or_b32 v73, v73, 16, v48
	v_perm_b32 v86, v111, v108, 0xc0c0004
	v_perm_b32 v88, v115, v112, 0xc0c0004
	v_perm_b32 v99, v114, v113, 0xc0c0004
	v_perm_b32 v100, v119, v116, 0xc0c0004
	v_perm_b32 v101, v118, v117, 0xc0c0004
	v_perm_b32 v102, v123, v120, 0xc0c0004
	v_perm_b32 v103, v122, v121, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	v_lshl_or_b32 v79, v81, 16, v79
	v_lshl_or_b32 v78, v83, 16, v82
	v_lshl_or_b32 v77, v85, 16, v84
	v_lshl_or_b32 v85, v110, 16, v45
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v104, v127, v124, 0xc0c0004
	v_perm_b32 v105, v126, v125, 0xc0c0004
	v_perm_b32 v106, v131, v128, 0xc0c0004
	v_perm_b32 v107, v130, v129, 0xc0c0004
	v_perm_b32 v108, v135, v132, 0xc0c0004
	v_perm_b32 v109, v134, v133, 0xc0c0004
	v_lshl_or_b32 v84, v87, 16, v86
	v_lshl_or_b32 v83, v99, 16, v88
	v_lshl_or_b32 v82, v101, 16, v100
	v_lshl_or_b32 v81, v103, 16, v102
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v105, 16, v104
	v_lshl_or_b32 v87, v107, 16, v106
	v_lshl_or_b32 v86, v109, 16, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s37, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[65:68], v[41:48] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s7, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s37, s7, 0
	s_add_i32 s15, s15, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[85:88], v[69:72], v[41:48] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s33, s37, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s34, s37, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s39, s33, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s34, s34, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s38, 0x100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s33, s39, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v57, 16, v90
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v58, 16, v91
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v59, 16, v92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v93
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v61, 16, v94
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v58, v57, v58 :: v_dual_lshlrev_b32 v63, 16, v96
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v65, 16, v98
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v61, v57, v61 :: v_dual_lshlrev_b32 v62, 16, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v63, v57, v63 :: v_dual_lshlrev_b32 v64, 16, v97
	v_mul_f32_e32 v59, v57, v59
	v_mul_f32_e32 v60, v57, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v15, v61, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v57, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v63, v46 :: v_dual_mul_f32 v64, v57, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v57, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v14, v60, v43 :: v_dual_add_nc_u32 v37, s36, v37
	v_dual_fmac_f32 v11, v58, v41 :: v_dual_add_nc_u32 v38, s36, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v18, v64, v47 :: v_dual_add_nc_u32 v139, s39, v36
	v_dual_fmac_f32 v13, v59, v42 :: v_dual_add_nc_u32 v140, s34, v35
	v_fmac_f32_e32 v16, v62, v45
	v_fmac_f32_e32 v12, v57, v48
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v139, v89 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v140, v[49:52]
	s_waitcnt vmcnt(0)
	ds_store_b128 v140, v[53:56] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s20, s38, 0x200
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s33, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %Flow64
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v43, v34, v32
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s35, v43
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s14, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v2 offset:1664
	ds_load_u8 v32, v2 offset:1920
	ds_load_u8 v33, v2 offset:1792
	ds_load_u8 v34, v2 offset:1536
	ds_load_u8 v35, v2 offset:1152
	ds_load_u8 v36, v2 offset:1408
	ds_load_u8 v37, v2 offset:1280
	ds_load_u8 v38, v2 offset:1024
	ds_load_u8 v39, v2 offset:640
	ds_load_u8 v40, v2 offset:896
	ds_load_u8 v41, v2 offset:768
	ds_load_u8 v42, v2 offset:512
	ds_load_u8 v56, v2 offset:128
	ds_load_u8 v57, v2 offset:256
	ds_load_u8 v58, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v3, v34, v3, 0xc0c0004
	v_mov_b32_e32 v34, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v44, s14, v30
	v_add_nc_u32_e32 v48, s14, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v38, v35, 0xc0c0004
	v_perm_b32 v35, v37, v36, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, s14, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v41, v40, 0xc0c0004
	v_mov_b32_e32 v41, v34
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v42, v39, 0xc0c0004
	v_mov_b32_e32 v40, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v58, v56, 0xc0c0004
	v_lshl_or_b32 v58, v35, 16, v33
	v_mov_b32_e32 v35, v34
	ds_load_u8 v59, v2 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[44:47], v44
	ds_load_b128 v[48:51], v48
	ds_load_b128 v[52:55], v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v2 offset:3712
	ds_load_u8 v60, v2 offset:3968
	ds_load_u8 v61, v2 offset:3840
	ds_load_u8 v62, v2 offset:3584
	ds_load_u8 v63, v2 offset:3200
	ds_load_u8 v64, v2 offset:3456
	ds_load_u8 v65, v2 offset:3328
	ds_load_u8 v66, v2 offset:3072
	ds_load_u8 v67, v2 offset:2688
	ds_load_u8 v68, v2 offset:2944
	ds_load_u8 v69, v2 offset:2816
	ds_load_u8 v70, v2 offset:2560
	ds_load_u8 v71, v2 offset:2176
	ds_load_u8 v72, v2 offset:2432
	ds_load_u8 v73, v2 offset:2304
	ds_load_u8 v74, v2 offset:2048
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v66, v63, 0xc0c0004
	v_perm_b32 v39, v57, v59, 0xc0c0004
	v_lshl_or_b32 v59, v32, 16, v3
	v_lshl_or_b32 v57, v37, 16, v36
	v_mov_b32_e32 v36, v34
	v_mov_b32_e32 v37, v34
	v_lshl_or_b32 v56, v39, 16, v38
	v_mov_b32_e32 v38, v34
	v_mov_b32_e32 v39, v34
	v_perm_b32 v3, v62, v42, 0xc0c0004
	v_perm_b32 v32, v61, v60, 0xc0c0004
	v_perm_b32 v42, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v70, v67, 0xc0c0004
	v_perm_b32 v61, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v74, v71, 0xc0c0004
	v_perm_b32 v63, v73, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[56:59], v[52:55], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v32, 16, v3
	v_lshl_or_b32 v54, v42, 16, v33
	v_lshl_or_b32 v53, v61, 16, v60
	v_lshl_or_b32 v52, v63, 16, v62
	ds_load_u8 v3, v2 offset:5760
	ds_load_u8 v32, v2 offset:6016
	ds_load_u8 v33, v2 offset:5888
	ds_load_u8 v42, v2 offset:5632
	ds_load_u8 v56, v2 offset:5248
	ds_load_u8 v57, v2 offset:5504
	ds_load_u8 v58, v2 offset:5376
	ds_load_u8 v59, v2 offset:5120
	ds_load_u8 v60, v2 offset:4736
	ds_load_u8 v61, v2 offset:4992
	ds_load_u8 v62, v2 offset:4864
	ds_load_u8 v63, v2 offset:4608
	ds_load_u8 v64, v2 offset:4224
	ds_load_u8 v65, v2 offset:4480
	ds_load_u8 v66, v2 offset:4352
	ds_load_u8 v67, v2 offset:4096
	ds_load_u8 v68, v2 offset:7808
	ds_load_u8 v69, v2 offset:8064
	ds_load_u8 v70, v2 offset:7936
	ds_load_u8 v71, v2 offset:7680
	ds_load_u8 v72, v2 offset:7296
	ds_load_u8 v73, v2 offset:7552
	ds_load_u8 v74, v2 offset:7424
	ds_load_u8 v75, v2 offset:7168
	ds_load_u8 v76, v2 offset:6784
	ds_load_u8 v77, v2 offset:7040
	ds_load_u8 v78, v2 offset:6912
	ds_load_u8 v79, v2 offset:6656
	ds_load_u8 v80, v2 offset:6272
	ds_load_u8 v81, v2 offset:6528
	ds_load_u8 v82, v2 offset:6400
	ds_load_u8 v2, v2 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v33, v59, v56, 0xc0c0004
	v_perm_b32 v42, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v56, v63, v60, 0xc0c0004
	v_perm_b32 v57, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v67, v64, 0xc0c0004
	v_perm_b32 v59, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[52:55], v[48:51], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v32, 16, v3
	v_lshl_or_b32 v50, v42, 16, v33
	v_lshl_or_b32 v49, v57, 16, v56
	v_lshl_or_b32 v48, v59, 16, v58
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v71, v68, 0xc0c0004
	v_perm_b32 v32, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v75, v72, 0xc0c0004
	v_perm_b32 v42, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v79, v76, 0xc0c0004
	v_perm_b32 v53, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v80, 0xc0c0004
	v_perm_b32 v54, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[48:51], v[44:47], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v32, 16, v3
	v_lshl_or_b32 v46, v42, 16, v33
	v_lshl_or_b32 v45, v53, 16, v52
	v_lshl_or_b32 v44, v54, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[44:47], v[5:8], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v36
	v_cvt_f32_i32_e32 v6, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v38
	v_cvt_f32_i32_e32 v8, v39
	v_cvt_f32_i32_e32 v32, v40
	v_cvt_f32_i32_e32 v33, v41
	v_cvt_f32_i32_e32 v5, v34
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s7, s6
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	s_ashr_i32 s7, s6, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s7, s29
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s31
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v34, v27, s7, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v26, s8, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v36, v25, s8, 1
	v_add_lshl_u32 v37, v24, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v38, v22, s8, 1
	v_add_lshl_u32 v39, v20, s8, 1
	v_add_lshl_u32 v40, v23, s8, 1
	v_add_lshl_u32 v41, v21, s8, 1
	v_add_lshl_u32 v42, v19, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_mov_b32 v45, 0
	s_clause 0x7
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s34, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v4 offset:1664
	ds_load_u8 v44, v4 offset:1920
	ds_load_u8 v45, v4 offset:1792
	ds_load_u8 v46, v4 offset:1536
	ds_load_u8 v47, v4 offset:1152
	ds_load_u8 v48, v4 offset:1408
	ds_load_u8 v49, v4 offset:1280
	ds_load_u8 v50, v4 offset:1024
	ds_load_u8 v63, v4 offset:640
	ds_load_u8 v64, v4 offset:896
	ds_load_u8 v65, v4 offset:768
	ds_load_u8 v66, v4 offset:512
	ds_load_u8 v67, v4 offset:128
	ds_load_u8 v68, v4 offset:256
	ds_load_u8 v69, v4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v46, v46, v43, 0xc0c0004
	v_mov_b32_e32 v43, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v31, s33, v31
	v_add_nc_u32_e32 v51, s33, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v45, v50, v47, 0xc0c0004
	v_perm_b32 v47, v49, v48, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v55, s33, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v66, v63, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v59, s33, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v66, v44, 16, v46
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v46, v43
	v_lshl_or_b32 v64, v49, 16, v48
	v_mov_b32_e32 v48, v43
	ds_load_u8 v70, v4 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[28:31], v31
	ds_load_b128 v[51:54], v51
	ds_load_b128 v[55:58], v55
	ds_load_b128 v[59:62], v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v69, v67, 0xc0c0004
	ds_load_u8 v67, v4 offset:3712
	ds_load_u8 v69, v4 offset:3968
	ds_load_u8 v71, v4 offset:3840
	ds_load_u8 v72, v4 offset:3584
	ds_load_u8 v73, v4 offset:3200
	ds_load_u8 v74, v4 offset:3456
	ds_load_u8 v75, v4 offset:3328
	ds_load_u8 v76, v4 offset:3072
	ds_load_u8 v77, v4 offset:2688
	ds_load_u8 v78, v4 offset:2944
	ds_load_u8 v79, v4 offset:2816
	ds_load_u8 v80, v4 offset:2560
	ds_load_u8 v81, v4 offset:2176
	ds_load_u8 v82, v4 offset:2432
	ds_load_u8 v83, v4 offset:2304
	ds_load_u8 v84, v4 offset:2048
	v_lshl_or_b32 v65, v47, 16, v45
	v_mov_b32_e32 v45, v43
	v_mov_b32_e32 v47, v43
	v_mov_b32_e32 v49, v43
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v72, v67, 0xc0c0004
	v_perm_b32 v63, v68, v70, 0xc0c0004
	v_perm_b32 v68, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v69, v76, v73, 0xc0c0004
	v_perm_b32 v70, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v80, v77, 0xc0c0004
	v_lshl_or_b32 v63, v63, 16, v50
	v_mov_b32_e32 v50, v43
	v_perm_b32 v72, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v81, 0xc0c0004
	v_perm_b32 v74, v83, v82, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[59:62], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v68, 16, v67
	v_lshl_or_b32 v61, v70, 16, v69
	v_lshl_or_b32 v60, v72, 16, v71
	v_lshl_or_b32 v59, v74, 16, v73
	ds_load_u8 v63, v4 offset:5760
	ds_load_u8 v64, v4 offset:6016
	ds_load_u8 v65, v4 offset:5888
	ds_load_u8 v66, v4 offset:5632
	ds_load_u8 v67, v4 offset:5248
	ds_load_u8 v68, v4 offset:5504
	ds_load_u8 v69, v4 offset:5376
	ds_load_u8 v70, v4 offset:5120
	ds_load_u8 v71, v4 offset:4736
	ds_load_u8 v72, v4 offset:4992
	ds_load_u8 v73, v4 offset:4864
	ds_load_u8 v74, v4 offset:4608
	ds_load_u8 v75, v4 offset:4224
	ds_load_u8 v76, v4 offset:4480
	ds_load_u8 v77, v4 offset:4352
	ds_load_u8 v78, v4 offset:4096
	ds_load_u8 v79, v4 offset:7808
	ds_load_u8 v80, v4 offset:8064
	ds_load_u8 v81, v4 offset:7936
	ds_load_u8 v82, v4 offset:7680
	ds_load_u8 v83, v4 offset:7296
	ds_load_u8 v84, v4 offset:7552
	ds_load_u8 v85, v4 offset:7424
	ds_load_u8 v86, v4 offset:7168
	ds_load_u8 v87, v4 offset:6784
	ds_load_u8 v88, v4 offset:7040
	ds_load_u8 v89, v4 offset:6912
	ds_load_u8 v90, v4 offset:6656
	ds_load_u8 v91, v4 offset:6272
	ds_load_u8 v92, v4 offset:6528
	ds_load_u8 v93, v4 offset:6400
	ds_load_u8 v4, v4 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v63, v66, v63, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v65, v70, v67, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v67, v74, v71, 0xc0c0004
	v_perm_b32 v68, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v78, v75, 0xc0c0004
	v_perm_b32 v70, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[55:58], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v64, 16, v63
	v_lshl_or_b32 v57, v66, 16, v65
	v_lshl_or_b32 v56, v68, 16, v67
	v_lshl_or_b32 v55, v70, 16, v69
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v82, v79, 0xc0c0004
	v_perm_b32 v60, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v86, v83, 0xc0c0004
	v_perm_b32 v62, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v90, v87, 0xc0c0004
	v_perm_b32 v64, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v4, v91, 0xc0c0004
	v_perm_b32 v65, v93, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[51:54], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v60, 16, v59
	v_lshl_or_b32 v53, v62, 16, v61
	v_lshl_or_b32 v52, v64, 16, v63
	v_lshl_or_b32 v51, v65, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[28:31], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s20, 31
	v_mov_b16_e32 v28.l, 0
	s_lshr_b32 s6, s6, 25
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v28.h, v34.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s6, s20, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v30.h, v41.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v30.l, v28.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s31
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v27, v27, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s9, s7, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v26, s9, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v25, v25, s9, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v24, s9, 1
	v_add_lshl_u32 v22, v22, s9, 1
	v_add_lshl_u32 v20, v20, s9, 1
	v_add_lshl_u32 v23, v23, s9, 1
	v_add_lshl_u32 v21, v21, s9, 1
	v_add_lshl_u32 v19, v19, s9, 1
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_mul_f32 v30, v28, v30
	s_clause 0x7
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	v_mov_b16_e32 v31.h, v40.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v40, 7, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v36.h, v37.l
	v_mov_b16_e32 v37.h, v36.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v41, v0, 3, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v36.l, v28.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v40, s29, v40
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v29.h, v42.l
	v_mov_b16_e32 v34.h, v39.l
	v_mov_b16_e32 v35.h, v38.l
	v_mov_b16_e32 v38.h, v35.l
	v_mov_b16_e32 v29.l, v28.l
	v_mov_b16_e32 v31.l, v28.l
	v_mov_b16_e32 v34.l, v28.l
	v_mov_b16_e32 v35.l, v28.l
	v_mov_b16_e32 v37.l, v28.l
	v_mov_b16_e32 v38.l, v28.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v36, v28, v36 :: v_dual_and_b32 v41, 0x1040, v41
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v1, v9, 2, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v34, v28, v34 :: v_dual_and_b32 v39, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s30, s29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v28, v29
	v_mul_f32_e32 v31, v28, v31
	v_mul_f32_e32 v35, v28, v35
	v_mul_f32_e32 v37, v28, v37
	v_mul_f32_e32 v28, v28, v38
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s28
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v38, v1, v41
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s4, v39, v40
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v36, v3, v14
	v_fma_f32 v5, v28, v5, v11
	v_fma_f32 v7, v34, v7, v16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v9, v9, 9, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v30, v32, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v3, s3
	v_cndmask_b32_e64 v5, v11, v5, s3
	v_cndmask_b32_e64 v7, v16, v7, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v16, v9, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v30, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v28, v9, 16, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v30, v9, 24, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v33, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v31, v8, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v37, v2, v13
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v35, v6, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v26, v27, v26 :: v_dual_add_nc_u32 v11, 0, v9
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v22, v27, v22 :: v_dual_lshlrev_b32 v23, 16, v23
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v27, v20 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v31, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v27, v24
	v_mul_f32_e32 v25, v27, v25
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v15, v6, s3
	v_cndmask_b32_e64 v12, v12, v29, s3
	v_cndmask_b32_e64 v8, v17, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v27, v23
	v_mul_f32_e32 v21, v27, v21
	v_mul_f32_e32 v19, v27, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v26, v4, v5
	v_fma_f32 v25, v25, v44, v13
	v_fma_f32 v24, v24, v45, v14
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v2, vcc_lo, s0, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v46, v6
	v_fma_f32 v20, v20, v47, v7
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v48, v8
	v_fma_f32 v21, v21, v49, v18
	v_fma_f32 v19, v19, v50, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v4, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v15, v9, 4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v13, v25, s2
	v_cndmask_b32_e64 v13, v14, v24, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v17, v9, 12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v22, s2
	v_cndmask_b32_e64 v7, v7, v20, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v29, v9, 20, 0
	v_xad_u32 v9, v9, 28, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v23, s2
	v_cndmask_b32_e64 v14, v18, v21, s2
	v_cndmask_b32_e64 v12, v12, v19, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b32 v11, v4
	ds_store_b32 v15, v5
	ds_store_b32 v16, v13
	ds_store_b32 v17, v6
	ds_store_b32 v28, v7
	ds_store_b32 v29, v8
	ds_store_b32 v30, v14
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v6, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 28, v4
	v_and_b32_e32 v6, 0x204, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v4, 0x1c0, v10, v4
	v_xor_b32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, v0, 32, v4
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
	s_or_b32 s8, vcc_lo, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_15:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_17:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_19:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_21:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_23:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_25:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 14, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
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
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 141
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8064
; TotalNumSgprs: 42
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
