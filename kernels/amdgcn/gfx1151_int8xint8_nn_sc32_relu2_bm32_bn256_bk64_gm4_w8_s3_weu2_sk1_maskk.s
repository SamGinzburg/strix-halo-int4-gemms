	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x30
	s_load_b32 s23, s[0:1], 0x38
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s5, 0xff
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s4, s4, 31
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s7, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s6, s6, s7
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s4, s4, s9
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s6, 8
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s6, s6, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s10, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s8, s10
	s_abs_i32 s10, s2
	s_add_i32 s8, s8, s9
	s_xor_b32 s9, s2, s6
	s_mul_hi_u32 s8, s10, s8
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s11, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s7, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s9
	s_sub_i32 s7, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s8, s7, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s7, s7, s6
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s4, s8
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s7
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s9, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s7, s2
	s_abs_i32 s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s4
	s_sub_i32 s11, 0, s4
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s6, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s6
	s_mul_hi_u32 s6, s7, s10
	s_xor_b32 s10, s2, s9
	s_mul_i32 s11, s6, s4
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s7, s7, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s10
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s9
	s_sub_i32 s7, s2, s6
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s23, 63
.Ltmp12:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s7, s7, s8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s6, s5, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr6
.LBB0_3:                                ; %Flow
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v9, 0xf0, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v10, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	s_lshl_b32 s22, s7, 5
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s7, s4, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v34, 0 :: v_dual_lshlrev_b32 v1, 2, v0
	s_mov_b32 s8, 0
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s4, s22, s23
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v2, s23, v2
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v11, 4, v9
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp14:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s23, 31
	v_bfe_i32 v5, v0, 2, 1
	v_lshrrev_b32_e32 v7, 1, v0
	v_mul_lo_u32 v3, s5, v11
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s6, s1, 31
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s6, 27
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
.Ltmp19:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 28, v1
	v_and_or_b32 v7, 0x70, v7, v10
	v_lshrrev_b32_e32 v18, 6, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	v_lshl_add_u32 v15, v10, 4, v3
	v_add3_u32 v14, v2, v12, s4
	v_lshlrev_b32_e32 v2, 5, v0
	s_ashr_i32 s34, s1, 5
	v_bfe_i32 v3, v0, 5, 1
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v20, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 0x160, v2
	v_lshlrev_b32_e32 v7, 1, v9
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v6, 0x37c, v1
	v_and_b32_e32 v3, 0x90, v3
	v_and_or_b32 v4, 0x90, v5, v4
	v_or_b32_e32 v5, s22, v10
	v_and_b32_e32 v1, 0x1c0, v1
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v2, 32, v2
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v30, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v17, 16, v5
	v_mul_lo_u32 v22, v5, s34
	v_and_b32_e32 v5, 2, v18
	v_xor_b32_e32 v3, v3, v6
	v_dual_mov_b32 v55, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_mul_lo_u32 v24, v17, s34
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v17, 1, v0
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_xor_b32_e32 v8, 16, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v17, 28, v17
	v_add3_u32 v18, v5, v1, v2
	v_add3_u32 v19, v30, v7, v2
	s_lshl_b32 s6, s5, 4
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v42, 0, v3
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v44, 0, v6
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v45, 0, v4
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v51, 0, v8
	v_mov_b32_e32 v1, s8
