	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v2, 15, v0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 63
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
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v55, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 16, v0
	v_lshrrev_b32_e32 v39, 1, v0
	s_mov_b32 s12, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v38, v1, 16, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v36, 32, v38
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_lshl_b32 s22, s2, 6
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
	s_ashr_i32 s17, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s28, s16, 6
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
.Ltmp22:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s15, 7
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s1, 5
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v8, 2, v0
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v5, 48, v39
	s_lshl_b32 s3, s3, 6
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v53, 0 :: v_dual_and_b32 v8, 0x210, v8
	v_or_b32_e32 v1, s3, v1
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v3, 4, v3
	v_lshl_or_b32 v8, v2, 5, v8
	v_or_b32_e32 v2, v5, v2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v7, 2, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v0, 24, v4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v9, 0x70, v6
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v4, 0x778, v4
	v_add_nc_u32_e32 v57, 0, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v2, 32, v1
	v_mul_lo_u32 v1, s23, v1
	v_cndmask_b32_e64 v10, 0x90, 0, vcc_lo
	v_or_b32_e32 v11, s22, v36
	v_or3_b32 v56, v3, v5, s2
	v_mul_lo_u32 v2, s23, v2
	v_add_nc_u32_e32 v3, s22, v7
	v_xor_b32_e32 v4, v10, v4
	v_or_b32_e32 v10, s22, v38
	v_add3_u32 v1, v1, s0, v9
	v_xor_b32_e32 v12, 16, v8
	v_mul_lo_u32 v59, v11, s29
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v78, 0, v6
	v_add3_u32 v2, v2, s0, v9
	v_mul_lo_u32 v58, v10, s29
	v_mad_u64_u32 v[16:17], null, s13, v3, v[0:1]
	s_mov_b32 s13, s12
	v_subrev_nc_u32_e32 v75, s1, v2
	v_subrev_nc_u32_e32 v76, s1, v1
	v_add_nc_u32_e32 v77, 0, v4
	v_mov_b32_e32 v0, s12
	v_or_b32_e32 v60, 2, v56
	v_or_b32_e32 v61, 4, v56
	v_or_b32_e32 v62, 6, v56
	v_or_b32_e32 v63, 8, v56
	v_or_b32_e32 v64, 10, v56
	v_or_b32_e32 v65, 12, v56
	v_or_b32_e32 v66, 14, v56
	v_or_b32_e32 v67, 64, v56
	v_or_b32_e32 v68, 0x42, v56
	v_or_b32_e32 v69, 0x44, v56
	v_or_b32_e32 v70, 0x46, v56
	v_or_b32_e32 v71, 0x48, v56
	v_or_b32_e32 v72, 0x4a, v56
	v_or_b32_e32 v73, 0x4c, v56
	v_or_b32_e32 v74, 0x4e, v56
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v79, 0, v8
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v80, 0, v12
	v_dual_mov_b32 v1, s13 :: v_dual_mov_b32 v2, s14
	v_dual_mov_b32 v3, s15 :: v_dual_mov_b32 v4, s16
	v_dual_mov_b32 v5, s17 :: v_dual_mov_b32 v6, s18
	v_dual_mov_b32 v7, s19 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v37, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s30, s23, 6
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
	v_add_nc_u32_e32 v12, s3, v16
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s1, s3, 32
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s0, s23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[8:11], v76, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[17:18], v12, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[19:20], v12, s[24:27], 0 offen offset:32
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[12:15], v75, s[4:7], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v83, v56, s16, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v81, v58, s0, 1
	v_add_lshl_u32 v82, v59, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v84, v60, s16, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v85, v61, s16, 1
	v_add_lshl_u32 v86, v62, s16, 1
	v_add_lshl_u32 v87, v63, s16, 1
	v_add_lshl_u32 v88, v64, s16, 1
	v_add_lshl_u32 v89, v65, s16, 1
	v_add_lshl_u32 v90, v66, s16, 1
	v_add_lshl_u32 v91, v67, s16, 1
	v_add_lshl_u32 v92, v68, s16, 1
	v_add_lshl_u32 v93, v69, s16, 1
	v_add_lshl_u32 v94, v70, s16, 1
	v_add_lshl_u32 v95, v71, s16, 1
	v_add_lshl_u32 v96, v72, s16, 1
	v_add_lshl_u32 v97, v73, s16, 1
	v_add_lshl_u32 v98, v74, s16, 1
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s1, s23
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v99, v58, s1, 1
	v_add_lshl_u32 v100, v59, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v101, v56, s16, 1
	v_add_lshl_u32 v102, v60, s16, 1
	v_add_lshl_u32 v103, v61, s16, 1
	v_add_lshl_u32 v104, v62, s16, 1
	v_add_lshl_u32 v105, v63, s16, 1
	v_add_lshl_u32 v106, v64, s16, 1
	v_add_lshl_u32 v107, v65, s16, 1
	v_add_lshl_u32 v108, v66, s16, 1
	v_add_lshl_u32 v109, v67, s16, 1
	v_add_lshl_u32 v110, v68, s16, 1
	v_add_lshl_u32 v111, v69, s16, 1
	v_add_lshl_u32 v112, v70, s16, 1
	v_add_lshl_u32 v113, v71, s16, 1
	v_add_lshl_u32 v114, v72, s16, 1
	v_add_lshl_u32 v115, v73, s16, 1
	v_add_lshl_u32 v116, v74, s16, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s0
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s29
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s1, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v99, 0x80000000, v99, s1
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	v_cndmask_b32_e64 v102, 0x80000000, v102, s1
	v_cndmask_b32_e64 v103, 0x80000000, v103, s1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	v_cndmask_b32_e64 v117, 0x80000000, v105, s1
	v_cndmask_b32_e64 v118, 0x80000000, v106, s1
	v_cndmask_b32_e64 v119, 0x80000000, v107, s1
	v_cndmask_b32_e64 v120, 0x80000000, v108, s1
	v_cndmask_b32_e64 v109, 0x80000000, v109, s1
	v_cndmask_b32_e64 v110, 0x80000000, v110, s1
	v_cndmask_b32_e64 v111, 0x80000000, v111, s1
	v_cndmask_b32_e64 v112, 0x80000000, v112, s1
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s28, s28, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s28, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v77, v[17:18] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v78, v[8:11]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v77, v[19:20] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[12:15] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x7
	buffer_load_u16 v177, v83, s[8:11], 0 offen
	buffer_load_u16 v178, v84, s[8:11], 0 offen
	buffer_load_u16 v179, v85, s[8:11], 0 offen
	buffer_load_u16 v180, v86, s[8:11], 0 offen
	buffer_load_u16 v181, v87, s[8:11], 0 offen
	buffer_load_u16 v182, v88, s[8:11], 0 offen
	buffer_load_u16 v183, v89, s[8:11], 0 offen
	buffer_load_u16 v184, v90, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v185, v81, s[12:15], 0 offen
	buffer_load_u16 v186, v82, s[12:15], 0 offen
	buffer_load_u16 v187, v99, s[12:15], 0 offen
	buffer_load_u16 v188, v100, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x17
	buffer_load_u16 v189, v101, s[8:11], 0 offen
	buffer_load_u16 v190, v102, s[8:11], 0 offen
	buffer_load_u16 v191, v103, s[8:11], 0 offen
	buffer_load_u16 v192, v104, s[8:11], 0 offen
	buffer_load_u16 v193, v117, s[8:11], 0 offen
	buffer_load_u16 v194, v118, s[8:11], 0 offen
	buffer_load_u16 v195, v119, s[8:11], 0 offen
	buffer_load_u16 v196, v120, s[8:11], 0 offen
	buffer_load_u16 v197, v91, s[8:11], 0 offen
	buffer_load_u16 v198, v92, s[8:11], 0 offen
	buffer_load_u16 v199, v93, s[8:11], 0 offen
	buffer_load_u16 v200, v94, s[8:11], 0 offen
	buffer_load_u16 v201, v95, s[8:11], 0 offen
	buffer_load_u16 v202, v96, s[8:11], 0 offen
	buffer_load_u16 v203, v97, s[8:11], 0 offen
	buffer_load_u16 v204, v98, s[8:11], 0 offen
	buffer_load_u16 v205, v109, s[8:11], 0 offen
	buffer_load_u16 v206, v110, s[8:11], 0 offen
	buffer_load_u16 v207, v111, s[8:11], 0 offen
	buffer_load_u16 v208, v112, s[8:11], 0 offen
	buffer_load_u16 v209, v113, s[8:11], 0 offen
	buffer_load_u16 v210, v114, s[8:11], 0 offen
	buffer_load_u16 v211, v115, s[8:11], 0 offen
	buffer_load_u16 v212, v116, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[17:20], v79 offset:8192
	ds_load_b128 v[105:108], v79 offset:9216
	ds_load_b128 v[137:140], v80 offset:8192
	ds_load_b128 v[141:144], v80 offset:9216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v57 offset:1664
	ds_load_u8 v9, v57 offset:1536
	ds_load_u8 v10, v57 offset:1920
	ds_load_u8 v11, v57 offset:1792
	ds_load_u8 v12, v57 offset:1984
	ds_load_u8 v13, v57 offset:1856
	ds_load_u8 v14, v57 offset:1728
	ds_load_u8 v15, v57 offset:1600
	ds_load_u8 v125, v57 offset:1152
	ds_load_u8 v126, v57 offset:1024
	ds_load_u8 v127, v57 offset:1408
	ds_load_u8 v128, v57 offset:1280
	ds_load_u8 v129, v57 offset:1472
	ds_load_u8 v130, v57 offset:1344
	ds_load_u8 v131, v57 offset:1216
	ds_load_u8 v132, v57 offset:1088
	ds_load_u8 v133, v57 offset:640
	ds_load_u8 v134, v57 offset:512
	ds_load_u8 v135, v57 offset:896
	ds_load_u8 v136, v57 offset:768
	ds_load_u8 v157, v57 offset:960
	ds_load_u8 v158, v57 offset:832
	ds_load_u8 v159, v57 offset:704
	ds_load_u8 v160, v57 offset:576
	ds_load_u8 v81, v57 offset:128
	ds_load_u8 v82, v57
	ds_load_u8 v83, v57 offset:384
	ds_load_u8 v84, v57 offset:256
	ds_load_u8 v85, v57 offset:448
	ds_load_u8 v86, v57 offset:320
	ds_load_u8 v87, v57 offset:192
	ds_load_u8 v88, v57 offset:64
	ds_load_u8 v89, v57 offset:3712
	ds_load_u8 v90, v57 offset:3584
	ds_load_u8 v91, v57 offset:3968
	ds_load_u8 v92, v57 offset:3840
	ds_load_u8 v93, v57 offset:4032
	ds_load_u8 v94, v57 offset:3904
	ds_load_u8 v95, v57 offset:3776
	ds_load_u8 v96, v57 offset:3648
	ds_load_u8 v97, v57 offset:3200
	ds_load_u8 v98, v57 offset:3072
	ds_load_u8 v99, v57 offset:3456
	ds_load_u8 v100, v57 offset:3328
	ds_load_u8 v101, v57 offset:3520
	ds_load_u8 v102, v57 offset:3392
	ds_load_u8 v103, v57 offset:3264
	ds_load_u8 v104, v57 offset:3136
	ds_load_u8 v109, v57 offset:2688
	ds_load_u8 v110, v57 offset:2560
	ds_load_u8 v111, v57 offset:2944
	ds_load_u8 v112, v57 offset:2816
	ds_load_u8 v113, v57 offset:3008
	ds_load_u8 v114, v57 offset:2880
	ds_load_u8 v115, v57 offset:2752
	ds_load_u8 v116, v57 offset:2624
	ds_load_u8 v117, v57 offset:2176
	ds_load_u8 v118, v57 offset:2048
	ds_load_u8 v119, v57 offset:2432
	ds_load_u8 v120, v57 offset:2304
	ds_load_u8 v161, v57 offset:2496
	ds_load_u8 v162, v57 offset:2368
	ds_load_u8 v163, v57 offset:2240
	ds_load_u8 v164, v57 offset:2112
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[121:124], v79 offset:10240
	ds_load_b128 v[145:148], v79 offset:11264
	ds_load_b128 v[149:152], v80 offset:10240
	ds_load_b128 v[153:156], v80 offset:11264
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v165, v57 offset:6784
	ds_load_u8 v166, v57 offset:6656
	ds_load_u8 v167, v57 offset:7040
	ds_load_u8 v168, v57 offset:6912
	ds_load_u8 v169, v57 offset:6272
	ds_load_u8 v170, v57 offset:6144
	ds_load_u8 v171, v57 offset:6528
	ds_load_u8 v172, v57 offset:6400
	ds_load_u8 v173, v57 offset:5760
	ds_load_u8 v174, v57 offset:5632
	ds_load_u8 v175, v57 offset:6016
	ds_load_u8 v176, v57 offset:5888
	ds_load_u8 v213, v57 offset:6080
	ds_load_u8 v214, v57 offset:5952
	ds_load_u8 v215, v57 offset:5824
	ds_load_u8 v216, v57 offset:5696
	ds_load_u8 v217, v57 offset:5248
	ds_load_u8 v218, v57 offset:5120
	ds_load_u8 v219, v57 offset:5504
	ds_load_u8 v220, v57 offset:5376
	ds_load_u8 v221, v57 offset:5568
	ds_load_u8 v222, v57 offset:5440
	ds_load_u8 v223, v57 offset:5312
	ds_load_u8 v224, v57 offset:5184
	ds_load_u8 v225, v57 offset:4736
	ds_load_u8 v226, v57 offset:4608
	ds_load_u8 v227, v57 offset:4992
	ds_load_u8 v228, v57 offset:4864
	ds_load_u8 v229, v57 offset:5056
	ds_load_u8 v230, v57 offset:4928
	ds_load_u8 v231, v57 offset:4800
	ds_load_u8 v232, v57 offset:4672
	ds_load_u8 v233, v57 offset:4224
	ds_load_u8 v234, v57 offset:4096
	ds_load_u8 v235, v57 offset:4480
	ds_load_u8 v236, v57 offset:4352
	ds_load_u8 v237, v57 offset:4544
	ds_load_u8 v238, v57 offset:4416
	ds_load_u8 v239, v57 offset:4288
	ds_load_u8 v240, v57 offset:4160
	ds_load_u8 v241, v57 offset:7808
	ds_load_u8 v242, v57 offset:7680
	ds_load_u8 v243, v57 offset:8064
	ds_load_u8 v244, v57 offset:7936
	ds_load_u8 v245, v57 offset:8128
	ds_load_u8 v246, v57 offset:8000
	ds_load_u8 v247, v57 offset:7872
	ds_load_u8 v248, v57 offset:7744
	ds_load_u8 v249, v57 offset:7296
	ds_load_u8 v250, v57 offset:7168
	ds_load_u8 v251, v57 offset:7552
	ds_load_u8 v252, v57 offset:7424
	ds_load_u8 v253, v57 offset:7616
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v57 offset:7488
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v57 offset:7360
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v57 offset:7232
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v57 offset:7104
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v57 offset:6720
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v57 offset:6592
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v57 offset:6976
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v57 offset:6848
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v57 offset:6464
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v57 offset:6336
	v_perm_b32 v254, v98, v97, 0xc0c0004
	ds_load_u8 v97, v57 offset:6208
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_perm_b32 v111, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v112, v120, v119, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v132, v131, 0xc0c0004
	v_perm_b32 v15, v130, v129, 0xc0c0004
	v_perm_b32 v117, v160, v159, 0xc0c0004
	v_perm_b32 v118, v158, v157, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v86, v96, v95, 0xc0c0004
	v_perm_b32 v88, v94, v93, 0xc0c0004
	v_perm_b32 v93, v104, v103, 0xc0c0004
	v_perm_b32 v95, v116, v115, 0xc0c0004
	v_perm_b32 v96, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v103, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v104, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v113, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v114, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v115, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v116, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v119, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v120, v236, v235, 0xc0c0004
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_perm_b32 v166, v168, v167, 0xc0c0004
	v_perm_b32 v169, v170, v169, 0xc0c0004
	v_perm_b32 v170, v172, v171, 0xc0c0004
	v_perm_b32 v171, v216, v215, 0xc0c0004
	v_perm_b32 v172, v214, v213, 0xc0c0004
	v_perm_b32 v213, v224, v223, 0xc0c0004
	v_perm_b32 v214, v222, v221, 0xc0c0004
	v_perm_b32 v215, v232, v231, 0xc0c0004
	v_perm_b32 v216, v230, v229, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v217, v240, v239, 0xc0c0004
	v_perm_b32 v218, v238, v237, 0xc0c0004
	v_perm_b32 v255, v100, v99, 0xc0c0004
	v_perm_b32 v94, v102, v101, 0xc0c0004
	v_perm_b32 v101, v164, v163, 0xc0c0004
	v_perm_b32 v102, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v173, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v174, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v175, v250, v249, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v176, v252, v251, 0xc0c0004
	v_perm_b32 v219, v248, v247, 0xc0c0004
	v_perm_b32 v220, v246, v245, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v126, v11, 0xc0c0004
	v_perm_b32 v9, v9, v253, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v82, v82, v136, 0xc0c0004
	v_perm_b32 v126, v134, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v97, v92, 0xc0c0004
	v_perm_b32 v84, v90, v84, 0xc0c0004
	v_lshl_or_b32 v100, v10, 16, v8
	v_lshl_or_b32 v99, v127, 16, v125
	v_lshl_or_b32 v98, v135, 16, v133
	v_lshl_or_b32 v97, v83, 16, v81
	v_lshl_or_b32 v158, v110, 16, v109
	v_lshl_or_b32 v157, v112, 16, v111
	v_lshl_or_b32 v112, v12, 16, v14
	v_lshl_or_b32 v111, v15, 16, v13
	v_lshl_or_b32 v110, v118, 16, v117
	v_lshl_or_b32 v109, v85, 16, v87
	v_lshl_or_b32 v132, v104, 16, v103
	v_lshl_or_b32 v131, v114, 16, v113
	v_lshl_or_b32 v130, v116, 16, v115
	v_lshl_or_b32 v129, v120, 16, v119
	v_lshl_or_b32 v166, v166, 16, v165
	v_lshl_or_b32 v165, v170, 16, v169
	v_lshl_or_b32 v172, v172, 16, v171
	v_lshl_or_b32 v171, v214, 16, v213
	v_lshl_or_b32 v170, v216, 16, v215
	v_lshl_or_b32 v169, v218, 16, v217
	v_lshl_or_b32 v160, v91, 16, v89
	v_lshl_or_b32 v159, v255, 16, v254
	v_lshl_or_b32 v164, v88, 16, v86
	v_lshl_or_b32 v163, v94, 16, v93
	v_lshl_or_b32 v162, v96, 16, v95
	v_lshl_or_b32 v161, v102, 16, v101
	v_lshl_or_b32 v168, v174, 16, v173
	v_lshl_or_b32 v167, v176, 16, v175
	v_lshl_or_b32 v176, v220, 16, v219
	v_lshl_or_b32 v175, v9, 16, v11
	v_lshl_or_b32 v174, v126, 16, v82
	v_lshl_or_b32 v173, v84, 16, v92
	v_wmma_i32_16x16x16_iu8 v[8:15], v[97:100], v[17:20], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[17:20], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[105:108], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[109:112], v[105:108], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[129:132], v[121:124], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[169:172], v[121:124], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[145:148], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[169:172], v[145:148], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[157:160], v[137:140], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[161:164], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[149:152], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[173:176], v[149:152], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[153:156], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[173:176], v[153:156], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[157:160], v[141:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[161:164], v[141:144], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v18, v82
	v_cvt_f32_i32_e32 v19, v83
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v83, v87
	v_cvt_f32_i32_e32 v86, v106
	v_cvt_f32_i32_e32 v87, v107
	v_cvt_f32_i32_e32 v107, v111
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v119, v123
	v_cvt_f32_i32_e32 v123, v127
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v131, v135
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v17, v81
	v_cvt_f32_i32_e32 v20, v84
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v85, v105
	v_cvt_f32_i32_e32 v88, v108
	v_cvt_f32_i32_e32 v105, v109
	v_cvt_f32_i32_e32 v106, v110
	v_cvt_f32_i32_e32 v108, v112
	v_cvt_f32_i32_e32 v109, v113
	v_cvt_f32_i32_e32 v110, v114
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v122, v126
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v124, v128
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v126, v130
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v128, v132
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v132, v136
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v135, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v86, v86, v135 :: v_dual_lshlrev_b32 v133, 16, v185
	v_dual_mul_f32 v13, v13, v133 :: v_dual_lshlrev_b32 v134, 16, v186
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v15, v15, v133 :: v_dual_lshlrev_b32 v136, 16, v188
	v_dual_mul_f32 v11, v11, v133 :: v_dual_add_nc_u32 v76, s30, v76
	v_dual_mul_f32 v8, v8, v133 :: v_dual_add_nc_u32 v75, s30, v75
	v_dual_mul_f32 v12, v12, v133 :: v_dual_lshlrev_b32 v137, 16, v178
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v14, v14, v133 :: v_dual_lshlrev_b32 v139, 16, v190
	v_dual_mul_f32 v18, v18, v133 :: v_dual_lshlrev_b32 v141, 16, v180
	v_dual_mul_f32 v17, v17, v133 :: v_dual_lshlrev_b32 v142, 16, v179
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v20, v20, v133 :: v_dual_lshlrev_b32 v143, 16, v192
	v_dual_mul_f32 v19, v19, v133 :: v_dual_lshlrev_b32 v144, 16, v191
	v_dual_mul_f32 v82, v82, v133 :: v_dual_lshlrev_b32 v145, 16, v182
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v84, v84, v133 :: v_dual_lshlrev_b32 v147, 16, v194
	v_dual_mul_f32 v81, v81, v133 :: v_dual_lshlrev_b32 v150, 16, v183
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v83, v83, v133 :: v_dual_lshlrev_b32 v152, 16, v195
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v89, v134, v89 :: v_dual_lshlrev_b32 v158, 16, v199
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v92, v134, v92 :: v_dual_lshlrev_b32 v163, 16, v210
	v_dual_mul_f32 v90, v134, v90 :: v_dual_lshlrev_b32 v165, 16, v204
	v_dual_mul_f32 v93, v134, v93 :: v_dual_lshlrev_b32 v166, 16, v203
	v_mul_f32_e32 v9, v9, v133
	v_mul_f32_e32 v10, v10, v133
	v_dual_mul_f32 v85, v85, v135 :: v_dual_lshlrev_b32 v138, 16, v177
	v_dual_mul_f32 v105, v105, v135 :: v_dual_lshlrev_b32 v146, 16, v181
	v_dual_mul_f32 v88, v88, v135 :: v_dual_lshlrev_b32 v149, 16, v184
	v_dual_mul_f32 v108, v108, v135 :: v_dual_lshlrev_b32 v153, 16, v198
	v_dual_mul_f32 v109, v109, v135 :: v_dual_lshlrev_b32 v154, 16, v197
	v_dual_mul_f32 v112, v112, v135 :: v_dual_lshlrev_b32 v157, 16, v200
	v_dual_mul_f32 v116, v116, v135 :: v_dual_lshlrev_b32 v161, 16, v202
	v_dual_mul_f32 v113, v113, v135 :: v_dual_lshlrev_b32 v162, 16, v201
	v_dual_mul_f32 v91, v134, v91 :: v_dual_mul_f32 v120, v136, v120
	v_dual_mul_f32 v119, v136, v119 :: v_dual_mul_f32 v94, v134, v94
	v_dual_mul_f32 v122, v136, v122 :: v_dual_mul_f32 v95, v134, v95
	v_dual_mul_f32 v96, v134, v96 :: v_dual_mul_f32 v123, v136, v123
	v_dual_mul_f32 v124, v136, v124 :: v_dual_mul_f32 v97, v134, v97
	v_dual_mul_f32 v98, v134, v98 :: v_dual_mul_f32 v125, v136, v125
	v_dual_mul_f32 v126, v136, v126 :: v_dual_mul_f32 v99, v134, v99
	v_dual_mul_f32 v100, v134, v100 :: v_dual_mul_f32 v127, v136, v127
	v_dual_mul_f32 v128, v136, v128 :: v_dual_mul_f32 v101, v134, v101
	v_dual_mul_f32 v102, v134, v102 :: v_dual_mul_f32 v129, v136, v129
	v_dual_mul_f32 v130, v136, v130 :: v_dual_mul_f32 v103, v134, v103
	v_dual_mul_f32 v104, v134, v104 :: v_dual_mul_f32 v131, v136, v131
	v_dual_mul_f32 v87, v87, v135 :: v_dual_lshlrev_b32 v140, 16, v189
	v_dual_mul_f32 v107, v107, v135 :: v_dual_lshlrev_b32 v148, 16, v193
	v_dual_mul_f32 v106, v106, v135 :: v_dual_lshlrev_b32 v151, 16, v196
	v_dual_mul_f32 v110, v110, v135 :: v_dual_lshlrev_b32 v155, 16, v206
	v_dual_mul_f32 v111, v111, v135 :: v_dual_lshlrev_b32 v156, 16, v205
	v_dual_mul_f32 v114, v114, v135 :: v_dual_lshlrev_b32 v159, 16, v208
	v_dual_mul_f32 v117, v136, v117 :: v_dual_lshlrev_b32 v160, 16, v207
	v_dual_mul_f32 v115, v115, v135 :: v_dual_lshlrev_b32 v164, 16, v209
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v118, v136, v118 :: v_dual_lshlrev_b32 v167, 16, v212
	v_dual_mul_f32 v121, v136, v121 :: v_dual_lshlrev_b32 v168, 16, v211
	v_dual_mul_f32 v132, v136, v132 :: v_dual_fmac_f32 v55, v9, v137
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v54, v8, v138 :: v_dual_fmac_f32 v37, v90, v137
	v_dual_fmac_f32 v35, v89, v138 :: v_dual_fmac_f32 v52, v11, v141
	v_dual_fmac_f32 v53, v10, v142 :: v_dual_fmac_f32 v50, v13, v145
	v_dual_fmac_f32 v33, v92, v141 :: v_dual_fmac_f32 v34, v91, v142
	v_dual_fmac_f32 v51, v12, v146 :: v_dual_fmac_f32 v32, v94, v145
	v_dual_fmac_f32 v31, v93, v146 :: v_dual_fmac_f32 v48, v15, v149
	v_dual_fmac_f32 v49, v14, v150 :: v_dual_fmac_f32 v30, v96, v149
	v_dual_fmac_f32 v29, v95, v150 :: v_dual_fmac_f32 v46, v18, v153
	v_dual_fmac_f32 v47, v17, v154 :: v_dual_fmac_f32 v28, v98, v153
	v_dual_fmac_f32 v27, v97, v154 :: v_dual_fmac_f32 v44, v20, v157
	v_dual_fmac_f32 v45, v19, v158 :: v_dual_fmac_f32 v26, v100, v157
	v_dual_fmac_f32 v25, v99, v158 :: v_dual_fmac_f32 v42, v82, v161
	v_dual_fmac_f32 v43, v81, v162 :: v_dual_fmac_f32 v40, v84, v165
	v_dual_fmac_f32 v23, v102, v161 :: v_dual_fmac_f32 v24, v101, v162
	v_dual_fmac_f32 v41, v83, v166 :: v_dual_fmac_f32 v54, v85, v140
	v_dual_fmac_f32 v21, v104, v165 :: v_dual_fmac_f32 v22, v103, v166
	v_dual_fmac_f32 v55, v86, v139 :: v_dual_fmac_f32 v34, v119, v144
	v_dual_fmac_f32 v53, v87, v144 :: v_dual_fmac_f32 v52, v88, v143
	v_dual_fmac_f32 v51, v105, v148 :: v_dual_fmac_f32 v50, v106, v147
	v_dual_fmac_f32 v49, v107, v152 :: v_dual_fmac_f32 v48, v108, v151
	v_dual_fmac_f32 v47, v109, v156 :: v_dual_fmac_f32 v46, v110, v155
	v_dual_fmac_f32 v45, v111, v160 :: v_dual_fmac_f32 v44, v112, v159
	v_dual_fmac_f32 v43, v113, v164 :: v_dual_fmac_f32 v42, v114, v163
	v_dual_fmac_f32 v41, v115, v168 :: v_dual_fmac_f32 v40, v116, v167
	v_dual_fmac_f32 v35, v117, v140 :: v_dual_fmac_f32 v32, v122, v147
	v_dual_fmac_f32 v37, v118, v139 :: v_dual_fmac_f32 v24, v129, v164
	v_dual_fmac_f32 v33, v120, v143 :: v_dual_fmac_f32 v22, v131, v168
	v_dual_fmac_f32 v31, v121, v148 :: v_dual_fmac_f32 v30, v124, v151
	v_dual_fmac_f32 v29, v123, v152 :: v_dual_fmac_f32 v28, v126, v155
	v_dual_fmac_f32 v27, v125, v156 :: v_dual_fmac_f32 v26, v128, v159
	v_fmac_f32_e32 v25, v127, v160
	v_fmac_f32_e32 v23, v130, v163
	v_fmac_f32_e32 v21, v132, v167
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v54, 16, 1
	v_bfe_u32 v2, v55, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s22, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v55, v55
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s2, s0, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v54, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_add3_u32 v2, v55, v2, 0x7fff
	v_bfe_u32 v5, v50, 16, 1
	v_bfe_u32 v4, v51, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 56, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v52, 16, 1
	v_cmp_o_f32_e64 s0, v53, v53
	v_cmp_o_f32_e64 s1, v52, v52
	v_add3_u32 v5, v50, v5, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v18, s2, v0
	v_add3_u32 v19, s2, v0, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v0, v53, 16, 1
	v_add3_u32 v2, v52, v2, 0x7fff
	v_bfe_u32 v6, v49, 16, 1
	v_add3_u32 v4, v51, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v51, v51
	v_add3_u32 v0, v53, v0, 0x7fff
	v_bfe_u32 v7, v46, 16, 1
	v_bfe_u32 v8, v43, 16, 1
	v_bfe_u32 v9, v42, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s3
	v_add3_u32 v5, v49, v6, 0x7fff
	v_bfe_u32 v6, v47, 16, 1
	v_bfe_u32 v4, v48, 16, 1
	v_cmp_o_f32_e64 s0, v49, v49
	v_cmp_o_f32_e64 s2, v47, v47
	v_add3_u32 v7, v46, v7, 0x7fff
	v_add3_u32 v6, v47, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v46, v46
	v_add3_u32 v4, v48, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v48, v48
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s0
	v_bfe_u32 v5, v45, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v44, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_add3_u32 v5, v45, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_cmp_o_f32_e64 s1, v44, v44
	v_add3_u32 v7, v44, v7, 0x7fff
	v_add3_u32 v8, v43, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v43, v43
	v_add3_u32 v9, v42, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v42, v42
	v_bfe_u32 v10, v41, 16, 1
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s3
	v_add3_u32 v8, v41, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	v_bfe_u32 v9, v40, 16, 1
	v_mov_b16_e32 v3.l, v37.h
	v_mov_b16_e32 v10.l, v35.h
	v_mov_b16_e32 v10.h, v3.h
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v9, v40, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_and_b32_e32 v11, 1, v3
	v_mov_b16_e32 v12.l, v34.h
	v_mov_b16_e32 v12.h, v3.h
	v_mov_b16_e32 v3.l, v33.h
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v11, v37, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v37, v37
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v12
	v_and_b32_e32 v12, 1, v3
	v_mov_b16_e32 v3.l, v32.h
	v_add3_u32 v10, v35, v10, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s1
	v_cmp_o_f32_e64 s0, v35, v35
	v_add3_u32 v9, v34, v9, 0x7fff
	v_add3_u32 v12, v33, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v33, v33
	v_cmp_o_f32_e64 s2, v34, v34
	v_mov_b16_e32 v13.l, v31.h
	v_mov_b16_e32 v13.h, v3.h
	v_and_b32_e32 v14, 1, v3
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s2
	v_and_b32_e32 v9, 1, v13
	v_add3_u32 v12, v32, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_mov_b16_e32 v15.l, v27.h
	v_mov_b16_e32 v15.h, v3.h
	v_add3_u32 v9, v31, v9, 0x7fff
	v_mov_b16_e32 v13.l, v29.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	v_cmp_o_f32_e64 s0, v31, v31
	v_cmp_o_f32_e64 s2, v27, v27
	v_mov_b16_e32 v20.l, v25.h
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v20.h, v3.h
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v15
	v_mov_b16_e32 v3.l, v30.h
	v_add3_u32 v13, v29, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_cmp_o_f32_e64 s0, v29, v29
	v_add3_u32 v9, v27, v9, 0x7fff
	v_mov_b16_e32 v27.l, v22.h
	v_mov_b16_e32 v27.h, v3.h
	v_cmp_o_f32_e64 s3, v21, v21
	v_cmp_o_f32_e64 s4, v22, v22
	v_cndmask_b16 v13.l, 0x7fff, v9.h, s2
	v_and_b32_e32 v9, 1, v20
	v_mov_b16_e32 v20.l, v24.h
	v_cmp_o_f32_e64 s2, v24, v24
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v16, s23, v38
	v_mul_lo_u32 v17, s23, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v25, v9, 0x7fff
	v_and_b32_e32 v20, 1, v20
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v20.h, s2
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e32 v3.l, v28.h
	v_dual_cndmask_b32 v20, v2, v1 :: v_dual_cndmask_b32 v1, v1, v2
	v_cndmask_b32_e32 v2, v6, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v14, v30, v14, 0x7fff
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e32 v3.l, v26.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s0
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s1
	v_add3_u32 v15, v28, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s1
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e32 v3.l, v23.h
	v_cmp_o_f32_e64 s1, v23, v23
	v_add3_u32 v15, v26, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v26, 1, v3
	v_mov_b16_e32 v3.l, v21.h
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_cmp_o_f32_e64 s0, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v26, v23, v26, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v3, v21, v3, 0x7fff
	v_cndmask_b32_e32 v21, v4, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v4, vcc_lo
	v_dual_mov_b32 v4, 0x5410 :: v_dual_and_b32 v25, 1, v27
	v_cndmask_b16 v9.h, 0x7fff, v26.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x1054, v4, vcc_lo
	v_add3_u32 v23, v22, v25, 0x7fff
	v_cndmask_b32_e32 v22, v7, v6, vcc_lo
	v_dual_mov_b32 v6, 0x7632 :: v_dual_cndmask_b32 v7, v8, v5
	v_lshl_or_b32 v4, v4, 8, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v3.l, 0x7fff, v23.h, s4
	v_dual_cndmask_b32 v5, v5, v8 :: v_dual_cndmask_b32 v6, 0x3276, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v23, v12, v11 :: v_dual_and_b32 v4, 0x540054, v4
	v_cndmask_b32_e32 v8, v11, v12, vcc_lo
	v_permlanex16_b32 v12, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 8, v6
	v_cndmask_b32_e32 v11, v14, v10, vcc_lo
	v_lshl_or_b32 v0, v4, 4, v4
	v_cndmask_b32_e32 v10, v10, v14, vcc_lo
	v_cndmask_b32_e32 v14, v9, v13, vcc_lo
	v_dual_cndmask_b32 v9, v13, v9 :: v_dual_and_b32 v6, 0x760076, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, v3, v15 :: v_dual_and_b32 v25, 0x5040504, v0
	v_cndmask_b32_e32 v3, v15, v3, vcc_lo
	v_lshl_or_b32 v4, v6, 4, v6
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v26, 0x7060706, v4
	v_permlanex16_b32 v27, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v20, v25
	v_perm_b32 v1, v1, v20, v26
	v_perm_b32 v2, v12, v21, v25
	v_perm_b32 v3, v12, v21, v26
	v_add_lshl_u32 v20, v18, v16, 1
	v_perm_b32 v4, v6, v22, v25
	v_perm_b32 v5, v6, v22, v26
	v_perm_b32 v6, v13, v7, v25
	v_perm_b32 v7, v13, v7, v26
	v_add_lshl_u32 v16, v19, v16, 1
	v_perm_b32 v8, v15, v23, v25
	v_perm_b32 v9, v15, v23, v26
	v_perm_b32 v10, v27, v11, v25
	v_perm_b32 v11, v27, v11, v26
	v_add_lshl_u32 v18, v18, v17, 1
	v_perm_b32 v12, v28, v14, v25
	v_perm_b32 v13, v28, v14, v26
	v_perm_b32 v14, v29, v24, v25
	v_perm_b32 v15, v29, v24, v26
	v_add_lshl_u32 v17, v19, v17, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v20, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7548
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 256
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
