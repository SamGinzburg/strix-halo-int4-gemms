	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
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
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v23, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v24, 0xf0, v0
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
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
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
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s15, 31
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v4, 1, v0
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s13, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
	v_mul_lo_u32 v7, s13, v3
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s29, s15, 6
.Ltmp21:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v3, s14, 8, v3
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 4, v4
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s16, s22, s13
	v_bfe_i32 v8, v0, 5, 1
	v_bfe_i32 v11, v0, 2, 1
	v_or_b32_e32 v15, s28, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v49, v7, v1, s16
	s_mov_b32 s16, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v5, 2, v0
	v_lshlrev_b32_e32 v10, 5, v0
	v_lshlrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v8, 0x90, v8
	v_and_b32_e32 v11, 0x90, v11
	v_and_b32_e32 v9, 0x37c, v5
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v10, 0x160, v10
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v14, 0xe00, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v8, v8, v9
	v_or_b32_e32 v16, v11, v10
	v_or_b32_e32 v9, 16, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v14, v10, v14, v11
	v_lshrrev_b32_e32 v10, 6, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v11, 1, v24
	s_ashr_i32 s30, s1, 5
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s2, 8
	v_mul_lo_u32 v46, v9, s30
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v9, 2, v10
	v_subrev_nc_u32_e32 v3, s0, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v6, 3, v0
	v_and_b32_e32 v2, 28, v5
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v5, 0x1c0, v5
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v4, 5, v4
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v9, 0, v9
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v48, 0, v11
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v3, 0x80, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v9, v5, v4
	v_add3_u32 v19, v48, v11, v4
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v4, s28, v6
	v_bfe_i32 v13, v0, 3, 1
	v_mul_lo_u32 v45, v15, s30
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v15, 28, v10
	v_mad_u64_u32 v[9:10], null, s13, v3, v[1:2]
	v_mad_u64_u32 v[10:11], null, s13, v4, v[2:3]
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v50, 0, v8
	s_mov_b32 s13, s12
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v13, 0x90, v13
	v_dual_mov_b32 v5, s16 :: v_dual_and_b32 v12, 0xf70, v12
	v_mov_b32_e32 v37, 0
	v_xor_b32_e32 v17, 16, v14
	v_or_b32_e32 v47, s22, v0
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v52, 0, v16
	v_xor_b32_e32 v12, v13, v12
	v_xor_b32_e32 v13, 16, v16
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v54, 0, v14
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v55, 0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v51, 0, v12
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v53, 0, v13
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v4, s15
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_add_nc_u32_e32 v56, v18, v15
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v57, v19, v15
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v12, 0
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
	v_add_nc_u32_e32 v67, s31, v49
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
	v_add_lshl_u32 v76, v45, s12, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v77, v47, s14, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s12, s30
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v50, v74 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v51, v[58:61]
	s_waitcnt vmcnt(3)
	ds_store_b128 v51, v[62:65] offset:4096
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v50, v75 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v51, v[66:69] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[70:73] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v58, v77, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v59, v46, s12, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s12, s13, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v60, v45, s12, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s12, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v61, v46, s12, 1
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	s_clause 0x1
	buffer_load_u16 v114, v76, s[4:7], 0 offen
	buffer_load_u16 v115, v59, s[4:7], 0 offen
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s12, s12, s23
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[74:77], v52 offset:16384
	ds_load_b128 v[90:93], v52 offset:16896
	ds_load_b128 v[94:97], v53 offset:16384
	ds_load_b128 v[98:101], v53 offset:16896
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[82:85], v54
	ds_load_b128 v[102:105], v54 offset:4096
	ds_load_b128 v[106:109], v55
	ds_load_b128 v[110:113], v55 offset:4096
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v62, v47, s12, 1
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
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	ds_store_b16 v56, v58 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v116, v62, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v117, v60, s[4:7], 0 offen
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
	v_cvt_f32_i32_e32 v119, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v120, v60
	v_cvt_f32_i32_e32 v121, v61
	v_cvt_f32_i32_e32 v122, v75
	v_cvt_f32_i32_e32 v123, v76
	v_cvt_f32_i32_e32 v124, v77
	v_cvt_f32_i32_e32 v125, v82
	v_cvt_f32_i32_e32 v126, v83
	v_cvt_f32_i32_e32 v127, v84
	v_cvt_f32_i32_e32 v128, v85
	v_cvt_f32_i32_e32 v129, v87
	v_cvt_f32_i32_e32 v130, v88
	v_cvt_f32_i32_e32 v131, v89
	v_cvt_f32_i32_e32 v132, v58
	v_cvt_f32_i32_e32 v133, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[58:61], v48 offset:18432
	ds_load_b128 v[87:90], v48 offset:18448
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[74:77], v52 offset:17408
	ds_load_b128 v[91:94], v52 offset:17920
	ds_load_b128 v[95:98], v53 offset:17408
	ds_load_b128 v[99:102], v53 offset:17920
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[82:85], v54 offset:8192
	ds_load_b128 v[103:106], v54 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v134, 16, v114
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[107:110], v55 offset:8192
	ds_load_b128 v[111:114], v55 offset:12288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v123, v115, v123
	v_mul_f32_e32 v119, v134, v119
	v_mul_f32_e32 v120, v134, v120
	v_dual_mul_f32 v121, v134, v121 :: v_dual_mul_f32 v132, v132, v134
	v_mul_f32_e32 v135, v134, v62
	v_mul_f32_e32 v138, v134, v65
	v_dual_mul_f32 v136, v134, v63 :: v_dual_mul_f32 v149, v115, v81
	v_dual_mul_f32 v137, v134, v64 :: v_dual_mul_f32 v122, v115, v122
	v_dual_mul_f32 v139, v134, v66 :: v_dual_mul_f32 v124, v115, v124
	v_dual_mul_f32 v140, v134, v67 :: v_dual_mul_f32 v125, v115, v125
	v_mul_f32_e32 v141, v134, v68
	v_dual_mul_f32 v142, v134, v69 :: v_dual_mul_f32 v147, v115, v79
	v_dual_mul_f32 v143, v134, v70 :: v_dual_mul_f32 v148, v115, v80
	v_dual_mul_f32 v144, v134, v71 :: v_dual_mul_f32 v129, v115, v129
	v_dual_mul_f32 v145, v134, v72 :: v_dual_mul_f32 v126, v115, v126
	v_dual_mul_f32 v146, v134, v73 :: v_dual_mul_f32 v127, v115, v127
	v_mul_f32_e32 v134, v115, v78
	v_mul_f32_e32 v128, v115, v128
	s_waitcnt lgkmcnt(9)
	v_dual_mul_f32 v150, v115, v86 :: v_dual_lshlrev_b32 v151, 16, v59
	v_dual_mul_f32 v130, v115, v130 :: v_dual_lshlrev_b32 v153, 16, v61
	v_dual_mul_f32 v131, v115, v131 :: v_dual_lshlrev_b32 v152, 16, v60
	v_mul_f32_e32 v115, v133, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v44, v119, v151 :: v_dual_lshlrev_b32 v133, 16, v58
	s_waitcnt lgkmcnt(8)
	v_dual_fmac_f32 v42, v121, v153 :: v_dual_lshlrev_b32 v155, 16, v88
	v_dual_fmac_f32 v43, v120, v152 :: v_dual_lshlrev_b32 v156, 16, v89
	v_dual_fmac_f32 v41, v132, v133 :: v_dual_lshlrev_b32 v154, 16, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v38, v137, v156 :: v_dual_lshlrev_b32 v157, 16, v90
	v_dual_fmac_f32 v39, v136, v155 :: v_dual_and_b32 v158, 0xffff0000, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v135, v154 :: v_dual_and_b32 v159, 0xffff0000, v59
	v_dual_fmac_f32 v37, v138, v157 :: v_dual_and_b32 v160, 0xffff0000, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v36, v139, v158 :: v_dual_and_b32 v161, 0xffff0000, v61
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[103:106], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[91:94], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[107:110], v[95:98], v[58:65] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v33, v142, v161 :: v_dual_and_b32 v162, 0xffff0000, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[74:81], v[107:110], v[99:102], v[74:81] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v163, 0xffff0000, v88
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v140, v159 :: v_dual_and_b32 v164, 0xffff0000, v89
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[82:89], v[103:106], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v61
	v_cvt_f32_i32_e32 v79, v79
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[111:114], v[95:98], v[66:73] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v32, v143, v162
	v_dual_fmac_f32 v31, v144, v163 :: v_dual_and_b32 v90, 0xffff0000, v90
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v105, v58
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[82:89], v[111:114], v[99:102], v[82:89] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v34, v141, v160 :: v_dual_fmac_f32 v29, v146, v90
	v_dual_fmac_f32 v12, v130, v164 :: v_dual_fmac_f32 v11, v131, v90
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v90, v59
	v_cvt_f32_i32_e32 v91, v60
	v_cvt_f32_i32_e32 v93, v62
	v_cvt_f32_i32_e32 v94, v63
	v_cvt_f32_i32_e32 v95, v64
	v_cvt_f32_i32_e32 v96, v65
	v_cvt_f32_i32_e32 v97, v66
	v_cvt_f32_i32_e32 v98, v67
	v_cvt_f32_i32_e32 v99, v68
	v_cvt_f32_i32_e32 v100, v69
	v_cvt_f32_i32_e32 v101, v70
	v_cvt_f32_i32_e32 v102, v71
	v_cvt_f32_i32_e32 v103, v72
	v_cvt_f32_i32_e32 v104, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v30, v145, v164 :: v_dual_fmac_f32 v27, v122, v151
	v_dual_fmac_f32 v28, v115, v133 :: v_dual_fmac_f32 v17, v126, v159
	v_dual_fmac_f32 v26, v123, v152 :: v_dual_fmac_f32 v25, v124, v153
	v_dual_fmac_f32 v22, v134, v154 :: v_dual_fmac_f32 v21, v147, v155
	v_dual_fmac_f32 v20, v148, v156 :: v_dual_fmac_f32 v19, v149, v157
	v_dual_fmac_f32 v18, v125, v158 :: v_dual_fmac_f32 v15, v128, v161
	v_dual_fmac_f32 v16, v127, v160 :: v_dual_fmac_f32 v13, v129, v163
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v79, v107, v79 :: v_dual_lshlrev_b32 v106, 16, v117
	v_dual_mul_f32 v105, v105, v106 :: v_dual_lshlrev_b32 v58, 16, v116
	v_mul_f32_e32 v92, v106, v92
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v14, v150, v162 :: v_dual_mul_f32 v75, v107, v75
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v57, v58 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v48 offset:18432
	ds_load_b128 v[62:65], v48 offset:18448
	ds_load_b128 v[66:69], v48 offset:18944
	ds_load_b128 v[70:73], v48 offset:18960
	v_dual_mul_f32 v90, v106, v90 :: v_dual_mul_f32 v77, v107, v77
	v_dual_mul_f32 v91, v106, v91 :: v_dual_mul_f32 v76, v107, v76
	v_dual_mul_f32 v93, v106, v93 :: v_dual_mul_f32 v78, v107, v78
	v_dual_mul_f32 v94, v106, v94 :: v_dual_mul_f32 v81, v107, v81
	v_dual_mul_f32 v95, v106, v95 :: v_dual_mul_f32 v80, v107, v80
	v_dual_mul_f32 v96, v106, v96 :: v_dual_mul_f32 v83, v107, v83
	v_dual_mul_f32 v97, v106, v97 :: v_dual_mul_f32 v82, v107, v82
	v_dual_mul_f32 v98, v106, v98 :: v_dual_mul_f32 v85, v107, v85
	v_dual_mul_f32 v99, v106, v99 :: v_dual_mul_f32 v84, v107, v84
	v_dual_mul_f32 v100, v106, v100 :: v_dual_mul_f32 v87, v107, v87
	v_dual_mul_f32 v101, v106, v101 :: v_dual_mul_f32 v86, v107, v86
	v_dual_mul_f32 v102, v106, v102 :: v_dual_mul_f32 v89, v107, v89
	v_dual_mul_f32 v103, v106, v103 :: v_dual_mul_f32 v88, v107, v88
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v104, v106, v104 :: v_dual_fmac_f32 v41, v105, v58
	v_dual_mul_f32 v74, v74, v107 :: v_dual_fmac_f32 v43, v91, v60
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v44, v90, v59 :: v_dual_fmac_f32 v37, v96, v65
	v_dual_fmac_f32 v42, v92, v61 :: v_dual_fmac_f32 v39, v94, v63
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v40, v93, v62 :: v_dual_fmac_f32 v35, v98, v67
	v_dual_fmac_f32 v38, v95, v64 :: v_dual_fmac_f32 v33, v100, v69
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v36, v97, v66 :: v_dual_fmac_f32 v31, v102, v71
	v_dual_fmac_f32 v34, v99, v68 :: v_dual_fmac_f32 v29, v104, v73
	v_dual_fmac_f32 v32, v101, v70 :: v_dual_fmac_f32 v27, v75, v59
	v_dual_fmac_f32 v30, v103, v72 :: v_dual_fmac_f32 v25, v77, v61
	v_dual_fmac_f32 v28, v74, v58 :: v_dual_fmac_f32 v21, v79, v63
	v_dual_fmac_f32 v26, v76, v60 :: v_dual_fmac_f32 v19, v81, v65
	v_dual_fmac_f32 v22, v78, v62 :: v_dual_fmac_f32 v17, v83, v67
	v_dual_fmac_f32 v20, v80, v64 :: v_dual_fmac_f32 v15, v85, v69
	v_dual_fmac_f32 v18, v82, v66 :: v_dual_fmac_f32 v13, v87, v71
	v_dual_fmac_f32 v16, v84, v68 :: v_dual_fmac_f32 v11, v89, v73
	v_fmac_f32_e32 v14, v86, v70
	v_fmac_f32_e32 v12, v88, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v41, 16, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_bfe_u32 v3, v44, 16, 1
	v_bfe_u32 v4, v43, 16, 1
	v_add3_u32 v1, v41, v1, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v24, s28, s22, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v42, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v3, v44, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v4, v43, v4, 0x7fff
	v_add3_u32 v2, v42, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v42, v42
	v_bfe_u32 v5, v38, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v40, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v39, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s0, v39, v39
	v_add3_u32 v3, v40, v3, 0x7fff
	v_bfe_u32 v6, v37, 16, 1
	v_add3_u32 v4, v39, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_add3_u32 v5, v38, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v38, v38
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v36, 16, 1
	v_bfe_u32 v7, v35, 16, 1
	v_add3_u32 v6, v37, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v4, v36, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v36, v36
	v_add3_u32 v7, v35, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v34, 16, 1
	v_bfe_u32 v8, v33, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v32, 16, 1
	v_add3_u32 v6, v34, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v8, v33, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v33, v33
	v_bfe_u32 v9, v31, 16, 1
	v_add3_u32 v7, v32, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v32, v32
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s0
	v_bfe_u32 v8, v30, 16, 1
	v_bfe_u32 v10, v29, 16, 1
	v_add3_u32 v9, v31, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_add3_u32 v8, v30, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v10, v29, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v29, v29
	v_cndmask_b16 v7.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v28, 16, 1
	v_bfe_u32 v29, v27, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v26, 16, 1
	v_add3_u32 v9, v28, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v28, v27, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v27, v27
	v_add3_u32 v10, v26, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v26, v26
	v_bfe_u32 v26, v25, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v28.h, s0
	v_bfe_u32 v28, v21, 16, 1
	v_add3_u32 v26, v25, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v22, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_add3_u32 v22, v21, v28, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cmp_o_f32_e64 s1, v21, v21
	v_bfe_u32 v21, v20, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v25.h, s0
	v_bfe_u32 v25, v19, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v26.h, vcc_lo
	v_bfe_u32 v26, v18, 16, 1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	v_add3_u32 v19, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_cndmask_b16 v18.l, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v17, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v16, 16, 1
	v_bfe_u32 v25, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_add3_u32 v17, v16, v20, 0x7fff
	v_add3_u32 v16, v15, v25, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cmp_o_f32_e64 s1, v15, v15
	v_bfe_u32 v15, v14, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v13, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v20, v12, 16, 1
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v14, v13, v17, 0x7fff
	v_bfe_u32 v17, v11, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	v_cmp_o_f32_e64 s0, v13, v13
	v_add3_u32 v13, v12, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v12, v11, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v11, v11
	v_cndmask_b16 v11.l, 0x7fff, v15.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s2
	v_dual_mov_b32 v13, 0x5410 :: v_dual_cndmask_b32 v12, v3, v1
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_dual_cndmask_b32 v3, v5, v2 :: v_dual_cndmask_b32 v2, v2, v5
	v_dual_cndmask_b32 v5, v7, v4 :: v_dual_cndmask_b32 v4, v4, v7
	v_dual_cndmask_b32 v7, v8, v6 :: v_dual_mov_b32 v14, 0x7632
	v_cndmask_b32_e32 v6, v6, v8, vcc_lo
	v_dual_cndmask_b32 v15, v22, v9 :: v_dual_cndmask_b32 v8, v9, v22
	v_cndmask_b32_e32 v9, 0x1054, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v13, 0x3276, v14, vcc_lo
	v_dual_cndmask_b32 v14, v18, v10 :: v_dual_cndmask_b32 v17, v11, v19
	v_dual_cndmask_b32 v10, v10, v18 :: v_dual_cndmask_b32 v11, v19, v11
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b32_e32 v18, v0, v16, vcc_lo
	v_lshl_or_b32 v13, v13, 8, v13
	s_mov_b32 s0, 0x76543210
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v23, s23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v0, v16, v0 :: v_dual_and_b32 v9, 0x540054, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 0x760076, v13
	v_permlanex16_b32 v16, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v9, 4, v9
	v_permlanex16_b32 v19, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v13, 4, v13
	v_permlanex16_b32 v13, v4, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v41, s23, 4, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 0x5040504, v2
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x7060706, v9
	v_permlanex16_b32 v25, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v12, v21
	v_perm_b32 v1, v1, v12, v22
	v_perm_b32 v2, v16, v3, v21
	v_perm_b32 v3, v16, v3, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v24, v23, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v4, v13, v5, v21
	v_perm_b32 v5, v13, v5, v22
	v_perm_b32 v6, v19, v7, v21
	v_perm_b32 v7, v19, v7, v22
	v_perm_b32 v8, v20, v15, v21
	v_perm_b32 v9, v20, v15, v22
	v_perm_b32 v10, v25, v14, v21
	v_perm_b32 v11, v25, v14, v22
	v_perm_b32 v12, v26, v17, v21
	v_perm_b32 v13, v26, v17, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v24, v41, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v27, v18, v21
	v_perm_b32 v15, v27, v18, v22
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 165
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4680
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