.Ltmp21:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v13, 16, v11
	v_dual_mov_b32 v5, s12 :: v_dual_add_nc_u32 v16, s6, v15
	v_or_b32_e32 v31, s7, v0
	v_dual_mov_b32 v2, s9 :: v_dual_mov_b32 v3, s10
	v_mov_b32_e32 v4, s11
	v_dual_mov_b32 v6, s13 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v8, s15
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v58, v18, v17
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v59, v19, v17
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s33, s2, 6
	s_lshl_b32 s35, s5, 5
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
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s10, s0, 6
	v_or_b32_e32 v60, s10, v12
	v_or_b32_e32 v62, s10, v13
	s_or_b32 s9, s10, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s0, s10, s5
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v61, s10, v11
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v63, s10, v14
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v65, s9, v11
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s1, s23, v60
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s0, s0, s7
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v64, s9, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v68, s0, v15
	v_add_nc_u32_e32 v69, s0, v16
	s_add_i32 s2, s0, s35
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s23, v62
	v_cmp_gt_i32_e32 vcc_lo, s23, v61
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v60, 0x80000000, v63, s1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v61, s2, v15
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s23, v65
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v66, s9, v13
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v67, s9, v14
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s4, s23, v64
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v65, 0x80000000, v69, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s10, 5
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v64, 0x80000000, v68, vcc_lo
	v_cndmask_b32_e64 v68, 0x80000000, v61, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v62, s2, v16
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s23, v66
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v63, 0x80000000, v67, s4
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v79, v31, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s34
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v76, v60, s[24:27], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v72, 0x80000000, v62, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v77, v63, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[60:63], v64, s[28:31], 0 offen
	buffer_load_b128 v[64:67], v65, s[28:31], 0 offen
	buffer_load_b128 v[68:71], v68, s[28:31], 0 offen
	buffer_load_b128 v[72:75], v72, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v78, v22, s0, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v42, v76 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v44, v[60:63]
	s_waitcnt vmcnt(2)
	ds_store_b128 v44, v[64:67] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v42, v77 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[68:71] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[72:75] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v60, v79, s[16:19], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v61, v24, s0, 1
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s9, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	s_clause 0x1
	buffer_load_u16 v120, v78, s[12:15], 0 offen
	buffer_load_u16 v121, v61, s[12:15], 0 offen
	v_add_lshl_u32 v62, v22, s0, 1
	v_add_lshl_u32 v63, v24, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v64, v31, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s8, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v117, 0x80000000, v62 :: v_dual_cndmask_b32 v118, 0x80000000, v63
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v119, 0x80000000, v64, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[77:80], v45 offset:16384
	ds_load_b128 v[93:96], v45 offset:16896
	ds_load_b128 v[97:100], v51 offset:16384
	ds_load_b128 v[101:104], v51 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v61, v20 offset:3328
	ds_load_u8 v62, v20 offset:3072
	ds_load_u8 v63, v20 offset:3840
	ds_load_u8 v64, v20 offset:3584
	ds_load_u8 v65, v20 offset:3968
	ds_load_u8 v66, v20 offset:3712
	ds_load_u8 v67, v20 offset:3456
	ds_load_u8 v68, v20 offset:3200
	ds_load_u8 v69, v20 offset:2304
	ds_load_u8 v70, v20 offset:2048
	ds_load_u8 v71, v20 offset:2816
	ds_load_u8 v72, v20 offset:2560
	ds_load_u8 v73, v20 offset:2944
	ds_load_u8 v74, v20 offset:2688
	ds_load_u8 v75, v20 offset:2432
	ds_load_u8 v76, v20 offset:2176
	ds_load_u8 v81, v20 offset:1280
	ds_load_u8 v82, v20 offset:1024
	ds_load_u8 v83, v20 offset:1792
	ds_load_u8 v84, v20 offset:1536
	ds_load_u8 v85, v20 offset:1920
	ds_load_u8 v86, v20 offset:1664
	ds_load_u8 v87, v20 offset:1408
	ds_load_u8 v88, v20 offset:1152
	ds_load_u8 v89, v20 offset:256
	ds_load_u8 v90, v20
	ds_load_u8 v91, v20 offset:768
	ds_load_u8 v92, v20 offset:512
	ds_load_u8 v105, v20 offset:896
	ds_load_u8 v106, v20 offset:640
	ds_load_u8 v107, v20 offset:384
	ds_load_u8 v108, v20 offset:128
	ds_load_u8 v109, v20 offset:7424
	ds_load_u8 v110, v20 offset:7168
	ds_load_u8 v111, v20 offset:7936
	ds_load_u8 v112, v20 offset:7680
	ds_load_u8 v113, v20 offset:8064
	ds_load_u8 v114, v20 offset:7808
	ds_load_u8 v115, v20 offset:7552
	ds_load_u8 v116, v20 offset:7296
	ds_load_u8 v122, v20 offset:6400
	ds_load_u8 v123, v20 offset:6144
	ds_load_u8 v124, v20 offset:6912
	ds_load_u8 v125, v20 offset:6656
	ds_load_u8 v126, v20 offset:7040
	ds_load_u8 v127, v20 offset:6784
	ds_load_u8 v128, v20 offset:6528
	ds_load_u8 v129, v20 offset:6272
	ds_load_u8 v130, v20 offset:5376
	ds_load_u8 v131, v20 offset:5120
	ds_load_u8 v132, v20 offset:5888
	ds_load_u8 v133, v20 offset:5632
	ds_load_u8 v134, v20 offset:6016
	ds_load_u8 v135, v20 offset:5760
	ds_load_u8 v136, v20 offset:5504
	ds_load_u8 v137, v20 offset:5248
	ds_load_u8 v138, v20 offset:4352
	ds_load_u8 v139, v20 offset:4096
	ds_load_u8 v140, v20 offset:4864
	ds_load_u8 v141, v20 offset:4608
	ds_load_u8 v142, v20 offset:4992
	ds_load_u8 v143, v20 offset:4736
	ds_load_u8 v144, v20 offset:4480
	ds_load_u8 v145, v20 offset:4224
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v62, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v63, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v64, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v69, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v70, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v71, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v72, v92, v91, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v76, v75, 0xc0c0004
	v_perm_b32 v68, v74, v73, 0xc0c0004
	v_perm_b32 v73, v88, v87, 0xc0c0004
	v_perm_b32 v74, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v75, v108, v107, 0xc0c0004
	v_perm_b32 v76, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v81, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v82, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v83, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v84, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v89, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v90, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v141, v140, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v114, v129, v128, 0xc0c0004
	v_perm_b32 v122, v127, v126, 0xc0c0004
	v_perm_b32 v123, v137, v136, 0xc0c0004
	v_perm_b32 v124, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v145, v144, 0xc0c0004
	v_perm_b32 v126, v143, v142, 0xc0c0004
	v_lshl_or_b32 v88, v62, 16, v61
	v_lshl_or_b32 v87, v64, 16, v63
	v_lshl_or_b32 v86, v70, 16, v69
	v_lshl_or_b32 v85, v72, 16, v71
	v_lshl_or_b32 v112, v65, 16, v67
	v_lshl_or_b32 v111, v68, 16, v66
	v_lshl_or_b32 v110, v74, 16, v73
	v_lshl_or_b32 v109, v76, 16, v75
	v_lshl_or_b32 v108, v82, 16, v81
	v_lshl_or_b32 v107, v84, 16, v83
	v_lshl_or_b32 v106, v90, 16, v89
	v_lshl_or_b32 v105, v92, 16, v91
	v_lshl_or_b32 v116, v113, 16, v115
	v_lshl_or_b32 v115, v122, 16, v114
	v_lshl_or_b32 v114, v124, 16, v123
	v_lshl_or_b32 v113, v126, 16, v125
	v_wmma_i32_16x16x16_iu8 v[61:68], v[85:88], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[109:112], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[93:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[109:112], v[93:96], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[113:116], v[97:100], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[105:108], v[97:100], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[105:108], v[101:104], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[113:116], v[101:104], v[85:92] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s8, s33
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v111, v76
	v_cvt_f32_i32_e32 v106, v63
	v_cvt_f32_i32_e32 v104, v61
	v_cvt_f32_i32_e32 v105, v62
	v_cvt_f32_i32_e32 v107, v64
	v_cvt_f32_i32_e32 v108, v65
	v_cvt_f32_i32_e32 v109, v66
	v_cvt_f32_i32_e32 v110, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v112, v77
	v_cvt_f32_i32_e32 v113, v78
	v_cvt_f32_i32_e32 v114, v79
	v_cvt_f32_i32_e32 v115, v92
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	ds_store_b16 v58, v60 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v116, v117, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v117, v119, s[16:19], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v118, v118, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v119, 16, v120
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v120, 16, v121
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[60:63], v30 offset:18432
	ds_load_b128 v[64:67], v30 offset:18448
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[76:79], v45 offset:17408
	ds_load_b128 v[92:95], v45 offset:17920
	ds_load_b128 v[96:99], v51 offset:17408
	ds_load_b128 v[100:103], v51 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v121, v20 offset:11520
	ds_load_u8 v122, v20 offset:11264
	ds_load_u8 v123, v20 offset:12032
	ds_load_u8 v124, v20 offset:11776
	ds_load_u8 v125, v20 offset:12160
	ds_load_u8 v126, v20 offset:11904
	ds_load_u8 v127, v20 offset:11648
	ds_load_u8 v128, v20 offset:11392
	ds_load_u8 v129, v20 offset:10496
	ds_load_u8 v130, v20 offset:10240
	ds_load_u8 v131, v20 offset:11008
	ds_load_u8 v132, v20 offset:10752
	ds_load_u8 v133, v20 offset:11136
	ds_load_u8 v134, v20 offset:10880
	ds_load_u8 v135, v20 offset:10624
	ds_load_u8 v136, v20 offset:10368
	ds_load_u8 v137, v20 offset:9472
	ds_load_u8 v138, v20 offset:9216
	ds_load_u8 v139, v20 offset:9984
	ds_load_u8 v140, v20 offset:9728
	ds_load_u8 v141, v20 offset:10112
	ds_load_u8 v142, v20 offset:9856
	ds_load_u8 v143, v20 offset:9600
	ds_load_u8 v144, v20 offset:9344
	ds_load_u8 v145, v20 offset:8448
	ds_load_u8 v146, v20 offset:8192
	ds_load_u8 v147, v20 offset:8960
	ds_load_u8 v148, v20 offset:8704
	ds_load_u8 v149, v20 offset:9088
	ds_load_u8 v150, v20 offset:8832
	ds_load_u8 v151, v20 offset:8576
	ds_load_u8 v152, v20 offset:8320
	ds_load_u8 v153, v20 offset:15616
	ds_load_u8 v154, v20 offset:15360
	ds_load_u8 v155, v20 offset:16128
	ds_load_u8 v156, v20 offset:15872
	ds_load_u8 v157, v20 offset:16256
	ds_load_u8 v158, v20 offset:16000
	ds_load_u8 v159, v20 offset:15744
	ds_load_u8 v160, v20 offset:15488
	ds_load_u8 v161, v20 offset:14592
	ds_load_u8 v162, v20 offset:14336
	ds_load_u8 v163, v20 offset:15104
	ds_load_u8 v164, v20 offset:14848
	ds_load_u8 v165, v20 offset:15232
	ds_load_u8 v166, v20 offset:14976
	ds_load_u8 v167, v20 offset:14720
	ds_load_u8 v168, v20 offset:14464
	ds_load_u8 v169, v20 offset:13568
	ds_load_u8 v170, v20 offset:13312
	ds_load_u8 v171, v20 offset:14080
	ds_load_u8 v172, v20 offset:13824
	ds_load_u8 v173, v20 offset:14208
	ds_load_u8 v174, v20 offset:13952
	ds_load_u8 v175, v20 offset:13696
	ds_load_u8 v176, v20 offset:13440
	ds_load_u8 v177, v20 offset:12544
	ds_load_u8 v178, v20 offset:12288
	ds_load_u8 v179, v20 offset:13056
	ds_load_u8 v180, v20 offset:12800
	ds_load_u8 v181, v20 offset:13184
	ds_load_u8 v182, v20 offset:12928
	ds_load_u8 v183, v20 offset:12672
	ds_load_u8 v184, v20 offset:12416
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(62)
	v_lshlrev_b32_e32 v185, 16, v62
	v_lshlrev_b32_e32 v186, 16, v63
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v106, v106, v119
	v_mul_f32_e32 v114, v114, v120
	v_mul_f32_e32 v115, v115, v120
	v_mul_f32_e32 v112, v112, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v113, v113, v120 :: v_dual_fmac_f32 v56, v106, v185
	v_mul_f32_e32 v107, v107, v119
	v_dual_mul_f32 v68, v68, v119 :: v_dual_mul_f32 v83, v83, v120
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v190, 16, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v105, v105, v119
	v_dual_mul_f32 v109, v109, v119 :: v_dual_mul_f32 v80, v80, v120
	v_dual_mul_f32 v110, v110, v119 :: v_dual_mul_f32 v81, v81, v120
	v_dual_mul_f32 v69, v69, v119 :: v_dual_mul_f32 v82, v82, v120
	v_dual_mul_f32 v70, v70, v119 :: v_dual_mul_f32 v85, v85, v120
	v_dual_mul_f32 v71, v71, v119 :: v_dual_mul_f32 v84, v84, v120
	v_dual_mul_f32 v72, v72, v119 :: v_dual_mul_f32 v87, v87, v120
	v_dual_mul_f32 v73, v73, v119 :: v_dual_mul_f32 v86, v86, v120
	v_dual_mul_f32 v74, v74, v119 :: v_dual_mul_f32 v89, v89, v120
	v_dual_mul_f32 v75, v75, v119 :: v_dual_mul_f32 v88, v88, v120
	v_dual_mul_f32 v111, v111, v119 :: v_dual_mul_f32 v90, v90, v120
	v_dual_mul_f32 v91, v91, v120 :: v_dual_lshlrev_b32 v120, 16, v61
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v55, v107, v186 :: v_dual_lshlrev_b32 v188, 16, v65
	v_dual_fmac_f32 v50, v68, v190 :: v_dual_and_b32 v61, 0xffff0000, v61
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v104, v104, v119 :: v_dual_lshlrev_b32 v189, 16, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v108, v108, v119 :: v_dual_fmac_f32 v57, v105, v120
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v53, v109, v188 :: v_dual_and_b32 v62, 0xffff0000, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v70, v61 :: v_dual_lshlrev_b32 v187, 16, v64
	v_dual_fmac_f32 v52, v110, v189 :: v_dual_lshlrev_b32 v119, 16, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v47, v71, v62 :: v_dual_and_b32 v60, 0xffff0000, v60
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v66, 0xffff0000, v66
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v122, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v123, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v124, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v129, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v130, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v131, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v132, v148, v147, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v126, v136, v135, 0xc0c0004
	v_perm_b32 v128, v134, v133, 0xc0c0004
	v_perm_b32 v133, v144, v143, 0xc0c0004
	v_perm_b32 v134, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v135, v152, v151, 0xc0c0004
	v_perm_b32 v136, v150, v149, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v54, v108, v187
	v_fmac_f32_e32 v34, v104, v119
	v_dual_fmac_f32 v36, v114, v185 :: v_dual_and_b32 v67, 0xffff0000, v67
	v_fmac_f32_e32 v49, v69, v60
	v_dual_fmac_f32 v40, v75, v66 :: v_dual_and_b32 v63, 0xffff0000, v63
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v65, 0xffff0000, v65
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v137, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v138, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v139, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v140, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v145, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v146, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v147, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v148, v180, v179, 0xc0c0004
	v_perm_b32 v141, v160, v159, 0xc0c0004
	v_perm_b32 v142, v158, v157, 0xc0c0004
	v_perm_b32 v143, v168, v167, 0xc0c0004
	v_perm_b32 v144, v166, v165, 0xc0c0004
	v_perm_b32 v149, v176, v175, 0xc0c0004
	v_perm_b32 v150, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v184, v183, 0xc0c0004
	v_perm_b32 v152, v182, v181, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v46, v72, v63
	v_dual_fmac_f32 v41, v74, v65 :: v_dual_and_b32 v64, 0xffff0000, v64
	v_dual_fmac_f32 v39, v111, v67 :: v_dual_fmac_f32 v32, v82, v188
	v_dual_fmac_f32 v37, v113, v120 :: v_dual_fmac_f32 v28, v84, v190
	v_dual_fmac_f32 v35, v80, v186 :: v_dual_fmac_f32 v26, v86, v61
	v_fmac_f32_e32 v27, v85, v60
	v_fmac_f32_e32 v25, v87, v62
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v87, v122, 16, v121
	v_lshl_or_b32 v86, v124, 16, v123
	v_lshl_or_b32 v85, v130, 16, v129
	v_lshl_or_b32 v84, v132, 16, v131
	v_lshl_or_b32 v111, v125, 16, v127
	v_lshl_or_b32 v110, v128, 16, v126
	v_lshl_or_b32 v109, v134, 16, v133
	v_lshl_or_b32 v108, v136, 16, v135
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v43, v73, v64 :: v_dual_fmac_f32 v38, v112, v119
	v_dual_fmac_f32 v33, v81, v187 :: v_dual_fmac_f32 v18, v91, v66
	v_fmac_f32_e32 v29, v83, v189
	v_fmac_f32_e32 v23, v88, v63
	v_fmac_f32_e32 v21, v89, v64
	v_fmac_f32_e32 v19, v90, v65
	v_fmac_f32_e32 v17, v115, v67
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v107, v138, 16, v137
	v_lshl_or_b32 v106, v140, 16, v139
	v_lshl_or_b32 v105, v146, 16, v145
	v_lshl_or_b32 v104, v148, 16, v147
	v_lshl_or_b32 v115, v142, 16, v141
	v_lshl_or_b32 v114, v144, 16, v143
	v_lshl_or_b32 v113, v150, 16, v149
	v_lshl_or_b32 v112, v152, 16, v151
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[108:111], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[108:111], v[92:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[104:107], v[96:99], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[96:99], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[104:107], v[100:103], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[112:115], v[100:103], v[84:91] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v116
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v94, 16, v117
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v102, v67, v92 :: v_dual_lshlrev_b32 v93, 16, v118
	v_dual_mul_f32 v95, v60, v92 :: v_dual_mul_f32 v78, v78, v93
	v_mul_f32_e32 v96, v61, v92
	v_dual_mul_f32 v97, v62, v92 :: v_dual_mul_f32 v80, v80, v93
	v_mul_f32_e32 v98, v63, v92
	v_dual_mul_f32 v99, v64, v92 :: v_dual_mul_f32 v82, v82, v93
	v_mul_f32_e32 v100, v65, v92
	v_dual_mul_f32 v101, v66, v92 :: v_dual_mul_f32 v84, v84, v93
	v_dual_mul_f32 v103, v68, v92 :: v_dual_mul_f32 v86, v86, v93
	v_mul_f32_e32 v104, v69, v92
	v_dual_mul_f32 v105, v70, v92 :: v_dual_mul_f32 v88, v88, v93
	v_dual_mul_f32 v106, v71, v92 :: v_dual_mul_f32 v77, v77, v93
	v_dual_mul_f32 v107, v72, v92 :: v_dual_mul_f32 v90, v90, v93
	v_dual_mul_f32 v108, v73, v92 :: v_dual_mul_f32 v79, v79, v93
	ds_store_b32 v59, v94 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v30 offset:18432
	ds_load_b128 v[64:67], v30 offset:18448
	v_mul_f32_e32 v109, v74, v92
	v_dual_mul_f32 v92, v75, v92 :: v_dual_mul_f32 v81, v81, v93
	ds_load_b128 v[68:71], v30 offset:18944
	ds_load_b128 v[72:75], v30 offset:18960
	v_mul_f32_e32 v76, v76, v93
	v_mul_f32_e32 v83, v83, v93
	v_mul_f32_e32 v85, v85, v93
	v_mul_f32_e32 v87, v87, v93
	v_mul_f32_e32 v89, v89, v93
	v_mul_f32_e32 v91, v91, v93
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v34, v95, v60
	v_dual_fmac_f32 v56, v97, v62 :: v_dual_fmac_f32 v57, v96, v61
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v55, v98, v63 :: v_dual_fmac_f32 v54, v99, v64
	v_dual_fmac_f32 v53, v100, v65 :: v_dual_fmac_f32 v36, v78, v62
	v_fmac_f32_e32 v52, v101, v66
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v50, v102, v67 :: v_dual_fmac_f32 v49, v103, v68
	v_fmac_f32_e32 v32, v81, v65
	v_dual_fmac_f32 v48, v104, v69 :: v_dual_fmac_f32 v47, v105, v70
	v_fmac_f32_e32 v38, v76, v60
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v46, v106, v71 :: v_dual_fmac_f32 v43, v107, v72
	v_fmac_f32_e32 v26, v85, v69
	v_dual_fmac_f32 v41, v108, v73 :: v_dual_fmac_f32 v28, v83, v67
	v_dual_fmac_f32 v40, v109, v74 :: v_dual_fmac_f32 v39, v92, v75
	v_dual_fmac_f32 v18, v90, v74 :: v_dual_fmac_f32 v37, v77, v61
	v_fmac_f32_e32 v35, v79, v63
	v_fmac_f32_e32 v33, v80, v64
	v_fmac_f32_e32 v29, v82, v66
	v_fmac_f32_e32 v27, v84, v68
	v_fmac_f32_e32 v25, v86, v70
	v_fmac_f32_e32 v23, v87, v71
	v_fmac_f32_e32 v21, v88, v72
	v_fmac_f32_e32 v19, v89, v73
	v_fmac_f32_e32 v17, v91, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, v38, v38 :: v_dual_max_f32 v31, v33, v33
	v_max_f32_e32 v22, v39, v39
	v_max_f32_e32 v26, v26, v26
	v_dual_max_f32 v5, v54, v54 :: v_dual_max_f32 v6, v53, v53
	v_dual_max_f32 v15, v43, v43 :: v_dual_max_f32 v16, v41, v41
	v_max_f32_e32 v39, 0, v24
	v_dual_max_f32 v24, v36, v36 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v45, 0, v26
	v_max_f32_e32 v38, 0, v22
	v_dual_max_f32 v22, v37, v37 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v7, v52, v52 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, v50, v50
	v_max_f32_e32 v16, 0, v16
	v_dual_max_f32 v36, 0, v24 :: v_dual_max_f32 v21, v21, v21
	v_max_f32_e32 v24, v28, v28
	v_dual_max_f32 v30, v35, v35 :: v_dual_max_f32 v35, 0, v22
	v_dual_max_f32 v22, v29, v29 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v1, v34, v34 :: v_dual_max_f32 v2, v57, v57
	v_dual_max_f32 v3, v56, v56 :: v_dual_max_f32 v4, v55, v55
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v12, v48, v48
	v_dual_max_f32 v11, v49, v49 :: v_dual_max_f32 v14, v46, v46
	v_dual_max_f32 v13, v47, v47 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v20, v40, v40 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v40, 0, v31 :: v_dual_max_f32 v17, v17, v17
	v_max_f32_e32 v42, 0, v22
	v_dual_max_f32 v22, v23, v23 :: v_dual_mul_f32 v29, v6, v6
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v41, 0, v32
	v_dual_max_f32 v44, 0, v27 :: v_dual_mul_f32 v33, v1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v46, 0, v25 :: v_dual_mul_f32 v31, v4, v4
	v_max_f32_e32 v47, 0, v22
	v_max_f32_e32 v43, 0, v24
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v37, 0, v30
	v_dual_max_f32 v48, 0, v21 :: v_dual_mul_f32 v25, v12, v12
	v_max_f32_e32 v49, 0, v19
	v_max_f32_e32 v51, 0, v17
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v8, v8 :: v_dual_max_f32 v50, 0, v18
	v_dual_mul_f32 v21, v16, v16 :: v_dual_mul_f32 v34, v2, v2
	v_mul_f32_e32 v17, v35, v35
	v_dual_mul_f32 v32, v3, v3 :: v_dual_mul_f32 v23, v14, v14
	v_dual_mul_f32 v30, v5, v5 :: v_dual_mul_f32 v19, v38, v38
	v_mul_f32_e32 v28, v7, v7
	v_mul_f32_e32 v26, v11, v11
	v_dual_mul_f32 v24, v13, v13 :: v_dual_mul_f32 v11, v43, v43
	v_dual_mul_f32 v22, v15, v15 :: v_dual_mul_f32 v7, v45, v45
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v5, v47, v47
	v_dual_mul_f32 v18, v39, v39 :: v_dual_mul_f32 v3, v49, v49
	v_dual_mul_f32 v16, v36, v36 :: v_dual_mul_f32 v1, v51, v51
	v_dual_mul_f32 v15, v37, v37 :: v_dual_mul_f32 v14, v40, v40
	v_dual_mul_f32 v13, v41, v41 :: v_dual_mul_f32 v12, v42, v42
	v_mul_f32_e32 v8, v44, v44
	v_mul_f32_e32 v6, v46, v46
	v_mul_f32_e32 v4, v48, v48
	v_mul_f32_e32 v2, v50, v50
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v9, 1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s22, s22, s5
	v_mul_lo_u32 v36, s5, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v33.h
	v_mov_b16_e32 v10.h, v35.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v38, s22, s7, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v9, 1, v35
	v_mov_b16_e32 v37.l, v32.h
	v_mov_b16_e32 v37.h, v35.h
	v_mov_b16_e32 v35.l, v31.h
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v9, v34, v9, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v34, 1, v37
	v_mov_b16_e32 v37.l, v30.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_add3_u32 v10, v33, v10, 0x7fff
	v_and_b32_e32 v33, 1, v35
	v_mov_b16_e32 v35.l, v29.h
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v10.h
	v_add3_u32 v10, v32, v34, 0x7fff
	v_add3_u32 v31, v31, v33, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v34.h, v35.h
	v_mov_b16_e32 v31.l, v10.h
	v_and_b32_e32 v33, 1, v37
	v_add3_u32 v29, v29, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v32, 1, v34
	v_add3_u32 v10, v30, v33, 0x7fff
	v_and_b32_e32 v30, 1, v35
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v33.l, v26.h
	v_mov_b16_e32 v33.h, v35.h
	v_mov_b16_e32 v29.l, v10.h
	v_add3_u32 v10, v28, v32, 0x7fff
	v_add3_u32 v27, v27, v30, 0x7fff
	v_and_b32_e32 v28, 1, v35
	v_and_b32_e32 v30, 1, v33
	v_mov_b16_e32 v35.l, v23.h
	v_mov_b16_e32 v32.l, v24.h
	v_mov_b16_e32 v32.h, v35.h
	v_mov_b16_e32 v27.l, v10.h
	v_add3_u32 v10, v26, v30, 0x7fff
	v_add3_u32 v25, v25, v28, 0x7fff
	v_and_b32_e32 v26, 1, v35
	v_and_b32_e32 v28, 1, v32
	v_mov_b16_e32 v35.l, v21.h
	v_mov_b16_e32 v30.l, v22.h
	v_mov_b16_e32 v30.h, v35.h
	v_mov_b16_e32 v25.l, v10.h
	v_add3_u32 v10, v24, v28, 0x7fff
	v_add3_u32 v23, v23, v26, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_and_b32_e32 v26, 1, v30
	v_mov_b16_e32 v35.l, v19.h
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v35.h
	v_mov_b16_e32 v23.l, v10.h
	v_add3_u32 v10, v22, v26, 0x7fff
	v_add3_u32 v21, v21, v24, 0x7fff
	v_and_b32_e32 v22, 1, v35
	v_and_b32_e32 v24, 1, v28
	v_mov_b16_e32 v35.l, v17.h
	v_mov_b16_e32 v26.l, v18.h
	v_mov_b16_e32 v26.h, v35.h
	v_mov_b16_e32 v21.l, v10.h
	v_add3_u32 v10, v20, v24, 0x7fff
	v_add3_u32 v19, v19, v22, 0x7fff
	v_and_b32_e32 v20, 1, v35
	v_and_b32_e32 v22, 1, v26
	v_mov_b16_e32 v24.l, v16.h
	v_mov_b16_e32 v24.h, v35.h
	v_mov_b16_e32 v35.l, v15.h
	v_mov_b16_e32 v19.l, v10.h
	v_add3_u32 v10, v18, v22, 0x7fff
	v_add3_u32 v17, v17, v20, 0x7fff
	v_and_b32_e32 v20, 1, v24
	v_mov_b16_e32 v22.l, v14.h
	v_mov_b16_e32 v22.h, v35.h
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v13.h
	v_mov_b16_e32 v17.l, v10.h
	v_add3_u32 v10, v16, v20, 0x7fff
	v_and_b32_e32 v16, 1, v22
	v_mov_b16_e32 v20.l, v12.h
	v_mov_b16_e32 v20.h, v35.h
	v_add3_u32 v15, v15, v18, 0x7fff
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v15.l, v10.h
	v_add3_u32 v10, v14, v16, 0x7fff
	v_mov_b16_e32 v35.l, v11.h
	v_and_b32_e32 v14, 1, v20
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v35.h
	v_add3_u32 v13, v13, v18, 0x7fff
	v_mov_b16_e32 v13.l, v10.h
	v_and_b32_e32 v10, 1, v35
	v_add3_u32 v12, v12, v14, 0x7fff
	v_mov_b16_e32 v35.l, v7.h
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v6.h
	v_add3_u32 v10, v11, v10, 0x7fff
	v_mov_b16_e32 v10.l, v12.h
	v_and_b32_e32 v11, 1, v35
	v_add3_u32 v8, v8, v14, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v35.h
	v_mov_b16_e32 v35.l, v5.h
	v_cndmask_b32_e32 v18, v13, v17, vcc_lo
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b32_e32 v14, 0x7632
	v_add3_u32 v7, v7, v11, 0x7fff
	v_mov_b16_e32 v11.l, v4.h
	v_mov_b16_e32 v11.h, v35.h
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v3.h
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v2, v2, v12, 0x7fff
	v_mov_b32_e32 v12, 0x5410
	v_add3_u32 v5, v5, v8, 0x7fff
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v1.h
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v14, vcc_lo
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v35
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v14, v14, 8, v14
	v_add3_u32 v0, v1, v6, 0x7fff
	v_mov_b16_e32 v0.l, v2.h
	v_dual_cndmask_b32 v6, v31, v27 :: v_dual_cndmask_b32 v13, v17, v13
	v_dual_cndmask_b32 v17, v10, v15 :: v_dual_cndmask_b32 v10, v15, v10
	v_cndmask_b32_e32 v15, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_and_b32_e32 v7, 0x540054, v12
	v_and_b32_e32 v12, 0x760076, v14
	v_dual_cndmask_b32 v2, v9, v29 :: v_dual_add_nc_u32 v39, s6, v36
	v_cndmask_b32_e32 v1, v29, v9, vcc_lo
	v_cndmask_b32_e32 v9, v25, v21, vcc_lo
	v_cndmask_b32_e32 v11, v19, v23, vcc_lo
	v_dual_cndmask_b32 v16, v23, v19 :: v_dual_cndmask_b32 v19, v0, v5
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo
	v_permlanex16_b32 v5, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v7, 4, v7
	v_lshl_or_b32 v7, v12, 4, v12
	v_cndmask_b32_e32 v4, v27, v31, vcc_lo
	v_cndmask_b32_e32 v8, v21, v25, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x5040504, v6
	v_and_b32_e32 v16, 0x7060706, v7
	v_permlanex16_b32 v20, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v14
	v_perm_b32 v1, v2, v1, v16
	v_perm_b32 v2, v5, v4, v14
	v_perm_b32 v3, v5, v4, v16
	v_perm_b32 v4, v9, v8, v14
	v_perm_b32 v5, v9, v8, v16
	v_perm_b32 v6, v12, v11, v14
	v_perm_b32 v7, v12, v11, v16
	v_perm_b32 v8, v13, v18, v14
	v_perm_b32 v9, v13, v18, v16
	v_perm_b32 v11, v20, v17, v16
	v_perm_b32 v12, v21, v15, v14
	v_perm_b32 v13, v21, v15, v16
	v_perm_b32 v15, v22, v19, v16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v38, v36, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v10, v20, v17, v14
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v38, v39, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v22, v19, v14
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 191
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6816
; TotalNumSgprs: 38
; NumVgprs: 191
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
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
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     191
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
