	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s24, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v32, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v31, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, 0, v32
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 2, v31
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
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s24, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s14, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s18, s14
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s16, s18
	s_xor_b32 s13, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s26, s13, 31
	v_rcp_iflag_f32_e32 v1, s16
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s16, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v32
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s19, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_sub_i32 s7, 0, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[5:6], null, s29, v4, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s19
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v6, s29, 5, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s6, s12, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s6, s18
	s_add_i32 s13, s6, 1
	s_sub_i32 s12, s12, s19
	s_sub_i32 s19, s12, s18
	s_cmp_ge_u32 s12, s18
	s_cselect_b32 s13, s13, s6
	s_cselect_b32 s6, s19, s12
	s_add_i32 s12, s13, 1
	s_cmp_ge_u32 s6, s18
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s23, s24, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s27, s12, s26
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s21, s24, 63
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s27, s26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s13, s12, s14
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s13
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s12, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s13, s29, s14
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s23, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s22, s24
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v7, v3, s3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s23, s23, s2
.Ltmp21:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s21, 63
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s28, s13
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s14, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s34, s29, 6
	v_add_nc_u32_e32 v9, s12, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s20, s14, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s12, v6
	s_add_i32 s12, s12, s34
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s20, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s12, v5
	v_add_nc_u32_e32 v6, s12, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v35, v8, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v9, s[16:19], 0 offen
	buffer_load_b128 v[19:22], v10, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v10, v7, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v5, s[16:19], 0 offen
	buffer_load_b128 v[27:30], v6, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v7, 2, v0
	s_mov_b32 s15, 0
	s_mov_b64 s[12:13], s[10:11]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v33, 0x70, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v8, 48, v5
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v6, v2, 1, v33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v34, v7, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 2, v6
	v_or_b32_e32 v12, 4, v6
	v_or_b32_e32 v13, 6, v6
	v_or_b32_e32 v14, 8, v6
	v_or_b32_e32 v7, 10, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v37, 0, v34
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 12, v6
	v_or_b32_e32 v9, 14, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v37, v35 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v36, v[15:18]
	s_waitcnt vmcnt(3)
	ds_store_b128 v36, v[19:22] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v37, v10 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v36, v[23:26] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v36, v[27:30] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v10, 48, v5
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v31, 6, v10
	v_xor_b32_e32 v28, 16, v27
	v_xor_b32_e32 v29, 32, v27
	v_xor_b32_e32 v30, 48, v27
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
.LBB0_3:                                ; %Flow25
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v10, s22, v31
	s_ashr_i32 s30, s23, 8
	v_or_b32_e32 v25, s28, v6
	v_or_b32_e32 v24, s28, v11
	v_or_b32_e32 v23, s28, v12
	v_mul_lo_u32 v26, v10, s30
	v_or_b32_e32 v21, s28, v13
	v_or_b32_e32 v19, s28, v14
	v_or_b32_e32 v22, s28, v7
	v_or_b32_e32 v20, s28, v8
	v_or_b32_e32 v18, s28, v9
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v5, 48, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v4, s14, v4
	s_lshl_b32 s11, s27, 7
	s_lshl_b32 s15, s26, 7
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_lshl_or_b32 v27, v31, 6, v5
	v_add_nc_u32_e32 v5, 0xa0, v4
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v4, 0x80, v4
	v_mov_b32_e32 v11, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v28, 16, v27
	v_mul_lo_u32 v5, s29, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s29, v4
	v_xor_b32_e32 v29, 32, v27
	v_xor_b32_e32 v30, 48, v27
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s21, 6
	s_mov_b32 s23, 0x31027000
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v5, v5, s11, v1
	v_add3_u32 v1, v4, s11, v1
	s_and_b32 s25, s13, 0xffff
	s_add_i32 s11, s10, -2
	s_add_i32 s10, 0, 0x4000
	v_subrev_nc_u32_e32 v35, s15, v5
	v_subrev_nc_u32_e32 v36, s15, v1
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v2, s22, v2
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v7, v1
	v_mul_lo_u32 v2, s24, v2
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s24, s12
	v_add3_u32 v37, v2, v3, 0x80
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	s_mov_b32 s15, 0
	s_add_i32 s31, 0, 0x4400
	s_add_i32 s33, 0, 0x2000
	s_mov_b32 s35, 1
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s36, s14
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v38, s36, v37
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s14, s14, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s36, s14
	s_ashr_i32 s14, s14, 8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v86, v38, s[4:7], 0 offen
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s37, s14, s29
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v38, v26, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v25, s37, 1
	v_add_lshl_u32 v40, v24, s37, 1
	v_add_lshl_u32 v41, v23, s37, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v42, v21, s37, 1
	v_add_lshl_u32 v46, v18, s37, 1
	v_add_lshl_u32 v43, v19, s37, 1
	v_add_lshl_u32 v44, v22, s37, 1
	v_add_lshl_u32 v45, v20, s37, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v87, v38, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v88, v39, s[24:27], 0 offen
	buffer_load_u16 v89, v40, s[24:27], 0 offen
	buffer_load_u16 v90, v41, s[24:27], 0 offen
	buffer_load_u16 v91, v42, s[24:27], 0 offen
	buffer_load_u16 v92, v43, s[24:27], 0 offen
	buffer_load_u16 v93, v44, s[24:27], 0 offen
	buffer_load_u16 v94, v45, s[24:27], 0 offen
	buffer_load_u16 v95, v46, s[24:27], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[46:49], v36, s[16:19], 0 offen
	buffer_load_b128 v[50:53], v35, s[16:19], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s10, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v38, s14, v27
	v_add_nc_u32_e32 v39, s14, v28
	s_mov_b32 s31, s15
	v_add_nc_u32_e32 v40, s14, v29
	v_add_nc_u32_e32 v41, s14, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v42, s31, v33, v31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[54:57], v38
	ds_load_b128 v[58:61], v39
	ds_load_b128 v[62:65], v40
	ds_load_b128 v[66:69], v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v42 offset:1664
	ds_load_u8 v39, v42 offset:1920
	ds_load_u8 v40, v42 offset:1792
	ds_load_u8 v41, v42 offset:1536
	ds_load_u8 v43, v42 offset:1152
	ds_load_u8 v44, v42 offset:1408
	ds_load_u8 v45, v42 offset:1280
	ds_load_u8 v70, v42 offset:1024
	ds_load_u8 v71, v42 offset:640
	ds_load_u8 v72, v42 offset:896
	ds_load_u8 v73, v42 offset:768
	ds_load_u8 v74, v42 offset:512
	ds_load_u8 v75, v42 offset:128
	ds_load_u8 v76, v42 offset:384
	ds_load_u8 v77, v42 offset:256
	ds_load_u8 v78, v42
	ds_load_u8 v79, v42 offset:3712
	ds_load_u8 v80, v42 offset:3968
	ds_load_u8 v81, v42 offset:3840
	ds_load_u8 v82, v42 offset:3584
	ds_load_u8 v83, v42 offset:3200
	ds_load_u8 v84, v42 offset:3456
	ds_load_u8 v85, v42 offset:3328
	ds_load_u8 v96, v42 offset:3072
	ds_load_u8 v97, v42 offset:2688
	ds_load_u8 v98, v42 offset:2944
	ds_load_u8 v99, v42 offset:2816
	ds_load_u8 v100, v42 offset:2560
	ds_load_u8 v101, v42 offset:2176
	ds_load_u8 v102, v42 offset:2432
	ds_load_u8 v103, v42 offset:2304
	ds_load_u8 v104, v42 offset:2048
	ds_load_u8 v105, v42 offset:5760
	ds_load_u8 v106, v42 offset:6016
	ds_load_u8 v107, v42 offset:5888
	ds_load_u8 v108, v42 offset:5632
	ds_load_u8 v109, v42 offset:5248
	ds_load_u8 v110, v42 offset:5504
	ds_load_u8 v111, v42 offset:5376
	ds_load_u8 v112, v42 offset:5120
	ds_load_u8 v113, v42 offset:4736
	ds_load_u8 v114, v42 offset:4992
	ds_load_u8 v115, v42 offset:4864
	ds_load_u8 v116, v42 offset:4608
	ds_load_u8 v117, v42 offset:4224
	ds_load_u8 v118, v42 offset:4480
	ds_load_u8 v119, v42 offset:4352
	ds_load_u8 v120, v42 offset:4096
	ds_load_u8 v121, v42 offset:7808
	ds_load_u8 v122, v42 offset:8064
	ds_load_u8 v123, v42 offset:7936
	ds_load_u8 v124, v42 offset:7680
	ds_load_u8 v125, v42 offset:7296
	ds_load_u8 v126, v42 offset:7552
	ds_load_u8 v127, v42 offset:7424
	ds_load_u8 v128, v42 offset:7168
	ds_load_u8 v129, v42 offset:6784
	ds_load_u8 v130, v42 offset:7040
	ds_load_u8 v131, v42 offset:6912
	ds_load_u8 v132, v42 offset:6656
	ds_load_u8 v133, v42 offset:6272
	ds_load_u8 v134, v42 offset:6528
	ds_load_u8 v135, v42 offset:6400
	ds_load_u8 v42, v42 offset:6144
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v40, v70, v43, 0xc0c0004
	v_perm_b32 v41, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v43, v74, v71, 0xc0c0004
	v_perm_b32 v44, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v45, v78, v75, 0xc0c0004
	v_perm_b32 v70, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v74, v82, v79, 0xc0c0004
	v_perm_b32 v75, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v76, v96, v83, 0xc0c0004
	v_perm_b32 v78, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v79, v100, v97, 0xc0c0004
	v_perm_b32 v80, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v81, v104, v101, 0xc0c0004
	v_perm_b32 v82, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v84, v107, v106, 0xc0c0004
	v_lshl_or_b32 v73, v39, 16, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v107, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v133, 0xc0c0004
	v_lshl_or_b32 v72, v41, 16, v40
	v_lshl_or_b32 v71, v44, 16, v43
	v_lshl_or_b32 v70, v70, 16, v45
	v_perm_b32 v83, v108, v105, 0xc0c0004
	v_perm_b32 v85, v112, v109, 0xc0c0004
	v_perm_b32 v96, v111, v110, 0xc0c0004
	v_perm_b32 v97, v116, v113, 0xc0c0004
	v_perm_b32 v98, v115, v114, 0xc0c0004
	v_perm_b32 v99, v120, v117, 0xc0c0004
	v_perm_b32 v100, v119, v118, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	v_lshl_or_b32 v76, v78, 16, v76
	v_lshl_or_b32 v75, v80, 16, v79
	v_lshl_or_b32 v74, v82, 16, v81
	v_lshl_or_b32 v82, v107, 16, v42
	v_wmma_i32_16x16x16_iu8 v[38:45], v[70:73], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v101, v124, v121, 0xc0c0004
	v_perm_b32 v102, v123, v122, 0xc0c0004
	v_perm_b32 v103, v128, v125, 0xc0c0004
	v_perm_b32 v104, v127, v126, 0xc0c0004
	v_perm_b32 v105, v132, v129, 0xc0c0004
	v_perm_b32 v106, v131, v130, 0xc0c0004
	v_lshl_or_b32 v81, v84, 16, v83
	v_lshl_or_b32 v80, v96, 16, v85
	v_lshl_or_b32 v79, v98, 16, v97
	v_lshl_or_b32 v78, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[38:45], v[74:77], v[58:61], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v102, 16, v101
	v_lshl_or_b32 v84, v104, 16, v103
	v_lshl_or_b32 v83, v106, 16, v105
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s35, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[78:81], v[62:65], v[38:45] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s15, s33
	s_cselect_b32 s35, s14, 0
	s_add_i32 s11, s11, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[82:85], v[66:69], v[38:45] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s33, s35, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s31, s35, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s33, s33, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s37, s31, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s36, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s37, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v54, 16, v87
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v55, 16, v88
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v55, v54, v55 :: v_dual_lshlrev_b32 v60, 16, v93
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v9, v55, v38 :: v_dual_lshlrev_b32 v62, 16, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v60, v54, v60 :: v_dual_add_nc_u32 v35, s34, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v61, 16, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v60, v43 :: v_dual_add_nc_u32 v137, s33, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v61, v54, v61 :: v_dual_add_nc_u32 v36, s34, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v61, v44 :: v_dual_lshlrev_b32 v58, 16, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v58, v54, v58 :: v_dual_lshlrev_b32 v59, 16, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v14, v58, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v59, v54, v59 :: v_dual_lshlrev_b32 v56, 16, v89
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v15, v59, v42 :: v_dual_mul_f32 v56, v54, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v12, v56, v39 :: v_dual_lshlrev_b32 v57, 16, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v54, v57
	v_mul_f32_e32 v54, v54, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v13, v57, v40 :: v_dual_add_nc_u32 v136, s37, v34
	v_fmac_f32_e32 v11, v54, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v136, v86 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v137, v[46:49]
	s_waitcnt vmcnt(0)
	ds_store_b128 v137, v[50:53] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s20, s36, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v9, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s31, 0, 0x4400
	s_add_i32 s33, 0, 0x2000
