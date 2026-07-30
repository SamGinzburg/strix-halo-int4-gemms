	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
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
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s4, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s15, s4, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s4, s2, s5
	v_or_b32_e32 v43, s15, v0
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s2, s16, 0x1ff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s4, s4, s6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s2, 0x1ff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_lshl_b32 s6, s25, 5
	s_lshl_b32 s7, s25, 4
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v1, s15, v0
	v_dual_mov_b32 v2, s6 :: v_dual_mov_b32 v3, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 14 is_stmt 0                ; generate_amdgcn.py:0:14
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow198
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v42, 2, v0
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v41, 0xf0, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 325 32 is_stmt 1              ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:336:26 ]
	s_add_i32 s1, s16, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp16:
	.loc	1 338 26 is_stmt 1              ; generate_amdgcn.py:338:26
	s_lshl_b32 s24, s3, 6
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	s_mul_i32 s3, s14, s16
	v_mul_lo_u32 v2, s16, v2
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s16, s1, 31
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 28, v42
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s0, s0, 23
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_lshr_b32 s16, s16, 27
.Ltmp20:
	.loc	1 325 32 is_stmt 1              ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v3, 4, v41
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s2, s2, s0
.Ltmp22:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_add_i32 s1, s1, s16
	s_mov_b32 s0, 0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s26, s2, 9
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s27, s1, 5
	v_add3_u32 v44, v2, v4, s3
	s_mov_b32 s1, s0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s2, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	v_lshlrev_b32_e32 v2, 5, v0
	v_mul_lo_u32 v3, s25, v3
