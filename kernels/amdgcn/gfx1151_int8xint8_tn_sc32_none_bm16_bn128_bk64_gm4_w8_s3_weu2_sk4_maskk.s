	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v10, 7, v0
	v_lshlrev_b32_e32 v9, 1, v0
	s_mov_b32 s12, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
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
	s_lshl_b32 s29, s2, 4
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
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v15, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s3, 27
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v1, 15, v0
	s_add_i32 s16, s16, s0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s15, 8
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s16, 5
.Ltmp24:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v8, s1, v15
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x70, v3
	v_bfe_u32 v2, v0, 4, 1
	v_or_b32_e32 v11, s29, v1
	v_add_nc_u32_e32 v20, 0, v1
	v_lshlrev_b32_e32 v4, 4, v10
	v_or_b32_e32 v7, v3, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v1, 32, v8
	v_or3_b32 v21, v2, v3, s2
	v_mul_lo_u32 v3, s25, v8
	v_mul_lo_u32 v23, v11, s30
	v_mov_b32_e32 v19, 0
	v_mul_lo_u32 v2, s25, v1
	v_mul_lo_u32 v1, s24, v1
	v_or_b32_e32 v24, 2, v21
	v_or_b32_e32 v25, 4, v21
	v_or_b32_e32 v26, 6, v21
	v_add3_u32 v3, v3, s0, v4
	v_or_b32_e32 v27, 8, v21
	v_or_b32_e32 v28, 10, v21
	v_add3_u32 v2, v2, s0, v4
	v_mul_lo_u32 v4, s24, v8
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v5, 1, v10
	v_lshlrev_b32_e32 v6, 4, v0
	v_add_nc_u32_e32 v22, 0, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v31, s0, v2
	v_subrev_nc_u32_e32 v32, s0, v3
	v_add3_u32 v33, v1, s29, v5
	v_add3_u32 v34, v4, s29, v5
	v_add_nc_u32_e32 v36, 0, v6
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v29, 12, v21
	v_or_b32_e32 v30, 14, v21
	v_dual_mov_b32 v6, s17 :: v_dual_add_nc_u32 v35, 0, v9
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
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
	v_add_nc_u32_e32 v37, s1, v15
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s16, s1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v37
	v_add_nc_u32_e32 v38, 32, v37
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v37, 0x80000000, v34, vcc_lo
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s28, v38
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v45, v37, s[20:23], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v33, s0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v42, 0x80000000, v31, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s1, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v47, v23, s0, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v38, 0x80000000, v32, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s25
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v48, v21, s0, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[37:40], v38, s[4:7], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v46, v41, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[41:44], v42, s[4:7], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s16, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v24, s0, 1
	v_add_lshl_u32 v50, v25, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v56, v23, s16, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s25
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v51, v26, s0, 1
	v_add_lshl_u32 v52, v27, s0, 1
	v_add_lshl_u32 v53, v28, s0, 1
	v_add_lshl_u32 v54, v29, s0, 1
	v_add_lshl_u32 v55, v30, s0, 1
	v_add_lshl_u32 v57, v21, s16, 1
	v_add_lshl_u32 v58, v24, s16, 1
	v_add_lshl_u32 v59, v25, s16, 1
	v_add_lshl_u32 v60, v26, s16, 1
	v_add_lshl_u32 v61, v27, s16, 1
	v_add_lshl_u32 v62, v28, s16, 1
	v_add_lshl_u32 v63, v29, s16, 1
	v_add_lshl_u32 v64, v30, s16, 1
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s3, -1
	s_addk_i32 s1, 0x100
	s_cmp_lg_u32 s3, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(3)
	ds_store_b16 v35, v45 offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v36, v[37:40]
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v35, v46 offset:8704
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v36, v[41:44] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v77, v47, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v78, v48, s[8:11], 0 offen
	buffer_load_u16 v79, v49, s[8:11], 0 offen
	buffer_load_u16 v80, v50, s[8:11], 0 offen
	buffer_load_u16 v81, v51, s[8:11], 0 offen
	buffer_load_u16 v82, v52, s[8:11], 0 offen
	buffer_load_u16 v83, v53, s[8:11], 0 offen
	buffer_load_u16 v84, v54, s[8:11], 0 offen
	buffer_load_u16 v85, v55, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v86, v56, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v87, v57, s[8:11], 0 offen
	buffer_load_u16 v88, v58, s[8:11], 0 offen
	buffer_load_u16 v89, v59, s[8:11], 0 offen
	buffer_load_u16 v90, v60, s[8:11], 0 offen
	buffer_load_u16 v91, v61, s[8:11], 0 offen
	buffer_load_u16 v92, v62, s[8:11], 0 offen
	buffer_load_u16 v93, v63, s[8:11], 0 offen
	buffer_load_u16 v94, v64, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v20 offset:8400
	ds_load_u8 v38, v20 offset:8432
	ds_load_u8 v39, v20 offset:8416
	ds_load_u8 v40, v20 offset:8384
	ds_load_u8 v41, v20 offset:8336
	ds_load_u8 v42, v20 offset:8368
	ds_load_u8 v43, v20 offset:8352
	ds_load_u8 v44, v20 offset:8320
	ds_load_u8 v45, v20 offset:8272
	ds_load_u8 v46, v20 offset:8304
	ds_load_u8 v47, v20 offset:8288
	ds_load_u8 v48, v20 offset:8256
	ds_load_u8 v49, v20 offset:8192
	ds_load_u8 v50, v20 offset:8208
	ds_load_u8 v51, v20 offset:8224
	ds_load_u8 v52, v20 offset:8240
	ds_load_u8 v53, v22 offset:1664
	ds_load_u8 v54, v22 offset:1920
	ds_load_u8 v55, v22 offset:1792
	ds_load_u8 v56, v22 offset:1536
	ds_load_u8 v57, v22 offset:1152
	ds_load_u8 v58, v22 offset:1408
	ds_load_u8 v59, v22 offset:1280
	ds_load_u8 v60, v22 offset:1024
	ds_load_u8 v61, v22 offset:640
	ds_load_u8 v62, v22 offset:896
	ds_load_u8 v63, v22 offset:768
	ds_load_u8 v64, v22 offset:512
	ds_load_u8 v65, v22 offset:128
	ds_load_u8 v66, v22 offset:384
	ds_load_u8 v67, v22 offset:256
	ds_load_u8 v68, v22
	ds_load_u8 v69, v20 offset:8656
	ds_load_u8 v70, v20 offset:8688
	ds_load_u8 v71, v20 offset:8672
	ds_load_u8 v72, v20 offset:8640
	ds_load_u8 v73, v20 offset:8592
	ds_load_u8 v74, v20 offset:8624
	ds_load_u8 v75, v20 offset:8608
	ds_load_u8 v76, v20 offset:8576
	ds_load_u8 v95, v20 offset:8528
	ds_load_u8 v96, v20 offset:8560
	ds_load_u8 v97, v20 offset:8544
	ds_load_u8 v98, v20 offset:8512
	ds_load_u8 v99, v20 offset:8464
	ds_load_u8 v100, v20 offset:8496
	ds_load_u8 v101, v20 offset:8480
	ds_load_u8 v102, v20 offset:8448
	ds_load_u8 v103, v22 offset:3712
	ds_load_u8 v104, v22 offset:3968
	ds_load_u8 v105, v22 offset:3840
	ds_load_u8 v106, v22 offset:3584
	ds_load_u8 v107, v22 offset:3200
	ds_load_u8 v108, v22 offset:3456
	ds_load_u8 v109, v22 offset:3328
	ds_load_u8 v110, v22 offset:3072
	ds_load_u8 v111, v22 offset:2688
	ds_load_u8 v112, v22 offset:2944
	ds_load_u8 v113, v22 offset:2816
	ds_load_u8 v114, v22 offset:2560
	ds_load_u8 v115, v22 offset:2176
	ds_load_u8 v116, v22 offset:2432
	ds_load_u8 v117, v22 offset:2304
	ds_load_u8 v118, v22 offset:2048
	ds_load_u8 v119, v20 offset:8912
	ds_load_u8 v120, v20 offset:8944
	ds_load_u8 v121, v20 offset:8928
	ds_load_u8 v122, v20 offset:8896
	ds_load_u8 v123, v20 offset:8848
	ds_load_u8 v124, v20 offset:8880
	ds_load_u8 v125, v20 offset:8864
	ds_load_u8 v126, v20 offset:8832
	ds_load_u8 v127, v20 offset:8784
	ds_load_u8 v128, v20 offset:8816
	ds_load_u8 v129, v20 offset:8800
	ds_load_u8 v130, v20 offset:8768
	ds_load_u8 v131, v20 offset:8720
	ds_load_u8 v132, v20 offset:8752
	ds_load_u8 v133, v20 offset:8736
	ds_load_u8 v134, v20 offset:8704
	ds_load_u8 v135, v22 offset:5760
	ds_load_u8 v136, v22 offset:6016
	ds_load_u8 v137, v22 offset:5888
	ds_load_u8 v138, v22 offset:5632
	ds_load_u8 v139, v22 offset:5248
	ds_load_u8 v140, v22 offset:5504
	ds_load_u8 v141, v22 offset:5376
	ds_load_u8 v142, v22 offset:5120
	ds_load_u8 v143, v22 offset:4736
	ds_load_u8 v144, v22 offset:4992
	ds_load_u8 v145, v22 offset:4864
	ds_load_u8 v146, v22 offset:4608
	ds_load_u8 v147, v22 offset:4224
	ds_load_u8 v148, v22 offset:4480
	ds_load_u8 v149, v22 offset:4352
	ds_load_u8 v150, v22 offset:4096
	ds_load_u8 v151, v20 offset:9168
	ds_load_u8 v152, v20 offset:9200
	ds_load_u8 v153, v20 offset:9184
	ds_load_u8 v154, v20 offset:9152
	ds_load_u8 v155, v20 offset:9104
	ds_load_u8 v156, v20 offset:9136
	ds_load_u8 v157, v20 offset:9120
	ds_load_u8 v158, v20 offset:9088
	ds_load_u8 v159, v20 offset:9040
	ds_load_u8 v160, v20 offset:9072
	ds_load_u8 v161, v20 offset:9056
	ds_load_u8 v162, v20 offset:9024
	ds_load_u8 v163, v20 offset:8976
	ds_load_u8 v164, v20 offset:9008
	ds_load_u8 v165, v20 offset:8992
	ds_load_u8 v166, v20 offset:8960
	ds_load_u8 v167, v22 offset:7808
	ds_load_u8 v168, v22 offset:8064
	ds_load_u8 v169, v22 offset:7936
	ds_load_u8 v170, v22 offset:7680
	ds_load_u8 v171, v22 offset:7296
	ds_load_u8 v172, v22 offset:7552
	ds_load_u8 v173, v22 offset:7424
	ds_load_u8 v174, v22 offset:7168
	ds_load_u8 v175, v22 offset:6784
	ds_load_u8 v176, v22 offset:7040
	ds_load_u8 v177, v22 offset:6912
	ds_load_u8 v178, v22 offset:6656
	ds_load_u8 v179, v22 offset:6272
	ds_load_u8 v180, v22 offset:6528
	ds_load_u8 v181, v22 offset:6400
	ds_load_u8 v182, v22 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v39, v44, v41, 0xc0c0004
	v_perm_b32 v40, v43, v42, 0xc0c0004
	v_perm_b32 v41, v48, v45, 0xc0c0004
	v_perm_b32 v42, v47, v46, 0xc0c0004
	v_perm_b32 v43, v49, v50, 0xc0c0004
	v_perm_b32 v44, v51, v52, 0xc0c0004
	v_perm_b32 v49, v56, v53, 0xc0c0004
	v_perm_b32 v50, v55, v54, 0xc0c0004
	v_perm_b32 v51, v60, v57, 0xc0c0004
	v_perm_b32 v53, v59, v58, 0xc0c0004
	v_perm_b32 v54, v64, v61, 0xc0c0004
	v_perm_b32 v55, v63, v62, 0xc0c0004
	v_perm_b32 v56, v68, v65, 0xc0c0004
	v_perm_b32 v57, v67, v66, 0xc0c0004
	v_perm_b32 v58, v72, v69, 0xc0c0004
	v_perm_b32 v59, v71, v70, 0xc0c0004
	v_perm_b32 v60, v76, v73, 0xc0c0004
	v_perm_b32 v61, v75, v74, 0xc0c0004
	v_perm_b32 v62, v98, v95, 0xc0c0004
	v_perm_b32 v63, v97, v96, 0xc0c0004
	v_perm_b32 v64, v102, v99, 0xc0c0004
	v_perm_b32 v65, v101, v100, 0xc0c0004
	v_perm_b32 v66, v106, v103, 0xc0c0004
	v_perm_b32 v67, v105, v104, 0xc0c0004
	v_perm_b32 v68, v110, v107, 0xc0c0004
	v_perm_b32 v69, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v74, v122, v119, 0xc0c0004
	v_perm_b32 v75, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v76, v126, v123, 0xc0c0004
	v_perm_b32 v95, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v96, v130, v127, 0xc0c0004
	v_perm_b32 v97, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v98, v134, v131, 0xc0c0004
	v_perm_b32 v99, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v100, v138, v135, 0xc0c0004
	v_perm_b32 v101, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v102, v142, v139, 0xc0c0004
	v_perm_b32 v103, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v104, v146, v143, 0xc0c0004
	v_perm_b32 v105, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v106, v150, v147, 0xc0c0004
	v_perm_b32 v107, v149, v148, 0xc0c0004
	v_perm_b32 v70, v114, v111, 0xc0c0004
	v_perm_b32 v71, v113, v112, 0xc0c0004
	v_perm_b32 v72, v118, v115, 0xc0c0004
	v_perm_b32 v73, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v108, v154, v151, 0xc0c0004
	v_perm_b32 v109, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v110, v158, v155, 0xc0c0004
	v_perm_b32 v111, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v112, v162, v159, 0xc0c0004
	v_perm_b32 v113, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v166, v163, 0xc0c0004
	v_perm_b32 v115, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v116, v170, v167, 0xc0c0004
	v_perm_b32 v117, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v118, v174, v171, 0xc0c0004
	v_perm_b32 v119, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v178, v175, 0xc0c0004
	v_perm_b32 v121, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v182, v179, 0xc0c0004
	v_perm_b32 v123, v181, v180, 0xc0c0004
	v_lshl_or_b32 v48, v38, 16, v37
	v_lshl_or_b32 v47, v40, 16, v39
	v_lshl_or_b32 v46, v42, 16, v41
	v_lshl_or_b32 v45, v44, 16, v43
	v_lshl_or_b32 v52, v50, 16, v49
	v_lshl_or_b32 v51, v53, 16, v51
	v_lshl_or_b32 v50, v55, 16, v54
	v_lshl_or_b32 v49, v57, 16, v56
	v_lshl_or_b32 v56, v59, 16, v58
	v_lshl_or_b32 v55, v61, 16, v60
	v_lshl_or_b32 v54, v63, 16, v62
	v_lshl_or_b32 v53, v65, 16, v64
	v_lshl_or_b32 v60, v67, 16, v66
	v_lshl_or_b32 v59, v69, 16, v68
	v_lshl_or_b32 v64, v75, 16, v74
	v_lshl_or_b32 v63, v95, 16, v76
	v_lshl_or_b32 v62, v97, 16, v96
	v_lshl_or_b32 v61, v99, 16, v98
	v_lshl_or_b32 v68, v101, 16, v100
	v_lshl_or_b32 v67, v103, 16, v102
	v_lshl_or_b32 v66, v105, 16, v104
	v_lshl_or_b32 v65, v107, 16, v106
	v_lshl_or_b32 v58, v71, 16, v70
	v_lshl_or_b32 v57, v73, 16, v72
	v_lshl_or_b32 v72, v109, 16, v108
	v_lshl_or_b32 v71, v111, 16, v110
	v_lshl_or_b32 v70, v113, 16, v112
	v_lshl_or_b32 v69, v115, 16, v114
	v_lshl_or_b32 v76, v117, 16, v116
	v_lshl_or_b32 v75, v119, 16, v118
	v_lshl_or_b32 v74, v121, 16, v120
	v_lshl_or_b32 v73, v123, 16, v122
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[61:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[53:56], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[73:76], v[69:72], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v62, 16, v86
	v_lshlrev_b32_e32 v53, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v50, v50, v62 :: v_dual_lshlrev_b32 v57, 16, v81
	v_dual_mul_f32 v48, v48, v62 :: v_dual_add_nc_u32 v31, s31, v31
	v_mul_f32_e32 v40, v40, v53
	v_dual_mul_f32 v37, v37, v53 :: v_dual_add_nc_u32 v34, s24, v34
	v_dual_mul_f32 v39, v39, v53 :: v_dual_add_nc_u32 v32, s31, v32
	v_dual_mul_f32 v41, v41, v53 :: v_dual_lshlrev_b32 v54, 16, v78
	v_dual_mul_f32 v42, v42, v53 :: v_dual_lshlrev_b32 v55, 16, v79
	v_dual_mul_f32 v43, v43, v53 :: v_dual_lshlrev_b32 v56, 16, v80
	v_dual_mul_f32 v44, v44, v53 :: v_dual_lshlrev_b32 v59, 16, v83
	v_mul_f32_e32 v38, v38, v53
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v17, v40, v57 :: v_dual_lshlrev_b32 v58, 16, v82
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v45, v45, v62 :: v_dual_lshlrev_b32 v60, 16, v84
	v_dual_mul_f32 v52, v52, v62 :: v_dual_lshlrev_b32 v61, 16, v85
	v_dual_mul_f32 v46, v46, v62 :: v_dual_add_nc_u32 v33, s24, v33
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v12, v37, v54 :: v_dual_lshlrev_b32 v63, 16, v87
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v47, v47, v62 :: v_dual_lshlrev_b32 v64, 16, v88
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v18, v39, v56 :: v_dual_lshlrev_b32 v65, 16, v89
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v13, v43, v60 :: v_dual_lshlrev_b32 v66, 16, v90
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v49, v49, v62 :: v_dual_lshlrev_b32 v68, 16, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v14, v42, v59 :: v_dual_lshlrev_b32 v69, 16, v93
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v11, v44, v61 :: v_dual_lshlrev_b32 v70, 16, v94
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v51, v62 :: v_dual_fmac_f32 v12, v45, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v19, v38, v55
	v_dual_fmac_f32 v16, v41, v58 :: v_dual_lshlrev_b32 v67, 16, v91
	v_dual_fmac_f32 v18, v47, v65 :: v_dual_fmac_f32 v17, v48, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v19, v46, v64
	v_dual_fmac_f32 v14, v50, v68 :: v_dual_fmac_f32 v13, v51, v69
	v_dual_fmac_f32 v16, v49, v67 :: v_dual_fmac_f32 v11, v52, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 7, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v1, v0, 3, 1
	v_and_b32_e32 v2, 0x1e0, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s29, s25
	v_mul_lo_u32 v3, s25, v3
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v1, 0x1040, v1
	v_lshl_or_b32 v2, v10, 2, v2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v2, v2, v1
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s0, v4, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v4, v10, 9, v2
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v5, 0, v4
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_xad_u32 v6, v4, 4, 0
	v_xad_u32 v7, v4, 8, 0
	v_xad_u32 v8, v4, 12, 0
	v_xad_u32 v10, v4, 16, 0
	v_xad_u32 v15, v4, 20, 0
	v_add_co_u32 v2, vcc_lo, s26, v2
	ds_store_b32 v5, v12
	ds_store_b32 v6, v19
	ds_store_b32 v7, v18
	ds_store_b32 v8, v17
	ds_store_b32 v10, v16
	ds_store_b32 v15, v14
	v_xad_u32 v5, v4, 24, 0
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	v_xad_u32 v4, v4, 28, 0
	ds_store_b32 v5, v13
	ds_store_b32 v4, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v6, 2, v0
	v_and_b32_e32 v7, 28, v9
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 0x204, v4
	v_and_or_b32 v6, 0x1c0, v6, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v6, v4
	v_and_or_b32 v0, v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_4:                                ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_4
; %bb.5:                                ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s25, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s26, v2
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_6:                                ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s25, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s26, v2
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_8:                                ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s25, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s26, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_10:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s25, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s26, v2
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_12:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s25, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s26, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_14:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s25, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s26, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s27, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_16:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_18:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 183
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5332
; TotalNumSgprs: 34
; NumVgprs: 183
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     183
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
