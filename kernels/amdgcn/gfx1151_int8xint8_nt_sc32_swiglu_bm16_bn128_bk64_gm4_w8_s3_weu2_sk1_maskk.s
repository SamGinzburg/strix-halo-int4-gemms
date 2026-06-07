	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s24, s[0:1], 0x38
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
	s_ashr_i32 s16, s9, 31
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
	s_xor_b32 s17, s4, s16
	s_sub_i32 s4, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_sub_i32 s2, s2, s5
	s_mov_b32 s5, 0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s20, s2, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s24, 63
	v_or_b32_e32 v31, s20, v2
.Ltmp13:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v1, s20, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow110
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v30, 0xf0, v0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v26, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 4, v0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v9, 1, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0xe0, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s24, 31
	v_lshlrev_b32_e32 v16, 5, v0
	v_bfe_i32 v17, v0, 2, 1
.Ltmp15:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v2
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v1, 4, v0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s19, s0, 31
.Ltmp17:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v14, 4, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v3, v3, 1, v4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s19, s19, 27
.Ltmp19:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v13, 1, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s0, s19
	v_bfe_i32 v19, v0, 3, 1
.Ltmp21:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 12, v3
	v_or_b32_e32 v4, 14, v3
	v_and_b32_e32 v16, 0x160, v16
	v_and_b32_e32 v17, 0x90, v17
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v10, 16, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 4, v3
	v_or_b32_e32 v12, 2, v3
	v_or_b32_e32 v39, s14, v5
	v_add_nc_u32_e32 v47, s15, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v5, s20, v14
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s25, s0, 5
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s17, 7
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 10, v3
	v_or_b32_e32 v7, 8, v3
	v_or_b32_e32 v8, 6, v3
	v_or_b32_e32 v33, s14, v3
	v_add_nc_u32_e32 v41, s15, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v3, s15, s0, v13
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v1, 0xf70, v1
	v_and_b32_e32 v19, 0x90, v19
	v_or_b32_e32 v20, v17, v16
	v_or_b32_e32 v40, s14, v4
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v48, s15, v4
	v_or_b32_e32 v4, s0, v13
	v_or_b32_e32 v34, s14, v12
	v_or_b32_e32 v35, s14, v11
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v42, s15, v12
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v43, s15, v11
	v_mad_u64_u32 v[11:12], null, s24, v5, v[9:10]
	s_lshl_b32 s0, s16, 7
	v_or3_b32 v2, v16, v2, v17
	v_subrev_nc_u32_e32 v3, s0, v3
	v_xor_b32_e32 v16, 16, v20
	v_subrev_nc_u32_e32 v4, s0, v4
	v_add_nc_u32_e32 v51, 0, v20
	v_mov_b32_e32 v20, 0
	v_xor_b32_e32 v1, v19, v1
	v_lshlrev_b32_e32 v15, 1, v0
	v_bfe_i32 v18, v0, 6, 1
	v_mad_u64_u32 v[12:13], null, s24, v3, v[10:11]
	v_xor_b32_e32 v17, 16, v2
	v_or_b32_e32 v36, s14, v8
	v_or_b32_e32 v37, s14, v7
	v_or_b32_e32 v38, s14, v6
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v44, s15, v8
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v45, s15, v7
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v46, s15, v6
	v_mad_u64_u32 v[13:14], null, s24, v4, v[10:11]
	v_add_nc_u32_e32 v50, 0, v1
	v_add_nc_u32_e32 v53, 0, v2
	v_dual_mov_b32 v1, s36 :: v_dual_and_b32 v18, 0x90, v18
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v6, s41 :: v_dual_and_b32 v15, 0x17e, v15
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s18, s2, 31
	v_mul_lo_u32 v32, v31, s25
	s_lshr_b32 s18, s18, 26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v15, v18, v15
	v_add_nc_u32_e32 v52, 0, v16
	v_add_nc_u32_e32 v54, 0, v17
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_add_nc_u32_e32 v49, 0, v15
	v_mov_b32_e32 v5, s40
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s2, s2, s18
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
.Ltmp25:
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s15, 1
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s2, s2, 6
.Ltmp27:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
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
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v55, s3, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v56, s3, v11
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v57, s3, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v58, s3, v13
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v59, s3, v12
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v55
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v55, 32, v55
	s_add_i32 s26, s3, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_dual_cndmask_b32 v60, 0x80000000, v56 :: v_dual_add_nc_u32 v63, 32, v59
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v57
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v56, 32, v56
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s24, v55
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v61, 0x80000000, v58, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v64, 0x80000000, v56, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v71, v60, s[16:19], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s25
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v73, v32, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v76, v35, s0, 1
	.loc	1 313 27 is_stmt 1              ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v57, 32, v57
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v80, v39, s0, 1
	v_add_lshl_u32 v74, v33, s0, 1
	v_add_lshl_u32 v75, v34, s0, 1
	v_add_lshl_u32 v77, v36, s0, 1
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v57
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v58, 32, v58
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v78, v37, s0, 1
	v_add_lshl_u32 v79, v38, s0, 1
	v_add_lshl_u32 v81, v40, s0, 1
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v67, 0x80000000, v63, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v65, 0x80000000, v58, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[55:58], v61, s[4:7], 0 offen
	buffer_load_b128 v[59:62], v59, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v72, v64, s[16:19], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[63:66], v65, s[4:7], 0 offen
	buffer_load_b128 v[67:70], v67, s[4:7], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s26, s26, 5
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s0, s0, s14
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s26, s25
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v90, v32, s26, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s26, s26, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s0, v41, 1
	v_add_lshl_u32 v83, s0, v42, 1
	v_add_lshl_u32 v84, s0, v43, 1
	v_add_lshl_u32 v85, s0, v44, 1
	v_add_lshl_u32 v86, s0, v45, 1
	v_add_lshl_u32 v87, s0, v46, 1
	v_add_lshl_u32 v88, s0, v47, 1
	v_add_lshl_u32 v89, s0, v48, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v91, v33, s26, 1
	v_add_lshl_u32 v92, v34, s26, 1
	v_add_lshl_u32 v93, v35, s26, 1
	v_add_lshl_u32 v94, v36, s26, 1
	v_add_lshl_u32 v95, v37, s26, 1
	v_add_lshl_u32 v96, v38, s26, 1
	v_add_lshl_u32 v97, v39, s26, 1
	v_add_lshl_u32 v98, v40, s26, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s26, s26, s14
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v99, s26, v41, 1
	v_add_lshl_u32 v100, s26, v42, 1
	v_add_lshl_u32 v101, s26, v43, 1
	v_add_lshl_u32 v102, s26, v44, 1
	v_add_lshl_u32 v103, s26, v45, 1
	v_add_lshl_u32 v104, s26, v46, 1
	v_add_lshl_u32 v105, s26, v47, 1
	v_add_lshl_u32 v106, s26, v48, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s2, s2, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s2, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v49, v71 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v50, v[55:58]
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v50, v[59:62] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v49, v72 offset:16896
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[63:66] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v50, v[67:70] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v119, v73, s[20:23], 0 offen
	buffer_load_u16 v120, v90, s[20:23], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1f
	buffer_load_u16 v121, v74, s[8:11], 0 offen
	buffer_load_u16 v122, v75, s[8:11], 0 offen
	buffer_load_u16 v123, v82, s[8:11], 0 offen
	buffer_load_u16 v124, v83, s[8:11], 0 offen
	buffer_load_u16 v125, v92, s[8:11], 0 offen
	buffer_load_u16 v126, v91, s[8:11], 0 offen
	buffer_load_u16 v127, v100, s[8:11], 0 offen
	buffer_load_u16 v128, v99, s[8:11], 0 offen
	buffer_load_u16 v129, v76, s[8:11], 0 offen
	buffer_load_u16 v130, v77, s[8:11], 0 offen
	buffer_load_u16 v131, v84, s[8:11], 0 offen
	buffer_load_u16 v132, v85, s[8:11], 0 offen
	buffer_load_u16 v133, v94, s[8:11], 0 offen
	buffer_load_u16 v134, v93, s[8:11], 0 offen
	buffer_load_u16 v135, v102, s[8:11], 0 offen
	buffer_load_u16 v136, v101, s[8:11], 0 offen
	buffer_load_u16 v137, v78, s[8:11], 0 offen
	buffer_load_u16 v138, v79, s[8:11], 0 offen
	buffer_load_u16 v139, v86, s[8:11], 0 offen
	buffer_load_u16 v140, v87, s[8:11], 0 offen
	buffer_load_u16 v141, v96, s[8:11], 0 offen
	buffer_load_u16 v142, v95, s[8:11], 0 offen
	buffer_load_u16 v143, v104, s[8:11], 0 offen
	buffer_load_u16 v144, v103, s[8:11], 0 offen
	buffer_load_u16 v145, v80, s[8:11], 0 offen
	buffer_load_u16 v146, v81, s[8:11], 0 offen
	buffer_load_u16 v147, v88, s[8:11], 0 offen
	buffer_load_u16 v148, v89, s[8:11], 0 offen
	buffer_load_u16 v149, v98, s[8:11], 0 offen
	buffer_load_u16 v150, v97, s[8:11], 0 offen
	buffer_load_u16 v151, v106, s[8:11], 0 offen
	buffer_load_u16 v152, v105, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[71:74], v51 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[63:66], v53
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[75:78], v53 offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[87:90], v51 offset:16896
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[79:82], v53 offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[91:94], v52 offset:16384
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[95:98], v53 offset:12288
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[99:102], v54
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[103:106], v54 offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[107:110], v52 offset:16896
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[111:114], v54 offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[115:118], v54 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[71:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[75:78], v[71:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[87:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[95:98], v[87:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[99:102], v[91:94], v[55:62] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[103:106], v[91:94], v[63:70] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[111:114], v[107:110], v[71:78] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[115:118], v[107:110], v[79:86] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v71, v71
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
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v88, 16, v120
	v_lshlrev_b32_e32 v87, 16, v119
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v89, 16, v121
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v90, 16, v122
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v92, 16, v124
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v72, v88, v72 :: v_dual_lshlrev_b32 v91, 16, v123
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v87, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v55, v87, v55
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v60, v87, v60 :: v_dual_lshlrev_b32 v97, 16, v129
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v63, v87, v63 :: v_dual_lshlrev_b32 v98, 16, v130
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v68, v87, v68 :: v_dual_lshlrev_b32 v99, 16, v131
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v71, v88, v71 :: v_dual_lshlrev_b32 v100, 16, v132
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v65, v87, v65 :: v_dual_lshlrev_b32 v104, 16, v136
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v62, v87, v62 :: v_dual_lshlrev_b32 v105, 16, v137
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v73, v88, v73 :: v_dual_lshlrev_b32 v106, 16, v138
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v70, v87, v70 :: v_dual_lshlrev_b32 v107, 16, v139
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v81, v88, v81 :: v_dual_lshlrev_b32 v108, 16, v140
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v59, v87, v59 :: v_dual_lshlrev_b32 v110, 16, v142
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v67, v87, v67 :: v_dual_lshlrev_b32 v112, 16, v144
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v75, v88, v75 :: v_dual_lshlrev_b32 v114, 16, v146
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v83, v88, v83 :: v_dual_lshlrev_b32 v116, 16, v148
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v61, v87, v61 :: v_dual_lshlrev_b32 v118, 16, v150
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v69, v87, v69 :: v_dual_lshlrev_b32 v120, 16, v152
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v56, v87, v56 :: v_dual_lshlrev_b32 v113, 16, v145
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v64, v87, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v87, v57
	v_dual_mul_f32 v58, v87, v58 :: v_dual_lshlrev_b32 v115, 16, v147
	v_dual_mul_f32 v74, v88, v74 :: v_dual_lshlrev_b32 v93, 16, v125
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v94, 16, v126
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v82, v88, v82 :: v_dual_lshlrev_b32 v95, 16, v127
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v96, 16, v128
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v76, v88, v76 :: v_dual_lshlrev_b32 v101, 16, v133
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v79, v88, v79 :: v_dual_lshlrev_b32 v102, 16, v134
	v_dual_mul_f32 v84, v88, v84 :: v_dual_lshlrev_b32 v103, 16, v135
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v78, v88, v78 :: v_dual_lshlrev_b32 v109, 16, v141
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v86, v88, v86 :: v_dual_lshlrev_b32 v111, 16, v143
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v26, v63, v91 :: v_dual_lshlrev_b32 v117, 16, v149
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v18, v60, v106 :: v_dual_lshlrev_b32 v119, 16, v151
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v80, v88, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v88, v77 :: v_dual_fmac_f32 v24, v65, v99
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v85, v88, v85 :: v_dual_fmac_f32 v14, v62, v114
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v28, v56, v90 :: v_dual_fmac_f32 v27, v55, v89
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v20, v68, v108 :: v_dual_fmac_f32 v23, v58, v98
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v22, v57, v97 :: v_dual_fmac_f32 v29, v64, v92
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v25, v66, v100 :: v_dual_fmac_f32 v18, v76, v109
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v19, v59, v105 :: v_dual_fmac_f32 v16, v70, v116
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v21, v67, v107 :: v_dual_fmac_f32 v14, v78, v117
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v15, v61, v113 :: v_dual_fmac_f32 v26, v79, v96
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v17, v69, v115
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v27, v71, v94 :: v_dual_fmac_f32 v24, v81, v104
	v_fmac_f32_e32 v28, v72, v93
	v_dual_fmac_f32 v22, v73, v102 :: v_dual_fmac_f32 v23, v74, v101
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v20, v84, v111 :: v_dual_fmac_f32 v19, v75, v110
	v_dual_fmac_f32 v16, v86, v119 :: v_dual_fmac_f32 v15, v77, v118
	v_fmac_f32_e32 v29, v80, v95
	v_fmac_f32_e32 v25, v82, v103
	v_fmac_f32_e32 v21, v83, v112
	v_fmac_f32_e32 v17, v85, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v31
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v26
	v_dual_mul_f32 v4, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, 0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v41.h, v13.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v17
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v4, v5
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, 0xbfb8aa3b, v25 :: v_dual_add_f32 v3, 1.0, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v6
	v_exp_f32_e32 v6, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v31, 0, 0x42800000, s0
	v_mul_f32_e32 v12, 0xbfb8aa3b, v16
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v6, v6, v7
	v_exp_f32_e32 v7, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_exp_f32_e32 v10, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v3, v3, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v12
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v5, v7, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v10, v30
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, vcc_lo, v29, v3, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v31, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_fmac_f32 v7, v35, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v6, v6, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, s0, v26, v6, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v9, v32
	v_mul_f32_e32 v39, v34, v7
	v_div_scale_f32 v38, null, v10, v10, v25
	v_div_scale_f32 v35, null, v5, v5, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v31, v39, v34
	v_rcp_f32_e32 v42, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v32, v9, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v39, v43, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, s1, v25, v10, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v9, v36, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v38
	v_fma_f32 v31, -v31, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, v37, v9
	v_div_fmas_f32 v7, v31, v7, v39
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v44, -v32, v40, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v8, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v38, v36, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v7, v3, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v8, v36
	v_fmac_f32_e32 v40, v44, v9
	v_fma_f32 v44, -v35, v42, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v28, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v31, v43, v36
	v_fma_f32 v8, -v32, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v3.h
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v8, v9, v40
	v_div_scale_f32 v9, s0, v24, v5, v24
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v33, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v8, v6, v26
	v_fma_f32 v26, -v38, v31, v43
	v_fmac_f32_e32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v27, v6 :: v_dual_fmac_f32 v31, v26, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v9, v42
	v_div_scale_f32 v26, null, v4, v4, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v38, v31, v43
	v_fma_f32 v27, -v35, v8, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v12, v29, v36, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v8, v27, v42 :: v_dual_and_b32 v27, 1, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v6.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v35, v8, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v9, v42, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v3, v3, v27, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v9, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v6, v28, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v11
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v12, v10, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v8, v5, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v23, v10 :: v_dual_mul_f32 v5, v22, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v9, v9, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v10.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v6, v6, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v29, null, v9, v9, v17
	v_fma_f32 v31, -v26, v7, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v32, v28
	v_fmac_f32_e32 v7, v31, v7
	v_div_scale_f32 v12, vcc_lo, v20, v4, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v5.h
	v_mov_b16_e32 v31.h, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v23, v12, v7
	v_fma_f32 v8, -v28, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v26, v23, v12
	v_dual_fmac_f32 v32, v8, v32 :: v_dual_fmac_f32 v23, v25, v7
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v8, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, s0, v21, v6, v21
	v_rcp_f32_e32 v25, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v26, v23, v12
	v_dual_mul_f32 v27, v11, v32 :: v_dual_and_b32 v26, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v12, v7, v23
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v22, -v28, v27, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v29, v25, 1.0
	v_div_fixup_f32 v4, v7, v4, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v22, v32
	v_div_scale_f32 v24, null, v8, v8, v16
	v_fmac_f32_e32 v25, v12, v25
	v_div_scale_f32 v12, s2, v17, v9, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v24
	v_fma_f32 v11, -v28, v27, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v31
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v18, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v11, v32, v27
	v_mul_f32_e32 v27, v12, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v24, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v6, v11, v6, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v10, v26, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v29, v27, v12
	v_fmac_f32_e32 v30, v22, v30
	v_div_scale_f32 v22, s1, v16, v8, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v19, v6 :: v_dual_fmac_f32 v27, v26, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v23, v22, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v7.l, v6.h
	v_cmp_o_f32_e64 s0, v4, v4
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v24, v23, v22
	v_fmac_f32_e32 v23, v11, v30
	v_fma_f32 v11, -v29, v27, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v5, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v24, v23, v22
	v_div_fmas_f32 v10, v10, v30, v23
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v11, v11, v25, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v11, v9, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v7
	v_cndmask_b16 v18.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v5, v6, v7, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v10, v8, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v13
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v15, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v4, v11, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v14, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v8.h
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s1
	v_cmp_o_f32_e64 s2, v8, v8
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s0
	v_mov_b16_e32 v13.l, v4.h
	v_and_b32_e32 v5, 1, v6
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v9, 1, v13
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v6, 0x3276, v6, s0
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cndmask_b32_e64 v10, v7, v3, s0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v8, s14, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, v1, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v1, v3, v7, s0
	v_cndmask_b32_e64 v3, v18, v6, s0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b32_e64 v6, v6, v18, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v0
	v_and_b32_e32 v4, 0x7060706, v4
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v1, v10, v7
	v_perm_b32 v1, v1, v10, v4
	v_perm_b32 v2, v3, v6, v7
	v_perm_b32 v3, v3, v6, v4
	v_add_lshl_u32 v4, v8, v5, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp28:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 153
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5072
; TotalNumSgprs: 46
; NumVgprs: 153
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     153
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