.Ltmp25:
	.loc	1 325 32 is_stmt 1              ; generate_amdgcn.py:325:32
	v_and_b32_e32 v1, 15, v0
	v_bfe_i32 v5, v0, 2, 1
	v_lshrrev_b32_e32 v7, 1, v0
	v_and_b32_e32 v4, 0x160, v2
	v_lshrrev_b32_e32 v9, 6, v0
	v_and_b32_e32 v6, 0x37c, v42
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v2, 32, v2
	v_lshl_add_u32 v45, v1, 4, v3
	v_and_or_b32 v4, 0x90, v5, v4
	v_or_b32_e32 v5, s14, v1
	v_and_or_b32 v1, 0x70, v7, v1
	v_bfe_i32 v3, v0, 5, 1
	v_mov_b32_e32 v26, 0
	v_xor_b32_e32 v7, 16, v4
	v_or_b32_e32 v8, 16, v5
	v_add_nc_u32_e32 v47, 0, v1
	v_mul_lo_u32 v48, v5, s27
	v_and_b32_e32 v1, 2, v9
	v_lshlrev_b32_e32 v5, 1, v41
	v_and_b32_e32 v3, 0x90, v3
	v_mul_lo_u32 v49, v8, s27
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v8, 0x1c0, v42
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v50, 0, v5
	v_xor_b32_e32 v3, v3, v6
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v9, 28, v9
	v_add3_u32 v10, v1, v8, v2
	v_add3_u32 v11, v50, v5, v2
	s_lshl_b32 s28, s25, 4
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v51, 0, v3
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v52, 0, v6
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v53, 0, v4
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v54, 0, v7
	v_mov_b32_e32 v8, s7
	v_dual_mov_b32 v5, s4 :: v_dual_add_nc_u32 v46, s28, v45
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	v_dual_mov_b32 v4, s3 :: v_dual_mov_b32 v3, s2
	v_dual_mov_b32 v2, s1 :: v_dual_mov_b32 v1, s0
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v55, v10, v9
	v_add_nc_u32_e32 v56, v11, v9
	v_mov_b32_e32 v11, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s25, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s1, s0, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 338 21                        ; generate_amdgcn.py:338:21
	s_add_i32 s2, s1, s24
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	s_mul_i32 s3, s2, s25
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	v_add_nc_u32_e32 v57, s2, v44
	.loc	1 338 21                        ; generate_amdgcn.py:338:21
	s_or_b32 s1, s2, 32
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	s_add_i32 s3, s3, s15
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	v_add_nc_u32_e32 v58, s1, v44
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	v_add_nc_u32_e32 v59, s3, v45
	v_add_nc_u32_e32 v61, s3, v46
	s_add_i32 s3, s3, s29
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	buffer_load_b32 v73, v57, s[16:19], 0 offen
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	v_add_nc_u32_e32 v65, s3, v45
	v_add_nc_u32_e32 v69, s3, v46
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	buffer_load_b32 v74, v58, s[16:19], 0 offen
	.loc	1 348 26                        ; generate_amdgcn.py:348:26
	s_clause 0x3
	buffer_load_b128 v[57:60], v59, s[20:23], 0 offen
	buffer_load_b128 v[61:64], v61, s[20:23], 0 offen
	buffer_load_b128 v[65:68], v65, s[20:23], 0 offen
	buffer_load_b128 v[69:72], v69, s[20:23], 0 offen
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s2, s2, 5
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v51, v73 offset:16384
	.loc	1 348 26                        ; generate_amdgcn.py:348:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v52, v[57:60]
	s_waitcnt vmcnt(2)
	ds_store_b128 v52, v[61:64] offset:4096
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v75, v48, s2, 1
	.loc	1 360 40                        ; generate_amdgcn.py:360:40
	s_mul_i32 s3, s2, s25
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s2, s27
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v58, v49, s2, 1
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v76, v43, s3, 1
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s1, s1, 5
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	v_add_lshl_u32 v60, v49, s1, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s1, s27
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v51, v74 offset:17408
	.loc	1 348 26                        ; generate_amdgcn.py:348:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v52, v[65:68] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v52, v[69:72] offset:12288
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v115, 0x80000000, v60, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v75, s[4:7], 0 offen
	buffer_load_u16 v118, v58, s[4:7], 0 offen
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	buffer_load_u16 v57, v76, s[8:11], 0 offen
	.loc	1 360 40 is_stmt 0              ; generate_amdgcn.py:360:40
	s_mul_i32 s2, s1, s25
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v59, v48, s1, 1
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v61, v43, s2, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s0, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s0, s26
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v114, 0x80000000, v59 :: v_dual_lshlrev_b32 v117, 16, v117
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_cndmask_b32_e32 v116, 0x80000000, v61, vcc_lo
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[74:77], v53 offset:16384
	ds_load_b128 v[90:93], v53 offset:16896
	ds_load_b128 v[94:97], v54 offset:16384
	ds_load_b128 v[98:101], v54 offset:16896
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	ds_load_u8 v58, v47 offset:3328
	ds_load_u8 v59, v47 offset:3072
	ds_load_u8 v60, v47 offset:3840
	ds_load_u8 v61, v47 offset:3584
	ds_load_u8 v62, v47 offset:3968
	ds_load_u8 v63, v47 offset:3712
	ds_load_u8 v64, v47 offset:3456
	ds_load_u8 v65, v47 offset:3200
	ds_load_u8 v66, v47 offset:2304
	ds_load_u8 v67, v47 offset:2048
	ds_load_u8 v68, v47 offset:2816
	ds_load_u8 v69, v47 offset:2560
	ds_load_u8 v70, v47 offset:2944
	ds_load_u8 v71, v47 offset:2688
	ds_load_u8 v72, v47 offset:2432
	ds_load_u8 v73, v47 offset:2176
	ds_load_u8 v78, v47 offset:1280
	ds_load_u8 v79, v47 offset:1024
	ds_load_u8 v80, v47 offset:1792
	ds_load_u8 v81, v47 offset:1536
	ds_load_u8 v82, v47 offset:1920
	ds_load_u8 v83, v47 offset:1664
	ds_load_u8 v84, v47 offset:1408
	ds_load_u8 v85, v47 offset:1152
	ds_load_u8 v86, v47 offset:256
	ds_load_u8 v87, v47
	ds_load_u8 v88, v47 offset:768
	ds_load_u8 v89, v47 offset:512
	ds_load_u8 v102, v47 offset:896
	ds_load_u8 v103, v47 offset:640
	ds_load_u8 v104, v47 offset:384
	ds_load_u8 v105, v47 offset:128
	ds_load_u8 v106, v47 offset:7424
	ds_load_u8 v107, v47 offset:7168
	ds_load_u8 v108, v47 offset:7936
	ds_load_u8 v109, v47 offset:7680
	ds_load_u8 v110, v47 offset:8064
	ds_load_u8 v111, v47 offset:7808
	ds_load_u8 v112, v47 offset:7552
	ds_load_u8 v113, v47 offset:7296
	ds_load_u8 v119, v47 offset:6400
	ds_load_u8 v120, v47 offset:6144
	ds_load_u8 v121, v47 offset:6912
	ds_load_u8 v122, v47 offset:6656
	ds_load_u8 v123, v47 offset:7040
	ds_load_u8 v124, v47 offset:6784
	ds_load_u8 v125, v47 offset:6528
	ds_load_u8 v126, v47 offset:6272
	ds_load_u8 v127, v47 offset:5376
	ds_load_u8 v128, v47 offset:5120
	ds_load_u8 v129, v47 offset:5888
	ds_load_u8 v130, v47 offset:5632
	ds_load_u8 v131, v47 offset:6016
	ds_load_u8 v132, v47 offset:5760
	ds_load_u8 v133, v47 offset:5504
	ds_load_u8 v134, v47 offset:5248
	ds_load_u8 v135, v47 offset:4352
	ds_load_u8 v136, v47 offset:4096
	ds_load_u8 v137, v47 offset:4864
	ds_load_u8 v138, v47 offset:4608
	ds_load_u8 v139, v47 offset:4992
	ds_load_u8 v140, v47 offset:4736
	ds_load_u8 v141, v47 offset:4480
	ds_load_u8 v142, v47 offset:4224
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
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v55, v57 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v185, v117, v104
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	buffer_load_u16 v113, v116, s[8:11], 0 offen
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_clause 0x1
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
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
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	ds_load_b128 v[57:60], v50 offset:18432
	ds_load_b128 v[61:64], v50 offset:18448
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[73:76], v53 offset:17408
	ds_load_b128 v[89:92], v53 offset:17920
	ds_load_b128 v[93:96], v54 offset:17408
	ds_load_b128 v[97:100], v54 offset:17920
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	ds_load_u8 v116, v47 offset:11520
	ds_load_u8 v119, v47 offset:11264
	ds_load_u8 v120, v47 offset:12032
	ds_load_u8 v121, v47 offset:11776
	ds_load_u8 v122, v47 offset:12160
	ds_load_u8 v123, v47 offset:11904
	ds_load_u8 v124, v47 offset:11648
	ds_load_u8 v125, v47 offset:11392
	ds_load_u8 v126, v47 offset:10496
	ds_load_u8 v127, v47 offset:10240
	ds_load_u8 v128, v47 offset:11008
	ds_load_u8 v129, v47 offset:10752
	ds_load_u8 v130, v47 offset:11136
	ds_load_u8 v131, v47 offset:10880
	ds_load_u8 v132, v47 offset:10624
	ds_load_u8 v133, v47 offset:10368
	ds_load_u8 v134, v47 offset:9472
	ds_load_u8 v135, v47 offset:9216
	ds_load_u8 v136, v47 offset:9984
	ds_load_u8 v137, v47 offset:9728
	ds_load_u8 v138, v47 offset:10112
	ds_load_u8 v139, v47 offset:9856
	ds_load_u8 v140, v47 offset:9600
	ds_load_u8 v141, v47 offset:9344
	ds_load_u8 v142, v47 offset:8448
	ds_load_u8 v143, v47 offset:8192
	ds_load_u8 v144, v47 offset:8960
	ds_load_u8 v145, v47 offset:8704
	ds_load_u8 v146, v47 offset:9088
	ds_load_u8 v147, v47 offset:8832
	ds_load_u8 v148, v47 offset:8576
	ds_load_u8 v149, v47 offset:8320
	ds_load_u8 v150, v47 offset:15616
	ds_load_u8 v151, v47 offset:15360
	ds_load_u8 v152, v47 offset:16128
	ds_load_u8 v153, v47 offset:15872
	ds_load_u8 v154, v47 offset:16256
	ds_load_u8 v155, v47 offset:16000
	ds_load_u8 v156, v47 offset:15744
	ds_load_u8 v157, v47 offset:15488
	ds_load_u8 v158, v47 offset:14592
	ds_load_u8 v159, v47 offset:14336
	ds_load_u8 v160, v47 offset:15104
	ds_load_u8 v161, v47 offset:14848
	ds_load_u8 v162, v47 offset:15232
	ds_load_u8 v163, v47 offset:14976
	ds_load_u8 v164, v47 offset:14720
	ds_load_u8 v165, v47 offset:14464
	ds_load_u8 v166, v47 offset:13568
	ds_load_u8 v167, v47 offset:13312
	ds_load_u8 v168, v47 offset:14080
	ds_load_u8 v169, v47 offset:13824
	ds_load_u8 v170, v47 offset:14208
	ds_load_u8 v171, v47 offset:13952
	ds_load_u8 v172, v47 offset:13696
	ds_load_u8 v173, v47 offset:13440
	ds_load_u8 v174, v47 offset:12544
	ds_load_u8 v175, v47 offset:12288
	ds_load_u8 v176, v47 offset:13056
	ds_load_u8 v177, v47 offset:12800
	ds_load_u8 v178, v47 offset:13184
	ds_load_u8 v179, v47 offset:12928
	ds_load_u8 v180, v47 offset:12672
	ds_load_u8 v181, v47 offset:12416
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v65, v117, v65 :: v_dual_lshlrev_b32 v118, 16, v118
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
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
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
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
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
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
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
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
	v_dual_mul_f32 v86, v118, v86 :: v_dual_lshlrev_b32 v199, 16, v60
	v_dual_mul_f32 v87, v118, v87 :: v_dual_lshlrev_b32 v200, 16, v61
	v_dual_mul_f32 v88, v118, v88 :: v_dual_lshlrev_b32 v201, 16, v62
	v_dual_mul_f32 v195, v118, v110 :: v_dual_and_b32 v60, 0xffff0000, v60
	v_dual_mul_f32 v118, v112, v118 :: v_dual_lshlrev_b32 v203, 16, v64
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v36, v189, v197
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_and_b32_e32 v57, 0xffff0000, v57
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v25, v117, v196 :: v_dual_and_b32 v58, 0xffff0000, v58
	v_dual_fmac_f32 v32, v190, v198 :: v_dual_and_b32 v59, 0xffff0000, v59
	v_dual_fmac_f32 v28, v77, v199 :: v_dual_and_b32 v61, 0xffff0000, v61
	v_dual_fmac_f32 v35, v182, v197 :: v_dual_and_b32 v62, 0xffff0000, v62
	v_dual_fmac_f32 v22, v78, v200 :: v_dual_and_b32 v63, 0xffff0000, v63
	v_dual_fmac_f32 v31, v183, v198 :: v_dual_and_b32 v64, 0xffff0000, v64
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
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
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v27, v184, v199 :: v_dual_fmac_f32 v18, v79, v201
	v_dual_fmac_f32 v21, v185, v200 :: v_dual_fmac_f32 v14, v80, v202
	v_dual_fmac_f32 v11, v65, v203 :: v_dual_fmac_f32 v24, v86, v61
	v_dual_fmac_f32 v37, v67, v58 :: v_dual_fmac_f32 v34, v194, v59
	v_dual_fmac_f32 v33, v68, v59 :: v_dual_fmac_f32 v30, v85, v60
	v_dual_fmac_f32 v29, v69, v60 :: v_dual_fmac_f32 v20, v87, v62
	v_dual_fmac_f32 v23, v70, v61 :: v_dual_fmac_f32 v16, v88, v63
	v_fmac_f32_e32 v19, v71, v62
	v_dual_fmac_f32 v15, v72, v63 :: v_dual_fmac_f32 v10, v195, v64
	v_fmac_f32_e32 v9, v188, v64
	v_dual_fmac_f32 v26, v118, v196 :: v_dual_fmac_f32 v13, v187, v202
	v_fmac_f32_e32 v40, v192, v57
	v_dual_fmac_f32 v39, v66, v57 :: v_dual_fmac_f32 v38, v193, v58
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
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
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v92, v61
	v_cvt_f32_i32_e32 v104, v57
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[97:100], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v58
	v_cvt_f32_i32_e32 v90, v59
	v_cvt_f32_i32_e32 v91, v60
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
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v74, v74
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
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v17, v186, v201 :: v_dual_fmac_f32 v12, v191, v203
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v106, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v76, v106, v76 :: v_dual_lshlrev_b32 v105, 16, v114
	v_dual_mul_f32 v92, v105, v92 :: v_dual_lshlrev_b32 v57, 16, v113
	v_dual_mul_f32 v94, v105, v94 :: v_dual_mul_f32 v75, v106, v75
	v_dual_mul_f32 v104, v104, v105 :: v_dual_mul_f32 v91, v105, v91
	ds_store_b32 v56, v57 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v50 offset:18432
	ds_load_b128 v[61:64], v50 offset:18448
	ds_load_b128 v[65:68], v50 offset:18944
	ds_load_b128 v[69:72], v50 offset:18960
	v_dual_mul_f32 v89, v105, v89 :: v_dual_mul_f32 v74, v106, v74
	v_mul_f32_e32 v90, v105, v90
	v_dual_mul_f32 v93, v105, v93 :: v_dual_mul_f32 v78, v106, v78
	v_dual_mul_f32 v95, v105, v95 :: v_dual_mul_f32 v80, v106, v80
	v_dual_mul_f32 v96, v105, v96 :: v_dual_mul_f32 v77, v106, v77
	v_dual_mul_f32 v97, v105, v97 :: v_dual_mul_f32 v82, v106, v82
	v_dual_mul_f32 v98, v105, v98 :: v_dual_mul_f32 v79, v106, v79
	v_dual_mul_f32 v99, v105, v99 :: v_dual_mul_f32 v84, v106, v84
	v_dual_mul_f32 v100, v105, v100 :: v_dual_mul_f32 v81, v106, v81
	v_dual_mul_f32 v101, v105, v101 :: v_dual_mul_f32 v86, v106, v86
	v_dual_mul_f32 v102, v105, v102 :: v_dual_mul_f32 v83, v106, v83
	v_dual_mul_f32 v103, v105, v103 :: v_dual_mul_f32 v88, v106, v88
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v73, v73, v106 :: v_dual_fmac_f32 v32, v75, v59
	v_dual_mul_f32 v85, v106, v85 :: v_dual_fmac_f32 v28, v76, v60
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v87, v106, v87 :: v_dual_fmac_f32 v26, v73, v57
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v25, v104, v57 :: v_dual_fmac_f32 v36, v74, v58
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v35, v89, v58 :: v_dual_fmac_f32 v14, v79, v63
	v_dual_fmac_f32 v31, v90, v59 :: v_dual_fmac_f32 v22, v77, v61
	v_dual_fmac_f32 v27, v91, v60 :: v_dual_fmac_f32 v18, v78, v62
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v21, v92, v61 :: v_dual_fmac_f32 v38, v82, v66
	v_dual_fmac_f32 v17, v93, v62 :: v_dual_fmac_f32 v12, v80, v64
	v_dual_fmac_f32 v13, v94, v63 :: v_dual_fmac_f32 v40, v81, v65
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v11, v95, v64 :: v_dual_fmac_f32 v24, v85, v69
	v_dual_fmac_f32 v39, v96, v65 :: v_dual_fmac_f32 v34, v83, v67
	v_dual_fmac_f32 v37, v97, v66 :: v_dual_fmac_f32 v30, v84, v68
	v_dual_fmac_f32 v33, v98, v67 :: v_dual_fmac_f32 v10, v88, v72
	v_dual_fmac_f32 v29, v99, v68 :: v_dual_fmac_f32 v20, v86, v70
	v_dual_fmac_f32 v23, v100, v69 :: v_dual_fmac_f32 v16, v87, v71
	v_fmac_f32_e32 v19, v101, v70
	v_fmac_f32_e32 v15, v102, v71
	v_fmac_f32_e32 v9, v103, v72
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, s29 :: v_dual_mov_b32 v3, s28
	v_mov_b32_e32 v1, v43
