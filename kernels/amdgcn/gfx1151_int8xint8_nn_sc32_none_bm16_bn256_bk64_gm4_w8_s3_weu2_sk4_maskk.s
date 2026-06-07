	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v5, 0xf0, v0
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v10, 1, v5
	v_lshlrev_b32_e32 v11, 2, v5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s5, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s28, 0xff
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s24, s5, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s7
	v_or_b32_e32 v13, s24, v0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v1, s24, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v6, 1, v5
	v_lshlrev_b32_e32 v3, 2, v5
	v_and_b32_e32 v12, 28, v2
	v_and_b32_e32 v9, 32, v4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow259
	s_load_b64 s[26:27], s[0:1], 0x20
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s29, s4, 4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v30, 4, v5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s28, 31
	v_lshrrev_b32_e32 v9, 6, v0
.Ltmp16:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	v_mul_lo_u32 v5, s25, v30
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s4, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s4, 27
	s_mov_b32 s4, 0
	v_bfe_i32 v6, v0, 2, 1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_add_u32 v34, v1, 4, v5
	v_mul_lo_u32 v3, s28, v30
.Ltmp21:
	.loc	1 312 26 is_stmt 1              ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 6
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s3, s29, s28
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s10
	s_mov_b32 s21, s11
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v14, 2, v9
	v_and_b32_e32 v5, 0x160, v4
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v9, 32, v4
	v_lshlrev_b32_e32 v12, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v14
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v31, 1, v1
	v_and_or_b32 v5, 0x90, v6, v5
	v_lshrrev_b32_e32 v6, 1, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	v_and_b32_e32 v7, 0x17e, v2
	v_add3_u32 v33, v3, v31, s3
	v_bfe_i32 v3, v0, 6, 1
	v_and_or_b32 v6, 0x70, v6, v1
	v_or_b32_e32 v1, s29, v1
	s_ashr_i32 s33, s1, 5
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v38, 0, v10
	v_and_b32_e32 v3, 0x90, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v37, v1, s33
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v1, 0x1c0, v12
	v_xor_b32_e32 v8, 16, v5
	v_xor_b32_e32 v3, v3, v7
	v_dual_mov_b32 v28, 0 :: v_dual_lshlrev_b32 v7, 4, v0
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v12, 28, v2
	v_add3_u32 v15, v4, v1, v9
	v_add3_u32 v16, v38, v10, v9
	v_add_nc_u32_e32 v36, 0, v6
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v39, 0, v3
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v40, 0, v7
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v41, 0, v5
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v42, 0, v8
	v_mov_b32_e32 v1, s4
.Ltmp23:
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_or_b32_e32 v32, 16, v30
	v_lshl_add_u32 v35, s25, 4, v34
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v43, v15, v12
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v44, v16, v12
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v15, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s31, s2, 8
	s_lshl_b32 s34, s25, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
