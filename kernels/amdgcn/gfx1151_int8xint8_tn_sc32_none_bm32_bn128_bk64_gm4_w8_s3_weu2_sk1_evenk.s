	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v21, 15, v0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v22, 1, v0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	s_lshl_b32 s28, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s16, 64
	s_cbranch_scc1 .LBB0_3
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
	s_ashr_i32 s13, s1, 31
.Ltmp18:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 3, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, s0
.Ltmp20:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s13, 27
.Ltmp21:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s1, s0
.Ltmp23:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s16, 6
.Ltmp25:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s0, 5
.Ltmp26:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v4, s3, v4
	s_lshl_b32 s0, s15, 7
	s_mov_b32 s13, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x70, v22
	v_or_b32_e32 v8, s28, v21
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v3, 7, v0
	v_or_b32_e32 v10, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v36, v1, v2, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v1, 32, v4
	v_or_b32_e32 v9, v2, v21
	v_or_b32_e32 v11, 16, v8
	v_mul_lo_u32 v37, v8, s29
	v_mul_lo_u32 v8, s23, v4
	v_mul_lo_u32 v2, s23, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v6, 4, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v1, s22, v1
	v_mul_lo_u32 v4, s22, v4
	v_mul_lo_u32 v38, v11, s29
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v35, 0, v9
	v_or_b32_e32 v40, 2, v36
	v_add3_u32 v2, v2, s0, v6
	v_add3_u32 v6, v8, s0, v6
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v3, 2, v3
	v_lshlrev_b32_e32 v7, 4, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v47, s0, v2
	v_subrev_nc_u32_e32 v48, s0, v6
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v51, 0, v5
	v_add3_u32 v49, v1, s28, v3
	v_add3_u32 v50, v4, s28, v3
	v_add_nc_u32_e32 v52, 0, v7
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v31, 0, v21
	v_or_b32_e32 v41, 4, v36
	v_or_b32_e32 v42, 6, v36
	v_or_b32_e32 v43, 8, v36
	v_or_b32_e32 v44, 10, v36
	v_or_b32_e32 v45, 12, v36
	v_or_b32_e32 v46, 14, v36
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v53, 0, v10
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v17, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s30, s23, 6
	s_lshl_b32 s22, s22, 6
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
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b32 v54, v50, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[9:12], v48, s[4:7], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b32 v55, v49, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[13:16], v47, s[4:7], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s3, 5
	s_add_i32 s0, s3, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v56, v37, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v57, v38, s16, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v66, v37, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v58, v36, s16, 1
	v_add_lshl_u32 v59, v40, s16, 1
	v_add_lshl_u32 v60, v41, s16, 1
	v_add_lshl_u32 v61, v42, s16, 1
	v_add_lshl_u32 v62, v43, s16, 1
	v_add_lshl_u32 v63, v44, s16, 1
	v_add_lshl_u32 v64, v45, s16, 1
	v_add_lshl_u32 v65, v46, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v67, v38, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s0, s23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v68, v36, s16, 1
	v_add_lshl_u32 v69, v40, s16, 1
	v_add_lshl_u32 v70, v41, s16, 1
	v_add_lshl_u32 v71, v42, s16, 1
	v_add_lshl_u32 v72, v43, s16, 1
	v_add_lshl_u32 v73, v44, s16, 1
	v_add_lshl_u32 v74, v45, s16, 1
	v_add_lshl_u32 v75, v46, s16, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(3)
	ds_store_b32 v51, v54 offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v52, v[9:12]
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v51, v55 offset:9216
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v52, v[13:16] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v146, v56, s[12:15], 0 offen
	buffer_load_u16 v147, v57, s[12:15], 0 offen
	buffer_load_u16 v148, v66, s[12:15], 0 offen
	buffer_load_u16 v149, v67, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v150, v58, s[8:11], 0 offen
	buffer_load_u16 v151, v59, s[8:11], 0 offen
	buffer_load_u16 v152, v68, s[8:11], 0 offen
	buffer_load_u16 v153, v69, s[8:11], 0 offen
	buffer_load_u16 v154, v60, s[8:11], 0 offen
	buffer_load_u16 v155, v61, s[8:11], 0 offen
	buffer_load_u16 v156, v70, s[8:11], 0 offen
	buffer_load_u16 v157, v71, s[8:11], 0 offen
	buffer_load_u16 v158, v62, s[8:11], 0 offen
	buffer_load_u16 v159, v63, s[8:11], 0 offen
	buffer_load_u16 v160, v72, s[8:11], 0 offen
	buffer_load_u16 v161, v73, s[8:11], 0 offen
	buffer_load_u16 v162, v64, s[8:11], 0 offen
	buffer_load_u16 v163, v65, s[8:11], 0 offen
	buffer_load_u16 v164, v74, s[8:11], 0 offen
	buffer_load_u16 v165, v75, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v31 offset:8288
	ds_load_u8 v10, v31 offset:8256
	ds_load_u8 v11, v31 offset:8192
	ds_load_u8 v12, v31 offset:8208
	ds_load_u8 v13, v31 offset:8224
	ds_load_u8 v14, v31 offset:8304
	ds_load_u8 v15, v31 offset:8272
	ds_load_u8 v16, v31 offset:8240
	ds_load_u8 v54, v35 offset:1664
	ds_load_u8 v55, v35 offset:1920
	ds_load_u8 v76, v35 offset:2176
	ds_load_u8 v77, v35 offset:2048
	ds_load_u8 v78, v35 offset:1792
	ds_load_u8 v79, v35 offset:1536
	ds_load_u8 v80, v35 offset:1408
	ds_load_u8 v81, v35 offset:1280
	ds_load_u8 v82, v35 offset:1152
	ds_load_u8 v83, v35 offset:1024
	ds_load_u8 v84, v35 offset:640
	ds_load_u8 v85, v35 offset:896
	ds_load_u8 v86, v35 offset:768
	ds_load_u8 v87, v35 offset:512
	ds_load_u8 v88, v35 offset:384
	ds_load_u8 v89, v35 offset:256
	ds_load_u8 v90, v35 offset:3712
	ds_load_u8 v91, v35 offset:3968
	ds_load_u8 v92, v35 offset:4224
	ds_load_u8 v93, v35 offset:4096
	ds_load_u8 v94, v35 offset:3840
	ds_load_u8 v95, v35 offset:3584
	ds_load_u8 v96, v35 offset:3456
	ds_load_u8 v97, v35 offset:3328
	ds_load_u8 v98, v35 offset:3200
	ds_load_u8 v99, v35 offset:3072
	ds_load_u8 v100, v35 offset:2688
	ds_load_u8 v101, v35 offset:2944
	ds_load_u8 v102, v35 offset:2816
	ds_load_u8 v103, v35 offset:2560
	ds_load_u8 v104, v35 offset:2432
	ds_load_u8 v105, v35 offset:2304
	ds_load_u8 v106, v31 offset:8608
	ds_load_u8 v107, v31 offset:8576
	ds_load_u8 v108, v31 offset:8672
	ds_load_u8 v109, v31 offset:8640
	ds_load_u8 v110, v31 offset:8688
	ds_load_u8 v111, v31 offset:8656
	ds_load_u8 v112, v31 offset:8624
	ds_load_u8 v113, v31 offset:8592
	ds_load_u8 v114, v31 offset:8480
	ds_load_u8 v115, v31 offset:8448
	ds_load_u8 v116, v31 offset:8544
	ds_load_u8 v117, v31 offset:8512
	ds_load_u8 v118, v31 offset:8560
	ds_load_u8 v119, v31 offset:8528
	ds_load_u8 v120, v31 offset:8496
	ds_load_u8 v121, v31 offset:8464
	ds_load_u8 v122, v31 offset:8352
	ds_load_u8 v123, v31 offset:8320
	ds_load_u8 v124, v31 offset:8416
	ds_load_u8 v125, v31 offset:8384
	ds_load_u8 v126, v31 offset:8432
	ds_load_u8 v127, v31 offset:8400
	ds_load_u8 v128, v31 offset:8368
	ds_load_u8 v129, v31 offset:8336
	ds_load_u8 v130, v31 offset:8992
	ds_load_u8 v131, v31 offset:8960
	ds_load_u8 v132, v31 offset:9056
	ds_load_u8 v133, v31 offset:9024
	ds_load_u8 v134, v31 offset:9072
	ds_load_u8 v135, v31 offset:9040
	ds_load_u8 v136, v31 offset:9008
	ds_load_u8 v137, v31 offset:8976
	ds_load_u8 v138, v31 offset:8864
	ds_load_u8 v139, v31 offset:8832
	ds_load_u8 v140, v31 offset:8928
	ds_load_u8 v141, v31 offset:8896
	ds_load_u8 v142, v31 offset:8944
	ds_load_u8 v143, v31 offset:8912
	ds_load_u8 v144, v31 offset:8880
	ds_load_u8 v145, v31 offset:8848
	ds_load_u8 v56, v31 offset:8736
	ds_load_u8 v57, v31 offset:8704
	ds_load_u8 v58, v31 offset:8800
	ds_load_u8 v59, v31 offset:8768
	ds_load_u8 v60, v31 offset:8816
	ds_load_u8 v61, v31 offset:8784
	ds_load_u8 v62, v31 offset:8752
	ds_load_u8 v63, v31 offset:8720
	ds_load_u8 v64, v31 offset:9120
	ds_load_u8 v65, v31 offset:9088
	ds_load_u8 v66, v31 offset:9184
	ds_load_u8 v67, v31 offset:9152
	ds_load_u8 v68, v31 offset:9216
	ds_load_u8 v69, v31 offset:9168
	ds_load_u8 v70, v31 offset:9136
	ds_load_u8 v71, v31 offset:9104
	ds_load_u8 v72, v35 offset:5760
	ds_load_u8 v73, v35 offset:6016
	ds_load_u8 v74, v35 offset:6272
	ds_load_u8 v75, v35 offset:6144
	ds_load_u8 v166, v35 offset:5888
	ds_load_u8 v167, v35 offset:5632
	ds_load_u8 v168, v35 offset:5504
	ds_load_u8 v169, v35 offset:5376
	ds_load_u8 v170, v35 offset:5248
	ds_load_u8 v171, v35 offset:5120
	ds_load_u8 v172, v35 offset:4736
	ds_load_u8 v173, v35 offset:4992
	ds_load_u8 v174, v35 offset:4864
	ds_load_u8 v175, v35 offset:4608
	ds_load_u8 v176, v35 offset:4480
	ds_load_u8 v177, v35 offset:4352
	ds_load_u8 v178, v35 offset:128
	ds_load_u8 v179, v35
	ds_load_u8 v180, v31 offset:10144
	ds_load_u8 v181, v31 offset:10208
	ds_load_u8 v182, v31 offset:10176
	ds_load_u8 v183, v53 offset:8192
	ds_load_u8 v184, v35 offset:7808
	ds_load_u8 v185, v53 offset:9216
	ds_load_u8 v186, v35 offset:8064
	ds_load_u8 v187, v35 offset:7936
	ds_load_u8 v188, v35 offset:7680
	ds_load_u8 v189, v35 offset:7552
	ds_load_u8 v190, v35 offset:7424
	ds_load_u8 v191, v35 offset:7296
	ds_load_u8 v192, v35 offset:7168
	ds_load_u8 v193, v35 offset:6784
	ds_load_u8 v194, v35 offset:7040
	ds_load_u8 v195, v35 offset:6912
	ds_load_u8 v196, v35 offset:6656
	ds_load_u8 v197, v35 offset:6528
	ds_load_u8 v198, v35 offset:6400
	ds_load_u8 v199, v31 offset:9632
	ds_load_u8 v200, v31 offset:9696
	ds_load_u8 v201, v31 offset:9664
	ds_load_u8 v202, v31 offset:9728
	ds_load_u8 v203, v31 offset:9712
	ds_load_u8 v204, v31 offset:9680
	ds_load_u8 v205, v31 offset:9648
	ds_load_u8 v206, v31 offset:9616
	ds_load_u8 v207, v31 offset:9600
	ds_load_u8 v208, v31 offset:9504
	ds_load_u8 v209, v31 offset:9568
	ds_load_u8 v210, v31 offset:9536
	ds_load_u8 v211, v31 offset:9584
	ds_load_u8 v212, v31 offset:9552
	ds_load_u8 v213, v31 offset:9520
	ds_load_u8 v214, v31 offset:9488
	ds_load_u8 v215, v31 offset:9472
	ds_load_u8 v216, v31 offset:9376
	ds_load_u8 v217, v31 offset:9440
	ds_load_u8 v218, v31 offset:9408
	ds_load_u8 v219, v31 offset:9456
	ds_load_u8 v220, v31 offset:9424
	ds_load_u8 v221, v31 offset:9392
	ds_load_u8 v222, v31 offset:9360
	ds_load_u8 v223, v31 offset:9344
	ds_load_u8 v224, v31 offset:9248
	ds_load_u8 v225, v31 offset:9312
	ds_load_u8 v226, v31 offset:9280
	ds_load_u8 v227, v31 offset:9328
	ds_load_u8 v228, v31 offset:9296
	ds_load_u8 v229, v31 offset:9264
	ds_load_u8 v230, v31 offset:9232
	ds_load_u8 v231, v31 offset:10112
	ds_load_u8 v232, v31 offset:10016
	ds_load_u8 v233, v31 offset:10080
	ds_load_u8 v234, v31 offset:10048
	ds_load_u8 v235, v31 offset:10096
	ds_load_u8 v236, v31 offset:10064
	ds_load_u8 v237, v31 offset:10032
	ds_load_u8 v238, v31 offset:10000
	ds_load_u8 v239, v31 offset:9984
	ds_load_u8 v240, v31 offset:9888
	ds_load_u8 v241, v31 offset:9952
	ds_load_u8 v242, v31 offset:9920
	ds_load_u8 v243, v31 offset:9968
	ds_load_u8 v244, v31 offset:9936
	ds_load_u8 v245, v31 offset:9904
	ds_load_u8 v246, v31 offset:9872
	ds_load_u8 v247, v31 offset:9856
	ds_load_u8 v248, v31 offset:9760
	ds_load_u8 v249, v31 offset:9824
	ds_load_u8 v250, v31 offset:9792
	ds_load_u8 v251, v31 offset:9840
	ds_load_u8 v252, v31 offset:9808
	ds_load_u8 v253, v31 offset:9776
	ds_load_u8 v254, v31 offset:9744
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v31 offset:10192
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v31 offset:10160
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v31 offset:10128
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_perm_b32 v117, v123, v122, 0xc0c0004
	v_perm_b32 v122, v125, v124, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v11, v13, 0xc0c0004
	v_perm_b32 v11, v79, v54, 0xc0c0004
	v_perm_b32 v13, v78, v55, 0xc0c0004
	v_perm_b32 v78, v83, v82, 0xc0c0004
	v_perm_b32 v79, v81, v80, 0xc0c0004
	v_perm_b32 v80, v87, v84, 0xc0c0004
	v_perm_b32 v81, v86, v85, 0xc0c0004
	v_perm_b32 v82, v179, v178, 0xc0c0004
	v_perm_b32 v83, v89, v88, 0xc0c0004
	v_perm_b32 v84, v65, v64, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v67, v131, v130, 0xc0c0004
	v_perm_b32 v85, v133, v132, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v59, v95, v90, 0xc0c0004
	v_perm_b32 v89, v94, v91, 0xc0c0004
	v_perm_b32 v90, v99, v98, 0xc0c0004
	v_perm_b32 v91, v97, v96, 0xc0c0004
	v_perm_b32 v94, v103, v100, 0xc0c0004
	v_perm_b32 v95, v102, v101, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v77, v105, v104, 0xc0c0004
	v_perm_b32 v96, v113, v112, 0xc0c0004
	v_perm_b32 v97, v111, v110, 0xc0c0004
	v_perm_b32 v98, v121, v120, 0xc0c0004
	v_perm_b32 v99, v119, v118, 0xc0c0004
	v_perm_b32 v100, v129, v128, 0xc0c0004
	v_perm_b32 v101, v127, v126, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v12, v16, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v71, v70, 0xc0c0004
	v_perm_b32 v70, v69, v183, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v71, v207, v199, 0xc0c0004
	v_perm_b32 v105, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v110, v215, v208, 0xc0c0004
	v_perm_b32 v111, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v112, v223, v216, 0xc0c0004
	v_perm_b32 v113, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v118, v68, v224, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v119, v226, v225, 0xc0c0004
	v_perm_b32 v120, v167, v72, 0xc0c0004
	v_perm_b32 v121, v166, v73, 0xc0c0004
	v_perm_b32 v123, v171, v170, 0xc0c0004
	v_perm_b32 v124, v169, v168, 0xc0c0004
	v_perm_b32 v125, v175, v172, 0xc0c0004
	v_perm_b32 v126, v174, v173, 0xc0c0004
	v_perm_b32 v127, v93, v92, 0xc0c0004
	v_perm_b32 v128, v177, v176, 0xc0c0004
	v_perm_b32 v86, v139, v138, 0xc0c0004
	v_perm_b32 v87, v141, v140, 0xc0c0004
	v_perm_b32 v88, v57, v56, 0xc0c0004
	v_perm_b32 v15, v137, v136, 0xc0c0004
	v_perm_b32 v16, v135, v134, 0xc0c0004
	v_perm_b32 v102, v145, v144, 0xc0c0004
	v_perm_b32 v103, v143, v142, 0xc0c0004
	v_perm_b32 v104, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v129, v231, v180, 0xc0c0004
	v_perm_b32 v130, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v131, v239, v232, 0xc0c0004
	v_perm_b32 v132, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v133, v247, v240, 0xc0c0004
	v_perm_b32 v134, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v135, v202, v248, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v136, v250, v249, 0xc0c0004
	v_perm_b32 v137, v188, v184, 0xc0c0004
	v_perm_b32 v138, v187, v186, 0xc0c0004
	v_perm_b32 v139, v192, v191, 0xc0c0004
	v_perm_b32 v140, v190, v189, 0xc0c0004
	v_perm_b32 v141, v196, v193, 0xc0c0004
	v_perm_b32 v142, v195, v194, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v75, v198, v197, 0xc0c0004
	v_perm_b32 v143, v206, v205, 0xc0c0004
	v_perm_b32 v144, v204, v203, 0xc0c0004
	v_perm_b32 v145, v214, v213, 0xc0c0004
	v_perm_b32 v166, v212, v211, 0xc0c0004
	v_perm_b32 v167, v222, v221, 0xc0c0004
	v_perm_b32 v168, v220, v219, 0xc0c0004
	v_perm_b32 v169, v230, v229, 0xc0c0004
	v_perm_b32 v170, v228, v227, 0xc0c0004
	v_lshl_or_b32 v57, v108, 16, v106
	v_lshl_or_b32 v56, v116, 16, v114
	v_lshl_or_b32 v55, v122, 16, v117
	v_lshl_or_b32 v54, v9, 16, v10
	v_lshl_or_b32 v65, v13, 16, v11
	v_lshl_or_b32 v64, v79, 16, v78
	v_lshl_or_b32 v63, v81, 16, v80
	v_lshl_or_b32 v62, v83, 16, v82
	v_lshl_or_b32 v81, v66, 16, v84
	v_lshl_or_b32 v80, v85, 16, v67
	v_lshl_or_b32 v85, v89, 16, v59
	v_lshl_or_b32 v84, v91, 16, v90
	v_lshl_or_b32 v69, v97, 16, v96
	v_lshl_or_b32 v68, v99, 16, v98
	v_lshl_or_b32 v67, v101, 16, v100
	v_lshl_or_b32 v66, v14, 16, v12
	v_lshl_or_b32 v89, v70, 16, v61
	v_lshl_or_b32 v73, v105, 16, v71
	v_lshl_or_b32 v72, v111, 16, v110
	v_lshl_or_b32 v71, v113, 16, v112
	v_lshl_or_b32 v70, v119, 16, v118
	v_lshl_or_b32 v93, v121, 16, v120
	v_lshl_or_b32 v92, v124, 16, v123
	v_lshl_or_b32 v91, v126, 16, v125
	v_lshl_or_b32 v90, v128, 16, v127
	v_perm_b32 v171, v238, v237, 0xc0c0004
	v_perm_b32 v172, v236, v235, 0xc0c0004
	v_perm_b32 v173, v246, v245, 0xc0c0004
	v_perm_b32 v174, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v175, v254, v253, 0xc0c0004
	v_perm_b32 v176, v252, v251, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v115, v109, 0xc0c0004
	v_perm_b32 v115, v107, v185, 0xc0c0004
	v_lshl_or_b32 v79, v87, 16, v86
	v_lshl_or_b32 v78, v58, 16, v88
	v_lshl_or_b32 v83, v95, 16, v94
	v_lshl_or_b32 v82, v77, 16, v76
	v_lshl_or_b32 v88, v16, 16, v15
	v_lshl_or_b32 v87, v103, 16, v102
	v_lshl_or_b32 v86, v60, 16, v104
	v_lshl_or_b32 v97, v130, 16, v129
	v_lshl_or_b32 v96, v132, 16, v131
	v_lshl_or_b32 v95, v134, 16, v133
	v_lshl_or_b32 v94, v136, 16, v135
	v_lshl_or_b32 v101, v138, 16, v137
	v_lshl_or_b32 v100, v140, 16, v139
	v_lshl_or_b32 v99, v142, 16, v141
	v_lshl_or_b32 v98, v75, 16, v74
	v_lshl_or_b32 v105, v144, 16, v143
	v_lshl_or_b32 v104, v166, 16, v145
	v_lshl_or_b32 v103, v168, 16, v167
	v_lshl_or_b32 v102, v170, 16, v169
	v_wmma_i32_16x16x16_iu8 v[9:16], v[62:65], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[62:65], v[66:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[90:93], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v172, 16, v171
	v_lshl_or_b32 v107, v174, 16, v173
	v_lshl_or_b32 v106, v176, 16, v175
	v_lshl_or_b32 v109, v115, 16, v109
	v_wmma_i32_16x16x16_iu8 v[70:77], v[90:93], v[102:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[82:85], v[78:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[94:97], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[82:85], v[86:89], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[98:101], v[106:109], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v80, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v65, v65, v80 :: v_dual_lshlrev_b32 v78, 16, v146
	v_dual_mul_f32 v14, v14, v78 :: v_dual_lshlrev_b32 v79, 16, v147
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v16, v16, v78 :: v_dual_lshlrev_b32 v81, 16, v149
	v_dual_mul_f32 v10, v10, v78 :: v_dual_add_nc_u32 v47, s30, v47
	v_dual_mul_f32 v9, v9, v78 :: v_dual_add_nc_u32 v48, s30, v48
	v_dual_mul_f32 v12, v12, v78 :: v_dual_add_nc_u32 v49, s22, v49
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v13, v13, v78 :: v_dual_lshlrev_b32 v82, 16, v151
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v15, v15, v78 :: v_dual_lshlrev_b32 v84, 16, v153
	v_dual_mul_f32 v54, v79, v54 :: v_dual_lshlrev_b32 v85, 16, v152
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v57, v79, v57 :: v_dual_lshlrev_b32 v90, 16, v159
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v55, v79, v55 :: v_dual_lshlrev_b32 v92, 16, v161
	v_dual_mul_f32 v58, v79, v58 :: v_dual_lshlrev_b32 v93, 16, v160
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v73, v81, v73 :: v_dual_lshlrev_b32 v94, 16, v163
	v_mul_f32_e32 v11, v11, v78
	v_dual_mul_f32 v62, v62, v80 :: v_dual_lshlrev_b32 v83, 16, v150
	v_dual_mul_f32 v67, v67, v80 :: v_dual_lshlrev_b32 v86, 16, v155
	v_dual_mul_f32 v64, v64, v80 :: v_dual_lshlrev_b32 v87, 16, v154
	v_dual_mul_f32 v66, v66, v80 :: v_dual_lshlrev_b32 v91, 16, v158
	v_dual_mul_f32 v68, v68, v80 :: v_dual_lshlrev_b32 v95, 16, v162
	v_dual_mul_f32 v56, v79, v56 :: v_dual_mul_f32 v75, v81, v75
	v_dual_mul_f32 v72, v81, v72 :: v_dual_mul_f32 v59, v79, v59
	v_dual_mul_f32 v60, v79, v60 :: v_dual_mul_f32 v77, v81, v77
	v_dual_mul_f32 v61, v79, v61 :: v_dual_mul_f32 v76, v81, v76
	v_dual_mul_f32 v63, v63, v80 :: v_dual_add_nc_u32 v50, s22, v50
	v_dual_mul_f32 v69, v69, v80 :: v_dual_lshlrev_b32 v88, 16, v157
	v_dual_mul_f32 v70, v81, v70 :: v_dual_lshlrev_b32 v89, 16, v156
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v71, v81, v71 :: v_dual_lshlrev_b32 v96, 16, v165
	v_dual_mul_f32 v74, v81, v74 :: v_dual_lshlrev_b32 v97, 16, v164
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v30, v9, v83 :: v_dual_fmac_f32 v39, v10, v82
	v_dual_fmac_f32 v26, v55, v82 :: v_dual_fmac_f32 v25, v54, v83
	v_dual_fmac_f32 v34, v11, v87 :: v_dual_fmac_f32 v33, v12, v86
	v_dual_fmac_f32 v24, v57, v86 :: v_dual_fmac_f32 v23, v56, v87
	v_dual_fmac_f32 v32, v13, v91 :: v_dual_fmac_f32 v29, v14, v90
	v_dual_fmac_f32 v20, v59, v90 :: v_dual_fmac_f32 v19, v58, v91
	v_dual_fmac_f32 v28, v15, v95 :: v_dual_fmac_f32 v27, v16, v94
	v_dual_fmac_f32 v17, v61, v94 :: v_dual_fmac_f32 v18, v60, v95
	v_dual_fmac_f32 v30, v62, v85 :: v_dual_fmac_f32 v39, v63, v84
	v_dual_fmac_f32 v34, v64, v89 :: v_dual_fmac_f32 v33, v65, v88
	v_dual_fmac_f32 v32, v66, v93 :: v_dual_fmac_f32 v29, v67, v92
	v_dual_fmac_f32 v28, v68, v97 :: v_dual_fmac_f32 v27, v69, v96
	v_dual_fmac_f32 v25, v70, v85 :: v_dual_fmac_f32 v26, v71, v84
	v_dual_fmac_f32 v23, v72, v89 :: v_dual_fmac_f32 v24, v73, v88
	v_dual_fmac_f32 v19, v74, v93 :: v_dual_fmac_f32 v20, v75, v92
	v_dual_fmac_f32 v18, v76, v97 :: v_dual_fmac_f32 v17, v77, v96
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v30, 16, 1
	v_bfe_u32 v4, v39, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s23, v21
	s_mul_i32 s0, s28, s23
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x78, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s0, s2
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v30, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v4, v39, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v8, s1, v1, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v34, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v5, v32, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v33, 16, 1
	v_bfe_u32 v6, v29, 16, 1
	v_add3_u32 v1, v34, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_cmp_o_f32_e64 s0, v33, v33
	v_add3_u32 v4, v33, v4, 0x7fff
	v_add3_u32 v5, v32, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v32, v32
	v_add3_u32 v6, v29, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v29, v29
	v_bfe_u32 v7, v28, 16, 1
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s1
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s2
	v_add3_u32 v5, v28, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_bfe_u32 v6, v27, 16, 1
	v_mov_b16_e32 v3.l, v26.h
	v_mov_b16_e32 v10.l, v23.h
	v_mov_b16_e32 v10.h, v3.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v6, v27, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v7.l, v25.h
	v_mov_b16_e32 v7.h, v3.h
	v_and_b32_e32 v9, 1, v3
	v_mov_b16_e32 v3.l, v24.h
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v10
	v_dual_mov_b32 v12, 0x7632 :: v_dual_and_b32 v7, 1, v7
	v_add3_u32 v9, v26, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_and_b32_e32 v10, 1, v3
	v_add3_u32 v6, v23, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v23, v23
	v_mov_b16_e32 v3.l, v20.h
	v_add3_u32 v7, v25, v7, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v10, v24, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_mov_b16_e32 v11.l, v19.h
	v_mov_b16_e32 v11.h, v3.h
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v3
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v9.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s0
	v_and_b32_e32 v10, 1, v11
	v_mov_b16_e32 v11.l, v18.h
	v_mov_b16_e32 v3.l, v17.h
	v_add3_u32 v6, v20, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_add3_u32 v10, v19, v10, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v12, 0x3276, v12, s0
	v_add3_u32 v11, v18, v11, 0x7fff
	v_add3_u32 v3, v17, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v17, v17
	v_cmp_o_f32_e64 s2, v18, v18
	v_cndmask_b16 v6.l, 0x7fff, v10.h, vcc_lo
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v10, v12, 8, v12
	v_cndmask_b32_e64 v13, v4, v2, s0
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v11.h, s2
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v4, v5, v1, s0
	v_cndmask_b32_e64 v1, v1, v5, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v5, 0x760076, v10
	v_cndmask_b32_e64 v10, v6, v9, s0
	v_cndmask_b32_e64 v6, v9, v6, s0
	v_cndmask_b32_e64 v9, v3, v7, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v3, v7, v3, s0
	s_mov_b32 s1, 0x76543210
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s3, s23, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v2, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v0
	v_and_b32_e32 v11, 0x7060706, v5
	v_permlanex16_b32 v5, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v13, v7
	v_perm_b32 v1, v2, v13, v11
	v_perm_b32 v2, v5, v4, v7
	v_perm_b32 v3, v5, v4, v11
	v_perm_b32 v4, v6, v10, v7
	v_perm_b32 v5, v6, v10, v11
	v_perm_b32 v6, v12, v9, v7
	v_perm_b32 v7, v12, v9, v11
	v_lshlrev_b32_e32 v9, 1, v8
	v_add_lshl_u32 v8, v8, s3, 1
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v9, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 255
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 255
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6396
; TotalNumSgprs: 33
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 255
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     255
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
