	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v10, 7, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v31, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 12, v9
	v_and_b32_e32 v28, 15, v0
	v_or_b32_e32 v30, 0x3f0, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, 0, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, 0, v31
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s28, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v7, s28, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
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
	s_xor_b32 s8, s2, s13
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s21, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s19, s21
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s16, s19
	s_sub_i32 s20, 0, s19
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v1, 4, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s16, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[5:6], null, s29, v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s20, s20, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v6, s29, 5, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s13, s18, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s21
	s_mul_i32 s20, s13, s19
	s_ashr_i32 s26, s18, 31
	s_sub_i32 s14, s14, s20
	s_add_i32 s20, s13, 1
	s_sub_i32 s22, s14, s19
	s_cmp_ge_u32 s14, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s20, s13
	s_cselect_b32 s14, s22, s14
	s_add_i32 s20, s13, 1
	s_cmp_ge_u32 s14, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s20, s13
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s27, s13, s26
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s12, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s27, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s13, s21
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s12, 0xff
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s21, 31
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s31, s2, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s13, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s21, s3
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s29, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, v7, v2, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s13, s30, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s12, s28, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s36, s29, 7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v8, s12, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s13, v5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s35, s28, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s13, v6
	s_add_i32 s13, s13, s36
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s12, s35, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s13, v5
	v_add_nc_u32_e32 v6, s13, v6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v27, v8, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v11, s[16:19], 0 offen
	buffer_load_b128 v[19:22], v12, s[16:19], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v36, v7, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v5, s[16:19], 0 offen
	buffer_load_b128 v[32:35], v6, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v0
	v_lshrrev_b32_e32 v6, 4, v0
	s_mov_b32 s15, 0
	s_mov_b64 s[12:13], s[10:11]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0x17f
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v29, 0x70, v5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v37, v27 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v38, v[15:18]
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[19:22] offset:4096
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v6, 1, v29
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v37, v36 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[23:26] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[32:35] offset:12288
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 2, v5
	v_or_b32_e32 v12, 4, v5
	v_or_b32_e32 v13, 6, v5
	v_or_b32_e32 v14, 8, v5
	v_or_b32_e32 v6, 10, v5
	v_or_b32_e32 v7, 12, v5
	v_or_b32_e32 v8, 14, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v32, 0x3f0, v0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s18, s14, 0x80
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr18
                                        ; implicit-def: $vgpr32
