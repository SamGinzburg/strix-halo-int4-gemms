	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 1, v0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v2, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_mov_b32_e32 v4, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
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
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v3, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v3
	v_mov_b32_e32 v3, 0
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
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s15, s14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s5
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s16, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s16, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s13, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
	v_bfe_i32 v6, v0, 5, 1
	s_add_i32 s0, s1, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s16, 6
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s28, s0, 5
.Ltmp22:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s15, 7
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
	v_and_b32_e32 v2, 0x70, v10
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v6, 0x90, v6
	v_and_b32_e32 v5, 0x37c, v5
	v_mov_b32_e32 v43, 0
	v_or3_b32 v12, v1, v2, s2
	v_bfe_i32 v11, v0, 2, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	v_xor_b32_e32 v5, v6, v5
	v_or_b32_e32 v6, v2, v9
	v_add_nc_u32_e32 v2, s22, v4
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v3, 7, v0
	v_or_b32_e32 v13, s22, v9
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v27, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, s13, v2
	s_mov_b32 s13, s12
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v8, 4, v3
	v_or_b32_e32 v14, 16, v13
	v_mul_lo_u32 v13, v13, s28
	v_or_b32_e32 v15, 2, v12
	v_and_b32_e32 v7, 0x160, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v22, v3, 2, v2
	v_mul_lo_u32 v14, v14, s28
	v_or_b32_e32 v16, 4, v12
	v_or_b32_e32 v17, 6, v12
	v_and_or_b32 v7, 0x90, v11, v7
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v11, 0, v6
	v_or_b32_e32 v6, s3, v4
	v_or_b32_e32 v18, 8, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v29, 16, v7
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v30, 0, v7
	v_or_b32_e32 v1, 32, v6
	v_mul_lo_u32 v4, s23, v6
	v_or_b32_e32 v19, 10, v12
	v_or_b32_e32 v20, 12, v12
	v_or_b32_e32 v21, 14, v12
	v_mul_lo_u32 v1, s23, v1
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v28, 0, v27
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v37, 0, v29
	v_add3_u32 v4, v4, s0, v8
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_add3_u32 v1, v1, s0, v8
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	v_subrev_nc_u32_e32 v25, s0, v4
	v_add_nc_u32_e32 v26, 0, v5
	v_subrev_nc_u32_e32 v23, s0, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v27, 0
	s_mov_b32 s27, 0x31027000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s23, 6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v49, s3, v22
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s16, s3, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s28
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[45:48], v25, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v53, v49, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b32 v54, v49, s[24:27], 0 offen offset:32
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[49:52], v23, s[4:7], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v55, v13, s0, 1
	v_add_lshl_u32 v56, v14, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s16, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v57, v12, s0, 1
	v_add_lshl_u32 v58, v15, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s28
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v65, v13, s16, 1
	v_add_lshl_u32 v66, v14, s16, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s23
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v59, v16, s0, 1
	v_add_lshl_u32 v60, v17, s0, 1
	v_add_lshl_u32 v61, v18, s0, 1
	v_add_lshl_u32 v62, v19, s0, 1
	v_add_lshl_u32 v63, v20, s0, 1
	v_add_lshl_u32 v64, v21, s0, 1
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v67, v12, s16, 1
	v_add_lshl_u32 v68, v15, s16, 1
	v_add_lshl_u32 v69, v16, s16, 1
	v_add_lshl_u32 v70, v17, s16, 1
	v_add_lshl_u32 v71, v18, s16, 1
	v_add_lshl_u32 v72, v19, s16, 1
	v_add_lshl_u32 v73, v20, s16, 1
	v_add_lshl_u32 v74, v21, s16, 1
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_cndmask_b32 v64, 0x80000000, v64
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v26, v53 offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v28, v[45:48]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v26, v54 offset:9216
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v28, v[49:52] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v109, v55, s[12:15], 0 offen
	buffer_load_u16 v110, v56, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v111, v57, s[8:11], 0 offen
	buffer_load_u16 v112, v58, s[8:11], 0 offen
	buffer_load_u16 v113, v59, s[8:11], 0 offen
	buffer_load_u16 v114, v60, s[8:11], 0 offen
	buffer_load_u16 v115, v61, s[8:11], 0 offen
	buffer_load_u16 v116, v62, s[8:11], 0 offen
	buffer_load_u16 v117, v63, s[8:11], 0 offen
	buffer_load_u16 v118, v64, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v119, v65, s[12:15], 0 offen
	buffer_load_u16 v120, v66, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v121, v67, s[8:11], 0 offen
	buffer_load_u16 v122, v68, s[8:11], 0 offen
	buffer_load_u16 v123, v69, s[8:11], 0 offen
	buffer_load_u16 v124, v70, s[8:11], 0 offen
	buffer_load_u16 v125, v71, s[8:11], 0 offen
	buffer_load_u16 v126, v72, s[8:11], 0 offen
	buffer_load_u16 v127, v73, s[8:11], 0 offen
	buffer_load_u16 v128, v74, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[53:56], v30 offset:8192
	ds_load_b128 v[61:64], v30 offset:8704
	ds_load_b128 v[77:80], v37 offset:8192
	ds_load_b128 v[81:84], v37 offset:8704
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v11 offset:1664
	ds_load_u8 v46, v11 offset:1920
	ds_load_u8 v47, v11 offset:1792
	ds_load_u8 v48, v11 offset:1536
	ds_load_u8 v49, v11 offset:1152
	ds_load_u8 v50, v11 offset:1408
	ds_load_u8 v51, v11 offset:1280
	ds_load_u8 v52, v11 offset:1024
	ds_load_u8 v57, v11 offset:640
	ds_load_u8 v58, v11 offset:896
	ds_load_u8 v59, v11 offset:768
	ds_load_u8 v60, v11 offset:512
	ds_load_u8 v65, v11 offset:128
	ds_load_u8 v66, v11 offset:384
	ds_load_u8 v67, v11 offset:256
	ds_load_u8 v68, v11
	ds_load_u8 v73, v11 offset:3712
	ds_load_u8 v74, v11 offset:3968
	ds_load_u8 v75, v11 offset:3840
	ds_load_u8 v76, v11 offset:3584
	ds_load_u8 v97, v11 offset:3200
	ds_load_u8 v98, v11 offset:3456
	ds_load_u8 v99, v11 offset:3328
	ds_load_u8 v100, v11 offset:3072
	ds_load_u8 v101, v11 offset:2688
	ds_load_u8 v102, v11 offset:2944
	ds_load_u8 v103, v11 offset:2816
	ds_load_u8 v104, v11 offset:2560
	ds_load_u8 v105, v11 offset:2176
	ds_load_u8 v106, v11 offset:2432
	ds_load_u8 v107, v11 offset:2304
	ds_load_u8 v108, v11 offset:2048
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[69:72], v30 offset:9216
	ds_load_b128 v[85:88], v30 offset:9728
	ds_load_b128 v[89:92], v37 offset:9216
	ds_load_b128 v[93:96], v37 offset:9728
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v129, v11 offset:5760
	ds_load_u8 v130, v11 offset:6016
	ds_load_u8 v131, v11 offset:5888
	ds_load_u8 v132, v11 offset:5632
	ds_load_u8 v133, v11 offset:5248
	ds_load_u8 v134, v11 offset:5504
	ds_load_u8 v135, v11 offset:5376
	ds_load_u8 v136, v11 offset:5120
	ds_load_u8 v137, v11 offset:4736
	ds_load_u8 v138, v11 offset:4992
	ds_load_u8 v139, v11 offset:4864
	ds_load_u8 v140, v11 offset:4608
	ds_load_u8 v141, v11 offset:4224
	ds_load_u8 v142, v11 offset:4480
	ds_load_u8 v143, v11 offset:4352
	ds_load_u8 v144, v11 offset:4096
	ds_load_u8 v145, v11 offset:7808
	ds_load_u8 v146, v11 offset:8064
	ds_load_u8 v147, v11 offset:7936
	ds_load_u8 v148, v11 offset:7680
	ds_load_u8 v149, v11 offset:7296
	ds_load_u8 v150, v11 offset:7552
	ds_load_u8 v151, v11 offset:7424
	ds_load_u8 v152, v11 offset:7168
	ds_load_u8 v153, v11 offset:6784
	ds_load_u8 v154, v11 offset:7040
	ds_load_u8 v155, v11 offset:6912
	ds_load_u8 v156, v11 offset:6656
	ds_load_u8 v157, v11 offset:6272
	ds_load_u8 v158, v11 offset:6528
	ds_load_u8 v159, v11 offset:6400
	ds_load_u8 v160, v11 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v47, v52, v49, 0xc0c0004
	v_perm_b32 v48, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v49, v60, v57, 0xc0c0004
	v_perm_b32 v50, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v51, v68, v65, 0xc0c0004
	v_perm_b32 v52, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v57, v76, v73, 0xc0c0004
	v_perm_b32 v58, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v59, v100, v97, 0xc0c0004
	v_perm_b32 v60, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v73, v104, v101, 0xc0c0004
	v_perm_b32 v74, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v75, v108, v105, 0xc0c0004
	v_perm_b32 v76, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v101, v132, v129, 0xc0c0004
	v_perm_b32 v102, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v103, v136, v133, 0xc0c0004
	v_perm_b32 v105, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v106, v140, v137, 0xc0c0004
	v_perm_b32 v107, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v108, v144, v141, 0xc0c0004
	v_perm_b32 v129, v143, v142, 0xc0c0004
	v_lshl_or_b32 v68, v46, 16, v45
	v_lshl_or_b32 v67, v48, 16, v47
	v_lshl_or_b32 v66, v50, 16, v49
	v_lshl_or_b32 v65, v52, 16, v51
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v148, v145, 0xc0c0004
	v_perm_b32 v131, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v152, v149, 0xc0c0004
	v_perm_b32 v133, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v156, v153, 0xc0c0004
	v_perm_b32 v135, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v160, v157, 0xc0c0004
	v_perm_b32 v137, v159, v158, 0xc0c0004
	v_lshl_or_b32 v100, v58, 16, v57
	v_lshl_or_b32 v99, v60, 16, v59
	v_lshl_or_b32 v98, v74, 16, v73
	v_lshl_or_b32 v97, v76, 16, v75
	v_lshl_or_b32 v104, v102, 16, v101
	v_lshl_or_b32 v103, v105, 16, v103
	v_lshl_or_b32 v102, v107, 16, v106
	v_lshl_or_b32 v101, v129, 16, v108
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[65:68], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v131, 16, v130
	v_lshl_or_b32 v107, v133, 16, v132
	v_lshl_or_b32 v106, v135, 16, v134
	v_lshl_or_b32 v105, v137, 16, v136
	v_wmma_i32_16x16x16_iu8 v[61:68], v[101:104], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[101:104], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[97:100], v[77:80], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[97:100], v[81:84], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[105:108], v[89:92], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[105:108], v[93:96], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v78, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v56, v56, v78 :: v_dual_lshlrev_b32 v77, 16, v109
	v_mul_f32_e32 v45, v45, v77
	v_dual_mul_f32 v54, v54, v78 :: v_dual_add_nc_u32 v25, s29, v25
	v_dual_mul_f32 v48, v48, v77 :: v_dual_add_nc_u32 v23, s29, v23
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v53, v53, v78 :: v_dual_lshlrev_b32 v88, 16, v120
	v_dual_mul_f32 v50, v50, v77 :: v_dual_lshlrev_b32 v79, 16, v111
	v_dual_mul_f32 v47, v47, v77 :: v_dual_lshlrev_b32 v80, 16, v112
	v_dual_mul_f32 v58, v58, v78 :: v_dual_lshlrev_b32 v81, 16, v113
	v_dual_mul_f32 v49, v49, v77 :: v_dual_lshlrev_b32 v82, 16, v114
	v_dual_mul_f32 v52, v52, v77 :: v_dual_lshlrev_b32 v83, 16, v115
	v_dual_mul_f32 v51, v51, v77 :: v_dual_lshlrev_b32 v84, 16, v116
	v_dual_mul_f32 v60, v60, v78 :: v_dual_lshlrev_b32 v85, 16, v117
	v_dual_mul_f32 v70, v70, v88 :: v_dual_lshlrev_b32 v87, 16, v119
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v86, 16, v118
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v55, v55, v78 :: v_dual_lshlrev_b32 v92, 16, v124
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v57, v78 :: v_dual_lshlrev_b32 v96, 16, v128
	v_dual_mul_f32 v46, v46, v77 :: v_dual_mul_f32 v59, v59, v78
	v_dual_mul_f32 v66, v66, v87 :: v_dual_lshlrev_b32 v89, 16, v121
	v_mul_f32_e32 v62, v62, v87
	v_dual_mul_f32 v63, v63, v87 :: v_dual_lshlrev_b32 v90, 16, v122
	v_dual_mul_f32 v72, v72, v88 :: v_dual_lshlrev_b32 v91, 16, v123
	v_dual_mul_f32 v64, v64, v87 :: v_dual_lshlrev_b32 v93, 16, v125
	v_dual_mul_f32 v65, v65, v87 :: v_dual_lshlrev_b32 v94, 16, v126
	v_dual_mul_f32 v74, v74, v88 :: v_dual_lshlrev_b32 v95, 16, v127
	v_mul_f32_e32 v61, v61, v87
	v_dual_mul_f32 v67, v67, v87 :: v_dual_mul_f32 v76, v76, v88
	v_dual_mul_f32 v68, v68, v87 :: v_dual_mul_f32 v69, v69, v88
	v_dual_mul_f32 v71, v71, v88 :: v_dual_fmac_f32 v24, v45, v79
	v_dual_mul_f32 v73, v73, v88 :: v_dual_fmac_f32 v42, v48, v82
	v_dual_mul_f32 v75, v75, v88 :: v_dual_fmac_f32 v38, v52, v86
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v44, v46, v80 :: v_dual_fmac_f32 v43, v47, v81
	v_dual_fmac_f32 v41, v49, v83 :: v_dual_fmac_f32 v40, v50, v84
	v_dual_fmac_f32 v39, v51, v85 :: v_dual_fmac_f32 v36, v53, v79
	v_dual_fmac_f32 v35, v54, v80 :: v_dual_fmac_f32 v34, v55, v81
	v_dual_fmac_f32 v33, v56, v82 :: v_dual_fmac_f32 v32, v57, v83
	v_dual_fmac_f32 v31, v58, v84 :: v_dual_fmac_f32 v24, v61, v89
	v_dual_fmac_f32 v29, v59, v85 :: v_dual_fmac_f32 v44, v62, v90
	v_dual_fmac_f32 v27, v60, v86 :: v_dual_fmac_f32 v36, v69, v89
	v_dual_fmac_f32 v43, v63, v91 :: v_dual_fmac_f32 v42, v64, v92
	v_dual_fmac_f32 v41, v65, v93 :: v_dual_fmac_f32 v40, v66, v94
	v_dual_fmac_f32 v39, v67, v95 :: v_dual_fmac_f32 v38, v68, v96
	v_dual_fmac_f32 v35, v70, v90 :: v_dual_fmac_f32 v34, v71, v91
	v_dual_fmac_f32 v33, v72, v92 :: v_dual_fmac_f32 v32, v73, v93
	v_fmac_f32_e32 v31, v74, v94
	v_fmac_f32_e32 v29, v75, v95
	v_fmac_f32_e32 v27, v76, v96
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v7, v39, v39 :: v_dual_max_f32 v8, v38, v38
	v_dual_max_f32 v11, v36, v36 :: v_dual_max_f32 v12, v35, v35
	v_max_f32_e32 v13, v34, v34
	v_max_f32_e32 v15, v27, v27
	v_dual_max_f32 v1, v24, v24 :: v_dual_max_f32 v4, v42, v42
	v_dual_max_f32 v2, v44, v44 :: v_dual_max_f32 v3, v43, v43
	v_dual_max_f32 v5, v41, v41 :: v_dual_max_f32 v6, v40, v40
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v20, 0, v12
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v19, 0, v11
	v_dual_max_f32 v12, v32, v32 :: v_dual_max_f32 v11, v33, v33
	v_dual_max_f32 v26, 0, v15 :: v_dual_max_f32 v21, 0, v13
	v_dual_max_f32 v13, v31, v31 :: v_dual_max_f32 v14, v29, v29
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v22, 0, v11 :: v_dual_max_f32 v23, 0, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, 0, v13 :: v_dual_max_f32 v25, 0, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v3, v3 :: v_dual_mul_f32 v17, v2, v2
	v_dual_mul_f32 v12, v7, v7 :: v_dual_mul_f32 v13, v4, v4
	v_dual_mul_f32 v14, v6, v6 :: v_dual_mul_f32 v15, v5, v5
	v_dual_mul_f32 v11, v8, v8 :: v_dual_mul_f32 v6, v21, v21
	v_dual_mul_f32 v8, v19, v19 :: v_dual_mul_f32 v7, v20, v20
	v_dual_mul_f32 v4, v23, v23 :: v_dual_mul_f32 v5, v22, v22
	v_dual_mul_f32 v2, v25, v25 :: v_dual_mul_f32 v3, v24, v24
	v_mul_f32_e32 v1, v26, v26