.LBB0_8:                                ; %Flow26
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v1, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v42, v33, v31
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s15, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v51, s10, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v7 offset:1664
	ds_load_u8 v31, v7 offset:1920
	ds_load_u8 v32, v7 offset:1792
	ds_load_u8 v33, v7 offset:1536
	ds_load_u8 v34, v7 offset:1152
	ds_load_u8 v35, v7 offset:1408
	ds_load_u8 v36, v7 offset:1280
	ds_load_u8 v37, v7 offset:1024
	ds_load_u8 v38, v7 offset:640
	ds_load_u8 v39, v7 offset:896
	ds_load_u8 v40, v7 offset:768
	ds_load_u8 v41, v7 offset:512
	ds_load_u8 v55, v7 offset:128
	ds_load_u8 v56, v7 offset:256
	ds_load_u8 v57, v7
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v33, v8, 0xc0c0004
	v_mov_b32_e32 v33, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s10, v30
	v_add_nc_u32_e32 v43, s10, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v32, v37, v34, 0xc0c0004
	v_perm_b32 v34, v36, v35, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v47, s10, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_mov_b32_e32 v40, v33
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v35, v41, v38, 0xc0c0004
	v_mov_b32_e32 v39, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v57, v55, 0xc0c0004
	v_lshl_or_b32 v57, v34, 16, v32
	v_mov_b32_e32 v34, v33
	ds_load_u8 v58, v7 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[43:46], v43
	ds_load_b128 v[47:50], v47
	ds_load_b128 v[51:54], v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v7 offset:3712
	ds_load_u8 v59, v7 offset:3968
	ds_load_u8 v60, v7 offset:3840
	ds_load_u8 v61, v7 offset:3584
	ds_load_u8 v62, v7 offset:3200
	ds_load_u8 v63, v7 offset:3456
	ds_load_u8 v64, v7 offset:3328
	ds_load_u8 v65, v7 offset:3072
	ds_load_u8 v66, v7 offset:2688
	ds_load_u8 v67, v7 offset:2944
	ds_load_u8 v68, v7 offset:2816
	ds_load_u8 v69, v7 offset:2560
	ds_load_u8 v70, v7 offset:2176
	ds_load_u8 v71, v7 offset:2432
	ds_load_u8 v72, v7 offset:2304
	ds_load_u8 v73, v7 offset:2048
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v65, v62, 0xc0c0004
	v_perm_b32 v38, v56, v58, 0xc0c0004
	v_lshl_or_b32 v58, v31, 16, v8
	v_lshl_or_b32 v56, v36, 16, v35
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_lshl_or_b32 v55, v38, 16, v37
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_perm_b32 v8, v61, v41, 0xc0c0004
	v_perm_b32 v31, v60, v59, 0xc0c0004
	v_perm_b32 v41, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v69, v66, 0xc0c0004
	v_perm_b32 v60, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v73, v70, 0xc0c0004
	v_perm_b32 v62, v72, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[55:58], v[51:54], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v31, 16, v8
	v_lshl_or_b32 v53, v41, 16, v32
	v_lshl_or_b32 v52, v60, 16, v59
	v_lshl_or_b32 v51, v62, 16, v61
	ds_load_u8 v8, v7 offset:5760
	ds_load_u8 v31, v7 offset:6016
	ds_load_u8 v32, v7 offset:5888
	ds_load_u8 v41, v7 offset:5632
	ds_load_u8 v55, v7 offset:5248
	ds_load_u8 v56, v7 offset:5504
	ds_load_u8 v57, v7 offset:5376
	ds_load_u8 v58, v7 offset:5120
	ds_load_u8 v59, v7 offset:4736
	ds_load_u8 v60, v7 offset:4992
	ds_load_u8 v61, v7 offset:4864
	ds_load_u8 v62, v7 offset:4608
	ds_load_u8 v63, v7 offset:4224
	ds_load_u8 v64, v7 offset:4480
	ds_load_u8 v65, v7 offset:4352
	ds_load_u8 v66, v7 offset:4096
	ds_load_u8 v67, v7 offset:7808
	ds_load_u8 v68, v7 offset:8064
	ds_load_u8 v69, v7 offset:7936
	ds_load_u8 v70, v7 offset:7680
	ds_load_u8 v71, v7 offset:7296
	ds_load_u8 v72, v7 offset:7552
	ds_load_u8 v73, v7 offset:7424
	ds_load_u8 v74, v7 offset:7168
	ds_load_u8 v75, v7 offset:6784
	ds_load_u8 v76, v7 offset:7040
	ds_load_u8 v77, v7 offset:6912
	ds_load_u8 v78, v7 offset:6656
	ds_load_u8 v79, v7 offset:6272
	ds_load_u8 v80, v7 offset:6528
	ds_load_u8 v81, v7 offset:6400
	ds_load_u8 v7, v7 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v8, v41, v8, 0xc0c0004
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v32, v58, v55, 0xc0c0004
	v_perm_b32 v41, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v55, v62, v59, 0xc0c0004
	v_perm_b32 v56, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v66, v63, 0xc0c0004
	v_perm_b32 v58, v65, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[51:54], v[47:50], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v31, 16, v8
	v_lshl_or_b32 v49, v41, 16, v32
	v_lshl_or_b32 v48, v56, 16, v55
	v_lshl_or_b32 v47, v58, 16, v57
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v70, v67, 0xc0c0004
	v_perm_b32 v31, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v74, v71, 0xc0c0004
	v_perm_b32 v41, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v78, v75, 0xc0c0004
	v_perm_b32 v52, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v79, 0xc0c0004
	v_perm_b32 v53, v81, v80, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[47:50], v[43:46], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v31, 16, v8
	v_lshl_or_b32 v45, v41, 16, v32
	v_lshl_or_b32 v44, v52, 16, v51
	v_lshl_or_b32 v43, v53, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[43:46], v[3:6], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v35
	v_cvt_f32_i32_e32 v6, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v37
	v_cvt_f32_i32_e32 v8, v38
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v32, v40
	v_cvt_f32_i32_e32 v5, v33
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
	s_cmp_lt_i32 s4, s30
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v33, v26, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v25, s4, 1
	v_add_lshl_u32 v35, v24, s4, 1
	v_add_lshl_u32 v36, v23, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v37, v21, s4, 1
	v_add_lshl_u32 v38, v19, s4, 1
	v_add_lshl_u32 v39, v22, s4, 1
	v_add_lshl_u32 v40, v20, s4, 1
	v_add_lshl_u32 v41, v18, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_mov_b32 v44, 0
	s_clause 0x7
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	buffer_load_u16 v40, v40, s[12:15], 0 offen
	buffer_load_u16 v41, v41, s[12:15], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v49, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s33, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v58, s31, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v2 offset:1664
	ds_load_u8 v43, v2 offset:1920
	ds_load_u8 v44, v2 offset:1792
	ds_load_u8 v45, v2 offset:1536
	ds_load_u8 v46, v2 offset:1152
	ds_load_u8 v47, v2 offset:1408
	ds_load_u8 v48, v2 offset:1280
	ds_load_u8 v49, v2 offset:1024
	ds_load_u8 v62, v2 offset:640
	ds_load_u8 v63, v2 offset:896
	ds_load_u8 v64, v2 offset:768
	ds_load_u8 v65, v2 offset:512
	ds_load_u8 v66, v2 offset:128
	ds_load_u8 v67, v2 offset:256
	ds_load_u8 v68, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v45, v45, v42, 0xc0c0004
	v_mov_b32_e32 v42, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v30, s31, v30
	v_add_nc_u32_e32 v50, s31, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v44, v49, v46, 0xc0c0004
	v_perm_b32 v46, v48, v47, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, s31, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v65, v62, 0xc0c0004
	v_lshl_or_b32 v65, v43, 16, v45
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v45, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v68, v66, 0xc0c0004
	v_lshl_or_b32 v63, v48, 16, v47
	v_mov_b32_e32 v47, v42
	ds_load_u8 v69, v2 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[27:30], v30
	ds_load_b128 v[50:53], v50
	ds_load_b128 v[54:57], v54
	ds_load_b128 v[58:61], v58
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v66, v2 offset:3712
	ds_load_u8 v68, v2 offset:3968
	ds_load_u8 v70, v2 offset:3840
	ds_load_u8 v71, v2 offset:3584
	ds_load_u8 v72, v2 offset:3200
	ds_load_u8 v73, v2 offset:3456
	ds_load_u8 v74, v2 offset:3328
	ds_load_u8 v75, v2 offset:3072
	ds_load_u8 v76, v2 offset:2688
	ds_load_u8 v77, v2 offset:2944
	ds_load_u8 v78, v2 offset:2816
	ds_load_u8 v79, v2 offset:2560
	ds_load_u8 v80, v2 offset:2176
	ds_load_u8 v81, v2 offset:2432
	ds_load_u8 v82, v2 offset:2304
	ds_load_u8 v83, v2 offset:2048
	v_lshl_or_b32 v64, v46, 16, v44
	v_mov_b32_e32 v44, v42
	v_mov_b32_e32 v46, v42
	v_mov_b32_e32 v48, v42
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v71, v78, v77, 0xc0c0004
	v_perm_b32 v62, v67, v69, 0xc0c0004
	v_perm_b32 v67, v70, v68, 0xc0c0004
	v_perm_b32 v68, v75, v72, 0xc0c0004
	v_perm_b32 v69, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v79, v76, 0xc0c0004
	v_lshl_or_b32 v62, v62, 16, v49
	v_mov_b32_e32 v49, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v83, v80, 0xc0c0004
	v_perm_b32 v73, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[62:65], v[58:61], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v67, 16, v66
	v_lshl_or_b32 v60, v69, 16, v68
	v_lshl_or_b32 v59, v71, 16, v70
	v_lshl_or_b32 v58, v73, 16, v72
	ds_load_u8 v62, v2 offset:5760
	ds_load_u8 v63, v2 offset:6016
	ds_load_u8 v64, v2 offset:5888
	ds_load_u8 v65, v2 offset:5632
	ds_load_u8 v66, v2 offset:5248
	ds_load_u8 v67, v2 offset:5504
	ds_load_u8 v68, v2 offset:5376
	ds_load_u8 v69, v2 offset:5120
	ds_load_u8 v70, v2 offset:4736
	ds_load_u8 v71, v2 offset:4992
	ds_load_u8 v72, v2 offset:4864
	ds_load_u8 v73, v2 offset:4608
	ds_load_u8 v74, v2 offset:4224
	ds_load_u8 v75, v2 offset:4480
	ds_load_u8 v76, v2 offset:4352
	ds_load_u8 v77, v2 offset:4096
	ds_load_u8 v78, v2 offset:7808
	ds_load_u8 v79, v2 offset:8064
	ds_load_u8 v80, v2 offset:7936
	ds_load_u8 v81, v2 offset:7680
	ds_load_u8 v82, v2 offset:7296
	ds_load_u8 v83, v2 offset:7552
	ds_load_u8 v84, v2 offset:7424
	ds_load_u8 v85, v2 offset:7168
	ds_load_u8 v86, v2 offset:6784
	ds_load_u8 v87, v2 offset:7040
	ds_load_u8 v88, v2 offset:6912
	ds_load_u8 v89, v2 offset:6656
	ds_load_u8 v90, v2 offset:6272
	ds_load_u8 v91, v2 offset:6528
	ds_load_u8 v92, v2 offset:6400
	ds_load_u8 v2, v2 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v64, v69, v66, 0xc0c0004
	v_perm_b32 v65, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v66, v73, v70, 0xc0c0004
	v_perm_b32 v67, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v68, v77, v74, 0xc0c0004
	v_perm_b32 v69, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[58:61], v[54:57], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v57, v63, 16, v62
	v_lshl_or_b32 v56, v65, 16, v64
	v_lshl_or_b32 v55, v67, 16, v66
	v_lshl_or_b32 v54, v69, 16, v68
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v81, v78, 0xc0c0004
	v_perm_b32 v59, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v85, v82, 0xc0c0004
	v_perm_b32 v61, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v62, v89, v86, 0xc0c0004
	v_perm_b32 v63, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v90, 0xc0c0004
	v_perm_b32 v64, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[54:57], v[50:53], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v59, 16, v58
	v_lshl_or_b32 v52, v61, 16, v60
	v_lshl_or_b32 v51, v63, 16, v62
	v_lshl_or_b32 v50, v64, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[27:30], v[42:49] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s20, 31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 24
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v27.h, v33.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s20, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v29.h, v40.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v29.l, v27.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s30
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v26, v26, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s29
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v25, v25, s4, 1
	v_add_lshl_u32 v24, v24, s4, 1
	v_add_lshl_u32 v23, v23, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v21, v21, s4, 1
	v_add_lshl_u32 v19, v19, s4, 1
	v_add_lshl_u32 v22, v22, s4, 1
	v_add_lshl_u32 v20, v20, s4, 1
	v_add_lshl_u32 v18, v18, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_mul_f32 v29, v27, v29
	s_clause 0x7
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v33.h, v38.l
	v_mov_b16_e32 v33.l, v27.l
	v_mov_b16_e32 v34.h, v37.l
	v_mov_b16_e32 v35.h, v36.l
	v_mov_b16_e32 v36.h, v35.l
	v_mov_b16_e32 v37.h, v34.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v38, 0x5410 :: v_dual_mul_f32 v33, v27, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v34.l, v27.l
	v_mov_b16_e32 v36.l, v27.l
	v_mov_b16_e32 v28.h, v41.l
	v_mov_b16_e32 v30.h, v39.l
	v_mov_b16_e32 v28.l, v27.l
	v_mov_b16_e32 v30.l, v27.l
	v_mov_b16_e32 v35.l, v27.l
	v_mov_b16_e32 v37.l, v27.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v27, v34
	v_mul_f32_e32 v36, v27, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v33, v7, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v27.l
	v_mov_b16_e32 v41.h, v27.l
	v_mov_b16_e32 v42.h, v27.l
	v_mov_b16_e32 v50.h, v27.l
	v_mov_b16_e32 v51.h, v27.l
	v_mov_b16_e32 v52.h, v27.l
	v_mov_b16_e32 v53.h, v27.l
	v_mov_b16_e32 v54.h, v27.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v27, v28
	v_mul_f32_e32 v30, v27, v30
	v_mul_f32_e32 v35, v27, v35
	v_mul_f32_e32 v27, v27, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v36, v3, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v15, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v31, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v12, v3, s3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v29, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v10, v10, s29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v12, 16, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v35, v4, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v15, 16, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v34, v6, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v13, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v13, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v30, v8, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v14, v6, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v27, v5, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v16, v8, s3
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v19
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v32, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v12, v9, v12 :: v_dual_lshlrev_b32 v19, 16, v22
	v_mul_f32_e32 v13, v9, v13
	v_mul_f32_e32 v14, v9, v14
	v_dual_mul_f32 v15, v9, v15 :: v_dual_lshlrev_b32 v18, 16, v18
	v_mul_f32_e32 v19, v9, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v12, v2, v5
	v_fma_f32 v12, v13, v43, v3
	v_fma_f32 v13, v14, v44, v4
	v_fma_f32 v14, v15, v45, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v28, s3
	v_cndmask_b32_e64 v2, v5, v2, s2
	v_cndmask_b32_e64 v3, v3, v12, s2
	v_cndmask_b32_e64 v4, v4, v13, s2
	v_cndmask_b32_e64 v5, v6, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s3, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v9, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v5, v5, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v9, v20
	v_dual_mul_f32 v9, v9, v18 :: v_dual_max_f32 v4, v4, v4
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, 0, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v16, v46, v7
	v_fma_f32 v16, v19, v47, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v9, v9, v49, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v7, v15, s2
	v_cndmask_b32_e64 v7, v8, v16, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v9, v11, v9, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v5, 0, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v20, v48, v17
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v3.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v17, v18, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v2, v2, v2
	v_dual_max_f32 v7, v7, v7 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v13, 1, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v2.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v7, 0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 1, v41
	v_mov_b16_e32 v50.l, v4.h
	v_add3_u32 v3, v3, v13, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v11, 0x7fff
	v_mov_b16_e32 v52.l, v6.h
	v_cndmask_b32_e32 v13, 0x3276, v39, vcc_lo
	v_mov_b16_e32 v53.l, v9.h
	v_mov_b16_e32 v51.l, v7.h
	v_mov_b16_e32 v3.l, v2.h
	v_and_b32_e32 v2, 1, v50
	v_and_b32_e32 v0, 1, v42
	v_and_b32_e32 v12, 1, v52
	s_mov_b32 s2, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v4, v2, 0x7fff
	v_add3_u32 v0, v5, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v12, 0x7fff
	v_cndmask_b32_e32 v12, 0x1054, v38, vcc_lo
	v_lshl_or_b32 v5, v13, 8, v13
	v_mov_b16_e32 v0.l, v2.h
	v_and_b32_e32 v14, 1, v51
	v_lshl_or_b32 v4, v12, 8, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v7, v14, 0x7fff
	v_mov_b16_e32 v7.l, v6.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v53
	v_and_b32_e32 v2, 0x540054, v4
	v_dual_cndmask_b32 v11, v7, v3 :: v_dual_and_b32 v4, 0x760076, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v54.l, v8.h
	v_add3_u32 v6, v9, v6, 0x7fff
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v4, v4, 4, v4
	v_and_b32_e32 v14, 1, v54
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v7, s28, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v3, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v4, 0x7060706, v4
	v_add3_u32 v8, v8, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v3, v11, v4
	v_mov_b16_e32 v6.l, v8.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v5, v0, v6 :: v_dual_cndmask_b32 v6, v6, v0
	v_perm_b32 v0, v3, v11, v2
	v_permlanex16_b32 v5, v5, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s10
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v2, v5, v6, v2
	v_perm_b32 v3, v5, v6, v4
	v_add_lshl_u32 v4, v7, v10, 1
	buffer_store_b128 v[0:3], v4, s[0:3], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 138
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7288
; TotalNumSgprs: 40
; NumVgprs: 138
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     138
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
