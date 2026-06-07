	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
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
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v38, 15, v0
	v_lshrrev_b32_e32 v47, 1, v0
	s_mov_b32 s12, 0
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
	s_ashr_i32 s13, s9, 31
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
	s_add_i32 s15, s28, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s14, s13
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
	s_cmp_lt_i32 s15, 64
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s28, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s16, s15, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s0, 31
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s16, s16, 26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s17, s17, 27
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s16
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s0, s17
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s29, s15, 6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s0, 5
.Ltmp23:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0xe0, v0
	v_lshrrev_b32_e32 v4, 4, v0
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v14, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v3
	v_bfe_i32 v17, v0, 2, 1
	v_bfe_i32 v15, v0, 5, 1
	v_bfe_i32 v18, v0, 3, 1
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v3, 4, v3
	v_and_or_b32 v4, v4, 1, v5
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v17, 0x90, v17
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v15, 0x90, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v5, 14, v4
	v_or_b32_e32 v6, 12, v4
	v_or_b32_e32 v7, 10, v4
	v_or_b32_e32 v8, 8, v4
	v_or_b32_e32 v11, 6, v4
	v_or_b32_e32 v12, 4, v4
	v_or_b32_e32 v13, 2, v4
	v_or_b32_e32 v50, s2, v4
	v_or_b32_e32 v57, s2, v5
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v58, s23, v4
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v65, s23, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v4, s23, s0, v47
	v_or_b32_e32 v5, s0, v47
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v16, 5, v0
	v_and_b32_e32 v10, 16, v2
	v_or_b32_e32 v56, s2, v6
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v64, s23, v6
	v_and_b32_e32 v9, 28, v1
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v6, s22, v14
	v_and_b32_e32 v16, 0x160, v16
	v_and_b32_e32 v1, 0x37c, v1
	v_or_b32_e32 v19, s22, v38
	v_or_b32_e32 v52, s2, v12
	v_or_b32_e32 v53, s2, v11
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v60, s23, v12
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v61, s23, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mad_u64_u32 v[11:12], null, s28, v6, v[9:10]
	v_and_b32_e32 v2, 0xf70, v2
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v18, 0x90, v18
	v_or_b32_e32 v20, v17, v16
	v_or3_b32 v3, v16, v3, v17
	v_subrev_nc_u32_e32 v4, s0, v4
	v_xor_b32_e32 v1, v15, v1
	v_or_b32_e32 v15, 16, v19
	v_subrev_nc_u32_e32 v5, s0, v5
	v_xor_b32_e32 v2, v18, v2
	v_xor_b32_e32 v16, 16, v20
	v_xor_b32_e32 v17, 16, v3
	v_or_b32_e32 v51, s2, v13
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v59, s23, v13
	v_mad_u64_u32 v[12:13], null, s28, v4, v[10:11]
	v_mul_lo_u32 v48, v19, s30
	v_mul_lo_u32 v49, v15, s30
	v_mad_u64_u32 v[13:14], null, s28, v5, v[10:11]
	v_or_b32_e32 v54, s2, v8
	v_or_b32_e32 v55, s2, v7
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v62, s23, v8
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v63, s23, v7
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v66, 0, v1
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v67, 0, v2
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v70, 0, v3
	v_dual_mov_b32 v1, s12 :: v_dual_add_nc_u32 v68, 0, v20
	v_mov_b32_e32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v69, 0, v16
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v71, 0, v17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s23, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
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
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v72, s3, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v73, s3, v11
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v74, s3, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v75, s3, v13
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v76, s3, v12
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v72
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v72, 32, v72
	s_add_i32 s16, s3, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_dual_cndmask_b32 v77, 0x80000000, v73 :: v_dual_add_nc_u32 v80, 32, v76
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v74
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v73, 32, v73
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v72
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v78, 0x80000000, v75, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v81, 0x80000000, v73, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v88, v77, s[24:27], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v90, v48, s0, 1
	v_add_lshl_u32 v91, v49, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v93, v51, s0, 1
	.loc	1 313 27 is_stmt 1              ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v74, 32, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v97, v55, s0, 1
	v_add_lshl_u32 v92, v50, s0, 1
	v_add_lshl_u32 v94, v52, s0, 1
	v_add_lshl_u32 v95, v53, s0, 1
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v74
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v75, 32, v75
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v96, v54, s0, 1
	v_add_lshl_u32 v98, v56, s0, 1
	v_add_lshl_u32 v99, v57, s0, 1
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v84, 0x80000000, v80, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v82, 0x80000000, v75, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[72:75], v78, s[4:7], 0 offen
	buffer_load_b128 v[76:79], v76, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v89, v81, s[24:27], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[80:83], v82, s[4:7], 0 offen
	buffer_load_b128 v[84:87], v84, s[4:7], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s16, 5
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s0, s0, s2
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v108, v48, s16, 1
	v_add_lshl_u32 v109, v49, s16, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v100, s0, v58, 1
	v_add_lshl_u32 v101, s0, v59, 1
	v_add_lshl_u32 v102, s0, v60, 1
	v_add_lshl_u32 v103, s0, v61, 1
	v_add_lshl_u32 v104, s0, v62, 1
	v_add_lshl_u32 v105, s0, v63, 1
	v_add_lshl_u32 v106, s0, v64, 1
	v_add_lshl_u32 v107, s0, v65, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v110, v50, s16, 1
	v_add_lshl_u32 v111, v51, s16, 1
	v_add_lshl_u32 v112, v52, s16, 1
	v_add_lshl_u32 v113, v53, s16, 1
	v_add_lshl_u32 v114, v54, s16, 1
	v_add_lshl_u32 v115, v55, s16, 1
	v_add_lshl_u32 v116, v56, s16, 1
	v_add_lshl_u32 v117, v57, s16, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s16, s16, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v118, s16, v58, 1
	v_add_lshl_u32 v119, s16, v59, 1
	v_add_lshl_u32 v120, s16, v60, 1
	v_add_lshl_u32 v121, s16, v61, 1
	v_add_lshl_u32 v122, s16, v62, 1
	v_add_lshl_u32 v123, s16, v63, 1
	v_add_lshl_u32 v124, s16, v64, 1
	v_add_lshl_u32 v125, s16, v65, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s29, s29, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s29, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v66, v88 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v67, v[72:75]
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(3)
	ds_store_b128 v67, v[76:79] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v66, v89 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v67, v[80:83] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[84:87] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v176, v90, s[12:15], 0 offen
	buffer_load_u16 v177, v91, s[12:15], 0 offen
	buffer_load_u16 v178, v108, s[12:15], 0 offen
	buffer_load_u16 v179, v109, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1f
	buffer_load_u16 v180, v92, s[8:11], 0 offen
	buffer_load_u16 v181, v93, s[8:11], 0 offen
	buffer_load_u16 v182, v100, s[8:11], 0 offen
	buffer_load_u16 v183, v101, s[8:11], 0 offen
	buffer_load_u16 v184, v111, s[8:11], 0 offen
	buffer_load_u16 v185, v110, s[8:11], 0 offen
	buffer_load_u16 v186, v119, s[8:11], 0 offen
	buffer_load_u16 v187, v118, s[8:11], 0 offen
	buffer_load_u16 v188, v94, s[8:11], 0 offen
	buffer_load_u16 v189, v95, s[8:11], 0 offen
	buffer_load_u16 v190, v102, s[8:11], 0 offen
	buffer_load_u16 v191, v103, s[8:11], 0 offen
	buffer_load_u16 v192, v113, s[8:11], 0 offen
	buffer_load_u16 v193, v112, s[8:11], 0 offen
	buffer_load_u16 v194, v121, s[8:11], 0 offen
	buffer_load_u16 v195, v120, s[8:11], 0 offen
	buffer_load_u16 v196, v96, s[8:11], 0 offen
	buffer_load_u16 v197, v97, s[8:11], 0 offen
	buffer_load_u16 v198, v104, s[8:11], 0 offen
	buffer_load_u16 v199, v105, s[8:11], 0 offen
	buffer_load_u16 v200, v115, s[8:11], 0 offen
	buffer_load_u16 v201, v114, s[8:11], 0 offen
	buffer_load_u16 v202, v123, s[8:11], 0 offen
	buffer_load_u16 v203, v122, s[8:11], 0 offen
	buffer_load_u16 v204, v98, s[8:11], 0 offen
	buffer_load_u16 v205, v99, s[8:11], 0 offen
	buffer_load_u16 v206, v106, s[8:11], 0 offen
	buffer_load_u16 v207, v107, s[8:11], 0 offen
	buffer_load_u16 v208, v117, s[8:11], 0 offen
	buffer_load_u16 v209, v116, s[8:11], 0 offen
	buffer_load_u16 v210, v125, s[8:11], 0 offen
	buffer_load_u16 v211, v124, s[8:11], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[88:91], v70
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[96:99], v68 offset:16384
	ds_load_b128 v[104:107], v68 offset:16896
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[108:111], v70 offset:8192
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[120:123], v70 offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[128:131], v68 offset:17408
	ds_load_b128 v[136:139], v68 offset:17920
	ds_load_b128 v[140:143], v69 offset:16384
	ds_load_b128 v[144:147], v69 offset:16896
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[148:151], v70 offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[152:155], v69 offset:17408
	ds_load_b128 v[156:159], v69 offset:17920
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[160:163], v71
	ds_load_b128 v[164:167], v71 offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[168:171], v71 offset:8192
	ds_load_b128 v[172:175], v71 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[88:91], v[96:99], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[88:91], v[104:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[108:111], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[120:123], v[128:131], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[120:123], v[136:139], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[148:151], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[148:151], v[136:139], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[160:163], v[140:143], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[160:163], v[144:147], v[80:87] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[168:171], v[140:143], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[168:171], v[144:147], v[96:103] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[112:119], v[164:167], v[156:159], v[112:119] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[172:175], v[152:155], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[172:175], v[156:159], v[128:135] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[104:111], v[164:167], v[152:155], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v89, v89
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
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v92, v92
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
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v128, v128
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
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v137, 16, v177
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v139, 16, v179
	v_lshlrev_b32_e32 v136, 16, v176
	v_lshlrev_b32_e32 v138, 16, v178
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v141, 16, v181
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v80, v137, v80 :: v_dual_lshlrev_b32 v143, 16, v183
	v_mul_f32_e32 v81, v137, v81
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v96, v137, v96
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v97, v137, v97 :: v_dual_lshlrev_b32 v148, 16, v188
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v99, v137, v99 :: v_dual_lshlrev_b32 v150, 16, v190
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v115, v139, v115
	v_dual_mul_f32 v113, v139, v113 :: v_dual_lshlrev_b32 v140, 16, v180
	v_dual_mul_f32 v73, v136, v73 :: v_dual_lshlrev_b32 v142, 16, v182
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v136, v89
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v72, v136, v72 :: v_dual_lshlrev_b32 v149, 16, v189
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v88, v136, v88 :: v_dual_lshlrev_b32 v151, 16, v191
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v75, v136, v75 :: v_dual_lshlrev_b32 v154, 16, v194
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v91, v136, v91 :: v_dual_lshlrev_b32 v156, 16, v196
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v82, v137, v82 :: v_dual_lshlrev_b32 v157, 16, v197
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v98, v137, v98 :: v_dual_lshlrev_b32 v159, 16, v199
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v85, v137, v85 :: v_dual_lshlrev_b32 v162, 16, v202
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v101, v137, v101 :: v_dual_lshlrev_b32 v164, 16, v204
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v74, v136, v74 :: v_dual_lshlrev_b32 v165, 16, v205
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v117, v139, v117 :: v_dual_lshlrev_b32 v166, 16, v206
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v90, v136, v90 :: v_dual_lshlrev_b32 v167, 16, v207
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v77, v136, v77 :: v_dual_lshlrev_b32 v170, 16, v210
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v129, v139, v129 :: v_dual_lshlrev_b32 v158, 16, v198
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v107, v138, v107
	v_mul_f32_e32 v83, v137, v83
	v_dual_mul_f32 v84, v137, v84 :: v_dual_mul_f32 v93, v136, v93
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v100, v137, v100 :: v_dual_mul_f32 v109, v138, v109
	v_dual_mul_f32 v132, v139, v132 :: v_dual_mul_f32 v87, v137, v87
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v76, v136, v76 :: v_dual_mul_f32 v103, v137, v103
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v92, v136, v92 :: v_dual_mul_f32 v119, v139, v119
	v_dual_mul_f32 v124, v138, v124 :: v_dual_mul_f32 v79, v136, v79
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v86, v137, v86 :: v_dual_mul_f32 v95, v136, v95
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v102, v137, v102 :: v_dual_mul_f32 v111, v138, v111
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v78, v136, v78 :: v_dual_fmac_f32 v23, v82, v148
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v94, v136, v94 :: v_dual_fmac_f32 v39, v74, v148
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v105, v138, v105 :: v_dual_lshlrev_b32 v144, 16, v184
	v_dual_mul_f32 v112, v139, v112 :: v_dual_lshlrev_b32 v145, 16, v185
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v121, v138, v121 :: v_dual_lshlrev_b32 v146, 16, v186
	v_dual_mul_f32 v128, v139, v128 :: v_dual_lshlrev_b32 v147, 16, v187
	v_dual_mul_f32 v131, v139, v131 :: v_dual_lshlrev_b32 v152, 16, v192
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v104, v138, v104 :: v_dual_lshlrev_b32 v153, 16, v193
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v120, v138, v120 :: v_dual_lshlrev_b32 v155, 16, v195
	v_dual_mul_f32 v123, v138, v123 :: v_dual_lshlrev_b32 v160, 16, v200
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v114, v139, v114 :: v_dual_lshlrev_b32 v161, 16, v201
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v130, v139, v130 :: v_dual_lshlrev_b32 v163, 16, v203
	v_dual_mul_f32 v133, v139, v133 :: v_dual_lshlrev_b32 v168, 16, v208
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v106, v138, v106 :: v_dual_lshlrev_b32 v169, 16, v209
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v122, v138, v122 :: v_dual_lshlrev_b32 v171, 16, v211
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v116, v139, v116 :: v_dual_mul_f32 v125, v138, v125
	v_dual_mul_f32 v108, v138, v108 :: v_dual_mul_f32 v135, v139, v135
	v_dual_mul_f32 v118, v139, v118 :: v_dual_mul_f32 v127, v138, v127
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v134, v139, v134 :: v_dual_fmac_f32 v27, v80, v140
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v110, v138, v110 :: v_dual_fmac_f32 v45, v72, v140
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v126, v138, v126 :: v_dual_fmac_f32 v19, v85, v157
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v26, v81, v141 :: v_dual_fmac_f32 v29, v96, v142
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v28, v97, v143 :: v_dual_fmac_f32 v43, v88, v142
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v44, v73, v141 :: v_dual_fmac_f32 v25, v98, v150
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v46, v89, v143 :: v_dual_fmac_f32 v41, v90, v150
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v22, v83, v149 :: v_dual_fmac_f32 v21, v101, v159
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v24, v99, v151 :: v_dual_fmac_f32 v35, v77, v157
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v40, v75, v149 :: v_dual_fmac_f32 v37, v93, v159
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v42, v91, v151 :: v_dual_fmac_f32 v15, v86, v164
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v18, v84, v156 :: v_dual_fmac_f32 v17, v102, v166
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v20, v100, v158 :: v_dual_fmac_f32 v31, v78, v164
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v34, v76, v156 :: v_dual_fmac_f32 v33, v95, v167
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v36, v92, v158 :: v_dual_fmac_f32 v23, v114, v153
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v14, v87, v165 :: v_dual_fmac_f32 v19, v117, v160
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v16, v103, v167 :: v_dual_fmac_f32 v27, v112, v145
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v30, v79, v165 :: v_dual_fmac_f32 v35, v109, v160
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v32, v94, v166 :: v_dual_fmac_f32 v45, v104, v145
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v26, v113, v144 :: v_dual_fmac_f32 v39, v106, v153
	v_dual_fmac_f32 v44, v105, v144 :: v_dual_fmac_f32 v15, v118, v169
	v_dual_fmac_f32 v22, v115, v152 :: v_dual_fmac_f32 v31, v110, v169
	v_dual_fmac_f32 v40, v107, v152 :: v_dual_fmac_f32 v43, v120, v147
	v_dual_fmac_f32 v18, v116, v161 :: v_dual_fmac_f32 v41, v122, v155
	v_dual_fmac_f32 v34, v108, v161 :: v_dual_fmac_f32 v37, v125, v162
	v_dual_fmac_f32 v14, v119, v168 :: v_dual_fmac_f32 v29, v128, v147
	v_dual_fmac_f32 v30, v111, v168 :: v_dual_fmac_f32 v25, v130, v155
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v46, v121, v146 :: v_dual_fmac_f32 v17, v134, v171
	v_fmac_f32_e32 v42, v123, v154
	v_dual_fmac_f32 v36, v124, v163 :: v_dual_fmac_f32 v33, v127, v170
	v_dual_fmac_f32 v32, v126, v171 :: v_dual_fmac_f32 v21, v133, v162
	v_fmac_f32_e32 v28, v129, v146
	v_fmac_f32_e32 v24, v131, v154
	v_fmac_f32_e32 v20, v132, v163
	v_fmac_f32_e32 v16, v135, v170
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v1, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v43
	v_dual_mul_f32 v8, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v42
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v38, s23, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s22, s23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v10, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v46 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v13, v3
	v_cndmask_b32_e64 v55, 0, 0x42800000, s0
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v10
	v_mul_f32_e32 v12, 0xbfb8aa3b, v32
	v_dual_mul_f32 v48, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v28
	v_dual_mul_f32 v50, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v1, v2, v1
	v_ldexp_f32 v2, v13, v4
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	v_dual_mul_f32 v6, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v13, 1.0, v1 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v3, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v8, null, v13, v13, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, vcc_lo, v46, v13, v46
	v_rcp_f32_e32 v56, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s3, s23, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v1, v54, v1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v8, v56, 1.0
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0x78, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v47, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v56, v58, v56
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v54, v60, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v52, null, v9, v9, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, s0, v43, v9, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v52
	v_fma_f32 v59, -v52, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v59, v57
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v1, -v8, v54, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v41 :: v_dual_fmac_f32 v54, v1, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v55, v55
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_add3_u32 v1, s1, v5, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v8, v54, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v8, v56, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v55, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v8, v13, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_mul_f32 v8, v44, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v53, v53, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v64
	v_mul_f32_e32 v55, v61, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v52, v55, v61
	v_fmac_f32_e32 v55, v62, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v55, v61
	v_div_fmas_f32 v52, v52, v57, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s2
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v52, v9, v43
	v_fma_f32 v43, -v64, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v36 :: v_dual_fmac_f32 v38, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v45, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v54
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v9.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v46, 1, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, s0, v41, v53, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v45, v11
	v_exp_f32_e32 v45, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v13, v38
	v_div_scale_f32 v63, null, v59, v59, v42
	v_div_scale_f32 v55, vcc_lo, v42, v59, v42
	v_fma_f32 v54, -v64, v44, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v5, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v45, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v54, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v9, v46, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v64, v44, v13
	v_fma_f32 v56, -v63, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v5, v56, v5 :: v_dual_and_b32 v56, 1, v2
	v_mul_f32_e32 v43, v55, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v63, v43, v55
	v_fmac_f32_e32 v43, v52, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v8, v56, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v63, v43, v55
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v8, v8, v5, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v38, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v8, v59, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v52.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s0
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v53, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v46.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v40, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v39, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v10, v10, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v8.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v13
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v32
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v11, v11, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v2.h
	v_cmp_o_f32_e64 s1, v8, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v38
	v_fma_f32 v12, -v13, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v42, v12, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, s0, v36, v10, v36
	v_fma_f32 v40, -v38, v41, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v44, v42
	v_fmac_f32_e32 v41, v40, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, vcc_lo, v37, v11, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v12, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v40, -v13, v53, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v8, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v38, v46, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v40, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v8, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v9, v39, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v43.h, s1
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v38, v46, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v52, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v13, v53, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v39.h, s1
	v_mov_b16_e32 v43.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v41, v46
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v13, v13, v42, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v12, v11, v37
	v_div_scale_f32 v12, null, v38, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v13, v10, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v34, v10 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v9, v9, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v36, v37, v36
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v35, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v40, v41, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v11.h
	v_cmp_o_f32_e64 s1, v11, v11
	v_and_b32_e32 v45, 1, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v12, v35, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v11, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s0, v32, v38, v32
	v_fmac_f32_e32 v41, v13, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, vcc_lo, v33, v9, v33
	v_mul_f32_e32 v46, v42, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v34, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v12, v46, v42
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v40, v44, v39
	v_fmac_f32_e32 v44, v37, v41
	v_div_scale_f32 v37, null, v36, v36, v28
	v_fmac_f32_e32 v46, v34, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v40, v44, v39
	v_rcp_f32_e32 v34, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v46, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v41, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v35, v46
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v13, v9, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v37, v34, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v38, v32
	v_div_scale_f32 v13, vcc_lo, v28, v36, v28
	v_fmac_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v10, v43, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v31, v12
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v12, v13, v34
	v_div_scale_f32 v39, null, v11, v11, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v37, v12, v13
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v33, v34
	v_fma_f32 v13, -v37, v12, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v39, v40, 1.0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v30, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s2, v29, v11, v29
	v_div_fmas_f32 v12, v13, v34, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v32, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v30, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v36, v28
	v_fma_f32 v33, -v39, v35, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v32
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v26, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v33, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v39, v35, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v31, v32, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v10, v33, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v40, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v13, v11, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v30, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v31, v31, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v27, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v9, v32, 0x7fff
	v_mov_b16_e32 v9.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v13, v13, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v29, v27, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v11.h
	v_cndmask_b16 v30.l, 0x7fff, v28.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v12, v10, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, s1, v25, v13, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v26, v32, 1.0
	v_fmac_f32_e32 v27, v33, v27
	v_div_scale_f32 v33, s0, v24, v31, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v32, v34, v32 :: v_dual_and_b32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v28, v33, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v7, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v29, v28, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v26, v36, v7
	v_fmac_f32_e32 v28, v35, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v11, -v29, v28, v33
	v_fmac_f32_e32 v36, v6, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v11, v27, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v31, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v17
	v_ldexp_f32 v11, v11, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v4, -v26, v36, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v34, v12
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v24, null, v11, v11, v20
	v_div_fmas_f32 v3, v4, v32, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s0, v20, v11, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v3, v13, v25
	v_div_scale_f32 v28, null, v4, v4, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v3, v23, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v9, v28
	v_rcp_f32_e32 v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v13, v7
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v22, v6
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v28, v9, 1.0
	v_fma_f32 v25, -v24, v23, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v26, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v9, v22, v9
	v_div_scale_f32 v22, vcc_lo, v21, v4, v21
	v_div_scale_f32 v27, null, v7, v7, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_fmac_f32 v23, v25, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v31, v22, v9
	v_rcp_f32_e32 v25, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v12, v12, v16
	v_fma_f32 v35, -v28, v31, v22
	v_mul_f32_e32 v36, v32, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v3, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v35, v9
	v_fma_f32 v37, -v27, v25, 1.0
	v_fma_f32 v35, -v24, v36, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v6, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v28, v31, v22
	v_dual_fmac_f32 v25, v37, v25 :: v_dual_fmac_f32 v36, v35, v23
	v_div_scale_f32 v37, s2, v17, v7, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v13, v26, 1.0
	v_div_fmas_f32 v9, v22, v9, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v24, v36, v32
	v_mul_f32_e32 v35, v37, v25
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v9, v4, v21
	v_div_fmas_f32 v22, v22, v23, v36
	v_fma_f32 v24, -v27, v35, v37
	v_fmac_f32_e32 v26, v33, v26
	v_div_scale_f32 v33, s1, v16, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v22, v11, v20
	v_fmac_f32_e32 v35, v24, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v33, v26
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v19, v4 :: v_dual_mul_f32 v9, v18, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v27, v35, v37
	v_fma_f32 v28, -v13, v38, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v6, -v13, v38, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v34.h, s0
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v26, v38
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v11, v11, v25, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v12, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v2.h
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v11, v7, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v9.h
	v_mov_b16_e32 v7.h, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v14, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v15, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v2.l, v6.h
	v_add3_u32 v11, v4, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v12.l, v3.h
	v_add3_u32 v4, v9, v7, 0x7fff
	v_and_b32_e32 v2, 1, v2
	v_cmp_o_f32_e64 s1, v6, v6
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b32_e32 v9, 0x7632
	v_and_b32_e32 v7, 1, v12
	v_add3_u32 v2, v6, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_cndmask_b16 v11.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v6, 0x3276, v9, s0
	v_add3_u32 v7, v3, v7, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e64 v3, v42, v5, s0
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e64 v5, v5, v42, s0
	v_cndmask_b32_e64 v6, v30, v8, s0
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v7, v8, v30, s0
	v_cndmask_b32_e64 v8, v11, v10, s0
	v_cndmask_b32_e64 v9, v10, v11, s0
	v_cndmask_b32_e64 v10, v2, v13, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b32_e64 v2, v13, v2, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(SALU_CYCLE_1)
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v11, 0x7060706, v4
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
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
	buffer_store_b128 v[2:5], v0, s[20:23], 0 offen
	buffer_store_b128 v[6:9], v1, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 212
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7456
; TotalNumSgprs: 33
; NumVgprs: 212
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
