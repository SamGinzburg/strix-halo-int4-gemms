	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	s_sub_i32 s5, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s5
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
	s_mul_hi_u32 s2, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s2
	s_mul_hi_u32 s2, s6, s10
	s_xor_b32 s10, s5, s8
	s_mul_i32 s11, s2, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s2, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s10
	s_sub_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s2, s8
	s_sub_i32 s6, s5, s6
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s4, 63
.Ltmp12:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s6, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	s_mov_b32 s7, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s18, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr18
.LBB0_3:                                ; %Flow193
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v13, 0xf0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v14, 15, v0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	s_lshl_b32 s28, s6, 5
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s2, s2, 8
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp13:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s4, 31
.Ltmp14:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s7, s1, 31
.Ltmp16:
	.loc	1 318 34 is_stmt 1              ; generate_amdgcn.py:318:34
	s_mul_i32 s6, s28, s4
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
	v_mul_lo_u32 v2, s4, v2
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s4, s7, 27
.Ltmp19:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v1, s19, v1
	v_bfe_i32 v5, v0, 2, 1
	v_lshrrev_b32_e32 v7, 1, v0
	v_lshrrev_b32_e32 v10, 6, v0
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
	v_lshl_add_u32 v44, v14, 4, v1
	v_mov_b32_e32 v39, 0
	v_and_or_b32 v7, 0x70, v7, v14
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s1, s1, 5
.Ltmp25:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 28, v3
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v32, 0
	v_add3_u32 v43, v2, v4, s6
	s_mov_b32 s6, s4
	v_lshlrev_b32_e32 v1, 5, v0
	v_bfe_i32 v2, v0, 5, 1
	v_add_nc_u32_e32 v46, 0, v7
	v_lshlrev_b32_e32 v7, 1, v13
	v_and_b32_e32 v6, 0x37c, v3
	v_and_b32_e32 v4, 0x160, v1
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v3, 0x1c0, v3
	v_and_b32_e32 v1, 32, v1
	v_add_nc_u32_e32 v49, 0, v7
	v_and_or_b32 v4, 0x90, v5, v4
	v_or_b32_e32 v5, s28, v14
	v_xor_b32_e32 v2, v2, v6
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v8, 16, v4
	v_or_b32_e32 v9, 16, v5
	v_mul_lo_u32 v47, v5, s1
	v_and_b32_e32 v5, 2, v10
	v_add3_u32 v11, v49, v7, v1
	v_mov_b32_e32 v38, 0
	v_mul_lo_u32 v48, v9, s1
	v_lshlrev_b32_e32 v9, 1, v0
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v5, 0, v5
	s_lshl_b32 s18, s19, 4
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v51, 0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v9, 28, v9
	v_add3_u32 v10, v5, v3, v1
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v52, 0, v6
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v53, 0, v4
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v54, 0, v8
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v6, s9 :: v_dual_add_nc_u32 v45, s18, v44
	v_or_b32_e32 v50, s2, v0
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v55, v10, v9
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v56, v11, v9
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v9, 0
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
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s7, s6, s19
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v57, s6, v43
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s2
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v58, s5, v43
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v59, s7, v44
	v_add_nc_u32_e32 v61, s7, v45
	s_add_i32 s7, s7, s29
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v73, v57, s[20:23], 0 offen
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v65, s7, v44
	v_add_nc_u32_e32 v69, s7, v45
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
	ds_store_b32 v51, v73 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v52, v[57:60]
	s_waitcnt vmcnt(2)
	ds_store_b128 v52, v[61:64] offset:4096
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v75, v47, s6, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s7, s6, s19
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s6, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v58, v48, s6, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v76, v50, s7, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	v_add_lshl_u32 v60, v48, s5, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v51, v74 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v52, v[65:68] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v52, v[69:72] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v115, 0x80000000, v60, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v75, s[8:11], 0 offen
	buffer_load_u16 v118, v58, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v57, v76, s[12:15], 0 offen
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v59, v47, s5, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v61, v50, s6, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v114, 0x80000000, v59 :: v_dual_lshlrev_b32 v117, 16, v117
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v116, 0x80000000, v61, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[74:77], v53 offset:16384
	ds_load_b128 v[90:93], v53 offset:16896
	ds_load_b128 v[94:97], v54 offset:16384
	ds_load_b128 v[98:101], v54 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v58, v46 offset:3328
	ds_load_u8 v59, v46 offset:3072
	ds_load_u8 v60, v46 offset:3840
	ds_load_u8 v61, v46 offset:3584
	ds_load_u8 v62, v46 offset:3968
	ds_load_u8 v63, v46 offset:3712
	ds_load_u8 v64, v46 offset:3456
	ds_load_u8 v65, v46 offset:3200
	ds_load_u8 v66, v46 offset:2304
	ds_load_u8 v67, v46 offset:2048
	ds_load_u8 v68, v46 offset:2816
	ds_load_u8 v69, v46 offset:2560
	ds_load_u8 v70, v46 offset:2944
	ds_load_u8 v71, v46 offset:2688
	ds_load_u8 v72, v46 offset:2432
	ds_load_u8 v73, v46 offset:2176
	ds_load_u8 v78, v46 offset:1280
	ds_load_u8 v79, v46 offset:1024
	ds_load_u8 v80, v46 offset:1792
	ds_load_u8 v81, v46 offset:1536
	ds_load_u8 v82, v46 offset:1920
	ds_load_u8 v83, v46 offset:1664
	ds_load_u8 v84, v46 offset:1408
	ds_load_u8 v85, v46 offset:1152
	ds_load_u8 v86, v46 offset:256
	ds_load_u8 v87, v46
	ds_load_u8 v88, v46 offset:768
	ds_load_u8 v89, v46 offset:512
	ds_load_u8 v102, v46 offset:896
	ds_load_u8 v103, v46 offset:640
	ds_load_u8 v104, v46 offset:384
	ds_load_u8 v105, v46 offset:128
	ds_load_u8 v106, v46 offset:7424
	ds_load_u8 v107, v46 offset:7168
	ds_load_u8 v108, v46 offset:7936
	ds_load_u8 v109, v46 offset:7680
	ds_load_u8 v110, v46 offset:8064
	ds_load_u8 v111, v46 offset:7808
	ds_load_u8 v112, v46 offset:7552
	ds_load_u8 v113, v46 offset:7296
	ds_load_u8 v119, v46 offset:6400
	ds_load_u8 v120, v46 offset:6144
	ds_load_u8 v121, v46 offset:6912
	ds_load_u8 v122, v46 offset:6656
	ds_load_u8 v123, v46 offset:7040
	ds_load_u8 v124, v46 offset:6784
	ds_load_u8 v125, v46 offset:6528
	ds_load_u8 v126, v46 offset:6272
	ds_load_u8 v127, v46 offset:5376
	ds_load_u8 v128, v46 offset:5120
	ds_load_u8 v129, v46 offset:5888
	ds_load_u8 v130, v46 offset:5632
	ds_load_u8 v131, v46 offset:6016
	ds_load_u8 v132, v46 offset:5760
	ds_load_u8 v133, v46 offset:5504
	ds_load_u8 v134, v46 offset:5248
	ds_load_u8 v135, v46 offset:4352
	ds_load_u8 v136, v46 offset:4096
	ds_load_u8 v137, v46 offset:4864
	ds_load_u8 v138, v46 offset:4608
	ds_load_u8 v139, v46 offset:4992
	ds_load_u8 v140, v46 offset:4736
	ds_load_u8 v141, v46 offset:4480
	ds_load_u8 v142, v46 offset:4224
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
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_perm_b32 v63, v73, v72, 0xc0c0004
	v_perm_b32 v65, v71, v70, 0xc0c0004
	v_perm_b32 v70, v85, v84, 0xc0c0004
	v_perm_b32 v71, v83, v82, 0xc0c0004
	v_perm_b32 v72, v105, v104, 0xc0c0004
	v_perm_b32 v73, v103, v102, 0xc0c0004
	v_lshl_or_b32 v85, v59, 16, v58
	v_lshl_or_b32 v84, v61, 16, v60
	v_lshl_or_b32 v83, v67, 16, v66
	v_lshl_or_b32 v82, v69, 16, v68
	v_lshl_or_b32 v105, v79, 16, v78
	v_lshl_or_b32 v104, v81, 16, v80
	v_lshl_or_b32 v103, v87, 16, v86
	v_lshl_or_b32 v102, v89, 16, v88
	v_lshl_or_b32 v109, v62, 16, v64
	v_lshl_or_b32 v108, v65, 16, v63
	v_lshl_or_b32 v107, v71, 16, v70
	v_lshl_or_b32 v106, v73, 16, v72
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v111, v126, v125, 0xc0c0004
	v_perm_b32 v119, v124, v123, 0xc0c0004
	v_perm_b32 v120, v134, v133, 0xc0c0004
	v_perm_b32 v121, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v142, v141, 0xc0c0004
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[106:109], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[102:105], v[94:97], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v110, 16, v112
	v_lshl_or_b32 v112, v119, 16, v111
	v_lshl_or_b32 v111, v121, 16, v120
	v_lshl_or_b32 v110, v123, 16, v122
	v_wmma_i32_16x16x16_iu8 v[82:89], v[106:109], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[102:105], v[98:101], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v104, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[110:113], v[94:97], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[110:113], v[98:101], v[82:89] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v55, v57 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v185, v117, v104
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v113, v116, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v114, v114, s[8:11], 0 offen
	buffer_load_u16 v115, v115, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v101, v59
	v_cvt_f32_i32_e32 v102, v60
	v_cvt_f32_i32_e32 v103, v61
	v_cvt_f32_i32_e32 v105, v63
	v_cvt_f32_i32_e32 v106, v64
	v_cvt_f32_i32_e32 v107, v73
	v_cvt_f32_i32_e32 v108, v75
	v_cvt_f32_i32_e32 v109, v76
	v_cvt_f32_i32_e32 v110, v89
	v_cvt_f32_i32_e32 v111, v58
	v_cvt_f32_i32_e32 v112, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[57:60], v49 offset:18432
	ds_load_b128 v[61:64], v49 offset:18448
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[73:76], v53 offset:17408
	ds_load_b128 v[89:92], v53 offset:17920
	ds_load_b128 v[93:96], v54 offset:17408
	ds_load_b128 v[97:100], v54 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v116, v46 offset:11520
	ds_load_u8 v119, v46 offset:11264
	ds_load_u8 v120, v46 offset:12032
	ds_load_u8 v121, v46 offset:11776
	ds_load_u8 v122, v46 offset:12160
	ds_load_u8 v123, v46 offset:11904
	ds_load_u8 v124, v46 offset:11648
	ds_load_u8 v125, v46 offset:11392
	ds_load_u8 v126, v46 offset:10496
	ds_load_u8 v127, v46 offset:10240
	ds_load_u8 v128, v46 offset:11008
	ds_load_u8 v129, v46 offset:10752
	ds_load_u8 v130, v46 offset:11136
	ds_load_u8 v131, v46 offset:10880
	ds_load_u8 v132, v46 offset:10624
	ds_load_u8 v133, v46 offset:10368
	ds_load_u8 v134, v46 offset:9472
	ds_load_u8 v135, v46 offset:9216
	ds_load_u8 v136, v46 offset:9984
	ds_load_u8 v137, v46 offset:9728
	ds_load_u8 v138, v46 offset:10112
	ds_load_u8 v139, v46 offset:9856
	ds_load_u8 v140, v46 offset:9600
	ds_load_u8 v141, v46 offset:9344
	ds_load_u8 v142, v46 offset:8448
	ds_load_u8 v143, v46 offset:8192
	ds_load_u8 v144, v46 offset:8960
	ds_load_u8 v145, v46 offset:8704
	ds_load_u8 v146, v46 offset:9088
	ds_load_u8 v147, v46 offset:8832
	ds_load_u8 v148, v46 offset:8576
	ds_load_u8 v149, v46 offset:8320
	ds_load_u8 v150, v46 offset:15616
	ds_load_u8 v151, v46 offset:15360
	ds_load_u8 v152, v46 offset:16128
	ds_load_u8 v153, v46 offset:15872
	ds_load_u8 v154, v46 offset:16256
	ds_load_u8 v155, v46 offset:16000
	ds_load_u8 v156, v46 offset:15744
	ds_load_u8 v157, v46 offset:15488
	ds_load_u8 v158, v46 offset:14592
	ds_load_u8 v159, v46 offset:14336
	ds_load_u8 v160, v46 offset:15104
	ds_load_u8 v161, v46 offset:14848
	ds_load_u8 v162, v46 offset:15232
	ds_load_u8 v163, v46 offset:14976
	ds_load_u8 v164, v46 offset:14720
	ds_load_u8 v165, v46 offset:14464
	ds_load_u8 v166, v46 offset:13568
	ds_load_u8 v167, v46 offset:13312
	ds_load_u8 v168, v46 offset:14080
	ds_load_u8 v169, v46 offset:13824
	ds_load_u8 v170, v46 offset:14208
	ds_load_u8 v171, v46 offset:13952
	ds_load_u8 v172, v46 offset:13696
	ds_load_u8 v173, v46 offset:13440
	ds_load_u8 v174, v46 offset:12544
	ds_load_u8 v175, v46 offset:12288
	ds_load_u8 v176, v46 offset:13056
	ds_load_u8 v177, v46 offset:12800
	ds_load_u8 v178, v46 offset:13184
	ds_load_u8 v179, v46 offset:12928
	ds_load_u8 v180, v46 offset:12672
	ds_load_u8 v181, v46 offset:12416
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v65, v117, v65 :: v_dual_lshlrev_b32 v118, 16, v118
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v182, v117, v101
	v_mul_f32_e32 v183, v117, v102
	v_mul_f32_e32 v184, v117, v103
	v_mul_f32_e32 v186, v117, v105
	v_dual_mul_f32 v187, v117, v106 :: v_dual_mul_f32 v190, v118, v109
	v_dual_mul_f32 v71, v117, v71 :: v_dual_mul_f32 v192, v118, v82
	v_dual_mul_f32 v188, v117, v107 :: v_dual_mul_f32 v189, v118, v108
	s_waitcnt lgkmcnt(62)
	v_dual_mul_f32 v191, v118, v81 :: v_dual_lshlrev_b32 v198, 16, v59
	v_dual_mul_f32 v193, v118, v83 :: v_dual_lshlrev_b32 v196, 16, v57
	v_dual_mul_f32 v86, v118, v86 :: v_dual_lshlrev_b32 v199, 16, v60
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v81, v119, v116, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v82, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v83, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v101, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v102, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v103, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v104, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v105, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v106, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v108, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v109, v161, v160, 0xc0c0004
	v_perm_b32 v119, v125, v124, 0xc0c0004
	v_perm_b32 v120, v123, v122, 0xc0c0004
	v_perm_b32 v121, v133, v132, 0xc0c0004
	v_perm_b32 v122, v131, v130, 0xc0c0004
	v_perm_b32 v123, v141, v140, 0xc0c0004
	v_perm_b32 v124, v139, v138, 0xc0c0004
	v_perm_b32 v125, v149, v148, 0xc0c0004
	v_perm_b32 v126, v147, v146, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v66, v117, v66
	v_dual_mul_f32 v67, v117, v67 :: v_dual_mul_f32 v78, v118, v78
	v_mul_f32_e32 v68, v117, v68
	v_dual_mul_f32 v69, v117, v69 :: v_dual_mul_f32 v80, v118, v80
	v_mul_f32_e32 v70, v117, v70
	v_dual_mul_f32 v72, v117, v72 :: v_dual_mul_f32 v77, v118, v77
	v_mul_f32_e32 v117, v111, v117
	v_mul_f32_e32 v79, v118, v79
	v_dual_mul_f32 v194, v118, v84 :: v_dual_lshlrev_b32 v197, 16, v58
	v_dual_mul_f32 v85, v118, v85 :: v_dual_lshlrev_b32 v202, 16, v63
	v_dual_mul_f32 v87, v118, v87 :: v_dual_lshlrev_b32 v200, 16, v61
	v_dual_mul_f32 v88, v118, v88 :: v_dual_lshlrev_b32 v201, 16, v62
	v_dual_mul_f32 v195, v118, v110 :: v_dual_and_b32 v60, 0xffff0000, v60
	v_dual_mul_f32 v118, v112, v118 :: v_dual_lshlrev_b32 v203, 16, v64
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v42, v182, v197
	v_dual_fmac_f32 v40, v184, v199 :: v_dual_and_b32 v57, 0xffff0000, v57
	v_dual_fmac_f32 v39, v117, v196 :: v_dual_and_b32 v58, 0xffff0000, v58
	v_dual_fmac_f32 v38, v185, v200 :: v_dual_and_b32 v59, 0xffff0000, v59
	v_dual_fmac_f32 v36, v187, v202 :: v_dual_and_b32 v61, 0xffff0000, v61
	v_dual_fmac_f32 v37, v186, v201 :: v_dual_and_b32 v62, 0xffff0000, v62
	v_dual_fmac_f32 v34, v66, v57 :: v_dual_and_b32 v63, 0xffff0000, v63
	v_dual_fmac_f32 v41, v183, v198 :: v_dual_and_b32 v64, 0xffff0000, v64
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v110, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v111, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v112, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v177, v176, 0xc0c0004
	v_lshl_or_b32 v84, v82, 16, v81
	v_lshl_or_b32 v83, v101, 16, v83
	v_lshl_or_b32 v82, v103, 16, v102
	v_lshl_or_b32 v81, v105, 16, v104
	v_lshl_or_b32 v104, v107, 16, v106
	v_lshl_or_b32 v103, v109, 16, v108
	v_lshl_or_b32 v108, v120, 16, v119
	v_lshl_or_b32 v107, v122, 16, v121
	v_lshl_or_b32 v106, v124, 16, v123
	v_lshl_or_b32 v105, v126, 16, v125
	v_lshl_or_b32 v102, v111, 16, v110
	v_lshl_or_b32 v101, v116, 16, v112
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v65, v203 :: v_dual_fmac_f32 v30, v70, v61
	v_dual_fmac_f32 v33, v67, v58 :: v_dual_fmac_f32 v32, v68, v59
	v_dual_fmac_f32 v31, v69, v60 :: v_dual_fmac_f32 v28, v72, v63
	v_dual_fmac_f32 v29, v71, v62 :: v_dual_fmac_f32 v26, v118, v196
	v_dual_fmac_f32 v27, v188, v64 :: v_dual_fmac_f32 v24, v190, v198
	v_dual_fmac_f32 v25, v189, v197 :: v_dual_fmac_f32 v22, v78, v200
	v_dual_fmac_f32 v23, v77, v199 :: v_dual_fmac_f32 v20, v80, v202
	v_dual_fmac_f32 v21, v79, v201 :: v_dual_fmac_f32 v16, v194, v59
	v_dual_fmac_f32 v19, v191, v203 :: v_dual_fmac_f32 v18, v192, v57
	v_dual_fmac_f32 v17, v193, v58 :: v_dual_fmac_f32 v12, v86, v61
	v_dual_fmac_f32 v15, v85, v60 :: v_dual_fmac_f32 v10, v88, v63
	v_fmac_f32_e32 v11, v87, v62
	v_fmac_f32_e32 v9, v195, v64
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[105:108], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v157, v156, 0xc0c0004
	v_perm_b32 v128, v155, v154, 0xc0c0004
	v_perm_b32 v129, v165, v164, 0xc0c0004
	v_perm_b32 v130, v163, v162, 0xc0c0004
	v_perm_b32 v131, v173, v172, 0xc0c0004
	v_perm_b32 v132, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v181, v180, 0xc0c0004
	v_perm_b32 v134, v179, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[97:100], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v128, 16, v127
	v_lshl_or_b32 v111, v130, 16, v129
	v_lshl_or_b32 v110, v132, 16, v131
	v_lshl_or_b32 v109, v134, 16, v133
	v_wmma_i32_16x16x16_iu8 v[81:88], v[105:108], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[93:96], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[109:112], v[93:96], v[65:72] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v90, v59
	v_cvt_f32_i32_e32 v104, v57
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[97:100], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v58
	v_cvt_f32_i32_e32 v91, v60
	v_cvt_f32_i32_e32 v92, v61
	v_cvt_f32_i32_e32 v93, v62
	v_cvt_f32_i32_e32 v94, v63
	v_cvt_f32_i32_e32 v95, v64
	v_cvt_f32_i32_e32 v96, v65
	v_cvt_f32_i32_e32 v97, v66
	v_cvt_f32_i32_e32 v98, v67
	v_cvt_f32_i32_e32 v99, v68
	v_cvt_f32_i32_e32 v100, v69
	v_cvt_f32_i32_e32 v101, v70
	v_cvt_f32_i32_e32 v102, v71
	v_cvt_f32_i32_e32 v103, v72
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
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
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v106, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v76, v106, v76 :: v_dual_lshlrev_b32 v105, 16, v114
	v_dual_mul_f32 v90, v105, v90 :: v_dual_lshlrev_b32 v57, 16, v113
	v_mul_f32_e32 v104, v104, v105
	v_dual_mul_f32 v89, v105, v89 :: v_dual_mul_f32 v74, v106, v74
	ds_store_b32 v56, v57 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v49 offset:18432
	ds_load_b128 v[61:64], v49 offset:18448
	ds_load_b128 v[65:68], v49 offset:18944
	ds_load_b128 v[69:72], v49 offset:18960
	v_dual_mul_f32 v91, v105, v91 :: v_dual_mul_f32 v78, v106, v78
	v_dual_mul_f32 v92, v105, v92 :: v_dual_mul_f32 v75, v106, v75
	v_dual_mul_f32 v93, v105, v93 :: v_dual_mul_f32 v80, v106, v80
	v_dual_mul_f32 v94, v105, v94 :: v_dual_mul_f32 v77, v106, v77
	v_dual_mul_f32 v95, v105, v95 :: v_dual_mul_f32 v82, v106, v82
	v_dual_mul_f32 v96, v105, v96 :: v_dual_mul_f32 v79, v106, v79
	v_dual_mul_f32 v97, v105, v97 :: v_dual_mul_f32 v84, v106, v84
	v_dual_mul_f32 v98, v105, v98 :: v_dual_mul_f32 v81, v106, v81
	v_dual_mul_f32 v99, v105, v99 :: v_dual_mul_f32 v86, v106, v86
	v_dual_mul_f32 v100, v105, v100 :: v_dual_mul_f32 v83, v106, v83
	v_dual_mul_f32 v101, v105, v101 :: v_dual_mul_f32 v88, v106, v88
	v_dual_mul_f32 v102, v105, v102 :: v_dual_mul_f32 v85, v106, v85
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v103, v105, v103 :: v_dual_fmac_f32 v40, v91, v60
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v73, v73, v106 :: v_dual_fmac_f32 v38, v92, v61
	v_dual_mul_f32 v87, v106, v87 :: v_dual_fmac_f32 v42, v89, v58
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v39, v104, v57 :: v_dual_fmac_f32 v36, v94, v63
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v41, v90, v59 :: v_dual_fmac_f32 v34, v96, v65
	v_dual_fmac_f32 v37, v93, v62 :: v_dual_fmac_f32 v32, v98, v67
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v35, v95, v64 :: v_dual_fmac_f32 v30, v100, v69
	v_dual_fmac_f32 v33, v97, v66 :: v_dual_fmac_f32 v28, v102, v71
	v_dual_fmac_f32 v31, v99, v68 :: v_dual_fmac_f32 v26, v73, v57
	v_dual_fmac_f32 v29, v101, v70 :: v_dual_fmac_f32 v24, v75, v59
	v_dual_fmac_f32 v27, v103, v72 :: v_dual_fmac_f32 v22, v77, v61
	v_dual_fmac_f32 v25, v74, v58 :: v_dual_fmac_f32 v20, v79, v63
	v_dual_fmac_f32 v23, v76, v60 :: v_dual_fmac_f32 v18, v81, v65
	v_dual_fmac_f32 v21, v78, v62 :: v_dual_fmac_f32 v16, v83, v67
	v_dual_fmac_f32 v19, v80, v64 :: v_dual_fmac_f32 v12, v85, v69
	v_dual_fmac_f32 v17, v82, v66 :: v_dual_fmac_f32 v10, v87, v71
	v_fmac_f32_e32 v15, v84, v68
	v_fmac_f32_e32 v11, v86, v70
	v_fmac_f32_e32 v9, v88, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v39, 16, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_bfe_u32 v3, v42, 16, 1
	v_bfe_u32 v4, v41, 16, 1
	v_add3_u32 v1, v39, v1, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v39, s28, s2, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v40, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v3, v42, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v4, v41, v4, 0x7fff
	v_add3_u32 v2, v40, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_bfe_u32 v5, v36, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v38, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_cmp_o_f32_e64 s0, v37, v37
	v_add3_u32 v3, v38, v3, 0x7fff
	v_bfe_u32 v6, v35, 16, 1
	v_add3_u32 v4, v37, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_add3_u32 v5, v36, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v36, v36
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v34, 16, 1
	v_bfe_u32 v7, v33, 16, 1
	v_add3_u32 v6, v35, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v4, v34, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_add3_u32 v7, v33, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v33, v33
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v32, 16, 1
	v_bfe_u32 v8, v31, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v30, 16, 1
	v_add3_u32 v6, v32, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v8, v31, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	v_bfe_u32 v13, v29, 16, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v43, s19, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v30, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s0
	v_bfe_u32 v8, v28, 16, 1
	v_bfe_u32 v14, v27, 16, 1
	v_add3_u32 v13, v29, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_add3_u32 v8, v28, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v28, v28
	v_add3_u32 v14, v27, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_cndmask_b16 v7.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v26, 16, 1
	v_bfe_u32 v27, v25, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v24, 16, 1
	v_add3_u32 v13, v26, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v26, v25, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	v_add3_u32 v14, v24, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v24, v24
	v_bfe_u32 v24, v23, 16, 1
	v_bfe_u32 v25, v22, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v26.h, s0
	v_bfe_u32 v26, v21, 16, 1
	v_add3_u32 v24, v23, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v23, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_add3_u32 v22, v21, v26, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cmp_o_f32_e64 s1, v21, v21
	v_bfe_u32 v21, v20, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s0
	v_bfe_u32 v23, v19, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v24.h, vcc_lo
	v_bfe_u32 v24, v18, 16, 1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	v_add3_u32 v19, v18, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_cndmask_b16 v18.l, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v17, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v16, 16, 1
	v_bfe_u32 v23, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_add3_u32 v17, v16, v20, 0x7fff
	v_add3_u32 v16, v15, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cmp_o_f32_e64 s1, v15, v15
	v_bfe_u32 v15, v12, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v11, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v20, v10, 16, 1
	v_add3_u32 v15, v12, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v12, v11, v17, 0x7fff
	v_bfe_u32 v17, v9, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	v_cmp_o_f32_e64 s0, v11, v11
	v_add3_u32 v11, v10, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	v_add3_u32 v10, v9, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v9, v9
	v_cndmask_b16 v9.l, 0x7fff, v15.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v44, s18, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s2
	v_dual_cndmask_b32 v10, v3, v1 :: v_dual_cndmask_b32 v1, v1, v3
	v_dual_cndmask_b32 v3, v5, v2 :: v_dual_cndmask_b32 v2, v2, v5
	v_dual_cndmask_b32 v5, v7, v4 :: v_dual_cndmask_b32 v4, v4, v7
	v_mov_b32_e32 v11, 0x5410
	v_dual_mov_b32 v12, 0x7632 :: v_dual_cndmask_b32 v15, v22, v13
	v_dual_cndmask_b32 v7, v8, v6 :: v_dual_cndmask_b32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v11, 0x1054, v11, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v12, vcc_lo
	v_cndmask_b32_e32 v8, v13, v22, vcc_lo
	v_cndmask_b32_e32 v13, v18, v14, vcc_lo
	v_dual_cndmask_b32 v14, v14, v18 :: v_dual_cndmask_b32 v17, v9, v19
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b32_e32 v18, v0, v16, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, v16, v0 :: v_dual_and_b32 v11, 0x540054, v11
	v_and_b32_e32 v12, 0x760076, v12
	v_permlanex16_b32 v16, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v9, v19, v9, vcc_lo
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v11, 4, v11
	v_lshl_or_b32 v11, v12, 4, v12
	v_permlanex16_b32 v12, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v2
	v_and_b32_e32 v22, 0x7060706, v11
	v_permlanex16_b32 v11, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v10, v21
	v_perm_b32 v1, v1, v10, v22
	v_perm_b32 v2, v16, v3, v21
	v_perm_b32 v3, v16, v3, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v39, v43, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v4, v12, v5, v21
	v_perm_b32 v5, v12, v5, v22
	v_perm_b32 v6, v19, v7, v21
	v_perm_b32 v7, v19, v7, v22
	v_perm_b32 v8, v20, v15, v21
	v_perm_b32 v9, v20, v15, v22
	v_perm_b32 v10, v11, v13, v21
	v_perm_b32 v11, v11, v13, v22
	v_perm_b32 v12, v14, v17, v21
	v_perm_b32 v13, v14, v17, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v39, v44, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v23, v18, v21
	v_perm_b32 v15, v23, v18, v22
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 204
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6716
; TotalNumSgprs: 32
; NumVgprs: 204
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     204
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
