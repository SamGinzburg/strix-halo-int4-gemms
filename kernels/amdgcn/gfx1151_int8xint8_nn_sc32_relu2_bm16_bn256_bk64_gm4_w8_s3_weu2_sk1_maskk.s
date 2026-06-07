	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s10, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v9, 0xf0, v0
	v_and_b32_e32 v10, 15, v0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s5, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s4, s4, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s8, s6, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s12, s4, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s8, s8, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s6, s6, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s4, s4, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s6, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s4, s4, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s6, s6, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s6
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s9, s11
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s6
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s8, s8, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s9, s8, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s8, s8, s6
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s4, s9
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s8
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s4, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s8, s2
	s_abs_i32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s11, s10
	s_sub_i32 s12, 0, s10
	v_rcp_iflag_f32_e32 v3, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s11, v3
	v_mov_b32_e32 v3, 0
	s_mul_f32 s11, s11, 0x4f7ffffe
	s_cvt_u32_f32 s11, s11
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s11
	s_mul_hi_u32 s6, s11, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, s6
	s_mul_hi_u32 s6, s8, s11
	s_xor_b32 s11, s2, s4
	s_mul_i32 s12, s6, s10
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s8, s8, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s8, s10
	s_cmp_ge_u32 s8, s10
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s8, s13, s8
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s8, s10
	s_mov_b32 s8, 0
	s_cselect_b32 s6, s12, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s11
	s_sub_i32 s6, s6, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s6, s4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s6, s6, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s4
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s2, s9
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s7, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s4, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s2, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v11, 4, v9
	v_dual_mov_b32 v21, 0 :: v_dual_lshlrev_b32 v12, 1, v10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s7, 31
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v3, s7, v11
	v_mul_lo_u32 v4, s5, v11
.Ltmp16:
	.loc	1 318 34 is_stmt 1              ; generate_amdgcn.py:318:34
	s_mul_i32 s4, s22, s7
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s9, s1, 31
	v_bfe_i32 v2, v0, 6, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s9, 27
	v_add3_u32 v14, v3, v12, s4
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	v_lshl_add_u32 v15, v10, 4, v4
	v_bfe_i32 v6, v0, 2, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_lshlrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v2, 0x90, v2
	v_lshrrev_b32_e32 v7, 1, v0
	v_lshrrev_b32_e32 v8, 6, v0
	v_and_b32_e32 v4, 0x17e, v1
	v_and_b32_e32 v5, 0x160, v3
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v3, 32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v2, v2, v4
	v_and_or_b32 v4, 0x90, v6, v5
	v_and_or_b32 v5, 0x70, v7, v10
	v_or_b32_e32 v7, s22, v10
	s_ashr_i32 s33, s1, 5
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v17, 0, v5
	v_lshlrev_b32_e32 v5, 2, v0
	v_mul_lo_u32 v18, v7, s33
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v7, 2, v8
	v_lshlrev_b32_e32 v8, 1, v9
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v5, 0x1c0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v7, 0, v7
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v19, 0, v8
	v_lshlrev_b32_e32 v6, 4, v0
	v_xor_b32_e32 v22, 16, v4
	v_and_b32_e32 v23, 28, v1
	v_add3_u32 v25, v7, v5, v3
	v_add3_u32 v27, v19, v8, v3
	v_add_nc_u32_e32 v24, 0, v2
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v26, 0, v6
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v28, 0, v4
	v_mov_b32_e32 v1, s8
