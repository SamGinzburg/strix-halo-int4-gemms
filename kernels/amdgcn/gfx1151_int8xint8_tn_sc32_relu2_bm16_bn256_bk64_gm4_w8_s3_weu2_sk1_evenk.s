	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s5, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v10, 0xf0, v0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s4
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s8, s9, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s2
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_rcp_iflag_f32_e32 v3, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v3
	v_mov_b32_e32 v3, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s6, s10
	s_xor_b32 s10, s2, s8
	s_mul_i32 s11, s4, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s10
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s8
	s_sub_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s5, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v1, 4, v10
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s6, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s5, 31
	v_dual_mov_b32 v20, 0 :: v_dual_lshlrev_b32 v3, 1, v0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s5, s1, 31
	v_mul_lo_u32 v1, s19, v1
	v_mul_lo_u32 v2, s18, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s6, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s5, s5, 27
	v_lshrrev_b32_e32 v4, 1, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s6, 6
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_add_u32 v11, v9, 4, v1
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
.Ltmp22:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v5, 14, v3
	v_and_or_b32 v1, 0x70, v4, v9
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s1, s1, 5
	v_lshlrev_b32_e32 v6, 1, v10
	v_lshlrev_b32_e32 v4, 4, v0
	v_add3_u32 v12, v2, v5, s28
	v_or_b32_e32 v2, s28, v9
	v_lshrrev_b32_e32 v5, 6, v0
	v_add_nc_u32_e32 v15, 0, v1
	v_lshlrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v17, 0, v6
	v_mul_lo_u32 v16, v2, s1
	v_lshlrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v5, 2, v5
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v1, 0x1c0, v1
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v21, 28, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v2, 32, v2
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_add_nc_u32_e32 v14, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v17, v6, v2
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v25, 0, v3
	v_add3_u32 v22, v5, v1, v2
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v32, 0, v4
	v_mov_b32_e32 v1, s4
	v_lshl_add_u32 v13, s19, 4, v11
	v_or_b32_e32 v18, s2, v0
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v19, s18, 5, v12
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v33, v22, v21
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v34, v23, v21
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s29, s19, 5
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
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s6, s5, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s7, s5, s19
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v40, s6, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s2
	v_add_nc_u32_e32 v41, s6, v19
	v_add_nc_u32_e32 v42, s7, v11
	s_add_i32 s6, s7, s29
	v_add_nc_u32_e32 v44, s7, v13
	v_add_nc_u32_e32 v48, s6, v11
	v_add_nc_u32_e32 v52, s6, v13
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_clause 0x1
	buffer_load_u16 v56, v40, s[20:23], 0 offen
	buffer_load_u16 v57, v41, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[40:43], v42, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v44, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v48, s[24:27], 0 offen
	buffer_load_b128 v[52:55], v52, s[24:27], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v25, v56 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v32, v[40:43]
	s_waitcnt vmcnt(2)
	ds_store_b128 v32, v[44:47] offset:4096
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v58, v16, s5, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v59, v18, s6, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_store_b16 v25, v57 offset:16896
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v32, v[48:51] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v32, v[52:55] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v76, v58, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v40, v59, s[12:15], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_or_b32 s5, s5, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v43, v14 offset:16592
	ds_load_u8 v44, v14 offset:16624
	ds_load_u8 v45, v14 offset:16608
	ds_load_u8 v46, v14 offset:16576
	ds_load_u8 v47, v14 offset:16528
	ds_load_u8 v48, v14 offset:16560
	ds_load_u8 v49, v14 offset:16544
	ds_load_u8 v50, v14 offset:16512
	ds_load_u8 v51, v14 offset:16464
	ds_load_u8 v52, v14 offset:16496
	ds_load_u8 v53, v14 offset:16480
	ds_load_u8 v54, v14 offset:16448
	ds_load_u8 v55, v14 offset:16384
	ds_load_u8 v56, v14 offset:16400
	ds_load_u8 v57, v14 offset:16416
	ds_load_u8 v58, v14 offset:16432
	ds_load_u8 v59, v14 offset:16848
	ds_load_u8 v60, v14 offset:16880
	ds_load_u8 v61, v14 offset:16864
	ds_load_u8 v62, v14 offset:16832
	ds_load_u8 v63, v14 offset:16784
	ds_load_u8 v64, v14 offset:16816
	ds_load_u8 v65, v14 offset:16800
	ds_load_u8 v66, v14 offset:16768
	ds_load_u8 v67, v14 offset:16720
	ds_load_u8 v68, v14 offset:16752
	ds_load_u8 v69, v14 offset:16736
	ds_load_u8 v70, v14 offset:16704
	ds_load_u8 v71, v14 offset:16656
	ds_load_u8 v72, v14 offset:16688
	ds_load_u8 v73, v14 offset:16672
	ds_load_u8 v74, v14 offset:16640
	ds_load_u8 v75, v15 offset:3328
	ds_load_u8 v77, v15 offset:3072
	ds_load_u8 v78, v15 offset:3840
	ds_load_u8 v79, v15 offset:3584
	ds_load_u8 v80, v15 offset:3968
	ds_load_u8 v81, v15 offset:3712
	ds_load_u8 v82, v15 offset:3456
	ds_load_u8 v83, v15 offset:3200
	ds_load_u8 v84, v15 offset:2304
	ds_load_u8 v85, v15 offset:2048
	ds_load_u8 v86, v15 offset:2816
	ds_load_u8 v87, v15 offset:2560
	ds_load_u8 v88, v15 offset:2944
	ds_load_u8 v89, v15 offset:2688
	ds_load_u8 v90, v15 offset:2432
	ds_load_u8 v91, v15 offset:2176
	ds_load_u8 v92, v15 offset:1280
	ds_load_u8 v93, v15 offset:1024
	ds_load_u8 v94, v15 offset:1792
	ds_load_u8 v95, v15 offset:1536
	ds_load_u8 v96, v15 offset:1920
	ds_load_u8 v97, v15 offset:1664
	ds_load_u8 v98, v15 offset:1408
	ds_load_u8 v99, v15 offset:1152
	ds_load_u8 v100, v15 offset:256
	ds_load_u8 v101, v15
	ds_load_u8 v102, v15 offset:768
	ds_load_u8 v103, v15 offset:512
	ds_load_u8 v104, v15 offset:896
	ds_load_u8 v105, v15 offset:640
	ds_load_u8 v106, v15 offset:384
	ds_load_u8 v107, v15 offset:128
	ds_load_u8 v108, v15 offset:7424
	ds_load_u8 v109, v15 offset:7168
	ds_load_u8 v110, v15 offset:7936
	ds_load_u8 v111, v15 offset:7680
	ds_load_u8 v112, v15 offset:8064
	ds_load_u8 v113, v15 offset:7808
	ds_load_u8 v114, v15 offset:7552
	ds_load_u8 v115, v15 offset:7296
	ds_load_u8 v116, v15 offset:6400
	ds_load_u8 v117, v15 offset:6144
	ds_load_u8 v118, v15 offset:6912
	ds_load_u8 v119, v15 offset:6656
	ds_load_u8 v120, v15 offset:7040
	ds_load_u8 v121, v15 offset:6784
	ds_load_u8 v122, v15 offset:6528
	ds_load_u8 v123, v15 offset:6272
	ds_load_u8 v124, v15 offset:5376
	ds_load_u8 v125, v15 offset:5120
	ds_load_u8 v126, v15 offset:5888
	ds_load_u8 v127, v15 offset:5632
	ds_load_u8 v128, v15 offset:6016
	ds_load_u8 v129, v15 offset:5760
	ds_load_u8 v130, v15 offset:5504
	ds_load_u8 v131, v15 offset:5248
	ds_load_u8 v132, v15 offset:4352
	ds_load_u8 v133, v15 offset:4096
	ds_load_u8 v134, v15 offset:4864
	ds_load_u8 v135, v15 offset:4608
	ds_load_u8 v136, v15 offset:4992
	ds_load_u8 v137, v15 offset:4736
	ds_load_u8 v138, v15 offset:4480
	ds_load_u8 v139, v15 offset:4224
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v41, v16, s5, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v42, v18, s6, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v43, v46, v43, 0xc0c0004
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v45, v50, v47, 0xc0c0004
	v_perm_b32 v46, v49, v48, 0xc0c0004
	v_perm_b32 v47, v54, v51, 0xc0c0004
	v_perm_b32 v48, v53, v52, 0xc0c0004
	v_perm_b32 v51, v77, v75, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v52, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v77, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v78, v103, v102, 0xc0c0004
	v_perm_b32 v50, v57, v58, 0xc0c0004
	v_lshl_or_b32 v57, v48, 16, v47
	v_perm_b32 v49, v55, v56, 0xc0c0004
	v_perm_b32 v53, v85, v84, 0xc0c0004
	v_lshl_or_b32 v48, v78, 16, v77
	v_perm_b32 v54, v87, v86, 0xc0c0004
	v_perm_b32 v55, v93, v92, 0xc0c0004
	v_perm_b32 v75, v95, v94, 0xc0c0004
	v_perm_b32 v62, v62, v59, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v66, v63, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v65, v70, v67, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	v_perm_b32 v67, v74, v71, 0xc0c0004
	v_perm_b32 v68, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v69, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v70, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v71, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v72, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v73, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v84, v135, v134, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v91, v90, 0xc0c0004
	v_perm_b32 v83, v89, v88, 0xc0c0004
	v_perm_b32 v85, v99, v98, 0xc0c0004
	v_perm_b32 v86, v97, v96, 0xc0c0004
	v_perm_b32 v87, v107, v106, 0xc0c0004
	v_perm_b32 v88, v105, v104, 0xc0c0004
	v_lshl_or_b32 v59, v44, 16, v43
	v_lshl_or_b32 v58, v46, 16, v45
	v_lshl_or_b32 v56, v50, 16, v49
	v_lshl_or_b32 v51, v52, 16, v51
	v_lshl_or_b32 v50, v54, 16, v53
	v_lshl_or_b32 v49, v75, 16, v55
	v_perm_b32 v89, v115, v114, 0xc0c0004
	v_perm_b32 v90, v113, v112, 0xc0c0004
	v_perm_b32 v91, v123, v122, 0xc0c0004
	v_perm_b32 v92, v121, v120, 0xc0c0004
	v_perm_b32 v93, v131, v130, 0xc0c0004
	v_perm_b32 v94, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v139, v138, 0xc0c0004
	v_perm_b32 v96, v137, v136, 0xc0c0004
	v_lshl_or_b32 v63, v60, 16, v62
	v_lshl_or_b32 v62, v64, 16, v61
	v_lshl_or_b32 v61, v66, 16, v65
	v_lshl_or_b32 v60, v68, 16, v67
	v_lshl_or_b32 v67, v70, 16, v69
	v_lshl_or_b32 v66, v72, 16, v71
	v_lshl_or_b32 v65, v74, 16, v73
	v_lshl_or_b32 v64, v84, 16, v79
	v_lshl_or_b32 v71, v80, 16, v82
	v_lshl_or_b32 v70, v83, 16, v81
	v_lshl_or_b32 v69, v86, 16, v85
	v_lshl_or_b32 v68, v88, 16, v87
	v_lshl_or_b32 v75, v90, 16, v89
	v_lshl_or_b32 v74, v92, 16, v91
	v_lshl_or_b32 v73, v94, 16, v93
	v_lshl_or_b32 v72, v96, 16, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v40 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v77, v42, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v78, v41, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[40:47], v[48:51], v[56:59], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[56:59], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[64:67], v[60:63], v[40:47] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v64, 16, v76
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[48:55], v[72:75], v[60:63], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v40
	v_cvt_f32_i32_e32 v57, v41
	v_cvt_f32_i32_e32 v58, v42
	v_cvt_f32_i32_e32 v59, v43
	v_cvt_f32_i32_e32 v60, v44
	v_cvt_f32_i32_e32 v61, v45
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v63, v47
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[40:43], v17 offset:17408
	ds_load_b128 v[44:47], v17 offset:17424
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v65, v14 offset:17104
	ds_load_u8 v66, v14 offset:17136
	ds_load_u8 v67, v14 offset:17120
	ds_load_u8 v68, v14 offset:17088
	ds_load_u8 v69, v14 offset:17040
	ds_load_u8 v70, v14 offset:17072
	ds_load_u8 v71, v14 offset:17056
	ds_load_u8 v72, v14 offset:17024
	ds_load_u8 v73, v14 offset:16976
	ds_load_u8 v74, v14 offset:17008
	ds_load_u8 v75, v14 offset:16992
	ds_load_u8 v76, v14 offset:16960
	ds_load_u8 v79, v14 offset:16896
	ds_load_u8 v80, v14 offset:16912
	ds_load_u8 v81, v14 offset:16928
	ds_load_u8 v82, v14 offset:16944
	ds_load_u8 v83, v14 offset:17360
	ds_load_u8 v84, v14 offset:17392
	ds_load_u8 v85, v14 offset:17376
	ds_load_u8 v86, v14 offset:17344
	ds_load_u8 v87, v14 offset:17296
	ds_load_u8 v88, v14 offset:17328
	ds_load_u8 v89, v14 offset:17312
	ds_load_u8 v90, v14 offset:17280
	ds_load_u8 v91, v14 offset:17232
	ds_load_u8 v92, v14 offset:17264
	ds_load_u8 v93, v14 offset:17248
	ds_load_u8 v94, v14 offset:17216
	ds_load_u8 v95, v14 offset:17168
	ds_load_u8 v96, v14 offset:17200
	ds_load_u8 v97, v14 offset:17184
	ds_load_u8 v98, v14 offset:17152
	ds_load_u8 v99, v15 offset:11520
	ds_load_u8 v100, v15 offset:11264
	ds_load_u8 v101, v15 offset:12032
	ds_load_u8 v102, v15 offset:11776
	ds_load_u8 v103, v15 offset:12160
	ds_load_u8 v104, v15 offset:11904
	ds_load_u8 v105, v15 offset:11648
	ds_load_u8 v106, v15 offset:11392
	ds_load_u8 v107, v15 offset:10496
	ds_load_u8 v108, v15 offset:10240
	ds_load_u8 v109, v15 offset:11008
	ds_load_u8 v110, v15 offset:10752
	ds_load_u8 v111, v15 offset:11136
	ds_load_u8 v112, v15 offset:10880
	ds_load_u8 v113, v15 offset:10624
	ds_load_u8 v114, v15 offset:10368
	ds_load_u8 v115, v15 offset:9472
	ds_load_u8 v116, v15 offset:9216
	ds_load_u8 v117, v15 offset:9984
	ds_load_u8 v118, v15 offset:9728
	ds_load_u8 v119, v15 offset:10112
	ds_load_u8 v120, v15 offset:9856
	ds_load_u8 v121, v15 offset:9600
	ds_load_u8 v122, v15 offset:9344
	ds_load_u8 v123, v15 offset:8448
	ds_load_u8 v124, v15 offset:8192
	ds_load_u8 v125, v15 offset:8960
	ds_load_u8 v126, v15 offset:8704
	ds_load_u8 v127, v15 offset:9088
	ds_load_u8 v128, v15 offset:8832
	ds_load_u8 v129, v15 offset:8576
	ds_load_u8 v130, v15 offset:8320
	ds_load_u8 v131, v15 offset:15616
	ds_load_u8 v132, v15 offset:15360
	ds_load_u8 v133, v15 offset:16128
	ds_load_u8 v134, v15 offset:15872
	ds_load_u8 v135, v15 offset:16256
	ds_load_u8 v136, v15 offset:16000
	ds_load_u8 v137, v15 offset:15744
	ds_load_u8 v138, v15 offset:15488
	ds_load_u8 v139, v15 offset:14592
	ds_load_u8 v140, v15 offset:14336
	ds_load_u8 v141, v15 offset:15104
	ds_load_u8 v142, v15 offset:14848
	ds_load_u8 v143, v15 offset:15232
	ds_load_u8 v144, v15 offset:14976
	ds_load_u8 v145, v15 offset:14720
	ds_load_u8 v146, v15 offset:14464
	ds_load_u8 v147, v15 offset:13568
	ds_load_u8 v148, v15 offset:13312
	ds_load_u8 v149, v15 offset:14080
	ds_load_u8 v150, v15 offset:13824
	ds_load_u8 v151, v15 offset:14208
	ds_load_u8 v152, v15 offset:13952
	ds_load_u8 v153, v15 offset:13696
	ds_load_u8 v154, v15 offset:13440
	ds_load_u8 v155, v15 offset:12544
	ds_load_u8 v156, v15 offset:12288
	ds_load_u8 v157, v15 offset:13056
	ds_load_u8 v158, v15 offset:12800
	ds_load_u8 v159, v15 offset:13184
	ds_load_u8 v160, v15 offset:12928
	ds_load_u8 v161, v15 offset:12672
	ds_load_u8 v162, v15 offset:12416
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v59, v64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(62)
	v_lshlrev_b32_e32 v165, 16, v43
	v_lshlrev_b32_e32 v163, 16, v41
	v_lshlrev_b32_e32 v164, 16, v42
	v_lshlrev_b32_e32 v167, 16, v45
	v_lshlrev_b32_e32 v169, 16, v47
	v_and_b32_e32 v41, 0xffff0000, v41
	v_and_b32_e32 v42, 0xffff0000, v42
	v_and_b32_e32 v43, 0xffff0000, v43
	v_and_b32_e32 v45, 0xffff0000, v45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v65, v68, v65, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v67, v72, v69, 0xc0c0004
	v_perm_b32 v68, v71, v70, 0xc0c0004
	v_perm_b32 v69, v76, v73, 0xc0c0004
	v_perm_b32 v70, v75, v74, 0xc0c0004
	v_perm_b32 v71, v79, v80, 0xc0c0004
	v_perm_b32 v72, v81, v82, 0xc0c0004
	v_perm_b32 v73, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v74, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v75, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v76, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v79, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v80, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v81, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v82, v126, v125, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v37, v59, v165 :: v_dual_mul_f32 v56, v56, v64
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v57, v64
	v_mul_f32_e32 v58, v58, v64
	v_mul_f32_e32 v60, v60, v64
	v_mul_f32_e32 v61, v61, v64
	v_mul_f32_e32 v62, v62, v64
	v_mul_f32_e32 v63, v63, v64
	v_mul_f32_e32 v48, v48, v64
	v_mul_f32_e32 v49, v49, v64
	v_mul_f32_e32 v50, v50, v64
	v_dual_mul_f32 v51, v51, v64 :: v_dual_lshlrev_b32 v168, 16, v46
	v_mul_f32_e32 v52, v52, v64
	v_mul_f32_e32 v53, v53, v64
	v_dual_mul_f32 v54, v54, v64 :: v_dual_and_b32 v47, 0xffff0000, v47
	v_dual_mul_f32 v55, v55, v64 :: v_dual_and_b32 v46, 0xffff0000, v46
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v61, v167 :: v_dual_lshlrev_b32 v64, 16, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v23, v53, v45 :: v_dual_and_b32 v40, 0xffff0000, v40
	v_dual_fmac_f32 v27, v50, v42 :: v_dual_lshlrev_b32 v166, 16, v44
	v_dual_fmac_f32 v21, v55, v47 :: v_dual_and_b32 v44, 0xffff0000, v44
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_perm_b32 v83, v86, v83, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v85, v90, v87, 0xc0c0004
	v_perm_b32 v86, v89, v88, 0xc0c0004
	v_perm_b32 v87, v94, v91, 0xc0c0004
	v_perm_b32 v88, v93, v92, 0xc0c0004
	v_perm_b32 v89, v98, v95, 0xc0c0004
	v_perm_b32 v90, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v91, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v92, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v93, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v94, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v95, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v96, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v158, v157, 0xc0c0004
	v_perm_b32 v99, v106, v105, 0xc0c0004
	v_perm_b32 v100, v104, v103, 0xc0c0004
	v_perm_b32 v101, v114, v113, 0xc0c0004
	v_perm_b32 v102, v112, v111, 0xc0c0004
	v_perm_b32 v103, v122, v121, 0xc0c0004
	v_perm_b32 v104, v120, v119, 0xc0c0004
	v_perm_b32 v105, v130, v129, 0xc0c0004
	v_perm_b32 v106, v128, v127, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v20, v56, v64 :: v_dual_fmac_f32 v39, v57, v163
	v_fmac_f32_e32 v38, v58, v164
	v_dual_fmac_f32 v30, v63, v169 :: v_dual_fmac_f32 v29, v48, v40
	v_fmac_f32_e32 v28, v49, v41
	v_fmac_f32_e32 v26, v51, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v59, v66, 16, v65
	v_lshl_or_b32 v58, v68, 16, v67
	v_lshl_or_b32 v57, v70, 16, v69
	v_lshl_or_b32 v56, v72, 16, v71
	v_lshl_or_b32 v51, v74, 16, v73
	v_lshl_or_b32 v50, v76, 16, v75
	v_lshl_or_b32 v49, v80, 16, v79
	v_lshl_or_b32 v48, v82, 16, v81
	v_perm_b32 v107, v138, v137, 0xc0c0004
	v_perm_b32 v108, v136, v135, 0xc0c0004
	v_perm_b32 v109, v146, v145, 0xc0c0004
	v_perm_b32 v110, v144, v143, 0xc0c0004
	v_perm_b32 v111, v154, v153, 0xc0c0004
	v_perm_b32 v112, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v161, 0xc0c0004
	v_perm_b32 v114, v160, v159, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v36, v60, v166 :: v_dual_fmac_f32 v31, v62, v168
	v_fmac_f32_e32 v24, v52, v44
	v_fmac_f32_e32 v22, v54, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v63, v84, 16, v83
	v_lshl_or_b32 v62, v86, 16, v85
	v_lshl_or_b32 v61, v88, 16, v87
	v_lshl_or_b32 v60, v90, 16, v89
	v_lshl_or_b32 v67, v92, 16, v91
	v_lshl_or_b32 v66, v94, 16, v93
	v_lshl_or_b32 v65, v96, 16, v95
	v_lshl_or_b32 v64, v98, 16, v97
	v_lshl_or_b32 v71, v100, 16, v99
	v_lshl_or_b32 v70, v102, 16, v101
	v_lshl_or_b32 v69, v104, 16, v103
	v_lshl_or_b32 v68, v106, 16, v105
	v_wmma_i32_16x16x16_iu8 v[40:47], v[48:51], v[56:59], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v108, 16, v107
	v_lshl_or_b32 v74, v110, 16, v109
	v_lshl_or_b32 v73, v112, 16, v111
	v_lshl_or_b32 v72, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[56:59], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[64:67], v[60:63], v[40:47] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[48:55], v[72:75], v[60:63], v[48:55] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v40
	v_cvt_f32_i32_e32 v63, v47
	v_cvt_f32_i32_e32 v57, v41
	v_cvt_f32_i32_e32 v58, v42
	v_cvt_f32_i32_e32 v59, v43
	v_cvt_f32_i32_e32 v60, v44
	v_cvt_f32_i32_e32 v61, v45
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v64, v48
	v_cvt_f32_i32_e32 v65, v49
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v78
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v63, v63, v72 :: v_dual_lshlrev_b32 v40, 16, v77
	ds_store_b32 v34, v40 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v17 offset:17408
	ds_load_b128 v[44:47], v17 offset:17424
	ds_load_b128 v[48:51], v17 offset:17920
	ds_load_b128 v[52:55], v17 offset:17936
	v_mul_f32_e32 v61, v61, v72
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v35, v61, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v57, v72
	v_dual_mul_f32 v69, v69, v72 :: v_dual_fmac_f32 v30, v63, v47
	v_mul_f32_e32 v58, v58, v72
	v_mul_f32_e32 v70, v70, v72
	v_mul_f32_e32 v71, v71, v72
	v_mul_f32_e32 v59, v59, v72
	v_mul_f32_e32 v64, v64, v72
	v_mul_f32_e32 v66, v66, v72
	v_mul_f32_e32 v60, v60, v72
	v_dual_mul_f32 v68, v68, v72 :: v_dual_fmac_f32 v39, v57, v41
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v23, v69, v53
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v65, v65, v72 :: v_dual_fmac_f32 v38, v58, v42
	v_dual_mul_f32 v67, v67, v72 :: v_dual_fmac_f32 v22, v70, v54
	v_dual_mul_f32 v62, v62, v72 :: v_dual_fmac_f32 v21, v71, v55
	v_dual_mul_f32 v56, v56, v72 :: v_dual_fmac_f32 v37, v59, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v28, v65, v49 :: v_dual_fmac_f32 v31, v62, v46
	v_dual_fmac_f32 v29, v64, v48 :: v_dual_fmac_f32 v26, v67, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v20, v56, v40 :: v_dual_fmac_f32 v27, v66, v50
	v_fmac_f32_e32 v36, v60, v44
	v_fmac_f32_e32 v24, v68, v52
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, v38, v38 :: v_dual_max_f32 v4, v37, v37
	v_dual_max_f32 v7, v31, v31 :: v_dual_max_f32 v8, v30, v30
	v_dual_max_f32 v11, v29, v29 :: v_dual_max_f32 v12, v28, v28
	v_max_f32_e32 v13, v27, v27
	v_dual_max_f32 v1, v20, v20 :: v_dual_max_f32 v2, v39, v39
	v_dual_max_f32 v5, v36, v36 :: v_dual_max_f32 v6, v35, v35
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v20, 0, v12
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v19, 0, v11
	v_dual_max_f32 v12, v24, v24 :: v_dual_max_f32 v25, 0, v13
	v_max_f32_e32 v14, v22, v22
	v_max_f32_e32 v11, v26, v26
	v_max_f32_e32 v13, v23, v23
	v_dual_max_f32 v15, v21, v21 :: v_dual_mul_f32 v16, v3, v3
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v22, 0, v12 :: v_dual_max_f32 v21, 0, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, 0, v14 :: v_dual_max_f32 v23, 0, v13
	v_dual_max_f32 v26, 0, v15 :: v_dual_mul_f32 v17, v2, v2
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v7, v7 :: v_dual_mul_f32 v13, v4, v4
	v_dual_mul_f32 v14, v6, v6 :: v_dual_mul_f32 v15, v5, v5
	v_dual_mul_f32 v11, v8, v8 :: v_dual_mul_f32 v6, v25, v25
	v_dual_mul_f32 v8, v19, v19 :: v_dual_mul_f32 v7, v20, v20
	v_dual_mul_f32 v4, v22, v22 :: v_dual_mul_f32 v5, v21, v21
	v_dual_mul_f32 v2, v24, v24 :: v_dual_mul_f32 v3, v23, v23
	v_mul_f32_e32 v1, v26, v26
