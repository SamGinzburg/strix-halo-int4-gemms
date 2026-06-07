	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v1, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v13, 0xf0, v0
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
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v12, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s4, s7
	s_mul_hi_u32 s9, s5, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s5, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s13, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s5, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s14, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s5, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s15, 31
.Ltmp15:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp16:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s13, 31
.Ltmp17:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
	v_mul_lo_u32 v7, s13, v3
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s29, s15, 6
.Ltmp22:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v3, s14, 8, v3
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 1, v0
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s16, s22, s13
	v_dual_mov_b32 v28, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_bfe_i32 v8, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 4, v4
	v_bfe_i32 v11, v0, 2, 1
	v_bfe_i32 v15, v0, 3, 1
	v_or_b32_e32 v17, s28, v12
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v8, 0x90, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v23, v7, v1, s16
	s_mov_b32 s16, s12
	v_lshlrev_b32_e32 v10, 5, v0
	v_lshlrev_b32_e32 v14, 4, v0
	v_and_b32_e32 v9, 0x37c, v5
	v_and_b32_e32 v11, 0x90, v11
	v_and_b32_e32 v15, 0x90, v15
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v10, 0x160, v10
	v_dual_mov_b32 v53, 0 :: v_dual_and_b32 v16, 0xe00, v14
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v14, 0xf70, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v18, v11, v10
	v_or3_b32 v20, v10, v16, v11
	v_xor_b32_e32 v8, v8, v9
	v_or_b32_e32 v9, 16, v17
	v_lshrrev_b32_e32 v10, 6, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	v_xor_b32_e32 v21, v15, v14
	s_ashr_i32 s30, s1, 5
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v11, 1, v13
	v_mul_lo_u32 v15, v9, s30
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v9, 2, v10
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s2, 8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v3, s0, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 28, v5
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v5, 0x1c0, v5
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v4, 5, v4
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v9, 0, v9
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v19, 0, v11
	v_dual_mov_b32 v45, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v3, 0x80, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v9, v5, v4
	v_add3_u32 v26, v19, v11, v4
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v4, s28, v6
	v_xor_b32_e32 v22, 16, v18
	v_xor_b32_e32 v24, 16, v20
	v_mul_lo_u32 v14, v17, s30
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v17, 28, v10
	v_mad_u64_u32 v[9:10], null, s13, v3, v[1:2]
	v_mad_u64_u32 v[10:11], null, s13, v4, v[2:3]
	s_mov_b32 s13, s12
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v34, 0, v8
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v16, s22, v0
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v36, 0, v21
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v38, 0, v18
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v40, 0, v22
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v42, 0, v20
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v49, 0, v24
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v50, v25, v17
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v51, v26, v17
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s31, s3, 6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s0, s6
	s_mov_b32 s1, s7
	s_mov_b32 s2, s26
	s_mov_b32 s3, s27
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v66, s31, v10
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v67, s31, v23
	.loc	1 320 26 is_stmt 0              ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v70, s31, v9
	.loc	1 330 29 is_stmt 1              ; generate_amdgcn.py:330:29
	s_ashr_i32 s12, s31, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s13, s31, 32
	.loc	1 318 26 is_stmt 0              ; generate_amdgcn.py:318:26
	buffer_load_b32 v74, v66, s[24:27], 0 offen
	.loc	1 320 26 is_stmt 1              ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[58:61], v67, s[0:3], 0 offen
	buffer_load_b128 v[62:65], v70, s[0:3], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v75, v66, s[24:27], 0 offen offset:32
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[66:69], v67, s[0:3], 0 offen offset:32
	buffer_load_b128 v[70:73], v70, s[0:3], 0 offen offset:32
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s14, s12, s23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v76, v14, s12, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v77, v16, s14, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s12, s30
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v34, v74 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v36, v[58:61]
	s_waitcnt vmcnt(3)
	ds_store_b128 v36, v[62:65] offset:4096
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v34, v75 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v36, v[66:69] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v36, v[70:73] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v58, v77, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v59, v15, s12, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s12, s13, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v60, v14, s12, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s12, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v61, v15, s12, 1
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	s_clause 0x1
	buffer_load_u16 v114, v76, s[4:7], 0 offen
	buffer_load_u16 v115, v59, s[4:7], 0 offen
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s12, s12, s23
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[74:77], v38 offset:16384
	ds_load_b128 v[90:93], v38 offset:16896
	ds_load_b128 v[94:97], v40 offset:16384
	ds_load_b128 v[98:101], v40 offset:16896
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[82:85], v42
	ds_load_b128 v[102:105], v42 offset:4096
	ds_load_b128 v[106:109], v49
	ds_load_b128 v[110:113], v49 offset:4096
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v62, v16, s12, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s29, s29, -1
	s_add_i32 s31, s31, 64
	s_cmp_lg_u32 s29, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[102:105], v[74:77], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[110:113], v[94:97], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	ds_store_b16 v50, v58 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v116, v60, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v117, v62, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v118, v61, s[4:7], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[90:93], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[106:109], v[94:97], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[106:109], v[98:101], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[110:113], v[98:101], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v119, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v120, v59
	v_cvt_f32_i32_e32 v121, v60
	v_cvt_f32_i32_e32 v122, v61
	v_cvt_f32_i32_e32 v123, v62
	v_cvt_f32_i32_e32 v124, v63
	v_cvt_f32_i32_e32 v125, v64
	v_cvt_f32_i32_e32 v126, v65
	v_cvt_f32_i32_e32 v127, v74
	v_cvt_f32_i32_e32 v128, v75
	v_cvt_f32_i32_e32 v129, v76
	v_cvt_f32_i32_e32 v130, v77
	v_cvt_f32_i32_e32 v131, v82
	v_cvt_f32_i32_e32 v132, v83
	v_cvt_f32_i32_e32 v133, v84
	v_cvt_f32_i32_e32 v134, v85
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[58:61], v19 offset:18432
	ds_load_b128 v[62:65], v19 offset:18448
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[74:77], v38 offset:17408
	ds_load_b128 v[90:93], v38 offset:17920
	ds_load_b128 v[94:97], v40 offset:17408
	ds_load_b128 v[98:101], v40 offset:17920
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[82:85], v42 offset:8192
	ds_load_b128 v[102:105], v42 offset:12288
	ds_load_b128 v[106:109], v49 offset:8192
	ds_load_b128 v[110:113], v49 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v129, v129, v115
	v_mul_f32_e32 v119, v119, v114
	v_mul_f32_e32 v122, v122, v114
	s_waitcnt lgkmcnt(9)
	v_dual_mul_f32 v148, v88, v115 :: v_dual_lshlrev_b32 v149, 16, v58
	v_dual_mul_f32 v121, v121, v114 :: v_dual_mul_f32 v128, v128, v115
	v_dual_mul_f32 v123, v123, v114 :: v_dual_mul_f32 v130, v130, v115
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v28, v119, v149 :: v_dual_lshlrev_b32 v151, 16, v60
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(8)
	v_lshlrev_b32_e32 v153, 16, v62
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v125, v125, v114 :: v_dual_mul_f32 v142, v78, v115
	v_dual_mul_f32 v135, v66, v114 :: v_dual_mul_f32 v144, v80, v115
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v56, v121, v151 :: v_dual_lshlrev_b32 v155, 16, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v54, v123, v153 :: v_dual_and_b32 v157, 0xffff0000, v58
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v124, v124, v114 :: v_dual_mul_f32 v143, v79, v115
	v_mul_f32_e32 v126, v126, v114
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v52, v125, v155
	v_dual_fmac_f32 v47, v135, v157 :: v_dual_lshlrev_b32 v154, 16, v63
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v156, 16, v65
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v136, v67, v114 :: v_dual_mul_f32 v133, v133, v115
	v_dual_mul_f32 v139, v70, v114 :: v_dual_mul_f32 v132, v132, v115
	v_mul_f32_e32 v145, v81, v115
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v53, v124, v154
	v_dual_fmac_f32 v48, v126, v156 :: v_dual_and_b32 v161, 0xffff0000, v62
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v158, 0xffff0000, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v120, v120, v114
	v_dual_mul_f32 v137, v68, v114 :: v_dual_mul_f32 v134, v134, v115
	v_dual_mul_f32 v138, v69, v114 :: v_dual_mul_f32 v131, v131, v115
	v_mul_f32_e32 v140, v71, v114
	v_dual_mul_f32 v141, v72, v114 :: v_dual_mul_f32 v146, v86, v115
	v_dual_mul_f32 v114, v73, v114 :: v_dual_mul_f32 v147, v87, v115
	v_mul_f32_e32 v127, v127, v115
	v_dual_mul_f32 v115, v89, v115 :: v_dual_lshlrev_b32 v152, 16, v61
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v150, 16, v59
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v32, v129, v151 :: v_dual_and_b32 v163, 0xffff0000, v64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v164, 0xffff0000, v65
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v43, v139, v161 :: v_dual_and_b32 v162, 0xffff0000, v63
	v_dual_fmac_f32 v46, v136, v158 :: v_dual_and_b32 v159, 0xffff0000, v60
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v160, 0xffff0000, v61
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[102:105], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[90:93], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[106:109], v[94:97], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[90:93], v[1:8] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v25, v131, v157
	v_fmac_f32_e32 v17, v148, v163
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[74:81], v[106:109], v[98:101], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v37, v114, v164
	v_fmac_f32_e32 v41, v140, v162
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[66:73], v[110:113], v[94:97], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_wmma_i32_16x16x16_iu8 v[82:89], v[110:113], v[98:101], v[82:89] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v55, v122, v152
	v_fmac_f32_e32 v57, v120, v150
	v_dual_fmac_f32 v45, v137, v159 :: v_dual_fmac_f32 v44, v138, v160
	v_fmac_f32_e32 v39, v141, v163
	v_dual_fmac_f32 v35, v127, v149 :: v_dual_fmac_f32 v26, v145, v156
	v_dual_fmac_f32 v33, v128, v150 :: v_dual_fmac_f32 v30, v142, v153
	v_dual_fmac_f32 v31, v130, v152 :: v_dual_fmac_f32 v24, v132, v158
	v_dual_fmac_f32 v29, v143, v154 :: v_dual_fmac_f32 v22, v133, v159
	v_dual_fmac_f32 v27, v144, v155 :: v_dual_fmac_f32 v20, v146, v161
	v_dual_fmac_f32 v21, v134, v160 :: v_dual_fmac_f32 v18, v147, v162
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v90, 16, v116
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v11, v115, v164 :: v_dual_lshlrev_b32 v92, 16, v117
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v96, v61, v90
	v_mul_f32_e32 v93, v58, v90
	v_mul_f32_e32 v94, v59, v90
	v_mul_f32_e32 v95, v60, v90
	ds_store_b32 v51, v92 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v19 offset:18432
	v_mul_f32_e32 v97, v62, v90
	v_mul_f32_e32 v98, v63, v90
	v_mul_f32_e32 v99, v64, v90
	v_mul_f32_e32 v100, v65, v90
	ds_load_b128 v[62:65], v19 offset:18448
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_fmac_f32 v56, v95, v60 :: v_dual_lshlrev_b32 v91, 16, v118
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v101, v66, v90 :: v_dual_mul_f32 v84, v84, v91
	v_dual_mul_f32 v102, v67, v90 :: v_dual_mul_f32 v85, v85, v91
	v_dual_mul_f32 v103, v68, v90 :: v_dual_mul_f32 v82, v82, v91
	v_dual_mul_f32 v104, v69, v90 :: v_dual_mul_f32 v79, v79, v91
	v_dual_mul_f32 v105, v70, v90 :: v_dual_mul_f32 v88, v88, v91
	v_dual_mul_f32 v106, v71, v90 :: v_dual_mul_f32 v89, v89, v91
	v_dual_mul_f32 v107, v72, v90 :: v_dual_mul_f32 v86, v86, v91
	v_dual_mul_f32 v90, v73, v90 :: v_dual_mul_f32 v83, v83, v91
	ds_load_b128 v[66:69], v19 offset:18944
	ds_load_b128 v[70:73], v19 offset:18960
	v_mul_f32_e32 v74, v74, v91
	v_mul_f32_e32 v75, v75, v91
	v_mul_f32_e32 v76, v76, v91
	v_mul_f32_e32 v77, v77, v91
	v_mul_f32_e32 v78, v78, v91
	v_mul_f32_e32 v80, v80, v91
	v_mul_f32_e32 v81, v81, v91
	v_dual_mul_f32 v87, v87, v91 :: v_dual_fmac_f32 v28, v93, v58
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v57, v94, v59 :: v_dual_fmac_f32 v54, v97, v62
	v_dual_fmac_f32 v55, v96, v61 :: v_dual_fmac_f32 v52, v99, v64
	v_dual_fmac_f32 v53, v98, v63 :: v_dual_fmac_f32 v48, v100, v65
	v_fmac_f32_e32 v35, v74, v58
	v_dual_fmac_f32 v33, v75, v59 :: v_dual_fmac_f32 v32, v76, v60
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v47, v101, v66 :: v_dual_fmac_f32 v46, v102, v67
	v_dual_fmac_f32 v45, v103, v68 :: v_dual_fmac_f32 v44, v104, v69
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v43, v105, v70
	v_dual_fmac_f32 v41, v106, v71 :: v_dual_fmac_f32 v26, v81, v65
	v_dual_fmac_f32 v39, v107, v72 :: v_dual_fmac_f32 v30, v78, v62
	v_dual_fmac_f32 v37, v90, v73 :: v_dual_fmac_f32 v24, v83, v67
	v_dual_fmac_f32 v31, v77, v61 :: v_dual_fmac_f32 v18, v87, v71
	v_fmac_f32_e32 v29, v79, v63
	v_fmac_f32_e32 v27, v80, v64
	v_dual_fmac_f32 v25, v82, v66 :: v_dual_fmac_f32 v22, v84, v68
	v_dual_fmac_f32 v21, v85, v69 :: v_dual_fmac_f32 v20, v86, v70
	v_fmac_f32_e32 v17, v88, v72
	v_fmac_f32_e32 v11, v89, v73
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v23, v39, v39
	v_dual_max_f32 v1, v28, v28 :: v_dual_max_f32 v2, v57, v57
	v_dual_max_f32 v5, v54, v54 :: v_dual_max_f32 v6, v53, v53
	v_dual_max_f32 v7, v52, v52 :: v_dual_max_f32 v28, v37, v37
	v_max_f32_e32 v34, v35, v35
	v_max_f32_e32 v35, 0, v23
	v_max_f32_e32 v23, v33, v33
	v_dual_max_f32 v3, v56, v56 :: v_dual_max_f32 v4, v55, v55
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, v48, v48
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v46, v46 :: v_dual_max_f32 v9, v47, v47
	v_dual_max_f32 v14, v45, v45 :: v_dual_max_f32 v15, v44, v44
	v_dual_max_f32 v16, v43, v43 :: v_dual_max_f32 v19, v41, v41
	v_dual_max_f32 v36, 0, v28 :: v_dual_max_f32 v37, 0, v34
	v_dual_max_f32 v28, v32, v32 :: v_dual_max_f32 v31, v31, v31
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v29, v29, v29
	v_max_f32_e32 v38, 0, v23
	v_dual_max_f32 v23, v27, v27 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v43, 0, v23
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v48, 0, v21
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_max_f32_e32 v10, 0, v10
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v39, 0, v28 :: v_dual_max_f32 v40, 0, v31
	v_dual_max_f32 v41, 0, v30 :: v_dual_max_f32 v42, 0, v29
	v_dual_max_f32 v44, 0, v26 :: v_dual_max_f32 v45, 0, v25
	v_dual_max_f32 v46, 0, v24 :: v_dual_max_f32 v47, 0, v22
	v_dual_max_f32 v49, 0, v20 :: v_dual_max_f32 v50, 0, v18
	v_dual_max_f32 v51, 0, v17 :: v_dual_max_f32 v52, 0, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v34, v1, v1 :: v_dual_mul_f32 v33, v2, v2
	v_dual_mul_f32 v32, v3, v3 :: v_dual_mul_f32 v29, v4, v4
	v_dual_mul_f32 v31, v5, v5 :: v_dual_mul_f32 v30, v6, v6
	v_dual_mul_f32 v28, v7, v7 :: v_dual_mul_f32 v27, v8, v8
	v_dual_mul_f32 v26, v9, v9 :: v_dual_mul_f32 v25, v10, v10
	v_dual_mul_f32 v24, v14, v14 :: v_dual_mul_f32 v23, v15, v15
	v_dual_mul_f32 v22, v16, v16 :: v_dual_mul_f32 v21, v19, v19
	v_dual_mul_f32 v20, v35, v35 :: v_dual_mul_f32 v19, v36, v36
	v_dual_mul_f32 v18, v37, v37 :: v_dual_mul_f32 v17, v38, v38
	v_dual_mul_f32 v16, v39, v39 :: v_dual_mul_f32 v15, v40, v40
	v_dual_mul_f32 v14, v41, v41 :: v_dual_mul_f32 v11, v42, v42
	v_dual_mul_f32 v10, v43, v43 :: v_dual_mul_f32 v9, v44, v44
	v_dual_mul_f32 v8, v45, v45 :: v_dual_mul_f32 v7, v46, v46
	v_dual_mul_f32 v6, v47, v47 :: v_dual_mul_f32 v5, v48, v48
	v_dual_mul_f32 v4, v49, v49 :: v_dual_mul_f32 v3, v50, v50
	v_dual_mul_f32 v2, v51, v51 :: v_dual_mul_f32 v1, v52, v52