.LBB0_7:                                ; %._crit_edge
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_bfe_i32 v4, v0, 0, 1
	v_and_b32_e32 v5, 0x3f8, v42
	v_and_b32_e32 v6, 14, v0
	v_and_b32_e32 v0, 1, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v4, 0x840, v4
	s_barrier
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s15, 0x31027000
	v_xor_b32_e32 v4, v4, v5
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s25, 3
	s_mul_i32 s1, s25, 5
	s_mul_i32 s2, s25, 6
	s_mul_i32 s3, s25, 7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v7, v6, 11, v4
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mad_u64_u32 v[4:5], null, s14, s25, v[1:2]
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v6, 2, v6
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v7
	v_xad_u32 v5, v7, 8, 0
	v_xad_u32 v8, v7, 16, 0
	v_xad_u32 v42, v7, 24, 0
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s25, 9
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v1, v[25:26], v[39:40] offset1:2
	ds_store_2addr_stride64_b64 v5, v[35:36], v[37:38] offset1:2
	ds_store_2addr_stride64_b64 v8, v[31:32], v[33:34] offset1:2
	ds_store_2addr_stride64_b64 v42, v[27:28], v[29:30] offset1:2
	v_lshlrev_b32_e32 v5, 3, v41
	v_xad_u32 v1, v7, 32, 0
	v_xad_u32 v8, v7, 40, 0
	v_xad_u32 v25, v7, 48, 0
	v_xad_u32 v7, v7, 56, 0
	v_or3_b32 v27, v5, v0, v6
	ds_store_2addr_stride64_b64 v1, v[21:22], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v8, v[17:18], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v25, v[13:14], v[15:16] offset1:2
	ds_store_2addr_stride64_b64 v7, v[11:12], v[9:10] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v27
	v_xad_u32 v5, 0x840, v27, 0
	v_xad_u32 v7, 0x1008, v27, 0
	v_xad_u32 v9, 0x1848, v27, 0
	ds_load_b64 v[0:1], v0
	ds_load_b64 v[5:6], v5
	ds_load_b64 v[7:8], v7
	ds_load_b64 v[9:10], v9
	v_xad_u32 v11, 0x2010, v27, 0
	v_xad_u32 v13, 0x2850, v27, 0
	v_xad_u32 v15, 0x3018, v27, 0
	v_xad_u32 v17, 0x3858, v27, 0
	v_xad_u32 v19, 0x4020, v27, 0
	v_xad_u32 v21, 0x4860, v27, 0
	v_xad_u32 v23, 0x5028, v27, 0
	v_xad_u32 v25, 0x5868, v27, 0
	ds_load_b64 v[11:12], v11
	ds_load_b64 v[13:14], v13
	ds_load_b64 v[15:16], v15
	ds_load_b64 v[17:18], v17
	ds_load_b64 v[19:20], v19
	ds_load_b64 v[21:22], v21
	ds_load_b64 v[23:24], v23
	ds_load_b64 v[25:26], v25
	v_xad_u32 v28, 0x6030, v27, 0
	v_xad_u32 v29, 0x6870, v27, 0
	v_xad_u32 v31, 0x7038, v27, 0
	v_xad_u32 v33, 0x7878, v27, 0
	v_lshlrev_b32_e32 v35, 2, v4
	ds_load_b64 v[27:28], v28
	ds_load_b64 v[29:30], v29
	ds_load_b64 v[31:32], v31
	ds_load_b64 v[33:34], v33
	v_add_lshl_u32 v36, v4, s25, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v35, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v5, v36, s[12:15], 0 offen
	v_lshl_add_u32 v0, s25, 3, v35
	v_add_lshl_u32 v5, v4, s0, 2
	v_add_nc_u32_e32 v3, v3, v35
	v_add_lshl_u32 v36, v4, s1, 2
	v_add_lshl_u32 v37, v4, s2, 2
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v7, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v9, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v11, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v13, v36, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v15, v37, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s3, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s5, s25, 10
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v2, v2, v35
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s6, s25, 11
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, v4, s4, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s7, s25, 12
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, v4, s5, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s8, s25, 13
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v7, v4, s6, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s9, s25, 14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v17, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v19, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v21, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v23, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v25, v7, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s7, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s10, s25, 15
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v4, s8, 2
	v_add_lshl_u32 v3, v4, s9, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s11, s25, 17
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, v4, s10, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s16, s25, 18
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_add_u32 v7, s25, 6, v35
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s17, s25, 19
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v27, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v29, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v31, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x1
	buffer_atomic_add_f32 v33, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v7, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s11, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s18, s25, 20
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v4, s16, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s19, s25, 21
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v4, s17, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s20, s25, 22
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, v4, s18, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s21, s25, 23
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, v4, s19, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s22, s25, 24
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v6, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s20, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s23, s25, 25
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v4, s21, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s24, s25, 26
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v4, s22, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s26, s25, 27
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, v4, s23, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s27, s25, 28
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, v4, s24, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s28, s25, 29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v16, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s26, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s29, s25, 30
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v4, s27, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s30, s25, 31
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v4, s28, 2
	v_add_lshl_u32 v3, v4, s29, 2
	v_add_lshl_u32 v4, v4, s30, 2
	s_clause 0x4
	buffer_atomic_add_f32 v26, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v4, s[12:15], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
		.amdhsa_inst_pref_size 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 204
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6232
; TotalNumSgprs: 33
; NumVgprs: 204
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	336                             ; DW_AT_call_line
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
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