.LBB0_4:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, 0
	v_mov_b16_e32 v20.l, v18.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v19.l, v17.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v9, s23, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v19.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s22, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v10, 0x78, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v23, 1, v19
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v19.l, v13.h
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v22.l, v15.h
	v_mov_b16_e32 v21.h, v19.h
	v_add3_u32 v18, v18, v20, 0x7fff
	v_mov_b16_e32 v22.h, v19.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s2
	s_lshl_b32 s0, s23, 4
	v_add3_u32 v9, s1, v10, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v17, v23, 0x7fff
	v_and_b32_e32 v17, 1, v19
	v_mov_b16_e32 v19.l, v14.h
	v_and_b32_e32 v20, 1, v21
	v_mov_b16_e32 v10.l, v18.h
	v_and_b32_e32 v18, 1, v22
	v_add3_u32 v13, v13, v17, 0x7fff
	v_and_b32_e32 v17, 1, v19
	v_add3_u32 v16, v16, v20, 0x7fff
	v_mov_b16_e32 v20.l, v12.h
	v_mov_b16_e32 v20.h, v19.h
	v_add3_u32 v15, v15, v18, 0x7fff
	v_mov_b16_e32 v19.l, v11.h
	v_add3_u32 v14, v14, v17, 0x7fff
	v_mov_b16_e32 v13.l, v16.h
	v_and_b32_e32 v18, 1, v20
	v_mov_b16_e32 v14.l, v15.h
	v_dual_cndmask_b32 v0, 0x1054, v0 :: v_dual_and_b32 v15, 1, v19
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v19.h
	v_mov_b16_e32 v19.l, v7.h
	v_add3_u32 v12, v12, v18, 0x7fff
	v_add3_u32 v11, v11, v15, 0x7fff
	v_mov_b16_e32 v17.l, v6.h
	v_and_b32_e32 v15, 1, v16
	v_and_b32_e32 v16, 1, v19
	v_mov_b16_e32 v19.l, v5.h
	v_mov_b16_e32 v11.l, v12.h
	v_mov_b16_e32 v17.h, v19.h
	v_add3_u32 v8, v8, v15, 0x7fff
	v_add3_u32 v7, v7, v16, 0x7fff
	v_and_b32_e32 v12, 1, v19
	v_mov_b16_e32 v19.l, v3.h
	v_mov_b16_e32 v15.l, v4.h
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v15.h, v19.h
	v_add3_u32 v5, v5, v12, 0x7fff
	v_and_b32_e32 v8, 1, v19
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v19.h
	v_mov_b16_e32 v19.l, v1.h
	v_lshl_or_b32 v0, v0, 8, v0
	v_add3_u32 v3, v3, v8, 0x7fff
	v_dual_mov_b32 v8, 0x7632 :: v_dual_and_b32 v17, 1, v17
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x540054, v0
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_add3_u32 v6, v6, v17, 0x7fff
	s_mov_b32 s23, 0x31027000
	v_lshl_or_b32 v0, v0, 4, v0
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v15
	v_add3_u32 v4, v4, v6, 0x7fff
	v_and_b32_e32 v6, 1, v12
	v_and_b32_e32 v12, 1, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v4.h
	v_add3_u32 v2, v2, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v1, v12, 0x7fff
	v_cndmask_b32_e32 v6, v14, v10, vcc_lo
	v_cndmask_b32_e32 v4, v10, v14, vcc_lo
	v_cndmask_b32_e32 v10, v13, v11, vcc_lo
	v_mov_b16_e32 v1.l, v2.h
	v_lshl_or_b32 v2, v8, 8, v8
	v_and_b32_e32 v12, 0x5040504, v0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x760076, v2
	v_perm_b32 v0, v4, v6, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_cndmask_b32_e32 v8, v11, v13, vcc_lo
	v_cndmask_b32_e32 v11, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_cndmask_b32_e32 v7, v1, v5, vcc_lo
	v_cndmask_b32_e32 v1, v5, v1, vcc_lo
	v_and_b32_e32 v13, 0x7060706, v2
	v_permlanex16_b32 v5, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v14, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v6, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v2, v5, v8, v12
	v_perm_b32 v3, v5, v8, v13
	v_lshlrev_b32_e32 v8, 1, v9
	v_perm_b32 v4, v10, v11, v12
	v_perm_b32 v5, v10, v11, v13
	v_perm_b32 v6, v14, v7, v12
	v_perm_b32 v7, v14, v7, v13
	v_add_lshl_u32 v9, v9, s0, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v9, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 35
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 161
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4392
; TotalNumSgprs: 32
; NumVgprs: 161
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
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     161
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
