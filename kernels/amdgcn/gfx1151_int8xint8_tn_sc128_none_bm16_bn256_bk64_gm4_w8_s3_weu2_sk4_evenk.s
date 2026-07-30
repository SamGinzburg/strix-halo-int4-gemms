	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s6, s2
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v17, 15, v0
	v_lshlrev_b32_e32 v15, 2, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v40, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v3, 12, v15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s13, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v2, s35, v2
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v9, v17, 4, v2
	v_mad_u64_u32 v[10:11], null, s35, 48, v[9:10]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s15, s14, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s14, s14, s13
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s4, s7, s15
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s14
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s16, s4, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mul_lo_u32 v1, s34, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s18, s18
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s18, s19
	s_add_i32 s18, s18, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s23, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s14, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s13, s12, 0xff
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s14, s14, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:387:30 ]
	s_addk_i32 s12, 0x7f
.Ltmp15:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s3, s14, s16
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s26, s14, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_ashr_i32 s3, s12, 31
.Ltmp17:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp19:
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s22, s2, 4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s14, s12, s3
.Ltmp21:
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v11, v1, v3, s22
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s13, 0xff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s2, s35, s23
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s33, s35, 4
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	s_mul_i32 s15, s34, s23
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s44, s35, 5
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s12, s26, s2
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v18, s33, v9
	.loc	1 372 30 is_stmt 1              ; generate_amdgcn.py:372:30
	v_add_nc_u32_e32 v1, s15, v11
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s13, 0x1ff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v19, s44, v9
	v_add_nc_u32_e32 v3, s12, v10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	s_lshl_b32 s16, s34, 8
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s17, s35, 8
	v_add_nc_u32_e32 v2, s12, v9
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v4, s15, s16, v11
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s15, s12, s17
	v_add_nc_u32_e32 v5, s12, v18
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v6, s12, v19
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v7, 0x80000000, v3, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v3, s15, v9
	v_add_nc_u32_e32 v8, s15, v18
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v12, s15, v19
	v_add_nc_u32_e32 v13, s15, v10
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v16, 0x80000000, v5, s3
	.loc	1 372 22 is_stmt 1              ; generate_amdgcn.py:372:22
	buffer_load_b32 v14, v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v20, 0x80000000, v3, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x3
	buffer_load_b128 v[2:5], v2, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v16, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v6, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v7, s[28:31], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v12, s2
	v_cndmask_b32_e64 v7, 0x80000000, v13, s2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b32 v12, v1, s[4:7], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[33:36], v20, s[28:31], 0 offen
	buffer_load_b128 v[41:44], v8, s[28:31], 0 offen
	buffer_load_b128 v[45:48], v6, s[28:31], 0 offen
	buffer_load_b128 v[49:52], v7, s[28:31], 0 offen
	v_or_b32_e32 v20, 0x3f0, v0
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v6, 0, v15
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v7, 0, v40
	s_mov_b32 s12, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s13, 0x2ff
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v6, v14 offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[21:24] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[25:28] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v7, v[29:32] offset:12288
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v6, v12 offset:33792
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[33:36] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[41:44] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[45:48] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[49:52] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_or_b32_e32 v58, 0x3f0, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_and_b32_e32 v16, 0x70, v1
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr16
.LBB0_3:                                ; %Flow47
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v2, s22, v17
	v_and_b32_e32 v3, 0xf0, v0
	s_ashr_i32 s0, s14, 7
	v_or_b32_e32 v21, s26, v0
	v_lshlrev_b32_e32 v13, 1, v0
	v_mul_lo_u32 v39, v2, s0
	v_lshlrev_b32_e32 v12, 2, v3
	v_lshlrev_b32_e32 v14, 5, v0
	v_lshlrev_b32_e32 v23, 1, v3
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s1, s23, 0x100
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s47, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v16, 0x70, v1
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v1, 32, v14
	v_and_b32_e32 v24, 28, v13
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v42, 0, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, 0, v12, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_mov_b32_e32 v5, s16
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v41, v25, v24
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v38, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s11, s1, 0x100
	s_mov_b32 s27, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s47, s47, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s15, s10
	s_mov_b32 s14, s23
	.loc	1 372 22 is_stmt 1              ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v44, s15, v17
	v_add_nc_u32_e32 v47, s15, v20
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s15, s14, 31
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s17, s13, 8
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s15, s15, 25
	s_mov_b32 s16, s12
	s_mov_b32 s23, s1
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s1, s11, s17
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s14, s14, s15
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add3_u32 v43, s16, v16, v17
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	s_mul_i32 s16, s1, s35
	.loc	1 388 29 is_stmt 1              ; generate_amdgcn.py:388:29
	s_ashr_i32 s14, s14, 7
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s16, s16, s26
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s14, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v51, v39, s14, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s14, s14, s35
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mad_u64_u32 v[45:46], null, s1, s34, v[11:12]
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v59, v21, s14, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v46, s16, v9
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v48, s16, v18
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b32 v119, v45, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v188, v59, s[40:43], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v189, v51, s[36:39], 0 offen
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v49, s16, v19
	v_add_nc_u32_e32 v50, s16, v10
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[59:62], v46, s[28:31], 0 offen
	buffer_load_b128 v[63:66], v48, s[28:31], 0 offen
	buffer_load_b128 v[67:70], v49, s[28:31], 0 offen
	buffer_load_b128 v[71:74], v50, s[28:31], 0 offen
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	ds_load_u8 v45, v44 offset:208
	ds_load_u8 v52, v44 offset:240
	ds_load_u8 v53, v44 offset:224
	ds_load_u8 v54, v44 offset:192
	ds_load_u8 v55, v44 offset:144
	ds_load_u8 v56, v44 offset:176
	ds_load_u8 v57, v44 offset:160
	ds_load_u8 v58, v44 offset:128
	ds_load_u8 v75, v44 offset:80
	ds_load_u8 v76, v44 offset:112
	ds_load_u8 v77, v44 offset:96
	ds_load_u8 v78, v44 offset:64
	ds_load_u8 v79, v44
	ds_load_u8 v80, v44 offset:16
	ds_load_u8 v81, v44 offset:32
	ds_load_u8 v82, v44 offset:48
	ds_load_u8 v83, v44 offset:464
	ds_load_u8 v84, v44 offset:496
	ds_load_u8 v85, v44 offset:480
	ds_load_u8 v86, v44 offset:448
	ds_load_u8 v87, v44 offset:400
	ds_load_u8 v88, v44 offset:432
	ds_load_u8 v89, v44 offset:416
	ds_load_u8 v90, v44 offset:384
	ds_load_u8 v91, v44 offset:336
	ds_load_u8 v92, v44 offset:368
	ds_load_u8 v93, v44 offset:352
	ds_load_u8 v94, v44 offset:320
	ds_load_u8 v95, v44 offset:272
	ds_load_u8 v96, v44 offset:304
	ds_load_u8 v97, v44 offset:288
	ds_load_u8 v98, v44 offset:256
	ds_load_u8 v99, v44 offset:720
	ds_load_u8 v100, v44 offset:752
	ds_load_u8 v101, v44 offset:736
	ds_load_u8 v102, v44 offset:704
	ds_load_u8 v103, v44 offset:656
	ds_load_u8 v104, v44 offset:688
	ds_load_u8 v105, v44 offset:672
	ds_load_u8 v106, v44 offset:640
	ds_load_u8 v107, v44 offset:592
	ds_load_u8 v108, v44 offset:624
	ds_load_u8 v109, v44 offset:608
	ds_load_u8 v110, v44 offset:576
	ds_load_u8 v111, v44 offset:528
	ds_load_u8 v112, v44 offset:560
	ds_load_u8 v113, v44 offset:544
	ds_load_u8 v114, v44 offset:512
	ds_load_u8 v115, v43 offset:11520
	ds_load_u8 v116, v43 offset:11264
	ds_load_u8 v117, v43 offset:12032
	ds_load_u8 v118, v43 offset:11776
	ds_load_u8 v120, v44 offset:976
	ds_load_u8 v47, v47
	ds_load_u8 v121, v44 offset:992
	ds_load_u8 v122, v44 offset:960
	ds_load_u8 v123, v44 offset:912
	ds_load_u8 v124, v44 offset:944
	ds_load_u8 v125, v44 offset:928
	ds_load_u8 v126, v44 offset:896
	ds_load_u8 v127, v44 offset:848
	ds_load_u8 v128, v44 offset:880
	ds_load_u8 v129, v44 offset:864
	ds_load_u8 v130, v44 offset:832
	ds_load_u8 v131, v44 offset:784
	ds_load_u8 v132, v44 offset:816
	ds_load_u8 v133, v44 offset:800
	ds_load_u8 v44, v44 offset:768
	ds_load_u8 v134, v43 offset:3328
	ds_load_u8 v135, v43 offset:3072
	ds_load_u8 v136, v43 offset:3840
	ds_load_u8 v137, v43 offset:3584
	ds_load_u8 v138, v43 offset:3968
	ds_load_u8 v139, v43 offset:3712
	ds_load_u8 v140, v43 offset:3456
	ds_load_u8 v141, v43 offset:3200
	ds_load_u8 v142, v43 offset:2304
	ds_load_u8 v143, v43 offset:2048
	ds_load_u8 v144, v43 offset:2816
	ds_load_u8 v145, v43 offset:2560
	ds_load_u8 v146, v43 offset:2944
	ds_load_u8 v147, v43 offset:2688
	ds_load_u8 v148, v43 offset:2432
	ds_load_u8 v149, v43 offset:2176
	ds_load_u8 v150, v43 offset:1280
	ds_load_u8 v151, v43 offset:1024
	ds_load_u8 v152, v43 offset:1792
	ds_load_u8 v153, v43 offset:1536
	ds_load_u8 v154, v43 offset:1920
	ds_load_u8 v155, v43 offset:1664
	ds_load_u8 v156, v43 offset:1408
	ds_load_u8 v157, v43 offset:1152
	ds_load_u8 v158, v43 offset:256
	ds_load_u8 v159, v43
	ds_load_u8 v160, v43 offset:768
	ds_load_u8 v161, v43 offset:512
	ds_load_u8 v162, v43 offset:896
	ds_load_u8 v163, v43 offset:640
	ds_load_u8 v164, v43 offset:384
	ds_load_u8 v165, v43 offset:128
	ds_load_u8 v166, v43 offset:7424
	ds_load_u8 v167, v43 offset:7168
	ds_load_u8 v168, v43 offset:7936
	ds_load_u8 v169, v43 offset:7680
	ds_load_u8 v170, v43 offset:8064
	ds_load_u8 v171, v43 offset:7808
	ds_load_u8 v172, v43 offset:7552
	ds_load_u8 v173, v43 offset:7296
	ds_load_u8 v174, v43 offset:6400
	ds_load_u8 v175, v43 offset:6144
	ds_load_u8 v176, v43 offset:6912
	ds_load_u8 v177, v43 offset:6656
	ds_load_u8 v178, v43 offset:7040
	ds_load_u8 v179, v43 offset:6784
	ds_load_u8 v180, v43 offset:6528
	ds_load_u8 v181, v43 offset:6272
	ds_load_u8 v182, v43 offset:5376
	ds_load_u8 v183, v43 offset:5120
	ds_load_u8 v184, v43 offset:5888
	ds_load_u8 v185, v43 offset:5632
	ds_load_u8 v186, v43 offset:6016
	ds_load_u8 v187, v43 offset:5760
	ds_load_u8 v51, v43 offset:5504
	ds_load_u8 v190, v43 offset:5248
	ds_load_u8 v191, v43 offset:4352
	ds_load_u8 v192, v43 offset:4096
	ds_load_u8 v193, v43 offset:4864
	ds_load_u8 v194, v43 offset:4608
	ds_load_u8 v195, v43 offset:4992
	ds_load_u8 v196, v43 offset:4736
	ds_load_u8 v197, v43 offset:4480
	ds_load_u8 v198, v43 offset:4224
	ds_load_u8 v46, v43 offset:12160
	ds_load_u8 v48, v43 offset:11904
	ds_load_u8 v49, v43 offset:11648
	ds_load_u8 v50, v43 offset:11392
	ds_load_u8 v199, v43 offset:10496
	ds_load_u8 v200, v43 offset:10240
	ds_load_u8 v201, v43 offset:11008
	ds_load_u8 v202, v43 offset:10752
	ds_load_u8 v203, v43 offset:11136
	ds_load_u8 v204, v43 offset:10880
	ds_load_u8 v205, v43 offset:10624
	ds_load_u8 v206, v43 offset:10368
	ds_load_u8 v207, v43 offset:9472
	ds_load_u8 v208, v43 offset:9216
	ds_load_u8 v209, v43 offset:9984
	ds_load_u8 v210, v43 offset:9728
	ds_load_u8 v211, v43 offset:10112
	ds_load_u8 v212, v43 offset:9856
	ds_load_u8 v213, v43 offset:9600
	ds_load_u8 v214, v43 offset:9344
	ds_load_u8 v215, v43 offset:8448
	ds_load_u8 v216, v43 offset:8192
	ds_load_u8 v217, v43 offset:8960
	ds_load_u8 v218, v43 offset:8704
	ds_load_u8 v219, v43 offset:9088
	ds_load_u8 v220, v43 offset:8832
	ds_load_u8 v221, v43 offset:8576
	ds_load_u8 v222, v43 offset:8320
	ds_load_u8 v223, v43 offset:15616
	ds_load_u8 v224, v43 offset:15360
	ds_load_u8 v225, v43 offset:16128
	ds_load_u8 v226, v43 offset:15872
	ds_load_u8 v227, v43 offset:16256
	ds_load_u8 v228, v43 offset:16000
	ds_load_u8 v229, v43 offset:15744
	ds_load_u8 v230, v43 offset:15488
	ds_load_u8 v231, v43 offset:14592
	ds_load_u8 v232, v43 offset:14336
	ds_load_u8 v233, v43 offset:15104
	ds_load_u8 v234, v43 offset:14848
	ds_load_u8 v235, v43 offset:15232
	ds_load_u8 v236, v43 offset:14976
	ds_load_u8 v237, v43 offset:14720
	ds_load_u8 v238, v43 offset:14464
	ds_load_u8 v239, v43 offset:13568
	ds_load_u8 v240, v43 offset:13312
	ds_load_u8 v241, v43 offset:14080
	ds_load_u8 v242, v43 offset:13824
	ds_load_u8 v243, v43 offset:14208
	ds_load_u8 v244, v43 offset:13952
	ds_load_u8 v245, v43 offset:13696
	ds_load_u8 v246, v43 offset:13440
	ds_load_u8 v247, v43 offset:12544
	ds_load_u8 v248, v43 offset:12288
	ds_load_u8 v249, v43 offset:13056
	ds_load_u8 v250, v43 offset:12800
	ds_load_u8 v251, v43 offset:13184
	ds_load_u8 v252, v43 offset:12928
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v45, v54, v45, 0xc0c0004
	ds_load_u8 v54, v43 offset:12672
	ds_load_u8 v43, v43 offset:12416
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_perm_b32 v53, v58, v55, 0xc0c0004
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_perm_b32 v56, v78, v75, 0xc0c0004
	v_perm_b32 v57, v77, v76, 0xc0c0004
	v_perm_b32 v58, v79, v80, 0xc0c0004
	v_perm_b32 v75, v81, v82, 0xc0c0004
	v_perm_b32 v79, v135, v134, 0xc0c0004
	v_perm_b32 v80, v137, v136, 0xc0c0004
	v_perm_b32 v81, v143, v142, 0xc0c0004
	v_perm_b32 v82, v145, v144, 0xc0c0004
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_perm_b32 v135, v153, v152, 0xc0c0004
	v_perm_b32 v136, v159, v158, 0xc0c0004
	v_perm_b32 v137, v161, v160, 0xc0c0004
	v_perm_b32 v83, v86, v83, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v85, v90, v87, 0xc0c0004
	v_perm_b32 v86, v89, v88, 0xc0c0004
	v_perm_b32 v87, v94, v91, 0xc0c0004
	v_perm_b32 v88, v93, v92, 0xc0c0004
	v_perm_b32 v89, v98, v95, 0xc0c0004
	v_perm_b32 v90, v97, v96, 0xc0c0004
	v_perm_b32 v91, v167, v166, 0xc0c0004
	v_perm_b32 v92, v169, v168, 0xc0c0004
	v_perm_b32 v93, v175, v174, 0xc0c0004
	v_perm_b32 v94, v177, v176, 0xc0c0004
	v_perm_b32 v95, v183, v182, 0xc0c0004
	v_perm_b32 v96, v185, v184, 0xc0c0004
	v_perm_b32 v97, v192, v191, 0xc0c0004
	v_perm_b32 v98, v194, v193, 0xc0c0004
	v_perm_b32 v99, v102, v99, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v101, v106, v103, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	v_perm_b32 v103, v110, v107, 0xc0c0004
	v_perm_b32 v104, v109, v108, 0xc0c0004
	v_perm_b32 v105, v114, v111, 0xc0c0004
	v_perm_b32 v106, v113, v112, 0xc0c0004
	v_perm_b32 v107, v116, v115, 0xc0c0004
	v_perm_b32 v108, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v113, v216, v215, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v114, v218, v217, 0xc0c0004
	v_perm_b32 v115, v122, v120, 0xc0c0004
	v_perm_b32 v47, v121, v47, 0xc0c0004
	v_perm_b32 v118, v130, v127, 0xc0c0004
	v_perm_b32 v44, v44, v131, 0xc0c0004
	v_perm_b32 v121, v133, v132, 0xc0c0004
	v_perm_b32 v130, v141, v140, 0xc0c0004
	v_perm_b32 v131, v139, v138, 0xc0c0004
	v_perm_b32 v132, v149, v148, 0xc0c0004
	v_perm_b32 v133, v147, v146, 0xc0c0004
	v_perm_b32 v138, v157, v156, 0xc0c0004
	v_perm_b32 v139, v155, v154, 0xc0c0004
	v_perm_b32 v140, v165, v164, 0xc0c0004
	v_perm_b32 v141, v163, v162, 0xc0c0004
	v_perm_b32 v146, v190, v51, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v46, v48, v46, 0xc0c0004
	v_perm_b32 v48, v206, v205, 0xc0c0004
	v_perm_b32 v50, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v54, 0xc0c0004
	v_perm_b32 v160, v252, v251, 0xc0c0004
	v_lshl_or_b32 v78, v52, 16, v45
	v_lshl_or_b32 v77, v55, 16, v53
	v_lshl_or_b32 v76, v57, 16, v56
	v_lshl_or_b32 v75, v75, 16, v58
	v_lshl_or_b32 v54, v80, 16, v79
	v_lshl_or_b32 v53, v82, 16, v81
	v_lshl_or_b32 v52, v135, 16, v134
	v_lshl_or_b32 v51, v137, 16, v136
	v_perm_b32 v109, v200, v199, 0xc0c0004
	v_perm_b32 v110, v202, v201, 0xc0c0004
	v_perm_b32 v111, v208, v207, 0xc0c0004
	v_perm_b32 v112, v210, v209, 0xc0c0004
	v_perm_b32 v142, v173, v172, 0xc0c0004
	v_perm_b32 v143, v171, v170, 0xc0c0004
	v_perm_b32 v144, v181, v180, 0xc0c0004
	v_perm_b32 v145, v179, v178, 0xc0c0004
	v_perm_b32 v147, v187, v186, 0xc0c0004
	v_perm_b32 v148, v198, v197, 0xc0c0004
	v_perm_b32 v149, v196, v195, 0xc0c0004
	v_lshl_or_b32 v82, v84, 16, v83
	v_lshl_or_b32 v81, v86, 16, v85
	v_lshl_or_b32 v80, v88, 16, v87
	v_lshl_or_b32 v79, v90, 16, v89
	v_lshl_or_b32 v86, v92, 16, v91
	v_lshl_or_b32 v85, v94, 16, v93
	v_lshl_or_b32 v84, v96, 16, v95
	v_lshl_or_b32 v83, v98, 16, v97
	v_lshl_or_b32 v88, v104, 16, v103
	v_lshl_or_b32 v87, v106, 16, v105
	v_lshl_or_b32 v91, v114, 16, v113
	v_lshl_or_b32 v98, v47, 16, v115
	v_lshl_or_b32 v95, v121, 16, v44
	v_lshl_or_b32 v106, v131, 16, v130
	v_lshl_or_b32 v105, v133, 16, v132
	v_lshl_or_b32 v104, v139, 16, v138
	v_lshl_or_b32 v103, v141, 16, v140
	v_lshl_or_b32 v114, v46, 16, v49
	v_lshl_or_b32 v113, v50, 16, v48
	v_lshl_or_b32 v115, v160, 16, v43
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v116, v126, v123, 0xc0c0004
	v_perm_b32 v117, v125, v124, 0xc0c0004
	v_perm_b32 v120, v129, v128, 0xc0c0004
	v_perm_b32 v122, v224, v223, 0xc0c0004
	v_perm_b32 v123, v226, v225, 0xc0c0004
	v_perm_b32 v124, v232, v231, 0xc0c0004
	v_perm_b32 v125, v234, v233, 0xc0c0004
	v_perm_b32 v126, v240, v239, 0xc0c0004
	v_perm_b32 v127, v242, v241, 0xc0c0004
	v_perm_b32 v128, v248, v247, 0xc0c0004
	v_perm_b32 v129, v250, v249, 0xc0c0004
	v_perm_b32 v150, v214, v213, 0xc0c0004
	v_perm_b32 v151, v212, v211, 0xc0c0004
	v_perm_b32 v152, v222, v221, 0xc0c0004
	v_perm_b32 v153, v220, v219, 0xc0c0004
	v_lshl_or_b32 v90, v100, 16, v99
	v_lshl_or_b32 v89, v102, 16, v101
	v_lshl_or_b32 v94, v108, 16, v107
	v_lshl_or_b32 v93, v110, 16, v109
	v_lshl_or_b32 v92, v112, 16, v111
	v_lshl_or_b32 v110, v143, 16, v142
	v_lshl_or_b32 v109, v145, 16, v144
	v_lshl_or_b32 v108, v147, 16, v146
	v_lshl_or_b32 v107, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[51:58], v[103:106], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[83:86], v[79:82], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v154, v230, v229, 0xc0c0004
	v_perm_b32 v155, v228, v227, 0xc0c0004
	v_perm_b32 v156, v238, v237, 0xc0c0004
	v_perm_b32 v157, v236, v235, 0xc0c0004
	v_perm_b32 v158, v246, v245, 0xc0c0004
	v_perm_b32 v159, v244, v243, 0xc0c0004
	v_lshl_or_b32 v97, v117, 16, v116
	v_lshl_or_b32 v96, v120, 16, v118
	v_lshl_or_b32 v102, v123, 16, v122
	v_lshl_or_b32 v101, v125, 16, v124
	v_lshl_or_b32 v100, v127, 16, v126
	v_lshl_or_b32 v99, v129, 16, v128
	v_lshl_or_b32 v112, v151, 16, v150
	v_lshl_or_b32 v111, v153, 16, v152
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[79:82], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[91:94], v[87:90], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v118, v155, 16, v154
	v_lshl_or_b32 v117, v157, 16, v156
	v_lshl_or_b32 v116, v159, 16, v158
	v_wmma_i32_16x16x16_iu8 v[51:58], v[111:114], v[87:90], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[99:102], v[95:98], v[43:50] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s14, s27, 1
	s_mov_b32 s12, s45
	s_cmp_lt_i32 s14, 2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[95:98], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v75, v43
	v_cvt_f32_i32_e32 v76, v44
	v_cvt_f32_i32_e32 v77, v45
	v_cvt_f32_i32_e32 v78, v46
	v_cvt_f32_i32_e32 v79, v47
	v_cvt_f32_i32_e32 v80, v48
	v_cvt_f32_i32_e32 v81, v49
	v_cvt_f32_i32_e32 v82, v50
	v_cvt_f32_i32_e32 v83, v51
	v_cvt_f32_i32_e32 v84, v52
	v_cvt_f32_i32_e32 v85, v53
	v_cvt_f32_i32_e32 v86, v54
	v_cvt_f32_i32_e32 v87, v55
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v90, v58
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s27, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s16, s27, 14
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_lshl_b32 s15, s27, 10
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s45, s16, 0
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_add_i32 s15, s15, 0
	s_mov_b32 s10, s46
	s_add_i32 s46, s15, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s13, s47
	s_mov_b32 s13, s14
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v91, 16, v189
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v43, 16, v188
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v41, v43 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v42 offset:34816
	ds_load_b128 v[47:50], v42 offset:34832
	ds_load_b128 v[51:54], v42 offset:35328
	ds_load_b128 v[55:58], v42 offset:35344
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v43, v43, v91
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v22, v43, v75
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v51, v51, v91 :: v_dual_add_nc_u32 v254, s45, v40
	v_mul_f32_e32 v44, v44, v91
	v_mul_f32_e32 v45, v45, v91
	v_mul_f32_e32 v46, v46, v91
	v_mul_f32_e32 v47, v47, v91
	v_mul_f32_e32 v48, v48, v91
	v_mul_f32_e32 v49, v49, v91
	v_mul_f32_e32 v50, v50, v91
	v_mul_f32_e32 v53, v53, v91
	v_mul_f32_e32 v54, v54, v91
	v_mul_f32_e32 v52, v52, v91
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v55, v55, v91
	v_mul_f32_e32 v57, v57, v91
	v_mul_f32_e32 v58, v58, v91
	v_mul_f32_e32 v56, v56, v91
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v24, v44, v76 :: v_dual_fmac_f32 v25, v45, v77
	v_dual_fmac_f32 v26, v46, v78 :: v_dual_fmac_f32 v27, v47, v79
	v_fmac_f32_e32 v38, v57, v89
	v_dual_fmac_f32 v28, v48, v80 :: v_dual_fmac_f32 v29, v49, v81
	v_dual_fmac_f32 v30, v50, v82 :: v_dual_add_nc_u32 v253, s15, v15
	v_fmac_f32_e32 v32, v51, v83
	v_dual_fmac_f32 v34, v53, v85 :: v_dual_fmac_f32 v35, v54, v86
	v_dual_fmac_f32 v33, v52, v84 :: v_dual_fmac_f32 v36, v55, v87
	v_fmac_f32_e32 v31, v58, v90
	v_fmac_f32_e32 v37, v56, v88
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	ds_store_b32 v253, v119 offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v254, v[59:62]
	s_waitcnt vmcnt(2)
	ds_store_b128 v254, v[63:66] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v254, v[67:70] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v254, v[71:74] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v58, v20
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v19, v16, v17
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v56, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v5, s12, v19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v6, s10, v17
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v6 offset:240
	ds_load_u8 v2, v6 offset:208
	ds_load_u8 v3, v6 offset:224
	ds_load_u8 v4, v6 offset:192
	ds_load_u8 v7, v6 offset:144
	ds_load_u8 v8, v6 offset:160
	ds_load_u8 v9, v6 offset:128
	ds_load_u8 v10, v6 offset:176
	ds_load_u8 v11, v6 offset:112
	ds_load_u8 v15, v6 offset:80
	ds_load_u8 v16, v6 offset:96
	ds_load_u8 v20, v6 offset:64
	ds_load_u8 v40, v6 offset:16
	ds_load_u8 v41, v6 offset:32
	ds_load_u8 v42, v6
	ds_load_u8 v43, v6 offset:48
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v44, s10, v58
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v105, v6 offset:752
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v9, v7, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v8, v10, 0xc0c0004
	ds_load_u8 v8, v5 offset:3328
	ds_load_u8 v9, v5 offset:3072
	ds_load_u8 v10, v5 offset:3840
	ds_load_u8 v47, v5 offset:3584
	v_lshl_or_b32 v4, v1, 16, v2
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v16, v11, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v20, v15, 0xc0c0004
	v_lshl_or_b32 v3, v7, 16, v3
	ds_load_u8 v11, v44
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v7, v42, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v41, v43, 0xc0c0004
	ds_load_u8 v16, v5 offset:2304
	ds_load_u8 v20, v5 offset:2048
	ds_load_u8 v40, v5 offset:2816
	ds_load_u8 v41, v5 offset:2560
	ds_load_u8 v42, v5 offset:1280
	ds_load_u8 v43, v5 offset:1024
	ds_load_u8 v44, v5 offset:1792
	ds_load_u8 v48, v5 offset:1536
	ds_load_u8 v57, v5 offset:3968
	ds_load_u8 v67, v5 offset:3712
	ds_load_u8 v71, v5 offset:3456
	ds_load_u8 v72, v5 offset:3200
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v15, 16, v7
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v20, v16, 0xc0c0004
	v_perm_b32 v9, v47, v10, 0xc0c0004
	ds_load_u8 v47, v5 offset:256
	ds_load_u8 v49, v5
	ds_load_u8 v50, v5 offset:768
	ds_load_u8 v51, v5 offset:512
	ds_load_u8 v73, v5 offset:2944
	ds_load_u8 v74, v5 offset:2688
	ds_load_u8 v75, v5 offset:2432
	ds_load_u8 v76, v5 offset:2176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v40, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v41, v48, v44, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v67, v57, 0xc0c0004
	v_lshl_or_b32 v9, v20, 16, v16
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v8, v41, 16, v40
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v51, v50, 0xc0c0004
	v_dual_mov_b32 v56, s19 :: v_dual_mov_b32 v55, s18
	ds_load_u8 v41, v6 offset:464
	ds_load_u8 v42, v6 offset:480
	ds_load_u8 v43, v6 offset:448
	ds_load_u8 v45, v6 offset:288
	ds_load_u8 v46, v6 offset:256
	v_lshl_or_b32 v7, v40, 16, v7
	ds_load_u8 v40, v6 offset:496
	ds_load_u8 v44, v6 offset:400
	ds_load_u8 v47, v6 offset:432
	ds_load_u8 v68, v6 offset:416
	ds_load_u8 v69, v6 offset:384
	ds_load_u8 v70, v6 offset:368
	ds_load_u8 v81, v6 offset:336
	ds_load_u8 v82, v6 offset:352
	ds_load_u8 v83, v6 offset:320
	ds_load_u8 v84, v6 offset:272
	ds_load_u8 v85, v6 offset:304
	v_dual_mov_b32 v54, s17 :: v_dual_mov_b32 v51, s14
	v_dual_mov_b32 v53, s16 :: v_dual_mov_b32 v52, s15
	v_dual_mov_b32 v49, s12 :: v_dual_mov_b32 v50, s13
	ds_load_u8 v86, v6 offset:592
	ds_load_u8 v87, v6 offset:608
	ds_load_u8 v88, v6 offset:576
	ds_load_u8 v89, v6 offset:528
	ds_load_u8 v90, v6 offset:560
	ds_load_u8 v91, v6 offset:544
	ds_load_u8 v92, v6 offset:512
	ds_load_u8 v77, v5 offset:1920
	ds_load_u8 v78, v5 offset:1664
	ds_load_u8 v79, v5 offset:1408
	ds_load_u8 v80, v5 offset:1152
	ds_load_u8 v15, v5 offset:896
	ds_load_u8 v16, v5 offset:640
	ds_load_u8 v20, v5 offset:384
	ds_load_u8 v48, v5 offset:128
	ds_load_u8 v127, v5 offset:9088
	ds_load_u8 v128, v5 offset:8832
	ds_load_u8 v129, v5 offset:8576
	ds_load_u8 v130, v5 offset:8320
	v_wmma_i32_16x16x16_iu8 v[59:66], v[7:10], v[1:4], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v132, v5 offset:14208
	ds_load_u8 v133, v5 offset:13952
	ds_load_u8 v134, v5 offset:13696
	ds_load_u8 v135, v5 offset:13440
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v9, v69, v44, 0xc0c0004
	v_perm_b32 v44, v68, v47, 0xc0c0004
	v_perm_b32 v8, v42, v40, 0xc0c0004
	v_perm_b32 v7, v43, v41, 0xc0c0004
	ds_load_u8 v40, v5 offset:7424
	ds_load_u8 v41, v5 offset:7168
	ds_load_u8 v42, v5 offset:7936
	ds_load_u8 v43, v5 offset:7680
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v46, v46, v84, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v45, v45, v85, 0xc0c0004
	v_lshl_or_b32 v9, v44, 16, v9
	v_lshl_or_b32 v10, v8, 16, v7
	v_perm_b32 v47, v83, v81, 0xc0c0004
	v_perm_b32 v68, v82, v70, 0xc0c0004
	v_lshl_or_b32 v7, v45, 16, v46
	ds_load_u8 v69, v5 offset:6400
	ds_load_u8 v70, v5 offset:6144
	ds_load_u8 v81, v5 offset:6912
	ds_load_u8 v82, v5 offset:6656
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v88, v91, v90, 0xc0c0004
	v_lshl_or_b32 v8, v68, 16, v47
	ds_load_u8 v83, v5 offset:8064
	ds_load_u8 v84, v5 offset:7808
	ds_load_u8 v85, v5 offset:7552
	ds_load_u8 v93, v5 offset:7296
	v_perm_b32 v72, v76, v75, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v75, v80, v79, 0xc0c0004
	v_perm_b32 v76, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v20, v48, v20, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	ds_load_u8 v42, v5 offset:5376
	ds_load_u8 v43, v5 offset:5120
	ds_load_u8 v44, v5 offset:5888
	ds_load_u8 v45, v5 offset:5632
	ds_load_u8 v94, v5 offset:7040
	ds_load_u8 v95, v5 offset:6784
	ds_load_u8 v96, v5 offset:6528
	ds_load_u8 v97, v5 offset:6272
	v_lshl_or_b32 v74, v57, 16, v71
	v_lshl_or_b32 v73, v73, 16, v72
	v_lshl_or_b32 v72, v76, 16, v75
	v_lshl_or_b32 v71, v15, 16, v20
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v47, v82, v81, 0xc0c0004
	ds_load_u8 v68, v5 offset:4352
	ds_load_u8 v69, v5 offset:4096
	ds_load_u8 v70, v5 offset:4864
	ds_load_u8 v81, v5 offset:4608
	ds_load_u8 v82, v6 offset:720
	ds_load_u8 v98, v6 offset:736
	ds_load_u8 v99, v6 offset:704
	ds_load_u8 v100, v5 offset:6016
	ds_load_u8 v101, v5 offset:5760
	ds_load_u8 v102, v5 offset:5504
	ds_load_u8 v103, v5 offset:5248
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v16, v84, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[71:74], v[1:4], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v15, v93, v85, 0xc0c0004
	v_perm_b32 v72, v130, v129, 0xc0c0004
	v_perm_b32 v73, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v104, v43, v42, 0xc0c0004
	v_lshl_or_b32 v43, v41, 16, v40
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v6 offset:656
	ds_load_u8 v106, v6 offset:688
	ds_load_u8 v107, v6 offset:672
	ds_load_u8 v108, v6 offset:640
	ds_load_u8 v109, v5 offset:4992
	ds_load_u8 v110, v5 offset:4736
	ds_load_u8 v111, v5 offset:4480
	ds_load_u8 v112, v5 offset:4224
	v_lshl_or_b32 v42, v47, 16, v46
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v20, v97, v96, 0xc0c0004
	v_lshl_or_b32 v41, v44, 16, v104
	ds_load_u8 v44, v6 offset:624
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v81, v70, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v46, v99, v82, 0xc0c0004
	v_perm_b32 v47, v98, v105, 0xc0c0004
	ds_load_u8 v70, v6 offset:784
	ds_load_u8 v81, v6 offset:848
	ds_load_u8 v82, v6 offset:864
	ds_load_u8 v98, v6 offset:832
	ds_load_u8 v99, v6 offset:816
	v_perm_b32 v48, v95, v94, 0xc0c0004
	v_lshl_or_b32 v40, v69, 16, v68
	ds_load_u8 v68, v6 offset:800
	ds_load_u8 v69, v6 offset:768
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v103, v102, 0xc0c0004
	v_perm_b32 v75, v101, v100, 0xc0c0004
	v_lshl_or_b32 v4, v16, 16, v15
	v_wmma_i32_16x16x16_iu8 v[59:66], v[40:43], v[7:10], v[59:66] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v47, 16, v46
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v108, v45, 0xc0c0004
	ds_load_u8 v45, v5 offset:11520
	ds_load_u8 v46, v5 offset:11264
	ds_load_u8 v47, v5 offset:12032
	ds_load_u8 v104, v5 offset:11776
	v_perm_b32 v41, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v112, v111, 0xc0c0004
	v_perm_b32 v77, v110, v109, 0xc0c0004
	v_lshl_or_b32 v3, v48, 16, v20
	v_lshl_or_b32 v2, v75, 16, v57
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v44, v87, v44, 0xc0c0004
	v_perm_b32 v87, v92, v89, 0xc0c0004
	ds_load_u8 v89, v5 offset:10496
	ds_load_u8 v90, v5 offset:10240
	v_lshl_or_b32 v42, v41, 16, v40
	v_lshl_or_b32 v1, v77, 16, v76
	v_lshl_or_b32 v41, v44, 16, v86
	v_lshl_or_b32 v40, v88, 16, v87
	ds_load_u8 v44, v5 offset:11008
	ds_load_u8 v86, v5 offset:10752
	ds_load_u8 v87, v5 offset:9472
	ds_load_u8 v88, v5 offset:9216
	ds_load_u8 v91, v5 offset:12160
	ds_load_u8 v92, v5 offset:11904
	ds_load_u8 v105, v5 offset:11648
	ds_load_u8 v106, v5 offset:11392
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v68, v68, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[7:10], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v1, v73, 16, v72
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v104, v47, 0xc0c0004
	ds_load_u8 v47, v5 offset:9984
	ds_load_u8 v104, v5 offset:9728
	ds_load_u8 v107, v5 offset:11136
	ds_load_u8 v108, v5 offset:10880
	ds_load_u8 v113, v5 offset:10624
	ds_load_u8 v114, v5 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v86, v44, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v5 offset:8448
	ds_load_u8 v115, v5 offset:8192
	ds_load_u8 v116, v5 offset:8960
	ds_load_u8 v117, v5 offset:8704
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v6 offset:976
	ds_load_u8 v121, v6 offset:992
	ds_load_u8 v122, v6 offset:960
	ds_load_u8 v123, v6 offset:912
	ds_load_u8 v124, v6 offset:944
	ds_load_u8 v125, v6 offset:928
	ds_load_u8 v126, v6 offset:896
	ds_load_u8 v6, v6 offset:880
	ds_load_u8 v86, v5 offset:10112
	ds_load_u8 v118, v5 offset:9856
	ds_load_u8 v119, v5 offset:9600
	ds_load_u8 v120, v5 offset:9344
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v106, v105, 0xc0c0004
	v_perm_b32 v16, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v104, v104, v47, 0xc0c0004
	v_lshl_or_b32 v47, v46, 16, v45
	v_lshl_or_b32 v46, v44, 16, v89
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v48, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v114, v113, 0xc0c0004
	v_lshl_or_b32 v45, v104, 16, v87
	v_lshl_or_b32 v4, v16, 16, v15
	v_perm_b32 v15, v135, v134, 0xc0c0004
	v_perm_b32 v16, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v121, v11, 0xc0c0004
	v_perm_b32 v90, v115, v90, 0xc0c0004
	v_lshl_or_b32 v3, v48, 16, v20
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v118, v86, 0xc0c0004
	v_perm_b32 v6, v82, v6, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v120, v119, 0xc0c0004
	v_lshl_or_b32 v44, v115, 16, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v71, 16, v57
	v_wmma_i32_16x16x16_iu8 v[59:66], v[44:47], v[40:43], v[59:66] neg_lo:[1,1,0]
	v_perm_b32 v44, v122, v88, 0xc0c0004
	v_perm_b32 v45, v126, v123, 0xc0c0004
	v_perm_b32 v46, v125, v124, 0xc0c0004
	ds_load_u8 v87, v5 offset:15616
	ds_load_u8 v88, v5 offset:15360
	ds_load_u8 v89, v5 offset:16128
	ds_load_u8 v90, v5 offset:15872
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[40:43], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v11, 16, v44
	v_perm_b32 v11, v98, v81, 0xc0c0004
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v44, v69, v70, 0xc0c0004
	ds_load_u8 v45, v5 offset:14592
	ds_load_u8 v69, v5 offset:14336
	ds_load_u8 v70, v5 offset:15104
	ds_load_u8 v81, v5 offset:14848
	ds_load_u8 v82, v5 offset:13568
	ds_load_u8 v98, v5 offset:13312
	ds_load_u8 v99, v5 offset:14080
	ds_load_u8 v104, v5 offset:13824
	ds_load_u8 v115, v5 offset:16256
	ds_load_u8 v116, v5 offset:16000
	ds_load_u8 v117, v5 offset:15744
	ds_load_u8 v121, v5 offset:15488
	v_lshl_or_b32 v2, v16, 16, v15
	v_lshl_or_b32 v44, v68, 16, v44
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v69, v69, v45, 0xc0c0004
	v_lshl_or_b32 v45, v6, 16, v11
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v81, v70, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v88, v90, v89, 0xc0c0004
	ds_load_u8 v89, v5 offset:12544
	ds_load_u8 v90, v5 offset:12288
	ds_load_u8 v122, v5 offset:13056
	ds_load_u8 v123, v5 offset:12800
	ds_load_u8 v124, v5 offset:15232
	ds_load_u8 v125, v5 offset:14976
	ds_load_u8 v126, v5 offset:14720
	ds_load_u8 v131, v5 offset:14464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v82, v98, v82, 0xc0c0004
	v_lshl_or_b32 v69, v81, 16, v69
	ds_load_u8 v6, v5 offset:13184
	ds_load_u8 v11, v5 offset:12928
	ds_load_u8 v81, v5 offset:12672
	ds_load_u8 v5, v5 offset:12416
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v98, v104, v99, 0xc0c0004
	v_lshl_or_b32 v70, v88, 16, v87
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v121, v117, 0xc0c0004
	v_perm_b32 v8, v116, v115, 0xc0c0004
	v_lshl_or_b32 v68, v98, 16, v82
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v4, v8, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v82, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v87, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v131, v126, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v11, v6, 0xc0c0004
	v_lshl_or_b32 v67, v87, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v81, 0xc0c0004
	v_lshl_or_b32 v3, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[67:70], v[44:47], v[59:66] neg_lo:[1,1,0]
	v_lshl_or_b32 v1, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v40, v60
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[44:47], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v43, v63
	v_cvt_f32_i32_e32 v45, v64
	v_cvt_f32_i32_e32 v46, v65
	v_cvt_f32_i32_e32 v48, v66
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v44, v59
.LBB0_10:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s23, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s23, s4
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s26, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s4, 7
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s27, s11
	.loc	1 392 40 is_stmt 0              ; generate_amdgcn.py:392:40
	s_mul_i32 s5, s4, s35
	.loc	1 389 34 is_stmt 1              ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v1, v39, s4, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v2, v21, s5, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s4, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v3, 32, v14
	v_mov_b32_e32 v20, 0
	buffer_load_u16 v60, v1, s[8:11], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_and_b32_e32 v1, 28, v13
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v57, 0, v23
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or3_b32 v59, v12, v3, v1
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v47, 0, v59
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v47, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v57 offset:34816
	ds_load_b128 v[5:8], v57 offset:34832
	ds_load_b128 v[9:12], v57 offset:35328
	ds_load_b128 v[13:16], v57 offset:35344
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v62, s46, v17
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v17, v62 offset:240
	ds_load_u8 v18, v62 offset:208
	ds_load_u8 v20, v62 offset:224
	ds_load_u8 v63, v62 offset:192
	ds_load_u8 v64, v62 offset:144
	ds_load_u8 v65, v62 offset:160
	ds_load_u8 v66, v62 offset:128
	ds_load_u8 v67, v62 offset:176
	ds_load_u8 v68, v62 offset:112
	ds_load_u8 v69, v62 offset:80
	ds_load_u8 v70, v62 offset:96
	ds_load_u8 v71, v62 offset:64
	ds_load_u8 v72, v62 offset:16
	ds_load_u8 v73, v62 offset:32
	ds_load_u8 v74, v62
	ds_load_u8 v75, v62 offset:48
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v61, s45, v19
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v58, s46, v58
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v63, v18, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v19, v66, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v63, v65, v67, 0xc0c0004
	ds_load_u8 v64, v61 offset:3328
	ds_load_u8 v65, v61 offset:3072
	ds_load_u8 v66, v61 offset:3840
	ds_load_u8 v67, v61 offset:3584
	v_lshl_or_b32 v20, v17, 16, v18
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v18, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v71, v69, 0xc0c0004
	v_lshl_or_b32 v19, v63, 16, v19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v63, v74, v72, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v73, v75, 0xc0c0004
	ds_load_u8 v69, v61 offset:2304
	ds_load_u8 v70, v61 offset:2048
	ds_load_u8 v71, v61 offset:2816
	ds_load_u8 v72, v61 offset:2560
	ds_load_u8 v73, v61 offset:1280
	ds_load_u8 v74, v61 offset:1024
	ds_load_u8 v75, v61 offset:1792
	ds_load_u8 v76, v61 offset:1536
	ds_load_u8 v91, v61 offset:3968
	ds_load_u8 v95, v61 offset:3712
	ds_load_u8 v96, v61 offset:3456
	ds_load_u8 v97, v61 offset:3200
	v_lshl_or_b32 v18, v18, 16, v17
	v_lshl_or_b32 v17, v68, 16, v63
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_perm_b32 v65, v67, v66, 0xc0c0004
	ds_load_u8 v67, v61 offset:256
	ds_load_u8 v77, v61
	ds_load_u8 v78, v61 offset:768
	ds_load_u8 v79, v61 offset:512
	ds_load_u8 v98, v61 offset:2944
	ds_load_u8 v99, v61 offset:2688
	ds_load_u8 v100, v61 offset:2432
	ds_load_u8 v101, v61 offset:2176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v72, v76, v75, 0xc0c0004
	v_lshl_or_b32 v66, v65, 16, v64
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v95, v95, v91, 0xc0c0004
	v_lshl_or_b32 v65, v70, 16, v69
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_lshl_or_b32 v64, v72, 16, v71
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v77, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_lshl_or_b32 v98, v95, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v100, 0xc0c0004
	v_lshl_or_b32 v63, v67, 16, v63
	v_dual_mov_b32 v74, s19 :: v_dual_mov_b32 v73, s18
	ds_load_u8 v85, v62 offset:464
	ds_load_u8 v86, v62 offset:480
	ds_load_u8 v87, v62 offset:448
	ds_load_u8 v88, v62 offset:496
	ds_load_u8 v89, v62 offset:400
	ds_load_u8 v90, v62 offset:432
	ds_load_u8 v92, v62 offset:416
	ds_load_u8 v93, v62 offset:384
	ds_load_u8 v94, v62 offset:368
	ds_load_u8 v110, v62 offset:336
	ds_load_u8 v111, v62 offset:352
	ds_load_u8 v112, v62 offset:320
	ds_load_u8 v113, v62 offset:272
	ds_load_u8 v114, v62 offset:304
	ds_load_u8 v83, v62 offset:288
	ds_load_u8 v84, v62 offset:256
	v_dual_mov_b32 v72, s17 :: v_dual_mov_b32 v69, s14
	v_dual_mov_b32 v71, s16 :: v_dual_mov_b32 v70, s15
	v_dual_mov_b32 v67, s12 :: v_dual_mov_b32 v68, s13
	ds_load_u8 v134, v62 offset:752
	ds_load_u8 v58, v58
	ds_load_u8 v102, v61 offset:1920
	ds_load_u8 v103, v61 offset:1664
	ds_load_u8 v104, v61 offset:1408
	ds_load_u8 v105, v61 offset:1152
	ds_load_u8 v106, v61 offset:896
	ds_load_u8 v107, v61 offset:640
	ds_load_u8 v108, v61 offset:384
	ds_load_u8 v109, v61 offset:128
	v_wmma_i32_16x16x16_iu8 v[75:82], v[63:66], v[17:20], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v65, v93, v89, 0xc0c0004
	v_perm_b32 v89, v92, v90, 0xc0c0004
	ds_load_u8 v147, v61 offset:10112
	ds_load_u8 v148, v61 offset:9856
	ds_load_u8 v149, v61 offset:9600
	ds_load_u8 v150, v61 offset:9344
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v92, v111, v94, 0xc0c0004
	v_perm_b32 v64, v86, v88, 0xc0c0004
	v_perm_b32 v63, v87, v85, 0xc0c0004
	ds_load_u8 v85, v61 offset:7424
	ds_load_u8 v86, v61 offset:7168
	ds_load_u8 v88, v61 offset:7936
	ds_load_u8 v121, v61 offset:7680
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v84, v113, 0xc0c0004
	v_perm_b32 v83, v83, v114, 0xc0c0004
	v_lshl_or_b32 v65, v89, 16, v65
	v_lshl_or_b32 v66, v64, 16, v63
	v_perm_b32 v90, v112, v110, 0xc0c0004
	ds_load_u8 v93, v61 offset:6400
	ds_load_u8 v94, v61 offset:6144
	ds_load_u8 v110, v61 offset:6912
	ds_load_u8 v111, v61 offset:6656
	v_lshl_or_b32 v63, v83, 16, v84
	ds_load_u8 v87, v62 offset:592
	ds_load_u8 v115, v62 offset:608
	ds_load_u8 v116, v62 offset:576
	ds_load_u8 v117, v62 offset:528
	ds_load_u8 v118, v62 offset:560
	ds_load_u8 v119, v62 offset:544
	ds_load_u8 v120, v62 offset:512
	ds_load_u8 v112, v61 offset:8064
	ds_load_u8 v113, v61 offset:7808
	ds_load_u8 v114, v61 offset:7552
	ds_load_u8 v122, v61 offset:7296
	v_lshl_or_b32 v64, v92, 16, v90
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v100, v105, v104, 0xc0c0004
	v_perm_b32 v101, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v102, v109, v108, 0xc0c0004
	v_perm_b32 v103, v107, v106, 0xc0c0004
	v_lshl_or_b32 v97, v99, 16, v97
	v_lshl_or_b32 v96, v101, 16, v100
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v83, v86, v85, 0xc0c0004
	v_lshl_or_b32 v95, v103, 16, v102
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v84, v121, v88, 0xc0c0004
	ds_load_u8 v85, v61 offset:5376
	ds_load_u8 v86, v61 offset:5120
	ds_load_u8 v88, v61 offset:5888
	ds_load_u8 v89, v61 offset:5632
	ds_load_u8 v121, v61 offset:7040
	ds_load_u8 v123, v61 offset:6784
	ds_load_u8 v124, v61 offset:6528
	ds_load_u8 v125, v61 offset:6272
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v90, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v87, v116, v87, 0xc0c0004
	v_perm_b32 v92, v111, v110, 0xc0c0004
	ds_load_u8 v93, v61 offset:4352
	ds_load_u8 v94, v61 offset:4096
	ds_load_u8 v110, v61 offset:4864
	ds_load_u8 v111, v61 offset:4608
	ds_load_u8 v126, v62 offset:720
	ds_load_u8 v127, v62 offset:736
	ds_load_u8 v128, v62 offset:704
	ds_load_u8 v129, v61 offset:6016
	ds_load_u8 v130, v61 offset:5760
	ds_load_u8 v131, v61 offset:5504
	ds_load_u8 v132, v61 offset:5248
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v116, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v99, v122, v114, 0xc0c0004
	v_perm_b32 v100, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[95:98], v[17:20], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v133, v86, v85, 0xc0c0004
	v_lshl_or_b32 v86, v84, 16, v83
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v62 offset:656
	ds_load_u8 v135, v62 offset:688
	ds_load_u8 v136, v62 offset:672
	ds_load_u8 v137, v62 offset:640
	ds_load_u8 v138, v61 offset:4992
	ds_load_u8 v139, v61 offset:4736
	ds_load_u8 v140, v61 offset:4480
	ds_load_u8 v141, v61 offset:4224
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v94, v111, v110, 0xc0c0004
	v_lshl_or_b32 v85, v92, 16, v90
	v_lshl_or_b32 v84, v88, 16, v133
	ds_load_u8 v88, v62 offset:624
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v90, v128, v126, 0xc0c0004
	v_lshl_or_b32 v83, v94, 16, v93
	v_perm_b32 v94, v127, v134, 0xc0c0004
	ds_load_u8 v92, v62 offset:800
	ds_load_u8 v93, v62 offset:768
	ds_load_u8 v110, v62 offset:784
	ds_load_u8 v111, v62 offset:848
	ds_load_u8 v126, v62 offset:864
	ds_load_u8 v127, v62 offset:832
	ds_load_u8 v128, v62 offset:816
	v_perm_b32 v101, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[63:66], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v94, 16, v90
	v_perm_b32 v102, v123, v121, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v84, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v137, v89, 0xc0c0004
	ds_load_u8 v89, v61 offset:11520
	ds_load_u8 v90, v61 offset:11264
	ds_load_u8 v94, v61 offset:12032
	ds_load_u8 v133, v61 offset:11776
	v_perm_b32 v103, v132, v131, 0xc0c0004
	v_perm_b32 v104, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v141, v140, 0xc0c0004
	v_lshl_or_b32 v85, v84, 16, v83
	v_perm_b32 v106, v139, v138, 0xc0c0004
	v_lshl_or_b32 v20, v100, 16, v99
	v_lshl_or_b32 v19, v102, 16, v101
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v88, v115, v88, 0xc0c0004
	v_perm_b32 v115, v120, v117, 0xc0c0004
	ds_load_u8 v117, v61 offset:10496
	ds_load_u8 v118, v61 offset:10240
	v_lshl_or_b32 v18, v104, 16, v103
	v_lshl_or_b32 v17, v106, 16, v105
	v_lshl_or_b32 v84, v88, 16, v87
	v_lshl_or_b32 v83, v116, 16, v115
	ds_load_u8 v87, v61 offset:11008
	ds_load_u8 v88, v61 offset:10752
	ds_load_u8 v115, v61 offset:9472
	ds_load_u8 v116, v61 offset:9216
	ds_load_u8 v119, v61 offset:12160
	ds_load_u8 v120, v61 offset:11904
	ds_load_u8 v134, v61 offset:11648
	ds_load_u8 v135, v61 offset:11392
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v92, v128, 0xc0c0004
	v_perm_b32 v99, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v100, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v133, v94, 0xc0c0004
	ds_load_u8 v94, v61 offset:9984
	ds_load_u8 v133, v61 offset:9728
	ds_load_u8 v136, v61 offset:11136
	ds_load_u8 v137, v61 offset:10880
	ds_load_u8 v142, v61 offset:10624
	ds_load_u8 v143, v61 offset:10368
	v_wmma_i32_16x16x16_iu8 v[67:74], v[17:20], v[63:66], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v100, 16, v99
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v61 offset:8448
	ds_load_u8 v144, v61 offset:8192
	ds_load_u8 v145, v61 offset:8960
	ds_load_u8 v146, v61 offset:8704
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v88, v116, v115, 0xc0c0004
	ds_load_u8 v115, v62 offset:976
	ds_load_u8 v116, v62 offset:992
	ds_load_u8 v151, v62 offset:960
	ds_load_u8 v152, v62 offset:912
	ds_load_u8 v153, v62 offset:944
	ds_load_u8 v154, v62 offset:928
	ds_load_u8 v155, v62 offset:896
	ds_load_u8 v62, v62 offset:880
	v_lshl_or_b32 v89, v87, 16, v117
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v95, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v133, v94, 0xc0c0004
	ds_load_u8 v133, v61 offset:9088
	ds_load_u8 v156, v61 offset:8832
	ds_load_u8 v157, v61 offset:8576
	ds_load_u8 v158, v61 offset:8320
	v_perm_b32 v96, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v98, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v97, v143, v142, 0xc0c0004
	v_lshl_or_b32 v88, v94, 16, v88
	v_lshl_or_b32 v20, v96, 16, v95
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v19, v98, 16, v97
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v116, v58, 0xc0c0004
	v_perm_b32 v118, v144, v118, 0xc0c0004
	v_perm_b32 v144, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v62, v126, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v87, v144, 16, v118
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v156, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[87:90], v[83:86], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v87, v151, v115, 0xc0c0004
	v_perm_b32 v88, v155, v152, 0xc0c0004
	v_perm_b32 v89, v154, v153, 0xc0c0004
	ds_load_u8 v94, v61 offset:15616
	ds_load_u8 v115, v61 offset:15360
	ds_load_u8 v116, v61 offset:16128
	ds_load_u8 v117, v61 offset:15872
	v_lshl_or_b32 v17, v102, 16, v101
	v_lshl_or_b32 v90, v58, 16, v87
	v_perm_b32 v58, v127, v111, 0xc0c0004
	v_lshl_or_b32 v89, v89, 16, v88
	v_perm_b32 v87, v93, v110, 0xc0c0004
	ds_load_u8 v88, v61 offset:14592
	ds_load_u8 v93, v61 offset:14336
	ds_load_u8 v110, v61 offset:15104
	ds_load_u8 v111, v61 offset:14848
	ds_load_u8 v118, v61 offset:13568
	ds_load_u8 v126, v61 offset:13312
	ds_load_u8 v127, v61 offset:14080
	ds_load_u8 v128, v61 offset:13824
	ds_load_u8 v144, v61 offset:16256
	ds_load_u8 v145, v61 offset:16000
	ds_load_u8 v146, v61 offset:15744
	ds_load_u8 v151, v61 offset:15488
	v_wmma_i32_16x16x16_iu8 v[67:74], v[17:20], v[83:86], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v92, 16, v87
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v93, v88, 0xc0c0004
	v_lshl_or_b32 v88, v62, 16, v58
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v94, v115, v94, 0xc0c0004
	v_perm_b32 v115, v117, v116, 0xc0c0004
	ds_load_u8 v116, v61 offset:12544
	ds_load_u8 v117, v61 offset:12288
	ds_load_u8 v152, v61 offset:13056
	ds_load_u8 v153, v61 offset:12800
	ds_load_u8 v154, v61 offset:15232
	ds_load_u8 v155, v61 offset:14976
	ds_load_u8 v159, v61 offset:14720
	ds_load_u8 v160, v61 offset:14464
	ds_load_u8 v111, v61 offset:14208
	ds_load_u8 v161, v61 offset:13952
	ds_load_u8 v162, v61 offset:13696
	ds_load_u8 v163, v61 offset:13440
	v_lshl_or_b32 v93, v110, 16, v93
	ds_load_u8 v58, v61 offset:13184
	ds_load_u8 v62, v61 offset:12928
	ds_load_u8 v110, v61 offset:12672
	ds_load_u8 v61, v61 offset:12416
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v118, v126, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v126, v128, v127, 0xc0c0004
	v_lshl_or_b32 v94, v115, 16, v94
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v151, v146, 0xc0c0004
	v_perm_b32 v64, v145, v144, 0xc0c0004
	v_lshl_or_b32 v92, v126, 16, v118
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v20, v64, 16, v63
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v116, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v66, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v161, v111, 0xc0c0004
	v_perm_b32 v65, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v61, v110, 0xc0c0004
	v_lshl_or_b32 v91, v116, 16, v115
	v_lshl_or_b32 v19, v66, 16, v65
	v_lshl_or_b32 v18, v96, 16, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v17, v58, 16, v61
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[87:90], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[17:20], v[87:90], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v81
	v_cvt_f32_i32_e32 v66, v82
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
.LBB0_12:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s1, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s26, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s4, s4, 25
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s27, s11
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s1, s1, s4
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mad_u64_u32 v[75:76], null, s22, s35, v[21:22]
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s1, s1, 7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v58, 0x404, v59, 0
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s1, s0
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s1, s35
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v39, s1, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v19, v21, s0, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s0, -1, 0
	v_mov_b16_e32 v39.l, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v39.h, v60.l
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v21, 7, v0
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v16, v16, v39
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v14, v14, v39
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v0, 0x2040, v0
	v_lshl_or_b32 v23, v21, 2, v23
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v10, v10, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v16, v16, v56, v31
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v23, v23, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v15, v15, v55, v38
	v_fma_f32 v14, v14, v54, v37
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v60, 0x808, v59, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v16, v31, v16, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v21, v21, 10, v23
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v12, v12, v39
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v31, v38, v15, s3
	v_cndmask_b32_e64 v37, v37, v14, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v76, 0xc0c, v59, 0
	v_xad_u32 v38, v21, 8, 0
	v_xad_u32 v77, 0x1010, v59, 0
	v_xad_u32 v78, 0x1414, v59, 0
	v_xad_u32 v79, 0x1818, v59, 0
	v_xad_u32 v80, 0x1c1c, v59, 0
	v_xad_u32 v81, 0x2040, v59, 0
	v_xad_u32 v82, 0x2444, v59, 0
	v_xad_u32 v83, 0x2848, v59, 0
	v_xad_u32 v84, 0x2c4c, v59, 0
	v_xad_u32 v85, 0x3050, v59, 0
	v_xad_u32 v86, 0x3454, v59, 0
	v_xad_u32 v87, 0x3858, v59, 0
	v_xad_u32 v59, 0x3c5c, v59, 0
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s35, 3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v88, v75, s35, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	v_add_lshl_u32 v89, v75, s1, 2
	s_and_b32 s21, s21, 0xffff
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s9, s35, 11
	s_mul_i32 s12, s35, 12
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v90, v75, s4, 2
	v_add_lshl_u32 v91, v75, s5, 2
	v_add_lshl_u32 v92, v75, s6, 2
	v_add_lshl_u32 v93, v75, s7, 2
	v_add_lshl_u32 v94, v75, s8, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s13, s35, 13
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v95, v75, s9, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s14, s35, 14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v96, v75, s12, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s35, 15
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v97, v75, s13, 2
	v_add_lshl_u32 v98, v75, s14, 2
	.loc	1 394 24 is_stmt 1              ; generate_amdgcn.py:394:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v4, v4, v39 :: v_dual_lshlrev_b32 v17, 16, v17
	v_mul_f32_e32 v3, v3, v39
	v_mul_f32_e32 v2, v2, v39
	v_mul_f32_e32 v1, v1, v39
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v7, v7, v39
	v_mul_f32_e32 v5, v5, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v4, v4, v42, v26
	v_fma_f32 v41, v3, v41, v25
	v_fma_f32 v40, v2, v40, v24
	v_fma_f32 v42, v1, v44, v22
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v47, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v57 offset:34816
	v_mul_f32_e32 v6, v6, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v7, v7, v46, v29
	v_fma_f32 v5, v5, v43, v27
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v26, v26, v4, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v10, v10, v50, v33
	v_fma_f32 v6, v6, v45, v28
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v29, v7, s3
	v_cndmask_b32_e64 v27, v27, v5, s3
	v_cndmask_b32_e64 v23, v25, v41, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v25, 0, v21
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v28, v28, v6, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[4:7], v57 offset:34832
	v_mul_f32_e32 v11, v11, v39
	v_mul_f32_e32 v9, v9, v39
	v_mul_f32_e32 v8, v8, v39
	v_mul_f32_e32 v13, v13, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v12, v12, v52, v35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v33, v33, v10, s3
	v_cndmask_b32_e64 v22, v22, v42, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v1, v1, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v8, v8, v48, v30
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v2, v2, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v13, v13, v53, v36
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v35, v35, v12, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v0, v0, v17
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v19, v30, v8, s3
	v_cndmask_b32_e64 v24, v24, v40, s3
	v_cndmask_b32_e64 v36, v36, v13, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[12:15], v57 offset:35344
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v39, 2, v75
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v3, v3, v17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v4, v4, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v11, v11, v51, v34
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v6, v6, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v9, v9, v49, v32
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v5, v5, v17
	v_mul_f32_e32 v7, v7, v17
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v34, v34, v11, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v0, v0, v18, v22
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v32, v32, v9, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[8:11], v57 offset:35328
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v1, v1, v20, v24
	v_fma_f32 v2, v2, v61, v23
	v_fma_f32 v3, v3, v62, v26
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v18, s44, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v4, v4, v63, v27
	v_fma_f32 v5, v5, v64, v28
	v_fma_f32 v6, v6, v65, v29
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v12, v12, v17
	v_mul_f32_e32 v13, v13, v17
	v_mul_f32_e32 v14, v14, v17
	v_mul_f32_e32 v15, v15, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v7, v7, v66, v19
	v_fma_f32 v12, v12, v71, v36
	v_fma_f32 v13, v13, v72, v37
	v_fma_f32 v14, v14, v73, v31
	v_fma_f32 v15, v15, v74, v16
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v22, v0, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v30, v21, 4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v24, v1, s2
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v17
	v_mul_f32_e32 v9, v9, v17
	v_mul_f32_e32 v10, v10, v17
	v_mul_f32_e32 v11, v11, v17
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v23, v2, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v8, v8, v67, v32
	v_fma_f32 v9, v9, v68, v33
	v_fma_f32 v10, v10, v69, v34
	v_fma_f32 v11, v11, v70, v35
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v40, v21, 12, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v8, v32, v8, s2
	v_cndmask_b32_e64 v9, v33, v9, s2
	v_cndmask_b32_e64 v10, v34, v10, s2
	v_cndmask_b32_e64 v3, v26, v3, s2
	v_cndmask_b32_e64 v11, v35, v11, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v41, v21, 16, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v4, v27, v4, s2
	v_cndmask_b32_e64 v5, v28, v5, s2
	v_cndmask_b32_e64 v6, v29, v6, s2
	v_cndmask_b32_e64 v7, v19, v7, s2
	v_cndmask_b32_e64 v12, v36, v12, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v42, v21, 20, 0
	v_xad_u32 v43, v21, 24, 0
	v_xad_u32 v21, v21, 28, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v37, v13, s2
	v_cndmask_b32_e64 v14, v31, v14, s2
	v_cndmask_b32_e64 v15, v16, v15, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b32 v25, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v30, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v38, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v40, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v41, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v42, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v43, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v21, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v47
	ds_load_b32 v1, v58
	ds_load_b32 v2, v60
	ds_load_b32 v3, v76
	ds_load_b32 v4, v77
	ds_load_b32 v5, v78
	ds_load_b32 v6, v79
	ds_load_b32 v7, v80
	ds_load_b32 v8, v81
	ds_load_b32 v9, v82
	ds_load_b32 v10, v83
	ds_load_b32 v11, v84
	ds_load_b32 v12, v85
	ds_load_b32 v13, v86
	ds_load_b32 v14, v87
	ds_load_b32 v15, v59
	v_lshl_add_u32 v16, s35, 3, v39
	v_add_nc_u32_e32 v17, s33, v39
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v39, s[20:23], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v88, s[20:23], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v16, s[20:23], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v89, s[20:23], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v90, s[20:23], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v91, s[20:23], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v92, s[20:23], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v18, s[20:23], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v93, s[20:23], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v94, s[20:23], 0 offen
	v_add_lshl_u32 v0, v75, s0, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v11, v95, s[20:23], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v12, v96, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v97, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v14, v98, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v15, v0, s[20:23], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 255
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14344
; TotalNumSgprs: 50
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	387                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
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