.Ltmp21:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_or_b32_e32 v13, 16, v11
	v_lshl_add_u32 v16, s5, 4, v15
	v_or_b32_e32 v20, s6, v0
	v_dual_mov_b32 v2, s9 :: v_dual_add_nc_u32 v35, 0, v22
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_add_nc_u32_e32 v36, v25, v23
	v_add_nc_u32_e32 v37, v27, v23
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s23, s2, 6
	s_lshl_b32 s34, s5, 5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.Ltmp23:
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s10, s0, 6
	v_or_b32_e32 v43, s10, v12
	v_or_b32_e32 v45, s10, v13
	s_or_b32 s9, s10, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s0, s10, s5
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v44, s10, v11
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v46, s10, v14
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v48, s9, v11
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s1, s7, v43
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s0, s0, s6
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v47, s9, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v51, s0, v15
	v_add_nc_u32_e32 v52, s0, v16
	s_add_i32 s2, s0, s34
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s7, v45
	v_cmp_gt_i32_e32 vcc_lo, s7, v44
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v43, 0x80000000, v46, s1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v44, s2, v15
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s7, v48
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v49, s9, v13
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v50, s9, v14
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s4, s7, v47
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v48, 0x80000000, v52, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s10, 5
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v47, 0x80000000, v51, vcc_lo
	v_cndmask_b32_e64 v51, 0x80000000, v44, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v45, s2, v16
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s7, v49
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v46, 0x80000000, v50, s4
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v62, v20, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s33
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v59, v43, s[24:27], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v55, 0x80000000, v45, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v60, v46, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[43:46], v47, s[28:31], 0 offen
	buffer_load_b128 v[47:50], v48, s[28:31], 0 offen
	buffer_load_b128 v[51:54], v51, s[28:31], 0 offen
	buffer_load_b128 v[55:58], v55, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v61, v18, s0, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s9, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v24, v59 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v26, v[43:46]
	s_waitcnt vmcnt(2)
	ds_store_b128 v26, v[47:50] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v24, v60 offset:16896
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v26, v[51:54] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[55:58] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v43, v62, s[16:19], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v44, v18, s0, 1
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s33
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s5
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v45, v20, s1, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	buffer_load_u16 v79, v61, s[12:15], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[59:62], v28 offset:16384
	ds_load_b128 v[63:66], v35 offset:16384
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v17 offset:3328
	ds_load_u8 v47, v17 offset:3072
	ds_load_u8 v48, v17 offset:3840
	ds_load_u8 v49, v17 offset:3584
	ds_load_u8 v50, v17 offset:3968
	ds_load_u8 v51, v17 offset:3712
	ds_load_u8 v52, v17 offset:3456
	ds_load_u8 v53, v17 offset:3200
	ds_load_u8 v54, v17 offset:2304
	ds_load_u8 v55, v17 offset:2048
	ds_load_u8 v56, v17 offset:2816
	ds_load_u8 v57, v17 offset:2560
	ds_load_u8 v58, v17 offset:2944
	ds_load_u8 v67, v17 offset:2688
	ds_load_u8 v68, v17 offset:2432
	ds_load_u8 v69, v17 offset:2176
	ds_load_u8 v70, v17 offset:1280
	ds_load_u8 v71, v17 offset:1024
	ds_load_u8 v72, v17 offset:1792
	ds_load_u8 v73, v17 offset:1536
	ds_load_u8 v74, v17 offset:1920
	ds_load_u8 v75, v17 offset:1664
	ds_load_u8 v76, v17 offset:1408
	ds_load_u8 v77, v17 offset:1152
	ds_load_u8 v78, v17 offset:256
	ds_load_u8 v80, v17
	ds_load_u8 v81, v17 offset:768
	ds_load_u8 v82, v17 offset:512
	ds_load_u8 v83, v17 offset:896
	ds_load_u8 v84, v17 offset:640
	ds_load_u8 v85, v17 offset:384
	ds_load_u8 v86, v17 offset:128
	ds_load_u8 v87, v17 offset:7424
	ds_load_u8 v88, v17 offset:7168
	ds_load_u8 v89, v17 offset:7936
	ds_load_u8 v90, v17 offset:7680
	ds_load_u8 v91, v17 offset:8064
	ds_load_u8 v92, v17 offset:7808
	ds_load_u8 v93, v17 offset:7552
	ds_load_u8 v94, v17 offset:7296
	ds_load_u8 v95, v17 offset:6400
	ds_load_u8 v96, v17 offset:6144
	ds_load_u8 v97, v17 offset:6912
	ds_load_u8 v98, v17 offset:6656
	ds_load_u8 v99, v17 offset:7040
	ds_load_u8 v100, v17 offset:6784
	ds_load_u8 v101, v17 offset:6528
	ds_load_u8 v102, v17 offset:6272
	ds_load_u8 v103, v17 offset:5376
	ds_load_u8 v104, v17 offset:5120
	ds_load_u8 v105, v17 offset:5888
	ds_load_u8 v106, v17 offset:5632
	ds_load_u8 v107, v17 offset:6016
	ds_load_u8 v108, v17 offset:5760
	ds_load_u8 v109, v17 offset:5504
	ds_load_u8 v110, v17 offset:5248
	ds_load_u8 v111, v17 offset:4352
	ds_load_u8 v112, v17 offset:4096
	ds_load_u8 v113, v17 offset:4864
	ds_load_u8 v114, v17 offset:4608
	ds_load_u8 v115, v17 offset:4992
	ds_load_u8 v116, v17 offset:4736
	ds_load_u8 v117, v17 offset:4480
	ds_load_u8 v118, v17 offset:4224
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v58, v67, v58, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v75, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v77, v86, v85, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v84, v94, v93, 0xc0c0004
	v_perm_b32 v85, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v102, v101, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s8, s23
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v118, v117, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	ds_store_b16 v36, v43 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v119, v45, s[16:19], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v120, v44, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v43, v47, v46, 0xc0c0004
	v_perm_b32 v44, v49, v48, 0xc0c0004
	v_perm_b32 v45, v55, v54, 0xc0c0004
	v_perm_b32 v46, v57, v56, 0xc0c0004
	v_perm_b32 v47, v71, v70, 0xc0c0004
	v_perm_b32 v48, v73, v72, 0xc0c0004
	v_perm_b32 v49, v80, v78, 0xc0c0004
	v_perm_b32 v55, v82, v81, 0xc0c0004
	v_perm_b32 v56, v88, v87, 0xc0c0004
	v_perm_b32 v57, v90, v89, 0xc0c0004
	v_perm_b32 v71, v96, v95, 0xc0c0004
	v_perm_b32 v72, v98, v97, 0xc0c0004
	v_perm_b32 v73, v104, v103, 0xc0c0004
	v_perm_b32 v78, v106, v105, 0xc0c0004
	v_perm_b32 v80, v112, v111, 0xc0c0004
	v_perm_b32 v81, v114, v113, 0xc0c0004
	v_perm_b32 v82, v53, v52, 0xc0c0004
	v_perm_b32 v87, v69, v68, 0xc0c0004
	v_lshl_or_b32 v54, v44, 16, v43
	v_lshl_or_b32 v53, v46, 16, v45
	v_lshl_or_b32 v52, v48, 16, v47
	v_lshl_or_b32 v51, v55, 16, v49
	v_perm_b32 v88, v100, v99, 0xc0c0004
	v_perm_b32 v89, v110, v109, 0xc0c0004
	v_perm_b32 v90, v108, v107, 0xc0c0004
	v_lshl_or_b32 v70, v57, 16, v56
	v_lshl_or_b32 v69, v72, 16, v71
	v_lshl_or_b32 v68, v78, 16, v73
	v_lshl_or_b32 v67, v81, 16, v80
	v_lshl_or_b32 v74, v50, 16, v82
	v_lshl_or_b32 v73, v58, 16, v87
	v_lshl_or_b32 v72, v75, 16, v76
	v_lshl_or_b32 v71, v83, 16, v77
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v85, 16, v84
	v_lshl_or_b32 v77, v88, 16, v86
	v_lshl_or_b32 v76, v90, 16, v89
	v_lshl_or_b32 v75, v92, 16, v91
	v_wmma_i32_16x16x16_iu8 v[51:58], v[71:74], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[67:70], v[63:66], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[75:78], v[63:66], v[51:58] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v75, 16, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v70, v46
	v_cvt_f32_i32_e32 v67, v43
	v_cvt_f32_i32_e32 v68, v44
	v_cvt_f32_i32_e32 v69, v45
	v_cvt_f32_i32_e32 v71, v47
	v_cvt_f32_i32_e32 v72, v48
	v_cvt_f32_i32_e32 v73, v49
	v_cvt_f32_i32_e32 v74, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[43:46], v19 offset:17408
	ds_load_b128 v[47:50], v19 offset:17424
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[59:62], v28 offset:16896
	ds_load_b128 v[63:66], v35 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v76, v17 offset:11520
	ds_load_u8 v77, v17 offset:11264
	ds_load_u8 v78, v17 offset:12032
	ds_load_u8 v79, v17 offset:11776
	ds_load_u8 v80, v17 offset:12160
	ds_load_u8 v81, v17 offset:11904
	ds_load_u8 v82, v17 offset:11648
	ds_load_u8 v83, v17 offset:11392
	ds_load_u8 v84, v17 offset:10496
	ds_load_u8 v85, v17 offset:10240
	ds_load_u8 v86, v17 offset:11008
	ds_load_u8 v87, v17 offset:10752
	ds_load_u8 v88, v17 offset:11136
	ds_load_u8 v89, v17 offset:10880
	ds_load_u8 v90, v17 offset:10624
	ds_load_u8 v91, v17 offset:10368
	ds_load_u8 v92, v17 offset:9472
	ds_load_u8 v93, v17 offset:9216
	ds_load_u8 v94, v17 offset:9984
	ds_load_u8 v95, v17 offset:9728
	ds_load_u8 v96, v17 offset:10112
	ds_load_u8 v97, v17 offset:9856
	ds_load_u8 v98, v17 offset:9600
	ds_load_u8 v99, v17 offset:9344
	ds_load_u8 v100, v17 offset:8448
	ds_load_u8 v101, v17 offset:8192
	ds_load_u8 v102, v17 offset:8960
	ds_load_u8 v103, v17 offset:8704
	ds_load_u8 v104, v17 offset:9088
	ds_load_u8 v105, v17 offset:8832
	ds_load_u8 v106, v17 offset:8576
	ds_load_u8 v107, v17 offset:8320
	ds_load_u8 v108, v17 offset:15616
	ds_load_u8 v109, v17 offset:15360
	ds_load_u8 v110, v17 offset:16128
	ds_load_u8 v111, v17 offset:15872
	ds_load_u8 v112, v17 offset:16256
	ds_load_u8 v113, v17 offset:16000
	ds_load_u8 v114, v17 offset:15744
	ds_load_u8 v115, v17 offset:15488
	ds_load_u8 v116, v17 offset:14592
	ds_load_u8 v117, v17 offset:14336
	ds_load_u8 v118, v17 offset:15104
	ds_load_u8 v121, v17 offset:14848
	ds_load_u8 v122, v17 offset:15232
	ds_load_u8 v123, v17 offset:14976
	ds_load_u8 v124, v17 offset:14720
	ds_load_u8 v125, v17 offset:14464
	ds_load_u8 v126, v17 offset:13568
	ds_load_u8 v127, v17 offset:13312
	ds_load_u8 v128, v17 offset:14080
	ds_load_u8 v129, v17 offset:13824
	ds_load_u8 v130, v17 offset:14208
	ds_load_u8 v131, v17 offset:13952
	ds_load_u8 v132, v17 offset:13696
	ds_load_u8 v133, v17 offset:13440
	ds_load_u8 v134, v17 offset:12544
	ds_load_u8 v135, v17 offset:12288
	ds_load_u8 v136, v17 offset:13056
	ds_load_u8 v137, v17 offset:12800
	ds_load_u8 v138, v17 offset:13184
	ds_load_u8 v139, v17 offset:12928
	ds_load_u8 v140, v17 offset:12672
	ds_load_u8 v141, v17 offset:12416
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v70, v70, v75
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(62)
	v_lshlrev_b32_e32 v144, 16, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v142, 16, v44
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v40, v70, v144
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v68, v75
	v_mul_f32_e32 v73, v73, v75
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v72, v72, v75 :: v_dual_lshlrev_b32 v143, 16, v45
	v_dual_mul_f32 v52, v52, v75 :: v_dual_and_b32 v45, 0xffff0000, v45
	v_dual_mul_f32 v53, v53, v75 :: v_dual_lshlrev_b32 v148, 16, v50
	v_dual_mul_f32 v55, v55, v75 :: v_dual_and_b32 v44, 0xffff0000, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v30, v53, v45 :: v_dual_lshlrev_b32 v145, 16, v47
	v_dual_fmac_f32 v42, v68, v142 :: v_dual_and_b32 v47, 0xffff0000, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v67, v67, v75
	v_mul_f32_e32 v69, v69, v75
	v_mul_f32_e32 v71, v71, v75
	v_dual_mul_f32 v74, v74, v75 :: v_dual_lshlrev_b32 v147, 16, v49
	v_dual_mul_f32 v51, v51, v75 :: v_dual_lshlrev_b32 v146, 16, v48
	v_dual_mul_f32 v54, v54, v75 :: v_dual_and_b32 v49, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v56, v56, v75 :: v_dual_fmac_f32 v33, v74, v148
	v_dual_mul_f32 v57, v57, v75 :: v_dual_and_b32 v46, 0xffff0000, v46
	v_dual_mul_f32 v58, v58, v75 :: v_dual_fmac_f32 v31, v52, v44
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v38, v72, v146 :: v_dual_lshlrev_b32 v75, 16, v43
	v_dual_fmac_f32 v27, v55, v47 :: v_dual_and_b32 v50, 0xffff0000, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v77, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v78, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v79, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v84, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v85, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v86, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v87, v103, v102, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v41, v69, v143 :: v_dual_and_b32 v48, 0xffff0000, v48
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v92, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v93, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v94, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v95, v121, v118, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v137, v136, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v91, v90, 0xc0c0004
	v_perm_b32 v83, v89, v88, 0xc0c0004
	v_perm_b32 v88, v99, v98, 0xc0c0004
	v_perm_b32 v89, v97, v96, 0xc0c0004
	v_perm_b32 v90, v107, v106, 0xc0c0004
	v_perm_b32 v91, v105, v104, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v34, v73, v147 :: v_dual_fmac_f32 v29, v54, v46
	v_fmac_f32_e32 v22, v58, v50
	v_dual_fmac_f32 v32, v51, v43 :: v_dual_fmac_f32 v25, v56, v48
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v54, v77, 16, v76
	v_lshl_or_b32 v53, v79, 16, v78
	v_lshl_or_b32 v52, v85, 16, v84
	v_lshl_or_b32 v51, v87, 16, v86
	v_perm_b32 v96, v115, v114, 0xc0c0004
	v_perm_b32 v97, v113, v112, 0xc0c0004
	v_perm_b32 v98, v125, v124, 0xc0c0004
	v_perm_b32 v99, v123, v122, 0xc0c0004
	v_perm_b32 v104, v133, v132, 0xc0c0004
	v_perm_b32 v105, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v141, v140, 0xc0c0004
	v_perm_b32 v107, v139, v138, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v21, v67, v75
	v_fmac_f32_e32 v39, v71, v145
	v_fmac_f32_e32 v23, v57, v49
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v70, v93, 16, v92
	v_lshl_or_b32 v69, v95, 16, v94
	v_lshl_or_b32 v68, v101, 16, v100
	v_lshl_or_b32 v67, v103, 16, v102
	v_lshl_or_b32 v74, v80, 16, v82
	v_lshl_or_b32 v73, v83, 16, v81
	v_lshl_or_b32 v72, v89, 16, v88
	v_lshl_or_b32 v71, v91, 16, v90
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v97, 16, v96
	v_lshl_or_b32 v77, v99, 16, v98
	v_lshl_or_b32 v76, v105, 16, v104
	v_lshl_or_b32 v75, v107, 16, v106
	v_wmma_i32_16x16x16_iu8 v[51:58], v[71:74], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[67:70], v[63:66], v[43:50] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[51:58], v[75:78], v[63:66], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v59, v43
	v_cvt_f32_i32_e32 v60, v44
	v_cvt_f32_i32_e32 v61, v45
	v_cvt_f32_i32_e32 v63, v47
	v_cvt_f32_i32_e32 v64, v48
	v_cvt_f32_i32_e32 v65, v49
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v74, v58
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v75, 16, v120
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v62, v62, v75
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v43, 16, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v65, v65, v75
	ds_store_b32 v37, v43 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v19 offset:17408
	ds_load_b128 v[47:50], v19 offset:17424
	ds_load_b128 v[51:54], v19 offset:17920
	ds_load_b128 v[55:58], v19 offset:17936
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v34, v65, v49
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v73, v73, v75
	v_mul_f32_e32 v60, v60, v75
	v_mul_f32_e32 v72, v72, v75
	v_mul_f32_e32 v67, v67, v75
	v_mul_f32_e32 v69, v69, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v23, v73, v57 :: v_dual_mul_f32 v70, v70, v75
	v_fmac_f32_e32 v25, v72, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v68, v75
	v_dual_mul_f32 v63, v63, v75 :: v_dual_fmac_f32 v30, v69, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v29, v70, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v66, v66, v75 :: v_dual_fmac_f32 v31, v68, v52
	v_mul_f32_e32 v64, v64, v75
	v_mul_f32_e32 v71, v71, v75
	v_mul_f32_e32 v74, v74, v75
	v_mul_f32_e32 v61, v61, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v33, v66, v50
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v59, v59, v75 :: v_dual_fmac_f32 v38, v64, v48
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v42, v60, v44 :: v_dual_fmac_f32 v39, v63, v47
	v_fmac_f32_e32 v32, v67, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v21, v59, v43
	v_dual_fmac_f32 v27, v71, v55 :: v_dual_fmac_f32 v22, v74, v58
	v_dual_fmac_f32 v41, v61, v45 :: v_dual_fmac_f32 v40, v62, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, v21, v21 :: v_dual_max_f32 v2, v42, v42
	v_dual_max_f32 v7, v34, v34 :: v_dual_max_f32 v8, v33, v33
	v_dual_max_f32 v11, v32, v32 :: v_dual_max_f32 v12, v31, v31
	v_max_f32_e32 v13, v30, v30
	v_dual_max_f32 v3, v41, v41 :: v_dual_max_f32 v4, v40, v40
	v_dual_max_f32 v5, v39, v39 :: v_dual_max_f32 v6, v38, v38
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v20, 0, v12
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v21, 0, v13
	v_dual_max_f32 v12, v27, v27 :: v_dual_max_f32 v13, v25, v25
	v_max_f32_e32 v19, 0, v11
	v_dual_max_f32 v11, v29, v29 :: v_dual_max_f32 v14, v23, v23
	v_dual_max_f32 v15, v22, v22 :: v_dual_mul_f32 v18, v1, v1
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v22, 0, v11 :: v_dual_max_f32 v23, 0, v12
	v_max_f32_e32 v26, 0, v15
	v_dual_max_f32 v24, 0, v13 :: v_dual_max_f32 v25, 0, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v3, v3 :: v_dual_mul_f32 v17, v2, v2
	v_dual_mul_f32 v12, v7, v7 :: v_dual_mul_f32 v13, v4, v4
	v_dual_mul_f32 v14, v6, v6 :: v_dual_mul_f32 v15, v5, v5
	v_dual_mul_f32 v11, v8, v8 :: v_dual_mul_f32 v6, v21, v21
	v_dual_mul_f32 v8, v19, v19 :: v_dual_mul_f32 v7, v20, v20
	v_dual_mul_f32 v4, v23, v23 :: v_dual_mul_f32 v5, v22, v22
	v_dual_mul_f32 v2, v25, v25 :: v_dual_mul_f32 v3, v24, v24
	v_mul_f32_e32 v1, v26, v26
