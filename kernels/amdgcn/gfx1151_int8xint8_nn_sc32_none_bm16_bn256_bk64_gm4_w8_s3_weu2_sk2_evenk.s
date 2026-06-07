	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v5, 0xf0, v0
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v10, 1, v5
	v_lshlrev_b32_e32 v11, 2, v5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s20, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s5, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s12, 0x7f
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s20, s5, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s7
	v_or_b32_e32 v13, s20, v0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s2, 0x7f
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v1, s20, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v6, 1, v5
	v_lshlrev_b32_e32 v3, 2, v5
	v_and_b32_e32 v12, 28, v2
	v_and_b32_e32 v9, 32, v4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow259
	s_load_b64 s[22:23], s[0:1], 0x20
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s24, s4, 4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v5
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s12, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s13, s1, 31
.Ltmp17:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s25, s3, 6
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s3, s24, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 25
	v_mul_lo_u32 v5, s12, v1
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s12, s13, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s12
	s_mov_b32 s0, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s26, s2, 7
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s27, s1, 5
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	v_lshrrev_b32_e32 v9, 6, v0
	v_mul_lo_u32 v1, s21, v1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s12, s4
	s_mov_b32 s13, s5
	s_mov_b32 s16, s6
	s_mov_b32 s17, s7
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
.Ltmp24:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v6, 1, v3
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v35, 0, v10
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v30, v5, v6, s3
	v_bfe_i32 v6, v0, 2, 1
	s_mov_b32 s3, s0
	v_and_b32_e32 v5, 0x160, v4
	v_and_b32_e32 v14, 2, v9
	v_and_b32_e32 v9, 32, v4
	v_lshlrev_b32_e32 v12, 2, v0
	v_and_b32_e32 v7, 0x17e, v2
	v_and_or_b32 v5, 0x90, v6, v5
	v_lshrrev_b32_e32 v6, 1, v0
	v_add_nc_u32_e32 v4, 0, v14
	v_mov_b32_e32 v14, 0
	v_lshl_add_u32 v31, v3, 4, v1
	v_bfe_i32 v1, v0, 6, 1
	v_and_or_b32 v6, 0x70, v6, v3
	v_or_b32_e32 v3, s24, v3
	v_xor_b32_e32 v8, 16, v5
	v_add3_u32 v16, v35, v10, v9
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v1, 0x90, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v34, v3, s27
	v_and_b32_e32 v3, 0x1c0, v12
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v12, 28, v2
	v_xor_b32_e32 v1, v1, v7
	v_dual_mov_b32 v28, 0 :: v_dual_lshlrev_b32 v7, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v15, v4, v3, v9
	v_add_nc_u32_e32 v33, 0, v6
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v36, 0, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v37, 0, v7
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v38, 0, v5
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v39, 0, v8
	v_mov_b32_e32 v8, s7
	v_lshl_add_u32 v32, s21, 4, v31
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	v_dual_mov_b32 v5, s4 :: v_dual_mov_b32 v4, s3
	v_dual_mov_b32 v3, s2 :: v_dual_mov_b32 v2, s1
	v_dual_mov_b32 v1, s0 :: v_dual_add_nc_u32 v40, v15, v12
	v_mov_b32_e32 v25, 0
	v_add_nc_u32_e32 v41, v16, v12
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v15, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s28, s21, 5
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s0, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s2, s1, s25
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s3, s2, s21
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s1, s2, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s3, s3, s20
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v42, s2, v30
	v_add_nc_u32_e32 v43, s1, v30
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v44, s3, v31
	v_add_nc_u32_e32 v46, s3, v32
	s_add_i32 s3, s3, s28
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v58, v42, s[12:15], 0 offen
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v50, s3, v31
	v_add_nc_u32_e32 v54, s3, v32
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v59, v43, s[12:15], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[42:45], v44, s[16:19], 0 offen
	buffer_load_b128 v[46:49], v46, s[16:19], 0 offen
	buffer_load_b128 v[50:53], v50, s[16:19], 0 offen
	buffer_load_b128 v[54:57], v54, s[16:19], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s2, s2, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v36, v58 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v37, v[42:45]
	s_waitcnt vmcnt(2)
	ds_store_b128 v37, v[46:49] offset:4096
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s3, s2, s21
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v60, v34, s2, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v61, v13, s3, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s2, s27
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b16 v36, v59 offset:16896
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v37, v[50:53] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[54:57] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v78, v60, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v42, v61, s[8:11], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[58:61], v38 offset:16384
	ds_load_b128 v[62:65], v39 offset:16384
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v33 offset:3328
	ds_load_u8 v46, v33 offset:3072
	ds_load_u8 v47, v33 offset:3840
	ds_load_u8 v48, v33 offset:3584
	ds_load_u8 v49, v33 offset:3968
	ds_load_u8 v50, v33 offset:3712
	ds_load_u8 v51, v33 offset:3456
	ds_load_u8 v52, v33 offset:3200
	ds_load_u8 v53, v33 offset:2304
	ds_load_u8 v54, v33 offset:2048
	ds_load_u8 v55, v33 offset:2816
	ds_load_u8 v56, v33 offset:2560
	ds_load_u8 v57, v33 offset:2944
	ds_load_u8 v66, v33 offset:2688
	ds_load_u8 v67, v33 offset:2432
	ds_load_u8 v68, v33 offset:2176
	ds_load_u8 v69, v33 offset:1280
	ds_load_u8 v70, v33 offset:1024
	ds_load_u8 v71, v33 offset:1792
	ds_load_u8 v72, v33 offset:1536
	ds_load_u8 v73, v33 offset:1920
	ds_load_u8 v74, v33 offset:1664
	ds_load_u8 v75, v33 offset:1408
	ds_load_u8 v76, v33 offset:1152
	ds_load_u8 v77, v33 offset:256
	ds_load_u8 v79, v33
	ds_load_u8 v80, v33 offset:768
	ds_load_u8 v81, v33 offset:512
	ds_load_u8 v82, v33 offset:896
	ds_load_u8 v83, v33 offset:640
	ds_load_u8 v84, v33 offset:384
	ds_load_u8 v85, v33 offset:128
	ds_load_u8 v86, v33 offset:7424
	ds_load_u8 v87, v33 offset:7168
	ds_load_u8 v88, v33 offset:7936
	ds_load_u8 v89, v33 offset:7680
	ds_load_u8 v90, v33 offset:8064
	ds_load_u8 v91, v33 offset:7808
	ds_load_u8 v92, v33 offset:7552
	ds_load_u8 v93, v33 offset:7296
	ds_load_u8 v94, v33 offset:6400
	ds_load_u8 v95, v33 offset:6144
	ds_load_u8 v96, v33 offset:6912
	ds_load_u8 v97, v33 offset:6656
	ds_load_u8 v98, v33 offset:7040
	ds_load_u8 v99, v33 offset:6784
	ds_load_u8 v100, v33 offset:6528
	ds_load_u8 v101, v33 offset:6272
	ds_load_u8 v102, v33 offset:5376
	ds_load_u8 v103, v33 offset:5120
	ds_load_u8 v104, v33 offset:5888
	ds_load_u8 v105, v33 offset:5632
	ds_load_u8 v106, v33 offset:6016
	ds_load_u8 v107, v33 offset:5760
	ds_load_u8 v108, v33 offset:5504
	ds_load_u8 v109, v33 offset:5248
	ds_load_u8 v110, v33 offset:4352
	ds_load_u8 v111, v33 offset:4096
	ds_load_u8 v112, v33 offset:4864
	ds_load_u8 v113, v33 offset:4608
	ds_load_u8 v114, v33 offset:4992
	ds_load_u8 v115, v33 offset:4736
	ds_load_u8 v116, v33 offset:4480
	ds_load_u8 v117, v33 offset:4224
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s2, s1, s21
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v43, v34, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v44, v13, s2, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s27
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v57, v66, v57, 0xc0c0004
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v74, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v76, v85, v84, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v83, v93, v92, 0xc0c0004
	v_perm_b32 v84, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v85, v101, v100, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s0, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v115, v114, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s0, s26
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v117, v116, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v40, v42 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v118, v44, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v119, v43, s[4:7], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v42, v46, v45, 0xc0c0004
	v_perm_b32 v43, v48, v47, 0xc0c0004
	v_perm_b32 v44, v54, v53, 0xc0c0004
	v_perm_b32 v45, v56, v55, 0xc0c0004
	v_perm_b32 v46, v70, v69, 0xc0c0004
	v_perm_b32 v47, v72, v71, 0xc0c0004
	v_perm_b32 v48, v79, v77, 0xc0c0004
	v_perm_b32 v54, v81, v80, 0xc0c0004
	v_perm_b32 v55, v87, v86, 0xc0c0004
	v_perm_b32 v56, v89, v88, 0xc0c0004
	v_perm_b32 v70, v95, v94, 0xc0c0004
	v_perm_b32 v71, v97, v96, 0xc0c0004
	v_perm_b32 v72, v103, v102, 0xc0c0004
	v_perm_b32 v77, v105, v104, 0xc0c0004
	v_perm_b32 v79, v111, v110, 0xc0c0004
	v_perm_b32 v80, v113, v112, 0xc0c0004
	v_perm_b32 v81, v52, v51, 0xc0c0004
	v_perm_b32 v86, v68, v67, 0xc0c0004
	v_lshl_or_b32 v53, v43, 16, v42
	v_lshl_or_b32 v52, v45, 16, v44
	v_lshl_or_b32 v51, v47, 16, v46
	v_lshl_or_b32 v50, v54, 16, v48
	v_perm_b32 v87, v99, v98, 0xc0c0004
	v_perm_b32 v88, v109, v108, 0xc0c0004
	v_perm_b32 v89, v107, v106, 0xc0c0004
	v_lshl_or_b32 v69, v56, 16, v55
	v_lshl_or_b32 v68, v71, 16, v70
	v_lshl_or_b32 v67, v77, 16, v72
	v_lshl_or_b32 v66, v80, 16, v79
	v_lshl_or_b32 v73, v49, 16, v81
	v_lshl_or_b32 v72, v57, 16, v86
	v_lshl_or_b32 v71, v74, 16, v75
	v_lshl_or_b32 v70, v82, 16, v76
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v84, 16, v83
	v_lshl_or_b32 v76, v87, 16, v85
	v_lshl_or_b32 v75, v89, 16, v88
	v_lshl_or_b32 v74, v91, 16, v90
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[66:69], v[62:65], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v133, v33 offset:12544
	ds_load_u8 v134, v33 offset:12288
	ds_load_u8 v135, v33 offset:13056
	ds_load_u8 v136, v33 offset:12800
	ds_load_u8 v137, v33 offset:13184
	ds_load_u8 v138, v33 offset:12928
	ds_load_u8 v139, v33 offset:12672
	ds_load_u8 v140, v33 offset:12416
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[62:65], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v43
	v_cvt_f32_i32_e32 v67, v44
	v_cvt_f32_i32_e32 v68, v45
	v_cvt_f32_i32_e32 v69, v46
	v_cvt_f32_i32_e32 v70, v47
	v_cvt_f32_i32_e32 v71, v48
	v_cvt_f32_i32_e32 v72, v49
	v_cvt_f32_i32_e32 v73, v42
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[42:45], v35 offset:17408
	ds_load_b128 v[46:49], v35 offset:17424
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[58:61], v38 offset:16896
	ds_load_b128 v[62:65], v39 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v74, v33 offset:11520
	ds_load_u8 v75, v33 offset:11264
	ds_load_u8 v76, v33 offset:12032
	ds_load_u8 v77, v33 offset:11776
	ds_load_u8 v79, v33 offset:12160
	ds_load_u8 v80, v33 offset:11904
	ds_load_u8 v81, v33 offset:11648
	ds_load_u8 v82, v33 offset:11392
	ds_load_u8 v83, v33 offset:10496
	ds_load_u8 v84, v33 offset:10240
	ds_load_u8 v85, v33 offset:11008
	ds_load_u8 v86, v33 offset:10752
	ds_load_u8 v87, v33 offset:11136
	ds_load_u8 v88, v33 offset:10880
	ds_load_u8 v89, v33 offset:10624
	ds_load_u8 v90, v33 offset:10368
	ds_load_u8 v91, v33 offset:9472
	ds_load_u8 v92, v33 offset:9216
	ds_load_u8 v93, v33 offset:9984
	ds_load_u8 v94, v33 offset:9728
	ds_load_u8 v95, v33 offset:10112
	ds_load_u8 v96, v33 offset:9856
	ds_load_u8 v97, v33 offset:9600
	ds_load_u8 v98, v33 offset:9344
	ds_load_u8 v99, v33 offset:8448
	ds_load_u8 v100, v33 offset:8192
	ds_load_u8 v101, v33 offset:8960
	ds_load_u8 v102, v33 offset:8704
	ds_load_u8 v103, v33 offset:9088
	ds_load_u8 v104, v33 offset:8832
	ds_load_u8 v105, v33 offset:8576
	ds_load_u8 v106, v33 offset:8320
	ds_load_u8 v107, v33 offset:15616
	ds_load_u8 v108, v33 offset:15360
	ds_load_u8 v109, v33 offset:16128
	ds_load_u8 v110, v33 offset:15872
	ds_load_u8 v111, v33 offset:16256
	ds_load_u8 v112, v33 offset:16000
	ds_load_u8 v113, v33 offset:15744
	ds_load_u8 v114, v33 offset:15488
	ds_load_u8 v115, v33 offset:14592
	ds_load_u8 v116, v33 offset:14336
	ds_load_u8 v117, v33 offset:15104
	ds_load_u8 v120, v33 offset:14848
	ds_load_u8 v121, v33 offset:15232
	ds_load_u8 v122, v33 offset:14976
	ds_load_u8 v123, v33 offset:14720
	ds_load_u8 v124, v33 offset:14464
	ds_load_u8 v125, v33 offset:13568
	ds_load_u8 v126, v33 offset:13312
	ds_load_u8 v127, v33 offset:14080
	ds_load_u8 v128, v33 offset:13824
	ds_load_u8 v129, v33 offset:14208
	ds_load_u8 v130, v33 offset:13952
	ds_load_u8 v131, v33 offset:13696
	ds_load_u8 v132, v33 offset:13440
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(58)
	v_lshlrev_b32_e32 v159, 16, v49
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v147, v78, v72
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v154, 16, v44
	v_lshlrev_b32_e32 v155, 16, v45
	v_lshlrev_b32_e32 v157, 16, v47
	v_and_b32_e32 v45, 0xffff0000, v45
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v72, v110, v109, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v80, v90, v89, 0xc0c0004
	v_perm_b32 v82, v88, v87, 0xc0c0004
	v_perm_b32 v87, v104, v103, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v17, v147, v159
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v141, v78, v66
	v_mul_f32_e32 v142, v78, v67
	v_mul_f32_e32 v143, v78, v68
	v_dual_mul_f32 v144, v78, v69 :: v_dual_lshlrev_b32 v153, 16, v43
	v_mul_f32_e32 v145, v78, v70
	v_mul_f32_e32 v146, v78, v71
	v_mul_f32_e32 v148, v78, v50
	v_mul_f32_e32 v149, v78, v51
	v_dual_mul_f32 v150, v78, v52 :: v_dual_and_b32 v43, 0xffff0000, v43
	v_mul_f32_e32 v151, v78, v53
	v_mul_f32_e32 v54, v78, v54
	v_dual_mul_f32 v55, v78, v55 :: v_dual_lshlrev_b32 v152, 16, v42
	v_mul_f32_e32 v56, v78, v56
	v_dual_mul_f32 v57, v78, v57 :: v_dual_mul_f32 v78, v73, v78
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v23, v151, v45 :: v_dual_and_b32 v44, 0xffff0000, v44
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_perm_b32 v50, v75, v74, 0xc0c0004
	v_perm_b32 v51, v77, v76, 0xc0c0004
	v_perm_b32 v52, v84, v83, 0xc0c0004
	v_perm_b32 v66, v86, v85, 0xc0c0004
	v_perm_b32 v67, v92, v91, 0xc0c0004
	v_perm_b32 v68, v94, v93, 0xc0c0004
	v_perm_b32 v69, v100, v99, 0xc0c0004
	v_perm_b32 v70, v102, v101, 0xc0c0004
	v_perm_b32 v71, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v73, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v120, v117, 0xc0c0004
	v_perm_b32 v84, v98, v97, 0xc0c0004
	v_perm_b32 v85, v96, v95, 0xc0c0004
	v_perm_b32 v86, v106, v105, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v27, v149, v43 :: v_dual_lshlrev_b32 v156, 16, v46
	v_dual_fmac_f32 v25, v150, v44 :: v_dual_and_b32 v42, 0xffff0000, v42
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v158, 16, v48
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v19, v55, v47 :: v_dual_and_b32 v46, 0xffff0000, v46
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v48, 0xffff0000, v48
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v26, v142, v154 :: v_dual_and_b32 v49, 0xffff0000, v49
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v128, v127, 0xc0c0004
	v_perm_b32 v77, v134, v133, 0xc0c0004
	v_perm_b32 v83, v136, v135, 0xc0c0004
	v_perm_b32 v88, v114, v113, 0xc0c0004
	v_perm_b32 v89, v112, v111, 0xc0c0004
	v_perm_b32 v90, v124, v123, 0xc0c0004
	v_perm_b32 v91, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v132, v131, 0xc0c0004
	v_perm_b32 v93, v130, v129, 0xc0c0004
	v_perm_b32 v94, v140, v139, 0xc0c0004
	v_perm_b32 v95, v138, v137, 0xc0c0004
	v_lshl_or_b32 v53, v51, 16, v50
	v_lshl_or_b32 v52, v66, 16, v52
	v_lshl_or_b32 v51, v68, 16, v67
	v_lshl_or_b32 v50, v70, 16, v69
	v_lshl_or_b32 v69, v72, 16, v71
	v_lshl_or_b32 v68, v74, 16, v73
	v_lshl_or_b32 v73, v79, 16, v81
	v_lshl_or_b32 v72, v82, 16, v80
	v_lshl_or_b32 v71, v85, 16, v84
	v_lshl_or_b32 v70, v87, 16, v86
	v_lshl_or_b32 v67, v76, 16, v75
	v_lshl_or_b32 v66, v83, 16, v77
	v_lshl_or_b32 v77, v89, 16, v88
	v_lshl_or_b32 v76, v91, 16, v90
	v_lshl_or_b32 v75, v93, 16, v92
	v_lshl_or_b32 v74, v95, 16, v94
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v24, v143, v155 :: v_dual_fmac_f32 v15, v57, v49
	v_fmac_f32_e32 v29, v148, v42
	v_dual_fmac_f32 v21, v54, v46 :: v_dual_fmac_f32 v16, v56, v48
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[58:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[66:69], v[62:65], v[42:49] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[62:65], v[50:57] neg_lo:[1,1,0]
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v14, v78, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v73, v42
	v_cvt_f32_i32_e32 v58, v43
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v59, v44
	v_cvt_f32_i32_e32 v60, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v119
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v65, v74, v65 :: v_dual_lshlrev_b32 v42, 16, v118
	ds_store_b32 v41, v42 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v35 offset:17408
	ds_load_b128 v[46:49], v35 offset:17424
	ds_load_b128 v[50:53], v35 offset:17920
	ds_load_b128 v[54:57], v35 offset:17936
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v29, v65, v50
	v_dual_fmac_f32 v28, v141, v153 :: v_dual_mul_f32 v59, v74, v59
	v_dual_fmac_f32 v22, v144, v156 :: v_dual_mul_f32 v73, v73, v74
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v74, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v69, v74, v69 :: v_dual_fmac_f32 v26, v59, v44
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v20, v145, v157 :: v_dual_mul_f32 v63, v74, v63
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v60, v74, v60 :: v_dual_fmac_f32 v23, v68, v53
	v_mul_f32_e32 v61, v74, v61
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v64, v74, v64 :: v_dual_fmac_f32 v21, v69, v54
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v18, v146, v158
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v66, v74, v66
	v_dual_mul_f32 v67, v74, v67 :: v_dual_fmac_f32 v14, v73, v42
	v_mul_f32_e32 v58, v74, v58
	v_mul_f32_e32 v70, v74, v70
	v_dual_mul_f32 v71, v74, v71 :: v_dual_fmac_f32 v24, v60, v45
	v_mul_f32_e32 v72, v74, v72
	v_mul_f32_e32 v62, v74, v62
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v22, v61, v46 :: v_dual_fmac_f32 v27, v66, v51
	v_dual_fmac_f32 v17, v64, v49 :: v_dual_fmac_f32 v18, v63, v48
	v_fmac_f32_e32 v19, v70, v55
	v_dual_fmac_f32 v25, v67, v52 :: v_dual_fmac_f32 v28, v58, v43
	v_dual_fmac_f32 v16, v71, v56 :: v_dual_fmac_f32 v15, v72, v57
	v_fmac_f32_e32 v20, v62, v47
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v13 :: v_dual_mov_b32 v6, v10
	v_mov_b32_e32 v3, v11
.LBB0_7:                                ; %._crit_edge
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_bfe_i32 v2, v0, 3, 1
	v_and_b32_e32 v4, 7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or3_b32 v3, v3, v9, v12
	s_mov_b32 s0, 0
	v_and_b32_e32 v2, 0x2040, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, v4, 2, v6
	v_xad_u32 v9, 0x1010, v3, 0
	v_xad_u32 v12, 0x1c1c, v3, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s24, s21, v[1:2]
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v2, v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v4, 10, v2
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v5, 0, v4
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	v_xad_u32 v13, v4, 24, 0
	v_xad_u32 v6, v4, 4, 0
	v_xad_u32 v7, v4, 8, 0
	v_xad_u32 v8, v4, 12, 0
	v_xad_u32 v10, v4, 16, 0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	v_xad_u32 v11, v4, 20, 0
	v_xad_u32 v4, v4, 28, 0
	ds_store_2addr_stride64_b32 v5, v14, v29 offset1:2
	ds_store_2addr_stride64_b32 v6, v28, v27 offset1:2
	ds_store_2addr_stride64_b32 v7, v26, v25 offset1:2
	ds_store_2addr_stride64_b32 v8, v24, v23 offset1:2
	ds_store_2addr_stride64_b32 v10, v22, v21 offset1:2
	ds_store_2addr_stride64_b32 v11, v20, v19 offset1:2
	ds_store_2addr_stride64_b32 v13, v18, v16 offset1:2
	ds_store_2addr_stride64_b32 v4, v17, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v4, v[1:2], off
	v_add_nc_u32_e32 v5, 0, v3
	v_xad_u32 v6, 0x404, v3, 0
	v_xad_u32 v7, 0x808, v3, 0
	v_xad_u32 v8, 0xc0c, v3, 0
	v_xad_u32 v10, 0x1414, v3, 0
	v_xad_u32 v11, 0x1818, v3, 0
	ds_load_b32 v20, v5
	ds_load_b32 v19, v6
	ds_load_b32 v18, v7
	ds_load_b32 v17, v8
	ds_load_b32 v16, v9
	ds_load_b32 v15, v10
	ds_load_b32 v14, v11
	ds_load_b32 v13, v12
	v_xad_u32 v5, 0x2040, v3, 0
	v_xad_u32 v6, 0x2444, v3, 0
	v_xad_u32 v7, 0x2848, v3, 0
	v_xad_u32 v8, 0x2c4c, v3, 0
	v_xad_u32 v21, 0x3050, v3, 0
	v_xad_u32 v22, 0x3454, v3, 0
	v_xad_u32 v23, 0x3858, v3, 0
	v_xad_u32 v3, 0x3c5c, v3, 0
	ds_load_b32 v12, v5
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v21
	ds_load_b32 v7, v22
	ds_load_b32 v6, v23
	ds_load_b32 v5, v3
.LBB0_8:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v3, v4, v20
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_ashr_i32 s1, s21, 31
	s_mov_b32 s0, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[0:1], s[0:1], 2
	v_add_co_u32 v1, vcc_lo, v1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v4, v[1:2], off
.LBB0_10:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v3, v4, v19
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s21, 1, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_12:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v3, v4, v18
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 3, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_14:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v3, v4, v17
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s21, 2, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_16:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v3, v4, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 5, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_18:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v3, v4, v15
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 6, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_20:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v3, v4, v14
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 7, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_22:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v3, v4, v13
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s21, 3, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_24:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v3, v4, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 9, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_26:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 10, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_28:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v3, v4, v10
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 11, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_30:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 12, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_32:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 13, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_34:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s21, 14, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_36:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 15, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_38:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 160
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6384
; TotalNumSgprs: 31
; NumVgprs: 160
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 31
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     160
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
