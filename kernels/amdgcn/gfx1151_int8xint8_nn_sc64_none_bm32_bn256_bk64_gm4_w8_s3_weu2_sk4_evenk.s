	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v13, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v59, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v4, 56, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s35, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v13, 4, v3
	v_mad_u64_u32 v[10:11], null, s35, 48, v[9:10]
	v_lshl_add_u32 v15, s35, 5, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	v_lshrrev_b32_e32 v1, 3, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s12, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
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
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s13, s19, s13
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s12, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s13, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s12, 0xff
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s14, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s23, s14, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s35, s22
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s12, s34, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 26
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v16, v1, v4, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s3, s2
.Ltmp21:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0xff
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 4
	s_add_i32 s12, s23, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s22, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0x1ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v57, s33, v9
	v_add_nc_u32_e32 v3, s12, v9
	v_add_nc_u32_e32 v4, s12, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s35, 8
	v_add_nc_u32_e32 v5, s12, v10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s40, s22, 0x100
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s12, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s40, v16
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s12, v57
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v25, s15, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v29, s15, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v14, 0x80000000, v5, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v30, s15, v15
	v_add_nc_u32_e32 v31, s15, v10
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[11:12], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v26, 0x80000000, v7, s3
	s_clause 0x2
	buffer_load_b128 v[4:7], v3, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v8, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v14, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v25, s2
	v_cndmask_b32_e64 v8, 0x80000000, v29, s2
	v_cndmask_b32_e64 v14, 0x80000000, v30, s2
	v_cndmask_b32_e64 v41, 0x80000000, v31, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[45:46], v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4
	buffer_load_b128 v[29:32], v3, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v8, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v14, s[24:27], 0 offen
	buffer_load_b128 v[41:44], v41, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v26, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, 0, v59
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0x2ff
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v58, v2, v1
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 48, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v8, 0, v58
	s_waitcnt vmcnt(9)
	ds_store_b64 v8, v[11:12] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v14, v[4:7]
	s_waitcnt vmcnt(6)
	ds_store_b128 v14, v[21:24] offset:12288
	s_waitcnt vmcnt(0)
	ds_store_b128 v14, v[25:28] offset:4096
	ds_store_b128 v14, v[17:20] offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v8, v[45:46] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v14, v[29:32] offset:16384
	ds_store_b128 v14, v[33:36] offset:20480
	ds_store_b128 v14, v[37:40] offset:24576
	ds_store_b128 v14, v[41:44] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v53, v13, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v14, 0x70, v1
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v55, 16, v53
	v_xor_b32_e32 v56, 32, v53
	v_xor_b32_e32 v54, 48, v53
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr14
.LBB0_3:                                ; %Flow244
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v4, s34, v13
	v_or_b32_e32 v3, s34, v3
	v_and_b32_e32 v19, 0xf0, v0
	s_ashr_i32 s41, s14, 6
	v_or_b32_e32 v17, s23, v0
	v_mul_lo_u32 v52, v4, s41
	v_mul_lo_u32 v18, v3, s41
	v_lshlrev_b32_e32 v11, 2, v19
	v_lshlrev_b32_e32 v12, 1, v19
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s45, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v14, 0x70, v1
	v_dual_mov_b32 v20, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	v_lshl_or_b32 v53, v13, 6, v2
	v_lshlrev_b32_e32 v2, 1, v0
	v_add_nc_u32_e32 v61, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 32, v1
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_and_b32_e32 v21, 28, v2
	v_xor_b32_e32 v55, 16, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v22, 0, v11, v1
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v56, 32, v53
	v_xor_b32_e32 v54, 48, v53
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_add_nc_u32_e32 v60, v22, v21
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v51, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s11, s40, 0x100
	s_mov_b32 s44, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s42, 0, 0x8800
	s_add_i32 s43, 0, 0x4000
	s_add_i32 s45, s45, -3
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s15, s10
	s_mov_b32 s14, s22
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v62, s15, v53
	v_add_nc_u32_e32 v63, s15, v55
	v_add_nc_u32_e32 v64, s15, v56
	v_add_nc_u32_e32 v65, s15, v54
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s14, 31
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s17, s13, 8
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s15, s15, 26
	s_mov_b32 s16, s12
	s_add_i32 s14, s14, s15
	s_mov_b32 s22, s40
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s40, s11, s17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v66, s16, v14, v13
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s40, s35
	.loc	1 366 40 is_stmt 1              ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s23
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v122, v52, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v124, v17, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v123, v18, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v67, s40, v16
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v124, 0x80000000, v124 :: v_dual_cndmask_b32 v123, 0x80000000, v123
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v68, s16, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[166:167], v67, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v179, v122, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v180, v124, s[36:39], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v181, v123, s[28:31], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v69, s16, v57
	v_add_nc_u32_e32 v70, s16, v15
	v_add_nc_u32_e32 v71, s16, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[122:125], v68, s[24:27], 0 offen
	buffer_load_b128 v[126:129], v69, s[24:27], 0 offen
	buffer_load_b128 v[130:133], v70, s[24:27], 0 offen
	buffer_load_b128 v[134:137], v71, s[24:27], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[78:81], v62
	ds_load_b128 v[94:97], v62 offset:1024
	ds_load_b128 v[98:101], v63
	ds_load_b128 v[102:105], v63 offset:1024
	ds_load_b128 v[106:109], v64
	ds_load_b128 v[110:113], v64 offset:1024
	ds_load_b128 v[114:117], v65
	ds_load_b128 v[118:121], v65 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v62, v66 offset:3328
	ds_load_u8 v63, v66 offset:3072
	ds_load_u8 v64, v66 offset:3840
	ds_load_u8 v65, v66 offset:3584
	ds_load_u8 v67, v66 offset:3968
	ds_load_u8 v72, v66 offset:3712
	ds_load_u8 v73, v66 offset:3456
	ds_load_u8 v74, v66 offset:3200
	ds_load_u8 v75, v66 offset:2304
	ds_load_u8 v76, v66 offset:2048
	ds_load_u8 v77, v66 offset:2816
	ds_load_u8 v82, v66 offset:2560
	ds_load_u8 v83, v66 offset:2944
	ds_load_u8 v84, v66 offset:2688
	ds_load_u8 v85, v66 offset:2432
	ds_load_u8 v86, v66 offset:2176
	ds_load_u8 v87, v66 offset:1280
	ds_load_u8 v88, v66 offset:1024
	ds_load_u8 v89, v66 offset:1792
	ds_load_u8 v90, v66 offset:1536
	ds_load_u8 v91, v66 offset:1920
	ds_load_u8 v92, v66 offset:1664
	ds_load_u8 v93, v66 offset:1408
	ds_load_u8 v138, v66 offset:1152
	ds_load_u8 v139, v66 offset:256
	ds_load_u8 v140, v66
	ds_load_u8 v141, v66 offset:768
	ds_load_u8 v142, v66 offset:512
	ds_load_u8 v143, v66 offset:896
	ds_load_u8 v144, v66 offset:640
	ds_load_u8 v145, v66 offset:384
	ds_load_u8 v146, v66 offset:128
	ds_load_u8 v147, v66 offset:7424
	ds_load_u8 v148, v66 offset:7168
	ds_load_u8 v149, v66 offset:7936
	ds_load_u8 v150, v66 offset:7680
	ds_load_u8 v151, v66 offset:8064
	ds_load_u8 v152, v66 offset:7808
	ds_load_u8 v153, v66 offset:7552
	ds_load_u8 v154, v66 offset:7296
	ds_load_u8 v155, v66 offset:6400
	ds_load_u8 v156, v66 offset:6144
	ds_load_u8 v157, v66 offset:6912
	ds_load_u8 v158, v66 offset:6656
	ds_load_u8 v159, v66 offset:7040
	ds_load_u8 v160, v66 offset:6784
	ds_load_u8 v161, v66 offset:6528
	ds_load_u8 v162, v66 offset:6272
	ds_load_u8 v163, v66 offset:5376
	ds_load_u8 v164, v66 offset:5120
	ds_load_u8 v165, v66 offset:5888
	ds_load_u8 v168, v66 offset:5632
	ds_load_u8 v169, v66 offset:6016
	ds_load_u8 v170, v66 offset:5760
	ds_load_u8 v171, v66 offset:5504
	ds_load_u8 v172, v66 offset:5248
	ds_load_u8 v173, v66 offset:4352
	ds_load_u8 v174, v66 offset:4096
	ds_load_u8 v175, v66 offset:4864
	ds_load_u8 v176, v66 offset:4608
	ds_load_u8 v177, v66 offset:4992
	ds_load_u8 v178, v66 offset:4736
	ds_load_u8 v182, v66 offset:4480
	ds_load_u8 v183, v66 offset:4224
	ds_load_u8 v184, v66 offset:11520
	ds_load_u8 v185, v66 offset:11264
	ds_load_u8 v186, v66 offset:12032
	ds_load_u8 v187, v66 offset:11776
	ds_load_u8 v188, v66 offset:12160
	ds_load_u8 v189, v66 offset:11904
	ds_load_u8 v190, v66 offset:11648
	ds_load_u8 v191, v66 offset:11392
	ds_load_u8 v68, v66 offset:10496
	ds_load_u8 v69, v66 offset:10240
	ds_load_u8 v70, v66 offset:11008
	ds_load_u8 v71, v66 offset:10752
	ds_load_u8 v192, v66 offset:11136
	ds_load_u8 v193, v66 offset:10880
	ds_load_u8 v194, v66 offset:10624
	ds_load_u8 v195, v66 offset:10368
	ds_load_u8 v196, v66 offset:9472
	ds_load_u8 v197, v66 offset:9216
	ds_load_u8 v198, v66 offset:9984
	ds_load_u8 v199, v66 offset:9728
	ds_load_u8 v200, v66 offset:10112
	ds_load_u8 v201, v66 offset:9856
	ds_load_u8 v202, v66 offset:9600
	ds_load_u8 v203, v66 offset:9344
	ds_load_u8 v204, v66 offset:8448
	ds_load_u8 v205, v66 offset:8192
	ds_load_u8 v206, v66 offset:8960
	ds_load_u8 v207, v66 offset:8704
	ds_load_u8 v208, v66 offset:9088
	ds_load_u8 v209, v66 offset:8832
	ds_load_u8 v210, v66 offset:8576
	ds_load_u8 v211, v66 offset:8320
	ds_load_u8 v212, v66 offset:15616
	ds_load_u8 v213, v66 offset:15360
	ds_load_u8 v214, v66 offset:16128
	ds_load_u8 v215, v66 offset:15872
	ds_load_u8 v216, v66 offset:16256
	ds_load_u8 v217, v66 offset:16000
	ds_load_u8 v218, v66 offset:15744
	ds_load_u8 v219, v66 offset:15488
	ds_load_u8 v220, v66 offset:14592
	ds_load_u8 v221, v66 offset:14336
	ds_load_u8 v222, v66 offset:15104
	ds_load_u8 v223, v66 offset:14848
	ds_load_u8 v224, v66 offset:15232
	ds_load_u8 v225, v66 offset:14976
	ds_load_u8 v226, v66 offset:14720
	ds_load_u8 v227, v66 offset:14464
	ds_load_u8 v228, v66 offset:13568
	ds_load_u8 v229, v66 offset:13312
	ds_load_u8 v230, v66 offset:14080
	ds_load_u8 v231, v66 offset:13824
	ds_load_u8 v232, v66 offset:14208
	ds_load_u8 v233, v66 offset:13952
	ds_load_u8 v234, v66 offset:13696
	ds_load_u8 v235, v66 offset:13440
	ds_load_u8 v236, v66 offset:12544
	ds_load_u8 v237, v66 offset:12288
	ds_load_u8 v238, v66 offset:13056
	ds_load_u8 v239, v66 offset:12800
	ds_load_u8 v240, v66 offset:13184
	ds_load_u8 v241, v66 offset:12928
	ds_load_u8 v242, v66 offset:12672
	ds_load_u8 v66, v66 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_perm_b32 v64, v76, v75, 0xc0c0004
	v_perm_b32 v65, v82, v77, 0xc0c0004
	v_perm_b32 v75, v88, v87, 0xc0c0004
	v_perm_b32 v76, v90, v89, 0xc0c0004
	v_perm_b32 v77, v140, v139, 0xc0c0004
	v_perm_b32 v82, v142, v141, 0xc0c0004
	v_perm_b32 v90, v148, v147, 0xc0c0004
	v_perm_b32 v139, v150, v149, 0xc0c0004
	v_perm_b32 v140, v156, v155, 0xc0c0004
	v_perm_b32 v142, v158, v157, 0xc0c0004
	v_perm_b32 v147, v164, v163, 0xc0c0004
	v_perm_b32 v148, v168, v165, 0xc0c0004
	v_perm_b32 v149, v174, v173, 0xc0c0004
	v_perm_b32 v150, v176, v175, 0xc0c0004
	v_perm_b32 v155, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v156, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v69, v71, v70, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v67, v72, v67, 0xc0c0004
	v_perm_b32 v72, v86, v85, 0xc0c0004
	v_perm_b32 v74, v84, v83, 0xc0c0004
	v_perm_b32 v83, v138, v93, 0xc0c0004
	v_perm_b32 v84, v92, v91, 0xc0c0004
	v_perm_b32 v85, v146, v145, 0xc0c0004
	v_perm_b32 v91, v144, v143, 0xc0c0004
	v_perm_b32 v92, v154, v153, 0xc0c0004
	v_perm_b32 v154, v162, v161, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v161, v170, v169, 0xc0c0004
	v_perm_b32 v162, v183, v182, 0xc0c0004
	v_perm_b32 v169, v178, v177, 0xc0c0004
	v_perm_b32 v170, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v66, v242, 0xc0c0004
	v_perm_b32 v191, v241, v240, 0xc0c0004
	v_lshl_or_b32 v89, v63, 16, v62
	v_lshl_or_b32 v88, v65, 16, v64
	v_lshl_or_b32 v87, v76, 16, v75
	v_lshl_or_b32 v86, v82, 16, v77
	v_perm_b32 v70, v197, v196, 0xc0c0004
	v_perm_b32 v71, v199, v198, 0xc0c0004
	v_perm_b32 v157, v205, v204, 0xc0c0004
	v_perm_b32 v158, v207, v206, 0xc0c0004
	v_perm_b32 v93, v152, v151, 0xc0c0004
	v_perm_b32 v160, v172, v171, 0xc0c0004
	v_lshl_or_b32 v141, v139, 16, v90
	v_lshl_or_b32 v140, v142, 16, v140
	v_lshl_or_b32 v139, v148, 16, v147
	v_lshl_or_b32 v138, v150, 16, v149
	v_lshl_or_b32 v145, v156, 16, v155
	v_lshl_or_b32 v144, v69, 16, v68
	v_lshl_or_b32 v153, v67, 16, v73
	v_lshl_or_b32 v152, v74, 16, v72
	v_lshl_or_b32 v151, v84, 16, v83
	v_lshl_or_b32 v150, v91, 16, v85
	v_lshl_or_b32 v156, v159, 16, v154
	v_lshl_or_b32 v154, v169, 16, v162
	v_lshl_or_b32 v162, v191, 16, v66
	v_wmma_i32_16x16x16_iu8 v[62:69], v[86:89], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v163, v213, v212, 0xc0c0004
	v_perm_b32 v164, v215, v214, 0xc0c0004
	v_perm_b32 v165, v221, v220, 0xc0c0004
	v_perm_b32 v168, v223, v222, 0xc0c0004
	v_perm_b32 v173, v229, v228, 0xc0c0004
	v_perm_b32 v174, v231, v230, 0xc0c0004
	v_perm_b32 v175, v237, v236, 0xc0c0004
	v_perm_b32 v176, v239, v238, 0xc0c0004
	v_perm_b32 v171, v189, v188, 0xc0c0004
	v_perm_b32 v172, v195, v194, 0xc0c0004
	v_perm_b32 v177, v193, v192, 0xc0c0004
	v_perm_b32 v178, v203, v202, 0xc0c0004
	v_perm_b32 v182, v201, v200, 0xc0c0004
	v_perm_b32 v183, v211, v210, 0xc0c0004
	v_perm_b32 v184, v209, v208, 0xc0c0004
	v_lshl_or_b32 v143, v71, 16, v70
	v_lshl_or_b32 v142, v158, 16, v157
	v_lshl_or_b32 v157, v93, 16, v92
	v_lshl_or_b32 v155, v161, 16, v160
	v_wmma_i32_16x16x16_iu8 v[70:77], v[150:153], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[138:141], v[98:101], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v185, v219, v218, 0xc0c0004
	v_perm_b32 v186, v217, v216, 0xc0c0004
	v_perm_b32 v187, v227, v226, 0xc0c0004
	v_perm_b32 v188, v225, v224, 0xc0c0004
	v_perm_b32 v189, v235, v234, 0xc0c0004
	v_perm_b32 v190, v233, v232, 0xc0c0004
	v_lshl_or_b32 v149, v164, 16, v163
	v_lshl_or_b32 v148, v168, 16, v165
	v_lshl_or_b32 v147, v174, 16, v173
	v_lshl_or_b32 v146, v176, 16, v175
	v_lshl_or_b32 v161, v171, 16, v170
	v_lshl_or_b32 v160, v177, 16, v172
	v_lshl_or_b32 v159, v182, 16, v178
	v_lshl_or_b32 v158, v184, 16, v183
	v_wmma_i32_16x16x16_iu8 v[78:85], v[86:89], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[150:153], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[154:157], v[98:101], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[142:145], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v186, 16, v185
	v_lshl_or_b32 v164, v188, 16, v187
	v_lshl_or_b32 v163, v190, 16, v189
	v_wmma_i32_16x16x16_iu8 v[78:85], v[138:141], v[102:105], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[154:157], v[102:105], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[158:161], v[106:109], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[146:149], v[114:117], v[62:69] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[78:85], v[142:145], v[110:113], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[158:161], v[110:113], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[162:165], v[114:117], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v98, v66
	v_cvt_f32_i32_e32 v99, v67
	v_cvt_f32_i32_e32 v100, v68
	v_cvt_f32_i32_e32 v101, v69
	v_cvt_f32_i32_e32 v102, v70
	v_cvt_f32_i32_e32 v103, v71
	v_cvt_f32_i32_e32 v104, v72
	v_cvt_f32_i32_e32 v105, v73
	v_cvt_f32_i32_e32 v106, v74
	v_cvt_f32_i32_e32 v107, v75
	v_cvt_f32_i32_e32 v108, v76
	v_cvt_f32_i32_e32 v109, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[78:85], v[146:149], v[118:121], v[78:85] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s44, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[86:93], v[162:165], v[118:121], v[86:93] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s15, s44, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s16, s44, 14
	s_mov_b32 s12, s43
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s15, s15, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s43, s16, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
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
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s10, s42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s42, s15, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s45
	s_mov_b32 s13, s14
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v110, 16, v179
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v62, 16, v180
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v111, 16, v181
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v60, v62 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v61 offset:36864
	ds_load_b128 v[66:69], v61 offset:36880
	ds_load_b128 v[70:73], v61 offset:37376
	ds_load_b128 v[74:77], v61 offset:37392
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v243, s15, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v115, v65, v110
	v_mul_f32_e32 v65, v65, v111
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v23, v115, v97 :: v_dual_add_nc_u32 v244, s43, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v121, v71, v110
	v_mul_f32_e32 v112, v62, v110
	v_mul_f32_e32 v113, v63, v110
	v_mul_f32_e32 v114, v64, v110
	v_mul_f32_e32 v116, v66, v110
	v_mul_f32_e32 v117, v67, v110
	v_dual_mul_f32 v118, v68, v110 :: v_dual_mul_f32 v63, v63, v111
	v_mul_f32_e32 v119, v69, v110
	v_mul_f32_e32 v120, v70, v110
	v_dual_mul_f32 v138, v72, v110 :: v_dual_mul_f32 v67, v67, v111
	v_mul_f32_e32 v139, v73, v110
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v140, v74, v110 :: v_dual_mul_f32 v69, v69, v111
	v_dual_mul_f32 v141, v75, v110 :: v_dual_mul_f32 v68, v68, v111
	v_dual_mul_f32 v142, v76, v110 :: v_dual_mul_f32 v71, v71, v111
	v_dual_mul_f32 v110, v77, v110 :: v_dual_mul_f32 v75, v75, v111
	v_mul_f32_e32 v62, v62, v111
	v_mul_f32_e32 v64, v64, v111
	v_mul_f32_e32 v66, v66, v111
	v_dual_mul_f32 v70, v70, v111 :: v_dual_fmac_f32 v27, v119, v101
	v_dual_mul_f32 v72, v72, v111 :: v_dual_fmac_f32 v31, v139, v105
	v_dual_mul_f32 v73, v73, v111 :: v_dual_fmac_f32 v20, v112, v94
	v_dual_mul_f32 v74, v74, v111 :: v_dual_fmac_f32 v39, v65, v81
	v_dual_mul_f32 v76, v76, v111 :: v_dual_fmac_f32 v37, v110, v109
	v_dual_mul_f32 v77, v77, v111 :: v_dual_fmac_f32 v22, v114, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v21, v113, v95 :: v_dual_fmac_f32 v24, v116, v98
	v_dual_fmac_f32 v25, v117, v99 :: v_dual_fmac_f32 v26, v118, v100
	v_dual_fmac_f32 v28, v120, v102 :: v_dual_fmac_f32 v29, v121, v103
	v_dual_fmac_f32 v30, v138, v104 :: v_dual_fmac_f32 v33, v141, v107
	v_dual_fmac_f32 v32, v140, v106 :: v_dual_fmac_f32 v35, v63, v79
	v_dual_fmac_f32 v36, v142, v108 :: v_dual_fmac_f32 v41, v67, v83
	v_dual_fmac_f32 v34, v62, v78 :: v_dual_fmac_f32 v43, v69, v85
	v_dual_fmac_f32 v38, v64, v80 :: v_dual_fmac_f32 v45, v70, v86
	v_dual_fmac_f32 v40, v66, v82 :: v_dual_fmac_f32 v47, v72, v88
	v_dual_fmac_f32 v42, v68, v84 :: v_dual_fmac_f32 v49, v74, v90
	v_dual_fmac_f32 v46, v71, v87 :: v_dual_fmac_f32 v51, v76, v92
	v_fmac_f32_e32 v48, v73, v89
	v_fmac_f32_e32 v50, v75, v91
	v_fmac_f32_e32 v44, v77, v93
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v243, v[166:167] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v244, v[122:125]
	s_waitcnt vmcnt(2)
	ds_store_b128 v244, v[126:129] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v244, v[130:133] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v244, v[134:137] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s42, 0, 0x8800
	s_add_i32 s43, 0, 0x4000