.Ltmp25:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s6, s6, s30
	v_or_b32_e32 v45, s6, v31
	v_or_b32_e32 v47, s6, v32
	s_or_b32 s5, s6, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s0, s6, s25
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v46, s6, v30
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v48, s6, v33
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v50, s5, v30
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s1, s28, v45
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s0, s0, s24
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v49, s5, v31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v53, s0, v34
	v_add_nc_u32_e32 v54, s0, v35
	s_add_i32 s2, s0, s34
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s28, v47
	v_cmp_gt_i32_e32 vcc_lo, s28, v46
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v45, 0x80000000, v48, s1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v46, s2, v34
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s28, v50
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v51, s5, v32
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v52, s5, v33
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s3, s28, v49
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v50, 0x80000000, v54, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s6, 5
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v49, 0x80000000, v53, vcc_lo
	v_cndmask_b32_e64 v53, 0x80000000, v46, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s25
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v47, s2, v35
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s28, v51
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v48, 0x80000000, v52, s3
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v64, v13, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s33
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v61, v45, s[16:19], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v57, 0x80000000, v47, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v62, v48, s[16:19], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[45:48], v49, s[20:23], 0 offen
	buffer_load_b128 v[49:52], v50, s[20:23], 0 offen
	buffer_load_b128 v[53:56], v53, s[20:23], 0 offen
	buffer_load_b128 v[57:60], v57, s[20:23], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v63, v37, s0, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s5, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v39, v61 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v40, v[45:48]
	s_waitcnt vmcnt(2)
	ds_store_b128 v40, v[49:52] offset:4096
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v46, v37, s0, 1
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s33
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_barrier
	ds_store_b16 v39, v62 offset:16896
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[53:56] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[57:60] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	buffer_load_u16 v81, v63, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v45, v64, s[12:15], 0 offen
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s25
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	ds_load_b128 v[61:64], v41 offset:16384
	ds_load_b128 v[65:68], v42 offset:16384
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v48, v36 offset:3328
	ds_load_u8 v49, v36 offset:3072
	ds_load_u8 v50, v36 offset:3840
	ds_load_u8 v51, v36 offset:3584
	ds_load_u8 v52, v36 offset:3968
	ds_load_u8 v53, v36 offset:3712
	ds_load_u8 v54, v36 offset:3456
	ds_load_u8 v55, v36 offset:3200
	ds_load_u8 v56, v36 offset:2304
	ds_load_u8 v57, v36 offset:2048
	ds_load_u8 v58, v36 offset:2816
	ds_load_u8 v59, v36 offset:2560
	ds_load_u8 v60, v36 offset:2944
	ds_load_u8 v69, v36 offset:2688
	ds_load_u8 v70, v36 offset:2432
	ds_load_u8 v71, v36 offset:2176
	ds_load_u8 v72, v36 offset:1280
	ds_load_u8 v73, v36 offset:1024
	ds_load_u8 v74, v36 offset:1792
	ds_load_u8 v75, v36 offset:1536
	ds_load_u8 v76, v36 offset:1920
	ds_load_u8 v77, v36 offset:1664
	ds_load_u8 v78, v36 offset:1408
	ds_load_u8 v79, v36 offset:1152
	ds_load_u8 v80, v36 offset:256
	ds_load_u8 v82, v36
	ds_load_u8 v83, v36 offset:768
	ds_load_u8 v84, v36 offset:512
	ds_load_u8 v85, v36 offset:896
	ds_load_u8 v86, v36 offset:640
	ds_load_u8 v87, v36 offset:384
	ds_load_u8 v88, v36 offset:128
	ds_load_u8 v89, v36 offset:7424
	ds_load_u8 v90, v36 offset:7168
	ds_load_u8 v91, v36 offset:7936
	ds_load_u8 v92, v36 offset:7680
	ds_load_u8 v93, v36 offset:8064
	ds_load_u8 v94, v36 offset:7808
	ds_load_u8 v95, v36 offset:7552
	ds_load_u8 v96, v36 offset:7296
	ds_load_u8 v97, v36 offset:6400
	ds_load_u8 v98, v36 offset:6144
	ds_load_u8 v99, v36 offset:6912
	ds_load_u8 v100, v36 offset:6656
	ds_load_u8 v101, v36 offset:7040
	ds_load_u8 v102, v36 offset:6784
	ds_load_u8 v103, v36 offset:6528
	ds_load_u8 v104, v36 offset:6272
	ds_load_u8 v105, v36 offset:5376
	ds_load_u8 v106, v36 offset:5120
	ds_load_u8 v107, v36 offset:5888
	ds_load_u8 v108, v36 offset:5632
	ds_load_u8 v109, v36 offset:6016
	ds_load_u8 v110, v36 offset:5760
	ds_load_u8 v111, v36 offset:5504
	ds_load_u8 v112, v36 offset:5248
	ds_load_u8 v113, v36 offset:4352
	ds_load_u8 v114, v36 offset:4096
	ds_load_u8 v115, v36 offset:4864
	ds_load_u8 v116, v36 offset:4608
	ds_load_u8 v117, v36 offset:4992
	ds_load_u8 v118, v36 offset:4736
	ds_load_u8 v119, v36 offset:4480
	ds_load_u8 v120, v36 offset:4224
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v47, v13, s1, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v60, v69, v60, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v77, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v79, v88, v87, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v86, v96, v95, 0xc0c0004
	v_perm_b32 v87, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v88, v104, v103, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s31
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v120, v119, 0xc0c0004
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v43, v45 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v121, v47, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v122, v46, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v45, v49, v48, 0xc0c0004
	v_perm_b32 v46, v51, v50, 0xc0c0004
	v_perm_b32 v47, v57, v56, 0xc0c0004
	v_perm_b32 v48, v59, v58, 0xc0c0004
	v_perm_b32 v49, v73, v72, 0xc0c0004
	v_perm_b32 v50, v75, v74, 0xc0c0004
	v_perm_b32 v51, v82, v80, 0xc0c0004
	v_perm_b32 v57, v84, v83, 0xc0c0004
	v_perm_b32 v58, v90, v89, 0xc0c0004
	v_perm_b32 v59, v92, v91, 0xc0c0004
	v_perm_b32 v73, v98, v97, 0xc0c0004
	v_perm_b32 v74, v100, v99, 0xc0c0004
	v_perm_b32 v75, v106, v105, 0xc0c0004
	v_perm_b32 v80, v108, v107, 0xc0c0004
	v_perm_b32 v82, v114, v113, 0xc0c0004
	v_perm_b32 v83, v116, v115, 0xc0c0004
	v_perm_b32 v84, v55, v54, 0xc0c0004
	v_perm_b32 v89, v71, v70, 0xc0c0004
	v_lshl_or_b32 v56, v46, 16, v45
	v_lshl_or_b32 v55, v48, 16, v47
	v_lshl_or_b32 v54, v50, 16, v49
	v_lshl_or_b32 v53, v57, 16, v51
	v_perm_b32 v90, v102, v101, 0xc0c0004
	v_perm_b32 v91, v112, v111, 0xc0c0004
	v_perm_b32 v92, v110, v109, 0xc0c0004
	v_lshl_or_b32 v72, v59, 16, v58
	v_lshl_or_b32 v71, v74, 16, v73
	v_lshl_or_b32 v70, v80, 16, v75
	v_lshl_or_b32 v69, v83, 16, v82
	v_lshl_or_b32 v76, v52, 16, v84
	v_lshl_or_b32 v75, v60, 16, v89
	v_lshl_or_b32 v74, v77, 16, v78
	v_lshl_or_b32 v73, v85, 16, v79
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v87, 16, v86
	v_lshl_or_b32 v79, v90, 16, v88
	v_lshl_or_b32 v78, v92, 16, v91
	v_lshl_or_b32 v77, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[53:60], v[73:76], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[69:72], v[65:68], v[45:52] neg_lo:[1,1,0]
	ds_load_u8 v136, v36 offset:12544
	ds_load_u8 v137, v36 offset:12288
	ds_load_u8 v138, v36 offset:13056
	ds_load_u8 v139, v36 offset:12800
	ds_load_u8 v140, v36 offset:13184
	ds_load_u8 v141, v36 offset:12928
	ds_load_u8 v142, v36 offset:12672
	ds_load_u8 v143, v36 offset:12416
	v_wmma_i32_16x16x16_iu8 v[53:60], v[77:80], v[65:68], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v46
	v_cvt_f32_i32_e32 v70, v47
	v_cvt_f32_i32_e32 v71, v48
	v_cvt_f32_i32_e32 v72, v49
	v_cvt_f32_i32_e32 v73, v50
	v_cvt_f32_i32_e32 v74, v51
	v_cvt_f32_i32_e32 v75, v52
	v_cvt_f32_i32_e32 v76, v45
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[45:48], v38 offset:17408
	ds_load_b128 v[49:52], v38 offset:17424
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[61:64], v41 offset:16896
	ds_load_b128 v[65:68], v42 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v77, v36 offset:11520
	ds_load_u8 v78, v36 offset:11264
	ds_load_u8 v79, v36 offset:12032
	ds_load_u8 v80, v36 offset:11776
	ds_load_u8 v82, v36 offset:12160
	ds_load_u8 v83, v36 offset:11904
	ds_load_u8 v84, v36 offset:11648
	ds_load_u8 v85, v36 offset:11392
	ds_load_u8 v86, v36 offset:10496
	ds_load_u8 v87, v36 offset:10240
	ds_load_u8 v88, v36 offset:11008
	ds_load_u8 v89, v36 offset:10752
	ds_load_u8 v90, v36 offset:11136
	ds_load_u8 v91, v36 offset:10880
	ds_load_u8 v92, v36 offset:10624
	ds_load_u8 v93, v36 offset:10368
	ds_load_u8 v94, v36 offset:9472
	ds_load_u8 v95, v36 offset:9216
	ds_load_u8 v96, v36 offset:9984
	ds_load_u8 v97, v36 offset:9728
	ds_load_u8 v98, v36 offset:10112
	ds_load_u8 v99, v36 offset:9856
	ds_load_u8 v100, v36 offset:9600
	ds_load_u8 v101, v36 offset:9344
	ds_load_u8 v102, v36 offset:8448
	ds_load_u8 v103, v36 offset:8192
	ds_load_u8 v104, v36 offset:8960
	ds_load_u8 v105, v36 offset:8704
	ds_load_u8 v106, v36 offset:9088
	ds_load_u8 v107, v36 offset:8832
	ds_load_u8 v108, v36 offset:8576
	ds_load_u8 v109, v36 offset:8320
	ds_load_u8 v110, v36 offset:15616
	ds_load_u8 v111, v36 offset:15360
	ds_load_u8 v112, v36 offset:16128
	ds_load_u8 v113, v36 offset:15872
	ds_load_u8 v114, v36 offset:16256
	ds_load_u8 v115, v36 offset:16000
	ds_load_u8 v116, v36 offset:15744
	ds_load_u8 v117, v36 offset:15488
	ds_load_u8 v118, v36 offset:14592
	ds_load_u8 v119, v36 offset:14336
	ds_load_u8 v120, v36 offset:15104
	ds_load_u8 v123, v36 offset:14848
	ds_load_u8 v124, v36 offset:15232
	ds_load_u8 v125, v36 offset:14976
	ds_load_u8 v126, v36 offset:14720
	ds_load_u8 v127, v36 offset:14464
	ds_load_u8 v128, v36 offset:13568
	ds_load_u8 v129, v36 offset:13312
	ds_load_u8 v130, v36 offset:14080
	ds_load_u8 v131, v36 offset:13824
	ds_load_u8 v132, v36 offset:14208
	ds_load_u8 v133, v36 offset:13952
	ds_load_u8 v134, v36 offset:13696
	ds_load_u8 v135, v36 offset:13440
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v144, v81, v69
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(59)
	v_lshlrev_b32_e32 v156, 16, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v157, 16, v47
	s_waitcnt lgkmcnt(58)
	v_lshlrev_b32_e32 v162, 16, v52
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v69, v89, v88, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v28, v144, v156 :: v_dual_mul_f32 v145, v81, v70
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v146, v81, v71
	v_mul_f32_e32 v147, v81, v72
	v_mul_f32_e32 v148, v81, v73
	v_dual_mul_f32 v150, v81, v75 :: v_dual_lshlrev_b32 v155, 16, v45
	v_mul_f32_e32 v151, v81, v53
	v_mul_f32_e32 v152, v81, v54
	v_dual_mul_f32 v153, v81, v55 :: v_dual_lshlrev_b32 v158, 16, v48
	v_mul_f32_e32 v154, v81, v56
	v_mul_f32_e32 v59, v81, v59
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v26, v145, v157 :: v_dual_and_b32 v47, 0xffff0000, v47
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_perm_b32 v53, v78, v77, 0xc0c0004
	v_perm_b32 v54, v80, v79, 0xc0c0004
	v_perm_b32 v55, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v70, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v71, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v72, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v73, v105, v104, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v149, v81, v74
	v_dual_mul_f32 v57, v81, v57 :: v_dual_lshlrev_b32 v160, 16, v50
	v_dual_mul_f32 v58, v81, v58 :: v_dual_lshlrev_b32 v159, 16, v49
	v_dual_mul_f32 v60, v81, v60 :: v_dual_lshlrev_b32 v161, 16, v51
	v_mul_f32_e32 v81, v76, v81
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v45, 0xffff0000, v45
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v25, v153, v47 :: v_dual_and_b32 v46, 0xffff0000, v46
	v_dual_fmac_f32 v17, v150, v162 :: v_dual_and_b32 v48, 0xffff0000, v48
	v_dual_fmac_f32 v24, v146, v158 :: v_dual_and_b32 v49, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v23, v154, v48 :: v_dual_and_b32 v50, 0xffff0000, v50
	v_dual_fmac_f32 v20, v148, v160 :: v_dual_and_b32 v51, 0xffff0000, v51
	v_dual_fmac_f32 v27, v152, v46 :: v_dual_and_b32 v52, 0xffff0000, v52
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v74, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v75, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v76, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v77, v123, v120, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v78, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v131, v130, 0xc0c0004
	v_perm_b32 v80, v137, v136, 0xc0c0004
	v_perm_b32 v86, v139, v138, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v83, v93, v92, 0xc0c0004
	v_perm_b32 v85, v91, v90, 0xc0c0004
	v_perm_b32 v87, v101, v100, 0xc0c0004
	v_perm_b32 v88, v99, v98, 0xc0c0004
	v_perm_b32 v89, v109, v108, 0xc0c0004
	v_perm_b32 v90, v107, v106, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	v_lshl_or_b32 v55, v69, 16, v55
	v_lshl_or_b32 v54, v71, 16, v70
	v_lshl_or_b32 v53, v73, 16, v72
	v_perm_b32 v91, v117, v116, 0xc0c0004
	v_perm_b32 v92, v115, v114, 0xc0c0004
	v_perm_b32 v93, v127, v126, 0xc0c0004
	v_perm_b32 v94, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v135, v134, 0xc0c0004
	v_perm_b32 v96, v133, v132, 0xc0c0004
	v_perm_b32 v97, v143, v142, 0xc0c0004
	v_perm_b32 v98, v141, v140, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_lshl_or_b32 v71, v77, 16, v76
	v_lshl_or_b32 v70, v79, 16, v78
	v_lshl_or_b32 v69, v86, 16, v80
	v_lshl_or_b32 v76, v82, 16, v84
	v_lshl_or_b32 v75, v85, 16, v83
	v_lshl_or_b32 v74, v88, 16, v87
	v_lshl_or_b32 v73, v90, 16, v89
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v14, v81, v155
	v_dual_fmac_f32 v22, v147, v159 :: v_dual_fmac_f32 v21, v57, v49
	v_dual_fmac_f32 v18, v149, v161 :: v_dual_fmac_f32 v19, v58, v50
	v_fmac_f32_e32 v29, v151, v45
	v_dual_fmac_f32 v16, v59, v51 :: v_dual_fmac_f32 v15, v60, v52
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v92, 16, v91
	v_lshl_or_b32 v79, v94, 16, v93
	v_lshl_or_b32 v78, v96, 16, v95
	v_lshl_or_b32 v77, v98, 16, v97
	v_wmma_i32_16x16x16_iu8 v[53:60], v[73:76], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[69:72], v[65:68], v[45:52] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[53:60], v[77:80], v[65:68], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v76, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	v_cvt_f32_i32_e32 v73, v58
	v_cvt_f32_i32_e32 v74, v59
	v_cvt_f32_i32_e32 v75, v60
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v77, 16, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v62, v77, v62 :: v_dual_lshlrev_b32 v45, 16, v121
	ds_store_b32 v44, v45 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v38 offset:17408
	ds_load_b128 v[49:52], v38 offset:17424
	ds_load_b128 v[53:56], v38 offset:17920
	ds_load_b128 v[57:60], v38 offset:17936
	v_mul_f32_e32 v76, v76, v77
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v14, v76, v45 :: v_dual_mul_f32 v71, v77, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v70, v77, v70
	v_mul_f32_e32 v72, v77, v72
	v_dual_mul_f32 v61, v77, v61 :: v_dual_fmac_f32 v26, v62, v47
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v23, v71, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v77, v68 :: v_dual_fmac_f32 v25, v70, v55
	v_mul_f32_e32 v64, v77, v64
	v_mul_f32_e32 v63, v77, v63
	v_mul_f32_e32 v65, v77, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v29, v68, v53
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v67, v77, v67 :: v_dual_fmac_f32 v22, v64, v49
	v_mul_f32_e32 v66, v77, v66
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v74, v77, v74 :: v_dual_fmac_f32 v21, v72, v57
	v_mul_f32_e32 v73, v77, v73
	v_mul_f32_e32 v75, v77, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v17, v67, v52
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v69, v77, v69 :: v_dual_fmac_f32 v18, v66, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v28, v61, v46 :: v_dual_fmac_f32 v15, v75, v60
	v_fmac_f32_e32 v24, v63, v48
	v_fmac_f32_e32 v20, v65, v50
	v_dual_fmac_f32 v27, v69, v54 :: v_dual_fmac_f32 v16, v74, v59
	v_fmac_f32_e32 v19, v73, v58
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v13 :: v_dual_mov_b32 v6, v10
	v_mov_b32_e32 v3, v11
