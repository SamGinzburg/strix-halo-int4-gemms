	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 299 32 prologue_end           ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s14, 15
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
	s_ashr_i32 s17, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s20, s4, s17
	s_sub_i32 s4, s20, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_sub_i32 s2, s2, s5
	s_mov_b32 s5, 0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s21, s2, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s16, 63
	v_or_b32_e32 v11, s21, v2
.Ltmp13:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v1, s21, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow58
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v12, 0xf0, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v14, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v7, 4, v12
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s16, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s22, s1, 31
.Ltmp18:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v6, s20, 7, v6
	s_mov_b32 s20, 0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp20:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s22, 27
	v_bfe_i32 v14, v0, 6, 1
.Ltmp21:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v7, s21, v7
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0xe0, v0
	v_lshlrev_b32_e32 v10, 5, v0
	v_bfe_i32 v13, v0, 2, 1
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v8, 0x17e, v8
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v14, 0x90, v14
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s1, s0
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s2, 6
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s2, s0, 5
.Ltmp25:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s17, 7
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v9, 1, v5
	v_bfe_i32 v15, v0, 3, 1
	v_and_b32_e32 v10, 0x160, v10
	v_and_b32_e32 v13, 0x90, v13
	v_lshlrev_b32_e32 v5, 4, v5
	v_bfe_u32 v4, v0, 4, 1
	v_xor_b32_e32 v8, v14, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v6, s0, v6
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v1, 16, v3
	v_and_b32_e32 v3, 0xf70, v3
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v15, 0x90, v15
	v_or_b32_e32 v16, v13, v10
	v_or3_b32 v5, v10, v5, v13
	v_or3_b32 v19, v4, v9, s14
	v_mad_u64_u32 v[9:10], null, s16, v6, v[1:2]
	v_mov_b32_e32 v10, 0
	v_mul_lo_u32 v7, s16, v7
	v_xor_b32_e32 v13, 16, v16
	v_xor_b32_e32 v4, 16, v5
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v32, 0, v16
	v_mov_b32_e32 v16, 0
	v_xor_b32_e32 v3, v15, v3
	v_mul_lo_u32 v20, v11, s2
	v_lshl_add_u32 v29, v2, 1, v7
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v30, 0, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v31, 0, v3
	v_add_nc_u32_e32 v34, 0, v5
	v_add_nc_u32_e32 v35, 0, v4
	v_mov_b32_e32 v1, s20
	v_or_b32_e32 v22, 2, v19
	v_or_b32_e32 v23, 4, v19
	v_or_b32_e32 v24, 6, v19
	v_or_b32_e32 v25, 8, v19
	v_or_b32_e32 v26, 10, v19
	v_or_b32_e32 v27, 12, v19
	v_or_b32_e32 v28, 14, v19
	v_dual_mov_b32 v2, s21 :: v_dual_add_nc_u32 v33, 0, v13
	v_dual_mov_b32 v3, s22 :: v_dual_mov_b32 v4, s23
	v_dual_mov_b32 v5, s24 :: v_dual_mov_b32 v6, s25
	v_dual_mov_b32 v7, s26 :: v_dual_mov_b32 v8, s27
	v_mov_b32_e32 v13, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s3, s3, 6
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v40, s3, v29
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v41, s3, v9
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s24, s3, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v44, v40, s[16:19], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[36:39], v41, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v45, v40, s[16:19], 0 offen offset:32
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[40:43], v41, s[4:7], 0 offen offset:32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s24, s24, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v46, v20, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s15
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v55, v20, s24, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v47, v19, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s24, s2
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s24, s24, s15
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v48, v22, s0, 1
	v_add_lshl_u32 v49, v23, s0, 1
	v_add_lshl_u32 v50, v24, s0, 1
	v_add_lshl_u32 v51, v25, s0, 1
	v_add_lshl_u32 v52, v26, s0, 1
	v_add_lshl_u32 v53, v27, s0, 1
	v_add_lshl_u32 v54, v28, s0, 1
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v57, v22, s24, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_cndmask_b32 v47, 0x80000000, v47
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v56, v19, s24, 1
	v_add_lshl_u32 v58, v23, s24, 1
	v_add_lshl_u32 v59, v24, s24, 1
	v_add_lshl_u32 v60, v25, s24, 1
	v_add_lshl_u32 v61, v26, s24, 1
	v_add_lshl_u32 v62, v27, s24, 1
	v_add_lshl_u32 v63, v28, s24, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(3)
	ds_store_b16 v30, v44 offset:8192
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v31, v[36:39]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v30, v45 offset:8704
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v31, v[40:43] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v76, v46, s[20:23], 0 offen
	buffer_load_u16 v77, v55, s[20:23], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v78, v47, s[8:11], 0 offen
	buffer_load_u16 v79, v48, s[8:11], 0 offen
	buffer_load_u16 v80, v57, s[8:11], 0 offen
	buffer_load_u16 v81, v56, s[8:11], 0 offen
	buffer_load_u16 v82, v49, s[8:11], 0 offen
	buffer_load_u16 v83, v50, s[8:11], 0 offen
	buffer_load_u16 v84, v59, s[8:11], 0 offen
	buffer_load_u16 v85, v58, s[8:11], 0 offen
	buffer_load_u16 v86, v51, s[8:11], 0 offen
	buffer_load_u16 v87, v52, s[8:11], 0 offen
	buffer_load_u16 v88, v61, s[8:11], 0 offen
	buffer_load_u16 v89, v60, s[8:11], 0 offen
	buffer_load_u16 v90, v53, s[8:11], 0 offen
	buffer_load_u16 v91, v54, s[8:11], 0 offen
	buffer_load_u16 v92, v63, s[8:11], 0 offen
	buffer_load_u16 v93, v62, s[8:11], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[44:47], v34
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[48:51], v32 offset:8192
	ds_load_b128 v[52:55], v32 offset:8704
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[56:59], v34 offset:4096
	ds_load_b128 v[60:63], v35
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[64:67], v33 offset:8192
	ds_load_b128 v[68:71], v33 offset:8704
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[72:75], v35 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[48:51], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[52:55], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[60:63], v[64:67], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[72:75], v[68:71], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v53, 16, v77
	v_lshlrev_b32_e32 v52, 16, v76
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v55, 16, v79
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v47, v53, v47 :: v_dual_lshlrev_b32 v56, 16, v80
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v46, v53, v46 :: v_dual_lshlrev_b32 v59, 16, v83
	v_dual_mul_f32 v45, v53, v45 :: v_dual_lshlrev_b32 v54, 16, v78
	v_mul_f32_e32 v37, v52, v37
	v_dual_mul_f32 v38, v52, v38 :: v_dual_lshlrev_b32 v57, 16, v81
	v_dual_mul_f32 v41, v52, v41 :: v_dual_lshlrev_b32 v58, 16, v82
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v40, v52, v40 :: v_dual_lshlrev_b32 v61, 16, v85
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v43, v52, v43 :: v_dual_lshlrev_b32 v62, 16, v86
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v48, v53, v48 :: v_dual_lshlrev_b32 v63, 16, v87
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v42, v52, v42 :: v_dual_lshlrev_b32 v65, 16, v89
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v50, v53, v50 :: v_dual_lshlrev_b32 v67, 16, v91
	v_mul_f32_e32 v36, v52, v36
	v_mul_f32_e32 v44, v53, v44
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v21, v37, v55 :: v_dual_lshlrev_b32 v66, 16, v90
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v39, v52, v39 :: v_dual_lshlrev_b32 v60, 16, v84
	v_dual_mul_f32 v49, v53, v49 :: v_dual_lshlrev_b32 v64, 16, v88
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v51, v53, v51 :: v_dual_lshlrev_b32 v68, 16, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v17, v38, v58
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v14, v36, v54 :: v_dual_lshlrev_b32 v69, 16, v93
	v_dual_fmac_f32 v18, v39, v59 :: v_dual_fmac_f32 v15, v40, v62
	v_dual_fmac_f32 v16, v41, v63 :: v_dual_fmac_f32 v13, v42, v66
	v_dual_fmac_f32 v10, v43, v67 :: v_dual_fmac_f32 v21, v45, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v44, v57
	v_dual_fmac_f32 v17, v46, v61 :: v_dual_fmac_f32 v18, v47, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v15, v48, v65 :: v_dual_fmac_f32 v16, v49, v64
	v_dual_fmac_f32 v13, v50, v69 :: v_dual_fmac_f32 v10, v51, v68
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v11
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, 0
	v_mov_b16_e32 v2.l, v21.h
	v_mov_b16_e32 v4.l, v14.h
	v_cmp_o_f32_e64 s0, v14, v14
	v_mov_b16_e32 v8.l, v15.h
	v_mov_b16_e32 v4.h, v2.h
	v_and_b32_e32 v5, 1, v2
	v_mov_b16_e32 v2.l, v18.h
	v_mov_b16_e32 v8.h, v2.h
	v_cmp_o_f32_e64 s1, v15, v15
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v5, v21, v5, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v16.h
	v_mov_b16_e32 v9.l, v13.h
	v_add3_u32 v4, v14, v4, 0x7fff
	v_mov_b16_e32 v9.h, v2.h
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_mov_b16_e32 v6.l, v17.h
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s0
	v_and_b32_e32 v4, 1, v8
	v_and_b32_e32 v8, 1, v2
	v_cmp_o_f32_e64 s0, v16, v16
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v10.h
	v_add3_u32 v4, v15, v4, 0x7fff
	v_add3_u32 v8, v16, v8, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v7, v18, v7, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v4.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s0
	v_and_b32_e32 v4, 1, v9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v9, 0x7632
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v6, v17, v6, 0x7fff
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v9, 0x3276, v9, s0
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v4, v13, v4, 0x7fff
	v_add3_u32 v2, v10, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	v_cmp_o_f32_e64 s2, v13, v13
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b16 v7.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v4, 0x760076, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v11, v8, v5, s0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, v1, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v1, v5, v8, s0
	v_cndmask_b32_e64 v5, v7, v2, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v4, v4, 4, v4
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v7, v2, v7, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v0
	v_and_b32_e32 v4, 0x7060706, v4
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v8, s14, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_perm_b32 v0, v1, v11, v2
	v_perm_b32 v1, v1, v11, v4
	v_perm_b32 v2, v5, v7, v2
	v_perm_b32 v3, v5, v7, v4
	v_add_lshl_u32 v4, v8, v6, 1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 28
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
		.amdhsa_inst_pref_size 21
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2664
; TotalNumSgprs: 30
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 30
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
