	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v25, 0xf0, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v26, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	s_lshl_b32 s29, s7, 5
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s28, s6, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v25
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp14:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s4, 31
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v3, 2, v0
	v_mul_lo_u32 v1, s19, v1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s2, s1, 31
	v_mul_lo_u32 v2, s18, v2
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s2, 27
	s_mov_b32 s4, 0
	s_add_i32 s1, s1, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 6
	v_lshl_add_u32 v27, v26, 4, v1
	v_lshrrev_b32_e32 v1, 1, v0
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp20:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 28, v3
	v_and_or_b32 v1, 0x70, v1, v26
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s1, s1, 5
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v7, 0x1c0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v2, v4, s29
	v_or_b32_e32 v2, s29, v26
	v_add_nc_u32_e32 v31, 0, v1
	v_lshrrev_b32_e32 v1, 6, v0
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_or_b32_e32 v5, 16, v2
	v_mul_lo_u32 v35, v2, s1
	v_lshlrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v1, 2, v1
	v_lshlrev_b32_e32 v4, 4, v0
	v_mul_lo_u32 v37, v5, s1
	v_lshlrev_b32_e32 v5, 1, v25
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v2, 32, v2
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v44, 0, v5
	v_or_b32_e32 v6, 0x3f0, v0
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v9, 28, v8
	v_add3_u32 v10, v1, v7, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v11, v44, v5, v2
	s_lshl_b32 s2, s19, 4
	v_add_nc_u32_e32 v30, 0, v26
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v58, 0, v3
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v59, 0, v4
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v65, 0, v6
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v2, s5 :: v_dual_add_nc_u32 v29, s2, v27
	v_or_b32_e32 v45, s28, v0