.LBB0_7:                                ; %._crit_edge
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_bfe_i32 v2, v0, 3, 1
	v_and_b32_e32 v4, 7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or3_b32 v3, v3, v9, v12
	s_mov_b32 s0, 0
	v_and_b32_e32 v2, 0x2040, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, v4, 2, v6
	v_xad_u32 v9, 0x1010, v3, 0
	v_xad_u32 v12, 0x1c1c, v3, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, s25, v[1:2]
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v2, v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v4, 10, v2
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v5, 0, v4
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	v_xad_u32 v13, v4, 24, 0
	v_xad_u32 v6, v4, 4, 0
	v_xad_u32 v7, v4, 8, 0
	v_xad_u32 v8, v4, 12, 0
	v_xad_u32 v10, v4, 16, 0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	v_xad_u32 v11, v4, 20, 0
	v_xad_u32 v4, v4, 28, 0
	ds_store_2addr_stride64_b32 v5, v14, v29 offset1:2
	ds_store_2addr_stride64_b32 v6, v28, v27 offset1:2
	ds_store_2addr_stride64_b32 v7, v26, v25 offset1:2
	ds_store_2addr_stride64_b32 v8, v24, v23 offset1:2
	ds_store_2addr_stride64_b32 v10, v22, v21 offset1:2
	ds_store_2addr_stride64_b32 v11, v20, v19 offset1:2
	ds_store_2addr_stride64_b32 v13, v18, v16 offset1:2
	ds_store_2addr_stride64_b32 v4, v17, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v4, v[1:2], off
	v_add_nc_u32_e32 v5, 0, v3
	v_xad_u32 v6, 0x404, v3, 0
	v_xad_u32 v7, 0x808, v3, 0
	v_xad_u32 v8, 0xc0c, v3, 0
	v_xad_u32 v10, 0x1414, v3, 0
	v_xad_u32 v11, 0x1818, v3, 0
	ds_load_b32 v20, v5
	ds_load_b32 v19, v6
	ds_load_b32 v18, v7
	ds_load_b32 v17, v8
	ds_load_b32 v16, v9
	ds_load_b32 v15, v10
	ds_load_b32 v14, v11
	ds_load_b32 v13, v12
	v_xad_u32 v5, 0x2040, v3, 0
	v_xad_u32 v6, 0x2444, v3, 0
	v_xad_u32 v7, 0x2848, v3, 0
	v_xad_u32 v8, 0x2c4c, v3, 0
	v_xad_u32 v21, 0x3050, v3, 0
	v_xad_u32 v22, 0x3454, v3, 0
	v_xad_u32 v23, 0x3858, v3, 0
	v_xad_u32 v3, 0x3c5c, v3, 0
	ds_load_b32 v12, v5
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v21
	ds_load_b32 v7, v22
	ds_load_b32 v6, v23
	ds_load_b32 v5, v3
.LBB0_8:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v3, v4, v20
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_ashr_i32 s1, s25, 31
	s_mov_b32 s0, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[0:1], s[0:1], 2
	v_add_co_u32 v1, vcc_lo, v1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v4, v[1:2], off
.LBB0_10:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v3, v4, v19
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s25, 1, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s26, v1
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_12:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v3, v4, v18
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 3, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_14:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v3, v4, v17
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s25, 2, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s26, v1
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_16:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v3, v4, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 5, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_18:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v3, v4, v15
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 6, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_20:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v3, v4, v14
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 7, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_22:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v3, v4, v13
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s25, 3, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s26, v1
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_24:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v3, v4, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 9, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_26:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 10, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_28:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v3, v4, v10
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 11, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_30:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 12, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_32:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 13, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_34:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 14, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s26, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_36:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 15, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_38:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 163
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6572
; TotalNumSgprs: 37
; NumVgprs: 163
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
