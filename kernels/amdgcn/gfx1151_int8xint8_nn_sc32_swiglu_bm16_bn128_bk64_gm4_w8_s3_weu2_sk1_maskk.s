	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 299 32 prologue_end           ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s18, 15
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
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
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
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s5, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s5, s7
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_mov_b32 s6, 0
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s4, s2, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s28, 63
	v_or_b32_e32 v43, s4, v2
.Ltmp13:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v1, s4, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow221
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v42, 0xf0, v0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v38, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s18, s5, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 4, v42
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s5, s28, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v44, 1, v2
	v_mul_lo_u32 v4, s28, v4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s0, s5, 31
.Ltmp20:
	.loc	1 318 34 is_stmt 1              ; generate_amdgcn.py:318:34
	s_mul_i32 s4, s4, s28
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s0, 27
.Ltmp22:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s5, s5, s0
.Ltmp24:
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v45, 3, v0
	v_add3_u32 v46, v4, v44, s4
	s_mov_b32 s4, 0
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s5, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshlrev_b32_e32 v4, 5, v0
.Ltmp26:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_lshlrev_b32_e32 v15, 1, v0
	v_bfe_i32 v16, v0, 6, 1
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s19, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v8, 4, v0
	v_and_b32_e32 v4, 0x160, v4
	v_bfe_i32 v17, v0, 2, 1
	v_mul_lo_u32 v14, s1, v45
	v_and_or_b32 v3, v3, 1, v1
	v_and_b32_e32 v15, 0x17e, v15
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v16, 0x90, v16
	v_and_b32_e32 v13, 0x70, v8
	v_and_or_b32 v4, 0x90, v17, v4
	v_or_b32_e32 v5, 14, v3
	v_or_b32_e32 v6, 12, v3
	v_or_b32_e32 v7, 10, v3
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v2, v16, v15
	v_or_b32_e32 v9, 8, v3
	v_or_b32_e32 v10, 6, v3
	v_or_b32_e32 v11, 4, v3
	v_or_b32_e32 v12, 2, v3
	v_add3_u32 v25, v14, v13, s18
	v_xor_b32_e32 v13, 16, v4
	v_mul_lo_u32 v48, v43, s29
	v_add_nc_u32_e32 v47, 0, v1
	v_or_b32_e32 v49, s18, v3
	v_or_b32_e32 v54, s18, v7
	v_or_b32_e32 v55, s18, v6
	v_or_b32_e32 v56, s18, v5
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v57, s19, v3
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v62, s19, v7
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v63, s19, v6
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v64, s19, v5
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v65, 0, v2
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v66, 0, v8
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v67, 0, v4
	v_mov_b32_e32 v1, s4
	v_or_b32_e32 v50, s18, v12
	v_or_b32_e32 v51, s18, v11
	v_or_b32_e32 v52, s18, v10
	v_or_b32_e32 v53, s18, v9
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v58, s19, v12
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v59, s19, v11
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v60, s19, v10
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v61, s19, v9
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v68, 0, v13
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v26, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
.Ltmp27:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s2, s2, 6
	s_lshl_b32 s30, s19, 6
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.Ltmp28:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s0, 6
	v_or_b32_e32 v11, s6, v44
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mad_u64_u32 v[9:10], null, s6, s1, v[25:26]
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	v_or_b32_e32 v12, s6, v45
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v13, s6, v46
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v10, s5, v44
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v11
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v14, s5, v45
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v15, s5, v46
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v12, s30, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v11, 0x80000000, v13, s0
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v10
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v10, s19, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v18, s19, v12
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v69, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v15, s0
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s28, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v19, 0x80000000, v12, s0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v21, 0x80000000, v18, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v71, v48, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s1
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v72, v49, s0, 1
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v76, v53, s0, 1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v70, v17, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[17:20], v19, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v50, s0, 1
	v_add_lshl_u32 v74, v51, s0, 1
	v_add_lshl_u32 v75, v52, s0, 1
	v_add_lshl_u32 v77, v54, s0, 1
	v_add_lshl_u32 v78, v55, s0, 1
	v_add_lshl_u32 v79, v56, s0, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s0, s0, s18
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v88, v48, s5, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s5, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v80, s0, v57, 1
	v_add_lshl_u32 v81, s0, v58, 1
	v_add_lshl_u32 v82, s0, v59, 1
	v_add_lshl_u32 v83, s0, v60, 1
	v_add_lshl_u32 v84, s0, v61, 1
	v_add_lshl_u32 v85, s0, v62, 1
	v_add_lshl_u32 v86, s0, v63, 1
	v_add_lshl_u32 v87, s0, v64, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v89, v49, s5, 1
	v_add_lshl_u32 v90, v50, s5, 1
	v_add_lshl_u32 v91, v51, s5, 1
	v_add_lshl_u32 v92, v52, s5, 1
	v_add_lshl_u32 v93, v53, s5, 1
	v_add_lshl_u32 v94, v54, s5, 1
	v_add_lshl_u32 v95, v55, s5, 1
	v_add_lshl_u32 v96, v56, s5, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s5, s5, s18
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v97, s5, v57, 1
	v_add_lshl_u32 v98, s5, v58, 1
	v_add_lshl_u32 v99, s5, v59, 1
	v_add_lshl_u32 v100, s5, v60, 1
	v_add_lshl_u32 v101, s5, v61, 1
	v_add_lshl_u32 v102, s5, v62, 1
	v_add_lshl_u32 v103, s5, v63, 1
	v_add_lshl_u32 v104, s5, v64, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v78, 0x80000000, v78
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v80, 0x80000000, v80
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	v_dual_cndmask_b32 v79, 0x80000000, v79 :: v_dual_cndmask_b32 v84, 0x80000000, v84
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v65, v69 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v66, v[9:12]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v66, v[13:16] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v65, v70 offset:16896
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v66, v[17:20] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v66, v[21:24] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v117, v71, s[8:11], 0 offen
	buffer_load_u16 v118, v88, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1f
	buffer_load_u16 v119, v72, s[12:15], 0 offen
	buffer_load_u16 v120, v73, s[12:15], 0 offen
	buffer_load_u16 v121, v80, s[12:15], 0 offen
	buffer_load_u16 v122, v81, s[12:15], 0 offen
	buffer_load_u16 v123, v90, s[12:15], 0 offen
	buffer_load_u16 v124, v89, s[12:15], 0 offen
	buffer_load_u16 v125, v98, s[12:15], 0 offen
	buffer_load_u16 v126, v97, s[12:15], 0 offen
	buffer_load_u16 v127, v74, s[12:15], 0 offen
	buffer_load_u16 v128, v75, s[12:15], 0 offen
	buffer_load_u16 v129, v82, s[12:15], 0 offen
	buffer_load_u16 v130, v83, s[12:15], 0 offen
	buffer_load_u16 v131, v92, s[12:15], 0 offen
	buffer_load_u16 v132, v91, s[12:15], 0 offen
	buffer_load_u16 v133, v100, s[12:15], 0 offen
	buffer_load_u16 v134, v99, s[12:15], 0 offen
	buffer_load_u16 v135, v76, s[12:15], 0 offen
	buffer_load_u16 v136, v77, s[12:15], 0 offen
	buffer_load_u16 v137, v84, s[12:15], 0 offen
	buffer_load_u16 v138, v85, s[12:15], 0 offen
	buffer_load_u16 v139, v94, s[12:15], 0 offen
	buffer_load_u16 v140, v93, s[12:15], 0 offen
	buffer_load_u16 v141, v102, s[12:15], 0 offen
	buffer_load_u16 v142, v101, s[12:15], 0 offen
	buffer_load_u16 v143, v78, s[12:15], 0 offen
	buffer_load_u16 v144, v79, s[12:15], 0 offen
	buffer_load_u16 v145, v86, s[12:15], 0 offen
	buffer_load_u16 v146, v87, s[12:15], 0 offen
	buffer_load_u16 v147, v96, s[12:15], 0 offen
	buffer_load_u16 v148, v95, s[12:15], 0 offen
	buffer_load_u16 v149, v104, s[12:15], 0 offen
	buffer_load_u16 v150, v103, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v47 offset:1664
	ds_load_u8 v10, v47 offset:1920
	ds_load_u8 v11, v47 offset:1792
	ds_load_u8 v12, v47 offset:1536
	ds_load_u8 v13, v47 offset:1152
	ds_load_u8 v14, v47 offset:1408
	ds_load_u8 v15, v47 offset:1280
	ds_load_u8 v16, v47 offset:1024
	ds_load_u8 v17, v47 offset:640
	ds_load_u8 v18, v47 offset:896
	ds_load_u8 v19, v47 offset:768
	ds_load_u8 v20, v47 offset:512
	ds_load_u8 v21, v47 offset:128
	ds_load_u8 v22, v47 offset:384
	ds_load_u8 v23, v47 offset:256
	ds_load_u8 v24, v47
	ds_load_u8 v73, v47 offset:3712
	ds_load_u8 v74, v47 offset:3968
	ds_load_u8 v75, v47 offset:3840
	ds_load_u8 v76, v47 offset:3584
	ds_load_u8 v77, v47 offset:3200
	ds_load_u8 v78, v47 offset:3456
	ds_load_u8 v79, v47 offset:3328
	ds_load_u8 v80, v47 offset:3072
	ds_load_u8 v81, v47 offset:2688
	ds_load_u8 v82, v47 offset:2944
	ds_load_u8 v83, v47 offset:2816
	ds_load_u8 v84, v47 offset:2560
	ds_load_u8 v97, v47 offset:2176
	ds_load_u8 v98, v47 offset:2432
	ds_load_u8 v99, v47 offset:2304
	ds_load_u8 v100, v47 offset:2048
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v101, v47 offset:9856
	ds_load_u8 v102, v47 offset:10112
	ds_load_u8 v103, v47 offset:9984
	ds_load_u8 v104, v47 offset:9728
	ds_load_u8 v105, v47 offset:9344
	ds_load_u8 v106, v47 offset:9600
	ds_load_u8 v107, v47 offset:9472
	ds_load_u8 v108, v47 offset:9216
	ds_load_u8 v109, v47 offset:8832
	ds_load_u8 v110, v47 offset:9088
	ds_load_u8 v111, v47 offset:8960
	ds_load_u8 v112, v47 offset:8704
	ds_load_u8 v113, v47 offset:8320
	ds_load_u8 v114, v47 offset:8576
	ds_load_u8 v115, v47 offset:8448
	ds_load_u8 v116, v47 offset:8192
	ds_load_u8 v151, v47 offset:11904
	ds_load_u8 v152, v47 offset:12160
	ds_load_u8 v153, v47 offset:12032
	ds_load_u8 v154, v47 offset:11776
	ds_load_u8 v155, v47 offset:11392
	ds_load_u8 v156, v47 offset:11648
	ds_load_u8 v157, v47 offset:11520
	ds_load_u8 v158, v47 offset:11264
	ds_load_u8 v159, v47 offset:10880
	ds_load_u8 v160, v47 offset:11136
	ds_load_u8 v161, v47 offset:11008
	ds_load_u8 v162, v47 offset:10752
	ds_load_u8 v163, v47 offset:10368
	ds_load_u8 v164, v47 offset:10624
	ds_load_u8 v165, v47 offset:10496
	ds_load_u8 v166, v47 offset:10240
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[69:72], v67 offset:16384
	ds_load_b128 v[85:88], v67 offset:16896
	ds_load_b128 v[89:92], v68 offset:16384
	ds_load_b128 v[93:96], v68 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v167, v47 offset:5760
	ds_load_u8 v168, v47 offset:6016
	ds_load_u8 v169, v47 offset:5888
	ds_load_u8 v170, v47 offset:5632
	ds_load_u8 v171, v47 offset:5248
	ds_load_u8 v172, v47 offset:5504
	ds_load_u8 v173, v47 offset:5376
	ds_load_u8 v174, v47 offset:5120
	ds_load_u8 v175, v47 offset:4736
	ds_load_u8 v176, v47 offset:4992
	ds_load_u8 v177, v47 offset:4864
	ds_load_u8 v178, v47 offset:4608
	ds_load_u8 v179, v47 offset:4224
	ds_load_u8 v180, v47 offset:4480
	ds_load_u8 v181, v47 offset:4352
	ds_load_u8 v182, v47 offset:4096
	ds_load_u8 v183, v47 offset:7808
	ds_load_u8 v184, v47 offset:8064
	ds_load_u8 v185, v47 offset:7936
	ds_load_u8 v186, v47 offset:7680
	ds_load_u8 v187, v47 offset:7296
	ds_load_u8 v188, v47 offset:7552
	ds_load_u8 v189, v47 offset:7424
	ds_load_u8 v190, v47 offset:7168
	ds_load_u8 v191, v47 offset:6784
	ds_load_u8 v192, v47 offset:7040
	ds_load_u8 v193, v47 offset:6912
	ds_load_u8 v194, v47 offset:6656
	ds_load_u8 v195, v47 offset:6272
	ds_load_u8 v196, v47 offset:6528
	ds_load_u8 v197, v47 offset:6400
	ds_load_u8 v198, v47 offset:6144
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v199, v47 offset:13952
	ds_load_u8 v200, v47 offset:14208
	ds_load_u8 v201, v47 offset:14080
	ds_load_u8 v202, v47 offset:13824
	ds_load_u8 v203, v47 offset:13440
	ds_load_u8 v204, v47 offset:13696
	ds_load_u8 v205, v47 offset:13568
	ds_load_u8 v206, v47 offset:13312
	ds_load_u8 v207, v47 offset:12928
	ds_load_u8 v208, v47 offset:13184
	ds_load_u8 v209, v47 offset:13056
	ds_load_u8 v210, v47 offset:12800
	ds_load_u8 v211, v47 offset:12416
	ds_load_u8 v212, v47 offset:12672
	ds_load_u8 v213, v47 offset:12544
	ds_load_u8 v214, v47 offset:12288
	ds_load_u8 v215, v47 offset:16000
	ds_load_u8 v216, v47 offset:16256
	ds_load_u8 v217, v47 offset:16128
	ds_load_u8 v218, v47 offset:15872
	ds_load_u8 v219, v47 offset:15488
	ds_load_u8 v220, v47 offset:15744
	ds_load_u8 v221, v47 offset:15616
	ds_load_u8 v222, v47 offset:15360
	ds_load_u8 v223, v47 offset:14976
	ds_load_u8 v224, v47 offset:15232
	ds_load_u8 v225, v47 offset:15104
	ds_load_u8 v226, v47 offset:14848
	ds_load_u8 v227, v47 offset:14464
	ds_load_u8 v228, v47 offset:14720
	ds_load_u8 v229, v47 offset:14592
	ds_load_u8 v230, v47 offset:14336
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v11, v16, v13, 0xc0c0004
	v_perm_b32 v12, v15, v14, 0xc0c0004
	v_perm_b32 v13, v20, v17, 0xc0c0004
	v_perm_b32 v14, v19, v18, 0xc0c0004
	v_perm_b32 v15, v24, v21, 0xc0c0004
	v_perm_b32 v16, v23, v22, 0xc0c0004
	v_perm_b32 v21, v76, v73, 0xc0c0004
	v_perm_b32 v22, v75, v74, 0xc0c0004
	v_perm_b32 v23, v80, v77, 0xc0c0004
	v_perm_b32 v24, v79, v78, 0xc0c0004
	v_perm_b32 v73, v84, v81, 0xc0c0004
	v_perm_b32 v74, v83, v82, 0xc0c0004
	v_perm_b32 v75, v100, v97, 0xc0c0004
	v_perm_b32 v76, v99, v98, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v77, v104, v101, 0xc0c0004
	v_perm_b32 v78, v103, v102, 0xc0c0004
	v_perm_b32 v79, v108, v105, 0xc0c0004
	v_perm_b32 v80, v107, v106, 0xc0c0004
	v_perm_b32 v81, v112, v109, 0xc0c0004
	v_perm_b32 v82, v111, v110, 0xc0c0004
	v_perm_b32 v83, v116, v113, 0xc0c0004
	v_perm_b32 v84, v115, v114, 0xc0c0004
	v_perm_b32 v101, v154, v151, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v110, v170, v167, 0xc0c0004
	v_perm_b32 v111, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v112, v174, v171, 0xc0c0004
	v_perm_b32 v113, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v114, v178, v175, 0xc0c0004
	v_perm_b32 v115, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v116, v182, v179, 0xc0c0004
	v_perm_b32 v151, v181, v180, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v102, v153, v152, 0xc0c0004
	v_perm_b32 v103, v158, v155, 0xc0c0004
	v_perm_b32 v105, v157, v156, 0xc0c0004
	v_perm_b32 v106, v162, v159, 0xc0c0004
	v_perm_b32 v107, v161, v160, 0xc0c0004
	v_perm_b32 v108, v166, v163, 0xc0c0004
	v_perm_b32 v109, v165, v164, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v152, v186, v183, 0xc0c0004
	v_perm_b32 v153, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v154, v190, v187, 0xc0c0004
	v_perm_b32 v155, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v156, v194, v191, 0xc0c0004
	v_perm_b32 v157, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v158, v198, v195, 0xc0c0004
	v_perm_b32 v159, v197, v196, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v160, v202, v199, 0xc0c0004
	v_perm_b32 v161, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v162, v206, v203, 0xc0c0004
	v_perm_b32 v163, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v164, v210, v207, 0xc0c0004
	v_perm_b32 v165, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v166, v214, v211, 0xc0c0004
	v_perm_b32 v167, v213, v212, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v20, v10, 16, v9
	v_lshl_or_b32 v19, v12, 16, v11
	v_lshl_or_b32 v18, v14, 16, v13
	v_lshl_or_b32 v17, v16, 16, v15
	v_lshl_or_b32 v98, v74, 16, v73
	v_lshl_or_b32 v97, v76, 16, v75
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v76, v78, 16, v77
	v_lshl_or_b32 v75, v80, 16, v79
	v_lshl_or_b32 v74, v82, 16, v81
	v_lshl_or_b32 v73, v84, 16, v83
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v80, v111, 16, v110
	v_lshl_or_b32 v79, v113, 16, v112
	v_lshl_or_b32 v78, v115, 16, v114
	v_lshl_or_b32 v77, v151, 16, v116
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v168, v218, v215, 0xc0c0004
	v_perm_b32 v169, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v170, v222, v219, 0xc0c0004
	v_perm_b32 v171, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v172, v226, v223, 0xc0c0004
	v_perm_b32 v173, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v230, v227, 0xc0c0004
	v_perm_b32 v175, v229, v228, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v100, v22, 16, v21
	v_lshl_or_b32 v99, v24, 16, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v104, v102, 16, v101
	v_lshl_or_b32 v103, v105, 16, v103
	v_lshl_or_b32 v102, v107, 16, v106
	v_lshl_or_b32 v101, v109, 16, v108
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v108, v153, 16, v152
	v_lshl_or_b32 v107, v155, 16, v154
	v_lshl_or_b32 v106, v157, 16, v156
	v_lshl_or_b32 v105, v159, 16, v158
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v112, v161, 16, v160
	v_lshl_or_b32 v111, v163, 16, v162
	v_lshl_or_b32 v110, v165, 16, v164
	v_lshl_or_b32 v109, v167, 16, v166
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[69:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[85:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v116, v169, 16, v168
	v_lshl_or_b32 v115, v171, 16, v170
	v_lshl_or_b32 v114, v173, 16, v172
	v_lshl_or_b32 v113, v175, 16, v174
	v_wmma_i32_16x16x16_iu8 v[77:84], v[109:112], v[85:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[89:92], v[9:16] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[17:24], v[101:104], v[89:92], v[17:24] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[69:76], v[105:108], v[93:96], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[77:84], v[113:116], v[93:96], v[77:84] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s2
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v86, 16, v118
	v_lshlrev_b32_e32 v85, 16, v117
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v88, 16, v120
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v90, 16, v122
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v70, v86, v70 :: v_dual_lshlrev_b32 v87, 16, v119
	v_dual_mul_f32 v10, v85, v10 :: v_dual_lshlrev_b32 v89, 16, v121
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v18, v85, v18
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v17, v85, v17 :: v_dual_lshlrev_b32 v92, 16, v124
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v80, v86, v80 :: v_dual_lshlrev_b32 v95, 16, v127
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v77, v86, v77 :: v_dual_lshlrev_b32 v96, 16, v128
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v14, v85, v14 :: v_dual_lshlrev_b32 v97, 16, v129
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v71, v86, v71 :: v_dual_lshlrev_b32 v98, 16, v130
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v22, v85, v22 :: v_dual_lshlrev_b32 v99, 16, v131
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v13, v85, v13 :: v_dual_lshlrev_b32 v102, 16, v134
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v82, v86, v82 :: v_dual_lshlrev_b32 v103, 16, v135
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v21, v85, v21 :: v_dual_lshlrev_b32 v104, 16, v136
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v16, v85, v16 :: v_dual_lshlrev_b32 v105, 16, v137
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v73, v86, v73 :: v_dual_lshlrev_b32 v106, 16, v138
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v24, v85, v24 :: v_dual_lshlrev_b32 v107, 16, v139
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v15, v85, v15 :: v_dual_lshlrev_b32 v110, 16, v142
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v84, v86, v84 :: v_dual_lshlrev_b32 v111, 16, v143
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v23, v85, v23 :: v_dual_lshlrev_b32 v112, 16, v144
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v40, v10, v88 :: v_dual_lshlrev_b32 v113, 16, v145
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v75, v86, v75 :: v_dual_lshlrev_b32 v114, 16, v146
	v_mul_f32_e32 v9, v85, v9
	v_mul_f32_e32 v11, v85, v11
	v_mul_f32_e32 v12, v85, v12
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v85, v19
	v_dual_mul_f32 v20, v85, v20 :: v_dual_lshlrev_b32 v91, 16, v123
	v_dual_mul_f32 v78, v86, v78 :: v_dual_lshlrev_b32 v93, 16, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v72, v86, v72
	v_dual_mul_f32 v69, v86, v69 :: v_dual_lshlrev_b32 v94, 16, v126
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v79, v86, v79 :: v_dual_lshlrev_b32 v100, 16, v132
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v74, v86, v74 :: v_dual_lshlrev_b32 v101, 16, v133
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v81, v86, v81 :: v_dual_lshlrev_b32 v108, 16, v140
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v76, v86, v76 :: v_dual_lshlrev_b32 v109, 16, v141
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v38, v17, v89 :: v_dual_lshlrev_b32 v115, 16, v147
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v83, v86, v83 :: v_dual_lshlrev_b32 v116, 16, v148
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v34, v11, v95 :: v_dual_lshlrev_b32 v117, 16, v149
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v39, v9, v87 :: v_dual_lshlrev_b32 v118, 16, v150
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v41, v18, v90 :: v_dual_fmac_f32 v36, v19, v97
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v12, v96 :: v_dual_fmac_f32 v32, v22, v106
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v37, v20, v98 :: v_dual_fmac_f32 v30, v14, v104
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v13, v103 :: v_dual_fmac_f32 v26, v16, v112
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v33, v21, v105 :: v_dual_fmac_f32 v28, v24, v114
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v27, v15, v111 :: v_dual_fmac_f32 v38, v77, v94
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v29, v23, v113 :: v_dual_fmac_f32 v40, v70, v91
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v39, v69, v92 :: v_dual_fmac_f32 v30, v74, v107
	v_dual_fmac_f32 v34, v71, v100 :: v_dual_fmac_f32 v35, v72, v99
	v_dual_fmac_f32 v31, v73, v108 :: v_dual_fmac_f32 v26, v76, v115
	v_dual_fmac_f32 v27, v75, v116 :: v_dual_fmac_f32 v32, v82, v109
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v41, v78, v93 :: v_dual_fmac_f32 v36, v79, v102
	v_fmac_f32_e32 v37, v80, v101
	v_dual_fmac_f32 v33, v81, v110 :: v_dual_fmac_f32 v28, v84, v117
	v_fmac_f32_e32 v29, v83, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v43
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, 0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v25.h, v13.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v29
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v4, v5
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, 0xbfb8aa3b, v37 :: v_dual_add_f32 v3, 1.0, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v6
	v_exp_f32_e32 v6, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_mul_f32_e32 v12, 0xbfb8aa3b, v28
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v6, v6, v7
	v_exp_f32_e32 v7, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_exp_f32_e32 v10, v15
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v3, v3, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v12
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v5, v7, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v10, v14
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, vcc_lo, v41, v3, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v15, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_fmac_f32 v7, v19, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v6, v6, v38
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, s0, v38, v6, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v9, v16
	v_mul_f32_e32 v23, v18, v7
	v_div_scale_f32 v22, null, v10, v10, v37
	v_div_scale_f32 v19, null, v5, v5, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v15, v23, v18
	v_rcp_f32_e32 v42, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v16, v9, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v23, v43, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, s1, v37, v10, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v9, v20, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v20, v22
	v_fma_f32 v15, -v15, v23, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v24, v21, v9
	v_div_fmas_f32 v7, v15, v7, v23
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v44, -v16, v24, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v8, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v22, v20, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v7, v3, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v20, v8, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v24, v44, v9
	v_fma_f32 v44, -v19, v42, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v40, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v15, v43, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v16, v24, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v17, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v22, v15, v43
	v_div_fmas_f32 v8, v8, v9, v24
	v_div_scale_f32 v9, s0, v36, v5, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v44, v42 :: v_dual_fmac_f32 v15, v14, v20
	v_div_fixup_f32 v6, v8, v6, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v14, null, v4, v4, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v9, v42
	v_fma_f32 v18, -v22, v15, v43
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v39, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.h, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v19, v8, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v12, v18, v20, v15
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v6.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v8, v16, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v19, v8, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v6, v17, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v9, v42, v8
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v9, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v12, v10, v37
	v_div_fixup_f32 v5, v8, v5, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v35, v10 :: v_dual_mul_f32 v5, v34, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v9, v9, v17
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v10.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v6, v6, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v9, v9, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v14, v7, 1.0
	v_rcp_f32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v23, v21
	v_fmac_f32_e32 v7, v19, v7
	v_div_scale_f32 v12, vcc_lo, v32, v4, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v15, v12, v7
	v_fma_f32 v8, -v16, v20, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v14, v15, v12
	v_dual_fmac_f32 v20, v8, v20 :: v_dual_fmac_f32 v15, v18, v7
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v8, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, s0, v33, v6, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v14, v15, v12
	v_mul_f32_e32 v19, v11, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v12, v7, v15
	v_fma_f32 v12, -v21, v23, 1.0
	v_fma_f32 v18, -v16, v19, v11
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v7, v4, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v19, v18, v20
	v_div_scale_f32 v17, null, v8, v8, v28
	v_fmac_f32_e32 v23, v12, v23
	v_div_scale_f32 v12, s2, v29, v9, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v22, v17
	v_fma_f32 v11, -v16, v19, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v18, v12, v23
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v30, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v11, v20, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v21, v18, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v10, v16, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v17, v22, 1.0
	v_div_fixup_f32 v6, v11, v6, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v18, v20, v23
	v_fmac_f32_e32 v22, v14, v22
	v_div_scale_f32 v14, s1, v28, v8, v28
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v31, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, v14, v22
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v17, v15, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v11, v22
	v_fma_f32 v11, -v21, v18, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v5, v19, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v17, v15, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v22, v15
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v11, v11, v23, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v5, v6, v7, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v10, v8, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v11, v9, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v13
	v_cmp_o_f32_e64 s0, v4, v4
	v_cndmask_b16 v14.l, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v27, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v4, v11, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v26, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v8.h
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v4.h
	v_cmp_eq_u32_e64 s0, 0, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v5, 1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v9, 1, v13
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cndmask_b32_e64 v6, 0x3276, v6, s0
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b32_e64 v10, v7, v3, s0
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, v1, s19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v1, v3, v7, s0
	v_cndmask_b32_e64 v3, v14, v6, s0
	v_lshl_or_b32 v0, v0, 4, v0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b32_e64 v6, v6, v14, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v0
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x7060706, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v8, s18, v2
	s_mov_b32 s19, 0x31027000
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v0, v1, v10, v7
	v_perm_b32 v2, v3, v6, v7
	v_perm_b32 v1, v1, v10, v4
	v_perm_b32 v3, v3, v6, v4
	v_add_lshl_u32 v4, v8, v5, 1
	s_mov_b32 s18, 0x7ffffffe
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp29:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 31
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
		.amdhsa_inst_pref_size 56
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 231
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7072
; TotalNumSgprs: 33
; NumVgprs: 231
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 33
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     231
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