.LBB0_7:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v96, v14, v13
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s12, v96
	s_mov_b32 s12, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v9 offset:3328
	ds_load_u8 v4, v9 offset:3072
	ds_load_u8 v5, v9 offset:3840
	ds_load_u8 v6, v9 offset:3584
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s10, v56
	v_add_nc_u32_e32 v2, s10, v55
	ds_load_b128 v[13:16], v1 offset:1024
	ds_load_b128 v[58:61], v1
	ds_load_b128 v[62:65], v2 offset:1024
	ds_load_b128 v[84:87], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v9 offset:2304
	ds_load_u8 v2, v9 offset:2048
	ds_load_u8 v8, v9 offset:2816
	ds_load_u8 v66, v9 offset:2560
	ds_load_u8 v67, v9 offset:1280
	ds_load_u8 v68, v9 offset:1024
	ds_load_u8 v69, v9 offset:1792
	ds_load_u8 v70, v9 offset:1536
	ds_load_u8 v76, v9 offset:3968
	ds_load_u8 v77, v9 offset:3712
	ds_load_u8 v78, v9 offset:3456
	ds_load_u8 v79, v9 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v7, s10, v53
	v_add_nc_u32_e32 v10, s10, v54
	ds_load_b128 v[92:95], v7 offset:1024
	ds_load_b128 v[88:91], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	ds_load_u8 v5, v9 offset:256
	ds_load_u8 v6, v9
	ds_load_u8 v71, v9 offset:768
	ds_load_u8 v72, v9 offset:512
	ds_load_u8 v80, v9 offset:2944
	ds_load_u8 v81, v9 offset:2688
	ds_load_u8 v82, v9 offset:2432
	ds_load_u8 v83, v9 offset:2176
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v66, v8, 0xc0c0004
	v_lshl_or_b32 v100, v4, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v67, v70, v69, 0xc0c0004
	v_lshl_or_b32 v99, v2, 16, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_lshl_or_b32 v98, v67, 16, v8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v83, v82, 0xc0c0004
	v_lshl_or_b32 v97, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	ds_load_u8 v72, v9 offset:6400
	ds_load_u8 v73, v9 offset:6144
	ds_load_u8 v74, v9 offset:6912
	ds_load_u8 v75, v9 offset:6656
	ds_load_u8 v101, v9 offset:5376
	ds_load_u8 v102, v9 offset:5120
	ds_load_u8 v103, v9 offset:5888
	ds_load_u8 v104, v9 offset:5632
	ds_load_u8 v105, v9 offset:4352
	ds_load_u8 v106, v9 offset:4096
	ds_load_u8 v107, v9 offset:4864
	ds_load_u8 v108, v9 offset:4608
	ds_load_u8 v125, v9 offset:8064
	ds_load_u8 v126, v9 offset:7808
	ds_load_u8 v127, v9 offset:7552
	ds_load_u8 v128, v9 offset:7296
	ds_load_u8 v68, v9 offset:7424
	ds_load_u8 v69, v9 offset:7168
	ds_load_u8 v70, v9 offset:7936
	ds_load_u8 v71, v9 offset:7680
	ds_load_u8 v66, v9 offset:1920
	ds_load_u8 v117, v9 offset:1664
	ds_load_u8 v118, v9 offset:1408
	ds_load_u8 v119, v9 offset:1152
	ds_load_u8 v67, v9 offset:896
	ds_load_u8 v121, v9 offset:640
	ds_load_u8 v122, v9 offset:384
	ds_load_u8 v123, v9 offset:128
	ds_load_u8 v129, v9 offset:7040
	ds_load_u8 v130, v9 offset:6784
	ds_load_u8 v131, v9 offset:6528
	ds_load_u8 v132, v9 offset:6272
	ds_load_u8 v133, v9 offset:6016
	ds_load_u8 v134, v9 offset:5760
	ds_load_u8 v135, v9 offset:5504
	ds_load_u8 v136, v9 offset:5248
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v111, v73, v72, 0xc0c0004
	ds_load_u8 v137, v9 offset:4992
	ds_load_u8 v138, v9 offset:4736
	ds_load_u8 v139, v9 offset:4480
	ds_load_u8 v140, v9 offset:4224
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v112, v75, v74, 0xc0c0004
	ds_load_u8 v149, v9 offset:10112
	ds_load_u8 v150, v9 offset:9856
	ds_load_u8 v151, v9 offset:9600
	ds_load_u8 v152, v9 offset:9344
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_mov_b32_e32 v3, s14
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	v_lshl_or_b32 v103, v112, 16, v111
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_mov_b32_e32 v4, s15
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	ds_load_u8 v107, v9 offset:11520
	ds_load_u8 v108, v9 offset:11264
	ds_load_u8 v113, v9 offset:12032
	ds_load_u8 v114, v9 offset:11776
	v_lshl_or_b32 v102, v102, 16, v101
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v109, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v66, v117, v66, 0xc0c0004
	v_perm_b32 v110, v71, v70, 0xc0c0004
	v_lshl_or_b32 v101, v106, 16, v105
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v80, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v81, v123, v122, 0xc0c0004
	v_perm_b32 v67, v121, v67, 0xc0c0004
	v_lshl_or_b32 v104, v110, 16, v109
	ds_load_u8 v105, v9 offset:10496
	ds_load_u8 v106, v9 offset:10240
	ds_load_u8 v109, v9 offset:11008
	ds_load_u8 v110, v9 offset:10752
	ds_load_u8 v111, v9 offset:9472
	ds_load_u8 v112, v9 offset:9216
	ds_load_u8 v115, v9 offset:9984
	ds_load_u8 v116, v9 offset:9728
	ds_load_u8 v141, v9 offset:12160
	ds_load_u8 v142, v9 offset:11904
	ds_load_u8 v143, v9 offset:11648
	ds_load_u8 v144, v9 offset:11392
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_lshl_or_b32 v123, v79, 16, v77
	v_lshl_or_b32 v122, v66, 16, v80
	v_lshl_or_b32 v121, v67, 16, v81
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v66, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v108, v114, v113, 0xc0c0004
	ds_load_u8 v113, v9 offset:8448
	ds_load_u8 v114, v9 offset:8192
	ds_load_u8 v120, v9 offset:8960
	ds_load_u8 v124, v9 offset:8704
	ds_load_u8 v145, v9 offset:11136
	ds_load_u8 v146, v9 offset:10880
	ds_load_u8 v147, v9 offset:10624
	ds_load_u8 v148, v9 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v106, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v109, v112, v111, 0xc0c0004
	v_lshl_or_b32 v108, v108, 16, v107
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v110, v116, v115, 0xc0c0004
	ds_load_u8 v111, v9 offset:15616
	ds_load_u8 v112, v9 offset:15360
	ds_load_u8 v115, v9 offset:16128
	ds_load_u8 v116, v9 offset:15872
	ds_load_u8 v153, v9 offset:9088
	ds_load_u8 v154, v9 offset:8832
	ds_load_u8 v155, v9 offset:8576
	ds_load_u8 v156, v9 offset:8320
	v_lshl_or_b32 v107, v106, 16, v105
	v_perm_b32 v67, v126, v125, 0xc0c0004
	v_perm_b32 v118, v132, v131, 0xc0c0004
	v_lshl_or_b32 v106, v110, 16, v109
	v_perm_b32 v119, v130, v129, 0xc0c0004
	v_perm_b32 v125, v136, v135, 0xc0c0004
	v_perm_b32 v126, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v129, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v114, v124, v120, 0xc0c0004
	ds_load_u8 v124, v9 offset:14592
	ds_load_u8 v157, v9 offset:14336
	ds_load_u8 v158, v9 offset:15104
	ds_load_u8 v159, v9 offset:14848
	ds_load_u8 v160, v9 offset:16256
	ds_load_u8 v161, v9 offset:16000
	ds_load_u8 v162, v9 offset:15744
	ds_load_u8 v163, v9 offset:15488
	v_perm_b32 v130, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[97:100], v[88:91], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v114, 16, v113
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v120, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v164, v116, v115, 0xc0c0004
	ds_load_u8 v165, v9 offset:13568
	ds_load_u8 v166, v9 offset:13312
	ds_load_u8 v167, v9 offset:14080
	ds_load_u8 v168, v9 offset:13824
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[109:112], v10 offset:1024
	ds_load_b128 v[113:116], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v9 offset:12544
	ds_load_u8 v169, v9 offset:12288
	v_lshl_or_b32 v128, v67, 16, v66
	v_lshl_or_b32 v127, v119, 16, v118
	v_lshl_or_b32 v120, v164, 16, v120
	ds_load_u8 v164, v9 offset:15232
	ds_load_u8 v170, v9 offset:14976
	ds_load_u8 v171, v9 offset:14720
	ds_load_u8 v172, v9 offset:14464
	v_lshl_or_b32 v126, v126, 16, v125
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v157, v157, v124, 0xc0c0004
	v_lshl_or_b32 v125, v130, 16, v129
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v124, v9 offset:13056
	ds_load_u8 v159, v9 offset:12800
	ds_load_u8 v173, v9 offset:14208
	ds_load_u8 v174, v9 offset:13952
	ds_load_u8 v175, v9 offset:13696
	ds_load_u8 v176, v9 offset:13440
	v_perm_b32 v66, v144, v143, 0xc0c0004
	v_perm_b32 v67, v142, v141, 0xc0c0004
	v_perm_b32 v118, v156, v155, 0xc0c0004
	v_perm_b32 v119, v154, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[101:104], v[84:87], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_lshl_or_b32 v132, v67, 16, v66
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v166, v168, v167, 0xc0c0004
	ds_load_u8 v167, v9 offset:13184
	ds_load_u8 v168, v9 offset:12928
	ds_load_u8 v177, v9 offset:12672
	ds_load_u8 v9, v9 offset:12416
	v_lshl_or_b32 v129, v119, 16, v118
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v169, v10, 0xc0c0004
	v_perm_b32 v66, v163, v162, 0xc0c0004
	v_perm_b32 v67, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[105:108], v[58:61], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v119, v158, 16, v157
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v117, v159, v124, 0xc0c0004
	v_lshl_or_b32 v124, v76, 16, v78
	v_lshl_or_b32 v118, v166, 16, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v117, v117, 16, v10
	v_wmma_i32_16x16x16_iu8 v[76:83], v[121:124], v[88:91], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v88, v148, v147, 0xc0c0004
	v_perm_b32 v89, v146, v145, 0xc0c0004
	v_perm_b32 v90, v152, v151, 0xc0c0004
	v_perm_b32 v91, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[125:128], v[84:87], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v10, v172, v171, 0xc0c0004
	v_lshl_or_b32 v131, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v177, 0xc0c0004
	v_lshl_or_b32 v130, v91, 16, v90
	v_wmma_i32_16x16x16_iu8 v[84:91], v[97:100], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[121:124], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[117:120], v[113:116], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[129:132], v[58:61], v[76:83] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v67, 16, v66
	v_perm_b32 v58, v170, v164, 0xc0c0004
	v_perm_b32 v59, v176, v175, 0xc0c0004
	v_perm_b32 v66, v174, v173, 0xc0c0004
	v_perm_b32 v67, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[84:91], v[101:104], v[62:65], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[125:128], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v60, v58, 16, v10
	v_lshl_or_b32 v59, v66, 16, v59
	v_lshl_or_b32 v58, v67, 16, v9
	v_wmma_i32_16x16x16_iu8 v[84:91], v[105:108], v[13:16], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[129:132], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v62, v73
	v_cvt_f32_i32_e32 v63, v74
	v_wmma_i32_16x16x16_iu8 v[76:83], v[58:61], v[113:116], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[117:120], v[109:112], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[58:61], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v69
	v_cvt_f32_i32_e32 v59, v70
	v_cvt_f32_i32_e32 v60, v71
	v_cvt_f32_i32_e32 v61, v72
	v_cvt_f32_i32_e32 v64, v75
	v_cvt_f32_i32_e32 v65, v76
	v_cvt_f32_i32_e32 v66, v77
	v_cvt_f32_i32_e32 v67, v78
	v_cvt_f32_i32_e32 v69, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v87
	v_cvt_f32_i32_e32 v80, v88
	v_cvt_f32_i32_e32 v81, v89
	v_cvt_f32_i32_e32 v82, v90
	v_cvt_f32_i32_e32 v83, v91
	v_cvt_f32_i32_e32 v84, v1
	v_cvt_f32_i32_e32 v85, v2
	v_cvt_f32_i32_e32 v86, v3
	v_cvt_f32_i32_e32 v87, v4
	v_cvt_f32_i32_e32 v88, v5
	v_cvt_f32_i32_e32 v89, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v91, v8
	v_cvt_f32_i32_e32 v68, v68
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v52, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v17, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v18, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_and_b32 v70, 14, v0
	s_clause 0x1
	buffer_load_u16 v94, v1, s[8:11], 0 offen
	buffer_load_u16 v95, v3, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v71, 1, v0
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v3, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v1, 5, v71
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v92, 0, v12
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v100, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v1, 0, v11, v1
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v93, v1, v3
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v127, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v93, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v92 offset:36864
	ds_load_b128 v[5:8], v92 offset:36880
	ds_load_b128 v[9:12], v92 offset:37376
	ds_load_b128 v[13:16], v92 offset:37392
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v57, s43, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v57 offset:3328
	ds_load_u8 v99, v57 offset:3072
	ds_load_u8 v100, v57 offset:3840
	ds_load_u8 v101, v57 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v96, s42, v56
	v_add_nc_u32_e32 v97, s42, v55
	v_add_nc_u32_e32 v104, s42, v54
	v_add_nc_u32_e32 v102, s42, v53
	ds_load_b128 v[53:56], v96 offset:1024
	ds_load_b128 v[112:115], v96
	ds_load_b128 v[128:131], v97 offset:1024
	ds_load_b128 v[116:119], v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v96, v57 offset:2304
	ds_load_u8 v97, v57 offset:2048
	ds_load_u8 v103, v57 offset:2816
	ds_load_u8 v105, v57 offset:2560
	ds_load_u8 v106, v57 offset:1280
	ds_load_u8 v107, v57 offset:1024
	ds_load_u8 v108, v57 offset:1792
	ds_load_u8 v109, v57 offset:1536
	ds_load_u8 v110, v57 offset:3968
	ds_load_u8 v111, v57 offset:3712
	ds_load_u8 v160, v57 offset:3456
	ds_load_u8 v161, v57 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v105, v103, 0xc0c0004
	v_perm_b32 v99, v101, v100, 0xc0c0004
	ds_load_u8 v100, v57 offset:256
	ds_load_u8 v101, v57
	ds_load_u8 v120, v57 offset:768
	ds_load_u8 v121, v57 offset:512
	ds_load_u8 v162, v57 offset:2944
	ds_load_u8 v164, v57 offset:2688
	ds_load_u8 v165, v57 offset:2432
	ds_load_u8 v166, v57 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v109, v108, 0xc0c0004
	v_lshl_or_b32 v142, v97, 16, v96
	v_lshl_or_b32 v143, v99, 16, v98
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_lshl_or_b32 v141, v106, 16, v103
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v121, v120, 0xc0c0004
	v_dual_mov_b32 v127, s19 :: v_dual_mov_b32 v126, s18
	ds_load_u8 v98, v57 offset:7424
	ds_load_u8 v99, v57 offset:7168
	ds_load_u8 v100, v57 offset:7936
	ds_load_u8 v101, v57 offset:7680
	v_mov_b32_e32 v123, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[132:135], v102 offset:1024
	ds_load_b128 v[136:139], v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v140, v97, 16, v96
	ds_load_u8 v96, v57 offset:6400
	ds_load_u8 v97, v57 offset:6144
	ds_load_u8 v102, v57 offset:6912
	ds_load_u8 v103, v57 offset:6656
	ds_load_u8 v144, v57 offset:5376
	ds_load_u8 v145, v57 offset:5120
	ds_load_u8 v146, v57 offset:5888
	ds_load_u8 v147, v57 offset:5632
	ds_load_u8 v148, v57 offset:4352
	ds_load_u8 v149, v57 offset:4096
	ds_load_u8 v150, v57 offset:4864
	ds_load_u8 v151, v57 offset:4608
	ds_load_u8 v170, v57 offset:8064
	ds_load_u8 v171, v57 offset:7808
	ds_load_u8 v172, v57 offset:7552
	ds_load_u8 v173, v57 offset:7296
	ds_load_u8 v105, v57 offset:1920
	ds_load_u8 v167, v57 offset:1664
	ds_load_u8 v168, v57 offset:1408
	ds_load_u8 v169, v57 offset:1152
	ds_load_u8 v106, v57 offset:896
	ds_load_u8 v107, v57 offset:640
	ds_load_u8 v108, v57 offset:384
	ds_load_u8 v109, v57 offset:128
	v_mov_b32_e32 v125, s17
	ds_load_u8 v174, v57 offset:7040
	ds_load_u8 v175, v57 offset:6784
	ds_load_u8 v176, v57 offset:6528
	ds_load_u8 v177, v57 offset:6272
	ds_load_u8 v178, v57 offset:6016
	ds_load_u8 v179, v57 offset:5760
	ds_load_u8 v180, v57 offset:5504
	ds_load_u8 v181, v57 offset:5248
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v154, v97, v96, 0xc0c0004
	ds_load_u8 v182, v57 offset:4992
	ds_load_u8 v183, v57 offset:4736
	ds_load_u8 v184, v57 offset:4480
	ds_load_u8 v185, v57 offset:4224
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v155, v103, v102, 0xc0c0004
	ds_load_u8 v195, v57 offset:10112
	ds_load_u8 v196, v57 offset:9856
	ds_load_u8 v197, v57 offset:9600
	ds_load_u8 v198, v57 offset:9344
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v111, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v145, v147, v146, 0xc0c0004
	v_lshl_or_b32 v146, v155, 16, v154
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v152, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v149, v151, v150, 0xc0c0004
	ds_load_u8 v150, v57 offset:11520
	ds_load_u8 v151, v57 offset:11264
	ds_load_u8 v156, v57 offset:12032
	ds_load_u8 v157, v57 offset:11776
	v_perm_b32 v153, v101, v100, 0xc0c0004
	v_lshl_or_b32 v145, v145, 16, v144
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v105, v167, v105, 0xc0c0004
	v_lshl_or_b32 v144, v149, 16, v148
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_lshl_or_b32 v147, v153, 16, v152
	ds_load_u8 v148, v57 offset:10496
	ds_load_u8 v149, v57 offset:10240
	ds_load_u8 v152, v57 offset:11008
	ds_load_u8 v153, v57 offset:10752
	ds_load_u8 v154, v57 offset:9472
	ds_load_u8 v155, v57 offset:9216
	ds_load_u8 v158, v57 offset:9984
	ds_load_u8 v159, v57 offset:9728
	ds_load_u8 v186, v57 offset:12160
	ds_load_u8 v187, v57 offset:11904
	ds_load_u8 v188, v57 offset:11648
	ds_load_u8 v189, v57 offset:11392
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_mov_b32_e32 v124, s16
	v_dual_mov_b32 v122, s14 :: v_dual_mov_b32 v121, s13
	v_mov_b32_e32 v120, s12
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v149, v153, v152, 0xc0c0004
	v_perm_b32 v151, v157, v156, 0xc0c0004
	ds_load_u8 v156, v57 offset:8448
	ds_load_u8 v157, v57 offset:8192
	ds_load_u8 v163, v57 offset:8960
	ds_load_u8 v190, v57 offset:8704
	ds_load_u8 v191, v57 offset:11136
	ds_load_u8 v192, v57 offset:10880
	ds_load_u8 v193, v57 offset:10624
	ds_load_u8 v194, v57 offset:10368
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v152, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v153, v159, v158, 0xc0c0004
	ds_load_u8 v154, v57 offset:15616
	ds_load_u8 v155, v57 offset:15360
	ds_load_u8 v158, v57 offset:16128
	ds_load_u8 v159, v57 offset:15872
	ds_load_u8 v199, v57 offset:9088
	ds_load_u8 v200, v57 offset:8832
	ds_load_u8 v201, v57 offset:8576
	ds_load_u8 v202, v57 offset:8320
	v_lshl_or_b32 v151, v151, 16, v150
	v_lshl_or_b32 v150, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[96:103], v[140:143], v[136:139], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v153, 16, v152
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[144:147], v[116:119], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v157, v190, v163, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v163, v155, v154, 0xc0c0004
	ds_load_u8 v190, v57 offset:14592
	ds_load_u8 v203, v57 offset:14336
	ds_load_u8 v204, v57 offset:15104
	ds_load_u8 v205, v57 offset:14848
	ds_load_u8 v206, v57 offset:16256
	ds_load_u8 v207, v57 offset:16000
	ds_load_u8 v208, v57 offset:15744
	ds_load_u8 v209, v57 offset:15488
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v210, v159, v158, 0xc0c0004
	v_lshl_or_b32 v148, v157, 16, v156
	ds_load_u8 v211, v57 offset:13568
	ds_load_u8 v212, v57 offset:13312
	ds_load_u8 v213, v57 offset:14080
	ds_load_u8 v214, v57 offset:13824
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[152:155], v104 offset:1024
	ds_load_b128 v[156:159], v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v104, v57 offset:12544
	ds_load_u8 v215, v57 offset:12288
	v_lshl_or_b32 v163, v210, 16, v163
	ds_load_u8 v210, v57 offset:15232
	ds_load_u8 v216, v57 offset:14976
	ds_load_u8 v217, v57 offset:14720
	ds_load_u8 v218, v57 offset:14464
	v_wmma_i32_16x16x16_iu8 v[96:103], v[148:151], v[112:115], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v190, v203, v190, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v203, v205, v204, 0xc0c0004
	ds_load_u8 v204, v57 offset:13056
	ds_load_u8 v205, v57 offset:12800
	ds_load_u8 v219, v57 offset:14208
	ds_load_u8 v220, v57 offset:13952
	ds_load_u8 v221, v57 offset:13696
	ds_load_u8 v222, v57 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v212, v214, v213, 0xc0c0004
	ds_load_u8 v213, v57 offset:13184
	ds_load_u8 v214, v57 offset:12928
	ds_load_u8 v223, v57 offset:12672
	ds_load_u8 v57, v57 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v215, v215, v104, 0xc0c0004
	v_perm_b32 v104, v161, v160, 0xc0c0004
	v_perm_b32 v160, v164, v162, 0xc0c0004
	v_perm_b32 v161, v169, v168, 0xc0c0004
	v_lshl_or_b32 v164, v106, 16, v108
	v_perm_b32 v162, v177, v176, 0xc0c0004
	v_lshl_or_b32 v167, v110, 16, v104
	v_lshl_or_b32 v166, v160, 16, v111
	v_lshl_or_b32 v165, v105, 16, v161
	v_perm_b32 v160, v173, v172, 0xc0c0004
	v_perm_b32 v161, v171, v170, 0xc0c0004
	v_perm_b32 v168, v175, v174, 0xc0c0004
	v_perm_b32 v169, v181, v180, 0xc0c0004
	v_perm_b32 v170, v179, v178, 0xc0c0004
	v_perm_b32 v171, v185, v184, 0xc0c0004
	v_perm_b32 v172, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[104:111], v[164:167], v[136:139], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v161, 16, v160
	v_lshl_or_b32 v138, v168, 16, v162
	v_lshl_or_b32 v137, v170, 16, v169
	v_lshl_or_b32 v136, v172, 16, v171
	v_perm_b32 v160, v189, v188, 0xc0c0004
	v_perm_b32 v161, v187, v186, 0xc0c0004
	v_perm_b32 v162, v194, v193, 0xc0c0004
	v_perm_b32 v168, v192, v191, 0xc0c0004
	v_perm_b32 v169, v198, v197, 0xc0c0004
	v_perm_b32 v172, v196, v195, 0xc0c0004
	v_perm_b32 v173, v202, v201, 0xc0c0004
	v_perm_b32 v174, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[104:111], v[136:139], v[116:119], v[104:111] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v161, 16, v160
	v_lshl_or_b32 v170, v168, 16, v162
	v_lshl_or_b32 v169, v172, 16, v169
	v_lshl_or_b32 v168, v174, 16, v173
	v_perm_b32 v116, v209, v208, 0xc0c0004
	v_perm_b32 v117, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	v_perm_b32 v172, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[104:111], v[168:171], v[112:115], v[104:111] neg_lo:[1,1,0]
	v_perm_b32 v173, v216, v210, 0xc0c0004
	v_lshl_or_b32 v175, v117, 16, v116
	v_wmma_i32_16x16x16_iu8 v[112:119], v[140:143], v[132:135], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[164:167], v[132:135], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v176, v222, v221, 0xc0c0004
	v_perm_b32 v132, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v223, 0xc0c0004
	v_perm_b32 v133, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[112:119], v[144:147], v[128:131], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[136:139], v[128:131], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v203, 16, v190
	v_lshl_or_b32 v161, v212, 16, v211
	v_lshl_or_b32 v160, v204, 16, v215
	v_lshl_or_b32 v174, v173, 16, v172
	v_lshl_or_b32 v173, v132, 16, v176
	v_lshl_or_b32 v172, v133, 16, v57
	v_wmma_i32_16x16x16_iu8 v[112:119], v[148:151], v[53:56], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[168:171], v[53:56], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[160:163], v[156:159], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[172:175], v[156:159], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[160:163], v[152:155], v[112:119] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[172:175], v[152:155], v[120:127] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s40, 31
	v_mov_b16_e32 v55.l, 0
	s_lshr_b32 s5, s5, 26
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v55.h, v95.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s40, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s5, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s41
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s6, s5, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v52, v52, s5, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v17, s6, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v18, v18, s5, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v95, v16, v55 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v54, v18, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v53, v53, s[20:23], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v129, v13, v55 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v131, v11, v55
	v_mul_f32_e32 v128, v14, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v130, v12, v55
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_cndmask_b32_e64 v56, 0x840, 0, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v132, v10, v55
	v_mul_f32_e32 v133, v9, v55
	v_mul_f32_e32 v134, v8, v55
	v_mul_f32_e32 v135, v7, v55
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v56, v56, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v136, v6, v55
	v_mul_f32_e32 v137, v5, v55
	v_mul_f32_e32 v138, v4, v55
	v_mul_f32_e32 v139, v3, v55
	v_mul_f32_e32 v140, v2, v55
	v_mul_f32_e32 v141, v1, v55
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v56, v70, 11, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v96, v15, v55
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v55.h, v94.l
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[17:18], null, s34, s35, v[17:18]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v141, v76, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v16, v16, v55
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v95, v91, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v34, v76, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v18, 31, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v75, v37
	v_fma_f32 v86, v131, v86, v47
	v_fma_f32 v88, v129, v88, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v37, v16, s3
	v_cndmask_b32_e64 v47, v47, v86, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v49, v49, v88, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v15, v55
	v_mul_f32_e32 v14, v14, v55
	v_mul_f32_e32 v13, v13, v55
	v_mul_f32_e32 v12, v12, v55
	v_mul_f32_e32 v11, v11, v55
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v7, v7, v55 :: v_dual_lshlrev_b32 v54, 16, v54
	v_mul_f32_e32 v10, v10, v55
	v_mul_f32_e32 v9, v9, v55
	v_mul_f32_e32 v8, v8, v55
	v_mul_f32_e32 v6, v6, v55
	v_mul_f32_e32 v5, v5, v55
	v_mul_f32_e32 v4, v4, v55
	v_mul_f32_e32 v3, v3, v55
	v_mul_f32_e32 v2, v2, v55
	v_mul_f32_e32 v55, v1, v55
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[0:1], 2, v[17:18]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v67, v30
	v_fma_f32 v10, v10, v66, v29
	v_fma_f32 v9, v9, v65, v28
	v_fma_f32 v8, v8, v64, v27
	v_fma_f32 v15, v15, v74, v36
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v34, vcc_lo, s0, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v11, s3
	v_cndmask_b32_e64 v29, v29, v10, s3
	v_cndmask_b32_e64 v28, v28, v9, s3
	v_cndmask_b32_e64 v27, v27, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v93, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v92 offset:37376
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v73, v33
	v_fma_f32 v13, v13, v72, v32
	v_fma_f32 v12, v12, v69, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v15, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v53, 0, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v96, v90, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v14, s3
	v_cndmask_b32_e64 v32, v32, v13, s3
	v_cndmask_b32_e64 v31, v31, v12, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[12:15], v92 offset:37392
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v44, v91, s3
	v_cndmask_b32_e64 v44, v51, v90, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v63, v26
	v_fma_f32 v6, v6, v62, v25
	v_fma_f32 v5, v5, v61, v24
	v_fma_f32 v4, v4, v60, v23
	v_fma_f32 v59, v3, v59, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v7, s3
	v_cndmask_b32_e64 v25, v25, v6, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v75, v11, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v140, v77, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v9, v37
	v_mul_f32_e32 v9, v9, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v58, v2, v58, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v5, s3
	v_cndmask_b32_e64 v51, v35, v77, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v35, null, s1, v1, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[0:3], v92 offset:36864
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v4, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[4:7], v92 offset:36880
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v133, v84, v45
	v_fma_f32 v55, v55, v68, v20
	v_fma_f32 v79, v138, v79, v39
	v_fma_f32 v89, v128, v89, v50
	v_fma_f32 v82, v135, v82, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v84, s3
	v_cndmask_b32_e64 v22, v22, v59, s3
	v_cndmask_b32_e64 v21, v21, v58, s3
	v_cndmask_b32_e64 v20, v20, v55, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v8, v37
	v_mul_f32_e32 v8, v8, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v79, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v10, v37
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v77, v12, v37
	v_mul_f32_e32 v79, v14, v37
	v_mul_f32_e32 v10, v10, v54
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v11, v11, v54 :: v_dual_mul_f32 v64, v2, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v139, v78, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v3, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v132, v85, v46
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v1, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v130, v87, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v0, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v137, v80, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v78, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v66, v4, v37
	v_mul_f32_e32 v67, v5, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v134, v83, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v6, v37
	v_mul_f32_e32 v69, v7, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v136, v81, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v78, v13, v37
	v_mul_f32_e32 v0, v0, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v85, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v1, v54
	v_mul_f32_e32 v2, v2, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v87, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v80, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v37, v15, v37 :: v_dual_mul_f32 v4, v4, v54
	v_mul_f32_e32 v12, v12, v54
	v_mul_f32_e32 v15, v15, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v89, s3
	v_cndmask_b32_e64 v43, v43, v83, s3
	v_cndmask_b32_e64 v42, v42, v82, s3
	v_cndmask_b32_e64 v41, v41, v81, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v54
	v_mul_f32_e32 v6, v6, v54
	v_mul_f32_e32 v7, v7, v54
	v_mul_f32_e32 v13, v13, v54
	v_mul_f32_e32 v14, v14, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v62, v57, v20
	v_fma_f32 v57, v63, v97, v21
	v_fma_f32 v62, v64, v98, v22
	v_fma_f32 v63, v65, v99, v23
	v_fma_f32 v64, v66, v100, v24
	v_fma_f32 v65, v67, v101, v25
	v_fma_f32 v66, v68, v102, v26
	v_fma_f32 v67, v69, v103, v27
	v_fma_f32 v68, v72, v104, v28
	v_fma_f32 v69, v73, v105, v29
	v_fma_f32 v73, v75, v107, v31
	v_fma_f32 v75, v78, v109, v33
	v_fma_f32 v78, v0, v112, v76
	v_fma_f32 v86, v8, v120, v45
	v_fma_f32 v72, v74, v106, v30
	v_fma_f32 v74, v77, v108, v32
	v_fma_f32 v77, v79, v110, v36
	v_fma_f32 v79, v1, v113, v51
	v_fma_f32 v87, v9, v121, v46
	v_fma_f32 v80, v2, v114, v38
	v_fma_f32 v88, v10, v122, v47
	v_fma_f32 v81, v3, v115, v39
	v_fma_f32 v89, v11, v123, v48
	v_fma_f32 v37, v37, v111, v16
	v_fma_f32 v82, v4, v116, v40
	v_fma_f32 v90, v12, v124, v49
	v_fma_f32 v93, v15, v127, v18
	v_fma_f32 v83, v5, v117, v41
	v_fma_f32 v84, v6, v118, v42
	v_fma_f32 v85, v7, v119, v43
	v_fma_f32 v91, v13, v125, v50
	v_fma_f32 v92, v14, v126, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v20, v54, s2
	v_cndmask_b32_e64 v2, v21, v57, s2
	v_cndmask_b32_e64 v20, v28, v68, s2
	v_cndmask_b32_e64 v1, v76, v78, s2
	v_cndmask_b32_e64 v21, v45, v86, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v55, v56, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v22, v62, s2
	v_cndmask_b32_e64 v6, v23, v63, s2
	v_cndmask_b32_e64 v22, v29, v69, s2
	v_cndmask_b32_e64 v3, v51, v79, s2
	v_cndmask_b32_e64 v23, v46, v87, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v58, v56, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v24, v64, s2
	v_cndmask_b32_e64 v10, v25, v65, s2
	v_cndmask_b32_e64 v24, v30, v72, s2
	v_cndmask_b32_e64 v5, v38, v80, s2
	v_cndmask_b32_e64 v25, v47, v88, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v59, v56, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v26, v66, s2
	v_cndmask_b32_e64 v14, v27, v67, s2
	v_cndmask_b32_e64 v26, v31, v73, s2
	v_cndmask_b32_e64 v7, v39, v81, s2
	v_cndmask_b32_e64 v27, v48, v89, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v60, v56, 32, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v32, v74, s2
	v_cndmask_b32_e64 v32, v36, v77, s2
	v_cndmask_b32_e64 v36, v16, v37, s2
	v_cndmask_b32_e64 v9, v40, v82, s2
	v_cndmask_b32_e64 v29, v49, v90, s2
	v_cndmask_b32_e64 v37, v18, v93, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v52, v56, 40, 0
	v_xad_u32 v61, v56, 48, 0
	v_xad_u32 v56, v56, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v33, v75, s2
	v_cndmask_b32_e64 v11, v41, v83, s2
	v_cndmask_b32_e64 v13, v42, v84, s2
	v_cndmask_b32_e64 v15, v43, v85, s2
	v_cndmask_b32_e64 v31, v50, v91, s2
	v_cndmask_b32_e64 v33, v44, v92, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v53, v[0:1], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v55, v[2:3], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v58, v[4:5], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v59, v[6:7], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v60, v[8:9], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v52, v[10:11], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v61, v[12:13], v[32:33] offset1:2
	ds_store_2addr_stride64_b64 v56, v[14:15], v[36:37] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v37, v[34:35], off
	v_lshlrev_b32_e32 v0, 3, v19
	v_lshlrev_b32_e32 v1, 2, v70
	v_lshlrev_b32_e32 v2, 6, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v2, v1
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x840, v0, 0
	v_xad_u32 v3, 0x1008, v0, 0
	v_xad_u32 v4, 0x1848, v0, 0
	v_xad_u32 v5, 0x2010, v0, 0
	v_xad_u32 v6, 0x2850, v0, 0
	v_xad_u32 v7, 0x3018, v0, 0
	v_xad_u32 v8, 0x3858, v0, 0
	ds_load_b64 v[32:33], v1
	ds_load_b64 v[30:31], v2
	ds_load_b64 v[28:29], v3
	ds_load_b64 v[26:27], v4
	ds_load_b64 v[24:25], v5
	ds_load_b64 v[22:23], v6
	ds_load_b64 v[20:21], v7
	ds_load_b64 v[18:19], v8
	v_xad_u32 v1, 0x4020, v0, 0
	v_xad_u32 v2, 0x4860, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x5868, v0, 0
	v_xad_u32 v5, 0x6030, v0, 0
	v_xad_u32 v16, 0x6870, v0, 0
	v_xad_u32 v36, 0x7038, v0, 0
	v_xad_u32 v0, 0x7878, v0, 0
	ds_load_b64 v[14:15], v1
	ds_load_b64 v[12:13], v2
	ds_load_b64 v[10:11], v3
	ds_load_b64 v[8:9], v4
	ds_load_b64 v[6:7], v5
	ds_load_b64 v[4:5], v16
	ds_load_b64 v[2:3], v36
	ds_load_b64 v[0:1], v0
