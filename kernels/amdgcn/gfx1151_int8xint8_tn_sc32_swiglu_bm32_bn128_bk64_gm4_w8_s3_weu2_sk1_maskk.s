	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s30, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v64, v0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
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
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v44, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v56, 15, v64
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v64
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	s_mov_b32 s4, 0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s5, s2, s6
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s30, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s5, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s2, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s30, 31
.Ltmp15:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 3, v64
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s5, s0, 31
.Ltmp17:
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s31, s19, 1
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s5, s5, 27
.Ltmp19:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v64
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v2, 0x70, v4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s0, s5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v11, s31, v0
.Ltmp21:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v1, v1, 1, v2
	v_mul_lo_u32 v7, s18, v0
	v_or_b32_e32 v2, v2, v56
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s34, s0, 5
	v_or_b32_e32 v15, 0x3f0, v64
.Ltmp23:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 10, v1
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
	v_and_b32_e32 v5, 7, v64
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v49, 0, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, 14, v1
	v_or_b32_e32 v8, 8, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v9, 2, v5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v5, 4, v5
	v_or_b32_e32 v10, 6, v1
	v_or_b32_e32 v12, 4, v1
	v_or_b32_e32 v13, 2, v1
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s2, 31
	v_add3_u32 v5, v11, v5, s28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v64, off offset:24
	v_add3_u32 v0, v7, v9, s29
	v_lshlrev_b32_e32 v7, 2, v64
	scratch_store_b64 off, v[5:6], off offset:8 ; 8-byte Folded Spill
	v_or_b32_e32 v5, s29, v56
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v11, 4, v64
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
.Ltmp25:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v0, s18, 5, v0
	v_mul_lo_u32 v2, v5, s34
	v_or_b32_e32 v14, 16, v5
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 12, v1
	scratch_store_b32 off, v56, off offset:28 ; 4-byte Folded Spill
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s1, 26
	v_mul_lo_u32 v51, v14, s34
	v_add_nc_u32_e32 v48, 0, v56
	scratch_store_b32 off, v2, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v52, s28, v1
	v_or_b32_e32 v56, s28, v8
	v_or_b32_e32 v57, s28, v6
	v_or_b32_e32 v58, s28, v4
	v_or_b32_e32 v59, s28, v3
	v_add_nc_u32_e32 v60, s19, v1
	v_add_nc_u32_e32 v64, s19, v8
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v65, s19, v6
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v66, s19, v4
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v67, s19, v3
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v69, 0, v7
	v_mov_b32_e32 v1, s4
	v_or_b32_e32 v53, s28, v13
	v_or_b32_e32 v54, s28, v12
	v_or_b32_e32 v55, s28, v10
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v61, s19, v13
	v_dual_mov_b32 v5, s8 :: v_dual_add_nc_u32 v62, s19, v12
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v63, s19, v10
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v70, 0, v11
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v71, 0, v15
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	s_add_i32 s2, s2, s1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_ashr_i32 s33, s2, 6
	s_lshl_b32 s35, s19, 6
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
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
.Ltmp27:
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off
	scratch_load_b64 v[9:10], off, off offset:8
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s1, s0, 6
	s_or_b32 s0, s1, 32
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s2, s1, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[10:11], null, s1, s31, v[9:10]
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v79, s1, v0
	v_or_b32_e32 v81, s0, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s34
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v84, v51, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s2, v9
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v82, s2, v0
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s2, s0, 5
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s30, v79
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s2, s31
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v94, v51, s2, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v97, v54, s5, 1
	v_add_lshl_u32 v98, v55, s5, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v95, 0x80000000, v80, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v99, v56, s5, 1
	v_add_lshl_u32 v100, v57, s5, 1
	v_add_lshl_u32 v101, v58, s5, 1
	v_add_lshl_u32 v102, v59, s5, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b32 v95, v95, s[20:23], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v80, 0x80000000, v84, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v84, v53, s5, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v83, v0, s1, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s1, s31
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v93, v0, s2, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v11, v52, s1, 1
	v_add_lshl_u32 v72, v53, s1, 1
	v_add_lshl_u32 v73, v54, s1, 1
	v_add_lshl_u32 v74, v55, s1, 1
	v_add_lshl_u32 v75, v56, s1, 1
	v_add_lshl_u32 v76, v57, s1, 1
	v_add_lshl_u32 v77, v58, s1, 1
	v_add_lshl_u32 v78, v59, s1, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s1, s1, s28
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s2, s34
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v85, s1, v60, 1
	v_add_lshl_u32 v86, s1, v61, 1
	v_add_lshl_u32 v87, s1, v62, 1
	v_add_lshl_u32 v88, s1, v63, 1
	v_add_lshl_u32 v89, s1, v64, 1
	v_add_lshl_u32 v90, s1, v65, 1
	v_add_lshl_u32 v91, s1, v66, 1
	v_add_lshl_u32 v92, s1, v67, 1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s1, s30, v81
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v81, s19, v10
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v79, 0x80000000, v83, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s2, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v83, v52, s5, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v96, 0x80000000, v82, s1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v82, s35, v10
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s5, s5, s28
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v104, 0x80000000, v73
	v_dual_cndmask_b32 v103, 0x80000000, v72 :: v_dual_cndmask_b32 v106, 0x80000000, v75
	v_dual_cndmask_b32 v105, 0x80000000, v74 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v72, s5, v60, 1
	v_add_lshl_u32 v73, s5, v61, 1
	v_add_lshl_u32 v74, s5, v62, 1
	v_add_lshl_u32 v75, s5, v63, 1
	v_dual_cndmask_b32 v111, 0x80000000, v85 :: v_dual_cndmask_b32 v112, 0x80000000, v86
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v86, s19, v82
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v85, 0x80000000, v82, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v119, 0x80000000, v83, s2
	v_cndmask_b32_e64 v120, 0x80000000, v84, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v121, 0x80000000, v72, s2
	v_cndmask_b32_e64 v122, 0x80000000, v73, s2
	v_cndmask_b32_e64 v123, 0x80000000, v74, s2
	v_cndmask_b32_e64 v124, 0x80000000, v75, s2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[72:75], v10, s[24:27], 0 offen
	buffer_load_b128 v[81:84], v81, s[24:27], 0 offen
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v10, 0x80000000, v86, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v113, 0x80000000, v87 :: v_dual_cndmask_b32 v114, 0x80000000, v88
	v_dual_cndmask_b32 v115, 0x80000000, v89 :: v_dual_cndmask_b32 v116, 0x80000000, v90
	v_dual_cndmask_b32 v117, 0x80000000, v91 :: v_dual_cndmask_b32 v118, 0x80000000, v92
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b32 v96, v96, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[85:88], v85, s[24:27], 0 offen
	buffer_load_b128 v[89:92], v10, s[24:27], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v107, s5, v64, 1
	v_add_lshl_u32 v109, s5, v66, 1
	v_add_lshl_u32 v108, s5, v65, 1
	v_add_lshl_u32 v110, s5, v67, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v78, 0x80000000, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v69, v95 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v70, v[72:75]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v70, v[81:84] offset:8192
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v69, v96 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v70, v[85:88] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v70, v[89:92] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v48 offset:16480
	ds_load_u8 v72, v48 offset:16448
	ds_load_u8 v73, v48 offset:16384
	ds_load_u8 v74, v48 offset:16400
	ds_load_u8 v75, v48 offset:16416
	ds_load_u8 v81, v48 offset:16496
	ds_load_u8 v82, v48 offset:16464
	ds_load_u8 v83, v48 offset:16432
	ds_load_u8 v84, v49 offset:1664
	ds_load_u8 v85, v49 offset:1920
	ds_load_u8 v86, v49 offset:2176
	ds_load_u8 v87, v49 offset:2048
	ds_load_u8 v88, v49 offset:1792
	ds_load_u8 v89, v49 offset:1536
	ds_load_u8 v90, v49 offset:1408
	ds_load_u8 v91, v49 offset:1280
	ds_load_u8 v92, v49 offset:128
	ds_load_u8 v95, v49
	ds_load_u8 v96, v49 offset:1152
	ds_load_u8 v125, v49 offset:1024
	ds_load_u8 v126, v49 offset:640
	ds_load_u8 v127, v49 offset:896
	ds_load_u8 v128, v49 offset:768
	ds_load_u8 v129, v49 offset:512
	ds_load_u8 v130, v49 offset:384
	ds_load_u8 v131, v49 offset:256
	ds_load_u8 v132, v49 offset:3712
	ds_load_u8 v133, v49 offset:3968
	ds_load_u8 v134, v49 offset:4224
	ds_load_u8 v135, v49 offset:4096
	ds_load_u8 v136, v49 offset:3840
	ds_load_u8 v137, v49 offset:3584
	ds_load_u8 v138, v49 offset:3456
	ds_load_u8 v139, v49 offset:3328
	ds_load_u8 v140, v49 offset:3200
	ds_load_u8 v141, v49 offset:3072
	ds_load_u8 v142, v49 offset:2688
	ds_load_u8 v143, v49 offset:2944
	ds_load_u8 v144, v49 offset:2816
	ds_load_u8 v145, v49 offset:2560
	ds_load_u8 v146, v49 offset:2432
	ds_load_u8 v147, v49 offset:2304
	ds_load_u8 v148, v48 offset:16800
	ds_load_u8 v149, v48 offset:16768
	ds_load_u8 v150, v48 offset:16864
	ds_load_u8 v151, v48 offset:16832
	ds_load_u8 v152, v48 offset:16880
	ds_load_u8 v153, v48 offset:16848
	ds_load_u8 v154, v48 offset:16816
	ds_load_u8 v155, v48 offset:16784
	ds_load_u8 v156, v48 offset:16672
	ds_load_u8 v157, v48 offset:16640
	ds_load_u8 v158, v48 offset:16736
	ds_load_u8 v159, v48 offset:16704
	ds_load_u8 v160, v48 offset:16752
	ds_load_u8 v161, v48 offset:16720
	ds_load_u8 v162, v48 offset:16688
	ds_load_u8 v163, v48 offset:16656
	ds_load_u8 v164, v48 offset:16544
	ds_load_u8 v165, v48 offset:16512
	ds_load_u8 v166, v48 offset:16608
	ds_load_u8 v167, v48 offset:16576
	ds_load_u8 v168, v48 offset:16624
	ds_load_u8 v169, v48 offset:16592
	ds_load_u8 v170, v48 offset:16560
	ds_load_u8 v171, v48 offset:16528
	ds_load_u8 v172, v48 offset:17184
	ds_load_u8 v173, v48 offset:17152
	ds_load_u8 v174, v48 offset:17248
	ds_load_u8 v175, v48 offset:17216
	ds_load_u8 v176, v48 offset:17264
	ds_load_u8 v177, v48 offset:17232
	ds_load_u8 v178, v48 offset:17200
	ds_load_u8 v179, v48 offset:17168
	ds_load_u8 v180, v48 offset:17056
	ds_load_u8 v181, v48 offset:17024
	ds_load_u8 v182, v48 offset:17120
	ds_load_u8 v183, v48 offset:17088
	ds_load_u8 v184, v48 offset:17136
	ds_load_u8 v185, v48 offset:17104
	ds_load_u8 v186, v48 offset:17072
	ds_load_u8 v187, v48 offset:17040
	ds_load_u8 v188, v48 offset:16928
	ds_load_u8 v189, v48 offset:16896
	ds_load_u8 v190, v48 offset:16992
	ds_load_u8 v191, v48 offset:16960
	ds_load_u8 v192, v48 offset:17008
	ds_load_u8 v193, v48 offset:16976
	ds_load_u8 v194, v48 offset:16944
	ds_load_u8 v195, v48 offset:16912
	ds_load_u8 v196, v48 offset:17312
	ds_load_u8 v197, v48 offset:17280
	ds_load_u8 v198, v48 offset:17376
	ds_load_u8 v199, v48 offset:17344
	ds_load_u8 v200, v48 offset:17408
	ds_load_u8 v201, v48 offset:17360
	ds_load_u8 v202, v48 offset:17328
	ds_load_u8 v203, v48 offset:17296
	ds_load_u8 v204, v71 offset:16384
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v205, v49 offset:9856
	ds_load_u8 v206, v49 offset:10112
	ds_load_u8 v207, v49 offset:10368
	ds_load_u8 v208, v49 offset:10240
	ds_load_u8 v209, v49 offset:9984
	ds_load_u8 v210, v49 offset:9728
	ds_load_u8 v211, v49 offset:9600
	ds_load_u8 v212, v49 offset:9472
	ds_load_u8 v213, v49 offset:8320
	ds_load_u8 v214, v49 offset:8192
	ds_load_u8 v215, v49 offset:9344
	ds_load_u8 v216, v49 offset:9216
	ds_load_u8 v217, v49 offset:8832
	ds_load_u8 v218, v49 offset:9088
	ds_load_u8 v219, v49 offset:8960
	ds_load_u8 v220, v49 offset:8704
	ds_load_u8 v221, v49 offset:8576
	ds_load_u8 v222, v49 offset:8448
	ds_load_u8 v223, v49 offset:11904
	ds_load_u8 v224, v49 offset:12160
	ds_load_u8 v225, v49 offset:12416
	ds_load_u8 v226, v49 offset:12288
	ds_load_u8 v227, v49 offset:12032
	ds_load_u8 v228, v49 offset:11776
	ds_load_u8 v229, v49 offset:11648
	ds_load_u8 v230, v49 offset:11520
	ds_load_u8 v231, v49 offset:11392
	ds_load_u8 v232, v49 offset:11264
	ds_load_u8 v233, v49 offset:10880
	ds_load_u8 v234, v49 offset:11136
	ds_load_u8 v235, v49 offset:11008
	ds_load_u8 v236, v49 offset:10752
	ds_load_u8 v237, v49 offset:10624
	ds_load_u8 v238, v49 offset:10496
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v147, v155, v154, 0xc0c0004
	v_perm_b32 v155, v163, v162, 0xc0c0004
	v_perm_b32 v163, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v171, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v179, v187, v186, 0xc0c0004
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v187, v79, s[8:11], 0 offen
	buffer_load_u16 v255, v80, s[8:11], 0 offen
	buffer_load_u16 v45, v93, s[8:11], 0 offen
	buffer_load_u16 v40, v94, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v239, v103, s[12:15], 0 offen
	buffer_load_u16 v240, v104, s[12:15], 0 offen
	buffer_load_u16 v241, v105, s[12:15], 0 offen
	buffer_load_u16 v242, v106, s[12:15], 0 offen
	buffer_load_u16 v243, v76, s[12:15], 0 offen
	buffer_load_u16 v244, v77, s[12:15], 0 offen
	buffer_load_u16 v245, v78, s[12:15], 0 offen
	buffer_load_u16 v246, v111, s[12:15], 0 offen
	buffer_load_u16 v247, v112, s[12:15], 0 offen
	buffer_load_u16 v248, v113, s[12:15], 0 offen
	buffer_load_u16 v249, v114, s[12:15], 0 offen
	buffer_load_u16 v250, v115, s[12:15], 0 offen
	buffer_load_u16 v251, v116, s[12:15], 0 offen
	buffer_load_u16 v252, v117, s[12:15], 0 offen
	buffer_load_u16 v253, v118, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v79, v195, v194, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x3
	buffer_load_u16 v194, v119, s[12:15], 0 offen
	buffer_load_u16 v195, v120, s[12:15], 0 offen
	buffer_load_u16 v46, v121, s[12:15], 0 offen
	buffer_load_u16 v0, v122, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v121, v201, v204, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v122, v210, v205, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x3
	buffer_load_u16 v201, v99, s[12:15], 0 offen
	buffer_load_u16 v204, v100, s[12:15], 0 offen
	buffer_load_u16 v205, v107, s[12:15], 0 offen
	buffer_load_u16 v210, v108, s[12:15], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v100, v209, v206, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v108, v216, v215, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x3
	buffer_load_u16 v206, v101, s[12:15], 0 offen
	buffer_load_u16 v209, v102, s[12:15], 0 offen
	buffer_load_u16 v215, v109, s[12:15], 0 offen
	buffer_load_u16 v216, v110, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v93, v193, v192, 0xc0c0004
	v_perm_b32 v119, v203, v202, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x3
	buffer_load_u16 v192, v97, s[12:15], 0 offen
	buffer_load_u16 v193, v98, s[12:15], 0 offen
	buffer_load_u16 v202, v123, s[12:15], 0 offen
	buffer_load_u16 v203, v124, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v76, v48 offset:17824
	ds_load_u8 v77, v48 offset:17888
	ds_load_u8 v78, v48 offset:17856
	ds_load_u8 v103, v48 offset:17792
	ds_load_u8 v104, v48 offset:17696
	ds_load_u8 v105, v48 offset:17760
	ds_load_u8 v106, v48 offset:17728
	ds_load_u8 v111, v48 offset:17664
	ds_load_u8 v112, v48 offset:17568
	ds_load_u8 v113, v48 offset:17632
	ds_load_u8 v114, v48 offset:17600
	ds_load_u8 v115, v48 offset:17536
	ds_load_u8 v116, v48 offset:17440
	ds_load_u8 v117, v48 offset:17504
	ds_load_u8 v118, v48 offset:17472
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v49 offset:5760
	ds_load_u8 v97, v49 offset:6400
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v49 offset:6016
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v49 offset:6272
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v49 offset:6144
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v49 offset:5888
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v49 offset:5632
	v_perm_b32 v10, v72, v10, 0xc0c0004
	ds_load_u8 v72, v49 offset:5248
	v_perm_b32 v73, v73, v75, 0xc0c0004
	v_perm_b32 v84, v89, v84, 0xc0c0004
	ds_load_u8 v89, v49 offset:5504
	v_perm_b32 v85, v88, v85, 0xc0c0004
	ds_load_u8 v88, v49 offset:5376
	ds_load_u8 v75, v49 offset:5120
	v_perm_b32 v254, v139, v138, 0xc0c0004
	v_perm_b32 v145, v145, v142, 0xc0c0004
	ds_load_u8 v139, v48 offset:17952
	ds_load_u8 v142, v48 offset:17920
	v_perm_b32 v144, v144, v143, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v48 offset:18016
	ds_load_u8 v143, v48 offset:17984
	ds_load_u8 v170, v49 offset:7296
	ds_load_u8 v178, v49 offset:6784
	ds_load_u8 v186, v49 offset:6912
	ds_load_u8 v80, v49 offset:6528
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v74, v74, v83, 0xc0c0004
	ds_load_u8 v83, v49 offset:7424
	ds_load_u8 v169, v49 offset:7168
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v49 offset:7040
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v49 offset:6656
	v_perm_b32 v125, v125, v96, 0xc0c0004
	ds_load_u8 v96, v49 offset:4736
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v49 offset:4992
	v_perm_b32 v126, v129, v126, 0xc0c0004
	ds_load_u8 v129, v49 offset:4864
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v48 offset:18400
	v_perm_b32 v92, v95, v92, 0xc0c0004
	ds_load_u8 v95, v49 offset:4608
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v49 offset:4480
	v_perm_b32 v196, v197, v196, 0xc0c0004
	ds_load_u8 v197, v49 offset:4352
	v_perm_b32 v198, v199, v198, 0xc0c0004
	ds_load_u8 v199, v48 offset:18336
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v48 offset:18304
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v48 offset:18368
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v48 offset:18208
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v48 offset:18176
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v48 offset:18272
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v48 offset:18240
	v_perm_b32 v132, v137, v132, 0xc0c0004
	ds_load_u8 v137, v48 offset:18080
	ds_load_u8 v138, v48 offset:18112
	v_perm_b32 v133, v136, v133, 0xc0c0004
	ds_load_u8 v136, v48 offset:18048
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v48 offset:18144
	ds_load_u8 v154, v49 offset:7808
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v49 offset:8064
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v49 offset:7552
	ds_load_u8 v98, v48 offset:17904
	ds_load_u8 v99, v48 offset:17872
	ds_load_u8 v107, v48 offset:17840
	ds_load_u8 v102, v48 offset:17808
	ds_load_u8 v110, v48 offset:17776
	ds_load_u8 v124, v48 offset:17744
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v101, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v109, v220, v217, 0xc0c0004
	v_perm_b32 v123, v219, v218, 0xc0c0004
	v_perm_b32 v211, v214, v213, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v212, v48 offset:17712
	ds_load_u8 v214, v48 offset:17680
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v213, v222, v221, 0xc0c0004
	v_perm_b32 v217, v228, v223, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v218, v48 offset:17648
	ds_load_u8 v220, v48 offset:17616
	ds_load_u8 v222, v48 offset:17584
	ds_load_u8 v228, v48 offset:17520
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v219, v227, v224, 0xc0c0004
	v_perm_b32 v223, v230, v229, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v224, v48 offset:17552
	ds_load_u8 v230, v48 offset:17488
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v227, v236, v233, 0xc0c0004
	v_perm_b32 v229, v235, v234, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v76, v103, v76, 0xc0c0004
	ds_load_u8 v103, v48 offset:18288
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v48 offset:18256
	v_perm_b32 v233, v111, v104, 0xc0c0004
	ds_load_u8 v104, v48 offset:18224
	v_perm_b32 v234, v106, v105, 0xc0c0004
	ds_load_u8 v105, v48 offset:18192
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	ds_load_u8 v106, v48 offset:18160
	ds_load_u8 v111, v48 offset:18128
	ds_load_u8 v115, v48 offset:18096
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v114, v200, v116, 0xc0c0004
	v_perm_b32 v116, v118, v117, 0xc0c0004
	ds_load_u8 v117, v48 offset:18064
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v118, v167, v149, 0xc0c0004
	ds_load_u8 v149, v48 offset:18032
	v_perm_b32 v165, v165, v151, 0xc0c0004
	ds_load_u8 v151, v48 offset:18000
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v48 offset:17968
	v_perm_b32 v167, v88, v89, 0xc0c0004
	ds_load_u8 v88, v48 offset:17936
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v235, v142, v139, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v87, v143, v87, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v142, v49 offset:12928
	ds_load_u8 v143, v49 offset:13184
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v170, v185, v178, 0xc0c0004
	v_perm_b32 v178, v159, v157, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v157, v49 offset:12544
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v162, v49 offset:7936
	ds_load_u8 v161, v49 offset:7680
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v221, v232, v231, 0xc0c0004
	v_perm_b32 v207, v208, v207, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v208, v48 offset:17456
	ds_load_u8 v232, v48 offset:17424
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v95, v95, v96, 0xc0c0004
	ds_load_u8 v89, v48 offset:18384
	v_perm_b32 v200, v129, v91, 0xc0c0004
	ds_load_u8 v91, v48 offset:18352
	ds_load_u8 v96, v48 offset:18320
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v135, v197, v131, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v129, v49 offset:13952
	ds_load_u8 v131, v49 offset:14208
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v173, v173, v199, 0xc0c0004
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v175, v175, v128, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v128, v49 offset:14464
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v181, v183, v181, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v189, v191, v189, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v197, v136, v137, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v136, v49 offset:13824
	ds_load_u8 v137, v49 offset:13440
	ds_load_u8 v139, v49 offset:13696
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v199, v138, v141, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v161, v161, v154, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v141, v49 offset:13568
	ds_load_u8 v138, v49 offset:13312
	ds_load_u8 v154, v49 offset:12672
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v162, v162, v153, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v83, v49 offset:13056
	ds_load_u8 v153, v49 offset:12800
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v177, v186, v177, 0xc0c0004
	v_perm_b32 v186, v214, v212, 0xc0c0004
	v_perm_b32 v212, v224, v222, 0xc0c0004
	v_perm_b32 v222, v230, v228, 0xc0c0004
	v_perm_b32 v228, v105, v104, 0xc0c0004
	v_perm_b32 v78, v78, v103, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v103, v49 offset:14848
	ds_load_u8 v105, v49 offset:14720
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v115, v117, v115, 0xc0c0004
	v_perm_b32 v117, v111, v106, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v106, v49 offset:14592
	ds_load_u8 v183, v49 offset:14336
	ds_load_u8 v191, v49 offset:14080
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v94, v71 offset:17408
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v120, v49 offset:16256
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v80, v97, v80, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v97, v49 offset:16000
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v102, v102, v107, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v107, v49 offset:16128
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v185, v99, v98, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v98, v49 offset:15872
	ds_load_u8 v99, v49 offset:15488
	ds_load_u8 v159, v49 offset:15744
	ds_load_u8 v224, v49 offset:15232
	ds_load_u8 v104, v49 offset:15104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v124, v124, v110, 0xc0c0004
	v_perm_b32 v214, v220, v218, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v218, v49 offset:15616
	ds_load_u8 v110, v49 offset:15360
	ds_load_u8 v220, v49 offset:14976
	v_perm_b32 v231, v238, v237, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v208, v232, v208, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v236, v136, v129, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v191, v191, v131, 0xc0c0004
	v_perm_b32 v237, v138, v137, 0xc0c0004
	v_perm_b32 v238, v141, v139, 0xc0c0004
	v_perm_b32 v9, v153, v142, 0xc0c0004
	v_perm_b32 v83, v83, v143, 0xc0c0004
	v_perm_b32 v225, v226, v225, 0xc0c0004
	v_perm_b32 v226, v157, v154, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v75, v88, v75, 0xc0c0004
	v_perm_b32 v230, v151, v149, 0xc0c0004
	v_perm_b32 v232, v96, v91, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v94, v89, v94, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v68, v98, v97, 0xc0c0004
	v_perm_b32 v47, v107, v120, 0xc0c0004
	v_perm_b32 v183, v183, v128, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v218, v218, v159, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v110, v99, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v220, 0xc0c0004
	v_perm_b32 v220, v104, v224, 0xc0c0004
	v_perm_b32 v224, v106, v105, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v99, v150, 16, v148
	v_lshl_or_b32 v98, v158, 16, v156
	v_lshl_or_b32 v97, v166, 16, v164
	v_lshl_or_b32 v96, v10, 16, v73
	v_lshl_or_b32 v91, v85, 16, v84
	v_lshl_or_b32 v90, v90, 16, v125
	v_lshl_or_b32 v89, v127, 16, v126
	v_lshl_or_b32 v88, v130, 16, v92
	v_lshl_or_b32 v142, v254, 16, v140
	v_lshl_or_b32 v140, v146, 16, v86
	v_lshl_or_b32 v107, v152, 16, v147
	v_lshl_or_b32 v106, v160, 16, v155
	v_lshl_or_b32 v105, v168, 16, v163
	v_lshl_or_b32 v104, v81, 16, v74
	v_lshl_or_b32 v146, v176, 16, v171
	v_lshl_or_b32 v147, v121, 16, v119
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v111, v100, 16, v122
	v_lshl_or_b32 v110, v101, 16, v108
	v_lshl_or_b32 v109, v123, 16, v109
	v_lshl_or_b32 v108, v213, 16, v211
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v131, v77, 16, v76
	v_lshl_or_b32 v130, v234, 16, v233
	v_lshl_or_b32 v129, v113, 16, v112
	v_lshl_or_b32 v128, v116, 16, v114
	v_lshl_or_b32 v123, v165, 16, v118
	v_lshl_or_b32 v122, v167, 16, v72
	v_lshl_or_b32 v121, v200, 16, v95
	v_lshl_or_b32 v120, v135, 16, v134
	v_lshl_or_b32 v159, v162, 16, v161
	v_lshl_or_b32 v158, v82, 16, v169
	v_lshl_or_b32 v157, v177, 16, v170
	v_lshl_or_b32 v163, v185, 16, v102
	v_lshl_or_b32 v162, v124, 16, v186
	v_lshl_or_b32 v161, v214, 16, v212
	v_lshl_or_b32 v160, v222, 16, v208
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v171, v191, 16, v236
	v_lshl_or_b32 v170, v238, 16, v237
	v_lshl_or_b32 v169, v83, 16, v9
	v_lshl_or_b32 v168, v226, 16, v225
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v139, v198, 16, v196
	v_lshl_or_b32 v138, v174, 16, v172
	v_lshl_or_b32 v137, v182, 16, v180
	v_lshl_or_b32 v136, v190, 16, v188
	v_lshl_or_b32 v143, v133, 16, v132
	v_lshl_or_b32 v141, v144, 16, v145
	v_lshl_or_b32 v145, v184, 16, v179
	v_lshl_or_b32 v144, v93, 16, v79
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v151, v219, 16, v217
	v_lshl_or_b32 v150, v223, 16, v221
	v_lshl_or_b32 v149, v229, 16, v227
	v_lshl_or_b32 v148, v231, 16, v207
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v155, v175, 16, v173
	v_lshl_or_b32 v154, v189, 16, v181
	v_lshl_or_b32 v153, v199, 16, v197
	v_lshl_or_b32 v152, v87, 16, v235
	v_lshl_or_b32 v156, v80, 16, v178
	v_lshl_or_b32 v166, v78, 16, v228
	v_lshl_or_b32 v165, v117, 16, v115
	v_lshl_or_b32 v164, v230, 16, v75
	v_lshl_or_b32 v167, v94, 16, v232
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v175, v47, 16, v68
	v_lshl_or_b32 v174, v218, 16, v50
	v_lshl_or_b32 v173, v220, 16, v103
	v_lshl_or_b32 v172, v224, 16, v183
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[72:79], v[88:91], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[88:91], v[104:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[88:95], v[108:111], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[104:111], v[120:123], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[120:123], v[160:163], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[120:127], v[168:171], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[168:171], v[160:163], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[80:87], v[140:143], v[144:147], v[80:87] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[88:95], v[148:151], v[136:139], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[148:151], v[144:147], v[96:103] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[104:111], v[156:159], v[152:155], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[156:159], v[164:167], v[112:119] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[120:127], v[172:175], v[152:155], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[172:175], v[164:167], v[128:135] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[72:79], v[140:143], v[136:139], v[72:79] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v80
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v47, v97
	v_cvt_f32_i32_e32 v50, v96
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v68, v112
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v97, v104
	v_cvt_f32_i32_e32 v104, v105
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v105, v120
	v_cvt_f32_i32_e32 v112, v121
	v_cvt_f32_i32_e32 v120, v131
	v_cvt_f32_i32_e32 v121, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v123, v132
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v132, 16, v255
	v_lshlrev_b32_e32 v131, 16, v187
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v9, v81
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v132, v10 :: v_dual_mul_f32 v89, v131, v89
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v50, v132, v50 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v80, v113
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v81, v128
	v_cvt_f32_i32_e32 v96, v129
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v115, v130
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v128, v133
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v129, v134
	v_cvt_f32_i32_e32 v130, v135
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v105, v45, v105 :: v_dual_lshlrev_b32 v134, 16, v246
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v72, v131, v72 :: v_dual_lshlrev_b32 v135, 16, v247
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v88, v131, v88 :: v_dual_lshlrev_b32 v137, 16, v194
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v83, v132, v83 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v99, v132, v99 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v104, v45, v104 :: v_dual_lshlrev_b32 v139, 16, v241
	v_dual_mul_f32 v75, v131, v75 :: v_dual_lshlrev_b32 v140, 16, v248
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v112, v45, v112 :: v_dual_lshlrev_b32 v141, 16, v249
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v91, v131, v91 :: v_dual_lshlrev_b32 v142, 16, v193
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v82, v132, v82 :: v_dual_lshlrev_b32 v143, 16, v192
	v_dual_mul_f32 v107, v45, v107 :: v_dual_lshlrev_b32 v146, 16, v242
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v98, v132, v98 :: v_dual_lshlrev_b32 v147, 16, v243
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v85, v132, v85 :: v_dual_lshlrev_b32 v148, 16, v250
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v101, v132, v101 :: v_dual_lshlrev_b32 v150, 16, v204
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v74, v131, v74 :: v_dual_lshlrev_b32 v151, 16, v201
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v90, v131, v90 :: v_dual_lshlrev_b32 v153, 16, v205
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v106, v45, v106 :: v_dual_lshlrev_b32 v155, 16, v245
	v_dual_mul_f32 v77, v131, v77 :: v_dual_lshlrev_b32 v156, 16, v252
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v122, v45, v122 :: v_dual_lshlrev_b32 v157, 16, v253
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v87, v132, v87 :: v_dual_lshlrev_b32 v158, 16, v209
	v_dual_mul_f32 v84, v132, v84 :: v_dual_lshlrev_b32 v159, 16, v206
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v93, v131, v93 :: v_dual_lshlrev_b32 v160, 16, v216
	v_dual_mul_f32 v100, v132, v100 :: v_dual_lshlrev_b32 v161, 16, v215
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v132, v9
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v47, v132, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v73, v131, v73
	v_mul_f32_e32 v97, v45, v97
	v_dual_mul_f32 v68, v40, v68 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v96, v40, v96 :: v_dual_lshlrev_b32 v133, 16, v239
	v_dual_mul_f32 v115, v40, v115 :: v_dual_lshlrev_b32 v138, 16, v240
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v114, v40, v114 :: v_dual_lshlrev_b32 v149, 16, v251
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v123, v40, v123 :: v_dual_lshlrev_b32 v154, 16, v244
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v76, v131, v76 :: v_dual_mul_f32 v103, v132, v103
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v92, v131, v92 :: v_dual_mul_f32 v119, v40, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v108, v45, v108 :: v_dual_mul_f32 v79, v131, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v124, v45, v124 :: v_dual_mul_f32 v95, v131, v95
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v86, v132, v86 :: v_dual_mul_f32 v111, v45, v111
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v102, v132, v102 :: v_dual_mul_f32 v127, v45, v127
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v78, v131, v78 :: v_dual_fmac_f32 v43, v72, v11
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v94, v131, v94 :: v_dual_fmac_f32 v17, v85, v147
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v113, v40, v113 :: v_dual_lshlrev_b32 v136, 16, v195
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v121, v45, v121 :: v_dual_lshlrev_b32 v144, 16, v203
	v_dual_mul_f32 v120, v40, v120 :: v_dual_lshlrev_b32 v145, 16, v202
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v117, v40, v117 :: v_dual_lshlrev_b32 v152, 16, v210
	v_mul_f32_e32 v80, v40, v80
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v81, v40, v81
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v116, v40, v116 :: v_dual_mul_f32 v109, v45, v109
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v128, v40, v128 :: v_dual_mul_f32 v125, v45, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v118, v40, v118 :: v_dual_fmac_f32 v25, v10, v11
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v130, v40, v130 :: v_dual_fmac_f32 v23, v98, v140
	v_mul_f32_e32 v40, v40, v129
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v110, v45, v110 :: v_dual_fmac_f32 v37, v75, v139
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v45, v45, v126
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v24, v9, v133 :: v_dual_fmac_f32 v27, v50, v134
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v26, v47, v135 :: v_dual_fmac_f32 v41, v88, v134
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v42, v73, v133 :: v_dual_fmac_f32 v21, v82, v138
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v44, v89, v135 :: v_dual_fmac_f32 v39, v91, v141
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v20, v83, v139 :: v_dual_fmac_f32 v19, v101, v149
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v22, v99, v141 :: v_dual_fmac_f32 v33, v77, v147
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v36, v74, v138 :: v_dual_fmac_f32 v35, v93, v149
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v38, v90, v140 :: v_dual_fmac_f32 v31, v95, v157
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v16, v84, v146 :: v_dual_fmac_f32 v15, v102, v156
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v18, v100, v148 :: v_dual_fmac_f32 v13, v86, v154
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v32, v76, v146 :: v_dual_fmac_f32 v43, v97, v137
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v34, v92, v148 :: v_dual_fmac_f32 v29, v78, v154
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v12, v87, v155 :: v_dual_fmac_f32 v25, v68, v137
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v14, v103, v157 :: v_dual_fmac_f32 v21, v113, v143
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v28, v79, v155 :: v_dual_fmac_f32 v17, v117, v150
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v30, v94, v156 :: v_dual_fmac_f32 v37, v107, v142
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v24, v80, v136 :: v_dual_fmac_f32 v33, v109, v150
	v_dual_fmac_f32 v42, v104, v136 :: v_dual_fmac_f32 v13, v118, v159
	v_dual_fmac_f32 v20, v114, v142 :: v_dual_fmac_f32 v35, v125, v152
	v_dual_fmac_f32 v36, v106, v143 :: v_dual_fmac_f32 v41, v105, v46
	v_dual_fmac_f32 v16, v116, v151 :: v_dual_fmac_f32 v39, v122, v144
	v_dual_fmac_f32 v32, v108, v151 :: v_dual_fmac_f32 v31, v127, v160
	v_dual_fmac_f32 v12, v119, v158 :: v_dual_fmac_f32 v29, v110, v159
	v_dual_fmac_f32 v28, v111, v158 :: v_dual_fmac_f32 v19, v128, v152
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v44, v112, v0 :: v_dual_fmac_f32 v27, v81, v46
	v_fmac_f32_e32 v38, v121, v145
	v_fmac_f32_e32 v34, v124, v153
	v_fmac_f32_e32 v30, v45, v161
	v_dual_fmac_f32 v26, v96, v0 :: v_dual_fmac_f32 v23, v115, v145
	v_fmac_f32_e32 v22, v120, v144
	v_fmac_f32_e32 v18, v123, v153
	v_dual_fmac_f32 v15, v40, v161 :: v_dual_fmac_f32 v14, v130, v160
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s33
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:24
	scratch_load_b32 v56, off, off offset:28
	scratch_load_b32 v4, off, off offset:32
.LBB0_4:                                ; %._crit_edge
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v0, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v41
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v5, 0x78, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v9, 0xbfb8aa3b, v39 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v56, s19, v56
	s_mul_i32 s1, s29, s19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v11, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v8, 0xbfb8aa3b, v38 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v44
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v4, v3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0x42800000, s0
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v10
	v_mul_f32_e32 v45, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v39 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v38
	v_ldexp_f32 v0, v1, v0
	v_mul_f32_e32 v7, 0xbfb8aa3b, v19
	v_ldexp_f32 v1, v4, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v8, null, v0, v0, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v51, null, v50, v50, v41
	v_div_scale_f32 v59, vcc_lo, v44, v0, v44
	v_rcp_f32_e32 v54, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v55, v51
	v_div_scale_f32 v60, s0, v41, v50, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v9, v52, v9
	v_ldexp_f32 v1, v53, v1
	v_mul_f32_e32 v4, 0xbfb8aa3b, v14
	v_dual_mul_f32 v46, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v26
	v_dual_mul_f32 v48, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v8, v54, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v51, v55, 1.0
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	s_lshl_b32 s3, s19, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v57, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v55, v58, v55 :: v_dual_add_f32 v58, 1.0, v1
	s_mov_b32 s19, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v52, v59, v54
	s_mov_b32 s18, 0x7ffffffe
	v_mul_f32_e32 v53, v60, v55
	v_div_scale_f32 v63, null, v58, v58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v8, v52, v59
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v51, v53, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v1, v54
	v_div_scale_f32 v62, null, v9, v9, v39
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_add3_u32 v1, s1, v5, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v56, v63
	v_fmac_f32_e32 v53, v61, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v5, v62
	v_fma_f32 v8, -v8, v52, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v51, v53, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v54, v52
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v51, v55, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v62, v5, 1.0
	v_div_scale_f32 v53, vcc_lo, v39, v9, v39
	v_div_fixup_f32 v0, v8, v0, v44
	v_div_fixup_f32 v41, v51, v50, v41
	v_fma_f32 v50, -v63, v56, 1.0
	v_dual_fmac_f32 v5, v54, v5 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v35
	v_div_scale_f32 v8, s0, v38, v58, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v41, v43, v41 :: v_dual_mul_f32 v0, v42, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v50, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v53, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v52
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v8, v56
	v_fma_f32 v51, -v62, v42, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v41.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v63, v43, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v42, v51, v5 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v44, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v54, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v43, v52, v56 :: v_dual_and_b32 v50, 1, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v55
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v0, v54, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v62, v42, v53
	v_fma_f32 v8, -v63, v43, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v41, v50, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v0, v0, v5, v42
	v_div_scale_f32 v42, null, v11, v11, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v44, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v0, v9, v39
	v_rcp_f32_e32 v9, v42
	v_div_fmas_f32 v8, v8, v56, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v40
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v37, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v51.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v8, v58, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v50.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v42, v9, 1.0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v36, v36, v8 :: v_dual_fmac_f32 v9, v38, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v10, v10, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v36.h
	v_mov_b16_e32 v8.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, vcc_lo, v35, v11, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v41, v0, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v44, v9
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v37, v39, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v53, v36, v8, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v41.h, s1
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v42, v45, v44
	v_fmac_f32_e32 v39, v40, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, s0, v34, v10, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v0, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v53.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v30 :: v_dual_mul_f32 v52, v43, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v36, v36, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v37, v52, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v52, v0, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v0, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v42, v45, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v38, v9, v45
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v9, v9, v11, v35
	v_div_scale_f32 v11, null, v0, v0, v30
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v33, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v37, v52, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v40, v38, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v37, v39, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v9, v9
	v_and_b32_e32 v44, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v37, v10, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v9, v44, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v37, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v11, v34, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v37, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v33, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v32, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, vcc_lo, v31, v36, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v27
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v10.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v40, v43, v39
	v_fmac_f32_e32 v43, v37, v38
	v_div_scale_f32 v37, null, v35, v35, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v33, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s0, v30, v0, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v40, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v41, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v10, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v9, v9, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v11, v45, v41
	v_div_fmas_f32 v32, v32, v38, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v39
	v_div_fixup_f32 v31, v32, v36, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v33, v34
	v_rcp_f32_e32 v33, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v28, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v11, v45, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.h, 0x7fff, v44.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v10.h
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v11, v34, v45
	v_fma_f32 v34, -v37, v33, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v11, v0, v30
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v11, vcc_lo, v26, v35, v26
	v_fma_f32 v30, -v39, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v29, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s2, v27, v9, v27
	v_mul_f32_e32 v28, v11, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v30, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v37, v28, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v0.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v28, v32, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v37, v28, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v31, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v11, v33, v28
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v11, v35, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v34, v29, v38 :: v_dual_mul_f32 v11, v24, v11
	v_fma_f32 v32, -v39, v34, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v32, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v39, v34, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v0, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v38, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v28, v9, v27
	v_div_scale_f32 v28, null, v30, v30, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v29, v42
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v25, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v28
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v27, v27, v23
	v_fma_f32 v32, -v28, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v32, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v2
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s0, v22, v30, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v10, v31, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v29.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v24, v31, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 1, v2
	v_cndmask_b16 v29.l, 0x7fff, v26.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v26, v32, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v33, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v11, v0, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, s1, v23, v27, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v28, v26, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v35, v7, v31 :: v_dual_and_b32 v10, 1, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v34, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v24, v35, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v28, v26, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v18
	v_exp_f32_e32 v33, v33
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v35, v6, v31
	v_div_fmas_f32 v6, v9, v25, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_exp_f32_e32 v9, v36
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v4, -v24, v35, v7
	v_div_fixup_f32 v6, v6, v30, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v33, v11
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.l, 0x7fff, v10.h, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v4, v31, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v9, v9, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v6, v20, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v3, v27, v23
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v4, v4, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v23, v25
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v10, v26
	v_div_scale_f32 v22, null, v9, v9, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, v2.h
	v_mov_b16_e32 v2.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s0, v18, v9, v18
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v23, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, vcc_lo, v19, v4, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v26, v10, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v21, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v21, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v24, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v10, v20, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v3.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v30, v23, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v22, v21, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v27, null, v7, v7, v15
	v_fma_f32 v34, -v26, v30, v23
	v_div_scale_f32 v20, null, v11, v11, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v24, v21
	v_rcp_f32_e32 v24, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v34, v10
	v_rcp_f32_e32 v25, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v3, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v26, v30, v23
	v_fma_f32 v36, -v27, v24, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v20, v25, 1.0
	v_div_fmas_f32 v10, v23, v10, v30
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v24, v36, v24
	v_div_scale_f32 v36, s2, v15, v7, v15
	v_mul_f32_e32 v35, v31, v21
	v_div_fixup_f32 v4, v10, v4, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v6, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v22, v35, v31
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v17, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.h, 0x7fff, v33.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v35, v34, v21 :: v_dual_mul_f32 v34, v36, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v22, v35, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v27, v34, v36
	v_fmac_f32_e32 v25, v32, v25
	v_div_scale_f32 v32, s1, v14, v11, v14
	v_div_fmas_f32 v21, v22, v21, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v23, v24
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v37, v32, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v9, v21, v9, v18
	v_fma_f32 v10, -v27, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v20, v37, v32
	v_fmac_f32_e32 v37, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v20, v37, v32
	v_div_fmas_f32 v6, v6, v25, v37
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v10, v10, v24, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v11, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v10, v7, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v12, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v2.h
	v_cndmask_b16 v17.l, 0x7fff, v28.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v13, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v4, v10, 0x7fff
	v_mov_b16_e32 v2.l, v6.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v16, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v11.l, v3.h
	v_cmp_o_f32_e64 s1, v6, v6
	v_and_b32_e32 v2, 1, v2
	v_mov_b16_e32 v7.l, v9.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v6, v2, 0x7fff
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_add3_u32 v4, v9, v7, 0x7fff
	v_and_b32_e32 v7, 1, v11
	v_and_b32_e32 v11, 16, v64
	v_mov_b32_e32 v9, 0x5410
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v10.l, 0x7fff, v4.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s0, 0, v11
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b32_e64 v6, 0x1054, v9, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v9, 0x3276, v11, s0
	v_lshl_or_b32 v4, v6, 8, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v9, 8, v9
	v_cndmask_b32_e64 v9, v10, v0, s0
	v_cndmask_b32_e64 v0, v0, v10, s0
	v_and_b32_e32 v4, 0x540054, v4
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v3, v41, v5, s0
	v_cndmask_b32_e64 v5, v5, v41, s0
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s2
	v_cndmask_b32_e64 v7, v29, v8, s0
	v_cndmask_b32_e64 v8, v8, v29, s0
	v_lshl_or_b32 v6, v6, 4, v6
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v10, v2, v17, s0
	v_cndmask_b32_e64 v2, v17, v2, s0
	v_and_b32_e32 v11, 0x5040504, v4
	v_and_b32_e32 v12, 0x7060706, v6
	v_permlanex16_b32 v6, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v5, v3, v11
	v_perm_b32 v3, v5, v3, v12
	v_perm_b32 v4, v6, v7, v11
	v_perm_b32 v5, v6, v7, v12
	v_perm_b32 v6, v0, v9, v11
	v_perm_b32 v7, v0, v9, v12
	v_lshlrev_b32_e32 v0, 1, v1
	v_perm_b32 v8, v13, v10, v11
	v_perm_b32 v9, v13, v10, v12
	v_add_lshl_u32 v1, v1, s3, 1
	s_clause 0x1
	buffer_store_b128 v[2:5], v0, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v1, s[16:19], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp28:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 40
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11544
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 40
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 40
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 9
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
