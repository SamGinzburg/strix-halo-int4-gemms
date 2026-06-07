	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 31
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
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v54, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v59, 1, v0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s28, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s18, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s5, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s6, s28, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s7, s6, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s7, 27
.Ltmp20:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v60, 3, v0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s6, s6, s0
.Ltmp22:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s29, s5, 6
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s6, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v6, s28, v60
.Ltmp24:
	.loc	1 303 14 is_stmt 1              ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s19, 1
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s0, s18, s28
	v_mul_lo_u32 v12, s1, v60
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v13, 2, v0
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
	v_and_b32_e32 v1, 7, v0
	v_bfe_i32 v14, v0, 5, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v3, 0x70, v59
	v_mov_b32_e32 v55, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v61, 2, v1
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v2, 1, v3
	v_mov_b32_e32 v48, 0
	v_add3_u32 v62, v6, v61, s0
	v_lshlrev_b32_e32 v6, 5, v0
	v_add3_u32 v25, v12, v1, s2
	v_and_b32_e32 v12, 0x37c, v13
	v_and_b32_e32 v13, 0x90, v14
	v_or_b32_e32 v14, s18, v54
	v_and_b32_e32 v1, 0x160, v6
	v_bfe_i32 v6, v0, 2, 1
	v_or_b32_e32 v4, 14, v2
	v_or_b32_e32 v5, 12, v2
	v_or_b32_e32 v7, 10, v2
	v_or_b32_e32 v8, 8, v2
	v_and_or_b32 v1, 0x90, v6, v1
	v_xor_b32_e32 v6, v13, v12
	v_or_b32_e32 v12, 16, v14
	v_or_b32_e32 v3, v3, v54
	v_or_b32_e32 v9, 6, v2
	v_or_b32_e32 v10, 4, v2
	v_or_b32_e32 v11, 2, v2
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v13, 4, v0
	v_xor_b32_e32 v15, 16, v1
	v_mul_lo_u32 v64, v14, s30
	v_mul_lo_u32 v65, v12, s30
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v63, 0, v3
	v_or_b32_e32 v66, s2, v2
	v_or_b32_e32 v70, s2, v8
	v_or_b32_e32 v71, s2, v7
	v_or_b32_e32 v72, s2, v5
	v_or_b32_e32 v73, s2, v4
	v_add_nc_u32_e32 v74, s19, v2
	v_add_nc_u32_e32 v78, s19, v8
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v79, s19, v7
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v80, s19, v5
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v81, s19, v4
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v82, 0, v6
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v84, 0, v1
	v_mov_b32_e32 v1, s4
	v_or_b32_e32 v67, s2, v11
	v_or_b32_e32 v68, s2, v10
	v_or_b32_e32 v69, s2, v9
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v75, s19, v11
	v_dual_mov_b32 v5, s8 :: v_dual_add_nc_u32 v76, s19, v10
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v77, s19, v9
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v83, 0, v13
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v85, 0, v15
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v27, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s31, s19, 6
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
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s0, 6
	v_or_b32_e32 v11, s6, v61
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mad_u64_u32 v[9:10], null, s6, s1, v[25:26]
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	v_or_b32_e32 v12, s6, v60
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v13, s6, v62
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v10, s5, v61
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v11
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v14, s5, v60
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v15, s5, v62
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v12, s31, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v11, 0x80000000, v13, s0
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v10
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v10, s19, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v18, s19, v12
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v86, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v15, s0
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s28, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v19, 0x80000000, v12, s0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v21, 0x80000000, v18, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v96, v64, s0, 1
	v_add_lshl_u32 v97, v65, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v88, v66, s0, 1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v108, 0x80000000, v96, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b32 v87, v17, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[17:20], v19, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v89, v67, s0, 1
	v_add_lshl_u32 v90, v68, s0, 1
	v_add_lshl_u32 v91, v69, s0, 1
	v_add_lshl_u32 v92, v70, s0, 1
	v_add_lshl_u32 v93, v71, s0, 1
	v_add_lshl_u32 v94, v72, s0, 1
	v_add_lshl_u32 v95, v73, s0, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s0, s0, s2
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v106, v64, s5, 1
	v_add_lshl_u32 v107, v65, s5, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s5, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v98, s0, v74, 1
	v_add_lshl_u32 v99, s0, v75, 1
	v_add_lshl_u32 v100, s0, v76, 1
	v_add_lshl_u32 v101, s0, v77, 1
	v_add_lshl_u32 v102, s0, v78, 1
	v_add_lshl_u32 v103, s0, v79, 1
	v_add_lshl_u32 v104, s0, v80, 1
	v_add_lshl_u32 v105, s0, v81, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v109, 0x80000000, v97 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v96, v66, s5, 1
	v_add_lshl_u32 v97, v67, s5, 1
	v_add_lshl_u32 v110, v68, s5, 1
	v_add_lshl_u32 v111, v69, s5, 1
	v_add_lshl_u32 v112, v70, s5, 1
	v_add_lshl_u32 v113, v71, s5, 1
	v_add_lshl_u32 v114, v72, s5, 1
	v_add_lshl_u32 v115, v73, s5, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s5, s5, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v116, 0x80000000, v94
	v_dual_cndmask_b32 v117, 0x80000000, v95 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v94, s5, v74, 1
	v_add_lshl_u32 v95, s5, v75, 1
	v_add_lshl_u32 v118, s5, v76, 1
	v_add_lshl_u32 v119, s5, v77, 1
	v_add_lshl_u32 v120, s5, v78, 1
	v_add_lshl_u32 v121, s5, v79, 1
	v_add_lshl_u32 v122, s5, v80, 1
	v_add_lshl_u32 v123, s5, v81, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v124, 0x80000000, v102
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v126, 0x80000000, v104
	v_cndmask_b32_e32 v125, 0x80000000, v103, vcc_lo
	v_cndmask_b32_e32 v127, 0x80000000, v105, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v128, 0x80000000, v96, s0
	v_cndmask_b32_e64 v129, 0x80000000, v97, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v130, 0x80000000, v94, s0
	v_cndmask_b32_e64 v131, 0x80000000, v95, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v82, v86 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v83, v[9:12]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v83, v[13:16] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v82, v87 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v83, v[17:20] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[21:24] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v174, v88, s[12:15], 0 offen
	buffer_load_u16 v175, v89, s[12:15], 0 offen
	buffer_load_u16 v176, v90, s[12:15], 0 offen
	buffer_load_u16 v177, v91, s[12:15], 0 offen
	buffer_load_u16 v178, v92, s[12:15], 0 offen
	buffer_load_u16 v179, v93, s[12:15], 0 offen
	buffer_load_u16 v180, v116, s[12:15], 0 offen
	buffer_load_u16 v181, v117, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v182, v108, s[8:11], 0 offen
	buffer_load_u16 v183, v109, s[8:11], 0 offen
	buffer_load_u16 v184, v106, s[8:11], 0 offen
	buffer_load_u16 v185, v107, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_clause 0x17
	buffer_load_u16 v186, v98, s[12:15], 0 offen
	buffer_load_u16 v187, v99, s[12:15], 0 offen
	buffer_load_u16 v188, v128, s[12:15], 0 offen
	buffer_load_u16 v189, v129, s[12:15], 0 offen
	buffer_load_u16 v190, v110, s[12:15], 0 offen
	buffer_load_u16 v191, v111, s[12:15], 0 offen
	buffer_load_u16 v192, v131, s[12:15], 0 offen
	buffer_load_u16 v193, v130, s[12:15], 0 offen
	buffer_load_u16 v194, v118, s[12:15], 0 offen
	buffer_load_u16 v195, v119, s[12:15], 0 offen
	buffer_load_u16 v196, v100, s[12:15], 0 offen
	buffer_load_u16 v197, v101, s[12:15], 0 offen
	buffer_load_u16 v198, v124, s[12:15], 0 offen
	buffer_load_u16 v199, v125, s[12:15], 0 offen
	buffer_load_u16 v200, v126, s[12:15], 0 offen
	buffer_load_u16 v201, v127, s[12:15], 0 offen
	buffer_load_u16 v202, v112, s[12:15], 0 offen
	buffer_load_u16 v203, v113, s[12:15], 0 offen
	buffer_load_u16 v204, v114, s[12:15], 0 offen
	buffer_load_u16 v205, v115, s[12:15], 0 offen
	buffer_load_u16 v206, v120, s[12:15], 0 offen
	buffer_load_u16 v207, v121, s[12:15], 0 offen
	buffer_load_u16 v208, v122, s[12:15], 0 offen
	buffer_load_u16 v209, v123, s[12:15], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[94:97], v84 offset:16384
	ds_load_b128 v[102:105], v84 offset:16896
	ds_load_b128 v[134:137], v85 offset:16384
	ds_load_b128 v[138:141], v85 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v63 offset:1664
	ds_load_u8 v10, v63 offset:1920
	ds_load_u8 v11, v63 offset:1792
	ds_load_u8 v12, v63 offset:1536
	ds_load_u8 v13, v63 offset:1152
	ds_load_u8 v14, v63 offset:1408
	ds_load_u8 v15, v63 offset:1280
	ds_load_u8 v16, v63 offset:1024
	ds_load_u8 v17, v63 offset:640
	ds_load_u8 v18, v63 offset:896
	ds_load_u8 v19, v63 offset:768
	ds_load_u8 v20, v63 offset:512
	ds_load_u8 v21, v63 offset:128
	ds_load_u8 v22, v63 offset:384
	ds_load_u8 v23, v63 offset:256
	ds_load_u8 v24, v63
	ds_load_u8 v86, v63 offset:3712
	ds_load_u8 v87, v63 offset:3968
	ds_load_u8 v132, v63 offset:3840
	ds_load_u8 v133, v63 offset:3584
	ds_load_u8 v154, v63 offset:3200
	ds_load_u8 v155, v63 offset:3456
	ds_load_u8 v156, v63 offset:3328
	ds_load_u8 v157, v63 offset:3072
	ds_load_u8 v88, v63 offset:2688
	ds_load_u8 v89, v63 offset:2944
	ds_load_u8 v90, v63 offset:2816
	ds_load_u8 v91, v63 offset:2560
	ds_load_u8 v92, v63 offset:2176
	ds_load_u8 v93, v63 offset:2432
	ds_load_u8 v98, v63 offset:2304
	ds_load_u8 v99, v63 offset:2048
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v100, v63 offset:9856
	ds_load_u8 v101, v63 offset:10112
	ds_load_u8 v106, v63 offset:9984
	ds_load_u8 v107, v63 offset:9728
	ds_load_u8 v108, v63 offset:9344
	ds_load_u8 v109, v63 offset:9600
	ds_load_u8 v110, v63 offset:9472
	ds_load_u8 v111, v63 offset:9216
	ds_load_u8 v112, v63 offset:8832
	ds_load_u8 v113, v63 offset:9088
	ds_load_u8 v114, v63 offset:8960
	ds_load_u8 v115, v63 offset:8704
	ds_load_u8 v116, v63 offset:8320
	ds_load_u8 v117, v63 offset:8576
	ds_load_u8 v118, v63 offset:8448
	ds_load_u8 v119, v63 offset:8192
	ds_load_u8 v120, v63 offset:11904
	ds_load_u8 v121, v63 offset:12160
	ds_load_u8 v122, v63 offset:12032
	ds_load_u8 v123, v63 offset:11776
	ds_load_u8 v124, v63 offset:11392
	ds_load_u8 v125, v63 offset:11648
	ds_load_u8 v130, v63 offset:11520
	ds_load_u8 v131, v63 offset:11264
	ds_load_u8 v158, v63 offset:10880
	ds_load_u8 v159, v63 offset:11136
	ds_load_u8 v160, v63 offset:11008
	ds_load_u8 v161, v63 offset:10752
	ds_load_u8 v162, v63 offset:10368
	ds_load_u8 v163, v63 offset:10624
	ds_load_u8 v164, v63 offset:10496
	ds_load_u8 v165, v63 offset:10240
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[126:129], v84 offset:17408
	ds_load_b128 v[142:145], v84 offset:17920
	ds_load_b128 v[146:149], v85 offset:17408
	ds_load_b128 v[150:153], v85 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v166, v63 offset:5760
	ds_load_u8 v167, v63 offset:6016
	ds_load_u8 v168, v63 offset:5888
	ds_load_u8 v169, v63 offset:5632
	ds_load_u8 v170, v63 offset:5248
	ds_load_u8 v171, v63 offset:5504
	ds_load_u8 v172, v63 offset:5376
	ds_load_u8 v173, v63 offset:5120
	ds_load_u8 v210, v63 offset:4736
	ds_load_u8 v211, v63 offset:4992
	ds_load_u8 v212, v63 offset:4864
	ds_load_u8 v213, v63 offset:4608
	ds_load_u8 v214, v63 offset:4224
	ds_load_u8 v215, v63 offset:4480
	ds_load_u8 v216, v63 offset:4352
	ds_load_u8 v217, v63 offset:4096
	ds_load_u8 v218, v63 offset:7808
	ds_load_u8 v219, v63 offset:8064
	ds_load_u8 v220, v63 offset:7936
	ds_load_u8 v221, v63 offset:7680
	ds_load_u8 v222, v63 offset:7296
	ds_load_u8 v223, v63 offset:7552
	ds_load_u8 v224, v63 offset:7424
	ds_load_u8 v225, v63 offset:7168
	ds_load_u8 v226, v63 offset:6784
	ds_load_u8 v227, v63 offset:7040
	ds_load_u8 v228, v63 offset:6912
	ds_load_u8 v229, v63 offset:6656
	ds_load_u8 v230, v63 offset:6272
	ds_load_u8 v231, v63 offset:6528
	ds_load_u8 v232, v63 offset:6400
	ds_load_u8 v233, v63 offset:6144
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v234, v63 offset:13952
	ds_load_u8 v235, v63 offset:14208
	ds_load_u8 v236, v63 offset:14080
	ds_load_u8 v237, v63 offset:13824
	ds_load_u8 v238, v63 offset:13440
	ds_load_u8 v239, v63 offset:13696
	ds_load_u8 v240, v63 offset:13568
	ds_load_u8 v241, v63 offset:13312
	ds_load_u8 v242, v63 offset:12928
	ds_load_u8 v243, v63 offset:13184
	ds_load_u8 v244, v63 offset:13056
	ds_load_u8 v245, v63 offset:12800
	ds_load_u8 v246, v63 offset:12416
	ds_load_u8 v247, v63 offset:12672
	ds_load_u8 v248, v63 offset:12544
	ds_load_u8 v249, v63 offset:12288
	ds_load_u8 v250, v63 offset:16000
	ds_load_u8 v251, v63 offset:16256
	ds_load_u8 v252, v63 offset:16128
	ds_load_u8 v253, v63 offset:15872
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v12, v63 offset:15488
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v11, v63 offset:15744
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v13, v16, v13, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v16, v63 offset:15616
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v15, v63 offset:15360
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v17, v20, v17, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v20, v63 offset:14976
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v63 offset:15232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v21, v24, v21, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v24, v63 offset:15104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v23, v63 offset:14848
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v133, v133, v86, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v86, v63 offset:14464
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v132, v132, v87, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v87, v63 offset:14720
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v154, v157, v154, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v157, v63 offset:14592
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v155, v156, v155, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v156, v63 offset:14336
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v92, v99, v92, 0xc0c0004
	v_perm_b32 v93, v98, v93, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v98, v107, v100, 0xc0c0004
	v_perm_b32 v99, v106, v101, 0xc0c0004
	v_perm_b32 v100, v111, v108, 0xc0c0004
	v_perm_b32 v101, v110, v109, 0xc0c0004
	v_perm_b32 v106, v115, v112, 0xc0c0004
	v_perm_b32 v107, v114, v113, 0xc0c0004
	v_perm_b32 v110, v119, v116, 0xc0c0004
	v_perm_b32 v111, v118, v117, 0xc0c0004
	v_perm_b32 v112, v123, v120, 0xc0c0004
	v_perm_b32 v113, v122, v121, 0xc0c0004
	v_perm_b32 v114, v131, v124, 0xc0c0004
	v_perm_b32 v115, v130, v125, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v118, v165, v162, 0xc0c0004
	v_perm_b32 v119, v164, v163, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v120, v169, v166, 0xc0c0004
	v_perm_b32 v121, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v122, v173, v170, 0xc0c0004
	v_perm_b32 v123, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v124, v213, v210, 0xc0c0004
	v_perm_b32 v125, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v130, v217, v214, 0xc0c0004
	v_perm_b32 v131, v216, v215, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v162, v221, v218, 0xc0c0004
	v_perm_b32 v163, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v164, v225, v222, 0xc0c0004
	v_perm_b32 v166, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v167, v229, v226, 0xc0c0004
	v_perm_b32 v168, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v169, v233, v230, 0xc0c0004
	v_perm_b32 v170, v232, v231, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v171, v237, v234, 0xc0c0004
	v_perm_b32 v172, v236, v235, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v173, v241, v238, 0xc0c0004
	v_perm_b32 v210, v240, v239, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v211, v245, v242, 0xc0c0004
	v_perm_b32 v212, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v213, v249, v246, 0xc0c0004
	v_perm_b32 v214, v248, v247, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v91, v91, v88, 0xc0c0004
	v_perm_b32 v90, v90, v89, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v116, v161, v158, 0xc0c0004
	v_perm_b32 v117, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v215, v253, v250, 0xc0c0004
	v_perm_b32 v216, v252, v251, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v15, v12, 0xc0c0004
	v_perm_b32 v11, v16, v11, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v23, v20, 0xc0c0004
	v_perm_b32 v16, v24, v19, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v156, v86, 0xc0c0004
	v_perm_b32 v20, v157, v87, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v89, v10, 16, v9
	v_lshl_or_b32 v88, v14, 16, v13
	v_lshl_or_b32 v87, v18, 16, v17
	v_lshl_or_b32 v86, v22, 16, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v109, v99, 16, v98
	v_lshl_or_b32 v108, v101, 16, v100
	v_lshl_or_b32 v107, v107, 16, v106
	v_lshl_or_b32 v106, v111, 16, v110
	v_lshl_or_b32 v158, v119, 16, v118
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v121, v121, 16, v120
	v_lshl_or_b32 v120, v123, 16, v122
	v_lshl_or_b32 v119, v125, 16, v124
	v_lshl_or_b32 v118, v131, 16, v130
	v_lshl_or_b32 v165, v163, 16, v162
	v_lshl_or_b32 v164, v166, 16, v164
	v_lshl_or_b32 v163, v168, 16, v167
	v_lshl_or_b32 v162, v170, 16, v169
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v169, v172, 16, v171
	v_lshl_or_b32 v168, v210, 16, v173
	v_lshl_or_b32 v167, v212, 16, v211
	v_lshl_or_b32 v166, v214, 16, v213
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v157, v132, 16, v133
	v_lshl_or_b32 v156, v155, 16, v154
	v_lshl_or_b32 v155, v90, 16, v91
	v_lshl_or_b32 v154, v93, 16, v92
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v161, v113, 16, v112
	v_lshl_or_b32 v160, v115, 16, v114
	v_lshl_or_b32 v159, v117, 16, v116
	v_lshl_or_b32 v173, v216, 16, v215
	v_lshl_or_b32 v172, v11, 16, v12
	v_lshl_or_b32 v171, v16, 16, v15
	v_lshl_or_b32 v170, v20, 16, v19
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[86:89], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[86:89], v[102:105], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[86:93], v[106:109], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[106:109], v[102:105], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[102:109], v[118:121], v[126:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[118:121], v[142:145], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[126:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[166:169], v[142:145], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[154:157], v[134:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[154:157], v[138:141], v[17:24] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[86:93], v[158:161], v[134:137], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[158:161], v[138:141], v[94:101] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[110:117], v[162:165], v[150:153], v[110:117] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[118:125], v[170:173], v[146:149], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[170:173], v[150:153], v[126:133] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[146:149], v[102:109] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v134, 16, v182
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v155, 16, v179
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v136, 16, v184
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v137, 16, v185
	v_lshlrev_b32_e32 v135, 16, v183
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v9, v134, v9 :: v_dual_lshlrev_b32 v140, 16, v186
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v87, v134, v87 :: v_dual_lshlrev_b32 v142, 16, v189
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v134, v10 :: v_dual_lshlrev_b32 v143, 16, v188
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v86, v134, v86 :: v_dual_lshlrev_b32 v145, 16, v193
	v_dual_mul_f32 v119, v136, v119 :: v_dual_lshlrev_b32 v146, 16, v176
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v102, v136, v102 :: v_dual_lshlrev_b32 v147, 16, v177
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v118, v136, v118 :: v_dual_lshlrev_b32 v149, 16, v197
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v11, v134, v11 :: v_dual_lshlrev_b32 v156, 16, v198
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v88, v134, v88 :: v_dual_lshlrev_b32 v157, 16, v199
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v89, v134, v89 :: v_dual_lshlrev_b32 v158, 16, v203
	v_dual_mul_f32 v121, v136, v121 :: v_dual_lshlrev_b32 v162, 16, v180
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v110, v137, v110 :: v_dual_lshlrev_b32 v139, 16, v175
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v94, v135, v94
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v19, v135, v19 :: v_dual_lshlrev_b32 v148, 16, v196
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v97, v135, v97 :: v_dual_lshlrev_b32 v150, 16, v191
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v22, v135, v22 :: v_dual_lshlrev_b32 v163, 16, v181
	v_dual_mul_f32 v21, v135, v21 :: v_dual_lshlrev_b32 v164, 16, v200
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v98, v135, v98 :: v_dual_lshlrev_b32 v165, 16, v201
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v99, v135, v99 :: v_dual_lshlrev_b32 v166, 16, v205
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v135, v17
	v_mul_f32_e32 v18, v135, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v127, v137, v127 :: v_dual_lshlrev_b32 v138, 16, v174
	v_dual_mul_f32 v126, v137, v126 :: v_dual_lshlrev_b32 v141, 16, v187
	v_dual_mul_f32 v129, v137, v129 :: v_dual_lshlrev_b32 v154, 16, v178
	v_mul_f32_e32 v95, v135, v95
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v135, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v96, v135, v96
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v12, v134, v12 :: v_dual_mul_f32 v131, v137, v131
	v_mul_f32_e32 v14, v134, v14
	v_dual_mul_f32 v13, v134, v13 :: v_dual_mul_f32 v106, v136, v106
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v90, v134, v90 :: v_dual_mul_f32 v107, v136, v107
	v_dual_mul_f32 v91, v134, v91 :: v_dual_mul_f32 v122, v136, v122
	v_dual_mul_f32 v123, v136, v123 :: v_dual_mul_f32 v24, v135, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v23, v135, v23 :: v_dual_mul_f32 v116, v137, v116
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v100, v135, v100 :: v_dual_mul_f32 v117, v137, v117
	v_dual_mul_f32 v101, v135, v101 :: v_dual_mul_f32 v132, v137, v132
	v_dual_mul_f32 v133, v137, v133 :: v_dual_mul_f32 v16, v134, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v15, v134, v15 :: v_dual_mul_f32 v108, v136, v108
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v92, v134, v92 :: v_dual_mul_f32 v109, v136, v109
	v_dual_mul_f32 v93, v134, v93 :: v_dual_mul_f32 v124, v136, v124
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v103, v136, v103 :: v_dual_lshlrev_b32 v144, 16, v192
	v_dual_mul_f32 v112, v137, v112 :: v_dual_lshlrev_b32 v151, 16, v190
	v_dual_mul_f32 v113, v137, v113 :: v_dual_lshlrev_b32 v152, 16, v195
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v128, v137, v128 :: v_dual_lshlrev_b32 v153, 16, v194
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v104, v136, v104 :: v_dual_lshlrev_b32 v159, 16, v202
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v105, v136, v105 :: v_dual_lshlrev_b32 v160, 16, v207
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v120, v136, v120 :: v_dual_lshlrev_b32 v161, 16, v206
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v114, v137, v114 :: v_dual_lshlrev_b32 v167, 16, v204
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v115, v137, v115 :: v_dual_lshlrev_b32 v168, 16, v209
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v130, v137, v130 :: v_dual_lshlrev_b32 v169, 16, v208
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v111, v137, v111
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v125, v136, v125 :: v_dual_fmac_f32 v38, v18, v139
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v39, v17, v138 :: v_dual_fmac_f32 v40, v95, v141
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v41, v94, v140 :: v_dual_fmac_f32 v58, v87, v141
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v56, v10, v139 :: v_dual_fmac_f32 v57, v9, v138
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v55, v86, v140 :: v_dual_fmac_f32 v34, v20, v147
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v19, v146 :: v_dual_fmac_f32 v36, v97, v149
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v37, v96, v148 :: v_dual_fmac_f32 v50, v11, v146
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v51, v12, v147 :: v_dual_fmac_f32 v30, v21, v154
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v53, v89, v149 :: v_dual_fmac_f32 v52, v88, v148
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v22, v155 :: v_dual_fmac_f32 v46, v13, v154
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v33, v99, v157 :: v_dual_fmac_f32 v32, v98, v156
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v47, v14, v155 :: v_dual_fmac_f32 v28, v101, v165
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v49, v91, v157 :: v_dual_fmac_f32 v48, v90, v156
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v26, v24, v163 :: v_dual_fmac_f32 v27, v23, v162
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v29, v100, v164 :: v_dual_fmac_f32 v38, v111, v142
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v42, v16, v163 :: v_dual_fmac_f32 v43, v15, v162
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v45, v93, v165 :: v_dual_fmac_f32 v44, v92, v164
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v39, v110, v143 :: v_dual_fmac_f32 v56, v103, v142
	v_dual_fmac_f32 v57, v102, v143 :: v_dual_fmac_f32 v34, v113, v150
	v_dual_fmac_f32 v35, v112, v151 :: v_dual_fmac_f32 v26, v117, v166
	v_dual_fmac_f32 v50, v104, v151 :: v_dual_fmac_f32 v51, v105, v150
	v_dual_fmac_f32 v30, v114, v159 :: v_dual_fmac_f32 v31, v115, v158
	v_dual_fmac_f32 v46, v106, v159 :: v_dual_fmac_f32 v47, v107, v158
	v_dual_fmac_f32 v27, v116, v167 :: v_dual_fmac_f32 v42, v109, v166
	v_dual_fmac_f32 v43, v108, v167 :: v_dual_fmac_f32 v58, v119, v144
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v55, v118, v145 :: v_dual_fmac_f32 v40, v127, v144
	v_dual_fmac_f32 v52, v120, v153 :: v_dual_fmac_f32 v53, v121, v152
	v_dual_fmac_f32 v48, v122, v161 :: v_dual_fmac_f32 v49, v123, v160
	v_dual_fmac_f32 v44, v124, v169 :: v_dual_fmac_f32 v45, v125, v168
	v_dual_fmac_f32 v41, v126, v145 :: v_dual_fmac_f32 v36, v129, v152
	v_dual_fmac_f32 v37, v128, v153 :: v_dual_fmac_f32 v28, v133, v168
	v_dual_fmac_f32 v32, v130, v161 :: v_dual_fmac_f32 v33, v131, v160
	v_fmac_f32_e32 v29, v132, v169
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v1, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v55
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v25, s19, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v10, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s18, s19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v12, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	v_mul_f32_e32 v8, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v53
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v2, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_exp_f32_e32 v13, v3
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v10
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v16, 0xbfb8aa3b, v40 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v37
	v_dual_mul_f32 v18, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v1, v2, v1
	v_ldexp_f32 v2, v13, v4
	v_mul_f32_e32 v14, 0xbfb8aa3b, v45
	v_dual_mul_f32 v4, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v52 :: v_dual_add_f32 v13, 1.0, v1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v22, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v8, null, v13, v13, v58
	v_div_scale_f32 v19, null, v9, v9, v55
	v_div_scale_f32 v60, vcc_lo, v58, v13, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v23, v8
	v_rcp_f32_e32 v24, v19
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0x78, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, s0, v55, v9, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v1, v21, v1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v20, v22, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	v_dual_mul_f32 v6, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v8, v23, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v19, v24, 1.0
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	s_lshl_b32 s3, s19, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v24, v59, v24 :: v_dual_fmac_f32 v23, v54, v23
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.h, v2.h
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v22, v61, v24 :: v_dual_mul_f32 v21, v60, v23
	v_div_scale_f32 v64, null, v20, v20, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v19, v22, v61
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v1, -v8, v21, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v62, v24
	v_div_scale_f32 v63, null, v59, v59, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v1, v23
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_add3_u32 v1, s1, v5, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v19, v22, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v5, v63
	v_fma_f32 v8, -v8, v21, v60
	v_rcp_f32_e32 v25, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v8, v23, v21
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v19, v19, v24, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v63, v5, 1.0
	v_div_fixup_f32 v8, v8, v13, v58
	v_div_scale_f32 v22, vcc_lo, v53, v59, v53
	v_div_fixup_f32 v9, v19, v9, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v8, v56, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v64, v25, 1.0
	v_div_scale_f32 v13, s0, v52, v20, v52
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v57, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v57, 0, 0x42800000, s2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v5, v23, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.l, v9.h
	v_cmp_o_f32_e64 s1, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v48 :: v_dual_and_b32 v56, 1, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v21, v11
	v_exp_f32_e32 v21, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v9, v24, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v21, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v19, v25
	v_mul_f32_e32 v19, v22, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v2.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_mul_f32 v23, v13, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v63, v19, v22
	v_fma_f32 v55, -v64, v23, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v54, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v54, v8, v56, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v23, v55, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v63, v19, v22
	v_fma_f32 v13, -v64, v23, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v5, v19
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v19, null, v11, v11, v49
	v_div_fmas_f32 v13, v13, v25, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v8, v8, v59, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v54.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v20, v52
	v_rcp_f32_e32 v20, v19
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v51, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v24.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v50, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v10, v10, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v8.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v19, v20, 1.0
	v_rcp_f32_e32 v23, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v45
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v20, v22, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, vcc_lo, v49, v11, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v13, v23, 1.0
	v_mul_f32_e32 v50, v25, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v8, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v23, v12, v23
	v_fma_f32 v8, -v19, v50, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v48, v10, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v8, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.h, 0x7fff, v14.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v52, v51
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v12, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v13, v53, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v9, v9
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v22, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v19, v50, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v13, -v13, v53, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v2.h
	v_cndmask_b16 v8.l, 0x7fff, v21.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v9, v9, v45
	v_div_fmas_f32 v12, v12, v20, v50
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v13, v13, v23, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v12, v11, v49
	v_div_scale_f32 v12, null, v14, v14, v44
	v_rcp_f32_e32 v20, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v13, v10, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v46, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v12, v16, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v47, v11 :: v_dual_fmac_f32 v20, v13, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, vcc_lo, v45, v9, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v24, v16
	v_div_scale_f32 v24, s0, v44, v14, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v46, v23, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v24, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v22, v21
	v_exp_f32_e32 v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v19, v46, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v10.h
	v_and_b32_e32 v47, 1, v2
	v_cmp_o_f32_e64 s1, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v22, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v11, v47, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v15, v13
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v12, v48, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v13 :: v_dual_fmac_f32 v48, v15, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v19, v46, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v10, v25, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v11, v11, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v12, v48, v24
	v_div_fmas_f32 v13, v13, v20, v46
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v20, v19
	v_div_fmas_f32 v12, v12, v16, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v47.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v13, v9, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v14, v44
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v43, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v21, v21, v40
	v_div_scale_f32 v13, vcc_lo, v40, v21, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v14, v20
	v_rcp_f32_e32 v15, v22
	v_div_scale_f32 v14, s2, v41, v11, v41
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v9, v42, v9 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v14, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.h, v2.h
	v_mov_b16_e32 v2.l, v9.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v22, v15, 1.0
	v_fmac_f32_e32 v15, v16, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v19, v42, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v12, v13, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v22, v12, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v12, v25, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v22, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v13, v15, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v18, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v42, v17, v20 :: v_dual_and_b32 v17, 1, v43
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v12, v21, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v19, v42, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v10, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v20, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v13, v11, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v14, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v15, v15, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v39, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v9, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v18, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.h, v2.h
	v_mov_b16_e32 v9.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v13, v13, v37
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v38, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v20, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v2.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v14, v18, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, s1, v37, v13, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v12, v12
	v_add3_u32 v9, v11, v9, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v22, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v25, v7, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v12, v10, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v19, v25, v7
	v_fmac_f32_e32 v18, v21, v18
	v_div_scale_f32 v21, s0, v36, v15, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v6, v20
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v17, v21, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v14, v17, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v23, v18
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v14, v17, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v6, v11, v18, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v4, -v19, v25, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v22, v12
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v29
	v_exp_f32_e32 v11, v38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v6, v6, v15, v36
	v_div_fmas_f32 v3, v4, v20, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v34, v6
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v23
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v3, v13, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v4, v4, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v14
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v35, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v9, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v11, v11, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v13, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v3.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s0, v32, v11, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v14, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v15
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v18, v9, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v7, v7, v29
	v_fmac_f32_e32 v9, v14, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v13, null, v12, v12, v28
	v_fma_f32 v19, -v15, v17, 1.0
	v_div_scale_f32 v14, vcc_lo, v33, v4, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v20, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v3, v22, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v23, v14, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v18, v23, v14
	v_fma_f32 v34, -v13, v20, 1.0
	v_fmac_f32_e32 v17, v19, v17
	v_rcp_f32_e32 v19, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v23, v36, v9 :: v_dual_fmac_f32 v20, v34, v20
	v_div_scale_f32 v34, s1, v28, v12, v28
	v_fma_f32 v14, -v18, v23, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v34, v20
	v_fma_f32 v38, -v21, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v9, v14, v9, v23
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v13, v39, v34
	v_fmac_f32_e32 v19, v38, v19
	v_mul_f32_e32 v37, v25, v17
	v_div_scale_f32 v38, s2, v29, v7, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v18, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v15, v37, v25
	v_div_fixup_f32 v4, v9, v4, v33
	v_dual_fmac_f32 v37, v36, v17 :: v_dual_mul_f32 v36, v38, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v6, v35, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v13, v39, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v31, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v15, v37, v25
	v_fma_f32 v15, -v21, v36, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v35.h, s0
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v14, v17, v37
	v_fmac_f32_e32 v36, v15, v19
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v20, v39
	v_div_fixup_f32 v9, v14, v11, v32
	v_fma_f32 v11, -v21, v36, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v6, v12, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v11, v19, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v30, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v26, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v11, v7, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v2.h
	v_and_b32_e32 v11, 1, v2
	v_and_b32_e32 v0, 0x540054, v0
	v_mov_b16_e32 v7.l, v9.h
	v_cndmask_b16 v13.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v2.l, v6.h
	v_add3_u32 v11, v4, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v6, v6
	v_and_b32_e32 v2, 1, v2
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v4, v9, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b32_e32 v9, 0x7632
	v_add3_u32 v2, v6, v2, 0x7fff
	v_and_b32_e32 v0, 0x5040504, v0
	v_cndmask_b16 v11.l, 0x7fff, v4.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0x3276, v9, s0
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, v10, v11, s0
	v_lshl_or_b32 v4, v6, 8, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v27, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v6, v16, v8, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x760076, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v12.l, v3.h
	v_cmp_o_f32_e64 s2, v3, v3
	v_lshl_or_b32 v4, v4, 4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v12
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cndmask_b32_e64 v3, v24, v5, s0
	v_cndmask_b32_e64 v5, v5, v24, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s2
	v_cndmask_b32_e64 v7, v8, v16, s0
	v_cndmask_b32_e64 v8, v11, v10, s0
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 0x7060706, v4
	v_cndmask_b32_e64 v10, v2, v13, s0
	v_cndmask_b32_e64 v2, v13, v2, s0
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v12, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v5, v3, v0
	v_perm_b32 v3, v5, v3, v11
	v_perm_b32 v4, v7, v6, v0
	v_perm_b32 v5, v7, v6, v11
	v_perm_b32 v6, v9, v8, v0
	v_perm_b32 v7, v9, v8, v11
	v_perm_b32 v8, v12, v10, v0
	v_lshlrev_b32_e32 v0, 1, v1
	v_perm_b32 v9, v12, v10, v11
	v_add_lshl_u32 v1, v1, s3, 1
	s_clause 0x1
	buffer_store_b128 v[2:5], v0, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v1, s[16:19], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 254
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9396
; TotalNumSgprs: 34
; NumVgprs: 254
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
