	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v58, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s20, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
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
	s_add_i32 s14, s12, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s13, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s5, s5, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x7f
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s7, s21, 5
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v1, 2, v0
	v_mov_b32_e32 v59, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr59
.LBB0_3:                                ; %Flow376
	s_load_b64 s[22:23], s[0:1], 0x20
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v56, 0x80, v0
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v55, 4, v0
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v57, 0x60, v0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v21, 0
	s_lshl_b32 s24, s5, 6
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s20, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s27, s3, 6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v5, v0, 4, 1
	v_lshrrev_b32_e32 v6, 1, v57
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s12, 31
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v3, s27, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s15, s0, 31
.Ltmp17:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s14, 31
	v_or3_b32 v59, v5, v6, s20
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s15, s15, 27
.Ltmp19:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v5, 32, v3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s0, s15
.Ltmp21:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v3, s21, v3
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s1, 25
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s26, s0, 5
.Ltmp24:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v5, s21, v5
	s_mov_b32 s0, 0
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s14, s1
.Ltmp26:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s13, 7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s13, s5
	s_mov_b32 s16, s6
	s_mov_b32 s17, s7
	s_mov_b32 s3, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v7, 0x70, v55
	v_dual_mov_b32 v21, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	v_bfe_i32 v4, v0, 4, 1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v8, 3, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v5, v5, s1, v7
	v_add3_u32 v3, v3, s1, v7
	s_mov_b32 s1, s0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v1, 24, v2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v10, 2, v0
	v_and_b32_e32 v11, 0x210, v58
	v_and_b32_e32 v2, 0x778, v2
	v_and_b32_e32 v4, 0x90, v4
	v_or3_b32 v8, v8, v9, s24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s2, s2, 7
	v_lshl_or_b32 v11, v9, 5, v11
	v_or_b32_e32 v9, v6, v9
	v_xor_b32_e32 v2, v4, v2
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v6, s24, v10
	v_or_b32_e32 v13, 32, v8
	v_subrev_nc_u32_e32 v78, s2, v3
	v_xor_b32_e32 v12, 16, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[53:54], null, s12, v6, v[1:2]
	v_subrev_nc_u32_e32 v54, s2, v5
	s_mov_b32 s12, s4
	s_mov_b32 s2, s0
	s_mov_b32 s4, s0
	v_and_b32_e32 v4, 0xff0, v55
	v_mul_lo_u32 v61, v8, s26
	v_mul_lo_u32 v62, v13, s26
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v79, 0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v80, 0, v4
	v_mov_b32_e32 v8, s7
	v_dual_mov_b32 v1, s0 :: v_dual_add_nc_u32 v60, 0, v9
	v_or_b32_e32 v63, 2, v59
	v_or_b32_e32 v64, 4, v59
	v_or_b32_e32 v65, 6, v59
	v_or_b32_e32 v66, 8, v59
	v_or_b32_e32 v67, 10, v59
	v_or_b32_e32 v68, 12, v59
	v_or_b32_e32 v69, 14, v59
	v_or_b32_e32 v70, 64, v59
	v_or_b32_e32 v71, 0x42, v59
	v_or_b32_e32 v72, 0x44, v59
	v_or_b32_e32 v73, 0x46, v59
	v_or_b32_e32 v74, 0x48, v59
	v_or_b32_e32 v75, 0x4a, v59
	v_or_b32_e32 v76, 0x4c, v59
	v_or_b32_e32 v77, 0x4e, v59
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v81, 0, v11
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v82, 0, v12
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	v_dual_mov_b32 v5, s4 :: v_dual_mov_b32 v4, s3
	v_dual_mov_b32 v3, s2 :: v_dual_mov_b32 v2, s1
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v24, 0
.Ltmp27:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s25, s14, 7
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s28, s21, 5
.Ltmp28:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s29, s21, 7
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s0, s8
	s_mov_b32 s1, s9
	s_mov_b32 s2, s14
	s_mov_b32 s3, s15
	s_mov_b32 s4, s10
	s_mov_b32 s5, s11
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v15, s27, v53
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s9, s27, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s8, s27, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s9, s26
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[13:14], v15, s[12:15], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[9:12], v78, s[16:19], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s8, s8, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v78, s29, v78
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s8, s26
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v79, v[13:14] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v80, v[9:12]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[13:14], v15, s[12:15], 0 offen offset:32
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[9:12], v54, s[16:19], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v79, v[13:14] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v80, v[9:12] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v83, v60 offset:3712
	ds_load_u8 v84, v60 offset:3584
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[17:20], v81 offset:8192
	ds_load_b128 v[107:110], v81 offset:9216
	ds_load_b128 v[91:94], v82 offset:8192
	ds_load_b128 v[111:114], v82 offset:9216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v60 offset:1664
	ds_load_u8 v10, v60 offset:1536
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v54, s29, v54
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:3968
	ds_load_u8 v85, v60 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v60 offset:1920
	ds_load_u8 v11, v60 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v106, v84, 16, v83
	ds_load_u8 v83, v60 offset:3200
	ds_load_u8 v84, v60 offset:3072
	v_lshl_or_b32 v102, v10, 16, v9
	ds_load_u8 v9, v60 offset:1152
	ds_load_u8 v10, v60 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:3456
	ds_load_u8 v85, v60 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v60 offset:1408
	ds_load_u8 v11, v60 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v105, v84, 16, v83
	ds_load_u8 v83, v60 offset:2688
	ds_load_u8 v84, v60 offset:2560
	v_lshl_or_b32 v101, v10, 16, v9
	ds_load_u8 v9, v60 offset:640
	ds_load_u8 v10, v60 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:2944
	ds_load_u8 v85, v60 offset:2816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v60 offset:896
	ds_load_u8 v11, v60 offset:768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v104, v84, 16, v83
	ds_load_u8 v83, v60 offset:2176
	ds_load_u8 v84, v60 offset:2048
	v_lshl_or_b32 v100, v10, 16, v9
	ds_load_u8 v9, v60 offset:128
	ds_load_u8 v10, v60
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:2432
	ds_load_u8 v85, v60 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v60 offset:384
	ds_load_u8 v11, v60 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v84, 16, v83
	ds_load_u8 v83, v60 offset:1728
	ds_load_u8 v84, v60 offset:1600
	v_lshl_or_b32 v99, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[99:102], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[91:94], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:1984
	ds_load_u8 v85, v60 offset:1856
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v84, 16, v83
	ds_load_u8 v83, v60 offset:1216
	ds_load_u8 v84, v60 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:1472
	ds_load_u8 v85, v60 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v84, 16, v83
	ds_load_u8 v83, v60 offset:704
	ds_load_u8 v84, v60 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:960
	ds_load_u8 v85, v60 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v84, 16, v83
	ds_load_u8 v83, v60 offset:192
	ds_load_u8 v84, v60 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:448
	ds_load_u8 v85, v60 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v84, 16, v83
	v_wmma_i32_16x16x16_iu8 v[83:90], v[115:118], v[17:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v60 offset:3776
	ds_load_u8 v18, v60 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v60 offset:4032
	ds_load_u8 v19, v60 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v18, 16, v17
	ds_load_u8 v17, v60 offset:3264
	ds_load_u8 v18, v60 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v60 offset:3520
	ds_load_u8 v19, v60 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v18, 16, v17
	ds_load_u8 v17, v60 offset:2752
	ds_load_u8 v18, v60 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v60 offset:3008
	ds_load_u8 v95, v60 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v95, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v60 offset:2240
	ds_load_u8 v95, v60 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v95, v17, 0xc0c0004
	ds_load_u8 v95, v60 offset:2496
	ds_load_u8 v96, v60 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v95, 16, v17
	v_wmma_i32_16x16x16_iu8 v[83:90], v[17:20], v[91:94], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[107:110], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[103:106], v[111:114], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[115:118], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[17:20], v[111:114], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v83
	v_cvt_f32_i32_e32 v18, v84
	v_cvt_f32_i32_e32 v83, v87
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v88, v92
	v_cvt_f32_i32_e32 v91, v95
	v_cvt_f32_i32_e32 v92, v96
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v96, v100
	v_cvt_f32_i32_e32 v99, v103
	v_cvt_f32_i32_e32 v100, v104
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v103, v61, s9, 1
	v_add_lshl_u32 v104, v62, s9, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s9, s9, s21
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v19, v85
	v_cvt_f32_i32_e32 v20, v86
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v85, v89
	v_cvt_f32_i32_e32 v86, v90
	v_cvt_f32_i32_e32 v89, v93
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v103, v103, s[0:3], 0 offen
	buffer_load_u16 v104, v104, s[0:3], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v90, v94
	v_cvt_f32_i32_e32 v93, v97
	v_cvt_f32_i32_e32 v94, v98
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v101, v105
	v_cvt_f32_i32_e32 v102, v106
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v105, v59, s9, 1
	v_add_lshl_u32 v106, v63, s9, 1
	v_add_lshl_u32 v107, v64, s9, 1
	v_add_lshl_u32 v108, v65, s9, 1
	v_add_lshl_u32 v109, v66, s9, 1
	v_add_lshl_u32 v110, v67, s9, 1
	v_add_lshl_u32 v113, v70, s9, 1
	v_add_lshl_u32 v114, v71, s9, 1
	v_add_lshl_u32 v115, v72, s9, 1
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	v_dual_cndmask_b32 v109, 0x80000000, v109 :: v_dual_cndmask_b32 v110, 0x80000000, v110
	v_dual_cndmask_b32 v113, 0x80000000, v113 :: v_dual_cndmask_b32 v114, 0x80000000, v114
	v_add_lshl_u32 v116, v73, s9, 1
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	s_clause 0x7
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	buffer_load_u16 v106, v106, s[4:7], 0 offen
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	buffer_load_u16 v108, v108, s[4:7], 0 offen
	buffer_load_u16 v109, v109, s[4:7], 0 offen
	buffer_load_u16 v110, v110, s[4:7], 0 offen
	buffer_load_u16 v113, v113, s[4:7], 0 offen
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	v_add_lshl_u32 v111, v68, s9, 1
	v_add_lshl_u32 v112, v69, s9, 1
	v_add_lshl_u32 v117, v74, s9, 1
	v_add_lshl_u32 v118, v75, s9, 1
	buffer_load_u16 v116, v116, s[4:7], 0 offen
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_cndmask_b32 v112, 0x80000000, v112
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	v_add_lshl_u32 v119, v76, s9, 1
	s_clause 0x3
	buffer_load_u16 v111, v111, s[4:7], 0 offen
	buffer_load_u16 v112, v112, s[4:7], 0 offen
	buffer_load_u16 v117, v117, s[4:7], 0 offen
	buffer_load_u16 v118, v118, s[4:7], 0 offen
	v_add_lshl_u32 v120, v77, s9, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	buffer_load_u16 v119, v119, s[4:7], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s25, s25, -1
	s_addk_i32 s27, 0x80
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v120, v120, s[4:7], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s25, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v104, 16, v104
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v86, v86, v103 :: v_dual_mul_f32 v91, v91, v104
	v_dual_mul_f32 v92, v92, v104 :: v_dual_mul_f32 v13, v13, v103
	v_mul_f32_e32 v14, v14, v103
	v_mul_f32_e32 v12, v12, v103
	v_dual_mul_f32 v20, v20, v103 :: v_dual_mul_f32 v87, v87, v104
	v_dual_mul_f32 v11, v11, v103 :: v_dual_mul_f32 v90, v90, v104
	v_mul_f32_e32 v9, v9, v103
	v_mul_f32_e32 v18, v18, v103
	v_mul_f32_e32 v19, v19, v103
	v_dual_mul_f32 v84, v84, v103 :: v_dual_mul_f32 v89, v89, v104
	v_dual_mul_f32 v17, v17, v103 :: v_dual_mul_f32 v88, v88, v104
	v_mul_f32_e32 v15, v15, v103
	v_mul_f32_e32 v16, v16, v103
	v_mul_f32_e32 v94, v94, v104
	v_mul_f32_e32 v10, v10, v103
	v_mul_f32_e32 v83, v83, v103
	v_mul_f32_e32 v85, v85, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v93, v93, v104 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v97, v97, v104 :: v_dual_lshlrev_b32 v110, 16, v110
	v_dual_mul_f32 v101, v101, v104 :: v_dual_fmac_f32 v22, v87, v105
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v36, v91, v109 :: v_dual_lshlrev_b32 v115, 16, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v32, v92, v110
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	ds_load_u8 v91, v60 offset:7808
	ds_load_u8 v92, v60 offset:7680
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v96, v96, v104 :: v_dual_fmac_f32 v21, v9, v105
	v_dual_mul_f32 v99, v99, v104 :: v_dual_fmac_f32 v44, v89, v107
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v39, v12, v108
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v49, v18, v114
	v_dual_fmac_f32 v45, v19, v115 :: v_dual_fmac_f32 v50, v96, v114
	v_dual_fmac_f32 v28, v93, v111 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v95, v95, v104 :: v_dual_fmac_f32 v48, v88, v106
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:8064
	ds_load_u8 v93, v60 offset:7936
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v14, v110 :: v_dual_fmac_f32 v52, v95, v113
	v_dual_fmac_f32 v51, v17, v113 :: v_dual_fmac_f32 v26, v94, v112
	v_dual_fmac_f32 v25, v16, v112 :: v_dual_fmac_f32 v46, v97, v115
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v100, v100, v104 :: v_dual_fmac_f32 v47, v10, v106
	v_dual_mul_f32 v102, v102, v104 :: v_dual_fmac_f32 v35, v13, v109
	v_dual_mul_f32 v98, v98, v104 :: v_dual_fmac_f32 v43, v11, v107
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v27, v15, v111 :: v_dual_fmac_f32 v40, v90, v108
	v_dual_fmac_f32 v41, v20, v116 :: v_dual_fmac_f32 v30, v101, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v83, v117 :: v_dual_fmac_f32 v42, v98, v116
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v33, v84, v118 :: v_dual_fmac_f32 v24, v102, v120
	v_dual_fmac_f32 v29, v85, v119 :: v_dual_fmac_f32 v34, v100, v118
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v114, v92, 16, v91
	ds_load_u8 v91, v60 offset:7296
	ds_load_u8 v92, v60 offset:7168
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v38, v99, v117
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[99:102], v81 offset:10240
	ds_load_b128 v[9:12], v81 offset:11264
	ds_load_b128 v[17:20], v82 offset:10240
	ds_load_b128 v[13:16], v82 offset:11264
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v83, v60 offset:5760
	ds_load_u8 v84, v60 offset:5632
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v23, v86, v120
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:7552
	ds_load_u8 v93, v60 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:6016
	ds_load_u8 v85, v60 offset:5888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v92, 16, v91
	ds_load_u8 v91, v60 offset:6784
	ds_load_u8 v92, v60 offset:6656
	v_lshl_or_b32 v110, v84, 16, v83
	ds_load_u8 v83, v60 offset:5248
	ds_load_u8 v84, v60 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:7040
	ds_load_u8 v93, v60 offset:6912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:5504
	ds_load_u8 v85, v60 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v112, v92, 16, v91
	ds_load_u8 v91, v60 offset:6272
	ds_load_u8 v92, v60 offset:6144
	v_lshl_or_b32 v109, v84, 16, v83
	ds_load_u8 v83, v60 offset:4736
	ds_load_u8 v84, v60 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:6528
	ds_load_u8 v93, v60 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:4992
	ds_load_u8 v85, v60 offset:4864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v111, v92, 16, v91
	ds_load_u8 v91, v60 offset:5824
	ds_load_u8 v92, v60 offset:5696
	v_lshl_or_b32 v108, v84, 16, v83
	ds_load_u8 v83, v60 offset:4224
	ds_load_u8 v84, v60 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:6080
	ds_load_u8 v93, v60 offset:5952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:4480
	ds_load_u8 v85, v60 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v92, 16, v91
	ds_load_u8 v91, v60 offset:5312
	ds_load_u8 v92, v60 offset:5184
	v_lshl_or_b32 v107, v84, 16, v83
	v_wmma_i32_16x16x16_iu8 v[83:90], v[107:110], v[99:102], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[111:114], v[17:20], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:5568
	ds_load_u8 v93, v60 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v92, 16, v91
	ds_load_u8 v91, v60 offset:4800
	ds_load_u8 v92, v60 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:5056
	ds_load_u8 v93, v60 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v92, 16, v91
	ds_load_u8 v91, v60 offset:4288
	ds_load_u8 v92, v60 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:4544
	ds_load_u8 v93, v60 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v92, 16, v91
	v_wmma_i32_16x16x16_iu8 v[91:98], v[115:118], v[99:102], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v99, v60 offset:7872
	ds_load_u8 v100, v60 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v60 offset:8128
	ds_load_u8 v101, v60 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v100, 16, v99
	ds_load_u8 v99, v60 offset:7360
	ds_load_u8 v100, v60 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v60 offset:7616
	ds_load_u8 v101, v60 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v100, 16, v99
	ds_load_u8 v99, v60 offset:6848
	ds_load_u8 v100, v60 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v60 offset:7104
	ds_load_u8 v101, v60 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v100, 16, v99
	ds_load_u8 v99, v60 offset:6336
	ds_load_u8 v100, v60 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v60 offset:6592
	ds_load_u8 v101, v60 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v119, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[99:106], v[107:110], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[119:122], v[17:20], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[111:114], v[13:16], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[115:118], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v83
	v_cvt_f32_i32_e32 v17, v91
	v_cvt_f32_i32_e32 v18, v92
	v_cvt_f32_i32_e32 v91, v103
	v_cvt_f32_i32_e32 v92, v104
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v103, v61, s8, 1
	v_add_lshl_u32 v104, v62, s8, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s8, s8, s21
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v19, v93
	v_cvt_f32_i32_e32 v20, v94
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v93, v105
	v_cvt_f32_i32_e32 v94, v106
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v105, v59, s8, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v103, v103, s[0:3], 0 offen
	buffer_load_u16 v104, v104, s[0:3], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v106, v63, s8, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[107:114], v[119:122], v[13:16], v[107:114] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v10, v84
	v_cvt_f32_i32_e32 v11, v85
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v12, v86
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v13, v87
	v_cvt_f32_i32_e32 v14, v88
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v106, v106, s[4:7], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v83, v95
	v_cvt_f32_i32_e32 v84, v96
	v_cvt_f32_i32_e32 v85, v97
	v_cvt_f32_i32_e32 v86, v98
	v_cvt_f32_i32_e32 v87, v99
	v_cvt_f32_i32_e32 v88, v100
	v_cvt_f32_i32_e32 v95, v107
	v_cvt_f32_i32_e32 v96, v108
	v_cvt_f32_i32_e32 v97, v109
	v_cvt_f32_i32_e32 v98, v110
	v_cvt_f32_i32_e32 v99, v111
	v_cvt_f32_i32_e32 v100, v112
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v107, v64, s8, 1
	v_add_lshl_u32 v108, v65, s8, 1
	v_add_lshl_u32 v109, v66, s8, 1
	v_add_lshl_u32 v110, v67, s8, 1
	v_add_lshl_u32 v111, v68, s8, 1
	v_add_lshl_u32 v112, v69, s8, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v15, v89
	v_cvt_f32_i32_e32 v16, v90
	v_cvt_f32_i32_e32 v89, v101
	v_cvt_f32_i32_e32 v90, v102
	v_cvt_f32_i32_e32 v101, v113
	v_cvt_f32_i32_e32 v102, v114
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v110, 0x80000000, v110
	v_dual_cndmask_b32 v108, 0x80000000, v108 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	v_add_lshl_u32 v113, v70, s8, 1
	v_add_lshl_u32 v114, v71, s8, 1
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	v_add_lshl_u32 v115, v72, s8, 1
	v_add_lshl_u32 v116, v73, s8, 1
	v_add_lshl_u32 v117, v74, s8, 1
	v_add_lshl_u32 v118, v75, s8, 1
	v_add_lshl_u32 v119, v76, s8, 1
	v_add_lshl_u32 v120, v77, s8, 1
	s_clause 0x4
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	buffer_load_u16 v108, v108, s[4:7], 0 offen
	buffer_load_u16 v109, v109, s[4:7], 0 offen
	buffer_load_u16 v110, v110, s[4:7], 0 offen
	buffer_load_u16 v112, v112, s[4:7], 0 offen
	v_dual_cndmask_b32 v113, 0x80000000, v113 :: v_dual_cndmask_b32 v116, 0x80000000, v116
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	buffer_load_u16 v111, v111, s[4:7], 0 offen
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	s_clause 0x6
	buffer_load_u16 v113, v113, s[4:7], 0 offen
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	buffer_load_u16 v116, v116, s[4:7], 0 offen
	buffer_load_u16 v117, v117, s[4:7], 0 offen
	buffer_load_u16 v118, v118, s[4:7], 0 offen
	buffer_load_u16 v120, v120, s[4:7], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v9, v9, v103 :: v_dual_lshlrev_b32 v104, 16, v104
	v_mul_f32_e32 v10, v10, v103
	v_mul_f32_e32 v11, v11, v103
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v12, v12, v103 :: v_dual_lshlrev_b32 v105, 16, v105
	v_mul_f32_e32 v13, v13, v103
	v_mul_f32_e32 v14, v14, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v106, 16, v106
	buffer_load_u16 v119, v119, s[4:7], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v15, v15, v103
	v_mul_f32_e32 v16, v16, v103
	v_mul_f32_e32 v17, v17, v103
	v_dual_mul_f32 v18, v18, v103 :: v_dual_mul_f32 v87, v87, v104
	v_mul_f32_e32 v19, v19, v103
	v_dual_mul_f32 v20, v20, v103 :: v_dual_mul_f32 v89, v89, v104
	v_mul_f32_e32 v83, v83, v103
	v_dual_mul_f32 v84, v84, v103 :: v_dual_mul_f32 v91, v91, v104
	v_dual_mul_f32 v85, v85, v103 :: v_dual_mul_f32 v96, v96, v104
	v_dual_mul_f32 v86, v86, v103 :: v_dual_mul_f32 v93, v93, v104
	v_mul_f32_e32 v88, v88, v104
	v_mul_f32_e32 v90, v90, v104
	v_mul_f32_e32 v92, v92, v104
	v_mul_f32_e32 v94, v94, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v95, v95, v104 :: v_dual_fmac_f32 v48, v88, v106
	v_dual_mul_f32 v97, v97, v104 :: v_dual_fmac_f32 v22, v87, v105
	v_dual_mul_f32 v98, v98, v104 :: v_dual_fmac_f32 v21, v9, v105
	v_dual_mul_f32 v100, v100, v104 :: v_dual_fmac_f32 v47, v10, v106
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v99, v99, v104 :: v_dual_fmac_f32 v44, v89, v107
	v_dual_mul_f32 v101, v101, v104 :: v_dual_fmac_f32 v36, v91, v109
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v102, v102, v104 :: v_dual_lshlrev_b32 v111, 16, v111
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v43, v11, v107
	v_fmac_f32_e32 v39, v12, v108
	v_dual_fmac_f32 v35, v13, v109 :: v_dual_fmac_f32 v40, v90, v108
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v113, 16, v113
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v115, 16, v115
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v31, v14, v110 :: v_dual_lshlrev_b32 v120, 16, v120
	v_fmac_f32_e32 v52, v95, v113
	v_dual_fmac_f32 v27, v15, v111 :: v_dual_fmac_f32 v32, v92, v110
	v_dual_fmac_f32 v25, v16, v112 :: v_dual_fmac_f32 v46, v97, v115
	v_dual_fmac_f32 v51, v17, v113 :: v_dual_fmac_f32 v26, v94, v112
	v_dual_fmac_f32 v49, v18, v114 :: v_dual_fmac_f32 v38, v99, v117
	v_dual_fmac_f32 v45, v19, v115 :: v_dual_fmac_f32 v50, v96, v114
	v_dual_fmac_f32 v37, v83, v117 :: v_dual_fmac_f32 v42, v98, v116
	v_dual_fmac_f32 v33, v84, v118 :: v_dual_fmac_f32 v24, v102, v120
	v_dual_fmac_f32 v23, v86, v120 :: v_dual_fmac_f32 v28, v93, v111
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v34, v100, v118 :: v_dual_lshlrev_b32 v119, 16, v119
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v41, v20, v116 :: v_dual_fmac_f32 v30, v101, v119
	v_fmac_f32_e32 v29, v85, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v59, s28
	v_mov_b32_e32 v1, v58
.LBB0_7:                                ; %._crit_edge
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_bfe_i32 v2, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v1, 0x78, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 7, v56
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v4, 14, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0x7f, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v2, 0x840, v2
	v_lshl_or_b32 v1, v57, 3, v1
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v3, s21, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v6, 11, v4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s24, s21
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	v_xor_b32_e32 v1, v1, v2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s20
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_barrier
	v_and_b32_e32 v0, 1, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v53, s0, v5, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_or3_b32 v3, v1, v6, v56
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v0, 6, v0
	v_ashrrev_i32_e32 v54, 31, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v3
	v_xad_u32 v2, v3, 8, 0
	v_xad_u32 v5, v3, 16, 0
	v_xad_u32 v6, v3, 24, 0
	ds_store_2addr_stride64_b64 v1, v[21:22], v[51:52] offset1:2
	ds_store_2addr_stride64_b64 v2, v[47:48], v[49:50] offset1:2
	ds_store_2addr_stride64_b64 v5, v[43:44], v[45:46] offset1:2
	ds_store_2addr_stride64_b64 v6, v[39:40], v[41:42] offset1:2
	v_lshlrev_b64 v[1:2], 2, v[53:54]
	v_xad_u32 v7, v3, 32, 0
	v_xad_u32 v8, v3, 40, 0
	ds_store_2addr_stride64_b64 v7, v[35:36], v[37:38] offset1:2
	ds_store_2addr_stride64_b64 v8, v[31:32], v[33:34] offset1:2
	v_add_co_u32 v32, vcc_lo, s22, v1
	v_xad_u32 v5, v3, 48, 0
	v_add_co_ci_u32_e64 v33, null, s23, v2, vcc_lo
	v_xad_u32 v3, v3, 56, 0
	ds_store_2addr_stride64_b64 v5, v[27:28], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v3, v[25:26], v[23:24] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v35, v[32:33], off
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	v_and_b32_e32 v2, 0x700, v55
	v_lshlrev_b32_e32 v3, 2, v4
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_8:                                ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v34, v35, v28
	global_atomic_cmpswap_b32 v34, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v34, v35
	v_mov_b32_e32 v35, v34
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 1, v53
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_10:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v34, v35, v24
	global_atomic_cmpswap_b32 v28, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v35
	v_mov_b32_e32 v35, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 2, v53
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_12:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v34, v35, v20
	global_atomic_cmpswap_b32 v24, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v35
	v_mov_b32_e32 v35, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 6, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_14:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v34, v35, v16
	global_atomic_cmpswap_b32 v20, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v35
	v_mov_b32_e32 v35, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 3, v53
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_16:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v34, v35, v12
	global_atomic_cmpswap_b32 v16, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v35
	v_mov_b32_e32 v35, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 10, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_18:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v34, v35, v8
	global_atomic_cmpswap_b32 v12, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v35
	v_mov_b32_e32 v35, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 12, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_20:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v34, v35, v4
	global_atomic_cmpswap_b32 v8, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v35
	v_mov_b32_e32 v35, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 14, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_22:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v34, v35, v0
	global_atomic_cmpswap_b32 v4, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v35
	v_mov_b32_e32 v35, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 4, v53
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_24:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v30
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 18, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_26:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v26
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 20, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_28:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v22
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 22, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_30:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v18
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 24, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_32:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v14
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 26, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_34:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v10
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 28, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_36:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v6
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 30, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_38:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v2
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v32, v53, v59
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_40:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s21, 34, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s22, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s23, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_42:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s21, 36, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s22, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s23, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_44:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s21, 38, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s22, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_46:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s21, 40, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s22, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s23, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_48:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s21, 42, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s22, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_50:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s21, 44, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s22, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s23, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_52:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s21, 46, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s22, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s23, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_54:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 48, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_56:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 50, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_58:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 52, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 54, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 56, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 58, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 60, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 62, v[53:54]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp29:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 123
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9720
; TotalNumSgprs: 32
; NumVgprs: 123
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