.LBB0_12:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v36, v37, v32
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s35, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_14:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v36, v37, v30
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 1, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_16:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v36, v37, v28
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(8)
	v_mad_u64_u32 v[34:35], null, s35, 3, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_18:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v26
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 2, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_20:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v24
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 5, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_22:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v22
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 6, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_24:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v20
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 7, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_26:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v18
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 3, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_28:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v36, v37, v14
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 9, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_30:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v36, v37, v12
	global_atomic_cmpswap_b32 v14, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v14, v37
	v_mov_b32_e32 v37, v14
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 10, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_32:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v36, v37, v10
	global_atomic_cmpswap_b32 v12, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v37
	v_mov_b32_e32 v37, v12
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 11, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_34:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v36, v37, v8
	global_atomic_cmpswap_b32 v10, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v10, v37
	v_mov_b32_e32 v37, v10
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 12, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_36:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v36, v37, v6
	global_atomic_cmpswap_b32 v8, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v37
	v_mov_b32_e32 v37, v8
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 13, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_38:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v36, v37, v4
	global_atomic_cmpswap_b32 v6, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v6, v37
	v_mov_b32_e32 v37, v6
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 14, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_40:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v36, v37, v2
	global_atomic_cmpswap_b32 v4, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v37
	v_mov_b32_e32 v37, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 15, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_42:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v36, v37, v0
	global_atomic_cmpswap_b32 v2, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v37
	v_mov_b32_e32 v37, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s33, v17
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s0, v34
	v_add_co_ci_u32_e64 v35, null, s1, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_44:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v33
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s35, 17, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s0, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s1, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_46:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v31
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[30:31], null, s35, 18, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v31, 31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[30:31], 2, v[30:31]
	v_add_co_u32 v30, vcc_lo, s0, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v31, null, s1, v31, vcc_lo
	global_load_b32 v33, v[30:31], off
