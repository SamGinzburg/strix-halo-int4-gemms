	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v14, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v43, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 2, v14
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v3, s12, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s35, v1
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	s_mov_b32 s26, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s18, s19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v14, 4, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s35, 48, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v15, s35, 4, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s19, s13
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v16, s35, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s13, s18
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s14, s13, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s23, s13, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 0xff
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s33, s12
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s2, 24
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v40, v3, v2, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s12, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0xff
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s23, s12
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s22, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x1ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s12, v9
	v_add_nc_u32_e32 v3, s12, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s35, 8
	v_add_nc_u32_e32 v4, s12, v16
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s22, 0x100
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s12, v10
	s_add_i32 s12, s12, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s34, v40
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s12, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v3, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s12, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v29, s12, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v5, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v30, s12, v10
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b32 v37, v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[3:6], v2, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v7, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v8, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v11, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v12, s2
	v_cndmask_b32_e64 v7, 0x80000000, v13, s2
	v_cndmask_b32_e64 v8, 0x80000000, v29, s2
	v_cndmask_b32_e64 v11, 0x80000000, v30, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v12, v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v2, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v7, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v8, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v11, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v2, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, 0, v43
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x2ff
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v1
	v_and_b32_e32 v41, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v42, v2, v7
	v_lshlrev_b32_e32 v2, 3, v0
	v_add_nc_u32_e32 v7, 0, v42
	s_waitcnt vmcnt(9)
	ds_store_b32 v7, v37 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v8, v[3:6]
	s_waitcnt vmcnt(7)
	ds_store_b128 v8, v[17:20] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v8, v[21:24] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v8, v[25:28] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v7, v12 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[29:32] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[33:36] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[44:47] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[48:51] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v1, 0x70, v1
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v37, v14, 6, v3
	v_xor_b32_e32 v38, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v36, 48, v37
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow133
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v3, s33, v14
	v_and_b32_e32 v4, 0xf0, v0
	s_ashr_i32 s40, s13, 8
	v_or_b32_e32 v17, s23, v0
	v_lshlrev_b32_e32 v12, 1, v0
	v_mul_lo_u32 v18, v3, s40
	v_lshlrev_b32_e32 v11, 2, v4
	v_lshlrev_b32_e32 v13, 5, v0
	v_lshlrev_b32_e32 v20, 1, v4
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 48, v2
	v_and_b32_e32 v21, 28, v12
	v_mov_b32_e32 v19, 0
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v45, 0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v37, v14, 6, v1
	v_and_b32_e32 v1, 32, v13
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v24, 0
	v_xor_b32_e32 v38, 16, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v22, 0, v11, v1
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v36, 48, v37
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v8, s19
	v_add_nc_u32_e32 v44, v22, v21
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v35, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s44, s40, 3
	s_add_i32 s11, s34, 0x100
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_mov_b32 s43, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s41, 0, 0x8400
	s_add_i32 s42, 0, 0x4000
	s_add_i32 s44, s44, -3
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s15, s10
	s_mov_b32 s14, s22
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v46, s15, v37
	v_add_nc_u32_e32 v47, s15, v38
	v_add_nc_u32_e32 v48, s15, v39
	v_add_nc_u32_e32 v49, s15, v36
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s14, 31
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s17, s13, 8
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s15, s15, 24
	s_mov_b32 s16, s12
	s_add_i32 s14, s14, s15
	s_mov_b32 s22, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s11, s17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v50, s16, v41, v14
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s34, s35
	.loc	1 366 40 is_stmt 1              ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s23
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v78, v18, s14, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v79, v17, s15, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s40
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v51, s34, v40
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v52, s16, v9
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v122, v51, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v123, v79, s[36:39], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v124, v78, s[28:31], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v53, s16, v15
	v_add_nc_u32_e32 v54, s16, v16
	v_add_nc_u32_e32 v55, s16, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[78:81], v52, s[24:27], 0 offen
	buffer_load_b128 v[82:85], v53, s[24:27], 0 offen
	buffer_load_b128 v[86:89], v54, s[24:27], 0 offen
	buffer_load_b128 v[90:93], v55, s[24:27], 0 offen
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	ds_load_u8 v94, v50 offset:2560
	ds_load_u8 v95, v50 offset:2944
	ds_load_u8 v96, v50 offset:2688
	ds_load_u8 v97, v50 offset:2432
	ds_load_u8 v98, v50 offset:2176
	ds_load_u8 v99, v50 offset:1280
	ds_load_u8 v100, v50 offset:1024
	ds_load_u8 v101, v50 offset:1792
	ds_load_u8 v102, v50 offset:1536
	ds_load_u8 v103, v50 offset:1920
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[62:65], v46
	ds_load_b128 v[66:69], v47
	ds_load_b128 v[70:73], v48
	ds_load_b128 v[74:77], v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v50 offset:2304
	ds_load_u8 v47, v50 offset:2048
	ds_load_u8 v48, v50 offset:2816
	ds_load_u8 v49, v50 offset:3328
	ds_load_u8 v51, v50 offset:3072
	ds_load_u8 v56, v50 offset:3840
	ds_load_u8 v57, v50 offset:3584
	ds_load_u8 v58, v50 offset:3968
	ds_load_u8 v59, v50 offset:3712
	ds_load_u8 v60, v50 offset:3456
	ds_load_u8 v61, v50 offset:3200
	ds_load_u8 v52, v50 offset:1664
	ds_load_u8 v53, v50 offset:1408
	ds_load_u8 v54, v50 offset:1152
	ds_load_u8 v55, v50 offset:256
	ds_load_u8 v104, v50
	ds_load_u8 v105, v50 offset:768
	ds_load_u8 v106, v50 offset:512
	ds_load_u8 v107, v50 offset:896
	ds_load_u8 v108, v50 offset:640
	ds_load_u8 v109, v50 offset:384
	ds_load_u8 v110, v50 offset:128
	ds_load_u8 v111, v50 offset:7424
	ds_load_u8 v112, v50 offset:7168
	ds_load_u8 v113, v50 offset:7936
	ds_load_u8 v114, v50 offset:7680
	ds_load_u8 v115, v50 offset:8064
	ds_load_u8 v116, v50 offset:7808
	ds_load_u8 v117, v50 offset:7552
	ds_load_u8 v118, v50 offset:7296
	ds_load_u8 v119, v50 offset:6400
	ds_load_u8 v120, v50 offset:6144
	ds_load_u8 v121, v50 offset:6912
	ds_load_u8 v125, v50 offset:6656
	ds_load_u8 v126, v50 offset:7040
	ds_load_u8 v127, v50 offset:6784
	ds_load_u8 v128, v50 offset:6528
	ds_load_u8 v129, v50 offset:6272
	ds_load_u8 v130, v50 offset:5376
	ds_load_u8 v131, v50 offset:5120
	ds_load_u8 v132, v50 offset:5888
	ds_load_u8 v133, v50 offset:5632
	ds_load_u8 v134, v50 offset:6016
	ds_load_u8 v135, v50 offset:5760
	ds_load_u8 v136, v50 offset:5504
	ds_load_u8 v137, v50 offset:5248
	ds_load_u8 v138, v50 offset:4352
	ds_load_u8 v139, v50 offset:4096
	ds_load_u8 v140, v50 offset:4864
	ds_load_u8 v141, v50 offset:4608
	ds_load_u8 v142, v50 offset:4992
	ds_load_u8 v143, v50 offset:4736
	ds_load_u8 v144, v50 offset:4480
	ds_load_u8 v145, v50 offset:4224
	ds_load_u8 v146, v50 offset:11520
	ds_load_u8 v147, v50 offset:11264
	ds_load_u8 v148, v50 offset:12032
	ds_load_u8 v149, v50 offset:11776
	ds_load_u8 v150, v50 offset:12160
	ds_load_u8 v151, v50 offset:11904
	ds_load_u8 v152, v50 offset:11648
	ds_load_u8 v153, v50 offset:11392
	ds_load_u8 v154, v50 offset:10496
	ds_load_u8 v155, v50 offset:10240
	ds_load_u8 v156, v50 offset:11008
	ds_load_u8 v157, v50 offset:10752
	ds_load_u8 v158, v50 offset:11136
	ds_load_u8 v159, v50 offset:10880
	ds_load_u8 v160, v50 offset:10624
	ds_load_u8 v161, v50 offset:10368
	ds_load_u8 v162, v50 offset:9472
	ds_load_u8 v163, v50 offset:9216
	ds_load_u8 v164, v50 offset:9984
	ds_load_u8 v165, v50 offset:9728
	ds_load_u8 v166, v50 offset:10112
	ds_load_u8 v167, v50 offset:9856
	ds_load_u8 v168, v50 offset:9600
	ds_load_u8 v169, v50 offset:9344
	ds_load_u8 v170, v50 offset:8448
	ds_load_u8 v171, v50 offset:8192
	ds_load_u8 v172, v50 offset:8960
	ds_load_u8 v173, v50 offset:8704
	ds_load_u8 v174, v50 offset:9088
	ds_load_u8 v175, v50 offset:8832
	ds_load_u8 v176, v50 offset:8576
	ds_load_u8 v177, v50 offset:8320
	ds_load_u8 v178, v50 offset:15616
	ds_load_u8 v179, v50 offset:15360
	ds_load_u8 v180, v50 offset:16128
	ds_load_u8 v181, v50 offset:15872
	ds_load_u8 v182, v50 offset:16256
	ds_load_u8 v183, v50 offset:16000
	ds_load_u8 v184, v50 offset:15744
	ds_load_u8 v185, v50 offset:15488
	ds_load_u8 v186, v50 offset:14592
	ds_load_u8 v187, v50 offset:14336
	ds_load_u8 v188, v50 offset:15104
	ds_load_u8 v189, v50 offset:14848
	ds_load_u8 v190, v50 offset:15232
	ds_load_u8 v191, v50 offset:14976
	ds_load_u8 v192, v50 offset:14720
	ds_load_u8 v193, v50 offset:14464
	ds_load_u8 v194, v50 offset:13568
	ds_load_u8 v195, v50 offset:13312
	ds_load_u8 v196, v50 offset:14080
	ds_load_u8 v197, v50 offset:13824
	ds_load_u8 v198, v50 offset:14208
	ds_load_u8 v199, v50 offset:13952
	ds_load_u8 v200, v50 offset:13696
	ds_load_u8 v201, v50 offset:13440
	ds_load_u8 v202, v50 offset:12544
	ds_load_u8 v203, v50 offset:12288
	ds_load_u8 v204, v50 offset:13056
	ds_load_u8 v205, v50 offset:12800
	ds_load_u8 v206, v50 offset:13184
	ds_load_u8 v207, v50 offset:12928
	ds_load_u8 v208, v50 offset:12672
	ds_load_u8 v50, v50 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v110, v110, v109, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v116, v129, v128, 0xc0c0004
	v_perm_b32 v118, v127, v126, 0xc0c0004
	v_perm_b32 v126, v137, v136, 0xc0c0004
	v_perm_b32 v127, v135, v134, 0xc0c0004
	v_perm_b32 v128, v145, v144, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_perm_b32 v47, v94, v48, 0xc0c0004
	v_perm_b32 v129, v143, v142, 0xc0c0004
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v134, v153, v152, 0xc0c0004
	v_perm_b32 v51, v57, v56, 0xc0c0004
	v_perm_b32 v48, v100, v99, 0xc0c0004
	v_perm_b32 v94, v102, v101, 0xc0c0004
	v_perm_b32 v99, v104, v55, 0xc0c0004
	v_perm_b32 v100, v106, v105, 0xc0c0004
	v_perm_b32 v101, v112, v111, 0xc0c0004
	v_perm_b32 v102, v114, v113, 0xc0c0004
	v_perm_b32 v104, v120, v119, 0xc0c0004
	v_perm_b32 v105, v125, v121, 0xc0c0004
	v_perm_b32 v106, v131, v130, 0xc0c0004
	v_perm_b32 v111, v133, v132, 0xc0c0004
	v_perm_b32 v112, v139, v138, 0xc0c0004
	v_perm_b32 v113, v141, v140, 0xc0c0004
	v_perm_b32 v119, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v121, v157, v156, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v59, v98, v97, 0xc0c0004
	v_perm_b32 v61, v96, v95, 0xc0c0004
	v_perm_b32 v52, v52, v103, 0xc0c0004
	v_perm_b32 v149, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v208, 0xc0c0004
	v_perm_b32 v156, v207, v206, 0xc0c0004
	v_lshl_or_b32 v57, v51, 16, v49
	v_lshl_or_b32 v56, v47, 16, v46
	v_lshl_or_b32 v55, v94, 16, v48
	v_lshl_or_b32 v54, v100, 16, v99
	v_perm_b32 v114, v147, v146, 0xc0c0004
	v_perm_b32 v120, v155, v154, 0xc0c0004
	v_perm_b32 v125, v163, v162, 0xc0c0004
	v_perm_b32 v130, v165, v164, 0xc0c0004
	v_perm_b32 v131, v171, v170, 0xc0c0004
	v_perm_b32 v132, v173, v172, 0xc0c0004
	v_lshl_or_b32 v97, v102, 16, v101
	v_lshl_or_b32 v96, v105, 16, v104
	v_lshl_or_b32 v95, v111, 16, v106
	v_lshl_or_b32 v94, v113, 16, v112
	v_lshl_or_b32 v109, v58, 16, v60
	v_lshl_or_b32 v108, v61, 16, v59
	v_lshl_or_b32 v107, v52, 16, v53
	v_lshl_or_b32 v106, v149, 16, v110
	v_lshl_or_b32 v112, v118, 16, v116
	v_lshl_or_b32 v118, v156, 16, v50
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v133, v179, v178, 0xc0c0004
	v_perm_b32 v138, v181, v180, 0xc0c0004
	v_perm_b32 v139, v187, v186, 0xc0c0004
	v_perm_b32 v140, v189, v188, 0xc0c0004
	v_perm_b32 v141, v195, v194, 0xc0c0004
	v_perm_b32 v146, v197, v196, 0xc0c0004
	v_perm_b32 v147, v203, v202, 0xc0c0004
	v_perm_b32 v148, v205, v204, 0xc0c0004
	v_perm_b32 v135, v151, v150, 0xc0c0004
	v_perm_b32 v136, v161, v160, 0xc0c0004
	v_perm_b32 v137, v159, v158, 0xc0c0004
	v_perm_b32 v142, v169, v168, 0xc0c0004
	v_perm_b32 v143, v167, v166, 0xc0c0004
	v_perm_b32 v144, v177, v176, 0xc0c0004
	v_perm_b32 v145, v175, v174, 0xc0c0004
	v_lshl_or_b32 v101, v119, 16, v114
	v_lshl_or_b32 v100, v121, 16, v120
	v_lshl_or_b32 v99, v130, 16, v125
	v_lshl_or_b32 v98, v132, 16, v131
	v_lshl_or_b32 v113, v115, 16, v117
	v_lshl_or_b32 v111, v127, 16, v126
	v_lshl_or_b32 v110, v129, 16, v128
	v_wmma_i32_16x16x16_iu8 v[54:61], v[106:109], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[94:97], v[66:69], v[46:53] neg_lo:[1,1,0]
	v_perm_b32 v150, v185, v184, 0xc0c0004
	v_perm_b32 v151, v183, v182, 0xc0c0004
	v_perm_b32 v152, v193, v192, 0xc0c0004
	v_perm_b32 v153, v191, v190, 0xc0c0004
	v_perm_b32 v154, v201, v200, 0xc0c0004
	v_perm_b32 v155, v199, v198, 0xc0c0004
	v_lshl_or_b32 v105, v138, 16, v133
	v_lshl_or_b32 v104, v140, 16, v139
	v_lshl_or_b32 v103, v146, 16, v141
	v_lshl_or_b32 v102, v148, 16, v147
	v_lshl_or_b32 v117, v135, 16, v134
	v_lshl_or_b32 v116, v137, 16, v136
	v_lshl_or_b32 v115, v143, 16, v142
	v_lshl_or_b32 v114, v145, 16, v144
	v_wmma_i32_16x16x16_iu8 v[54:61], v[110:113], v[66:69], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[98:101], v[70:73], v[46:53] neg_lo:[1,1,0]
	v_lshl_or_b32 v121, v151, 16, v150
	v_lshl_or_b32 v120, v153, 16, v152
	v_lshl_or_b32 v119, v155, 16, v154
	v_wmma_i32_16x16x16_iu8 v[54:61], v[114:117], v[70:73], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[102:105], v[74:77], v[46:53] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s43, 1
	s_mov_b32 s12, s42
	s_cmp_lt_i32 s14, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[54:61], v[118:121], v[74:77], v[54:61] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v63, v47
	v_cvt_f32_i32_e32 v64, v48
	v_cvt_f32_i32_e32 v65, v49
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v74, v58
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v76, v60
	v_cvt_f32_i32_e32 v77, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s43, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s16, s43, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s15, s43, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s42, s16, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s15, s15, 0
	s_mov_b32 s10, s41
	s_add_i32 s41, s15, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s44
	s_mov_b32 s13, s14
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v94, 16, v124
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v46, 16, v123
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v44, v46 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v45 offset:34816
	ds_load_b128 v[50:53], v45 offset:34832
	ds_load_b128 v[54:57], v45 offset:35328
	ds_load_b128 v[58:61], v45 offset:35344
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v46, v46, v94
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v19, v46, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v57, v57, v94 :: v_dual_add_nc_u32 v210, s42, v43
	v_mul_f32_e32 v55, v55, v94
	v_mul_f32_e32 v47, v47, v94
	v_mul_f32_e32 v48, v48, v94
	v_mul_f32_e32 v49, v49, v94
	v_mul_f32_e32 v50, v50, v94
	v_mul_f32_e32 v51, v51, v94
	v_dual_mul_f32 v52, v52, v94 :: v_dual_fmac_f32 v21, v47, v63
	v_mul_f32_e32 v53, v53, v94
	v_dual_mul_f32 v54, v54, v94 :: v_dual_fmac_f32 v23, v49, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v56, v56, v94 :: v_dual_fmac_f32 v25, v51, v67
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v58, v58, v94 :: v_dual_fmac_f32 v27, v53, v69
	v_dual_mul_f32 v59, v59, v94 :: v_dual_fmac_f32 v32, v57, v73
	v_mul_f32_e32 v60, v60, v94
	v_mul_f32_e32 v61, v61, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v30, v55, v71 :: v_dual_add_nc_u32 v209, s15, v42
	v_fmac_f32_e32 v22, v48, v64
	v_dual_fmac_f32 v24, v50, v66 :: v_dual_fmac_f32 v31, v56, v72
	v_dual_fmac_f32 v26, v52, v68 :: v_dual_fmac_f32 v33, v58, v74
	v_dual_fmac_f32 v34, v59, v75 :: v_dual_fmac_f32 v29, v54, v70
	v_dual_fmac_f32 v28, v61, v77 :: v_dual_fmac_f32 v35, v60, v76
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v209, v122 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v210, v[78:81]
	s_waitcnt vmcnt(2)
	ds_store_b128 v210, v[82:85] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v210, v[86:89] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v210, v[90:93] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v41
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s41, 0, 0x8400
	s_add_i32 s42, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v61, v1, v14
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v58, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s12, v61
	s_mov_b32 s12, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v73, s10, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s10, v38
	v_add_nc_u32_e32 v2, s10, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v9 offset:3328
	ds_load_u8 v4, v9 offset:3072
	ds_load_u8 v5, v9 offset:3840
	ds_load_u8 v6, v9 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[51:54], v1
	ds_load_b128 v[55:58], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v9 offset:2304
	ds_load_u8 v2, v9 offset:2048
	ds_load_u8 v7, v9 offset:2816
	ds_load_u8 v8, v9 offset:2560
	ds_load_u8 v14, v9 offset:1280
	ds_load_u8 v15, v9 offset:1024
	ds_load_u8 v16, v9 offset:1792
	ds_load_u8 v41, v9 offset:1536
	ds_load_u8 v42, v9 offset:256
	ds_load_u8 v43, v9
	ds_load_u8 v44, v9 offset:768
	ds_load_u8 v45, v9 offset:512
	ds_load_u8 v59, v9 offset:3968
	ds_load_u8 v60, v9 offset:3712
	ds_load_u8 v74, v9 offset:3456
	ds_load_u8 v75, v9 offset:3200
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s10, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v65, v4, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v41, v16, 0xc0c0004
	v_lshl_or_b32 v64, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v45, v44, 0xc0c0004
	v_lshl_or_b32 v63, v6, 16, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v62, v8, 16, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	ds_load_u8 v42, v9 offset:7424
	ds_load_u8 v70, v9 offset:7168
	ds_load_u8 v71, v9 offset:7936
	ds_load_u8 v72, v9 offset:7680
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[66:69], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v76, v9 offset:2944
	ds_load_u8 v77, v9 offset:2688
	ds_load_u8 v78, v9 offset:2432
	ds_load_u8 v79, v9 offset:2176
	ds_load_u8 v80, v9 offset:1920
	ds_load_u8 v81, v9 offset:1664
	ds_load_u8 v82, v9 offset:1408
	ds_load_u8 v83, v9 offset:1152
	ds_load_u8 v14, v9 offset:896
	ds_load_u8 v15, v9 offset:640
	ds_load_u8 v16, v9 offset:384
	ds_load_u8 v41, v9 offset:128
	v_wmma_i32_16x16x16_iu8 v[43:50], v[62:65], v[55:58], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v9 offset:6400
	ds_load_u8 v62, v9 offset:6144
	ds_load_u8 v63, v9 offset:6912
	ds_load_u8 v64, v9 offset:6656
	ds_load_u8 v65, v9 offset:5376
	ds_load_u8 v84, v9 offset:5120
	ds_load_u8 v85, v9 offset:5888
	ds_load_u8 v86, v9 offset:5632
	ds_load_u8 v87, v9 offset:8064
	ds_load_u8 v88, v9 offset:7808
	ds_load_u8 v89, v9 offset:7552
	ds_load_u8 v90, v9 offset:7296
	ds_load_u8 v97, v9 offset:6016
	ds_load_u8 v98, v9 offset:5760
	ds_load_u8 v99, v9 offset:5504
	ds_load_u8 v100, v9 offset:5248
	ds_load_u8 v117, v9 offset:10112
	ds_load_u8 v118, v9 offset:9856
	ds_load_u8 v119, v9 offset:9600
	ds_load_u8 v120, v9 offset:9344
	ds_load_u8 v133, v9 offset:14208
	ds_load_u8 v134, v9 offset:13952
	ds_load_u8 v135, v9 offset:13696
	ds_load_u8 v136, v9 offset:13440
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v42, v70, v42, 0xc0c0004
	ds_load_u8 v70, v9 offset:4352
	ds_load_u8 v91, v9 offset:4096
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v9 offset:4864
	ds_load_u8 v92, v9 offset:4608
	ds_load_u8 v93, v9 offset:7040
	ds_load_u8 v94, v9 offset:6784
	ds_load_u8 v95, v9 offset:6528
	ds_load_u8 v96, v9 offset:6272
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v62, v10, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v62, v64, v63, 0xc0c0004
	v_perm_b32 v75, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v63, v84, v65, 0xc0c0004
	v_lshl_or_b32 v65, v71, 16, v42
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v10
	ds_load_u8 v85, v9 offset:4992
	ds_load_u8 v86, v9 offset:4736
	ds_load_u8 v101, v9 offset:4480
	ds_load_u8 v102, v9 offset:4224
	v_perm_b32 v60, v79, v78, 0xc0c0004
	v_perm_b32 v78, v83, v82, 0xc0c0004
	v_lshl_or_b32 v63, v84, 16, v63
	v_perm_b32 v79, v81, v80, 0xc0c0004
	v_perm_b32 v16, v41, v16, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v92, v72, 0xc0c0004
	ds_load_u8 v92, v9 offset:12032
	ds_load_u8 v104, v9 offset:11776
	v_perm_b32 v70, v91, v70, 0xc0c0004
	ds_load_u8 v91, v9 offset:11520
	ds_load_u8 v103, v9 offset:11264
	v_lshl_or_b32 v77, v59, 16, v74
	v_lshl_or_b32 v76, v75, 16, v60
	v_lshl_or_b32 v75, v79, 16, v78
	v_lshl_or_b32 v62, v72, 16, v70
	ds_load_u8 v10, v9 offset:10496
	ds_load_u8 v42, v9 offset:10240
	ds_load_u8 v70, v9 offset:11008
	ds_load_u8 v71, v9 offset:10752
	ds_load_u8 v72, v9 offset:9472
	ds_load_u8 v84, v9 offset:9216
	ds_load_u8 v105, v9 offset:9984
	ds_load_u8 v106, v9 offset:9728
	ds_load_u8 v107, v9 offset:12160
	ds_load_u8 v108, v9 offset:11904
	ds_load_u8 v109, v9 offset:11648
	ds_load_u8 v110, v9 offset:11392
	v_lshl_or_b32 v74, v14, 16, v16
	v_perm_b32 v14, v90, v89, 0xc0c0004
	v_perm_b32 v15, v88, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[62:65], v[51:54], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v96, v95, 0xc0c0004
	v_perm_b32 v41, v94, v93, 0xc0c0004
	v_perm_b32 v59, v100, v99, 0xc0c0004
	v_perm_b32 v60, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v78, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v42, v10, 0xc0c0004
	v_perm_b32 v79, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v71, v70, 0xc0c0004
	v_perm_b32 v92, v104, v92, 0xc0c0004
	ds_load_u8 v104, v9 offset:8960
	ds_load_u8 v112, v9 offset:8704
	ds_load_u8 v113, v9 offset:11136
	ds_load_u8 v114, v9 offset:10880
	ds_load_u8 v115, v9 offset:10624
	ds_load_u8 v116, v9 offset:10368
	v_perm_b32 v91, v103, v91, 0xc0c0004
	ds_load_u8 v103, v9 offset:8448
	ds_load_u8 v111, v9 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v70, v84, v72, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v71, v106, v105, 0xc0c0004
	v_lshl_or_b32 v64, v42, 16, v10
	v_lshl_or_b32 v65, v92, 16, v91
	ds_load_u8 v84, v9 offset:9088
	ds_load_u8 v105, v9 offset:8832
	ds_load_u8 v106, v9 offset:8576
	ds_load_u8 v121, v9 offset:8320
	v_wmma_i32_16x16x16_iu8 v[1:8], v[74:77], v[55:58], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v71, 16, v70
	v_lshl_or_b32 v58, v15, 16, v14
	v_lshl_or_b32 v57, v41, 16, v16
	v_lshl_or_b32 v56, v60, 16, v59
	v_lshl_or_b32 v55, v79, 16, v78
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v110, v109, 0xc0c0004
	v_perm_b32 v15, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v104, v112, v104, 0xc0c0004
	v_perm_b32 v59, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v114, v113, 0xc0c0004
	v_perm_b32 v60, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v116, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[55:58], v[51:54], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v111, v103, 0xc0c0004
	ds_load_u8 v103, v9 offset:15616
	ds_load_u8 v111, v9 offset:15360
	ds_load_u8 v122, v9 offset:16128
	ds_load_u8 v123, v9 offset:15872
	v_lshl_or_b32 v54, v15, 16, v14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v105, v84, 0xc0c0004
	v_lshl_or_b32 v53, v41, 16, v16
	v_lshl_or_b32 v62, v104, 16, v72
	ds_load_u8 v10, v9 offset:14592
	ds_load_u8 v42, v9 offset:14336
	ds_load_u8 v70, v9 offset:15104
	ds_load_u8 v71, v9 offset:14848
	ds_load_u8 v72, v9 offset:13568
	ds_load_u8 v91, v9 offset:13312
	ds_load_u8 v92, v9 offset:14080
	ds_load_u8 v104, v9 offset:13824
	ds_load_u8 v112, v9 offset:16256
	ds_load_u8 v124, v9 offset:16000
	ds_load_u8 v125, v9 offset:15744
	ds_load_u8 v126, v9 offset:15488
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v74, v121, v106, 0xc0c0004
	v_lshl_or_b32 v52, v60, 16, v59
	v_perm_b32 v55, v136, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[62:65], v[66:69], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v56, v134, v133, 0xc0c0004
	v_lshl_or_b32 v51, v75, 16, v74
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v42, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[51:54], v[66:69], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v71, v70, 0xc0c0004
	v_perm_b32 v103, v111, v103, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v91, v72, 0xc0c0004
	v_perm_b32 v111, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v104, v92, 0xc0c0004
	ds_load_u8 v122, v9 offset:12544
	ds_load_u8 v123, v9 offset:12288
	ds_load_u8 v127, v9 offset:13056
	ds_load_u8 v128, v9 offset:12800
	ds_load_u8 v129, v9 offset:15232
	ds_load_u8 v130, v9 offset:14976
	ds_load_u8 v131, v9 offset:14720
	ds_load_u8 v132, v9 offset:14464
	v_lshl_or_b32 v64, v42, 16, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[70:73], v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v14, v126, v125, 0xc0c0004
	v_lshl_or_b32 v63, v92, 16, v91
	ds_load_u8 v10, v9 offset:13184
	ds_load_u8 v42, v9 offset:12928
	ds_load_u8 v91, v9 offset:12672
	ds_load_u8 v9, v9 offset:12416
	v_perm_b32 v15, v124, v112, 0xc0c0004
	v_lshl_or_b32 v65, v111, 16, v103
	v_lshl_or_b32 v52, v56, 16, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v54, v15, 16, v14
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v62, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v92, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v41, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v16, v132, v131, 0xc0c0004
	v_lshl_or_b32 v62, v92, 16, v62
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v42, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v91, 0xc0c0004
	v_lshl_or_b32 v53, v41, 16, v16
	v_wmma_i32_16x16x16_iu8 v[43:50], v[62:65], v[70:73], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v51, v10, 16, v9
	v_cvt_f32_i32_e32 v42, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[51:54], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v1
	v_cvt_f32_i32_e32 v52, v2
	v_cvt_f32_i32_e32 v53, v3
	v_cvt_f32_i32_e32 v54, v4
	v_cvt_f32_i32_e32 v55, v5
	v_cvt_f32_i32_e32 v56, v6
	v_cvt_f32_i32_e32 v57, v7
	v_cvt_f32_i32_e32 v58, v8
	v_cvt_f32_i32_e32 v47, v43
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v18, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v17, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v3, 32, v13
	v_mov_b32_e32 v62, 0
	buffer_load_u16 v60, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v1, 28, v12
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v59, 0, v20
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or3_b32 v41, v11, v3, v1
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v43, 0, v41
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v75, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v43, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v59 offset:34816
	ds_load_b128 v[5:8], v59 offset:34832
	ds_load_b128 v[9:12], v59 offset:35328
	ds_load_b128 v[13:16], v59 offset:35344
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v36, s41, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v93, s42, v61
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v38, s41, v38
	v_add_nc_u32_e32 v62, s41, v37
	v_add_nc_u32_e32 v61, s41, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v63, v93 offset:3328
	ds_load_u8 v64, v93 offset:3072
	ds_load_u8 v65, v93 offset:3840
	ds_load_u8 v66, v93 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[37:40], v38
	ds_load_b128 v[77:80], v62
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v62, v93 offset:2304
	ds_load_u8 v67, v93 offset:2048
	ds_load_u8 v68, v93 offset:2816
	ds_load_u8 v69, v93 offset:2560
	ds_load_u8 v70, v93 offset:1280
	ds_load_u8 v71, v93 offset:1024
	ds_load_u8 v72, v93 offset:1792
	ds_load_u8 v73, v93 offset:1536
	ds_load_u8 v74, v93 offset:256
	ds_load_u8 v75, v93
	ds_load_u8 v76, v93 offset:768
	ds_load_u8 v81, v93 offset:512
	ds_load_u8 v94, v93 offset:3968
	ds_load_u8 v95, v93 offset:3712
	ds_load_u8 v96, v93 offset:3456
	ds_load_u8 v97, v93 offset:3200
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v64, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v62, v67, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v84, v64, 16, v63
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v66, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v73, v72, 0xc0c0004
	v_lshl_or_b32 v83, v65, 16, v62
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v81, v76, 0xc0c0004
	v_lshl_or_b32 v82, v67, 16, v66
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v81, v69, 16, v68
	v_mov_b32_e32 v76, s19
	ds_load_u8 v89, v93 offset:7424
	ds_load_u8 v90, v93 offset:7168
	ds_load_u8 v91, v93 offset:7936
	ds_load_u8 v92, v93 offset:7680
	v_dual_mov_b32 v75, s18 :: v_dual_mov_b32 v74, s17
	v_dual_mov_b32 v73, s16 :: v_dual_mov_b32 v72, s15
	v_dual_mov_b32 v71, s14 :: v_dual_mov_b32 v70, s13
	v_mov_b32_e32 v69, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[85:88], v61
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v93 offset:2944
	ds_load_u8 v99, v93 offset:2688
	ds_load_u8 v100, v93 offset:2432
	ds_load_u8 v101, v93 offset:2176
	ds_load_u8 v102, v93 offset:1920
	ds_load_u8 v103, v93 offset:1664
	ds_load_u8 v104, v93 offset:1408
	ds_load_u8 v105, v93 offset:1152
	ds_load_u8 v106, v93 offset:896
	ds_load_u8 v107, v93 offset:640
	ds_load_u8 v108, v93 offset:384
	ds_load_u8 v109, v93 offset:128
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[77:80], v[69:76] neg_lo:[1,1,0]
	ds_load_u8 v81, v93 offset:6400
	ds_load_u8 v82, v93 offset:6144
	ds_load_u8 v83, v93 offset:6912
	ds_load_u8 v84, v93 offset:6656
	ds_load_u8 v110, v93 offset:5376
	ds_load_u8 v111, v93 offset:5120
	ds_load_u8 v112, v93 offset:5888
	ds_load_u8 v113, v93 offset:5632
	ds_load_u8 v114, v93 offset:8064
	ds_load_u8 v115, v93 offset:7808
	ds_load_u8 v116, v93 offset:7552
	ds_load_u8 v117, v93 offset:7296
	ds_load_u8 v124, v93 offset:6016
	ds_load_u8 v125, v93 offset:5760
	ds_load_u8 v126, v93 offset:5504
	ds_load_u8 v127, v93 offset:5248
	ds_load_u8 v144, v93 offset:10112
	ds_load_u8 v145, v93 offset:9856
	ds_load_u8 v146, v93 offset:9600
	ds_load_u8 v147, v93 offset:9344
	ds_load_u8 v162, v93 offset:14208
	ds_load_u8 v163, v93 offset:13952
	ds_load_u8 v164, v93 offset:13696
	ds_load_u8 v165, v93 offset:13440
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v93 offset:4352
	ds_load_u8 v118, v93 offset:4096
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v93 offset:4864
	ds_load_u8 v119, v93 offset:4608
	ds_load_u8 v120, v93 offset:7040
	ds_load_u8 v121, v93 offset:6784
	ds_load_u8 v122, v93 offset:6528
	ds_load_u8 v123, v93 offset:6272
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	v_lshl_or_b32 v84, v91, 16, v89
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v95, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	v_lshl_or_b32 v83, v82, 16, v81
	ds_load_u8 v112, v93 offset:4992
	ds_load_u8 v113, v93 offset:4736
	ds_load_u8 v128, v93 offset:4480
	ds_load_u8 v129, v93 offset:4224
	v_perm_b32 v100, v109, v108, 0xc0c0004
	v_perm_b32 v101, v107, v106, 0xc0c0004
	v_lshl_or_b32 v82, v111, 16, v110
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v119, v92, 0xc0c0004
	ds_load_u8 v119, v93 offset:12032
	ds_load_u8 v131, v93 offset:11776
	v_perm_b32 v90, v118, v90, 0xc0c0004
	ds_load_u8 v118, v93 offset:11520
	ds_load_u8 v130, v93 offset:11264
	v_lshl_or_b32 v81, v92, 16, v90
	ds_load_u8 v89, v93 offset:10496
	ds_load_u8 v90, v93 offset:10240
	ds_load_u8 v91, v93 offset:11008
	ds_load_u8 v92, v93 offset:10752
	ds_load_u8 v110, v93 offset:9472
	ds_load_u8 v111, v93 offset:9216
	ds_load_u8 v132, v93 offset:9984
	ds_load_u8 v133, v93 offset:9728
	ds_load_u8 v134, v93 offset:12160
	ds_load_u8 v135, v93 offset:11904
	ds_load_u8 v136, v93 offset:11648
	ds_load_u8 v137, v93 offset:11392
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[37:40], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	v_perm_b32 v119, v131, v119, 0xc0c0004
	ds_load_u8 v131, v93 offset:8960
	ds_load_u8 v139, v93 offset:8704
	ds_load_u8 v140, v93 offset:11136
	ds_load_u8 v141, v93 offset:10880
	ds_load_u8 v142, v93 offset:10624
	ds_load_u8 v143, v93 offset:10368
	v_perm_b32 v118, v130, v118, 0xc0c0004
	ds_load_u8 v130, v93 offset:8448
	ds_load_u8 v138, v93 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v133, v132, 0xc0c0004
	v_lshl_or_b32 v83, v90, 16, v89
	v_lshl_or_b32 v84, v119, 16, v118
	ds_load_u8 v110, v93 offset:9088
	ds_load_u8 v111, v93 offset:8832
	ds_load_u8 v132, v93 offset:8576
	ds_load_u8 v133, v93 offset:8320
	v_lshl_or_b32 v82, v92, 16, v91
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v139, v131, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v130, v138, v130, 0xc0c0004
	ds_load_u8 v138, v93 offset:15616
	ds_load_u8 v148, v93 offset:15360
	ds_load_u8 v149, v93 offset:16128
	ds_load_u8 v150, v93 offset:15872
	v_lshl_or_b32 v81, v131, 16, v130
	ds_load_u8 v89, v93 offset:14592
	ds_load_u8 v90, v93 offset:14336
	ds_load_u8 v91, v93 offset:15104
	ds_load_u8 v92, v93 offset:14848
	ds_load_u8 v118, v93 offset:13568
	ds_load_u8 v119, v93 offset:13312
	ds_load_u8 v130, v93 offset:14080
	ds_load_u8 v131, v93 offset:13824
	ds_load_u8 v139, v93 offset:16256
	ds_load_u8 v151, v93 offset:16000
	ds_load_u8 v152, v93 offset:15744
	ds_load_u8 v153, v93 offset:15488
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[85:88], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v160, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v161, v92, v91, 0xc0c0004
	v_perm_b32 v138, v148, v138, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v148, v150, v149, 0xc0c0004
	ds_load_u8 v149, v93 offset:12544
	ds_load_u8 v150, v93 offset:12288
	ds_load_u8 v154, v93 offset:13056
	ds_load_u8 v155, v93 offset:12800
	ds_load_u8 v156, v93 offset:15232
	ds_load_u8 v157, v93 offset:14976
	ds_load_u8 v158, v93 offset:14720
	ds_load_u8 v159, v93 offset:14464
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v119, v131, v130, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[89:92], v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v83, v161, 16, v160
	v_lshl_or_b32 v84, v148, 16, v138
	v_lshl_or_b32 v82, v119, 16, v118
	ds_load_u8 v118, v93 offset:13184
	ds_load_u8 v119, v93 offset:12928
	ds_load_u8 v130, v93 offset:12672
	ds_load_u8 v131, v93 offset:12416
	v_perm_b32 v93, v97, v96, 0xc0c0004
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_perm_b32 v98, v105, v104, 0xc0c0004
	v_perm_b32 v99, v103, v102, 0xc0c0004
	v_perm_b32 v102, v129, v128, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v36, v150, v149, 0xc0c0004
	v_lshl_or_b32 v95, v97, 16, v95
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v81, v155, v154, 0xc0c0004
	v_lshl_or_b32 v94, v99, 16, v98
	v_lshl_or_b32 v93, v101, 16, v100
	v_perm_b32 v97, v115, v114, 0xc0c0004
	v_perm_b32 v98, v123, v122, 0xc0c0004
	v_lshl_or_b32 v81, v81, 16, v36
	v_perm_b32 v36, v117, v116, 0xc0c0004
	v_perm_b32 v99, v121, v120, 0xc0c0004
	v_perm_b32 v100, v127, v126, 0xc0c0004
	v_perm_b32 v101, v125, v124, 0xc0c0004
	v_perm_b32 v103, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[93:96], v[77:80], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v97, 16, v36
	v_lshl_or_b32 v79, v99, 16, v98
	v_lshl_or_b32 v78, v101, 16, v100
	v_lshl_or_b32 v77, v103, 16, v102
	v_perm_b32 v36, v137, v136, 0xc0c0004
	v_perm_b32 v93, v135, v134, 0xc0c0004
	v_perm_b32 v94, v143, v142, 0xc0c0004
	v_perm_b32 v95, v141, v140, 0xc0c0004
	v_perm_b32 v96, v147, v146, 0xc0c0004
	v_perm_b32 v97, v145, v144, 0xc0c0004
	v_perm_b32 v98, v133, v132, 0xc0c0004
	v_perm_b32 v99, v111, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[37:40], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v93, 16, v36
	v_lshl_or_b32 v38, v95, 16, v94
	v_lshl_or_b32 v37, v97, 16, v96
	v_lshl_or_b32 v36, v99, 16, v98
	v_perm_b32 v40, v153, v152, 0xc0c0004
	v_perm_b32 v77, v151, v139, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v78, v159, v158, 0xc0c0004
	v_perm_b32 v79, v157, v156, 0xc0c0004
	v_perm_b32 v80, v165, v164, 0xc0c0004
	v_perm_b32 v93, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v131, v130, 0xc0c0004
	v_perm_b32 v95, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[36:39], v[85:88], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v77, 16, v40
	v_lshl_or_b32 v38, v79, 16, v78
	v_lshl_or_b32 v37, v93, 16, v80
	v_lshl_or_b32 v36, v95, 16, v94
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[89:92], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[36:39], v[89:92], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
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
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s34, 31
	v_mov_b16_e32 v38.l, 0
	s_lshr_b32 s5, s5, 24
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v38.h, v60.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s34, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s5, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s6, s5, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v36, v17, s6, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v18, v18, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v39, 7, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v15, v15, v38 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v13, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v37, v18, s[8:11], 0 offen
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v20, v39, 2, v20
	v_and_b32_e32 v0, 0x2040, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v16, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v57, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v11, v38
	s_waitcnt lgkmcnt(0)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v20, v20, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v35, v15, s3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[17:18], null, s33, s35, v[17:18]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v35, v39, 10, v20
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v9, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v55, v33
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v39, v35, 8, 0
	v_ashrrev_i32_e32 v18, 31, v17
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v38
	v_mul_f32_e32 v4, v4, v38
	v_mul_f32_e32 v3, v3, v38
	v_mul_f32_e32 v2, v2, v38
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v12, v12, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v7, v7, v38
	v_mul_f32_e32 v6, v6, v38
	v_mul_f32_e32 v1, v1, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v46, v24
	v_fma_f32 v4, v4, v45, v23
	v_fma_f32 v3, v3, v44, v22
	v_fma_f32 v38, v2, v42, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v5, s3
	v_cndmask_b32_e64 v23, v23, v4, s3
	v_cndmask_b32_e64 v22, v22, v3, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v58, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v43, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v59 offset:34816
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v56, v34
	v_fma_f32 v42, v1, v47, v19
	v_fma_f32 v11, v11, v53, v31
	v_fma_f32 v10, v10, v52, v30
	v_fma_f32 v8, v8, v50, v27
	v_fma_f32 v6, v6, v48, v25
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[0:1], 2, v[17:18]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v28, v16, s3
	v_cndmask_b32_e64 v14, v34, v14, s3
	v_cndmask_b32_e64 v28, v33, v13, s3
	v_cndmask_b32_e64 v33, v21, v38, s3
	v_cndmask_b32_e64 v34, v19, v42, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v36, 0, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v51, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[18:21], v59 offset:35344
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v11, s3
	v_cndmask_b32_e64 v30, v30, v10, s3
	v_cndmask_b32_e64 v27, v27, v8, s3
	v_cndmask_b32_e64 v29, v29, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v2, v2, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v49, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v54, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v6, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v7, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v12, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[6:9], v59 offset:34832
	ds_load_b128 v[10:13], v59 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v40, v34
	v_fma_f32 v3, v3, v62, v33
	v_fma_f32 v4, v4, v63, v22
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v0, vcc_lo, s0, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v18, v18, v37
	v_mul_f32_e32 v19, v19, v37
	v_mul_f32_e32 v20, v20, v37
	v_mul_f32_e32 v21, v21, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v64, v23
	v_fma_f32 v18, v18, v73, v28
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v74, v14
	v_fma_f32 v20, v20, v75, v15
	v_fma_f32 v21, v21, v76, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v34, v2, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v38, v35, 4, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v6, v6, v37
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v10, v10, v37
	v_mul_f32_e32 v11, v11, v37
	v_mul_f32_e32 v12, v12, v37
	v_mul_f32_e32 v13, v13, v37
	v_mul_f32_e32 v7, v7, v37
	v_mul_f32_e32 v8, v8, v37
	v_mul_f32_e32 v9, v9, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v69, v29
	v_fma_f32 v11, v11, v70, v30
	v_fma_f32 v12, v12, v71, v31
	v_fma_f32 v13, v13, v72, v32
	v_fma_f32 v6, v6, v65, v24
	v_fma_f32 v7, v7, v66, v25
	v_fma_f32 v8, v8, v67, v26
	v_fma_f32 v9, v9, v68, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v29, v10, s2
	v_cndmask_b32_e64 v3, v33, v3, s2
	v_cndmask_b32_e64 v11, v30, v11, s2
	v_cndmask_b32_e64 v4, v22, v4, s2
	v_cndmask_b32_e64 v12, v31, v12, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v42, v35, 12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v23, v5, s2
	v_cndmask_b32_e64 v13, v32, v13, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v44, v35, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v24, v6, s2
	v_cndmask_b32_e64 v18, v28, v18, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v45, v35, 20, 0
	v_xad_u32 v46, v35, 24, 0
	v_xad_u32 v35, v35, 28, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v25, v7, s2
	v_cndmask_b32_e64 v8, v26, v8, s2
	v_cndmask_b32_e64 v9, v27, v9, s2
	v_cndmask_b32_e64 v14, v14, v19, s2
	v_cndmask_b32_e64 v15, v15, v20, s2
	v_cndmask_b32_e64 v16, v16, v21, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b32 v36, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v38, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v39, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v42, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v44, v6, v18 offset1:2
	ds_store_2addr_stride64_b32 v45, v7, v14 offset1:2
	ds_store_2addr_stride64_b32 v46, v8, v15 offset1:2
	ds_store_2addr_stride64_b32 v35, v9, v16 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v3, v[0:1], off
	v_xad_u32 v2, 0x404, v41, 0
	v_xad_u32 v4, 0x808, v41, 0
	v_xad_u32 v5, 0xc0c, v41, 0
	v_xad_u32 v6, 0x1010, v41, 0
	v_xad_u32 v7, 0x1414, v41, 0
	v_xad_u32 v8, 0x1818, v41, 0
	v_xad_u32 v9, 0x1c1c, v41, 0
	ds_load_b32 v20, v43
	ds_load_b32 v19, v2
	ds_load_b32 v18, v4
	ds_load_b32 v16, v5
	ds_load_b32 v15, v6
	ds_load_b32 v14, v7
	ds_load_b32 v13, v8
	ds_load_b32 v12, v9
	v_xad_u32 v2, 0x2040, v41, 0
	v_xad_u32 v4, 0x2444, v41, 0
	v_xad_u32 v5, 0x2848, v41, 0
	v_xad_u32 v6, 0x2c4c, v41, 0
	v_xad_u32 v7, 0x3050, v41, 0
	v_xad_u32 v21, 0x3454, v41, 0
	v_xad_u32 v22, 0x3858, v41, 0
	v_xad_u32 v23, 0x3c5c, v41, 0
	ds_load_b32 v11, v2
	ds_load_b32 v10, v4
	ds_load_b32 v9, v5
	ds_load_b32 v8, v6
	ds_load_b32 v7, v7
	ds_load_b32 v6, v21
	ds_load_b32 v5, v22
	ds_load_b32 v4, v23
.LBB0_13:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v2, v3, v20
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_ashr_i32 s3, s35, 31
	s_mov_b32 s2, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 2
	v_add_co_u32 v0, vcc_lo, v0, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	s_mov_b32 s2, 0
	global_load_b32 v3, v[0:1], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v2, v3, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v0, s35, 1, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v2, v3, v18
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 3, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v2, v3, v16
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v0, s35, 2, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v2, v3, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 5, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v2, v3, v14
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 6, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v2, v3, v13
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 7, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v0, s35, 3, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 9, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 10, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v2, v3, v9
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 11, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_35:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v2, v3, v8
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 12, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_37:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v2, v3, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 13, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_39:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 14, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_41:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 15, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v3, v[0:1], off
.LBB0_43:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v4
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 211
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12468
; TotalNumSgprs: 47
; NumVgprs: 211
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     211
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
