	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[26:27], s[0:1], 0x20
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
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
	v_lshlrev_b32_e32 v33, 2, v0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s12, 0
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
	s_add_i32 s15, s28, 0xff
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
	s_lshl_b32 s29, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s15, 0x100
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s15, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s16, s28, 31
.Ltmp16:
	.loc	1 312 26 is_stmt 1              ; generate_amdgcn.py:312:26
	s_lshl_b32 s1, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s3, s16, 31
.Ltmp19:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v34, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp22:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_bfe_u32 v2, v0, 4, 1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s16, s16, s0
.Ltmp24:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s15, 8
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s16, 5
.Ltmp26:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v9, s1, v34
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x70, v3
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v4, 7, v0
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v51, 0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v7, s29, v1
	v_or3_b32 v37, v2, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v2, 32, v9
	v_or_b32_e32 v8, v3, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v5, 4, v4
	v_or_b32_e32 v10, 16, v7
	v_mul_lo_u32 v38, v7, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v3, s25, v2
	v_mul_lo_u32 v7, s25, v9
	v_mul_lo_u32 v2, s24, v2
	v_mul_lo_u32 v39, v10, s30
	v_or_b32_e32 v40, 2, v37
	v_or_b32_e32 v41, 4, v37
	v_or_b32_e32 v42, 6, v37
	v_or_b32_e32 v43, 8, v37
	v_add3_u32 v3, v3, s0, v5
	v_add3_u32 v5, v7, s0, v5
	v_mul_lo_u32 v7, s24, v9
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v4, 2, v4
	v_lshlrev_b32_e32 v6, 4, v0
	v_add_nc_u32_e32 v35, 0, v1
	v_or_b32_e32 v1, 0x3f0, v0
	v_add_nc_u32_e32 v36, 0, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v47, s0, v3
	v_subrev_nc_u32_e32 v48, s0, v5
	v_add3_u32 v49, v2, s29, v4
	v_add3_u32 v50, v7, s29, v4
	v_add_nc_u32_e32 v52, 0, v6
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v53, 0, v1
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v44, 10, v37
	v_or_b32_e32 v45, 12, v37
	v_or_b32_e32 v46, 14, v37
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_mov_b32 s23, 0x31027000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s31, s25, 8
	s_lshl_b32 s24, s24, 8
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v9, s1, v34
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s1, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v57, v39, s16, 1
	v_add_lshl_u32 v56, v38, s16, 1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v9, 0x80000000, v50, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v10
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v10, 0x80000000, v48, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b32 v54, v9, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v49, s0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v14, 0x80000000, v47, s0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s1, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s30
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s25
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[9:12], v10, s[4:7], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b32 v55, v13, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[13:16], v14, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v58, v37, s16, 1
	v_add_lshl_u32 v59, v40, s16, 1
	v_add_lshl_u32 v60, v41, s16, 1
	v_add_lshl_u32 v61, v42, s16, 1
	v_add_lshl_u32 v62, v43, s16, 1
	v_add_lshl_u32 v63, v44, s16, 1
	v_add_lshl_u32 v64, v45, s16, 1
	v_add_lshl_u32 v65, v46, s16, 1
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s0, s25
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v66, v38, s0, 1
	v_add_lshl_u32 v67, v39, s0, 1
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v68, v37, s16, 1
	v_add_lshl_u32 v69, v40, s16, 1
	v_add_lshl_u32 v70, v41, s16, 1
	v_add_lshl_u32 v71, v42, s16, 1
	v_add_lshl_u32 v72, v43, s16, 1
	v_add_lshl_u32 v73, v44, s16, 1
	v_add_lshl_u32 v74, v45, s16, 1
	v_add_lshl_u32 v75, v46, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s3, -1
	s_addk_i32 s1, 0x100
	s_cmp_lg_u32 s3, 0
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
	s_clause 0x1
	buffer_load_u16 v146, v56, s[12:15], 0 offen
	buffer_load_u16 v147, v57, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v148, v58, s[8:11], 0 offen
	buffer_load_u16 v149, v59, s[8:11], 0 offen
	buffer_load_u16 v150, v60, s[8:11], 0 offen
	buffer_load_u16 v151, v61, s[8:11], 0 offen
	buffer_load_u16 v152, v62, s[8:11], 0 offen
	buffer_load_u16 v153, v63, s[8:11], 0 offen
	buffer_load_u16 v154, v64, s[8:11], 0 offen
	buffer_load_u16 v155, v65, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v156, v66, s[12:15], 0 offen
	buffer_load_u16 v157, v67, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v158, v68, s[8:11], 0 offen
	buffer_load_u16 v159, v69, s[8:11], 0 offen
	buffer_load_u16 v160, v70, s[8:11], 0 offen
	buffer_load_u16 v161, v71, s[8:11], 0 offen
	buffer_load_u16 v162, v72, s[8:11], 0 offen
	buffer_load_u16 v163, v73, s[8:11], 0 offen
	buffer_load_u16 v164, v74, s[8:11], 0 offen
	buffer_load_u16 v165, v75, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v35 offset:8288
	ds_load_u8 v10, v35 offset:8256
	ds_load_u8 v11, v35 offset:8192
	ds_load_u8 v12, v35 offset:8208
	ds_load_u8 v13, v35 offset:8224
	ds_load_u8 v14, v35 offset:8304
	ds_load_u8 v15, v35 offset:8272
	ds_load_u8 v16, v35 offset:8240
	ds_load_u8 v54, v36 offset:1664
	ds_load_u8 v55, v36 offset:1920
	ds_load_u8 v76, v36 offset:2176
	ds_load_u8 v77, v36 offset:2048
	ds_load_u8 v78, v36 offset:1792
	ds_load_u8 v79, v36 offset:1536
	ds_load_u8 v80, v36 offset:1408
	ds_load_u8 v81, v36 offset:1280
	ds_load_u8 v82, v36 offset:1152
	ds_load_u8 v83, v36 offset:1024
	ds_load_u8 v84, v36 offset:640
	ds_load_u8 v85, v36 offset:896
	ds_load_u8 v86, v36 offset:768
	ds_load_u8 v87, v36 offset:512
	ds_load_u8 v88, v36 offset:384
	ds_load_u8 v89, v36 offset:256
	ds_load_u8 v90, v36 offset:3712
	ds_load_u8 v91, v36 offset:3968
	ds_load_u8 v92, v36 offset:4224
	ds_load_u8 v93, v36 offset:4096
	ds_load_u8 v94, v36 offset:3840
	ds_load_u8 v95, v36 offset:3584
	ds_load_u8 v96, v36 offset:3456
	ds_load_u8 v97, v36 offset:3328
	ds_load_u8 v98, v36 offset:3200
	ds_load_u8 v99, v36 offset:3072
	ds_load_u8 v100, v36 offset:2688
	ds_load_u8 v101, v36 offset:2944
	ds_load_u8 v102, v36 offset:2816
	ds_load_u8 v103, v36 offset:2560
	ds_load_u8 v104, v36 offset:2432
	ds_load_u8 v105, v36 offset:2304
	ds_load_u8 v106, v35 offset:8608
	ds_load_u8 v107, v35 offset:8576
	ds_load_u8 v108, v35 offset:8672
	ds_load_u8 v109, v35 offset:8640
	ds_load_u8 v110, v35 offset:8688
	ds_load_u8 v111, v35 offset:8656
	ds_load_u8 v112, v35 offset:8624
	ds_load_u8 v113, v35 offset:8592
	ds_load_u8 v114, v35 offset:8480
	ds_load_u8 v115, v35 offset:8448
	ds_load_u8 v116, v35 offset:8544
	ds_load_u8 v117, v35 offset:8512
	ds_load_u8 v118, v35 offset:8560
	ds_load_u8 v119, v35 offset:8528
	ds_load_u8 v120, v35 offset:8496
	ds_load_u8 v121, v35 offset:8464
	ds_load_u8 v122, v35 offset:8352
	ds_load_u8 v123, v35 offset:8320
	ds_load_u8 v124, v35 offset:8416
	ds_load_u8 v125, v35 offset:8384
	ds_load_u8 v126, v35 offset:8432
	ds_load_u8 v127, v35 offset:8400
	ds_load_u8 v128, v35 offset:8368
	ds_load_u8 v129, v35 offset:8336
	ds_load_u8 v130, v35 offset:8992
	ds_load_u8 v131, v35 offset:8960
	ds_load_u8 v132, v35 offset:9056
	ds_load_u8 v133, v35 offset:9024
	ds_load_u8 v134, v35 offset:9072
	ds_load_u8 v135, v35 offset:9040
	ds_load_u8 v136, v35 offset:9008
	ds_load_u8 v137, v35 offset:8976
	ds_load_u8 v138, v35 offset:8864
	ds_load_u8 v139, v35 offset:8832
	ds_load_u8 v140, v35 offset:8928
	ds_load_u8 v141, v35 offset:8896
	ds_load_u8 v142, v35 offset:8944
	ds_load_u8 v143, v35 offset:8912
	ds_load_u8 v144, v35 offset:8880
	ds_load_u8 v145, v35 offset:8848
	ds_load_u8 v56, v35 offset:8736
	ds_load_u8 v57, v35 offset:8704
	ds_load_u8 v58, v35 offset:8800
	ds_load_u8 v59, v35 offset:8768
	ds_load_u8 v60, v35 offset:8816
	ds_load_u8 v61, v35 offset:8784
	ds_load_u8 v62, v35 offset:8752
	ds_load_u8 v63, v35 offset:8720
	ds_load_u8 v64, v35 offset:9120
	ds_load_u8 v65, v35 offset:9088
	ds_load_u8 v66, v35 offset:9184
	ds_load_u8 v67, v35 offset:9152
	ds_load_u8 v68, v35 offset:9216
	ds_load_u8 v69, v35 offset:9168
	ds_load_u8 v70, v35 offset:9136
	ds_load_u8 v71, v35 offset:9104
	ds_load_u8 v72, v36 offset:5760
	ds_load_u8 v73, v36 offset:6016
	ds_load_u8 v74, v36 offset:6272
	ds_load_u8 v75, v36 offset:6144
	ds_load_u8 v166, v36 offset:5888
	ds_load_u8 v167, v36 offset:5632
	ds_load_u8 v168, v36 offset:5504
	ds_load_u8 v169, v36 offset:5376
	ds_load_u8 v170, v36 offset:5248
	ds_load_u8 v171, v36 offset:5120
	ds_load_u8 v172, v36 offset:4736
	ds_load_u8 v173, v36 offset:4992
	ds_load_u8 v174, v36 offset:4864
	ds_load_u8 v175, v36 offset:4608
	ds_load_u8 v176, v36 offset:4480
	ds_load_u8 v177, v36 offset:4352
	ds_load_u8 v178, v36 offset:128
	ds_load_u8 v179, v36
	ds_load_u8 v180, v35 offset:10144
	ds_load_u8 v181, v35 offset:10208
	ds_load_u8 v182, v35 offset:10176
	ds_load_u8 v183, v53 offset:8192
	ds_load_u8 v184, v36 offset:7808
	ds_load_u8 v185, v53 offset:9216
	ds_load_u8 v186, v36 offset:8064
	ds_load_u8 v187, v36 offset:7936
	ds_load_u8 v188, v36 offset:7680
	ds_load_u8 v189, v36 offset:7552
	ds_load_u8 v190, v36 offset:7424
	ds_load_u8 v191, v36 offset:7296
	ds_load_u8 v192, v36 offset:7168
	ds_load_u8 v193, v36 offset:6784
	ds_load_u8 v194, v36 offset:7040
	ds_load_u8 v195, v36 offset:6912
	ds_load_u8 v196, v36 offset:6656
	ds_load_u8 v197, v36 offset:6528
	ds_load_u8 v198, v36 offset:6400
	ds_load_u8 v199, v35 offset:9632
	ds_load_u8 v200, v35 offset:9696
	ds_load_u8 v201, v35 offset:9664
	ds_load_u8 v202, v35 offset:9728
	ds_load_u8 v203, v35 offset:9712
	ds_load_u8 v204, v35 offset:9680
	ds_load_u8 v205, v35 offset:9648
	ds_load_u8 v206, v35 offset:9616
	ds_load_u8 v207, v35 offset:9600
	ds_load_u8 v208, v35 offset:9504
	ds_load_u8 v209, v35 offset:9568
	ds_load_u8 v210, v35 offset:9536
	ds_load_u8 v211, v35 offset:9584
	ds_load_u8 v212, v35 offset:9552
	ds_load_u8 v213, v35 offset:9520
	ds_load_u8 v214, v35 offset:9488
	ds_load_u8 v215, v35 offset:9472
	ds_load_u8 v216, v35 offset:9376
	ds_load_u8 v217, v35 offset:9440
	ds_load_u8 v218, v35 offset:9408
	ds_load_u8 v219, v35 offset:9456
	ds_load_u8 v220, v35 offset:9424
	ds_load_u8 v221, v35 offset:9392
	ds_load_u8 v222, v35 offset:9360
	ds_load_u8 v223, v35 offset:9344
	ds_load_u8 v224, v35 offset:9248
	ds_load_u8 v225, v35 offset:9312
	ds_load_u8 v226, v35 offset:9280
	ds_load_u8 v227, v35 offset:9328
	ds_load_u8 v228, v35 offset:9296
	ds_load_u8 v229, v35 offset:9264
	ds_load_u8 v230, v35 offset:9232
	ds_load_u8 v231, v35 offset:10112
	ds_load_u8 v232, v35 offset:10016
	ds_load_u8 v233, v35 offset:10080
	ds_load_u8 v234, v35 offset:10048
	ds_load_u8 v235, v35 offset:10096
	ds_load_u8 v236, v35 offset:10064
	ds_load_u8 v237, v35 offset:10032
	ds_load_u8 v238, v35 offset:10000
	ds_load_u8 v239, v35 offset:9984
	ds_load_u8 v240, v35 offset:9888
	ds_load_u8 v241, v35 offset:9952
	ds_load_u8 v242, v35 offset:9920
	ds_load_u8 v243, v35 offset:9968
	ds_load_u8 v244, v35 offset:9936
	ds_load_u8 v245, v35 offset:9904
	ds_load_u8 v246, v35 offset:9872
	ds_load_u8 v247, v35 offset:9856
	ds_load_u8 v248, v35 offset:9760
	ds_load_u8 v249, v35 offset:9824
	ds_load_u8 v250, v35 offset:9792
	ds_load_u8 v251, v35 offset:9840
	ds_load_u8 v252, v35 offset:9808
	ds_load_u8 v253, v35 offset:9776
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v35 offset:9744
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v35 offset:10192
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v35 offset:10160
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v35 offset:10128
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v123, v125, v124, 0xc0c0004
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
	v_perm_b32 v96, v113, v112, 0xc0c0004
	v_perm_b32 v97, v111, v110, 0xc0c0004
	v_perm_b32 v98, v121, v120, 0xc0c0004
	v_perm_b32 v99, v119, v118, 0xc0c0004
	v_perm_b32 v100, v129, v128, 0xc0c0004
	v_perm_b32 v101, v127, v126, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v12, v16, 0xc0c0004
	v_perm_b32 v86, v139, v138, 0xc0c0004
	v_perm_b32 v87, v141, v140, 0xc0c0004
	v_perm_b32 v88, v57, v56, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v77, v105, v104, 0xc0c0004
	v_perm_b32 v15, v137, v136, 0xc0c0004
	v_perm_b32 v16, v135, v134, 0xc0c0004
	v_perm_b32 v102, v145, v144, 0xc0c0004
	v_perm_b32 v103, v143, v142, 0xc0c0004
	v_perm_b32 v104, v63, v62, 0xc0c0004
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
	v_perm_b32 v124, v171, v170, 0xc0c0004
	v_perm_b32 v125, v169, v168, 0xc0c0004
	v_perm_b32 v126, v175, v172, 0xc0c0004
	v_perm_b32 v127, v174, v173, 0xc0c0004
	v_perm_b32 v128, v93, v92, 0xc0c0004
	v_perm_b32 v129, v177, v176, 0xc0c0004
	v_perm_b32 v144, v206, v205, 0xc0c0004
	v_perm_b32 v145, v204, v203, 0xc0c0004
	v_perm_b32 v166, v214, v213, 0xc0c0004
	v_perm_b32 v167, v212, v211, 0xc0c0004
	v_perm_b32 v168, v222, v221, 0xc0c0004
	v_perm_b32 v169, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v170, v230, v229, 0xc0c0004
	v_perm_b32 v171, v228, v227, 0xc0c0004
	v_lshl_or_b32 v57, v108, 16, v106
	v_lshl_or_b32 v56, v116, 16, v114
	v_lshl_or_b32 v55, v123, 16, v122
	v_lshl_or_b32 v54, v9, 16, v10
	v_lshl_or_b32 v65, v13, 16, v11
	v_lshl_or_b32 v64, v79, 16, v78
	v_lshl_or_b32 v63, v81, 16, v80
	v_lshl_or_b32 v62, v83, 16, v82
	v_lshl_or_b32 v81, v66, 16, v84
	v_lshl_or_b32 v80, v85, 16, v67
	v_lshl_or_b32 v69, v97, 16, v96
	v_lshl_or_b32 v68, v99, 16, v98
	v_lshl_or_b32 v67, v101, 16, v100
	v_lshl_or_b32 v66, v14, 16, v12
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v130, v231, v180, 0xc0c0004
	v_perm_b32 v131, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v132, v239, v232, 0xc0c0004
	v_perm_b32 v133, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v134, v247, v240, 0xc0c0004
	v_perm_b32 v135, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v136, v202, v248, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v137, v250, v249, 0xc0c0004
	v_perm_b32 v138, v188, v184, 0xc0c0004
	v_perm_b32 v139, v187, v186, 0xc0c0004
	v_perm_b32 v140, v192, v191, 0xc0c0004
	v_perm_b32 v141, v190, v189, 0xc0c0004
	v_perm_b32 v142, v196, v193, 0xc0c0004
	v_perm_b32 v143, v195, v194, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v75, v198, v197, 0xc0c0004
	v_perm_b32 v172, v238, v237, 0xc0c0004
	v_perm_b32 v173, v236, v235, 0xc0c0004
	v_perm_b32 v174, v246, v245, 0xc0c0004
	v_perm_b32 v175, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v176, v107, v253, 0xc0c0004
	v_perm_b32 v177, v252, v251, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v117, v115, 0xc0c0004
	v_perm_b32 v109, v109, v185, 0xc0c0004
	v_lshl_or_b32 v79, v87, 16, v86
	v_lshl_or_b32 v78, v58, 16, v88
	v_lshl_or_b32 v85, v89, 16, v59
	v_lshl_or_b32 v84, v91, 16, v90
	v_lshl_or_b32 v83, v95, 16, v94
	v_lshl_or_b32 v82, v77, 16, v76
	v_lshl_or_b32 v88, v16, 16, v15
	v_lshl_or_b32 v87, v103, 16, v102
	v_lshl_or_b32 v86, v60, 16, v104
	v_lshl_or_b32 v89, v70, 16, v61
	v_lshl_or_b32 v73, v105, 16, v71
	v_lshl_or_b32 v72, v111, 16, v110
	v_lshl_or_b32 v71, v113, 16, v112
	v_lshl_or_b32 v70, v119, 16, v118
	v_lshl_or_b32 v93, v121, 16, v120
	v_lshl_or_b32 v92, v125, 16, v124
	v_lshl_or_b32 v91, v127, 16, v126
	v_lshl_or_b32 v90, v129, 16, v128
	v_lshl_or_b32 v105, v145, 16, v144
	v_lshl_or_b32 v104, v167, 16, v166
	v_lshl_or_b32 v103, v169, 16, v168
	v_lshl_or_b32 v102, v171, 16, v170
	v_wmma_i32_16x16x16_iu8 v[9:16], v[62:65], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[62:65], v[66:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v131, 16, v130
	v_lshl_or_b32 v96, v133, 16, v132
	v_lshl_or_b32 v95, v135, 16, v134
	v_lshl_or_b32 v94, v137, 16, v136
	v_lshl_or_b32 v101, v139, 16, v138
	v_lshl_or_b32 v100, v141, 16, v140
	v_lshl_or_b32 v99, v143, 16, v142
	v_lshl_or_b32 v98, v75, 16, v74
	v_lshl_or_b32 v108, v173, 16, v172
	v_lshl_or_b32 v107, v175, 16, v174
	v_lshl_or_b32 v106, v177, 16, v176
	v_lshl_or_b32 v109, v109, 16, v115
	v_wmma_i32_16x16x16_iu8 v[62:69], v[90:93], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[90:93], v[102:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[82:85], v[78:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[82:85], v[86:89], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[94:97], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[98:101], v[106:109], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v79, 16, v147
	v_lshlrev_b32_e32 v78, 16, v146
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v50, s24, v50
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v59, v59, v79 :: v_dual_lshlrev_b32 v82, 16, v150
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v56, v56, v79 :: v_dual_lshlrev_b32 v85, 16, v153
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v61, v61, v79 :: v_dual_lshlrev_b32 v86, 16, v154
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v58, v58, v79 :: v_dual_lshlrev_b32 v89, 16, v157
	v_mul_f32_e32 v54, v54, v79
	v_mul_f32_e32 v55, v55, v79
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v60, v60, v79 :: v_dual_lshlrev_b32 v93, 16, v161
	v_dual_mul_f32 v57, v57, v79 :: v_dual_add_nc_u32 v48, s31, v48
	v_mul_f32_e32 v9, v9, v78
	v_dual_mul_f32 v10, v10, v78 :: v_dual_add_nc_u32 v49, s24, v49
	v_dual_mul_f32 v12, v12, v78 :: v_dual_add_nc_u32 v47, s31, v47
	v_dual_mul_f32 v11, v11, v78 :: v_dual_lshlrev_b32 v80, 16, v148
	v_dual_mul_f32 v14, v14, v78 :: v_dual_lshlrev_b32 v81, 16, v149
	v_dual_mul_f32 v16, v16, v78 :: v_dual_lshlrev_b32 v83, 16, v151
	v_dual_mul_f32 v13, v13, v78 :: v_dual_lshlrev_b32 v84, 16, v152
	v_dual_mul_f32 v15, v15, v78 :: v_dual_lshlrev_b32 v88, 16, v156
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v87, 16, v155
	v_lshlrev_b32_e32 v90, 16, v158
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v64, v64, v88 :: v_dual_lshlrev_b32 v91, 16, v159
	v_dual_mul_f32 v71, v71, v89 :: v_dual_lshlrev_b32 v92, 16, v160
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v65, v65, v88 :: v_dual_lshlrev_b32 v94, 16, v162
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v66, v66, v88 :: v_dual_lshlrev_b32 v95, 16, v163
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v73, v89 :: v_dual_lshlrev_b32 v96, 16, v164
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v68, v68, v88 :: v_dual_lshlrev_b32 v97, 16, v165
	v_mul_f32_e32 v62, v62, v88
	v_mul_f32_e32 v63, v63, v88
	v_dual_mul_f32 v67, v67, v88 :: v_dual_mul_f32 v70, v70, v89
	v_dual_mul_f32 v69, v69, v88 :: v_dual_mul_f32 v72, v72, v89
	v_dual_mul_f32 v74, v74, v89 :: v_dual_fmac_f32 v17, v9, v80
	v_dual_mul_f32 v75, v75, v89 :: v_dual_fmac_f32 v18, v54, v80
	v_dual_mul_f32 v76, v76, v89 :: v_dual_fmac_f32 v29, v11, v82
	v_dual_mul_f32 v77, v77, v89 :: v_dual_fmac_f32 v30, v56, v82
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v10, v81 :: v_dual_fmac_f32 v28, v57, v83
	v_dual_fmac_f32 v27, v12, v83 :: v_dual_fmac_f32 v32, v55, v81
	v_dual_fmac_f32 v25, v13, v84 :: v_dual_fmac_f32 v24, v59, v85
	v_dual_fmac_f32 v23, v14, v85 :: v_dual_fmac_f32 v22, v60, v86
	v_dual_fmac_f32 v21, v15, v86 :: v_dual_fmac_f32 v26, v58, v84
	v_dual_fmac_f32 v19, v16, v87 :: v_dual_fmac_f32 v18, v70, v90
	v_dual_fmac_f32 v20, v61, v87 :: v_dual_fmac_f32 v17, v62, v90
	v_dual_fmac_f32 v31, v63, v91 :: v_dual_fmac_f32 v30, v72, v92
	v_dual_fmac_f32 v29, v64, v92 :: v_dual_fmac_f32 v32, v71, v91
	v_dual_fmac_f32 v27, v65, v93 :: v_dual_fmac_f32 v26, v74, v94
	v_dual_fmac_f32 v25, v66, v94 :: v_dual_fmac_f32 v28, v73, v93
	v_dual_fmac_f32 v23, v67, v95 :: v_dual_fmac_f32 v22, v76, v96
	v_dual_fmac_f32 v21, v68, v96 :: v_dual_fmac_f32 v24, v75, v95
	v_fmac_f32_e32 v19, v69, v97
	v_fmac_f32_e32 v20, v77, v97
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 7, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v1, v0, 0, 1
	v_and_b32_e32 v3, 0x3f8, v33
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s29, s25
	v_mul_lo_u32 v2, s25, v2
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v1, 0x440, v1
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 14, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v3, v1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s0, v4, v2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_mov_b32 s0, 0
	v_lshl_or_b32 v4, v5, 10, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_nc_u32_e32 v6, 0, v4
	v_xad_u32 v7, v4, 8, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_xad_u32 v8, v4, 16, 0
	v_xad_u32 v9, v4, 24, 0
	v_xad_u32 v10, v4, 32, 0
	v_xad_u32 v11, v4, 40, 0
	ds_store_b64 v6, v[17:18]
	ds_store_b64 v7, v[31:32]
	ds_store_b64 v8, v[29:30]
	ds_store_b64 v9, v[27:28]
	ds_store_b64 v10, v[25:26]
	ds_store_b64 v11, v[23:24]
	v_add_co_u32 v23, vcc_lo, s26, v2
	v_xad_u32 v6, v4, 48, 0
	v_add_co_ci_u32_e64 v24, null, s27, v3, vcc_lo
	v_xad_u32 v4, v4, 56, 0
	ds_store_b64 v6, v[21:22]
	ds_store_b64 v4, v[19:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v19, v[23:24], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v0, 3, v0
	v_lshlrev_b32_e32 v4, 2, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v3, 0x440, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x380, v0
	v_xor_b32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v4, v2
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x808, v0, 0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v5, 0x1818, v0, 0
	v_xad_u32 v6, 0x2020, v0, 0
	v_xad_u32 v7, 0x2828, v0, 0
	v_xad_u32 v18, 0x3030, v0, 0
	v_xad_u32 v0, 0x3838, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v18
	ds_load_b64 v[2:3], v0
.LBB0_4:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v18, v19, v16
	global_atomic_cmpswap_b32 v0, v[23:24], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_4
; %bb.5:                                ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_6:                                ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_8:                                ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s25, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_10:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_12:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_14:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_16:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_18:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 4, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s26, v18
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_20:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s25, 18, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s26, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s27, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_22:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s25, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s26, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s27, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_24:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s25, 22, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s26, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s27, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_26:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s25, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s26, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s27, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_28:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s25, 26, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s26, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s27, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_30:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s25, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s26, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s27, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_32:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 30, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_34:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 254
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7560
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
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