.Ltmp22:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v49, s18, 5, v28
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v72, v10, v9
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v73, v11, v9
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v32, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s30, s19, 5
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
	s_lshl_b32 s5, s5, 6
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s6, s5, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s7, s5, s19
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v9, s6, v28
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s28
	v_add_nc_u32_e32 v10, s6, v49
	v_add_nc_u32_e32 v11, s7, v27
	s_add_i32 s6, s7, s30
	v_add_nc_u32_e32 v12, s7, v29
	v_add_nc_u32_e32 v13, s6, v27
	v_add_nc_u32_e32 v14, s6, v29
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_clause 0x1
	buffer_load_b32 v75, v9, s[20:23], 0 offen
	buffer_load_b32 v74, v10, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[17:20], v11, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v12, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v13, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v14, s[24:27], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v58, v75 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v59, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v59, v[21:24] offset:4096
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v76, v35, s5, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v77, v37, s5, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v78, v45, s6, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_or_b32 s5, s5, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_add_lshl_u32 v80, v37, s5, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v115, 0x80000000, v80, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_barrier
	ds_store_b32 v58, v74 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v59, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v59, v[13:16] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v117, v76, s[8:11], 0 offen
	buffer_load_u16 v118, v77, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v119, v78, s[12:15], 0 offen
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v79, v35, s5, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v81, v45, s6, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lg_u32 s4, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v114, 0x80000000, v79, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v116, 0x80000000, v81, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v30 offset:16480
	ds_load_u8 v10, v30 offset:16448
	ds_load_u8 v11, v30 offset:16384
	ds_load_u8 v12, v30 offset:16400
	ds_load_u8 v13, v30 offset:16416
	ds_load_u8 v14, v30 offset:16496
	ds_load_u8 v15, v30 offset:16464
	ds_load_u8 v16, v30 offset:16432
	ds_load_u8 v17, v31 offset:3328
	ds_load_u8 v18, v31 offset:3840
	ds_load_u8 v19, v31 offset:3584
	ds_load_u8 v20, v31 offset:4096
	ds_load_u8 v21, v31 offset:3968
	ds_load_u8 v22, v31 offset:3712
	ds_load_u8 v23, v31 offset:3456
	ds_load_u8 v24, v31 offset:3200
	ds_load_u8 v74, v31 offset:3072
	ds_load_u8 v75, v31 offset:2304
	ds_load_u8 v76, v31 offset:2816
	ds_load_u8 v77, v31 offset:2560
	ds_load_u8 v78, v31 offset:2944
	ds_load_u8 v79, v31 offset:2688
	ds_load_u8 v80, v31 offset:2432
	ds_load_u8 v81, v31 offset:2176
	ds_load_u8 v82, v31 offset:2048
	ds_load_u8 v83, v31 offset:1280
	ds_load_u8 v84, v31 offset:1792
	ds_load_u8 v85, v31 offset:1536
	ds_load_u8 v86, v31 offset:1920
	ds_load_u8 v87, v31 offset:1664
	ds_load_u8 v88, v31 offset:1408
	ds_load_u8 v89, v31 offset:1152
	ds_load_u8 v90, v31 offset:1024
	ds_load_u8 v91, v31 offset:256
	ds_load_u8 v92, v31 offset:768
	ds_load_u8 v93, v31 offset:512
	ds_load_u8 v94, v31 offset:896
	ds_load_u8 v95, v31 offset:640
	ds_load_u8 v96, v31 offset:384
	ds_load_u8 v97, v31 offset:128
	ds_load_u8 v98, v31 offset:7424
	ds_load_u8 v99, v31 offset:7936
	ds_load_u8 v100, v31 offset:7680
	ds_load_u8 v101, v31 offset:8064
	ds_load_u8 v102, v65 offset:16384
	ds_load_u8 v103, v31 offset:7808
	ds_load_u8 v104, v31 offset:7552
	ds_load_u8 v105, v31 offset:7296
	ds_load_u8 v106, v31 offset:7168
	ds_load_u8 v107, v31 offset:6400
	ds_load_u8 v108, v31 offset:6912
	ds_load_u8 v109, v31 offset:6656
	ds_load_u8 v110, v31 offset:7040
	ds_load_u8 v111, v31 offset:6784
	ds_load_u8 v112, v31 offset:6528
	ds_load_u8 v113, v31 offset:6272
	ds_load_u8 v120, v31 offset:6144
	ds_load_u8 v121, v31 offset:5376
	ds_load_u8 v122, v31 offset:5888
	ds_load_u8 v123, v31 offset:5632
	ds_load_u8 v124, v31 offset:6016
	ds_load_u8 v125, v31 offset:5760
	ds_load_u8 v126, v31 offset:5504
	ds_load_u8 v127, v31 offset:5248
	ds_load_u8 v128, v31 offset:5120
	ds_load_u8 v129, v31 offset:4352
	ds_load_u8 v130, v31 offset:4864
	ds_load_u8 v131, v31 offset:4608
	ds_load_u8 v132, v31 offset:4992
	ds_load_u8 v133, v31 offset:4736
	ds_load_u8 v134, v31 offset:4480
	ds_load_u8 v135, v31 offset:4224
	ds_load_u8 v136, v30 offset:16800
	ds_load_u8 v137, v30 offset:16768
	ds_load_u8 v138, v30 offset:16864
	ds_load_u8 v139, v30 offset:16832
	ds_load_u8 v140, v30 offset:16880
	ds_load_u8 v141, v30 offset:16848
	ds_load_u8 v142, v30 offset:16816
	ds_load_u8 v143, v30 offset:16784
	ds_load_u8 v144, v30 offset:16672
	ds_load_u8 v145, v30 offset:16640
	ds_load_u8 v146, v30 offset:16736
	ds_load_u8 v147, v30 offset:16704
	ds_load_u8 v148, v30 offset:16752
	ds_load_u8 v149, v30 offset:16720
	ds_load_u8 v150, v30 offset:16688
	ds_load_u8 v151, v30 offset:16656
	ds_load_u8 v152, v30 offset:16544
	ds_load_u8 v153, v30 offset:16512
	ds_load_u8 v154, v30 offset:16608
	ds_load_u8 v155, v30 offset:16576
	ds_load_u8 v156, v30 offset:16624
	ds_load_u8 v157, v30 offset:16592
	ds_load_u8 v158, v30 offset:16560
	ds_load_u8 v159, v30 offset:16528
	ds_load_u8 v160, v30 offset:17184
	ds_load_u8 v161, v30 offset:17152
	ds_load_u8 v162, v30 offset:17248
	ds_load_u8 v163, v30 offset:17216
	ds_load_u8 v164, v30 offset:17264
	ds_load_u8 v165, v30 offset:17232
	ds_load_u8 v166, v30 offset:17200
	ds_load_u8 v167, v30 offset:17168
	ds_load_u8 v168, v30 offset:17056
	ds_load_u8 v169, v30 offset:17024
	ds_load_u8 v170, v30 offset:17120
	ds_load_u8 v171, v30 offset:17088
	ds_load_u8 v172, v30 offset:17136
	ds_load_u8 v173, v30 offset:17104
	ds_load_u8 v174, v30 offset:17072
	ds_load_u8 v175, v30 offset:17040
	ds_load_u8 v176, v30 offset:16928
	ds_load_u8 v177, v30 offset:16896
	ds_load_u8 v178, v30 offset:16992
	ds_load_u8 v179, v30 offset:16960
	ds_load_u8 v180, v30 offset:17008
	ds_load_u8 v181, v30 offset:16976
	ds_load_u8 v182, v30 offset:16944
	ds_load_u8 v183, v30 offset:16912
	ds_load_u8 v184, v31
	ds_load_u8 v185, v30 offset:17312
	ds_load_u8 v186, v30 offset:17280
	ds_load_u8 v187, v30 offset:17376
	ds_load_u8 v188, v30 offset:17344
	ds_load_u8 v189, v30 offset:17360
	ds_load_u8 v190, v30 offset:17328
	ds_load_u8 v191, v30 offset:17296
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v137, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v138, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v139, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v144, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v145, v155, v154, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v11, v13, 0xc0c0004
	v_perm_b32 v11, v74, v17, 0xc0c0004
	v_perm_b32 v13, v19, v18, 0xc0c0004
	v_perm_b32 v17, v82, v75, 0xc0c0004
	v_perm_b32 v18, v77, v76, 0xc0c0004
	v_perm_b32 v19, v90, v83, 0xc0c0004
	v_perm_b32 v82, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v90, v184, v91, 0xc0c0004
	v_perm_b32 v91, v93, v92, 0xc0c0004
	v_perm_b32 v98, v106, v98, 0xc0c0004
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v100, v120, v107, 0xc0c0004
	v_perm_b32 v106, v109, v108, 0xc0c0004
	v_perm_b32 v107, v128, v121, 0xc0c0004
	v_perm_b32 v108, v123, v122, 0xc0c0004
	v_perm_b32 v20, v20, v129, 0xc0c0004
	v_perm_b32 v109, v131, v130, 0xc0c0004
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v22, v81, v80, 0xc0c0004
	v_perm_b32 v24, v79, v78, 0xc0c0004
	v_perm_b32 v78, v89, v88, 0xc0c0004
	v_perm_b32 v79, v87, v86, 0xc0c0004
	v_perm_b32 v80, v97, v96, 0xc0c0004
	v_perm_b32 v81, v95, v94, 0xc0c0004
	v_perm_b32 v88, v113, v112, 0xc0c0004
	v_perm_b32 v89, v111, v110, 0xc0c0004
	v_perm_b32 v110, v125, v124, 0xc0c0004
	v_perm_b32 v113, v143, v142, 0xc0c0004
	v_perm_b32 v120, v141, v140, 0xc0c0004
	v_perm_b32 v121, v151, v150, 0xc0c0004
	v_perm_b32 v122, v149, v148, 0xc0c0004
	v_perm_b32 v123, v159, v158, 0xc0c0004
	v_perm_b32 v124, v157, v156, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v12, v16, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v92, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v188, v187, 0xc0c0004
	v_perm_b32 v146, v161, v160, 0xc0c0004
	v_perm_b32 v147, v163, v162, 0xc0c0004
	v_perm_b32 v152, v169, v168, 0xc0c0004
	v_perm_b32 v153, v171, v170, 0xc0c0004
	v_perm_b32 v154, v177, v176, 0xc0c0004
	v_perm_b32 v155, v179, v178, 0xc0c0004
	v_perm_b32 v87, v103, v101, 0xc0c0004
	v_perm_b32 v103, v127, v126, 0xc0c0004
	v_perm_b32 v111, v135, v134, 0xc0c0004
	v_perm_b32 v112, v133, v132, 0xc0c0004
	v_perm_b32 v15, v167, v166, 0xc0c0004
	v_perm_b32 v16, v165, v164, 0xc0c0004
	v_perm_b32 v125, v175, v174, 0xc0c0004
	v_perm_b32 v126, v173, v172, 0xc0c0004
	v_perm_b32 v127, v183, v182, 0xc0c0004
	v_perm_b32 v128, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v191, v190, 0xc0c0004
	v_perm_b32 v130, v189, v102, 0xc0c0004
	v_lshl_or_b32 v77, v137, 16, v136
	v_lshl_or_b32 v76, v139, 16, v138
	v_lshl_or_b32 v75, v145, 16, v144
	v_lshl_or_b32 v74, v9, 16, v10
	v_lshl_or_b32 v85, v13, 16, v11
	v_lshl_or_b32 v84, v18, 16, v17
	v_lshl_or_b32 v83, v82, 16, v19
	v_lshl_or_b32 v82, v91, 16, v90
	v_lshl_or_b32 v97, v99, 16, v98
	v_lshl_or_b32 v96, v106, 16, v100
	v_lshl_or_b32 v95, v108, 16, v107
	v_lshl_or_b32 v94, v109, 16, v20
	v_lshl_or_b32 v101, v21, 16, v23
	v_lshl_or_b32 v100, v24, 16, v22
	v_lshl_or_b32 v99, v79, 16, v78
	v_lshl_or_b32 v98, v81, 16, v80
	v_lshl_or_b32 v109, v120, 16, v113
	v_lshl_or_b32 v108, v122, 16, v121
	v_lshl_or_b32 v107, v124, 16, v123
	v_lshl_or_b32 v106, v14, 16, v12
	v_lshl_or_b32 v93, v93, 16, v92
	v_lshl_or_b32 v92, v147, 16, v146
	v_lshl_or_b32 v91, v153, 16, v152
	v_lshl_or_b32 v90, v155, 16, v154
	v_lshl_or_b32 v103, v110, 16, v103
	v_lshl_or_b32 v102, v112, 16, v111
	v_lshl_or_b32 v112, v16, 16, v15
	v_lshl_or_b32 v111, v126, 16, v125
	v_lshl_or_b32 v110, v128, 16, v127
	v_lshl_or_b32 v113, v130, 16, v129
	v_wmma_i32_16x16x16_iu8 v[9:16], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[98:101], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v86, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[94:97], v[90:93], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v89, 16, v88
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[110:113], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v105, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v16
	v_cvt_f32_i32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[102:105], v[90:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[110:113], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v90, v9
	v_cvt_f32_i32_e32 v91, v10
	v_cvt_f32_i32_e32 v92, v11
	v_cvt_f32_i32_e32 v93, v12
	v_cvt_f32_i32_e32 v94, v13
	v_cvt_f32_i32_e32 v95, v14
	v_cvt_f32_i32_e32 v96, v15
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v74, v74
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
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v99, 16, v118
	v_lshlrev_b32_e32 v98, 16, v117
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v72, v119 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v75, v75, v99
	v_mul_f32_e32 v97, v97, v98
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v114, v114, s[8:11], 0 offen
	buffer_load_u16 v115, v115, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v116, v116, s[12:15], 0 offen
	ds_load_b128 v[9:12], v44 offset:18432
	ds_load_b128 v[13:16], v44 offset:18448
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v100, v30 offset:17504
	ds_load_u8 v101, v30 offset:17472
	ds_load_u8 v102, v30 offset:17408
	ds_load_u8 v103, v30 offset:17424
	ds_load_u8 v104, v30 offset:17440
	ds_load_u8 v105, v30 offset:17520
	ds_load_u8 v106, v30 offset:17488
	ds_load_u8 v107, v30 offset:17456
	ds_load_u8 v108, v31 offset:11520
	ds_load_u8 v109, v31 offset:12032
	ds_load_u8 v110, v31 offset:11776
	ds_load_u8 v111, v31 offset:12288
	ds_load_u8 v112, v31 offset:12160
	ds_load_u8 v113, v31 offset:11904
	ds_load_u8 v117, v31 offset:11648
	ds_load_u8 v118, v31 offset:11392
	ds_load_u8 v119, v31 offset:11264
	ds_load_u8 v120, v31 offset:10496
	ds_load_u8 v121, v31 offset:11008
	ds_load_u8 v122, v31 offset:10752
	ds_load_u8 v123, v31 offset:11136
	ds_load_u8 v124, v31 offset:10880
	ds_load_u8 v125, v31 offset:10624
	ds_load_u8 v126, v31 offset:10368
	ds_load_u8 v127, v31 offset:10240
	ds_load_u8 v128, v31 offset:9472
	ds_load_u8 v129, v31 offset:9984
	ds_load_u8 v130, v31 offset:9728
	ds_load_u8 v131, v31 offset:10112
	ds_load_u8 v132, v31 offset:9856
	ds_load_u8 v133, v31 offset:9600
	ds_load_u8 v134, v31 offset:9344
	ds_load_u8 v135, v31 offset:9216
	ds_load_u8 v136, v31 offset:8448
	ds_load_u8 v137, v31 offset:8960
	ds_load_u8 v138, v31 offset:8704
	ds_load_u8 v139, v31 offset:9088
	ds_load_u8 v140, v31 offset:8832
	ds_load_u8 v141, v31 offset:8576
	ds_load_u8 v142, v31 offset:8320
	ds_load_u8 v143, v31 offset:15616
	ds_load_u8 v144, v31 offset:16128
	ds_load_u8 v145, v31 offset:15872
	ds_load_u8 v146, v31 offset:16256
	ds_load_u8 v147, v31 offset:16000
	ds_load_u8 v148, v31 offset:15744
	ds_load_u8 v149, v31 offset:15488
	ds_load_u8 v150, v31 offset:15360
	ds_load_u8 v151, v31 offset:14592
	ds_load_u8 v152, v31 offset:15104
	ds_load_u8 v153, v31 offset:14848
	ds_load_u8 v154, v31 offset:15232
	ds_load_u8 v155, v31 offset:14976
	ds_load_u8 v156, v31 offset:14720
	ds_load_u8 v157, v31 offset:14464
	ds_load_u8 v158, v31 offset:14336
	ds_load_u8 v159, v31 offset:13568
	ds_load_u8 v160, v31 offset:14080
	ds_load_u8 v161, v31 offset:13824
	ds_load_u8 v162, v31 offset:14208
	ds_load_u8 v163, v31 offset:13952
	ds_load_u8 v164, v31 offset:13696
	ds_load_u8 v165, v31 offset:13440
	ds_load_u8 v166, v31 offset:13312
	ds_load_u8 v167, v31 offset:12544
	ds_load_u8 v168, v31 offset:13056
	ds_load_u8 v169, v31 offset:12800
	ds_load_u8 v170, v31 offset:13184
	ds_load_u8 v171, v31 offset:12928
	ds_load_u8 v172, v31 offset:12672
	ds_load_u8 v173, v31 offset:12416
	ds_load_u8 v174, v30 offset:17824
	ds_load_u8 v175, v30 offset:17792
	ds_load_u8 v176, v30 offset:17888
	ds_load_u8 v177, v30 offset:17856
	ds_load_u8 v178, v30 offset:17904
	ds_load_u8 v179, v30 offset:17872
	ds_load_u8 v180, v30 offset:17840
	ds_load_u8 v181, v30 offset:17808
	ds_load_u8 v182, v30 offset:17696
	ds_load_u8 v183, v30 offset:17664
	ds_load_u8 v184, v30 offset:17760
	ds_load_u8 v185, v30 offset:17728
	ds_load_u8 v186, v30 offset:17776
	ds_load_u8 v187, v30 offset:17744
	ds_load_u8 v188, v30 offset:17712
	ds_load_u8 v189, v30 offset:17680
	ds_load_u8 v190, v30 offset:17568
	ds_load_u8 v191, v30 offset:17536
	ds_load_u8 v192, v30 offset:17632
	ds_load_u8 v193, v30 offset:17600
	ds_load_u8 v194, v30 offset:17648
	ds_load_u8 v195, v30 offset:17616
	ds_load_u8 v196, v30 offset:17584
	ds_load_u8 v197, v30 offset:17552
	ds_load_u8 v198, v30 offset:18208
	ds_load_u8 v199, v30 offset:18176
	ds_load_u8 v200, v30 offset:18272
	ds_load_u8 v201, v30 offset:18240
	ds_load_u8 v202, v30 offset:18288
	ds_load_u8 v203, v30 offset:18256
	ds_load_u8 v204, v30 offset:18224
	ds_load_u8 v205, v30 offset:18192
	ds_load_u8 v206, v30 offset:18080
	ds_load_u8 v207, v30 offset:18048
	ds_load_u8 v208, v30 offset:18144
	ds_load_u8 v209, v30 offset:18112
	ds_load_u8 v210, v30 offset:18160
	ds_load_u8 v211, v30 offset:18128
	ds_load_u8 v212, v30 offset:18096
	ds_load_u8 v213, v30 offset:18064
	ds_load_u8 v214, v30 offset:17952
	ds_load_u8 v215, v30 offset:17920
	ds_load_u8 v216, v30 offset:18016
	ds_load_u8 v217, v30 offset:17984
	ds_load_u8 v218, v30 offset:18032
	ds_load_u8 v219, v30 offset:18000
	ds_load_u8 v220, v30 offset:17968
	ds_load_u8 v221, v30 offset:17936
	ds_load_u8 v222, v31 offset:8192
	ds_load_u8 v223, v30 offset:18336
	ds_load_u8 v224, v30 offset:18304
	ds_load_u8 v225, v30 offset:18400
	ds_load_u8 v226, v30 offset:18368
	ds_load_u8 v227, v30 offset:18384
	ds_load_u8 v228, v30 offset:18352
	ds_load_u8 v229, v30 offset:18320
	ds_load_u8 v230, v65 offset:17408
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v91, v91, v98
	v_dual_mul_f32 v96, v96, v98 :: v_dual_mul_f32 v77, v77, v99
	v_dual_mul_f32 v17, v17, v98 :: v_dual_mul_f32 v74, v74, v99
	v_dual_mul_f32 v18, v18, v98 :: v_dual_mul_f32 v79, v79, v99
	v_dual_mul_f32 v19, v19, v98 :: v_dual_mul_f32 v76, v76, v99
	v_dual_mul_f32 v20, v20, v98 :: v_dual_mul_f32 v81, v81, v99
	v_dual_mul_f32 v21, v21, v98 :: v_dual_mul_f32 v78, v78, v99
	v_dual_mul_f32 v22, v22, v98 :: v_dual_mul_f32 v83, v83, v99
	v_dual_mul_f32 v23, v23, v98 :: v_dual_mul_f32 v80, v80, v99
	v_dual_mul_f32 v24, v24, v98 :: v_dual_mul_f32 v85, v85, v99
	v_mul_f32_e32 v82, v82, v99
	s_waitcnt lgkmcnt(62)
	v_dual_mul_f32 v84, v84, v99 :: v_dual_lshlrev_b32 v233, 16, v13
	v_mul_f32_e32 v86, v86, v99
	v_mul_f32_e32 v87, v87, v99
	v_dual_mul_f32 v88, v88, v99 :: v_dual_and_b32 v13, 0xffff0000, v13
	v_dual_mul_f32 v89, v89, v99 :: v_dual_lshlrev_b32 v232, 16, v12
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v99, 16, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v95, v95, v98
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v234, 16, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v90, v90, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v92, v98 :: v_dual_fmac_f32 v71, v91, v99
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v67, v95, v234 :: v_dual_lshlrev_b32 v236, 16, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v93, v93, v98
	v_mul_f32_e32 v94, v94, v98
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v98, 16, v9
	v_lshlrev_b32_e32 v231, 16, v11
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v69, v93, v232 :: v_dual_and_b32 v10, 0xffff0000, v10
	v_dual_fmac_f32 v64, v97, v236 :: v_dual_and_b32 v11, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v63, v17, v9 :: v_dual_and_b32 v12, 0xffff0000, v12
	v_dual_fmac_f32 v61, v19, v11 :: v_dual_and_b32 v14, 0xffff0000, v14
	v_dual_fmac_f32 v57, v21, v13 :: v_dual_and_b32 v16, 0xffff0000, v16
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v175, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v176, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v177, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v182, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v183, v193, v192, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v101, v102, v104, 0xc0c0004
	v_perm_b32 v102, v119, v108, 0xc0c0004
	v_perm_b32 v104, v110, v109, 0xc0c0004
	v_perm_b32 v108, v127, v120, 0xc0c0004
	v_perm_b32 v109, v122, v121, 0xc0c0004
	v_perm_b32 v110, v135, v128, 0xc0c0004
	v_perm_b32 v119, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v222, v136, 0xc0c0004
	v_perm_b32 v121, v138, v137, 0xc0c0004
	v_perm_b32 v138, v150, v143, 0xc0c0004
	v_perm_b32 v143, v145, v144, 0xc0c0004
	v_perm_b32 v145, v153, v152, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v113, v126, v125, 0xc0c0004
	v_perm_b32 v118, v124, v123, 0xc0c0004
	v_perm_b32 v123, v134, v133, 0xc0c0004
	v_perm_b32 v124, v132, v131, 0xc0c0004
	v_perm_b32 v125, v142, v141, 0xc0c0004
	v_perm_b32 v126, v140, v139, 0xc0c0004
	v_perm_b32 v131, v149, v148, 0xc0c0004
	v_perm_b32 v132, v147, v146, 0xc0c0004
	v_perm_b32 v134, v155, v154, 0xc0c0004
	v_perm_b32 v146, v181, v180, 0xc0c0004
	v_perm_b32 v147, v179, v178, 0xc0c0004
	v_perm_b32 v148, v189, v188, 0xc0c0004
	v_perm_b32 v149, v187, v186, 0xc0c0004
	v_perm_b32 v153, v197, v196, 0xc0c0004
	v_perm_b32 v154, v195, v194, 0xc0c0004
	v_perm_b32 v106, v106, v105, 0xc0c0004
	v_perm_b32 v155, v103, v107, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v68, v94, v233 :: v_dual_lshlrev_b32 v235, 16, v15
	v_dual_fmac_f32 v62, v18, v10 :: v_dual_and_b32 v15, 0xffff0000, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v144, v158, v151, 0xc0c0004
	v_perm_b32 v150, v166, v159, 0xc0c0004
	v_perm_b32 v151, v161, v160, 0xc0c0004
	v_perm_b32 v111, v111, v167, 0xc0c0004
	v_perm_b32 v152, v169, v168, 0xc0c0004
	v_perm_b32 v133, v157, v156, 0xc0c0004
	v_perm_b32 v140, v163, v162, 0xc0c0004
	v_perm_b32 v156, v205, v204, 0xc0c0004
	v_perm_b32 v157, v203, v202, 0xc0c0004
	v_perm_b32 v158, v213, v212, 0xc0c0004
	v_perm_b32 v159, v211, v210, 0xc0c0004
	v_perm_b32 v160, v221, v220, 0xc0c0004
	v_perm_b32 v161, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v162, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v227, v230, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v50, v90, v98
	v_dual_fmac_f32 v70, v92, v231 :: v_dual_fmac_f32 v53, v74, v98
	v_dual_fmac_f32 v56, v22, v14 :: v_dual_fmac_f32 v51, v76, v231
	v_dual_fmac_f32 v54, v24, v16 :: v_dual_fmac_f32 v41, v82, v9
	v_fmac_f32_e32 v52, v75, v99
	v_dual_fmac_f32 v48, v77, v232 :: v_dual_fmac_f32 v43, v80, v235
	v_dual_fmac_f32 v46, v79, v234 :: v_dual_fmac_f32 v39, v84, v11
	v_fmac_f32_e32 v40, v83, v10
	v_fmac_f32_e32 v38, v85, v12
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v77, v175, 16, v174
	v_lshl_or_b32 v76, v177, 16, v176
	v_lshl_or_b32 v75, v183, 16, v182
	v_lshl_or_b32 v74, v100, 16, v101
	v_lshl_or_b32 v85, v104, 16, v102
	v_lshl_or_b32 v84, v109, 16, v108
	v_lshl_or_b32 v83, v119, 16, v110
	v_lshl_or_b32 v82, v121, 16, v120
	v_lshl_or_b32 v101, v112, 16, v117
	v_lshl_or_b32 v100, v118, 16, v113
	v_lshl_or_b32 v99, v124, 16, v123
	v_lshl_or_b32 v98, v126, 16, v125
	v_lshl_or_b32 v109, v147, 16, v146
	v_lshl_or_b32 v108, v149, 16, v148
	v_lshl_or_b32 v107, v154, 16, v153
	v_lshl_or_b32 v106, v106, 16, v155
	v_perm_b32 v122, v224, v223, 0xc0c0004
	v_perm_b32 v127, v226, v225, 0xc0c0004
	v_perm_b32 v128, v199, v198, 0xc0c0004
	v_perm_b32 v129, v201, v200, 0xc0c0004
	v_perm_b32 v130, v207, v206, 0xc0c0004
	v_perm_b32 v135, v209, v208, 0xc0c0004
	v_perm_b32 v136, v215, v214, 0xc0c0004
	v_perm_b32 v137, v217, v216, 0xc0c0004
	v_perm_b32 v139, v165, v164, 0xc0c0004
	v_perm_b32 v141, v173, v172, 0xc0c0004
	v_perm_b32 v142, v171, v170, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v66, v96, v235 :: v_dual_fmac_f32 v47, v78, v233
	v_dual_fmac_f32 v60, v20, v12 :: v_dual_fmac_f32 v55, v23, v15
	v_dual_fmac_f32 v42, v81, v236 :: v_dual_fmac_f32 v33, v88, v15
	v_fmac_f32_e32 v36, v86, v13
	v_fmac_f32_e32 v34, v87, v14
	v_fmac_f32_e32 v32, v89, v16
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v97, v143, 16, v138
	v_lshl_or_b32 v96, v145, 16, v144
	v_lshl_or_b32 v95, v151, 16, v150
	v_lshl_or_b32 v94, v152, 16, v111
	v_lshl_or_b32 v112, v157, 16, v156
	v_lshl_or_b32 v111, v159, 16, v158
	v_lshl_or_b32 v110, v161, 16, v160
	v_lshl_or_b32 v113, v163, 16, v162
	v_wmma_i32_16x16x16_iu8 v[9:16], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[98:101], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v127, 16, v122
	v_lshl_or_b32 v92, v129, 16, v128
	v_lshl_or_b32 v91, v135, 16, v130
	v_lshl_or_b32 v90, v137, 16, v136
	v_lshl_or_b32 v105, v132, 16, v131
	v_lshl_or_b32 v104, v134, 16, v133
	v_lshl_or_b32 v103, v140, 16, v139
	v_lshl_or_b32 v102, v142, 16, v141
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[110:113], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[94:97], v[90:93], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[102:105], v[90:93], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[110:113], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v91, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v75, v75, v91 :: v_dual_lshlrev_b32 v90, 16, v114
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v101, v17, v90 :: v_dual_lshlrev_b32 v92, 16, v116
	v_mul_f32_e32 v93, v9, v90
	v_dual_mul_f32 v94, v10, v90 :: v_dual_mul_f32 v79, v79, v91
	v_mul_f32_e32 v95, v11, v90
	v_dual_mul_f32 v96, v12, v90 :: v_dual_mul_f32 v81, v81, v91
	v_mul_f32_e32 v97, v13, v90
	v_dual_mul_f32 v98, v14, v90 :: v_dual_mul_f32 v83, v83, v91
	v_mul_f32_e32 v99, v15, v90
	v_dual_mul_f32 v100, v16, v90 :: v_dual_mul_f32 v85, v85, v91
	v_dual_mul_f32 v102, v18, v90 :: v_dual_mul_f32 v87, v87, v91
	v_dual_mul_f32 v103, v19, v90 :: v_dual_mul_f32 v74, v74, v91
	v_dual_mul_f32 v104, v20, v90 :: v_dual_mul_f32 v89, v89, v91
	v_dual_mul_f32 v105, v21, v90 :: v_dual_mul_f32 v76, v76, v91
	v_dual_mul_f32 v107, v23, v90 :: v_dual_mul_f32 v78, v78, v91
	ds_store_b32 v73, v92 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v44 offset:18432
	ds_load_b128 v[13:16], v44 offset:18448
	v_mul_f32_e32 v106, v22, v90
	ds_load_b128 v[17:20], v44 offset:18944
	v_mul_f32_e32 v90, v24, v90
	ds_load_b128 v[21:24], v44 offset:18960
	v_mul_f32_e32 v77, v77, v91
	v_mul_f32_e32 v80, v80, v91
	v_mul_f32_e32 v82, v82, v91
	v_mul_f32_e32 v84, v84, v91
	v_mul_f32_e32 v86, v86, v91
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v88, v88, v91 :: v_dual_fmac_f32 v53, v74, v9
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v50, v93, v9 :: v_dual_fmac_f32 v71, v94, v10
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v70, v95, v11 :: v_dual_fmac_f32 v47, v78, v13
	v_dual_fmac_f32 v69, v96, v12 :: v_dual_fmac_f32 v68, v97, v13
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v55, v107, v23
	v_dual_fmac_f32 v67, v98, v14 :: v_dual_fmac_f32 v64, v100, v16
	v_dual_fmac_f32 v63, v101, v17 :: v_dual_fmac_f32 v62, v102, v18
	v_fmac_f32_e32 v51, v76, v11
	v_dual_fmac_f32 v61, v103, v19 :: v_dual_fmac_f32 v60, v104, v20
	v_dual_fmac_f32 v57, v105, v21 :: v_dual_fmac_f32 v66, v99, v15
	v_fmac_f32_e32 v41, v82, v17
	v_dual_fmac_f32 v56, v106, v22 :: v_dual_fmac_f32 v43, v80, v15
	v_dual_fmac_f32 v54, v90, v24 :: v_dual_fmac_f32 v39, v84, v19
	v_dual_fmac_f32 v52, v75, v10 :: v_dual_fmac_f32 v33, v88, v23
	v_fmac_f32_e32 v48, v77, v12
	v_fmac_f32_e32 v46, v79, v14
	v_fmac_f32_e32 v42, v81, v16
	v_fmac_f32_e32 v40, v83, v18
	v_fmac_f32_e32 v38, v85, v20
	v_fmac_f32_e32 v36, v86, v21
	v_fmac_f32_e32 v34, v87, v22
	v_fmac_f32_e32 v32, v89, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, v57, v57 :: v_dual_max_f32 v14, v56, v56
	v_max_f32_e32 v17, v53, v53
	v_dual_max_f32 v15, v55, v55 :: v_dual_max_f32 v16, v54, v54
	v_max_f32_e32 v18, v51, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v35, 0, v17
	v_dual_max_f32 v17, v52, v52 :: v_dual_max_f32 v20, v47, v47
	v_max_f32_e32 v21, v46, v46
	v_dual_max_f32 v1, v50, v50 :: v_dual_max_f32 v2, v71, v71
	v_dual_max_f32 v5, v68, v68 :: v_dual_max_f32 v6, v67, v67
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v44, 0, v18
	v_dual_max_f32 v19, v48, v48 :: v_dual_max_f32 v18, v42, v42
	v_dual_max_f32 v37, 0, v17 :: v_dual_max_f32 v46, 0, v20
	v_dual_max_f32 v20, v40, v40 :: v_dual_max_f32 v47, 0, v21
	v_max_f32_e32 v21, v39, v39
	v_dual_max_f32 v3, v70, v70 :: v_dual_max_f32 v4, v69, v69
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v7, v66, v66
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, v64, v64
	v_dual_max_f32 v45, 0, v19 :: v_dual_max_f32 v40, 0, v18
	v_dual_max_f32 v17, v43, v43 :: v_dual_max_f32 v18, v36, v36
	v_dual_max_f32 v19, v41, v41 :: v_dual_max_f32 v42, 0, v20
	v_max_f32_e32 v20, v33, v33
	v_max_f32_e32 v43, 0, v21
	v_dual_max_f32 v21, v32, v32 :: v_dual_mul_f32 v30, v5, v5
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v62, v62 :: v_dual_max_f32 v9, v63, v63
	v_dual_max_f32 v12, v60, v60 :: v_dual_max_f32 v11, v61, v61
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v39, 0, v17
	v_dual_max_f32 v17, v38, v38 :: v_dual_max_f32 v50, 0, v21
	v_dual_max_f32 v38, 0, v18 :: v_dual_max_f32 v41, 0, v19
	v_dual_max_f32 v19, v34, v34 :: v_dual_mul_f32 v32, v3, v3
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v16, 0, v16
	v_max_f32_e32 v36, 0, v17
	v_dual_max_f32 v48, 0, v19 :: v_dual_max_f32 v49, 0, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v7, v7 :: v_dual_mul_f32 v33, v1, v1
	v_mul_f32_e32 v22, v11, v11
	v_dual_mul_f32 v34, v2, v2 :: v_dual_mul_f32 v31, v4, v4
	v_dual_mul_f32 v24, v9, v9 :: v_dual_mul_f32 v29, v6, v6
	v_dual_mul_f32 v20, v13, v13 :: v_dual_mul_f32 v27, v8, v8
	v_dual_mul_f32 v18, v15, v15 :: v_dual_mul_f32 v23, v10, v10
	v_dual_mul_f32 v21, v12, v12 :: v_dual_mul_f32 v12, v46, v46
	v_dual_mul_f32 v19, v14, v14 :: v_dual_mul_f32 v14, v44, v44
	v_dual_mul_f32 v17, v16, v16 :: v_dual_mul_f32 v10, v39, v39
	v_dual_mul_f32 v16, v35, v35 :: v_dual_mul_f32 v15, v37, v37
	v_dual_mul_f32 v6, v43, v43 :: v_dual_mul_f32 v13, v45, v45
	v_dual_mul_f32 v4, v38, v38 :: v_dual_mul_f32 v11, v47, v47
	v_dual_mul_f32 v8, v41, v41 :: v_dual_mul_f32 v9, v40, v40
	v_dual_mul_f32 v2, v49, v49 :: v_dual_mul_f32 v7, v42, v42
	v_mul_f32_e32 v5, v36, v36
	v_mul_f32_e32 v3, v48, v48
	v_mul_f32_e32 v1, v50, v50
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v35.l, v34.h
	v_mov_b16_e32 v36.l, v33.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v37.l, v32.h
	v_mov_b16_e32 v36.h, v35.h
	v_mov_b16_e32 v37.h, v35.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v26, s19, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v38, 1, v35
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v35.l, v31.h
	s_mov_b32 s0, 0x76543210
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v25, 1, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v34, v38, 0x7fff
	v_add3_u32 v33, v33, v36, 0x7fff
	v_and_b32_e32 v36, 1, v35
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v38.l, v30.h
	v_mov_b16_e32 v38.h, v35.h
	v_mov_b16_e32 v34.l, v33.h
	v_add3_u32 v31, v31, v36, 0x7fff
	v_and_b32_e32 v37, 1, v37
	v_and_b32_e32 v33, 1, v35
	v_mov_b16_e32 v35.l, v27.h
	v_and_b32_e32 v36, 1, v38
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s29, s29, s19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v32, v37, 0x7fff
	v_mov_b16_e32 v37.l, v28.h
	v_mov_b16_e32 v37.h, v35.h
	v_add3_u32 v30, v30, v36, 0x7fff
	v_add3_u32 v29, v29, v33, 0x7fff
	v_mov_b16_e32 v31.l, v32.h
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v35.l, v23.h
	v_mov_b16_e32 v36.l, v24.h
	v_mov_b16_e32 v36.h, v35.h
	v_mov_b16_e32 v29.l, v30.h
	v_add3_u32 v27, v27, v32, 0x7fff
	v_and_b32_e32 v33, 1, v37
	v_and_b32_e32 v30, 1, v35
	v_and_b32_e32 v32, 1, v36
	v_mov_b16_e32 v35.l, v21.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v39, s2, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v33, 0x7fff
	v_mov_b16_e32 v33.l, v22.h
	v_mov_b16_e32 v33.h, v35.h
	v_add3_u32 v24, v24, v32, 0x7fff
	v_add3_u32 v23, v23, v30, 0x7fff
	v_mov_b16_e32 v27.l, v28.h
	v_and_b32_e32 v28, 1, v35
	v_and_b32_e32 v30, 1, v33
	v_mov_b16_e32 v35.l, v19.h
	v_mov_b16_e32 v32.l, v20.h
	v_mov_b16_e32 v32.h, v35.h
	v_mov_b16_e32 v23.l, v24.h
	v_add3_u32 v22, v22, v30, 0x7fff
	v_add3_u32 v21, v21, v28, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_and_b32_e32 v28, 1, v32
	v_mov_b16_e32 v35.l, v17.h
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v35.h
	v_mov_b16_e32 v21.l, v22.h
	v_add3_u32 v20, v20, v28, 0x7fff
	v_and_b32_e32 v22, 1, v35
	v_mov_b16_e32 v28.l, v16.h
	v_mov_b16_e32 v28.h, v35.h
	v_add3_u32 v19, v19, v24, 0x7fff
	v_and_b32_e32 v24, 1, v30
	v_mov_b16_e32 v35.l, v15.h
	v_add3_u32 v17, v17, v22, 0x7fff
	v_and_b32_e32 v22, 1, v28
	v_mov_b16_e32 v19.l, v20.h
	v_add3_u32 v18, v18, v24, 0x7fff
	v_and_b32_e32 v20, 1, v35
	v_mov_b16_e32 v24.l, v14.h
	v_mov_b16_e32 v24.h, v35.h
	v_mov_b16_e32 v35.l, v13.h
	v_add3_u32 v16, v16, v22, 0x7fff
	v_mov_b16_e32 v22.l, v12.h
	v_mov_b16_e32 v22.h, v35.h
	v_add3_u32 v15, v15, v20, 0x7fff
	v_and_b32_e32 v20, 1, v24
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v11.h
	v_mov_b16_e32 v15.l, v16.h
	v_and_b32_e32 v16, 1, v22
	v_add3_u32 v14, v14, v20, 0x7fff
	v_mov_b16_e32 v20.l, v10.h
	v_mov_b16_e32 v20.h, v35.h
	v_add3_u32 v13, v13, v18, 0x7fff
	v_and_b32_e32 v18, 1, v35
	v_add3_u32 v12, v12, v16, 0x7fff
	v_mov_b16_e32 v35.l, v9.h
	v_mov_b16_e32 v13.l, v14.h
	v_and_b32_e32 v14, 1, v20
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v35.h
	v_add3_u32 v11, v11, v18, 0x7fff
	v_mov_b16_e32 v11.l, v12.h
	v_and_b32_e32 v12, 1, v35
	v_mov_b16_e32 v35.l, v7.h
	v_add3_u32 v10, v10, v14, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v6.h
	v_add3_u32 v9, v9, v12, 0x7fff
	v_and_b32_e32 v12, 1, v35
	v_mov_b16_e32 v35.l, v5.h
	v_add3_u32 v8, v8, v14, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v10.l, v4.h
	v_mov_b16_e32 v10.h, v35.h
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v3.h
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v35.h
	v_and_b32_e32 v10, 1, v10
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v16, 0x7632
	v_add3_u32 v5, v5, v8, 0x7fff
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v1.h
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v4, v4, v10, 0x7fff
	v_cndmask_b32_e32 v18, v11, v15, vcc_lo
	v_dual_cndmask_b32 v11, v15, v11 :: v_dual_cndmask_b32 v14, 0x1054, v14
	v_cndmask_b32_e32 v15, 0x3276, v16, vcc_lo
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v35
	v_add3_u32 v3, v3, v8, 0x7fff
	v_add3_u32 v2, v2, v12, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	v_add3_u32 v0, v1, v6, 0x7fff
	v_mov_b16_e32 v0.l, v2.h
	v_cndmask_b32_e32 v6, v31, v27, vcc_lo
	v_cndmask_b32_e32 v8, v19, v23, vcc_lo
	v_cndmask_b32_e32 v16, v9, v13, vcc_lo
	v_cndmask_b32_e32 v9, v13, v9, vcc_lo
	v_cndmask_b32_e32 v13, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_and_b32_e32 v7, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v15
	v_cndmask_b32_e32 v2, v34, v29, vcc_lo
	v_cndmask_b32_e32 v10, v23, v19, vcc_lo
	v_cndmask_b32_e32 v12, v17, v21, vcc_lo
	v_cndmask_b32_e32 v17, v21, v17, vcc_lo
	v_dual_cndmask_b32 v19, v0, v5 :: v_dual_cndmask_b32 v0, v5, v0
	v_permlanex16_b32 v5, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v7, 4, v7
	v_lshl_or_b32 v7, v14, 4, v14
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v25, s29, s28, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v1, v29, v34 :: v_dual_cndmask_b32 v4, v27, v31
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v6
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x7060706, v7
	v_permlanex16_b32 v20, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v15
	v_perm_b32 v1, v2, v1, v17
	v_perm_b32 v2, v5, v4, v15
	v_perm_b32 v3, v5, v4, v17
	v_perm_b32 v4, v10, v8, v15
	v_perm_b32 v5, v10, v8, v17
	v_perm_b32 v8, v11, v18, v15
	v_perm_b32 v9, v11, v18, v17
	v_perm_b32 v10, v20, v16, v15
	v_perm_b32 v11, v20, v16, v17
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v25, v26, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v6, v14, v12, v15
	v_perm_b32 v7, v14, v12, v17
	v_perm_b32 v12, v21, v13, v15
	v_perm_b32 v13, v21, v13, v17
	v_perm_b32 v14, v22, v19, v15
	v_perm_b32 v15, v22, v19, v17
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v25, v39, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
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
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 237
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8536
; TotalNumSgprs: 33
; NumVgprs: 237
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     237
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