.LBB0_4:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, 0
	v_mov_b16_e32 v20.l, v18.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v20.h, v19.h
	v_mov_b16_e32 v21.h, v19.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v23, 1, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v19.l, v13.h
	v_mov_b16_e32 v22.l, v15.h
	v_mov_b16_e32 v22.h, v19.h
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v18, v18, v20, 0x7fff
	v_add3_u32 v17, v17, v23, 0x7fff
	v_and_b32_e32 v20, 1, v19
	v_mov_b16_e32 v19.l, v14.h
	v_add3_u32 v16, v16, v21, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v19.h
	v_add3_u32 v13, v13, v20, 0x7fff
	v_and_b32_e32 v20, 1, v19
	v_add3_u32 v15, v15, v18, 0x7fff
	v_mov_b16_e32 v19.l, v11.h
	v_and_b32_e32 v18, 1, v21
	v_mov_b16_e32 v13.l, v16.h
	v_add3_u32 v14, v14, v20, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v15, 1, v19
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v19.h
	v_mov_b16_e32 v19.l, v7.h
	v_add3_u32 v12, v12, v18, 0x7fff
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v19.h
	v_add3_u32 v11, v11, v15, 0x7fff
	v_and_b32_e32 v15, 1, v16
	v_and_b32_e32 v16, 1, v19
	v_mov_b16_e32 v19.l, v5.h
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v11.l, v12.h
	v_add3_u32 v8, v8, v15, 0x7fff
	v_mov_b16_e32 v15.l, v4.h
	v_and_b32_e32 v12, 1, v19
	v_add3_u32 v6, v6, v18, 0x7fff
	v_mov_b16_e32 v15.h, v19.h
	v_mov_b16_e32 v19.l, v3.h
	v_add3_u32 v7, v7, v16, 0x7fff
	v_add3_u32 v5, v5, v12, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v15
	v_and_b32_e32 v8, 1, v19
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v19.h
	v_mov_b16_e32 v19.l, v1.h
	v_add3_u32 v4, v4, v6, 0x7fff
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_and_b32_e32 v6, 1, v12
	v_and_b32_e32 v12, 1, v19
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_mov_b16_e32 v3.l, v4.h
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_add3_u32 v2, v2, v6, 0x7fff
	v_add3_u32 v1, v1, v12, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v9, s19, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v4, v17, v14, vcc_lo
	v_mov_b16_e32 v1.l, v2.h
	v_lshl_or_b32 v2, v8, 8, v8
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e32 v12, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v7, v1, v5 :: v_dual_and_b32 v2, 0x760076, v2
	v_lshl_or_b32 v0, v0, 4, v0
	v_dual_cndmask_b32 v8, v11, v13 :: v_dual_cndmask_b32 v11, v13, v11
	v_cndmask_b32_e32 v1, v5, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s19
	s_mov_b32 s0, 0x76543210
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 1, v10
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v9, s28, s2, v9
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v6, v14, v17, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x5040504, v0
	v_and_b32_e32 v14, 0x7060706, v2
	v_permlanex16_b32 v5, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v6, v13
	v_perm_b32 v1, v4, v6, v14
	v_perm_b32 v2, v5, v8, v13
	v_perm_b32 v3, v5, v8, v14
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v8, v9, v10, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v4, v11, v12, v13
	v_perm_b32 v5, v11, v12, v14
	v_perm_b32 v6, v15, v7, v13
	v_perm_b32 v7, v15, v7, v14
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v8, s[16:19], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 170
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6108
; TotalNumSgprs: 32
; NumVgprs: 170
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     170
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
