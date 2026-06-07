	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s24, s[0:1], 0x38
.Ltmp0:
	.loc	1 299 32 prologue_end           ; generate_amdgcn.py:299:32
	v_and_b32_e32 v5, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s14, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s8, s8, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s8
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s6, s9
	s_abs_i32 s9, s2
	s_add_i32 s6, s6, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s8
	s_sub_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s7, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s5, s7
	s_mul_hi_u32 s9, s4, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s4, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s24, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s16, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s16, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s17, s5, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s18, 63
	v_or_b32_e32 v12, s17, v5
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v1, s17, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v13, 0xf0, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s18, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s24, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s19, s1, 31
.Ltmp18:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s18, s0
.Ltmp20:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s19, 27
.Ltmp21:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s27, s3, 6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
	s_ashr_i32 s26, s1, 5
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s16, 7
	s_mov_b32 s3, s0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v11, 4, v13
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v14, 3, v0
	v_bfe_i32 v10, v0, 2, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v3, v0, 4, 1
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s4, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v9, 1, v5
	s_and_b32 s5, s5, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s2, s2, 7
	v_bfe_i32 v8, v0, 6, 1
	v_or_b32_e32 v5, v1, v5
	v_or3_b32 v15, v3, v1, s14
	v_mov_b32_e32 v36, 0
	v_mul_lo_u32 v17, v12, s26
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v28, 0, v2
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v16, 0, v5
	v_add_nc_u32_e32 v5, s17, v11
	s_mov_b32 s17, s5
	s_mov_b32 s5, s0
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v6, 0x70, v2
	v_or_b32_e32 v18, 2, v15
	v_or_b32_e32 v19, 4, v15
	v_or_b32_e32 v20, 6, v15
	v_and_b32_e32 v4, 0x160, v4
	v_or_b32_e32 v21, 8, v15
	v_or_b32_e32 v22, 10, v15
	v_or_b32_e32 v23, 12, v15
	v_or_b32_e32 v24, 14, v15
	v_and_or_b32 v4, 0x90, v10, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v10, s27, v14
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s25, s18, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v29, 0, v4
.Ltmp25:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v1, 32, v10
	v_mul_lo_u32 v3, s15, v10
	v_mad_u64_u32 v[10:11], null, s24, v5, v[9:10]
	s_mov_b32 s19, 0x31027000
	v_mul_lo_u32 v1, s15, v1
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	v_add3_u32 v3, v3, s1, v6
	s_lshl_b32 s28, s15, 6
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	v_add3_u32 v1, v1, s1, v6
	v_subrev_nc_u32_e32 v26, s2, v3
	s_mov_b32 s1, s0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v11, s2, v1
	s_mov_b32 s2, s0
	v_lshlrev_b32_e32 v7, 1, v0
	v_and_b32_e32 v8, 0x90, v8
	v_and_b32_e32 v7, 0x17e, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v7, v8, v7
	v_xor_b32_e32 v8, 16, v4
	v_add_nc_u32_e32 v27, 0, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v30, 0, v8
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v7, s6
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_dual_mov_b32 v4, s3 :: v_dual_mov_b32 v3, s2
	v_dual_mov_b32 v2, s1 :: v_dual_mov_b32 v1, s0
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v38, s27, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v39, s27, v10
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v40, s27, v14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s27, 5
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s1, s27, 32
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v38
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s26
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v48, v17, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s15
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_dual_cndmask_b32 v41, 0x80000000, v39 :: v_dual_add_nc_u32 v38, 32, v38
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v40
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v39, 32, v39
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v42, 32, v40
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v15, s0, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v46, v41, s[16:19], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v40, 0x80000000, v26, vcc_lo
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v38
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v18, s0, 1
	v_add_lshl_u32 v51, v19, s0, 1
	v_add_lshl_u32 v52, v20, s0, 1
	v_add_lshl_u32 v53, v21, s0, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v43, 0x80000000, v39, vcc_lo
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v42
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[38:41], v40, s[20:23], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v54, v22, s0, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v42, 0x80000000, v11, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v47, v43, s[16:19], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[42:45], v42, s[20:23], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s26
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v57, v17, s1, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s1, s15
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v55, v23, s0, 1
	v_add_lshl_u32 v56, v24, s0, 1
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v58, v15, s1, 1
	v_add_lshl_u32 v59, v18, s1, 1
	v_add_lshl_u32 v60, v19, s1, 1
	v_add_lshl_u32 v61, v20, s1, 1
	v_add_lshl_u32 v62, v21, s1, 1
	v_add_lshl_u32 v63, v22, s1, 1
	v_add_lshl_u32 v64, v23, s1, 1
	v_add_lshl_u32 v65, v24, s1, 1
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s25, s25, -1
	s_add_i32 s27, s27, 64
	s_cmp_lg_u32 s25, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(3)
	ds_store_b16 v27, v46 offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v28, v[38:41]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v27, v47 offset:8704
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v28, v[42:45] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v78, v48, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v79, v49, s[8:11], 0 offen
	buffer_load_u16 v80, v50, s[8:11], 0 offen
	buffer_load_u16 v81, v51, s[8:11], 0 offen
	buffer_load_u16 v82, v52, s[8:11], 0 offen
	buffer_load_u16 v83, v53, s[8:11], 0 offen
	buffer_load_u16 v84, v54, s[8:11], 0 offen
	buffer_load_u16 v85, v55, s[8:11], 0 offen
	buffer_load_u16 v86, v56, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v87, v57, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v88, v58, s[8:11], 0 offen
	buffer_load_u16 v89, v59, s[8:11], 0 offen
	buffer_load_u16 v90, v60, s[8:11], 0 offen
	buffer_load_u16 v91, v61, s[8:11], 0 offen
	buffer_load_u16 v92, v62, s[8:11], 0 offen
	buffer_load_u16 v93, v63, s[8:11], 0 offen
	buffer_load_u16 v94, v64, s[8:11], 0 offen
	buffer_load_u16 v95, v65, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v38, v16 offset:1664
	ds_load_u8 v39, v16 offset:1920
	ds_load_u8 v40, v16 offset:1792
	ds_load_u8 v41, v16 offset:1536
	ds_load_u8 v42, v16 offset:1152
	ds_load_u8 v43, v16 offset:1408
	ds_load_u8 v44, v16 offset:1280
	ds_load_u8 v45, v16 offset:1024
	ds_load_u8 v50, v16 offset:640
	ds_load_u8 v51, v16 offset:896
	ds_load_u8 v52, v16 offset:768
	ds_load_u8 v53, v16 offset:512
	ds_load_u8 v66, v16 offset:128
	ds_load_u8 v67, v16 offset:384
	ds_load_u8 v68, v16 offset:256
	ds_load_u8 v69, v16
	ds_load_u8 v70, v16 offset:3712
	ds_load_u8 v71, v16 offset:3968
	ds_load_u8 v72, v16 offset:3840
	ds_load_u8 v73, v16 offset:3584
	ds_load_u8 v74, v16 offset:3200
	ds_load_u8 v75, v16 offset:3456
	ds_load_u8 v76, v16 offset:3328
	ds_load_u8 v77, v16 offset:3072
	ds_load_u8 v96, v16 offset:2688
	ds_load_u8 v97, v16 offset:2944
	ds_load_u8 v98, v16 offset:2816
	ds_load_u8 v99, v16 offset:2560
	ds_load_u8 v100, v16 offset:2176
	ds_load_u8 v101, v16 offset:2432
	ds_load_u8 v102, v16 offset:2304
	ds_load_u8 v103, v16 offset:2048
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[46:49], v29 offset:8192
	ds_load_b128 v[54:57], v29 offset:8704
	ds_load_b128 v[58:61], v30 offset:8192
	ds_load_b128 v[62:65], v30 offset:8704
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v104, v16 offset:5760
	ds_load_u8 v105, v16 offset:6016
	ds_load_u8 v106, v16 offset:5888
	ds_load_u8 v107, v16 offset:5632
	ds_load_u8 v108, v16 offset:5248
	ds_load_u8 v109, v16 offset:5504
	ds_load_u8 v110, v16 offset:5376
	ds_load_u8 v111, v16 offset:5120
	ds_load_u8 v112, v16 offset:4736
	ds_load_u8 v113, v16 offset:4992
	ds_load_u8 v114, v16 offset:4864
	ds_load_u8 v115, v16 offset:4608
	ds_load_u8 v116, v16 offset:4224
	ds_load_u8 v117, v16 offset:4480
	ds_load_u8 v118, v16 offset:4352
	ds_load_u8 v119, v16 offset:4096
	ds_load_u8 v120, v16 offset:7808
	ds_load_u8 v121, v16 offset:8064
	ds_load_u8 v122, v16 offset:7936
	ds_load_u8 v123, v16 offset:7680
	ds_load_u8 v124, v16 offset:7296
	ds_load_u8 v125, v16 offset:7552
	ds_load_u8 v126, v16 offset:7424
	ds_load_u8 v127, v16 offset:7168
	ds_load_u8 v128, v16 offset:6784
	ds_load_u8 v129, v16 offset:7040
	ds_load_u8 v130, v16 offset:6912
	ds_load_u8 v131, v16 offset:6656
	ds_load_u8 v132, v16 offset:6272
	ds_load_u8 v133, v16 offset:6528
	ds_load_u8 v134, v16 offset:6400
	ds_load_u8 v135, v16 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v40, v45, v42, 0xc0c0004
	v_perm_b32 v41, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v42, v53, v50, 0xc0c0004
	v_perm_b32 v43, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v44, v69, v66, 0xc0c0004
	v_perm_b32 v45, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v66, v73, v70, 0xc0c0004
	v_perm_b32 v67, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v68, v77, v74, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v71, v99, v96, 0xc0c0004
	v_perm_b32 v72, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v73, v103, v100, 0xc0c0004
	v_perm_b32 v74, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v75, v107, v104, 0xc0c0004
	v_perm_b32 v76, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v77, v111, v108, 0xc0c0004
	v_perm_b32 v96, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v97, v115, v112, 0xc0c0004
	v_perm_b32 v98, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v99, v119, v116, 0xc0c0004
	v_perm_b32 v100, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v123, v120, 0xc0c0004
	v_perm_b32 v102, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v103, v127, v124, 0xc0c0004
	v_perm_b32 v104, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v105, v131, v128, 0xc0c0004
	v_perm_b32 v106, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v135, v132, 0xc0c0004
	v_perm_b32 v108, v134, v133, 0xc0c0004
	v_lshl_or_b32 v53, v39, 16, v38
	v_lshl_or_b32 v52, v41, 16, v40
	v_lshl_or_b32 v51, v43, 16, v42
	v_lshl_or_b32 v50, v45, 16, v44
	v_lshl_or_b32 v69, v67, 16, v66
	v_lshl_or_b32 v68, v70, 16, v68
	v_lshl_or_b32 v67, v72, 16, v71
	v_lshl_or_b32 v66, v74, 16, v73
	v_lshl_or_b32 v73, v76, 16, v75
	v_lshl_or_b32 v72, v96, 16, v77
	v_lshl_or_b32 v71, v98, 16, v97
	v_lshl_or_b32 v70, v100, 16, v99
	v_lshl_or_b32 v77, v102, 16, v101
	v_lshl_or_b32 v76, v104, 16, v103
	v_lshl_or_b32 v75, v106, 16, v105
	v_lshl_or_b32 v74, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[46:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[54:57], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[58:61], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[74:77], v[62:65], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v55, 16, v79
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v57, 16, v81
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v63, 16, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v51, v63 :: v_dual_lshlrev_b32 v54, 16, v78
	v_dual_mul_f32 v38, v38, v54 :: v_dual_add_nc_u32 v11, s28, v11
	v_dual_mul_f32 v41, v41, v54 :: v_dual_lshlrev_b32 v56, 16, v80
	v_dual_mul_f32 v40, v40, v54 :: v_dual_lshlrev_b32 v59, 16, v83
	v_dual_mul_f32 v43, v43, v54 :: v_dual_lshlrev_b32 v60, 16, v84
	v_dual_mul_f32 v42, v42, v54 :: v_dual_lshlrev_b32 v61, 16, v85
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v25, v38, v55 :: v_dual_lshlrev_b32 v62, 16, v86
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v45, v45, v54 :: v_dual_lshlrev_b32 v64, 16, v88
	v_mul_f32_e32 v39, v39, v54
	v_mul_f32_e32 v44, v44, v54
	v_dual_mul_f32 v53, v53, v63 :: v_dual_lshlrev_b32 v58, 16, v82
	v_dual_mul_f32 v49, v49, v63 :: v_dual_add_nc_u32 v26, s28, v26
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v48, v48, v63 :: v_dual_lshlrev_b32 v65, 16, v89
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v37, v39, v56 :: v_dual_lshlrev_b32 v66, 16, v90
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v36, v40, v57 :: v_dual_lshlrev_b32 v67, 16, v91
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v35, v41, v58 :: v_dual_lshlrev_b32 v68, 16, v92
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v50, v50, v63 :: v_dual_lshlrev_b32 v69, 16, v93
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v33, v43, v60 :: v_dual_lshlrev_b32 v70, 16, v94
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v32, v44, v61 :: v_dual_lshlrev_b32 v71, 16, v95
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v46, v46, v63
	v_mul_f32_e32 v47, v47, v63
	v_dual_mul_f32 v52, v52, v63 :: v_dual_fmac_f32 v31, v45, v62
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v34, v42, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v25, v46, v64 :: v_dual_fmac_f32 v36, v48, v66
	v_fmac_f32_e32 v37, v47, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v35, v49, v67 :: v_dual_fmac_f32 v34, v50, v68
	v_dual_fmac_f32 v33, v51, v69 :: v_dual_fmac_f32 v32, v52, v70
	v_fmac_f32_e32 v31, v53, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, v37, v37 :: v_dual_max_f32 v3, v36, v36
	v_max_f32_e32 v1, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v34, v34 :: v_dual_max_f32 v8, v31, v31
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v6, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v4, v35, v35
	v_max_f32_e32 v7, v32, v32
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v14, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v11, 0, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v1, v1 :: v_dual_mul_f32 v9, v2, v2
	v_dual_mul_f32 v7, v3, v3 :: v_dual_mul_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v8, v5, v5 :: v_dual_mul_f32 v3, v11, v11
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mov_b32 v1, v12
	v_mul_f32_e32 v2, v14, v14
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, 0
	v_mov_b16_e32 v5.l, v9.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v12.l, v10.h
	v_mov_b16_e32 v15.l, v8.h
	v_mov_b16_e32 v12.h, v5.h
	v_mov_b16_e32 v15.h, v5.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v14, 1, v5
	v_mov_b16_e32 v5.l, v4.h
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v11, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v7.h
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v13.h, v5.h
	v_and_b32_e32 v16, 1, v5
	v_mov_b16_e32 v5.l, v6.h
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v15, 1, v15
	v_add3_u32 v10, v10, v12, 0x7fff
	v_and_b32_e32 v12, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 1, v5
	v_add3_u32 v8, v8, v15, 0x7fff
	v_add3_u32 v9, v9, v14, 0x7fff
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b32_e32 v10, 0x7632
	v_add3_u32 v6, v6, v13, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e32 v8.h, v5.h
	v_mov_b16_e32 v5.l, v2.h
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v10, vcc_lo
	v_add3_u32 v7, v7, v12, 0x7fff
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v5, 1, v5
	v_lshl_or_b32 v0, v0, 8, v0
	v_add3_u32 v4, v4, v16, 0x7fff
	v_mov_b16_e32 v4.l, v7.h
	v_add3_u32 v3, v3, v8, 0x7fff
	v_lshl_or_b32 v8, v10, 8, v10
	v_add3_u32 v2, v2, v5, 0x7fff
	v_cndmask_b32_e32 v12, v6, v9, vcc_lo
	v_and_b32_e32 v0, 0x540054, v0
	v_mov_b16_e32 v2.l, v3.h
	v_and_b32_e32 v3, 0x760076, v8
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, v1, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v1, v9, v6, vcc_lo
	v_lshl_or_b32 v0, v0, 4, v0
	s_mov_b32 s0, 0x76543210
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v6, v4, v2, vcc_lo
	v_cndmask_b32_e32 v4, v2, v4, vcc_lo
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v0
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v7, s14, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_perm_b32 v0, v1, v12, v2
	v_perm_b32 v1, v1, v12, v3
	v_perm_b32 v2, v6, v4, v2
	v_perm_b32 v3, v6, v4, v3
	v_add_lshl_u32 v4, v7, v5, 1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 29
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
		.amdhsa_inst_pref_size 30
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 136
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3752
; TotalNumSgprs: 31
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 31
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
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
