	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v37, 15, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v36, 3, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v22, v36, 16, v37
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
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
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v38, 16, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v23, 1, v0
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_u32_f32 s6, s6
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
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
	v_rcp_iflag_f32_e32 v21, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v21
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v21, 32, v22
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_lshl_b32 s22, s2, 6
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
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v1, 3, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
.Ltmp20:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v5, 2, v0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
.Ltmp22:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s28, s16, 6
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s1, 5
	v_cndmask_b32_e64 v8, 0x90, 0, vcc_lo
.Ltmp24:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s15, 7
	s_lshl_b32 s1, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v4, 4, v0
	v_lshlrev_b32_e32 v6, 2, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v0, 24, v1
	v_and_b32_e32 v1, 0x778, v1
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v5, s22, v5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 4, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v8, v1
	v_or_b32_e32 v9, s22, v22
	v_or_b32_e32 v10, s22, v21
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v62, 0, v4
	v_mad_u64_u32 v[16:17], null, s13, v5, v[0:1]
	s_mov_b32 s13, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 48, v23
	v_and_b32_e32 v6, 0x210, v6
	v_and_b32_e32 v7, 0x70, v4
	v_mul_lo_u32 v26, v9, s29
	v_mul_lo_u32 v27, v10, s29
	v_or3_b32 v24, v2, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v2, s3, v36
	v_or_b32_e32 v8, v3, v37
	v_lshl_or_b32 v6, v37, 5, v6
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v61, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b32_e32 v3, 32, v2
	v_mul_lo_u32 v2, s23, v2
	v_xor_b32_e32 v11, 16, v6
	v_add_nc_u32_e32 v25, 0, v8
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v63, 0, v6
	v_mul_lo_u32 v3, s23, v3
	v_or_b32_e32 v28, 2, v24
	v_or_b32_e32 v29, 4, v24
	v_add3_u32 v2, v2, s0, v7
	v_or_b32_e32 v30, 6, v24
	v_or_b32_e32 v31, 8, v24
	v_or_b32_e32 v32, 10, v24
	v_or_b32_e32 v33, 12, v24
	v_add3_u32 v3, v3, s0, v7
	v_subrev_nc_u32_e32 v56, s1, v2
	v_or_b32_e32 v34, 14, v24
	v_or_b32_e32 v35, 64, v24
	v_or_b32_e32 v36, 0x42, v24
	v_subrev_nc_u32_e32 v53, s1, v3
	v_mov_b32_e32 v0, s12
	v_or_b32_e32 v37, 0x44, v24
	v_or_b32_e32 v38, 0x46, v24
	v_or_b32_e32 v39, 0x48, v24
	v_or_b32_e32 v41, 0x4a, v24
	v_or_b32_e32 v46, 0x4c, v24
	v_or_b32_e32 v47, 0x4e, v24
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v70, 0, v11
	v_dual_mov_b32 v1, s13 :: v_dual_mov_b32 v2, s14
	v_dual_mov_b32 v3, s15 :: v_dual_mov_b32 v4, s16
	v_dual_mov_b32 v5, s17 :: v_dual_mov_b32 v6, s18
	v_mov_b32_e32 v7, s19
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
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
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[8:11], v56, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[17:18], v12, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[19:20], v12, s[24:27], 0 offen offset:32
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[12:15], v53, s[4:7], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v81, v26, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s0, s23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v82, v27, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v83, v24, s16, 1
	v_add_lshl_u32 v84, v28, s16, 1
	v_add_lshl_u32 v85, v29, s16, 1
	v_add_lshl_u32 v86, v30, s16, 1
	v_add_lshl_u32 v87, v31, s16, 1
	v_add_lshl_u32 v88, v32, s16, 1
	v_add_lshl_u32 v89, v33, s16, 1
	v_add_lshl_u32 v90, v34, s16, 1
	v_add_lshl_u32 v91, v35, s16, 1
	v_add_lshl_u32 v92, v36, s16, 1
	v_add_lshl_u32 v93, v37, s16, 1
	v_add_lshl_u32 v94, v38, s16, 1
	v_add_lshl_u32 v95, v39, s16, 1
	v_add_lshl_u32 v96, v41, s16, 1
	v_add_lshl_u32 v97, v46, s16, 1
	v_add_lshl_u32 v98, v47, s16, 1
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s1, s23
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v99, v26, s1, 1
	v_add_lshl_u32 v100, v27, s1, 1
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v101, v24, s16, 1
	v_add_lshl_u32 v102, v28, s16, 1
	v_add_lshl_u32 v103, v29, s16, 1
	v_add_lshl_u32 v104, v30, s16, 1
	v_add_lshl_u32 v105, v31, s16, 1
	v_add_lshl_u32 v106, v32, s16, 1
	v_add_lshl_u32 v107, v33, s16, 1
	v_add_lshl_u32 v108, v34, s16, 1
	v_add_lshl_u32 v109, v35, s16, 1
	v_add_lshl_u32 v110, v36, s16, 1
	v_add_lshl_u32 v111, v37, s16, 1
	v_add_lshl_u32 v112, v38, s16, 1
	v_add_lshl_u32 v113, v39, s16, 1
	v_add_lshl_u32 v114, v41, s16, 1
	v_add_lshl_u32 v115, v46, s16, 1
	v_add_lshl_u32 v116, v47, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v83, 0x80000000, v83, s0
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s1, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
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
	ds_store_b64 v61, v[17:18] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v62, v[8:11]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v61, v[19:20] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v62, v[12:15] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v177, v81, s[12:15], 0 offen
	buffer_load_u16 v178, v82, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v179, v83, s[8:11], 0 offen
	buffer_load_u16 v180, v84, s[8:11], 0 offen
	buffer_load_u16 v181, v85, s[8:11], 0 offen
	buffer_load_u16 v182, v86, s[8:11], 0 offen
	buffer_load_u16 v183, v87, s[8:11], 0 offen
	buffer_load_u16 v184, v88, s[8:11], 0 offen
	buffer_load_u16 v185, v89, s[8:11], 0 offen
	buffer_load_u16 v186, v90, s[8:11], 0 offen
	buffer_load_u16 v187, v91, s[8:11], 0 offen
	buffer_load_u16 v188, v92, s[8:11], 0 offen
	buffer_load_u16 v189, v93, s[8:11], 0 offen
	buffer_load_u16 v190, v94, s[8:11], 0 offen
	buffer_load_u16 v191, v95, s[8:11], 0 offen
	buffer_load_u16 v192, v96, s[8:11], 0 offen
	buffer_load_u16 v193, v97, s[8:11], 0 offen
	buffer_load_u16 v194, v98, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v195, v99, s[12:15], 0 offen
	buffer_load_u16 v196, v100, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v197, v101, s[8:11], 0 offen
	buffer_load_u16 v198, v102, s[8:11], 0 offen
	buffer_load_u16 v199, v103, s[8:11], 0 offen
	buffer_load_u16 v200, v104, s[8:11], 0 offen
	buffer_load_u16 v201, v117, s[8:11], 0 offen
	buffer_load_u16 v202, v118, s[8:11], 0 offen
	buffer_load_u16 v203, v119, s[8:11], 0 offen
	buffer_load_u16 v204, v120, s[8:11], 0 offen
	buffer_load_u16 v205, v109, s[8:11], 0 offen
	buffer_load_u16 v206, v110, s[8:11], 0 offen
	buffer_load_u16 v207, v111, s[8:11], 0 offen
	buffer_load_u16 v208, v112, s[8:11], 0 offen
	buffer_load_u16 v209, v113, s[8:11], 0 offen
	buffer_load_u16 v210, v114, s[8:11], 0 offen
	buffer_load_u16 v211, v115, s[8:11], 0 offen
	buffer_load_u16 v212, v116, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[17:20], v63 offset:8192
	ds_load_b128 v[105:108], v63 offset:9216
	ds_load_b128 v[137:140], v70 offset:8192
	ds_load_b128 v[141:144], v70 offset:9216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v25 offset:1664
	ds_load_u8 v9, v25 offset:1536
	ds_load_u8 v10, v25 offset:1920
	ds_load_u8 v11, v25 offset:1792
	ds_load_u8 v12, v25 offset:1984
	ds_load_u8 v13, v25 offset:1856
	ds_load_u8 v14, v25 offset:1728
	ds_load_u8 v15, v25 offset:1600
	ds_load_u8 v125, v25 offset:1152
	ds_load_u8 v126, v25 offset:1024
	ds_load_u8 v127, v25 offset:1408
	ds_load_u8 v128, v25 offset:1280
	ds_load_u8 v129, v25 offset:1472
	ds_load_u8 v130, v25 offset:1344
	ds_load_u8 v131, v25 offset:1216
	ds_load_u8 v132, v25 offset:1088
	ds_load_u8 v133, v25 offset:640
	ds_load_u8 v134, v25 offset:512
	ds_load_u8 v135, v25 offset:896
	ds_load_u8 v136, v25 offset:768
	ds_load_u8 v157, v25 offset:960
	ds_load_u8 v158, v25 offset:832
	ds_load_u8 v159, v25 offset:704
	ds_load_u8 v160, v25 offset:576
	ds_load_u8 v161, v25 offset:128
	ds_load_u8 v162, v25
	ds_load_u8 v163, v25 offset:384
	ds_load_u8 v164, v25 offset:256
	ds_load_u8 v165, v25 offset:448
	ds_load_u8 v166, v25 offset:320
	ds_load_u8 v167, v25 offset:192
	ds_load_u8 v168, v25 offset:64
	ds_load_u8 v81, v25 offset:3712
	ds_load_u8 v82, v25 offset:3584
	ds_load_u8 v83, v25 offset:3968
	ds_load_u8 v84, v25 offset:3840
	ds_load_u8 v85, v25 offset:4032
	ds_load_u8 v86, v25 offset:3904
	ds_load_u8 v87, v25 offset:3776
	ds_load_u8 v88, v25 offset:3648
	ds_load_u8 v89, v25 offset:3200
	ds_load_u8 v90, v25 offset:3072
	ds_load_u8 v91, v25 offset:3456
	ds_load_u8 v92, v25 offset:3328
	ds_load_u8 v93, v25 offset:3520
	ds_load_u8 v94, v25 offset:3392
	ds_load_u8 v95, v25 offset:3264
	ds_load_u8 v96, v25 offset:3136
	ds_load_u8 v97, v25 offset:2688
	ds_load_u8 v98, v25 offset:2560
	ds_load_u8 v99, v25 offset:2944
	ds_load_u8 v100, v25 offset:2816
	ds_load_u8 v101, v25 offset:3008
	ds_load_u8 v102, v25 offset:2880
	ds_load_u8 v103, v25 offset:2752
	ds_load_u8 v104, v25 offset:2624
	ds_load_u8 v109, v25 offset:2176
	ds_load_u8 v110, v25 offset:2048
	ds_load_u8 v111, v25 offset:2432
	ds_load_u8 v112, v25 offset:2304
	ds_load_u8 v113, v25 offset:2496
	ds_load_u8 v114, v25 offset:2368
	ds_load_u8 v115, v25 offset:2240
	ds_load_u8 v116, v25 offset:2112
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[121:124], v63 offset:10240
	ds_load_b128 v[145:148], v63 offset:11264
	ds_load_b128 v[149:152], v70 offset:10240
	ds_load_b128 v[153:156], v70 offset:11264
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v117, v25 offset:6784
	ds_load_u8 v118, v25 offset:6656
	ds_load_u8 v119, v25 offset:7040
	ds_load_u8 v120, v25 offset:6912
	ds_load_u8 v169, v25 offset:6272
	ds_load_u8 v170, v25 offset:6144
	ds_load_u8 v171, v25 offset:6528
	ds_load_u8 v172, v25 offset:6400
	ds_load_u8 v173, v25 offset:5760
	ds_load_u8 v174, v25 offset:5632
	ds_load_u8 v175, v25 offset:6016
	ds_load_u8 v176, v25 offset:5888
	ds_load_u8 v213, v25 offset:6080
	ds_load_u8 v214, v25 offset:5952
	ds_load_u8 v215, v25 offset:5824
	ds_load_u8 v216, v25 offset:5696
	ds_load_u8 v217, v25 offset:5248
	ds_load_u8 v218, v25 offset:5120
	ds_load_u8 v219, v25 offset:5504
	ds_load_u8 v220, v25 offset:5376
	ds_load_u8 v221, v25 offset:5568
	ds_load_u8 v222, v25 offset:5440
	ds_load_u8 v223, v25 offset:5312
	ds_load_u8 v224, v25 offset:5184
	ds_load_u8 v225, v25 offset:4736
	ds_load_u8 v226, v25 offset:4608
	ds_load_u8 v227, v25 offset:4992
	ds_load_u8 v228, v25 offset:4864
	ds_load_u8 v229, v25 offset:5056
	ds_load_u8 v230, v25 offset:4928
	ds_load_u8 v231, v25 offset:4800
	ds_load_u8 v232, v25 offset:4672
	ds_load_u8 v233, v25 offset:4224
	ds_load_u8 v234, v25 offset:4096
	ds_load_u8 v235, v25 offset:4480
	ds_load_u8 v236, v25 offset:4352
	ds_load_u8 v237, v25 offset:4544
	ds_load_u8 v238, v25 offset:4416
	ds_load_u8 v239, v25 offset:4288
	ds_load_u8 v240, v25 offset:4160
	ds_load_u8 v241, v25 offset:7808
	ds_load_u8 v242, v25 offset:7680
	ds_load_u8 v243, v25 offset:8064
	ds_load_u8 v244, v25 offset:7936
	ds_load_u8 v245, v25 offset:8128
	ds_load_u8 v246, v25 offset:8000
	ds_load_u8 v247, v25 offset:7872
	ds_load_u8 v248, v25 offset:7744
	ds_load_u8 v249, v25 offset:7296
	ds_load_u8 v250, v25 offset:7168
	ds_load_u8 v251, v25 offset:7552
	ds_load_u8 v252, v25 offset:7424
	ds_load_u8 v253, v25 offset:7616
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v25 offset:7488
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v25 offset:7360
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v25 offset:7232
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v25 offset:7104
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v25 offset:6976
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v25 offset:6848
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v25 offset:6720
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v25 offset:6592
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v25 offset:6464
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v25 offset:6336
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v25 offset:6208
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v132, v131, 0xc0c0004
	v_perm_b32 v15, v130, v129, 0xc0c0004
	v_perm_b32 v129, v160, v159, 0xc0c0004
	v_perm_b32 v130, v158, v157, 0xc0c0004
	v_perm_b32 v131, v168, v167, 0xc0c0004
	v_perm_b32 v132, v166, v165, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v86, v96, v95, 0xc0c0004
	v_perm_b32 v88, v94, v93, 0xc0c0004
	v_perm_b32 v93, v104, v103, 0xc0c0004
	v_perm_b32 v94, v102, v101, 0xc0c0004
	v_perm_b32 v95, v116, v115, 0xc0c0004
	v_perm_b32 v96, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v101, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v102, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v103, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v104, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v113, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v114, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v115, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v116, v236, v235, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v118, v120, v119, 0xc0c0004
	v_perm_b32 v119, v170, v169, 0xc0c0004
	v_perm_b32 v120, v172, v171, 0xc0c0004
	v_perm_b32 v169, v216, v215, 0xc0c0004
	v_perm_b32 v170, v214, v213, 0xc0c0004
	v_perm_b32 v171, v224, v223, 0xc0c0004
	v_perm_b32 v174, v222, v221, 0xc0c0004
	v_perm_b32 v175, v232, v231, 0xc0c0004
	v_perm_b32 v176, v230, v229, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v213, v240, v239, 0xc0c0004
	v_perm_b32 v214, v238, v237, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	v_perm_b32 v254, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v165, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v166, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v167, v250, v249, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v173, v252, v251, 0xc0c0004
	v_perm_b32 v215, v248, v247, 0xc0c0004
	v_perm_b32 v216, v246, v245, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v126, v11, 0xc0c0004
	v_perm_b32 v9, v9, v253, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v126, v162, v136, 0xc0c0004
	v_perm_b32 v128, v134, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v90, v84, 0xc0c0004
	v_perm_b32 v82, v82, v164, 0xc0c0004
	v_lshl_or_b32 v100, v10, 16, v8
	v_lshl_or_b32 v99, v127, 16, v125
	v_lshl_or_b32 v98, v135, 16, v133
	v_lshl_or_b32 v97, v163, 16, v161
	v_lshl_or_b32 v157, v110, 16, v109
	v_lshl_or_b32 v112, v12, 16, v14
	v_lshl_or_b32 v111, v15, 16, v13
	v_lshl_or_b32 v110, v130, 16, v129
	v_lshl_or_b32 v109, v132, 16, v131
	v_lshl_or_b32 v132, v102, 16, v101
	v_lshl_or_b32 v131, v104, 16, v103
	v_lshl_or_b32 v130, v114, 16, v113
	v_lshl_or_b32 v129, v116, 16, v115
	v_lshl_or_b32 v172, v170, 16, v169
	v_lshl_or_b32 v171, v174, 16, v171
	v_lshl_or_b32 v170, v176, 16, v175
	v_lshl_or_b32 v169, v214, 16, v213
	v_lshl_or_b32 v160, v83, 16, v81
	v_lshl_or_b32 v159, v91, 16, v89
	v_lshl_or_b32 v158, v254, 16, v92
	v_lshl_or_b32 v164, v85, 16, v87
	v_lshl_or_b32 v163, v88, 16, v86
	v_lshl_or_b32 v162, v94, 16, v93
	v_lshl_or_b32 v161, v96, 16, v95
	v_lshl_or_b32 v168, v166, 16, v165
	v_lshl_or_b32 v167, v173, 16, v167
	v_lshl_or_b32 v166, v118, 16, v117
	v_lshl_or_b32 v165, v120, 16, v119
	v_lshl_or_b32 v176, v216, 16, v215
	v_lshl_or_b32 v175, v9, 16, v11
	v_lshl_or_b32 v174, v128, 16, v126
	v_lshl_or_b32 v173, v82, 16, v84
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
	v_wmma_i32_16x16x16_iu8 v[89:96], v[157:160], v[141:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[161:164], v[141:144], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[149:152], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[173:176], v[149:152], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[153:156], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[173:176], v[153:156], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v17, v81
	v_cvt_f32_i32_e32 v18, v82
	v_cvt_f32_i32_e32 v19, v83
	v_cvt_f32_i32_e32 v20, v84
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v83, v87
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v85, v89
	v_cvt_f32_i32_e32 v86, v90
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v88, v92
	v_cvt_f32_i32_e32 v89, v93
	v_cvt_f32_i32_e32 v90, v94
	v_cvt_f32_i32_e32 v91, v95
	v_cvt_f32_i32_e32 v92, v96
	v_cvt_f32_i32_e32 v93, v97
	v_cvt_f32_i32_e32 v94, v98
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v96, v100
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v99, v103
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v101, v105
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v105, v109
	v_cvt_f32_i32_e32 v106, v110
	v_cvt_f32_i32_e32 v109, v113
	v_cvt_f32_i32_e32 v110, v114
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v122, v126
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v126, v130
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v103, v107
	v_cvt_f32_i32_e32 v104, v108
	v_cvt_f32_i32_e32 v107, v111
	v_cvt_f32_i32_e32 v108, v112
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v119, v123
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v123, v127
	v_cvt_f32_i32_e32 v124, v128
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v128, v132
	v_cvt_f32_i32_e32 v131, v135
	v_cvt_f32_i32_e32 v132, v136
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v134, 16, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v88, v88, v134 :: v_dual_lshlrev_b32 v133, 16, v177
	v_dual_mul_f32 v11, v11, v133 :: v_dual_add_nc_u32 v56, s30, v56
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v8, v8, v133 :: v_dual_lshlrev_b32 v135, 16, v179
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v15, v15, v133 :: v_dual_lshlrev_b32 v136, 16, v180
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v17, v17, v133 :: v_dual_lshlrev_b32 v138, 16, v182
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v10, v10, v133 :: v_dual_lshlrev_b32 v139, 16, v183
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v19, v19, v133 :: v_dual_lshlrev_b32 v140, 16, v184
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v81, v81, v133 :: v_dual_lshlrev_b32 v142, 16, v186
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v12, v12, v133 :: v_dual_lshlrev_b32 v143, 16, v187
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v83, v83, v133 :: v_dual_lshlrev_b32 v144, 16, v188
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v14, v14, v133 :: v_dual_lshlrev_b32 v147, 16, v191
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v18, v18, v133 :: v_dual_lshlrev_b32 v151, 16, v195
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v146, 16, v190
	v_lshlrev_b32_e32 v150, 16, v194
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v20, v20, v133 :: v_dual_lshlrev_b32 v155, 16, v199
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v82, v82, v133 :: v_dual_lshlrev_b32 v159, 16, v203
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v84, v84, v133 :: v_dual_lshlrev_b32 v163, 16, v207
	v_mul_f32_e32 v9, v9, v133
	v_mul_f32_e32 v13, v13, v133
	v_dual_mul_f32 v86, v86, v134 :: v_dual_add_nc_u32 v53, s30, v53
	v_dual_mul_f32 v90, v90, v134 :: v_dual_lshlrev_b32 v137, 16, v181
	v_dual_mul_f32 v92, v92, v134 :: v_dual_lshlrev_b32 v141, 16, v185
	v_dual_mul_f32 v94, v94, v134 :: v_dual_lshlrev_b32 v145, 16, v189
	v_dual_mul_f32 v85, v85, v134 :: v_dual_lshlrev_b32 v148, 16, v192
	v_dual_mul_f32 v96, v96, v134 :: v_dual_lshlrev_b32 v149, 16, v193
	v_dual_mul_f32 v87, v87, v134 :: v_dual_lshlrev_b32 v152, 16, v196
	v_dual_mul_f32 v98, v98, v134 :: v_dual_lshlrev_b32 v153, 16, v197
	v_dual_mul_f32 v89, v89, v134 :: v_dual_lshlrev_b32 v156, 16, v200
	v_dual_mul_f32 v100, v100, v134 :: v_dual_lshlrev_b32 v157, 16, v201
	v_dual_mul_f32 v91, v91, v134 :: v_dual_lshlrev_b32 v160, 16, v204
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v93, v93, v134 :: v_dual_lshlrev_b32 v164, 16, v208
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v95, v95, v134 :: v_dual_lshlrev_b32 v168, 16, v212
	v_dual_mul_f32 v97, v97, v134 :: v_dual_mul_f32 v106, v106, v151
	v_dual_mul_f32 v99, v99, v134 :: v_dual_mul_f32 v108, v108, v151
	v_dual_mul_f32 v105, v105, v151 :: v_dual_lshlrev_b32 v154, 16, v198
	v_dual_mul_f32 v107, v107, v151 :: v_dual_lshlrev_b32 v158, 16, v202
	v_dual_mul_f32 v102, v102, v151 :: v_dual_lshlrev_b32 v161, 16, v205
	v_dual_mul_f32 v109, v109, v151 :: v_dual_lshlrev_b32 v162, 16, v206
	v_dual_mul_f32 v104, v104, v151 :: v_dual_lshlrev_b32 v165, 16, v209
	v_dual_mul_f32 v111, v111, v151 :: v_dual_lshlrev_b32 v166, 16, v210
	v_dual_mul_f32 v118, v118, v152 :: v_dual_lshlrev_b32 v167, 16, v211
	v_mul_f32_e32 v101, v101, v151
	v_mul_f32_e32 v103, v103, v151
	v_dual_mul_f32 v110, v110, v151 :: v_dual_mul_f32 v117, v117, v152
	v_dual_mul_f32 v112, v112, v151 :: v_dual_mul_f32 v119, v119, v152
	v_dual_mul_f32 v113, v113, v151 :: v_dual_mul_f32 v120, v120, v152
	v_dual_mul_f32 v114, v114, v151 :: v_dual_mul_f32 v121, v121, v152
	v_dual_mul_f32 v115, v115, v151 :: v_dual_mul_f32 v122, v122, v152
	v_dual_mul_f32 v116, v116, v151 :: v_dual_mul_f32 v123, v123, v152
	v_dual_mul_f32 v124, v124, v152 :: v_dual_fmac_f32 v79, v10, v137
	v_dual_mul_f32 v125, v125, v152 :: v_dual_fmac_f32 v54, v8, v135
	v_dual_mul_f32 v126, v126, v152 :: v_dual_fmac_f32 v77, v12, v139
	v_dual_mul_f32 v127, v127, v152 :: v_dual_fmac_f32 v68, v81, v147
	v_dual_mul_f32 v128, v128, v152 :: v_dual_fmac_f32 v75, v14, v141
	v_dual_mul_f32 v129, v129, v152 :: v_dual_fmac_f32 v78, v11, v138
	v_dual_mul_f32 v130, v130, v152 :: v_dual_fmac_f32 v73, v17, v143
	v_dual_mul_f32 v131, v131, v152 :: v_dual_fmac_f32 v64, v85, v135
	v_dual_mul_f32 v132, v132, v152 :: v_dual_fmac_f32 v71, v19, v145
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v80, v9, v136 :: v_dual_fmac_f32 v69, v20, v146
	v_dual_fmac_f32 v76, v13, v140 :: v_dual_fmac_f32 v65, v84, v150
	v_dual_fmac_f32 v74, v15, v142 :: v_dual_fmac_f32 v67, v82, v148
	v_dual_fmac_f32 v72, v18, v144 :: v_dual_fmac_f32 v59, v87, v137
	v_dual_fmac_f32 v66, v83, v149 :: v_dual_fmac_f32 v57, v89, v139
	v_dual_fmac_f32 v60, v86, v136 :: v_dual_fmac_f32 v51, v92, v142
	v_dual_fmac_f32 v58, v88, v138 :: v_dual_fmac_f32 v55, v90, v140
	v_dual_fmac_f32 v52, v91, v141 :: v_dual_fmac_f32 v49, v94, v144
	v_dual_fmac_f32 v50, v93, v143 :: v_dual_fmac_f32 v45, v96, v146
	v_dual_fmac_f32 v48, v95, v145 :: v_dual_fmac_f32 v43, v98, v148
	v_dual_fmac_f32 v44, v97, v147 :: v_dual_fmac_f32 v69, v112, v164
	v_dual_fmac_f32 v42, v99, v149 :: v_dual_fmac_f32 v67, v114, v166
	v_dual_fmac_f32 v40, v100, v150 :: v_dual_fmac_f32 v79, v103, v155
	v_dual_fmac_f32 v54, v101, v153 :: v_dual_fmac_f32 v75, v107, v159
	v_dual_fmac_f32 v80, v102, v154 :: v_dual_fmac_f32 v77, v105, v157
	v_dual_fmac_f32 v78, v104, v156 :: v_dual_fmac_f32 v73, v109, v161
	v_dual_fmac_f32 v76, v106, v158 :: v_dual_fmac_f32 v71, v111, v163
	v_dual_fmac_f32 v74, v108, v160 :: v_dual_fmac_f32 v59, v119, v155
	v_dual_fmac_f32 v72, v110, v162 :: v_dual_fmac_f32 v65, v116, v168
	v_dual_fmac_f32 v68, v113, v165 :: v_dual_fmac_f32 v55, v122, v158
	v_dual_fmac_f32 v66, v115, v167 :: v_dual_fmac_f32 v57, v121, v157
	v_dual_fmac_f32 v64, v117, v153 :: v_dual_fmac_f32 v51, v124, v160
	v_dual_fmac_f32 v60, v118, v154 :: v_dual_fmac_f32 v45, v128, v164
	v_dual_fmac_f32 v58, v120, v156 :: v_dual_fmac_f32 v49, v126, v162
	v_dual_fmac_f32 v52, v123, v159 :: v_dual_fmac_f32 v43, v130, v166
	v_fmac_f32_e32 v50, v125, v161
	v_fmac_f32_e32 v48, v127, v163
	v_fmac_f32_e32 v44, v129, v165
	v_fmac_f32_e32 v42, v131, v167
	v_fmac_f32_e32 v40, v132, v168
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, v68, v68 :: v_dual_max_f32 v13, v67, v67
	v_dual_max_f32 v14, v66, v66 :: v_dual_max_f32 v15, v65, v65
	v_max_f32_e32 v16, v64, v64
	v_dual_max_f32 v4, v77, v77 :: v_dual_max_f32 v5, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v6, v75, v75 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, v60, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, v58, v58
	v_max_f32_e32 v20, v57, v57
	v_max_f32_e32 v18, v59, v59
	v_max_f32_e32 v24, v55, v55
	v_dual_max_f32 v0, v54, v54 :: v_dual_max_f32 v1, v80, v80
	v_dual_max_f32 v2, v79, v79 :: v_dual_max_f32 v3, v78, v78
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v9, v72, v72 :: v_dual_max_f32 v36, 0, v17
	v_dual_max_f32 v38, 0, v19 :: v_dual_max_f32 v19, v50, v50
	v_max_f32_e32 v39, 0, v20
	v_max_f32_e32 v37, 0, v18
	v_max_f32_e32 v17, v52, v52
	v_dual_max_f32 v41, 0, v24 :: v_dual_max_f32 v20, v49, v49
	v_max_f32_e32 v18, v51, v51
	v_max_f32_e32 v24, v48, v48
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, v74, v74
	v_max_f32_e32 v8, v73, v73
	v_dual_max_f32 v10, v71, v71 :: v_dual_max_f32 v11, v69, v69
	v_dual_max_f32 v46, 0, v17 :: v_dual_max_f32 v49, 0, v20
	v_max_f32_e32 v47, 0, v18
	v_dual_max_f32 v17, v45, v45 :: v_dual_max_f32 v50, 0, v24
	v_dual_max_f32 v18, v44, v44 :: v_dual_mul_f32 v33, v2, v2
	v_dual_max_f32 v20, v42, v42 :: v_dual_mul_f32 v35, v0, v0
	v_dual_max_f32 v24, v40, v40 :: v_dual_mul_f32 v29, v6, v6
	v_max_f32_e32 v48, 0, v19
	v_max_f32_e32 v19, v43, v43
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v40, 0, v17
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v31, v4, v4 :: v_dual_max_f32 v42, 0, v18
	v_mul_f32_e32 v27, v8, v8
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v43, 0, v19 :: v_dual_max_f32 v44, 0, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v10, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v45, 0, v24 :: v_dual_mul_f32 v34, v1, v1
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v15, v15
	v_dual_mul_f32 v32, v3, v3 :: v_dual_mul_f32 v19, v13, v13
	v_dual_mul_f32 v30, v5, v5 :: v_dual_mul_f32 v15, v36, v36
	v_dual_mul_f32 v28, v7, v7 :: v_dual_mul_f32 v13, v38, v38
	v_dual_mul_f32 v26, v9, v9 :: v_dual_mul_f32 v9, v47, v47
	v_dual_mul_f32 v20, v11, v11 :: v_dual_mul_f32 v11, v41, v41
	v_dual_mul_f32 v24, v12, v12 :: v_dual_mul_f32 v7, v49, v49
	v_dual_mul_f32 v18, v14, v14 :: v_dual_mul_f32 v3, v40, v40
	v_dual_mul_f32 v16, v16, v16 :: v_dual_mul_f32 v5, v50, v50
	v_mul_f32_e32 v14, v37, v37
	v_dual_mul_f32 v12, v39, v39 :: v_dual_mul_f32 v1, v45, v45
	v_mul_f32_e32 v10, v46, v46
	v_mul_f32_e32 v8, v48, v48
	v_mul_f32_e32 v6, v42, v42
	v_mul_f32_e32 v4, v43, v43
	v_mul_f32_e32 v2, v44, v44
.LBB0_4:                                ; %._crit_edge
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 56, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, 0
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v23.l, v34.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s22, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v33.h
	v_mov_b16_e32 v36.h, v23.h
	v_mov_b16_e32 v39.h, v23.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v23
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v37, s0, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v23.l, v32.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v40, s0, v0, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v34, v38, 0x7fff
	v_mov_b16_e32 v38.l, v31.h
	v_add3_u32 v0, v35, v36, 0x7fff
	v_and_b32_e32 v36, 1, v39
	v_mov_b16_e32 v38.h, v23.h
	s_mov_b32 s0, 0x76543210
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v22, s23, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v35, 1, v23
	v_mov_b16_e32 v23.l, v30.h
	v_add3_u32 v0, v33, v36, 0x7fff
	v_mov_b16_e32 v36.l, v29.h
	v_mov_b16_e32 v36.h, v23.h
	v_add3_u32 v32, v32, v35, 0x7fff
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v21, s23, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v0.h
	v_and_b32_e32 v33, 1, v23
	v_and_b32_e32 v35, 1, v38
	v_mov_b16_e32 v23.l, v28.h
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_add3_u32 v30, v30, v33, 0x7fff
	v_add3_u32 v0, v31, v35, 0x7fff
	v_and_b32_e32 v31, 1, v23
	v_mov_b16_e32 v23.l, v26.h
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v35.h, v23.h
	v_mov_b16_e32 v30.l, v0.h
	v_add3_u32 v28, v28, v31, 0x7fff
	v_and_b32_e32 v31, 1, v23
	v_mov_b16_e32 v23.l, v20.h
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v26, v31, 0x7fff
	v_and_b32_e32 v33, 1, v36
	v_add3_u32 v0, v29, v33, 0x7fff
	v_and_b32_e32 v29, 1, v35
	v_mov_b16_e32 v33.l, v25.h
	v_mov_b16_e32 v33.h, v23.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v28.l, v0.h
	v_add3_u32 v0, v27, v29, 0x7fff
	v_mov_b16_e32 v29.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v27, 1, v33
	v_mov_b16_e32 v29.h, v23.h
	v_mov_b16_e32 v26.l, v0.h
	v_and_b32_e32 v0, 1, v23
	v_mov_b16_e32 v23.l, v19.h
	v_add3_u32 v25, v25, v27, 0x7fff
	v_and_b32_e32 v27, 1, v29
	v_mov_b16_e32 v29.l, v18.h
	v_add3_u32 v0, v20, v0, 0x7fff
	v_and_b32_e32 v20, 1, v23
	v_mov_b16_e32 v23.l, v17.h
	v_add3_u32 v24, v24, v27, 0x7fff
	v_and_b32_e32 v27, 1, v29
	v_mov_b16_e32 v24.l, v16.h
	v_add3_u32 v19, v19, v20, 0x7fff
	v_and_b32_e32 v20, 1, v23
	v_mov_b16_e32 v19.l, v24.h
	v_mov_b16_e32 v24.h, v23.h
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v0.l, v25.h
	v_mov_b16_e32 v25.l, v14.h
	v_mov_b16_e32 v25.h, v23.h
	v_add3_u32 v18, v18, v27, 0x7fff
	v_add3_u32 v17, v17, v20, 0x7fff
	v_and_b32_e32 v20, 1, v24
	v_and_b32_e32 v24, 1, v23
	v_mov_b16_e32 v23.l, v13.h
	v_and_b32_e32 v25, 1, v25
	v_mov_b16_e32 v17.l, v18.h
	v_add3_u32 v16, v16, v20, 0x7fff
	v_mov_b16_e32 v20.l, v12.h
	v_and_b32_e32 v18, 1, v23
	v_add3_u32 v14, v14, v25, 0x7fff
	v_mov_b16_e32 v23.l, v11.h
	v_mov_b16_e32 v20.h, v23.h
	v_add3_u32 v15, v15, v24, 0x7fff
	v_add3_u32 v13, v13, v18, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e32 v13.l, v14.h
	v_and_b32_e32 v14, 1, v23
	v_and_b32_e32 v16, 1, v20
	v_mov_b16_e32 v18.l, v10.h
	v_mov_b16_e32 v18.h, v23.h
	v_mov_b16_e32 v23.l, v9.h
	v_mov_b16_e32 v20.l, v8.h
	v_add3_u32 v12, v12, v16, 0x7fff
	v_add3_u32 v11, v11, v14, 0x7fff
	v_and_b32_e32 v16, 1, v18
	v_and_b32_e32 v18, 1, v23
	v_mov_b16_e32 v23.l, v7.h
	v_mov_b16_e32 v11.l, v12.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v10, v10, v16, 0x7fff
	v_add3_u32 v9, v9, v18, 0x7fff
	v_and_b32_e32 v12, 1, v23
	v_mov_b16_e32 v23.l, v3.h
	v_add3_u32 v8, v8, v20, 0x7fff
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v14.l, v2.h
	v_add3_u32 v7, v7, v12, 0x7fff
	v_and_b32_e32 v10, 1, v23
	v_mov_b16_e32 v23.l, v4.h
	v_mov_b16_e32 v12.l, v6.h
	v_mov_b16_e32 v12.h, v23.h
	v_mov_b16_e32 v14.h, v23.h
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v16, 1, v23
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v23.h
	v_and_b32_e32 v12, 1, v12
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v4, v4, v16, 0x7fff
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v18, 0x7632
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v23.l, v1.h
	v_add3_u32 v6, v6, v12, 0x7fff
	v_add3_u32 v2, v2, v14, 0x7fff
	v_cndmask_b32_e32 v14, v17, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v17 :: v_dual_cndmask_b32 v17, v11, v15
	v_cndmask_b32_e32 v11, v15, v11, vcc_lo
	v_cndmask_b32_e32 v15, 0x1054, v16, vcc_lo
	v_cndmask_b32_e32 v16, 0x3276, v18, vcc_lo
	v_add3_u32 v5, v5, v8, 0x7fff
	v_and_b32_e32 v8, 1, v23
	v_mov_b16_e32 v4.l, v6.h
	v_lshl_or_b32 v15, v15, 8, v15
	v_lshl_or_b32 v16, v16, 8, v16
	v_add3_u32 v3, v3, v10, 0x7fff
	v_add3_u32 v1, v1, v8, 0x7fff
	v_mov_b16_e32 v3.l, v5.h
	v_mov_b16_e32 v1.l, v2.h
	v_dual_cndmask_b32 v5, v34, v30 :: v_dual_cndmask_b32 v8, v32, v28
	v_cndmask_b32_e32 v18, v9, v13, vcc_lo
	v_cndmask_b32_e32 v9, v13, v9, vcc_lo
	v_dual_cndmask_b32 v13, v4, v7 :: v_dual_cndmask_b32 v4, v7, v4
	v_and_b32_e32 v7, 0x540054, v15
	v_dual_cndmask_b32 v10, v19, v26 :: v_dual_and_b32 v15, 0x760076, v16
	v_cndmask_b32_e32 v12, v26, v19, vcc_lo
	v_cndmask_b32_e32 v19, v1, v3, vcc_lo
	v_cndmask_b32_e32 v1, v3, v1, vcc_lo
	v_permlanex16_b32 v3, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v15, 4, v15
	v_cndmask_b32_e32 v2, v30, v34, vcc_lo
	v_cndmask_b32_e32 v6, v28, v32, vcc_lo
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x5040504, v7
	v_and_b32_e32 v20, 0x7060706, v8
	v_permlanex16_b32 v23, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v16
	v_perm_b32 v1, v3, v2, v20
	v_perm_b32 v2, v5, v6, v16
	v_perm_b32 v3, v5, v6, v20
	v_perm_b32 v4, v12, v10, v16
	v_perm_b32 v5, v12, v10, v20
	v_perm_b32 v6, v15, v14, v16
	v_perm_b32 v7, v15, v14, v20
	v_perm_b32 v8, v11, v17, v16
	v_perm_b32 v10, v23, v18, v16
	v_perm_b32 v12, v24, v13, v16
	v_perm_b32 v14, v25, v19, v16
	v_add_lshl_u32 v16, v37, v22, 1
	v_perm_b32 v9, v11, v17, v20
	v_add_lshl_u32 v17, v40, v22, 1
	v_perm_b32 v11, v23, v18, v20
	v_add_lshl_u32 v18, v37, v21, 1
	v_perm_b32 v13, v24, v13, v20
	v_perm_b32 v15, v25, v19, v20
	v_add_lshl_u32 v19, v40, v21, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v17, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v19, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 255
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7404
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
