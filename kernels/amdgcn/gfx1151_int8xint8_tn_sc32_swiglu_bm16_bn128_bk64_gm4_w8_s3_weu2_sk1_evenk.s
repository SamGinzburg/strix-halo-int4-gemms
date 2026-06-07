	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 299 32 prologue_end           ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s6, s8
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	s_mov_b32 s7, 0
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s5, s2, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s4, 63
	v_or_b32_e32 v43, s5, v2
.Ltmp13:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v1, s5, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow277
	s_load_b64 s[16:17], s[0:1], 0x20
	v_lshrrev_b32_e32 v26, 1, v0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s28, s6, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s4, s4, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s6, s4, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s6, 27
.Ltmp20:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v4, 3, v0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s4, s4, s0
.Ltmp22:
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s19, 1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s4, 5
	s_mov_b32 s4, 0
	v_mul_lo_u32 v9, s18, v4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
.Ltmp24:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	v_mul_lo_u32 v4, s1, v4
	v_mul_lo_u32 v47, v43, s29
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v45, 0, v2
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v7, 7, v0
	v_mov_b32_e32 v39, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v28, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v12, 1, v7
	v_mov_b32_e32 v27, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_add3_u32 v44, v9, v12, s5
	s_mov_b32 s5, s4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x70, v26
	v_lshlrev_b32_e32 v7, 4, v7
	v_mov_b32_e32 v31, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v64, s18, 5, v44
	v_mov_b32_e32 v40, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v1, v1, 1, v3
	v_add3_u32 v25, v4, v7, s28
	v_or_b32_e32 v3, v3, v2
	v_lshlrev_b32_e32 v4, 1, v0
	v_lshlrev_b32_e32 v7, 4, v0
	v_or_b32_e32 v5, 14, v1
	v_or_b32_e32 v6, 12, v1
	v_or_b32_e32 v8, 10, v1
	v_or_b32_e32 v10, 8, v1
	v_or_b32_e32 v11, 6, v1
	v_or_b32_e32 v13, 4, v1
	v_or_b32_e32 v14, 2, v1
	v_add_nc_u32_e32 v46, 0, v3
	v_or_b32_e32 v48, s28, v1
	v_or_b32_e32 v53, s28, v8
	v_or_b32_e32 v54, s28, v6
	v_or_b32_e32 v55, s28, v5
	v_add_nc_u32_e32 v56, s19, v1
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v61, s19, v8
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v62, s19, v6
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v63, s19, v5
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v65, 0, v4
	v_add_nc_u32_e32 v66, 0, v7
	v_mov_b32_e32 v1, s4
	v_or_b32_e32 v49, s28, v14
	v_or_b32_e32 v50, s28, v13
	v_or_b32_e32 v51, s28, v11
	v_or_b32_e32 v52, s28, v10
	v_add_nc_u32_e32 v57, s19, v14
	v_dual_mov_b32 v7, s10 :: v_dual_add_nc_u32 v58, s19, v13
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v59, s19, v11
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v60, s19, v10
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
.Ltmp25:
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
.Ltmp26:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s0, s0, 6
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mad_u64_u32 v[9:10], null, s0, s1, v[25:26]
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s5, s0, s18
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v10, s5, v44
	v_add_nc_u32_e32 v17, s5, v64
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s0, s1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v18, s30, v9
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v13, s19, v9
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v67, v10, s[20:23], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v69, v47, s0, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v21, s19, v18
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v68, v17, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[17:20], v18, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v70, v48, s5, 1
	v_add_lshl_u32 v71, v49, s5, 1
	v_add_lshl_u32 v72, v50, s5, 1
	v_add_lshl_u32 v73, v51, s5, 1
	v_add_lshl_u32 v74, v52, s5, 1
	v_add_lshl_u32 v75, v53, s5, 1
	v_add_lshl_u32 v76, v54, s5, 1
	v_add_lshl_u32 v77, v55, s5, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s5, s5, s28
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_or_b32 s0, s0, 1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v78, s5, v56, 1
	v_add_lshl_u32 v79, s5, v57, 1
	v_add_lshl_u32 v80, s5, v58, 1
	v_add_lshl_u32 v81, s5, v59, 1
	v_add_lshl_u32 v82, s5, v60, 1
	v_add_lshl_u32 v83, s5, v61, 1
	v_add_lshl_u32 v84, s5, v62, 1
	v_add_lshl_u32 v85, s5, v63, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v86, v47, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s0, s1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v87, v48, s5, 1
	v_add_lshl_u32 v88, v49, s5, 1
	v_add_lshl_u32 v89, v50, s5, 1
	v_add_lshl_u32 v90, v51, s5, 1
	v_add_lshl_u32 v91, v52, s5, 1
	v_add_lshl_u32 v92, v53, s5, 1
	v_add_lshl_u32 v93, v54, s5, 1
	v_add_lshl_u32 v94, v55, s5, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s5, s5, s28
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v95, s5, v56, 1
	v_add_lshl_u32 v96, s5, v57, 1
	v_add_lshl_u32 v97, s5, v58, 1
	v_add_lshl_u32 v98, s5, v59, 1
	v_add_lshl_u32 v99, s5, v60, 1
	v_add_lshl_u32 v100, s5, v61, 1
	v_add_lshl_u32 v101, s5, v62, 1
	v_add_lshl_u32 v102, s5, v63, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v72, 0x80000000, v72
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v78, 0x80000000, v78
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v79, 0x80000000, v79 :: v_dual_cndmask_b32 v80, 0x80000000, v80
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	v_dual_cndmask_b32 v83, 0x80000000, v83 :: v_dual_cndmask_b32 v84, 0x80000000, v84
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v65, v67 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v66, v[9:12]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v66, v[13:16] offset:8192
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v65, v68 offset:16896
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v66, v[17:20] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v66, v[21:24] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v173, v69, s[8:11], 0 offen
	buffer_load_u16 v174, v86, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1f
	buffer_load_u16 v175, v70, s[12:15], 0 offen
	buffer_load_u16 v176, v71, s[12:15], 0 offen
	buffer_load_u16 v177, v72, s[12:15], 0 offen
	buffer_load_u16 v178, v73, s[12:15], 0 offen
	buffer_load_u16 v179, v74, s[12:15], 0 offen
	buffer_load_u16 v180, v75, s[12:15], 0 offen
	buffer_load_u16 v181, v76, s[12:15], 0 offen
	buffer_load_u16 v182, v77, s[12:15], 0 offen
	buffer_load_u16 v183, v78, s[12:15], 0 offen
	buffer_load_u16 v184, v79, s[12:15], 0 offen
	buffer_load_u16 v185, v87, s[12:15], 0 offen
	buffer_load_u16 v186, v88, s[12:15], 0 offen
	buffer_load_u16 v187, v95, s[12:15], 0 offen
	buffer_load_u16 v188, v96, s[12:15], 0 offen
	buffer_load_u16 v189, v80, s[12:15], 0 offen
	buffer_load_u16 v190, v81, s[12:15], 0 offen
	buffer_load_u16 v191, v89, s[12:15], 0 offen
	buffer_load_u16 v192, v90, s[12:15], 0 offen
	buffer_load_u16 v193, v97, s[12:15], 0 offen
	buffer_load_u16 v194, v98, s[12:15], 0 offen
	buffer_load_u16 v195, v82, s[12:15], 0 offen
	buffer_load_u16 v196, v83, s[12:15], 0 offen
	buffer_load_u16 v197, v84, s[12:15], 0 offen
	buffer_load_u16 v198, v85, s[12:15], 0 offen
	buffer_load_u16 v199, v91, s[12:15], 0 offen
	buffer_load_u16 v200, v92, s[12:15], 0 offen
	buffer_load_u16 v201, v93, s[12:15], 0 offen
	buffer_load_u16 v202, v94, s[12:15], 0 offen
	buffer_load_u16 v203, v99, s[12:15], 0 offen
	buffer_load_u16 v204, v100, s[12:15], 0 offen
	buffer_load_u16 v205, v101, s[12:15], 0 offen
	buffer_load_u16 v206, v102, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v45 offset:16592
	ds_load_u8 v10, v45 offset:16624
	ds_load_u8 v11, v45 offset:16608
	ds_load_u8 v12, v45 offset:16576
	ds_load_u8 v13, v45 offset:16528
	ds_load_u8 v14, v45 offset:16560
	ds_load_u8 v15, v45 offset:16544
	ds_load_u8 v16, v45 offset:16512
	ds_load_u8 v17, v45 offset:16464
	ds_load_u8 v18, v45 offset:16496
	ds_load_u8 v19, v45 offset:16480
	ds_load_u8 v20, v45 offset:16448
	ds_load_u8 v21, v45 offset:16384
	ds_load_u8 v22, v45 offset:16400
	ds_load_u8 v23, v45 offset:16416
	ds_load_u8 v24, v45 offset:16432
	ds_load_u8 v67, v46 offset:1664
	ds_load_u8 v68, v46 offset:1920
	ds_load_u8 v103, v46 offset:1792
	ds_load_u8 v104, v46 offset:1536
	ds_load_u8 v105, v46 offset:1152
	ds_load_u8 v106, v46 offset:1408
	ds_load_u8 v107, v46 offset:1280
	ds_load_u8 v108, v46 offset:1024
	ds_load_u8 v109, v46 offset:640
	ds_load_u8 v110, v46 offset:896
	ds_load_u8 v111, v46 offset:768
	ds_load_u8 v112, v46 offset:512
	ds_load_u8 v113, v46 offset:128
	ds_load_u8 v114, v46 offset:384
	ds_load_u8 v115, v46 offset:256
	ds_load_u8 v116, v46
	ds_load_u8 v117, v45 offset:16848
	ds_load_u8 v118, v45 offset:16880
	ds_load_u8 v119, v45 offset:16864
	ds_load_u8 v120, v45 offset:16832
	ds_load_u8 v121, v45 offset:16784
	ds_load_u8 v122, v45 offset:16816
	ds_load_u8 v123, v45 offset:16800
	ds_load_u8 v124, v45 offset:16768
	ds_load_u8 v125, v45 offset:16720
	ds_load_u8 v126, v45 offset:16752
	ds_load_u8 v127, v45 offset:16736
	ds_load_u8 v128, v45 offset:16704
	ds_load_u8 v129, v45 offset:16656
	ds_load_u8 v130, v45 offset:16688
	ds_load_u8 v131, v45 offset:16672
	ds_load_u8 v132, v45 offset:16640
	ds_load_u8 v133, v46 offset:3712
	ds_load_u8 v134, v46 offset:3968
	ds_load_u8 v135, v46 offset:3840
	ds_load_u8 v136, v46 offset:3584
	ds_load_u8 v137, v46 offset:3200
	ds_load_u8 v138, v46 offset:3456
	ds_load_u8 v139, v46 offset:3328
	ds_load_u8 v140, v46 offset:3072
	ds_load_u8 v141, v46 offset:2688
	ds_load_u8 v142, v46 offset:2944
	ds_load_u8 v143, v46 offset:2816
	ds_load_u8 v144, v46 offset:2560
	ds_load_u8 v145, v46 offset:2176
	ds_load_u8 v146, v46 offset:2432
	ds_load_u8 v147, v46 offset:2304
	ds_load_u8 v148, v46 offset:2048
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v149, v46 offset:9856
	ds_load_u8 v150, v46 offset:10112
	ds_load_u8 v151, v46 offset:9984
	ds_load_u8 v152, v46 offset:9728
	ds_load_u8 v153, v46 offset:9344
	ds_load_u8 v154, v46 offset:9600
	ds_load_u8 v155, v46 offset:9472
	ds_load_u8 v156, v46 offset:9216
	ds_load_u8 v157, v46 offset:8832
	ds_load_u8 v158, v46 offset:9088
	ds_load_u8 v159, v46 offset:8960
	ds_load_u8 v160, v46 offset:8704
	ds_load_u8 v161, v46 offset:8320
	ds_load_u8 v162, v46 offset:8576
	ds_load_u8 v163, v46 offset:8448
	ds_load_u8 v164, v46 offset:8192
	ds_load_u8 v165, v46 offset:11904
	ds_load_u8 v166, v46 offset:12160
	ds_load_u8 v167, v46 offset:12032
	ds_load_u8 v168, v46 offset:11776
	ds_load_u8 v169, v46 offset:11392
	ds_load_u8 v170, v46 offset:11648
	ds_load_u8 v171, v46 offset:11520
	ds_load_u8 v172, v46 offset:11264
	ds_load_u8 v69, v46 offset:10880
	ds_load_u8 v70, v46 offset:11136
	ds_load_u8 v71, v46 offset:11008
	ds_load_u8 v72, v46 offset:10752
	ds_load_u8 v73, v46 offset:10368
	ds_load_u8 v74, v46 offset:10624
	ds_load_u8 v75, v46 offset:10496
	ds_load_u8 v76, v46 offset:10240
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v77, v45 offset:17104
	ds_load_u8 v78, v45 offset:17136
	ds_load_u8 v79, v45 offset:17120
	ds_load_u8 v80, v45 offset:17088
	ds_load_u8 v81, v45 offset:17040
	ds_load_u8 v82, v45 offset:17072
	ds_load_u8 v83, v45 offset:17056
	ds_load_u8 v84, v45 offset:17024
	ds_load_u8 v85, v45 offset:16976
	ds_load_u8 v86, v45 offset:17008
	ds_load_u8 v87, v45 offset:16992
	ds_load_u8 v88, v45 offset:16960
	ds_load_u8 v89, v45 offset:16912
	ds_load_u8 v90, v45 offset:16944
	ds_load_u8 v91, v45 offset:16928
	ds_load_u8 v92, v45 offset:16896
	ds_load_u8 v93, v46 offset:5760
	ds_load_u8 v94, v46 offset:6016
	ds_load_u8 v95, v46 offset:5888
	ds_load_u8 v96, v46 offset:5632
	ds_load_u8 v97, v46 offset:5248
	ds_load_u8 v98, v46 offset:5504
	ds_load_u8 v99, v46 offset:5376
	ds_load_u8 v100, v46 offset:5120
	ds_load_u8 v101, v46 offset:4736
	ds_load_u8 v102, v46 offset:4992
	ds_load_u8 v207, v46 offset:4864
	ds_load_u8 v208, v46 offset:4608
	ds_load_u8 v209, v46 offset:4224
	ds_load_u8 v210, v46 offset:4480
	ds_load_u8 v211, v46 offset:4352
	ds_load_u8 v212, v46 offset:4096
	ds_load_u8 v213, v45 offset:17360
	ds_load_u8 v214, v45 offset:17392
	ds_load_u8 v215, v45 offset:17376
	ds_load_u8 v216, v45 offset:17344
	ds_load_u8 v217, v45 offset:17296
	ds_load_u8 v218, v45 offset:17328
	ds_load_u8 v219, v45 offset:17312
	ds_load_u8 v220, v45 offset:17280
	ds_load_u8 v221, v45 offset:17232
	ds_load_u8 v222, v45 offset:17264
	ds_load_u8 v223, v45 offset:17248
	ds_load_u8 v224, v45 offset:17216
	ds_load_u8 v225, v45 offset:17168
	ds_load_u8 v226, v45 offset:17200
	ds_load_u8 v227, v45 offset:17184
	ds_load_u8 v228, v45 offset:17152
	ds_load_u8 v229, v46 offset:7808
	ds_load_u8 v230, v46 offset:8064
	ds_load_u8 v231, v46 offset:7936
	ds_load_u8 v232, v46 offset:7680
	ds_load_u8 v233, v46 offset:7296
	ds_load_u8 v234, v46 offset:7552
	ds_load_u8 v235, v46 offset:7424
	ds_load_u8 v236, v46 offset:7168
	ds_load_u8 v237, v46 offset:6784
	ds_load_u8 v238, v46 offset:7040
	ds_load_u8 v239, v46 offset:6912
	ds_load_u8 v240, v46 offset:6656
	ds_load_u8 v241, v46 offset:6272
	ds_load_u8 v242, v46 offset:6528
	ds_load_u8 v243, v46 offset:6400
	ds_load_u8 v244, v46 offset:6144
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v245, v46 offset:13952
	ds_load_u8 v246, v46 offset:14208
	ds_load_u8 v247, v46 offset:14080
	ds_load_u8 v248, v46 offset:13824
	ds_load_u8 v249, v46 offset:13440
	ds_load_u8 v250, v46 offset:13696
	ds_load_u8 v251, v46 offset:13568
	ds_load_u8 v252, v46 offset:13312
	ds_load_u8 v253, v46 offset:12928
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v12, v46 offset:13184
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v13, v16, v13, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v16, v46 offset:12800
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v15, v46 offset:12416
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v17, v20, v17, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v20, v46 offset:12672
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v46 offset:12544
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v21, v21, v22, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v22, v46 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v129, v132, v129, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v132, v46 offset:14336
	ds_load_u8 v11, v46 offset:13056
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v23, v23, v24, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v24, v46 offset:16000
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v104, v104, v67, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v67, v46 offset:16256
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v103, v103, v68, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v68, v46 offset:16128
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v105, v108, v105, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v108, v46 offset:15872
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v106, v107, v106, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v107, v46 offset:15488
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v109, v112, v109, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v112, v46 offset:15744
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v110, v111, v110, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v111, v46 offset:15616
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v113, v116, v113, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v116, v46 offset:15360
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v114, v115, v114, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v115, v46 offset:14976
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v117, v120, v117, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v120, v46 offset:15232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v118, v119, v118, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v119, v46 offset:15104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v121, v124, v121, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v124, v46 offset:14848
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v122, v123, v122, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v123, v46 offset:14464
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v125, v128, v125, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v128, v46 offset:14720
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v126, v127, v126, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v127, v46 offset:14592
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v131, v136, v133, 0xc0c0004
	v_perm_b32 v133, v135, v134, 0xc0c0004
	v_perm_b32 v134, v140, v137, 0xc0c0004
	v_perm_b32 v135, v139, v138, 0xc0c0004
	v_perm_b32 v136, v144, v141, 0xc0c0004
	v_perm_b32 v137, v143, v142, 0xc0c0004
	v_perm_b32 v138, v148, v145, 0xc0c0004
	v_perm_b32 v139, v147, v146, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v140, v152, v149, 0xc0c0004
	v_perm_b32 v141, v151, v150, 0xc0c0004
	v_perm_b32 v142, v156, v153, 0xc0c0004
	v_perm_b32 v143, v155, v154, 0xc0c0004
	v_perm_b32 v144, v160, v157, 0xc0c0004
	v_perm_b32 v145, v159, v158, 0xc0c0004
	v_perm_b32 v146, v164, v161, 0xc0c0004
	v_perm_b32 v147, v163, v162, 0xc0c0004
	v_perm_b32 v76, v76, v73, 0xc0c0004
	v_perm_b32 v75, v75, v74, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v77, v80, v77, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v79, v84, v81, 0xc0c0004
	v_perm_b32 v80, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v81, v88, v85, 0xc0c0004
	v_perm_b32 v82, v87, v86, 0xc0c0004
	v_perm_b32 v154, v92, v89, 0xc0c0004
	v_perm_b32 v155, v91, v90, 0xc0c0004
	v_perm_b32 v156, v96, v93, 0xc0c0004
	v_perm_b32 v157, v95, v94, 0xc0c0004
	v_perm_b32 v100, v100, v97, 0xc0c0004
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_perm_b32 v101, v208, v101, 0xc0c0004
	v_perm_b32 v102, v207, v102, 0xc0c0004
	v_perm_b32 v158, v212, v209, 0xc0c0004
	v_perm_b32 v159, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v160, v216, v213, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v210, v248, v245, 0xc0c0004
	v_perm_b32 v211, v247, v246, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v212, v252, v249, 0xc0c0004
	v_perm_b32 v213, v251, v250, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v16, v16, v253, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	v_perm_b32 v12, v22, v15, 0xc0c0004
	v_perm_b32 v15, v19, v20, 0xc0c0004
	v_perm_b32 v148, v168, v165, 0xc0c0004
	v_perm_b32 v149, v167, v166, 0xc0c0004
	v_perm_b32 v150, v172, v169, 0xc0c0004
	v_perm_b32 v151, v171, v170, 0xc0c0004
	v_perm_b32 v152, v72, v69, 0xc0c0004
	v_perm_b32 v153, v71, v70, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v161, v215, v214, 0xc0c0004
	v_perm_b32 v162, v220, v217, 0xc0c0004
	v_perm_b32 v163, v219, v218, 0xc0c0004
	v_perm_b32 v164, v224, v221, 0xc0c0004
	v_perm_b32 v165, v223, v222, 0xc0c0004
	v_perm_b32 v166, v228, v225, 0xc0c0004
	v_perm_b32 v167, v227, v226, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v22, v108, v24, 0xc0c0004
	v_perm_b32 v24, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v116, v116, v107, 0xc0c0004
	v_perm_b32 v111, v111, v112, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v112, v124, v115, 0xc0c0004
	v_perm_b32 v115, v119, v120, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v119, v132, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v127, v128, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v70, v10, 16, v9
	v_lshl_or_b32 v69, v14, 16, v13
	v_lshl_or_b32 v68, v18, 16, v17
	v_lshl_or_b32 v67, v23, 16, v21
	v_lshl_or_b32 v20, v103, 16, v104
	v_lshl_or_b32 v19, v106, 16, v105
	v_lshl_or_b32 v18, v110, 16, v109
	v_lshl_or_b32 v17, v114, 16, v113
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v74, v141, 16, v140
	v_lshl_or_b32 v73, v143, 16, v142
	v_lshl_or_b32 v72, v145, 16, v144
	v_lshl_or_b32 v71, v147, 16, v146
	v_lshl_or_b32 v91, v75, 16, v76
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v98, v78, 16, v77
	v_lshl_or_b32 v97, v80, 16, v79
	v_lshl_or_b32 v96, v82, 16, v81
	v_lshl_or_b32 v95, v155, 16, v154
	v_lshl_or_b32 v78, v157, 16, v156
	v_lshl_or_b32 v77, v99, 16, v100
	v_lshl_or_b32 v76, v102, 16, v101
	v_lshl_or_b32 v75, v159, 16, v158
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v110, v211, 16, v210
	v_lshl_or_b32 v109, v213, 16, v212
	v_lshl_or_b32 v108, v11, 16, v16
	v_lshl_or_b32 v107, v15, 16, v12
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v168, v232, v229, 0xc0c0004
	v_perm_b32 v169, v231, v230, 0xc0c0004
	v_perm_b32 v170, v236, v233, 0xc0c0004
	v_perm_b32 v171, v235, v234, 0xc0c0004
	v_perm_b32 v172, v240, v237, 0xc0c0004
	v_perm_b32 v207, v239, v238, 0xc0c0004
	v_perm_b32 v208, v244, v241, 0xc0c0004
	v_perm_b32 v209, v243, v242, 0xc0c0004
	v_lshl_or_b32 v86, v118, 16, v117
	v_lshl_or_b32 v85, v122, 16, v121
	v_lshl_or_b32 v84, v126, 16, v125
	v_lshl_or_b32 v83, v130, 16, v129
	v_lshl_or_b32 v90, v133, 16, v131
	v_lshl_or_b32 v89, v135, 16, v134
	v_lshl_or_b32 v88, v137, 16, v136
	v_lshl_or_b32 v87, v139, 16, v138
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v94, v149, 16, v148
	v_lshl_or_b32 v93, v151, 16, v150
	v_lshl_or_b32 v92, v153, 16, v152
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v102, v161, 16, v160
	v_lshl_or_b32 v101, v163, 16, v162
	v_lshl_or_b32 v100, v165, 16, v164
	v_lshl_or_b32 v99, v167, 16, v166
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v114, v24, 16, v22
	v_lshl_or_b32 v113, v111, 16, v116
	v_lshl_or_b32 v112, v115, 16, v112
	v_lshl_or_b32 v111, v120, 16, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[67:70], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[17:24], v[71:74], v[67:70], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[95:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[75:82], v[107:110], v[95:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v106, v169, 16, v168
	v_lshl_or_b32 v105, v171, 16, v170
	v_lshl_or_b32 v104, v207, 16, v172
	v_lshl_or_b32 v103, v209, 16, v208
	v_wmma_i32_16x16x16_iu8 v[9:16], v[87:90], v[83:86], v[9:16] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[17:24], v[91:94], v[83:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[111:114], v[99:102], v[75:82] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s2
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[67:74], v[103:106], v[99:102], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
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
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
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
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v84, 16, v174
	v_lshlrev_b32_e32 v83, 16, v173
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v78, v84, v78 :: v_dual_lshlrev_b32 v93, 16, v177
	v_dual_mul_f32 v76, v84, v76 :: v_dual_lshlrev_b32 v85, 16, v175
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v83, v12
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v17, v83, v17 :: v_dual_lshlrev_b32 v86, 16, v176
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v20, v83, v20 :: v_dual_lshlrev_b32 v87, 16, v183
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v75, v84, v75 :: v_dual_lshlrev_b32 v88, 16, v184
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v11, v83, v11 :: v_dual_lshlrev_b32 v90, 16, v185
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v19, v83, v19 :: v_dual_lshlrev_b32 v94, 16, v178
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v14, v83, v14 :: v_dual_lshlrev_b32 v95, 16, v189
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v77, v84, v77 :: v_dual_lshlrev_b32 v96, 16, v190
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v22, v83, v22 :: v_dual_lshlrev_b32 v97, 16, v192
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v13, v83, v13 :: v_dual_lshlrev_b32 v98, 16, v191
	v_dual_mul_f32 v16, v83, v16 :: v_dual_lshlrev_b32 v101, 16, v179
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v21, v83, v21 :: v_dual_lshlrev_b32 v102, 16, v180
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v24, v83, v24 :: v_dual_lshlrev_b32 v103, 16, v195
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v79, v84, v79 :: v_dual_lshlrev_b32 v104, 16, v196
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v15, v83, v15 :: v_dual_lshlrev_b32 v110, 16, v182
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v36, v12, v94 :: v_dual_lshlrev_b32 v111, 16, v197
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v23, v83, v23 :: v_dual_lshlrev_b32 v112, 16, v198
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v83, v9
	v_mul_f32_e32 v10, v83, v10
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v18, v83, v18 :: v_dual_lshlrev_b32 v109, 16, v181
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v72, v84, v72 :: v_dual_lshlrev_b32 v89, 16, v186
	v_dual_mul_f32 v70, v84, v70 :: v_dual_lshlrev_b32 v91, 16, v188
	v_dual_mul_f32 v69, v84, v69 :: v_dual_lshlrev_b32 v92, 16, v187
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v80, v84, v80 :: v_dual_lshlrev_b32 v99, 16, v194
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v71, v84, v71 :: v_dual_lshlrev_b32 v100, 16, v193
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v74, v84, v74 :: v_dual_lshlrev_b32 v105, 16, v200
	v_dual_mul_f32 v73, v84, v73 :: v_dual_lshlrev_b32 v106, 16, v199
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v82, v84, v82 :: v_dual_lshlrev_b32 v107, 16, v204
	v_dual_mul_f32 v81, v84, v81 :: v_dual_lshlrev_b32 v108, 16, v203
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v40, v9, v85 :: v_dual_lshlrev_b32 v113, 16, v202
	v_dual_fmac_f32 v41, v10, v86 :: v_dual_lshlrev_b32 v114, 16, v201
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v38, v20, v96 :: v_dual_lshlrev_b32 v115, 16, v206
	v_dual_fmac_f32 v39, v17, v87 :: v_dual_lshlrev_b32 v116, 16, v205
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v84, v68
	v_dual_mul_f32 v67, v84, v67 :: v_dual_fmac_f32 v42, v18, v88
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v11, v93 :: v_dual_fmac_f32 v34, v21, v103
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v37, v19, v95 :: v_dual_fmac_f32 v32, v13, v101
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v14, v102 :: v_dual_fmac_f32 v28, v15, v109
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v33, v22, v104 :: v_dual_fmac_f32 v30, v23, v111
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v27, v16, v110 :: v_dual_fmac_f32 v36, v70, v97
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v29, v24, v112 :: v_dual_fmac_f32 v40, v67, v90
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v41, v68, v89 :: v_dual_fmac_f32 v32, v71, v106
	v_dual_fmac_f32 v35, v69, v98 :: v_dual_fmac_f32 v42, v76, v91
	v_dual_fmac_f32 v31, v72, v105 :: v_dual_fmac_f32 v28, v73, v114
	v_dual_fmac_f32 v27, v74, v113 :: v_dual_fmac_f32 v34, v79, v108
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v39, v75, v92 :: v_dual_fmac_f32 v38, v78, v99
	v_fmac_f32_e32 v37, v77, v100
	v_dual_fmac_f32 v33, v80, v107 :: v_dual_fmac_f32 v30, v81, v116
	v_fmac_f32_e32 v29, v82, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v43
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v42 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v39
	v_mul_f32_e32 v4, 0xbfb8aa3b, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v34
	v_dual_mul_f32 v2, 0xbfb8aa3b, v38 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v10, 0xbfb8aa3b, v30
	v_exp_f32_e32 v8, v8
	v_cndmask_b32_e64 v12, 0, 0x42800000, s0
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s1
	v_mul_f32_e32 v23, 0xbfb8aa3b, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v7, v8, v7
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v42
	v_exp_f32_e32 v8, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v4, v6
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v7, v7, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v6, v8, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, s0, v39, v7, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v15, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v4, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v14, v15, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v4, v4, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v18, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v8, v13
	v_div_scale_f32 v16, vcc_lo, v42, v4, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v11, v3
	v_ldexp_f32 v5, v5, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v22, v19, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v12, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v13, v8, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, 0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v14, v22, v19
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v8, v17, v8
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.h, v12.h
	v_mov_b16_e32 v23.h, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v2, v2, v38
	v_mul_f32_e32 v21, v16, v8
	v_div_scale_f32 v17, null, v6, v6, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v18, v20
	v_div_scale_f32 v11, s1, v38, v2, v38
	v_rcp_f32_e32 v25, v17
	v_fma_f32 v43, -v13, v21, v16
	v_fmac_f32_e32 v22, v44, v15
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v21, v43, v8
	v_fma_f32 v9, -v20, v18, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v17, v25, 1.0
	v_fma_f32 v13, -v13, v21, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v9, v18
	v_fma_f32 v9, -v14, v22, v19
	v_fmac_f32_e32 v25, v43, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v13, v8, v21
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v13, s0, v37, v6, v37
	v_div_fmas_f32 v9, v9, v15, v22
	v_div_fixup_f32 v4, v8, v4, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v7, v9, v7, v39
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v41, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v14, v11, v18 :: v_dual_mul_f32 v7, v40, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v13, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v9, -v20, v14, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v4, v4
	v_mov_b16_e32 v24.l, v7.h
	v_cmp_o_f32_e64 s3, v7, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v17, v8, v13
	v_fmac_f32_e32 v14, v9, v18
	v_div_scale_f32 v9, null, v5, v5, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v8, v15, v25 :: v_dual_and_b32 v15, 1, v12
	v_fma_f32 v11, -v20, v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v17, v8, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v15, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v11, v18, v14
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.l, 0x7fff, v7.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v9
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v11, v2, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v36, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v3, v3, v34
	v_fma_f32 v17, -v9, v7, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v2.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v19, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v7, v17, v7
	v_div_fmas_f32 v8, v13, v25, v8
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v18
	v_exp_f32_e32 v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, vcc_lo, v33, v5, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v6, v8, v6, v37
	v_fma_f32 v8, -v15, v19, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v13, v16
	v_ldexp_f32 v10, v10, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v14, v11, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v8, v19
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v8, 1.0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v9, v14, v11
	v_div_scale_f32 v10, s0, v34, v3, v34
	v_div_scale_f32 v20, null, v13, v13, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, v17, v7
	v_div_scale_f32 v16, null, v8, v8, v29
	v_rcp_f32_e32 v22, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v9, v14, v11
	v_rcp_f32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v7, v9, v7, v14
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v20, v22, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v7, v5, v33
	v_fma_f32 v11, -v16, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v9, v22
	v_mul_f32_e32 v18, v10, v19
	v_div_scale_f32 v9, s2, v30, v13, v30
	v_fmac_f32_e32 v21, v11, v21
	v_div_scale_f32 v11, s1, v29, v8, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v15, v18, v10
	v_mul_f32_e32 v14, v11, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v18, v17, v19
	v_mul_f32_e32 v17, v9, v22
	v_fma_f32 v10, -v15, v18, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v19, v18
	v_fma_f32 v19, -v20, v17, v9
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v2, v15, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v31, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v10, v3, v34
	v_fma_f32 v10, -v16, v14, v11
	v_fmac_f32_e32 v17, v19, v22
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, v12.h
	v_mov_b16_e32 v12.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v32, v3 :: v_dual_fmac_f32 v14, v10, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v20, v17, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v3.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v16, v14, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v15.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v3, v3
	v_and_b32_e32 v5, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v7, v21, v14
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v9, v9, v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v3, v5, 0x7fff
	v_mov_b16_e32 v3.h, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v13, v30
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v35, v6 :: v_dual_and_b32 v13, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v23
	v_add3_u32 v10, v6, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v7, v8, v29
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v28, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v2, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v11.l, 0x7fff, v10.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v27, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v7.h
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s1
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v5, 0x7632
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s1, v2, v2
	v_and_b32_e32 v8, 1, v12
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v5, 0x3276, v5, s0
	v_add3_u32 v3, v7, v3, 0x7fff
	v_cmp_o_f32_e64 s2, v7, v7
	v_add3_u32 v8, v2, v8, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v2, v5, 8, v5
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v7, v1, s19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v3.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s1
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v2, 0x760076, v2
	v_cndmask_b32_e64 v1, v4, v6, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v3, v11, v5, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v2, v2, 4, v2
	v_cndmask_b32_e64 v9, v6, v4, s0
	v_cndmask_b32_e64 v4, v5, v11, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x5040504, v0
	v_and_b32_e32 v6, 0x7060706, v2
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_and_or_b32 v8, 0x78, v26, s28
	s_mov_b32 s19, 0x31027000
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v0, v1, v9, v5
	v_perm_b32 v1, v1, v9, v6
	v_perm_b32 v2, v3, v4, v5
	v_perm_b32 v3, v3, v4, v6
	v_add_lshl_u32 v4, v8, v7, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 254
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 254
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7824
; TotalNumSgprs: 33
; NumVgprs: 254
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 254
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     254
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