.LBB0_48:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v29
	global_atomic_cmpswap_b32 v0, v[30:31], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 19, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s0, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s1, v29, vcc_lo
	global_load_b32 v31, v[28:29], off
.LBB0_50:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v30, v31, v27
	global_atomic_cmpswap_b32 v0, v[28:29], v[30:31], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v31
	v_mov_b32_e32 v31, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[26:27], null, s35, 20, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v27, 31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	v_add_co_u32 v26, vcc_lo, s0, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v27, null, s1, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_52:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v25
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 21, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s1, v25, vcc_lo
	global_load_b32 v27, v[24:25], off
.LBB0_54:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v23
	global_atomic_cmpswap_b32 v0, v[24:25], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[22:23], null, s35, 22, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v23, 31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	v_add_co_u32 v22, vcc_lo, s0, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s1, v23, vcc_lo
	global_load_b32 v25, v[22:23], off
.LBB0_56:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v21
	global_atomic_cmpswap_b32 v0, v[22:23], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 23, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s1, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_58:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v22, v23, v19
	global_atomic_cmpswap_b32 v0, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v23
	v_mov_b32_e32 v23, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 24, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_60:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v15
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 25, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s0, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s1, v15, vcc_lo
	global_load_b32 v19, v[14:15], off
.LBB0_62:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 26, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_64:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 27, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_66:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 28, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_68:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 29, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_70:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s35, 30, v[17:18]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s1, v5, vcc_lo
	global_load_b32 v7, v[4:5], off
.LBB0_72:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v6, v7, v3
	global_atomic_cmpswap_b32 v0, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v7
	v_mov_b32_e32 v7, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s35, 31, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[2:3], off
.LBB0_74:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v1
	global_atomic_cmpswap_b32 v0, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v5
	v_mov_b32_e32 v5, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_74
; %bb.75:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 245
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 245
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15776
; TotalNumSgprs: 48
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 245
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
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