.LBB0_3:                                ; %Flow65
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v15, s31, v28
	s_ashr_i32 s33, s21, 8
	v_or_b32_e32 v26, s30, v5
	v_or_b32_e32 v25, s30, v11
	v_or_b32_e32 v24, s30, v12
	v_mul_lo_u32 v27, v15, s33
	v_or_b32_e32 v22, s30, v13
	v_or_b32_e32 v20, s30, v14
	v_or_b32_e32 v23, s30, v6
	v_or_b32_e32 v21, s30, v7
	v_or_b32_e32 v19, s30, v8
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v4, s14, v4
	v_add3_u32 v3, s14, v3, 0x100
	s_lshl_b32 s10, s27, 7
	s_lshl_b32 s18, s26, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v5, 0x120, v4
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v4, 0x100, v4
	v_mul_lo_u32 v3, s28, v3
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s20, 7
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v5, s29, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v4, s29, v4
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	v_add3_u32 v32, v3, s31, v2
	s_and_b32 s25, s13, 0xffff
	v_add3_u32 v5, v5, s10, v1
	v_add3_u32 v1, v4, s10, v1
	s_mov_b32 s24, s12
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s11, s11, -2
	v_subrev_nc_u32_e32 v33, s18, v5
	v_subrev_nc_u32_e32 v34, s18, v1
	v_mov_b32_e32 v1, 0
	s_add_i32 s28, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v17, 0
	s_mov_b32 s37, 1
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s38, s14
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v35, v32, s[4:7], 0 offen
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s14, s14, 24
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s38, s14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s39, s14, s29
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v36, v27, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v37, v26, s39, 1
	v_add_lshl_u32 v38, v25, s39, 1
	v_add_lshl_u32 v39, v24, s39, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v22, s39, 1
	v_add_lshl_u32 v44, v19, s39, 1
	v_add_lshl_u32 v41, v20, s39, 1
	v_add_lshl_u32 v42, v23, s39, 1
	v_add_lshl_u32 v43, v21, s39, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v84, v36, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v85, v37, s[24:27], 0 offen
	buffer_load_u16 v86, v38, s[24:27], 0 offen
	buffer_load_u16 v87, v39, s[24:27], 0 offen
	buffer_load_u16 v88, v40, s[24:27], 0 offen
	buffer_load_u16 v89, v41, s[24:27], 0 offen
	buffer_load_u16 v90, v42, s[24:27], 0 offen
	buffer_load_u16 v91, v43, s[24:27], 0 offen
	buffer_load_u16 v92, v44, s[24:27], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[44:47], v34, s[16:19], 0 offen
	buffer_load_b128 v[48:51], v33, s[16:19], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s10, s28
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v36, s14, v28
	s_mov_b32 s28, s15
	v_add_nc_u32_e32 v37, s14, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v38, s28, v29, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v36 offset:208
	ds_load_u8 v40, v36 offset:240
	ds_load_u8 v41, v36 offset:224
	ds_load_u8 v42, v36 offset:192
	ds_load_u8 v43, v36 offset:144
	ds_load_u8 v52, v36 offset:176
	ds_load_u8 v53, v36 offset:160
	ds_load_u8 v54, v36 offset:128
	ds_load_u8 v55, v36 offset:80
	ds_load_u8 v56, v36 offset:112
	ds_load_u8 v57, v36 offset:96
	ds_load_u8 v58, v36 offset:64
	ds_load_u8 v59, v36
	ds_load_u8 v60, v36 offset:16
	ds_load_u8 v61, v36 offset:32
	ds_load_u8 v62, v36 offset:48
	ds_load_u8 v63, v38 offset:1664
	ds_load_u8 v64, v38 offset:1920
	ds_load_u8 v65, v38 offset:1792
	ds_load_u8 v66, v38 offset:1536
	ds_load_u8 v67, v38 offset:1152
	ds_load_u8 v68, v38 offset:1408
	ds_load_u8 v69, v38 offset:1280
	ds_load_u8 v70, v38 offset:1024
	ds_load_u8 v71, v38 offset:640
	ds_load_u8 v72, v38 offset:896
	ds_load_u8 v73, v38 offset:768
	ds_load_u8 v74, v38 offset:512
	ds_load_u8 v75, v38 offset:128
	ds_load_u8 v76, v38 offset:384
	ds_load_u8 v77, v38 offset:256
	ds_load_u8 v78, v38
	ds_load_u8 v79, v36 offset:464
	ds_load_u8 v80, v36 offset:496
	ds_load_u8 v81, v36 offset:480
	ds_load_u8 v82, v36 offset:448
	ds_load_u8 v83, v36 offset:400
	ds_load_u8 v93, v36 offset:432
	ds_load_u8 v94, v36 offset:416
	ds_load_u8 v95, v36 offset:384
	ds_load_u8 v96, v36 offset:336
	ds_load_u8 v97, v36 offset:368
	ds_load_u8 v98, v36 offset:352
	ds_load_u8 v99, v36 offset:320
	ds_load_u8 v100, v36 offset:272
	ds_load_u8 v101, v36 offset:304
	ds_load_u8 v102, v36 offset:288
	ds_load_u8 v103, v36 offset:256
	ds_load_u8 v104, v38 offset:3712
	ds_load_u8 v105, v38 offset:3968
	ds_load_u8 v106, v38 offset:3840
	ds_load_u8 v107, v38 offset:3584
	ds_load_u8 v108, v38 offset:3200
	ds_load_u8 v109, v38 offset:3456
	ds_load_u8 v110, v38 offset:3328
	ds_load_u8 v111, v38 offset:3072
	ds_load_u8 v112, v38 offset:2688
	ds_load_u8 v113, v38 offset:2944
	ds_load_u8 v114, v38 offset:2816
	ds_load_u8 v115, v38 offset:2560
	ds_load_u8 v116, v38 offset:2176
	ds_load_u8 v117, v38 offset:2432
	ds_load_u8 v118, v38 offset:2304
	ds_load_u8 v119, v38 offset:2048
	ds_load_u8 v120, v36 offset:720
	ds_load_u8 v121, v36 offset:752
	ds_load_u8 v122, v36 offset:736
	ds_load_u8 v123, v36 offset:704
	ds_load_u8 v124, v36 offset:656
	ds_load_u8 v125, v36 offset:688
	ds_load_u8 v126, v36 offset:672
	ds_load_u8 v127, v36 offset:640
	ds_load_u8 v128, v36 offset:592
	ds_load_u8 v129, v36 offset:624
	ds_load_u8 v130, v36 offset:608
	ds_load_u8 v131, v36 offset:576
	ds_load_u8 v132, v36 offset:528
	ds_load_u8 v133, v36 offset:560
	ds_load_u8 v134, v36 offset:544
	ds_load_u8 v135, v36 offset:512
	ds_load_u8 v136, v38 offset:5760
	ds_load_u8 v137, v38 offset:6016
	ds_load_u8 v138, v38 offset:5888
	ds_load_u8 v139, v38 offset:5632
	ds_load_u8 v140, v38 offset:5248
	ds_load_u8 v141, v38 offset:5504
	ds_load_u8 v142, v38 offset:5376
	ds_load_u8 v143, v38 offset:5120
	ds_load_u8 v144, v38 offset:4736
	ds_load_u8 v145, v38 offset:4992
	ds_load_u8 v146, v38 offset:4864
	ds_load_u8 v147, v38 offset:4608
	ds_load_u8 v148, v38 offset:4224
	ds_load_u8 v149, v38 offset:4480
	ds_load_u8 v150, v38 offset:4352
	ds_load_u8 v151, v38 offset:4096
	ds_load_u8 v152, v36 offset:976
	ds_load_u8 v37, v37
	ds_load_u8 v153, v36 offset:992
	ds_load_u8 v154, v36 offset:960
	ds_load_u8 v155, v36 offset:912
	ds_load_u8 v156, v36 offset:944
	ds_load_u8 v157, v36 offset:928
	ds_load_u8 v158, v36 offset:896
	ds_load_u8 v159, v36 offset:848
	ds_load_u8 v160, v36 offset:880
	ds_load_u8 v161, v36 offset:864
	ds_load_u8 v162, v36 offset:832
	ds_load_u8 v163, v36 offset:784
	ds_load_u8 v164, v36 offset:816
	ds_load_u8 v165, v36 offset:800
	ds_load_u8 v36, v36 offset:768
	ds_load_u8 v166, v38 offset:7808
	ds_load_u8 v167, v38 offset:8064
	ds_load_u8 v168, v38 offset:7936
	ds_load_u8 v169, v38 offset:7680
	ds_load_u8 v170, v38 offset:7296
	ds_load_u8 v171, v38 offset:7552
	ds_load_u8 v172, v38 offset:7424
	ds_load_u8 v173, v38 offset:7168
	ds_load_u8 v174, v38 offset:6784
	ds_load_u8 v175, v38 offset:7040
	ds_load_u8 v176, v38 offset:6912
	ds_load_u8 v177, v38 offset:6656
	ds_load_u8 v178, v38 offset:6272
	ds_load_u8 v179, v38 offset:6528
	ds_load_u8 v180, v38 offset:6400
	ds_load_u8 v38, v38 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v39, v42, v39, 0xc0c0004
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v41, v54, v43, 0xc0c0004
	v_perm_b32 v42, v53, v52, 0xc0c0004
	v_perm_b32 v43, v58, v55, 0xc0c0004
	v_perm_b32 v52, v57, v56, 0xc0c0004
	v_perm_b32 v56, v59, v60, 0xc0c0004
	v_perm_b32 v57, v61, v62, 0xc0c0004
	v_perm_b32 v58, v66, v63, 0xc0c0004
	v_perm_b32 v59, v65, v64, 0xc0c0004
	v_perm_b32 v60, v70, v67, 0xc0c0004
	v_perm_b32 v61, v69, v68, 0xc0c0004
	v_perm_b32 v62, v74, v71, 0xc0c0004
	v_perm_b32 v63, v73, v72, 0xc0c0004
	v_perm_b32 v64, v78, v75, 0xc0c0004
	v_perm_b32 v65, v77, v76, 0xc0c0004
	v_perm_b32 v66, v82, v79, 0xc0c0004
	v_perm_b32 v67, v81, v80, 0xc0c0004
	v_perm_b32 v68, v95, v83, 0xc0c0004
	v_perm_b32 v69, v94, v93, 0xc0c0004
	v_perm_b32 v70, v99, v96, 0xc0c0004
	v_perm_b32 v71, v98, v97, 0xc0c0004
	v_perm_b32 v72, v103, v100, 0xc0c0004
	v_perm_b32 v73, v102, v101, 0xc0c0004
	v_perm_b32 v74, v107, v104, 0xc0c0004
	v_perm_b32 v75, v106, v105, 0xc0c0004
	v_perm_b32 v76, v111, v108, 0xc0c0004
	v_perm_b32 v77, v110, v109, 0xc0c0004
	v_perm_b32 v78, v115, v112, 0xc0c0004
	v_perm_b32 v79, v114, v113, 0xc0c0004
	v_perm_b32 v80, v119, v116, 0xc0c0004
	v_perm_b32 v81, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v154, v152, 0xc0c0004
	v_perm_b32 v37, v153, v37, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v36, v36, v163, 0xc0c0004
	v_perm_b32 v112, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v178, 0xc0c0004
	v_perm_b32 v119, v180, v179, 0xc0c0004
	v_lshl_or_b32 v55, v40, 16, v39
	v_lshl_or_b32 v54, v42, 16, v41
	v_lshl_or_b32 v53, v52, 16, v43
	v_lshl_or_b32 v52, v57, 16, v56
	v_lshl_or_b32 v59, v59, 16, v58
	v_lshl_or_b32 v58, v61, 16, v60
	v_lshl_or_b32 v57, v63, 16, v62
	v_lshl_or_b32 v56, v65, 16, v64
	v_perm_b32 v82, v123, v120, 0xc0c0004
	v_perm_b32 v83, v122, v121, 0xc0c0004
	v_perm_b32 v93, v127, v124, 0xc0c0004
	v_perm_b32 v94, v126, v125, 0xc0c0004
	v_perm_b32 v95, v131, v128, 0xc0c0004
	v_perm_b32 v96, v130, v129, 0xc0c0004
	v_perm_b32 v97, v135, v132, 0xc0c0004
	v_perm_b32 v98, v134, v133, 0xc0c0004
	v_perm_b32 v99, v139, v136, 0xc0c0004
	v_perm_b32 v100, v138, v137, 0xc0c0004
	v_perm_b32 v101, v143, v140, 0xc0c0004
	v_perm_b32 v102, v142, v141, 0xc0c0004
	v_perm_b32 v103, v147, v144, 0xc0c0004
	v_perm_b32 v104, v146, v145, 0xc0c0004
	v_perm_b32 v105, v151, v148, 0xc0c0004
	v_perm_b32 v106, v150, v149, 0xc0c0004
	v_lshl_or_b32 v63, v67, 16, v66
	v_lshl_or_b32 v62, v69, 16, v68
	v_lshl_or_b32 v61, v71, 16, v70
	v_lshl_or_b32 v60, v73, 16, v72
	v_lshl_or_b32 v67, v75, 16, v74
	v_lshl_or_b32 v66, v77, 16, v76
	v_lshl_or_b32 v65, v79, 16, v78
	v_lshl_or_b32 v64, v81, 16, v80
	v_lshl_or_b32 v79, v37, 16, v107
	v_lshl_or_b32 v76, v112, 16, v36
	v_lshl_or_b32 v80, v119, 16, v38
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[52:55], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v108, v158, v155, 0xc0c0004
	v_perm_b32 v109, v157, v156, 0xc0c0004
	v_perm_b32 v110, v162, v159, 0xc0c0004
	v_perm_b32 v111, v161, v160, 0xc0c0004
	v_perm_b32 v113, v169, v166, 0xc0c0004
	v_perm_b32 v114, v168, v167, 0xc0c0004
	v_perm_b32 v115, v173, v170, 0xc0c0004
	v_perm_b32 v116, v172, v171, 0xc0c0004
	v_perm_b32 v117, v177, v174, 0xc0c0004
	v_perm_b32 v118, v176, v175, 0xc0c0004
	v_lshl_or_b32 v71, v83, 16, v82
	v_lshl_or_b32 v70, v94, 16, v93
	v_lshl_or_b32 v69, v96, 16, v95
	v_lshl_or_b32 v68, v98, 16, v97
	v_lshl_or_b32 v75, v100, 16, v99
	v_lshl_or_b32 v74, v102, 16, v101
	v_lshl_or_b32 v73, v104, 16, v103
	v_lshl_or_b32 v72, v106, 16, v105
	v_wmma_i32_16x16x16_iu8 v[36:43], v[64:67], v[60:63], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v109, 16, v108
	v_lshl_or_b32 v77, v111, 16, v110
	v_lshl_or_b32 v83, v114, 16, v113
	v_lshl_or_b32 v82, v116, 16, v115
	v_lshl_or_b32 v81, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[36:43], v[72:75], v[68:71], v[36:43] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s37, 1
	s_mov_b32 s15, s34
	s_cmp_lt_i32 s14, 2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[36:43], v[80:83], v[76:79], v[36:43] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s37, s14, 0
	s_add_i32 s11, s11, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s28, s37, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s34, s37, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s39, s28, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s34, s34, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s38, 0x80
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s28, s39, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v52, 16, v84
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v53, 16, v85
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v58, 16, v90
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v59, 16, v91
	v_lshlrev_b32_e32 v54, 16, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v33, s36, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v60, 16, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v52, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v13, v54, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v55, 16, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v32, s35, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v58, v52, v58 :: v_dual_add_nc_u32 v181, s39, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v52, v55 :: v_dual_lshlrev_b32 v56, 16, v88
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v57, 16, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v53, v52, v53 :: v_dual_add_nc_u32 v34, s36, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v58, v41 :: v_dual_fmac_f32 v14, v55, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v52, v57
	v_mul_f32_e32 v56, v52, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v11, v53, v36 :: v_dual_add_nc_u32 v182, s34, v31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v181, v35 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v182, v[44:47]
	s_waitcnt vmcnt(0)
	ds_store_b128 v182, v[48:51] offset:4096
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v57, v40 :: v_dual_mul_f32 v59, v52, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v52, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v15, v56, v39 :: v_dual_fmac_f32 v18, v59, v42
	v_fmac_f32_e32 v12, v52, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v32, v30
	s_add_i32 s18, s38, 0x100
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s28, 0, 0x4400
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v40, v29, v28
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v29, 0
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
	v_add_nc_u32_e32 v1, s10, v28
	v_add_nc_u32_e32 v6, s10, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v1 offset:240
	ds_load_u8 v8, v1 offset:144
	ds_load_u8 v30, v1 offset:176
	ds_load_u8 v31, v1 offset:160
	ds_load_u8 v33, v1 offset:128
	ds_load_u8 v34, v1 offset:112
	ds_load_u8 v35, v1 offset:80
	ds_load_u8 v36, v1 offset:96
	ds_load_u8 v37, v1 offset:64
	ds_load_u8 v38, v1
	ds_load_u8 v39, v1 offset:16
	ds_load_u8 v41, v1 offset:32
	ds_load_u8 v42, v1 offset:48
	ds_load_u8 v2, v1 offset:208
	ds_load_u8 v3, v1 offset:224
	ds_load_u8 v5, v1 offset:192
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v3, v7, 0xc0c0004
	v_perm_b32 v7, v31, v30, 0xc0c0004
	v_perm_b32 v31, v36, v34, 0xc0c0004
	v_perm_b32 v34, v41, v42, 0xc0c0004
	v_mov_b32_e32 v41, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v29, s15, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	v_perm_b32 v5, v33, v8, 0xc0c0004
	v_perm_b32 v30, v37, v35, 0xc0c0004
	v_mov_b32_e32 v42, v41
	ds_load_u8 v43, v29 offset:1664
	ds_load_u8 v44, v29 offset:1920
	ds_load_u8 v45, v29 offset:1792
	ds_load_u8 v46, v29 offset:1536
	ds_load_u8 v47, v29 offset:1152
	ds_load_u8 v48, v29 offset:1408
	ds_load_u8 v49, v29 offset:1280
	ds_load_u8 v50, v29 offset:1024
	ds_load_u8 v51, v29 offset:640
	ds_load_u8 v52, v29 offset:896
	ds_load_u8 v53, v29 offset:768
	ds_load_u8 v54, v29 offset:512
	ds_load_u8 v55, v29 offset:128
	ds_load_u8 v56, v29 offset:384
	ds_load_u8 v57, v29 offset:256
	ds_load_u8 v58, v29
	ds_load_u8 v59, v1 offset:288
	ds_load_u8 v60, v1 offset:256
	v_perm_b32 v33, v38, v39, 0xc0c0004
	ds_load_u8 v37, v6
	v_lshl_or_b32 v7, v7, 16, v5
	v_lshl_or_b32 v6, v31, 16, v30
	v_lshl_or_b32 v8, v3, 16, v2
	v_lshl_or_b32 v5, v34, 16, v33
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v2, v46, v43, 0xc0c0004
	v_perm_b32 v3, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v31, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v30, v50, v47, 0xc0c0004
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v54, v51, 0xc0c0004
	v_lshl_or_b32 v35, v31, 16, v30
	v_lshl_or_b32 v36, v3, 16, v2
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v58, v55, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v2, v1 offset:464
	ds_load_u8 v3, v1 offset:480
	ds_load_u8 v30, v1 offset:448
	ds_load_u8 v55, v1 offset:272
	ds_load_u8 v56, v1 offset:304
	v_mov_b32_e32 v45, v41
	v_lshl_or_b32 v33, v39, 16, v38
	ds_load_u8 v31, v1 offset:496
	ds_load_u8 v38, v1 offset:400
	ds_load_u8 v39, v1 offset:432
	ds_load_u8 v49, v1 offset:416
	ds_load_u8 v50, v1 offset:384
	ds_load_u8 v51, v1 offset:336
	ds_load_u8 v52, v1 offset:352
	ds_load_u8 v53, v1 offset:320
	ds_load_u8 v54, v1 offset:368
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v48, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[5:8], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v3, v31, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v50, v38, 0xc0c0004
	v_perm_b32 v6, v49, v39, 0xc0c0004
	v_perm_b32 v2, v30, v2, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v31, v53, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v52, v54, 0xc0c0004
	ds_load_u8 v34, v29 offset:3712
	ds_load_u8 v35, v29 offset:3968
	ds_load_u8 v36, v29 offset:3840
	ds_load_u8 v38, v29 offset:3584
	ds_load_u8 v39, v29 offset:3200
	ds_load_u8 v49, v29 offset:3456
	ds_load_u8 v50, v29 offset:3328
	ds_load_u8 v51, v29 offset:3072
	ds_load_u8 v52, v29 offset:2688
	ds_load_u8 v53, v29 offset:2944
	ds_load_u8 v54, v29 offset:2816
	ds_load_u8 v65, v29 offset:2560
	ds_load_u8 v66, v29 offset:2176
	ds_load_u8 v67, v29 offset:2432
	ds_load_u8 v68, v29 offset:2304
	ds_load_u8 v69, v29 offset:2048
	v_lshl_or_b32 v7, v6, 16, v5
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v60, v55, 0xc0c0004
	v_lshl_or_b32 v6, v33, 16, v31
	ds_load_u8 v3, v1 offset:720
	ds_load_u8 v31, v1 offset:736
	ds_load_u8 v55, v1 offset:704
	ds_load_u8 v60, v1 offset:752
	ds_load_u8 v70, v1 offset:656
	ds_load_u8 v71, v1 offset:688
	ds_load_u8 v72, v1 offset:672
	ds_load_u8 v73, v1 offset:640
	v_perm_b32 v5, v59, v56, 0xc0c0004
	ds_load_u8 v30, v1 offset:592
	ds_load_u8 v57, v1 offset:608
	ds_load_u8 v58, v1 offset:576
	ds_load_u8 v61, v1 offset:528
	ds_load_u8 v62, v1 offset:560
	ds_load_u8 v63, v1 offset:544
	ds_load_u8 v64, v1 offset:512
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v33, v38, v34, 0xc0c0004
	v_perm_b32 v34, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v38, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v35, v51, v39, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v2
	v_lshl_or_b32 v36, v34, 16, v33
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v39, v65, v52, 0xc0c0004
	v_lshl_or_b32 v35, v38, 16, v35
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v51, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v50, v69, v66, 0xc0c0004
	v_lshl_or_b32 v34, v49, 16, v39
	ds_load_u8 v39, v1 offset:624
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v55, v3, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v31, v31, v60, 0xc0c0004
	v_lshl_or_b32 v33, v51, 16, v50
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v73, v70, 0xc0c0004
	v_perm_b32 v50, v72, v71, 0xc0c0004
	ds_load_u8 v51, v29 offset:5760
	ds_load_u8 v52, v29 offset:6016
	ds_load_u8 v53, v29 offset:5888
	ds_load_u8 v54, v29 offset:5632
	ds_load_u8 v55, v29 offset:5248
	ds_load_u8 v56, v29 offset:5504
	ds_load_u8 v59, v29 offset:5376
	ds_load_u8 v60, v29 offset:5120
	ds_load_u8 v65, v29 offset:4736
	ds_load_u8 v66, v29 offset:4992
	ds_load_u8 v67, v29 offset:4864
	ds_load_u8 v68, v29 offset:4608
	ds_load_u8 v69, v29 offset:4224
	ds_load_u8 v70, v29 offset:4480
	ds_load_u8 v71, v29 offset:4352
	ds_load_u8 v72, v29 offset:4096
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v30, v58, v30, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v31, 16, v2
	v_lshl_or_b32 v7, v50, 16, v49
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v64, v61, 0xc0c0004
	v_perm_b32 v5, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v31, v53, v52, 0xc0c0004
	ds_load_u8 v3, v1 offset:800
	ds_load_u8 v38, v1 offset:768
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v34, v59, v56, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v60, v55, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v2
	v_perm_b32 v39, v57, v39, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v49, v67, v66, 0xc0c0004
	ds_load_u8 v57, v1 offset:784
	ds_load_u8 v58, v1 offset:848
	ds_load_u8 v73, v1 offset:864
	ds_load_u8 v74, v1 offset:832
	ds_load_u8 v75, v1 offset:816
	v_lshl_or_b32 v35, v34, 16, v33
	v_lshl_or_b32 v6, v39, 16, v30
	v_perm_b32 v30, v54, v51, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v39, v68, v65, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v50, v72, v69, 0xc0c0004
	v_perm_b32 v51, v71, v70, 0xc0c0004
	v_lshl_or_b32 v36, v31, 16, v30
	v_lshl_or_b32 v34, v49, 16, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v33, v51, 16, v50
	ds_load_u8 v2, v1 offset:976
	ds_load_u8 v30, v1 offset:992
	ds_load_u8 v31, v1 offset:960
	ds_load_u8 v39, v1 offset:912
	ds_load_u8 v49, v1 offset:944
	ds_load_u8 v50, v1 offset:928
	ds_load_u8 v51, v1 offset:896
	ds_load_u8 v1, v1 offset:880
	ds_load_u8 v52, v29 offset:7808
	ds_load_u8 v53, v29 offset:8064
	ds_load_u8 v54, v29 offset:7936
	ds_load_u8 v55, v29 offset:7680
	ds_load_u8 v56, v29 offset:7296
	ds_load_u8 v59, v29 offset:7552
	ds_load_u8 v60, v29 offset:7424
	ds_load_u8 v61, v29 offset:7168
	ds_load_u8 v62, v29 offset:6784
	ds_load_u8 v63, v29 offset:7040
	ds_load_u8 v64, v29 offset:6912
	ds_load_u8 v65, v29 offset:6656
	ds_load_u8 v66, v29 offset:6272
	ds_load_u8 v67, v29 offset:6528
	ds_load_u8 v68, v29 offset:6400
	ds_load_u8 v29, v29 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v2, v31, v2, 0xc0c0004
	v_perm_b32 v30, v30, v37, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v31, v51, v39, 0xc0c0004
	v_perm_b32 v37, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v73, v1, 0xc0c0004
	v_perm_b32 v39, v74, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v30, 16, v2
	v_lshl_or_b32 v7, v37, 16, v31
	v_perm_b32 v2, v3, v75, 0xc0c0004
	v_lshl_or_b32 v6, v1, 16, v39
	v_perm_b32 v1, v38, v57, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v55, v52, 0xc0c0004
	v_perm_b32 v30, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v61, v56, 0xc0c0004
	v_perm_b32 v33, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v65, v62, 0xc0c0004
	v_perm_b32 v37, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v66, 0xc0c0004
	v_lshl_or_b32 v5, v2, 16, v1
	v_lshl_or_b32 v36, v30, 16, v3
	v_lshl_or_b32 v35, v33, 16, v31
	v_lshl_or_b32 v34, v37, 16, v34
	v_lshl_or_b32 v33, v38, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v43
	v_cvt_f32_i32_e32 v6, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v29, v47
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v5, v41
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s14, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s14, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v27, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v26, s4, 1
	v_add_lshl_u32 v33, v25, s4, 1
	v_add_lshl_u32 v34, v24, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v22, s4, 1
	v_add_lshl_u32 v36, v20, s4, 1
	v_add_lshl_u32 v37, v23, s4, 1
	v_add_lshl_u32 v38, v21, s4, 1
	v_add_lshl_u32 v39, v19, s4, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_mov_b32 v42, 0
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_mov_b32 v44, 0
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mov_b32 v46, 0
	s_clause 0x7
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	buffer_load_u16 v33, v33, s[12:15], 0 offen
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	v_mov_b32_e32 v41, 0
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s28, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s34, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v4 offset:208
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
	v_perm_b32 v28, v42, v28, 0xc0c0004
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
	v_lshl_or_b32 v51, v40, 16, v28
	v_lshl_or_b32 v50, v43, 16, v41
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v28, v58, v42, 0xc0c0004
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
	v_lshl_or_b32 v55, v41, 16, v28
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
	ds_load_u8 v28, v4 offset:464
	ds_load_u8 v57, v4 offset:480
	ds_load_u8 v58, v4 offset:448
	v_perm_b32 v47, v69, v68, 0xc0c0004
	ds_load_u8 v68, v4 offset:272
	ds_load_u8 v69, v4 offset:304
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v32, s28, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v54, v43, 16, v42
	v_lshl_or_b32 v53, v45, 16, v44
	v_lshl_or_b32 v52, v47, 16, v46
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v47, v40
	ds_load_u8 v32, v32
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v63, v60, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v57, v59, 0xc0c0004
	v_perm_b32 v50, v62, v61, 0xc0c0004
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
	v_perm_b32 v28, v58, v28, 0xc0c0004
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v58, v4 offset:592
	ds_load_u8 v70, v4 offset:608
	ds_load_u8 v73, v4 offset:576
	ds_load_u8 v74, v4 offset:528
	ds_load_u8 v75, v4 offset:560
	ds_load_u8 v76, v4 offset:544
	ds_load_u8 v77, v4 offset:512
	v_lshl_or_b32 v49, v53, 16, v52
	v_lshl_or_b32 v51, v48, 16, v28
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v28, v72, v68, 0xc0c0004
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
	v_lshl_or_b32 v48, v48, 16, v28
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v61, v81, v78, 0xc0c0004
	v_lshl_or_b32 v53, v60, 16, v59
	v_lshl_or_b32 v54, v57, 16, v54
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v28, v82, v68, 0xc0c0004
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
	v_lshl_or_b32 v51, v60, 16, v28
	v_lshl_or_b32 v50, v63, 16, v62
	v_perm_b32 v28, v77, v74, 0xc0c0004
	v_perm_b32 v48, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v53, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v52, v67, v64, 0xc0c0004
	ds_load_u8 v57, v4 offset:800
	ds_load_u8 v59, v4 offset:768
	v_lshl_or_b32 v48, v48, 16, v28
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
	ds_load_u8 v28, v4 offset:976
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
	v_perm_b32 v28, v60, v28, 0xc0c0004
	v_perm_b32 v32, v58, v32, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v58, v64, v61, 0xc0c0004
	v_perm_b32 v60, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v4, v86, v4, 0xc0c0004
	v_perm_b32 v61, v87, v73, 0xc0c0004
	v_lshl_or_b32 v51, v32, 16, v28
	v_lshl_or_b32 v50, v60, 16, v58
	v_perm_b32 v28, v57, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v32, v68, v65, 0xc0c0004
	v_lshl_or_b32 v49, v4, 16, v61
	v_perm_b32 v4, v59, v70, 0xc0c0004
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
	v_lshl_or_b32 v48, v28, 16, v4
	v_lshl_or_b32 v55, v52, 16, v32
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
	s_ashr_i32 s5, s18, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s5, s5, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s18, s5
	v_mov_b16_e32 v28.l, 0
	s_ashr_i32 s5, s5, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v1.h, v39.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v27, v27, s5, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s5, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v26, s5, 1
	v_add_lshl_u32 v25, v25, s5, 1
	v_add_lshl_u32 v24, v24, s5, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v22, v22, s5, 1
	v_add_lshl_u32 v20, v20, s5, 1
	v_add_lshl_u32 v23, v23, s5, 1
	v_add_lshl_u32 v21, v21, s5, 1
	v_add_lshl_u32 v19, v19, s5, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_lshlrev_b32 v40, 1, v0
	s_clause 0x7
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v39, 7, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v28.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.h, v38.l
	v_mov_b16_e32 v32.h, v37.l
	v_mov_b16_e32 v33.h, v36.l
	v_mov_b16_e32 v34.h, v35.l
	v_mov_b16_e32 v35.h, v34.l
	v_mov_b16_e32 v36.h, v33.l
	v_mov_b16_e32 v37.h, v31.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v48, v0, 3, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v1.l, v28.l
	v_mov_b16_e32 v31.l, v28.l
	v_mov_b16_e32 v32.l, v28.l
	v_mov_b16_e32 v33.l, v28.l
	v_mov_b16_e32 v34.l, v28.l
	v_mov_b16_e32 v35.l, v28.l
	v_mov_b16_e32 v36.l, v28.l
	v_mov_b16_e32 v37.l, v28.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v50, v28, v1 :: v_dual_and_b32 v49, 0x1e0, v40
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v39, s29, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v31, v28, v31 :: v_dual_and_b32 v38, 0x7f, v0
	v_dual_mul_f32 v33, v28, v33 :: v_dual_and_b32 v48, 0x1040, v48
	v_mul_f32_e32 v32, v28, v32
	v_mul_f32_e32 v34, v28, v34
	v_mul_f32_e32 v35, v28, v35
	v_mul_f32_e32 v36, v28, v36
	v_mul_f32_e32 v28, v28, v37
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v37, v10, 2, v49
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s5, s31, s29
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v31, v29, v18
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s5, s5, s30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v33, v7, v16
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s5, v38, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v50, v30, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v29, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v16, v7, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v30, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v36, v2, v13
	v_fma_f32 v3, v35, v3, v14
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v28, v5, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v28, v37, v48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v34, v6, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v10, v10, 9, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v26, v27, v26 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v11, v5, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v11, 0, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v32, v8, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v27, v25
	v_dual_mul_f32 v24, v27, v24 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v31, s3
	v_cndmask_b32_e64 v14, v14, v3, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v15, v6, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v27, v23
	v_mul_f32_e32 v22, v27, v22
	v_mul_f32_e32 v21, v27, v21
	v_mul_f32_e32 v20, v27, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v17, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v27, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v26, v4, v5
	v_fma_f32 v25, v25, v41, v13
	v_fma_f32 v24, v24, v42, v14
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v2, vcc_lo, s0, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v43, v6
	v_fma_f32 v20, v20, v44, v7
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v45, v8
	v_fma_f32 v21, v21, v46, v18
	v_fma_f32 v19, v19, v47, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v4, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v15, v10, 4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v13, v25, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v16, v10, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v14, v24, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v17, v10, 12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v22, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v28, v10, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v20, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v29, v10, 20, 0
	v_xad_u32 v30, v10, 24, 0
	v_xad_u32 v10, v10, 28, 0
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
	ds_store_b32 v10, v12
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
	v_and_or_b32 v6, 0x1c0, v9, v6
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
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 183
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10984
; TotalNumSgprs: 42
; NumVgprs: 183
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
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     183
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