.LBB0_4:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, 0
	v_mov_b16_e32 v20.l, v18.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v20.h, v19.h
	v_mov_b16_e32 v21.h, v19.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v23, 1, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v19.l, v13.h
	v_mov_b16_e32 v22.l, v15.h
	v_mov_b16_e32 v22.h, v19.h
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v18, v18, v20, 0x7fff
	v_add3_u32 v17, v17, v23, 0x7fff
	v_and_b32_e32 v20, 1, v19
	v_mov_b16_e32 v19.l, v14.h
	v_add3_u32 v16, v16, v21, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v19.h
	v_add3_u32 v13, v13, v20, 0x7fff
	v_and_b32_e32 v20, 1, v19
	v_add3_u32 v15, v15, v18, 0x7fff
	v_mov_b16_e32 v19.l, v11.h
	v_and_b32_e32 v18, 1, v21
	v_mov_b16_e32 v13.l, v16.h
	v_add3_u32 v14, v14, v20, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v15, 1, v19
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v19.h
	v_mov_b16_e32 v19.l, v7.h
	v_add3_u32 v12, v12, v18, 0x7fff
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v19.h
	v_add3_u32 v11, v11, v15, 0x7fff
	v_and_b32_e32 v15, 1, v16
	v_and_b32_e32 v16, 1, v19
	v_mov_b16_e32 v19.l, v5.h
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v11.l, v12.h
	v_add3_u32 v8, v8, v15, 0x7fff
	v_mov_b16_e32 v15.l, v4.h
	v_and_b32_e32 v12, 1, v19
	v_add3_u32 v6, v6, v18, 0x7fff
	v_mov_b16_e32 v15.h, v19.h
	v_mov_b16_e32 v19.l, v3.h
	v_add3_u32 v7, v7, v16, 0x7fff
	v_add3_u32 v5, v5, v12, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v15
	v_and_b32_e32 v8, 1, v19
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v19.h
	v_mov_b16_e32 v19.l, v1.h
	v_add3_u32 v4, v4, v6, 0x7fff
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_and_b32_e32 v6, 1, v12
	v_and_b32_e32 v12, 1, v19
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_mov_b16_e32 v3.l, v4.h
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_add3_u32 v2, v2, v6, 0x7fff
	v_add3_u32 v1, v1, v12, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v10, s5, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v4, v17, v14, vcc_lo
	v_mov_b16_e32 v1.l, v2.h
	v_lshl_or_b32 v2, v8, 8, v8
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e32 v12, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v7, v1, v5 :: v_dual_and_b32 v2, 0x760076, v2
	v_lshl_or_b32 v0, v0, 4, v0
	v_dual_cndmask_b32 v8, v11, v13 :: v_dual_cndmask_b32 v11, v13, v11
	v_cndmask_b32_e32 v1, v5, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s22, s22, s5
	s_mov_b32 s0, 0x76543210
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v9, 1, v9
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v10, s22, s6, v10
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v6, v14, v17, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x5040504, v0
	v_and_b32_e32 v14, 0x7060706, v2
	v_permlanex16_b32 v5, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v6, v13
	v_perm_b32 v1, v4, v6, v14
	v_perm_b32 v2, v5, v8, v13
	v_perm_b32 v3, v5, v8, v14
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v8, v10, v9, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v4, v11, v12, v13
	v_perm_b32 v5, v11, v12, v14
	v_perm_b32 v6, v15, v7, v13
	v_perm_b32 v7, v15, v7, v14
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 149
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5304
; TotalNumSgprs: 37
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     149
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