.LBB0_4:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v13, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v33.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s23
	v_mul_lo_u32 v36, s23, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v34.h
	v_mov_b16_e32 v12.h, v35.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v38, s28, s22, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v35
	v_mov_b16_e32 v37.l, v32.h
	v_mov_b16_e32 v37.h, v35.h
	v_mov_b16_e32 v35.l, v29.h
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v13, v33, v13, 0x7fff
	v_and_b32_e32 v12, 1, v12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v39, s23, 4, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_add3_u32 v12, v34, v12, 0x7fff
	v_and_b32_e32 v34, 1, v37
	v_mov_b16_e32 v37.l, v31.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v13.l, v12.h
	v_and_b32_e32 v33, 1, v35
	v_mov_b16_e32 v35.l, v30.h
	v_add3_u32 v12, v32, v34, 0x7fff
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v34.h, v35.h
	v_add3_u32 v29, v29, v33, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v29.l, v12.h
	v_and_b32_e32 v33, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v30, v32, 0x7fff
	v_and_b32_e32 v32, 1, v34
	v_add3_u32 v12, v31, v33, 0x7fff
	v_and_b32_e32 v31, 1, v35
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v33.l, v26.h
	v_mov_b16_e32 v33.h, v35.h
	v_mov_b16_e32 v30.l, v12.h
	v_add3_u32 v12, v28, v32, 0x7fff
	v_add3_u32 v27, v27, v31, 0x7fff
	v_and_b32_e32 v28, 1, v35
	v_and_b32_e32 v31, 1, v33
	v_mov_b16_e32 v35.l, v23.h
	v_mov_b16_e32 v32.l, v24.h
	v_mov_b16_e32 v32.h, v35.h
	v_mov_b16_e32 v27.l, v12.h
	v_add3_u32 v12, v26, v31, 0x7fff
	v_add3_u32 v25, v25, v28, 0x7fff
	v_and_b32_e32 v26, 1, v35
	v_and_b32_e32 v28, 1, v32
	v_mov_b16_e32 v35.l, v21.h
	v_mov_b16_e32 v31.l, v22.h
	v_mov_b16_e32 v31.h, v35.h
	v_mov_b16_e32 v25.l, v12.h
	v_add3_u32 v12, v24, v28, 0x7fff
	v_add3_u32 v23, v23, v26, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_and_b32_e32 v26, 1, v31
	v_mov_b16_e32 v35.l, v19.h
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v35.h
	v_mov_b16_e32 v23.l, v12.h
	v_add3_u32 v12, v22, v26, 0x7fff
	v_add3_u32 v21, v21, v24, 0x7fff
	v_and_b32_e32 v22, 1, v35
	v_and_b32_e32 v24, 1, v28
	v_mov_b16_e32 v35.l, v17.h
	v_mov_b16_e32 v26.l, v18.h
	v_mov_b16_e32 v26.h, v35.h
	v_mov_b16_e32 v21.l, v12.h
	v_add3_u32 v12, v20, v24, 0x7fff
	v_add3_u32 v19, v19, v22, 0x7fff
	v_and_b32_e32 v20, 1, v35
	v_and_b32_e32 v22, 1, v26
	v_mov_b16_e32 v24.l, v16.h
	v_mov_b16_e32 v24.h, v35.h
	v_mov_b16_e32 v35.l, v15.h
	v_mov_b16_e32 v19.l, v12.h
	v_add3_u32 v12, v18, v22, 0x7fff
	v_add3_u32 v17, v17, v20, 0x7fff
	v_and_b32_e32 v20, 1, v24
	v_mov_b16_e32 v22.l, v14.h
	v_mov_b16_e32 v22.h, v35.h
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v11.h
	v_mov_b16_e32 v17.l, v12.h
	v_add3_u32 v12, v16, v20, 0x7fff
	v_and_b32_e32 v16, 1, v22
	v_mov_b16_e32 v20.l, v10.h
	v_mov_b16_e32 v20.h, v35.h
	v_add3_u32 v15, v15, v18, 0x7fff
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v15.l, v12.h
	v_add3_u32 v12, v14, v16, 0x7fff
	v_mov_b16_e32 v35.l, v9.h
	v_and_b32_e32 v14, 1, v20
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v35.h
	v_add3_u32 v11, v11, v18, 0x7fff
	v_mov_b16_e32 v11.l, v12.h
	v_and_b32_e32 v12, 1, v35
	v_mov_b16_e32 v35.l, v7.h
	v_add3_u32 v10, v10, v14, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v6.h
	v_add3_u32 v9, v9, v12, 0x7fff
	v_and_b32_e32 v12, 1, v35
	v_mov_b16_e32 v35.l, v5.h
	v_add3_u32 v8, v8, v14, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v9.l, v10.h
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v3.h
	v_mov_b16_e32 v12.h, v35.h
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b16_e32 v10.l, v4.h
	v_add3_u32 v5, v5, v8, 0x7fff
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v1.h
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v5.l, v6.h
	v_mov_b16_e32 v10.h, v35.h
	v_mov_b32_e32 v14, 0x7632
	v_and_b32_e32 v6, 1, v35
	v_add3_u32 v2, v2, v12, 0x7fff
	v_add3_u32 v3, v3, v8, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b32_e32 v14, 0x3276, v14, vcc_lo
	v_add3_u32 v0, v1, v6, 0x7fff
	v_mov_b16_e32 v0.l, v2.h
	v_dual_cndmask_b32 v1, v30, v13 :: v_dual_cndmask_b32 v2, v13, v30
	v_mov_b32_e32 v13, 0x5410
	v_add3_u32 v4, v4, v10, 0x7fff
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e32 v6, v29, v27, vcc_lo
	v_cndmask_b32_e32 v10, v25, v21, vcc_lo
	v_cndmask_b32_e32 v13, 0x1054, v13, vcc_lo
	v_mov_b16_e32 v3.l, v4.h
	v_dual_cndmask_b32 v18, v11, v17 :: v_dual_cndmask_b32 v11, v17, v11
	v_cndmask_b32_e32 v17, v9, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b32_e32 v16, v23, v19, vcc_lo
	v_cndmask_b32_e32 v9, v15, v9, vcc_lo
	v_cndmask_b32_e32 v15, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_and_b32_e32 v7, 0x540054, v13
	v_dual_cndmask_b32 v12, v19, v23 :: v_dual_and_b32 v13, 0x760076, v14
	v_dual_cndmask_b32 v19, v0, v5 :: v_dual_cndmask_b32 v0, v5, v0
	v_permlanex16_b32 v5, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v7, 4, v7
	v_lshl_or_b32 v7, v13, 4, v13
	v_cndmask_b32_e32 v4, v27, v29, vcc_lo
	v_cndmask_b32_e32 v8, v21, v25, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x5040504, v6
	v_and_b32_e32 v16, 0x7060706, v7
	v_permlanex16_b32 v20, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v14
	v_perm_b32 v1, v2, v1, v16
	v_perm_b32 v2, v5, v4, v14
	v_perm_b32 v3, v5, v4, v16
	v_perm_b32 v4, v10, v8, v14
	v_perm_b32 v5, v10, v8, v16
	v_perm_b32 v6, v13, v12, v14
	v_perm_b32 v7, v13, v12, v16
	v_perm_b32 v8, v11, v18, v14
	v_perm_b32 v9, v11, v18, v16
	v_perm_b32 v11, v20, v17, v16
	v_perm_b32 v12, v21, v15, v14
	v_perm_b32 v13, v21, v15, v16
	v_perm_b32 v15, v22, v19, v16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v38, v36, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v10, v20, v17, v14
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v38, v39, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v22, v19, v14
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 165
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4588
; TotalNumSgprs: 34
; NumVgprs: 165
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
