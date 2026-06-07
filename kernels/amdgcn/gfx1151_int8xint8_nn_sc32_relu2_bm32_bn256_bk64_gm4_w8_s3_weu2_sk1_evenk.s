	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0xff
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 31
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s8, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s5, s5, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s9
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp10:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s7, s10
	s_abs_i32 s10, s2
	s_add_i32 s7, s7, s9
	s_xor_b32 s9, s2, s5
	s_mul_hi_u32 s7, s10, s7
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s10, s6
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s9
	s_sub_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s5
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s8, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s2
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s5, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s5
	s_mul_hi_u32 s5, s6, s10
	s_xor_b32 s10, s2, s8
	s_mul_i32 s11, s5, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s5, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s11, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s6, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s6, s8
	s_mov_b32 s8, 0
	s_sub_i32 s2, s2, s5
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s4, 63
.Ltmp12:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s7, s2, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s2, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr2
.LBB0_3:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x20
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
	s_lshl_b32 s28, s7, 5
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s18, s6, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp13:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s4, 31
.Ltmp14:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v9
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp16:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s6, s1, 31
.Ltmp17:
	.loc	1 318 34 is_stmt 1              ; generate_amdgcn.py:318:34
	s_mul_i32 s2, s28, s4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
	v_mul_lo_u32 v2, s4, v2
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s4, s6, 27
	v_mul_lo_u32 v1, s19, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_add_u32 v12, v10, 4, v1
	v_bfe_i32 v5, v0, 2, 1
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
.Ltmp23:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v3, 2, v0
	v_lshlrev_b32_e32 v1, 5, v0
	v_lshrrev_b32_e32 v7, 1, v0
	v_mov_b32_e32 v31, 0
	v_lshrrev_b32_e32 v15, 6, v0
	v_and_b32_e32 v4, 28, v3
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s1, s1, 5
	v_and_or_b32 v7, 0x70, v7, v10
	v_and_b32_e32 v6, 0x37c, v3
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v3, 0x1c0, v3
	v_add3_u32 v11, v2, v4, s2
	v_and_b32_e32 v4, 0x160, v1
	v_bfe_i32 v2, v0, 5, 1
	v_add_nc_u32_e32 v17, 0, v7
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v7, 1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v4, 0x90, v5, v4
	v_or_b32_e32 v5, s28, v10
	v_and_b32_e32 v2, 0x90, v2
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v1, 32, v1
	v_xor_b32_e32 v8, 16, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v14, 16, v5
	v_mul_lo_u32 v19, v5, s1
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v5, 2, v15
	v_xor_b32_e32 v2, v2, v6
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_mul_lo_u32 v21, v14, s1
	v_lshlrev_b32_e32 v14, 1, v0
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v27, 0, v7
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v39, 0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v5, v3, v1
	v_add3_u32 v16, v27, v7, v1
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v41, 0, v6
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v42, 0, v4
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v48, 0, v8
	v_dual_mov_b32 v1, s4 :: v_dual_and_b32 v14, 28, v14
	v_mov_b32_e32 v51, 0
	s_lshl_b32 s2, s19, 4
	v_or_b32_e32 v28, s18, v0
	v_dual_mov_b32 v6, s9 :: v_dual_add_nc_u32 v13, s2, v12
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v55, v15, v14
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v56, v16, v14
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s29, s19, 5
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
.Ltmp25:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s7, s6, s19
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s18
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v57, s6, v11
	v_add_nc_u32_e32 v58, s5, v11
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v59, s7, v12
	v_add_nc_u32_e32 v61, s7, v13
	s_add_i32 s7, s7, s29
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v73, v57, s[20:23], 0 offen
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v65, s7, v12
	v_add_nc_u32_e32 v69, s7, v13
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v74, v58, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[57:60], v59, s[24:27], 0 offen
	buffer_load_b128 v[61:64], v61, s[24:27], 0 offen
	buffer_load_b128 v[65:68], v65, s[24:27], 0 offen
	buffer_load_b128 v[69:72], v69, s[24:27], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s6, s6, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v39, v73 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[57:60]
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[61:64] offset:4096
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s7, s6, s19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v75, v19, s6, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v76, v28, s7, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s6, s1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b32 v39, v74 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[65:68] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[69:72] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v58, v21, s6, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v57, v76, s[12:15], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v60, v21, s5, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v59, v19, s5, 1
	v_cndmask_b32_e32 v115, 0x80000000, v60, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v75, s[8:11], 0 offen
	buffer_load_u16 v118, v58, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v61, v28, s6, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v114, 0x80000000, v59, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v116, 0x80000000, v61, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[74:77], v42 offset:16384
	ds_load_b128 v[90:93], v42 offset:16896
	ds_load_b128 v[94:97], v48 offset:16384
	ds_load_b128 v[98:101], v48 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v58, v17 offset:3328
	ds_load_u8 v59, v17 offset:3072
	ds_load_u8 v60, v17 offset:3840
	ds_load_u8 v61, v17 offset:3584
	ds_load_u8 v62, v17 offset:3968
	ds_load_u8 v63, v17 offset:3712
	ds_load_u8 v64, v17 offset:3456
	ds_load_u8 v65, v17 offset:3200
	ds_load_u8 v66, v17 offset:2304
	ds_load_u8 v67, v17 offset:2048
	ds_load_u8 v68, v17 offset:2816
	ds_load_u8 v69, v17 offset:2560
	ds_load_u8 v70, v17 offset:2944
	ds_load_u8 v71, v17 offset:2688
	ds_load_u8 v72, v17 offset:2432
	ds_load_u8 v73, v17 offset:2176
	ds_load_u8 v78, v17 offset:1280
	ds_load_u8 v79, v17 offset:1024
	ds_load_u8 v80, v17 offset:1792
	ds_load_u8 v81, v17 offset:1536
	ds_load_u8 v82, v17 offset:1920
	ds_load_u8 v83, v17 offset:1664
	ds_load_u8 v84, v17 offset:1408
	ds_load_u8 v85, v17 offset:1152
	ds_load_u8 v86, v17 offset:256
	ds_load_u8 v87, v17
	ds_load_u8 v88, v17 offset:768
	ds_load_u8 v89, v17 offset:512
	ds_load_u8 v102, v17 offset:896
	ds_load_u8 v103, v17 offset:640
	ds_load_u8 v104, v17 offset:384
	ds_load_u8 v105, v17 offset:128
	ds_load_u8 v106, v17 offset:7424
	ds_load_u8 v107, v17 offset:7168
	ds_load_u8 v108, v17 offset:7936
	ds_load_u8 v109, v17 offset:7680
	ds_load_u8 v110, v17 offset:8064
	ds_load_u8 v111, v17 offset:7808
	ds_load_u8 v112, v17 offset:7552
	ds_load_u8 v113, v17 offset:7296
	ds_load_u8 v119, v17 offset:6400
	ds_load_u8 v120, v17 offset:6144
	ds_load_u8 v121, v17 offset:6912
	ds_load_u8 v122, v17 offset:6656
	ds_load_u8 v123, v17 offset:7040
	ds_load_u8 v124, v17 offset:6784
	ds_load_u8 v125, v17 offset:6528
	ds_load_u8 v126, v17 offset:6272
	ds_load_u8 v127, v17 offset:5376
	ds_load_u8 v128, v17 offset:5120
	ds_load_u8 v129, v17 offset:5888
	ds_load_u8 v130, v17 offset:5632
	ds_load_u8 v131, v17 offset:6016
	ds_load_u8 v132, v17 offset:5760
	ds_load_u8 v133, v17 offset:5504
	ds_load_u8 v134, v17 offset:5248
	ds_load_u8 v135, v17 offset:4352
	ds_load_u8 v136, v17 offset:4096
	ds_load_u8 v137, v17 offset:4864
	ds_load_u8 v138, v17 offset:4608
	ds_load_u8 v139, v17 offset:4992
	ds_load_u8 v140, v17 offset:4736
	ds_load_u8 v141, v17 offset:4480
	ds_load_u8 v142, v17 offset:4224
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v59, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v60, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v61, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v66, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v67, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v68, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v69, v89, v88, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_perm_b32 v63, v73, v72, 0xc0c0004
	v_perm_b32 v65, v71, v70, 0xc0c0004
	v_perm_b32 v70, v85, v84, 0xc0c0004
	v_perm_b32 v71, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v72, v105, v104, 0xc0c0004
	v_perm_b32 v73, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v78, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v79, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v80, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v81, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v86, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v87, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v138, v137, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v111, v126, v125, 0xc0c0004
	v_perm_b32 v119, v124, v123, 0xc0c0004
	v_perm_b32 v120, v134, v133, 0xc0c0004
	v_perm_b32 v121, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v142, v141, 0xc0c0004
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_lshl_or_b32 v85, v59, 16, v58
	v_lshl_or_b32 v84, v61, 16, v60
	v_lshl_or_b32 v83, v67, 16, v66
	v_lshl_or_b32 v82, v69, 16, v68
	v_lshl_or_b32 v109, v62, 16, v64
	v_lshl_or_b32 v108, v65, 16, v63
	v_lshl_or_b32 v107, v71, 16, v70
	v_lshl_or_b32 v106, v73, 16, v72
	v_lshl_or_b32 v105, v79, 16, v78
	v_lshl_or_b32 v104, v81, 16, v80
	v_lshl_or_b32 v103, v87, 16, v86
	v_lshl_or_b32 v102, v89, 16, v88
	v_lshl_or_b32 v113, v110, 16, v112
	v_lshl_or_b32 v112, v119, 16, v111
	v_lshl_or_b32 v111, v121, 16, v120
	v_lshl_or_b32 v110, v123, 16, v122
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[106:109], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[106:109], v[90:93], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[110:113], v[94:97], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[102:105], v[94:97], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[102:105], v[98:101], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[110:113], v[98:101], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v103, v60
	v_cvt_f32_i32_e32 v101, v58
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v102, v59
	v_cvt_f32_i32_e32 v104, v61
	v_cvt_f32_i32_e32 v105, v62
	v_cvt_f32_i32_e32 v106, v63
	v_cvt_f32_i32_e32 v107, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v108, v73
	v_cvt_f32_i32_e32 v109, v74
	v_cvt_f32_i32_e32 v110, v75
	v_cvt_f32_i32_e32 v111, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v112, v89
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	ds_store_b16 v55, v57 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v113, v114, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v114, v116, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v115, v115, s[8:11], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v116, 16, v117
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v117, 16, v118
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[57:60], v27 offset:18432
	ds_load_b128 v[61:64], v27 offset:18448
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[73:76], v42 offset:17408
	ds_load_b128 v[89:92], v42 offset:17920
	ds_load_b128 v[93:96], v48 offset:17408
	ds_load_b128 v[97:100], v48 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v118, v17 offset:11520
	ds_load_u8 v119, v17 offset:11264
	ds_load_u8 v120, v17 offset:12032
	ds_load_u8 v121, v17 offset:11776
	ds_load_u8 v122, v17 offset:12160
	ds_load_u8 v123, v17 offset:11904
	ds_load_u8 v124, v17 offset:11648
	ds_load_u8 v125, v17 offset:11392
	ds_load_u8 v126, v17 offset:10496
	ds_load_u8 v127, v17 offset:10240
	ds_load_u8 v128, v17 offset:11008
	ds_load_u8 v129, v17 offset:10752
	ds_load_u8 v130, v17 offset:11136
	ds_load_u8 v131, v17 offset:10880
	ds_load_u8 v132, v17 offset:10624
	ds_load_u8 v133, v17 offset:10368
	ds_load_u8 v134, v17 offset:9472
	ds_load_u8 v135, v17 offset:9216
	ds_load_u8 v136, v17 offset:9984
	ds_load_u8 v137, v17 offset:9728
	ds_load_u8 v138, v17 offset:10112
	ds_load_u8 v139, v17 offset:9856
	ds_load_u8 v140, v17 offset:9600
	ds_load_u8 v141, v17 offset:9344
	ds_load_u8 v142, v17 offset:8448
	ds_load_u8 v143, v17 offset:8192
	ds_load_u8 v144, v17 offset:8960
	ds_load_u8 v145, v17 offset:8704
	ds_load_u8 v146, v17 offset:9088
	ds_load_u8 v147, v17 offset:8832
	ds_load_u8 v148, v17 offset:8576
	ds_load_u8 v149, v17 offset:8320
	ds_load_u8 v150, v17 offset:15616
	ds_load_u8 v151, v17 offset:15360
	ds_load_u8 v152, v17 offset:16128
	ds_load_u8 v153, v17 offset:15872
	ds_load_u8 v154, v17 offset:16256
	ds_load_u8 v155, v17 offset:16000
	ds_load_u8 v156, v17 offset:15744
	ds_load_u8 v157, v17 offset:15488
	ds_load_u8 v158, v17 offset:14592
	ds_load_u8 v159, v17 offset:14336
	ds_load_u8 v160, v17 offset:15104
	ds_load_u8 v161, v17 offset:14848
	ds_load_u8 v162, v17 offset:15232
	ds_load_u8 v163, v17 offset:14976
	ds_load_u8 v164, v17 offset:14720
	ds_load_u8 v165, v17 offset:14464
	ds_load_u8 v166, v17 offset:13568
	ds_load_u8 v167, v17 offset:13312
	ds_load_u8 v168, v17 offset:14080
	ds_load_u8 v169, v17 offset:13824
	ds_load_u8 v170, v17 offset:14208
	ds_load_u8 v171, v17 offset:13952
	ds_load_u8 v172, v17 offset:13696
	ds_load_u8 v173, v17 offset:13440
	ds_load_u8 v174, v17 offset:12544
	ds_load_u8 v175, v17 offset:12288
	ds_load_u8 v176, v17 offset:13056
	ds_load_u8 v177, v17 offset:12800
	ds_load_u8 v178, v17 offset:13184
	ds_load_u8 v179, v17 offset:12928
	ds_load_u8 v180, v17 offset:12672
	ds_load_u8 v181, v17 offset:12416
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(62)
	v_lshlrev_b32_e32 v182, 16, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v103, v103, v116 :: v_dual_lshlrev_b32 v186, 16, v63
	v_mul_f32_e32 v80, v80, v117
	v_mul_f32_e32 v83, v83, v117
	v_mul_f32_e32 v109, v109, v117
	v_mul_f32_e32 v110, v110, v117
	v_mul_f32_e32 v111, v111, v117
	v_mul_f32_e32 v77, v77, v117
	v_mul_f32_e32 v78, v78, v117
	v_mul_f32_e32 v79, v79, v117
	v_mul_f32_e32 v81, v81, v117
	v_mul_f32_e32 v82, v82, v117
	v_mul_f32_e32 v84, v84, v117
	v_mul_f32_e32 v85, v85, v117
	v_mul_f32_e32 v86, v86, v117
	v_mul_f32_e32 v87, v87, v117
	v_mul_f32_e32 v88, v88, v117
	v_dual_mul_f32 v112, v112, v117 :: v_dual_lshlrev_b32 v117, 16, v58
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v53, v103, v182 :: v_dual_mul_f32 v102, v102, v116
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v105, v105, v116
	v_mul_f32_e32 v107, v107, v116
	v_mul_f32_e32 v65, v65, v116
	v_mul_f32_e32 v66, v66, v116
	v_mul_f32_e32 v67, v67, v116
	v_mul_f32_e32 v68, v68, v116
	v_mul_f32_e32 v69, v69, v116
	v_mul_f32_e32 v70, v70, v116
	v_mul_f32_e32 v72, v72, v116
	v_mul_f32_e32 v108, v108, v116
	v_mul_f32_e32 v101, v101, v116
	v_mul_f32_e32 v104, v104, v116
	v_mul_f32_e32 v106, v106, v116
	v_dual_mul_f32 v71, v71, v116 :: v_dual_lshlrev_b32 v116, 16, v57
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v54, v102, v117 :: v_dual_lshlrev_b32 v183, 16, v60
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v185, 16, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v101, v116 :: v_dual_lshlrev_b32 v184, 16, v61
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v58, 0xffff0000, v58
	v_and_b32_e32 v59, 0xffff0000, v59
	v_and_b32_e32 v57, 0xffff0000, v57
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v51, v105, v184 :: v_dual_and_b32 v62, 0xffff0000, v62
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v120, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v121, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v126, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v127, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v128, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v129, v145, v144, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v123, v133, v132, 0xc0c0004
	v_perm_b32 v125, v131, v130, 0xc0c0004
	v_perm_b32 v130, v141, v140, 0xc0c0004
	v_perm_b32 v131, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v132, v149, v148, 0xc0c0004
	v_perm_b32 v133, v147, v146, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v52, v104, v183 :: v_dual_lshlrev_b32 v187, 16, v64
	v_fmac_f32_e32 v50, v106, v185
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v64, 0xffff0000, v64
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v49, v107, v186 :: v_dual_and_b32 v60, 0xffff0000, v60
	v_dual_fmac_f32 v38, v71, v62 :: v_dual_and_b32 v61, 0xffff0000, v61
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v63, 0xffff0000, v63
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v134, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v135, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v136, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v137, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v142, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v143, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v144, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v177, v176, 0xc0c0004
	v_perm_b32 v138, v157, v156, 0xc0c0004
	v_perm_b32 v139, v155, v154, 0xc0c0004
	v_perm_b32 v140, v165, v164, 0xc0c0004
	v_perm_b32 v141, v163, v162, 0xc0c0004
	v_perm_b32 v146, v173, v172, 0xc0c0004
	v_perm_b32 v147, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v181, v180, 0xc0c0004
	v_perm_b32 v149, v179, v178, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v47, v65, v187
	v_dual_fmac_f32 v45, v67, v58 :: v_dual_fmac_f32 v36, v108, v64
	v_fmac_f32_e32 v44, v68, v59
	v_fmac_f32_e32 v46, v66, v57
	v_dual_fmac_f32 v29, v79, v185 :: v_dual_fmac_f32 v22, v84, v59
	v_dual_fmac_f32 v25, v81, v187 :: v_dual_fmac_f32 v24, v82, v57
	v_dual_fmac_f32 v23, v83, v58 :: v_dual_fmac_f32 v20, v85, v60
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v84, v119, 16, v118
	v_lshl_or_b32 v83, v121, 16, v120
	v_lshl_or_b32 v82, v127, 16, v126
	v_lshl_or_b32 v81, v129, 16, v128
	v_lshl_or_b32 v108, v122, 16, v124
	v_lshl_or_b32 v107, v125, 16, v123
	v_lshl_or_b32 v106, v131, 16, v130
	v_lshl_or_b32 v105, v133, 16, v132
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v43, v69, v60 :: v_dual_fmac_f32 v34, v110, v117
	v_dual_fmac_f32 v40, v70, v61 :: v_dual_fmac_f32 v37, v72, v63
	v_fmac_f32_e32 v30, v78, v184
	v_dual_fmac_f32 v35, v109, v116 :: v_dual_fmac_f32 v26, v80, v186
	v_dual_fmac_f32 v33, v111, v182 :: v_dual_fmac_f32 v32, v77, v183
	v_dual_fmac_f32 v18, v86, v61 :: v_dual_fmac_f32 v15, v88, v63
	v_fmac_f32_e32 v16, v87, v62
	v_fmac_f32_e32 v14, v112, v64
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v104, v135, 16, v134
	v_lshl_or_b32 v103, v137, 16, v136
	v_lshl_or_b32 v102, v143, 16, v142
	v_lshl_or_b32 v101, v145, 16, v144
	v_lshl_or_b32 v112, v139, 16, v138
	v_lshl_or_b32 v111, v141, 16, v140
	v_lshl_or_b32 v110, v147, 16, v146
	v_lshl_or_b32 v109, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[105:108], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[105:108], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[93:96], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[109:112], v[93:96], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[97:100], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[97:100], v[81:88] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
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
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v89, 16, v113
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v91, 16, v114
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v93, v58, v89 :: v_dual_lshlrev_b32 v90, 16, v115
	v_dual_mul_f32 v92, v57, v89 :: v_dual_mul_f32 v75, v75, v90
	v_dual_mul_f32 v94, v59, v89 :: v_dual_mul_f32 v73, v73, v90
	v_dual_mul_f32 v95, v60, v89 :: v_dual_mul_f32 v74, v74, v90
	v_dual_mul_f32 v96, v61, v89 :: v_dual_mul_f32 v79, v79, v90
	v_dual_mul_f32 v97, v62, v89 :: v_dual_mul_f32 v76, v76, v90
	v_dual_mul_f32 v98, v63, v89 :: v_dual_mul_f32 v77, v77, v90
	v_dual_mul_f32 v99, v64, v89 :: v_dual_mul_f32 v78, v78, v90
	v_dual_mul_f32 v100, v65, v89 :: v_dual_mul_f32 v83, v83, v90
	v_dual_mul_f32 v101, v66, v89 :: v_dual_mul_f32 v80, v80, v90
	v_dual_mul_f32 v102, v67, v89 :: v_dual_mul_f32 v81, v81, v90
	v_dual_mul_f32 v103, v68, v89 :: v_dual_mul_f32 v82, v82, v90
	v_dual_mul_f32 v104, v69, v89 :: v_dual_mul_f32 v87, v87, v90
	v_dual_mul_f32 v105, v70, v89 :: v_dual_mul_f32 v84, v84, v90
	v_dual_mul_f32 v106, v71, v89 :: v_dual_mul_f32 v85, v85, v90
	v_dual_mul_f32 v89, v72, v89 :: v_dual_mul_f32 v86, v86, v90
	ds_store_b32 v56, v91 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v27 offset:18432
	ds_load_b128 v[61:64], v27 offset:18448
	ds_load_b128 v[65:68], v27 offset:18944
	ds_load_b128 v[69:72], v27 offset:18960
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v88, v88, v90 :: v_dual_fmac_f32 v53, v94, v59
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v92, v57 :: v_dual_fmac_f32 v54, v93, v58
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v52, v95, v60 :: v_dual_fmac_f32 v51, v96, v61
	v_dual_fmac_f32 v50, v97, v62 :: v_dual_fmac_f32 v49, v98, v63
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v47, v99, v64 :: v_dual_fmac_f32 v46, v100, v65
	v_dual_fmac_f32 v45, v101, v66 :: v_dual_fmac_f32 v44, v102, v67
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v43, v103, v68 :: v_dual_fmac_f32 v40, v104, v69
	v_dual_fmac_f32 v38, v105, v70 :: v_dual_fmac_f32 v37, v106, v71
	v_dual_fmac_f32 v36, v89, v72 :: v_dual_fmac_f32 v33, v75, v59
	v_dual_fmac_f32 v35, v73, v57 :: v_dual_fmac_f32 v34, v74, v58
	v_dual_fmac_f32 v32, v76, v60 :: v_dual_fmac_f32 v29, v78, v62
	v_dual_fmac_f32 v30, v77, v61 :: v_dual_fmac_f32 v25, v80, v64
	v_dual_fmac_f32 v26, v79, v63 :: v_dual_fmac_f32 v23, v82, v66
	v_dual_fmac_f32 v24, v81, v65 :: v_dual_fmac_f32 v15, v87, v71
	v_fmac_f32_e32 v22, v83, v67
	v_fmac_f32_e32 v20, v84, v68
	v_fmac_f32_e32 v18, v85, v69
	v_fmac_f32_e32 v16, v86, v70
	v_fmac_f32_e32 v14, v88, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v51, v51 :: v_dual_max_f32 v6, v50, v50
	v_dual_max_f32 v3, v53, v53 :: v_dual_max_f32 v4, v52, v52
	v_max_f32_e32 v7, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, v47, v47
	v_dual_max_f32 v11, v46, v46 :: v_dual_max_f32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v12, v45, v45
	v_dual_max_f32 v17, v43, v43 :: v_dual_max_f32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v28, v36, v36
	v_max_f32_e32 v13, v44, v44
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v1, v31, v31 :: v_dual_max_f32 v2, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, 0, v28
	v_max_f32_e32 v28, v33, v33
	v_dual_max_f32 v27, v37, v37 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v16, v16, v16
	v_max_f32_e32 v31, v35, v35
	v_dual_max_f32 v39, 0, v28 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v42, 0, v29
	v_dual_max_f32 v37, 0, v31 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v31, v32, v32 :: v_dual_max_f32 v18, v18, v18
	v_max_f32_e32 v21, v38, v38
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v50, 0, v16
	v_dual_max_f32 v35, 0, v27 :: v_dual_max_f32 v52, 0, v14
	v_dual_max_f32 v27, v34, v34 :: v_dual_max_f32 v46, 0, v23
	v_max_f32_e32 v19, v40, v40
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v30, v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, 0, v27
	v_max_f32_e32 v40, 0, v31
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, v22, v22
	v_max_f32_e32 v15, v15, v15
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v41, 0, v30 :: v_dual_max_f32 v48, 0, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v43, 0, v26 :: v_dual_mul_f32 v32, v3, v3
	v_dual_max_f32 v44, 0, v25 :: v_dual_max_f32 v45, 0, v24
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v2, v2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v47, 0, v22 :: v_dual_mul_f32 v30, v5, v5
	v_dual_max_f32 v49, 0, v18 :: v_dual_mul_f32 v28, v7, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v24, v13, v13 :: v_dual_max_f32 v51, 0, v15
	v_mul_f32_e32 v18, v37, v37
	v_dual_mul_f32 v33, v1, v1 :: v_dual_mul_f32 v26, v11, v11
	v_dual_mul_f32 v31, v4, v4 :: v_dual_mul_f32 v22, v19, v19
	v_dual_mul_f32 v29, v6, v6 :: v_dual_mul_f32 v20, v35, v35
	v_dual_mul_f32 v27, v8, v8 :: v_dual_mul_f32 v16, v39, v39
	v_dual_mul_f32 v25, v12, v12 :: v_dual_mul_f32 v14, v41, v41
	v_dual_mul_f32 v23, v17, v17 :: v_dual_mul_f32 v12, v43, v43
	v_dual_mul_f32 v21, v21, v21 :: v_dual_mul_f32 v6, v47, v47
	v_dual_mul_f32 v19, v36, v36 :: v_dual_mul_f32 v8, v45, v45
	v_dual_mul_f32 v17, v38, v38 :: v_dual_mul_f32 v4, v49, v49
	v_dual_mul_f32 v15, v40, v40 :: v_dual_mul_f32 v2, v51, v51
	v_mul_f32_e32 v13, v42, v42
	v_mul_f32_e32 v11, v44, v44
	v_mul_f32_e32 v7, v46, v46
	v_mul_f32_e32 v5, v48, v48
	v_mul_f32_e32 v3, v50, v50
	v_mul_f32_e32 v1, v52, v52
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v9, 1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s19
	v_mul_lo_u32 v36, s19, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v33.h
	v_mov_b16_e32 v10.h, v35.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v38, s28, s18, v9
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
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	v_add3_u32 v10, v33, v10, 0x7fff
	v_and_b32_e32 v33, 1, v35
	v_mov_b16_e32 v35.l, v29.h
	s_mov_b32 s18, 0x7ffffffe
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
	v_dual_cndmask_b32 v2, v9, v29 :: v_dual_add_nc_u32 v39, s2, v36
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
	buffer_store_b128 v[0:3], v16, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v16, s[16:19], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v17, s[16:19], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 188
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6692
; TotalNumSgprs: 32
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
