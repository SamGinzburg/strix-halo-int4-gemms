	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_and_b32_e32 v17, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v61, 4, v0
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
	v_lshl_add_u32 v9, v17, 4, v3
	v_mad_u64_u32 v[10:11], null, s35, 48, v[9:10]
	v_lshl_add_u32 v16, s35, 5, v9
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
	s_add_i32 s3, s12, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s13, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s12, 63
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s14, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s34, s14, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s35, s22
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s40, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s12, s40, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v58, v1, v4, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s3, s2
.Ltmp21:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s13, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 4
	s_add_i32 s12, s34, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s22, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v59, s33, v9
	v_add_nc_u32_e32 v3, s12, v9
	v_add_nc_u32_e32 v4, s12, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s35, 6
	v_add_nc_u32_e32 v5, s12, v10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s41, s22, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s12, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s41, v58
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s12, v59
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v22, s15, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v26, s15, v59
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v15, 0x80000000, v5, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v27, s15, v16
	v_add_nc_u32_e32 v28, s15, v10
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[42:43], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v23, 0x80000000, v7, s3
	s_clause 0x2
	buffer_load_b128 v[4:7], v3, s[24:27], 0 offen
	buffer_load_b128 v[11:14], v8, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v15, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v22, s2
	v_cndmask_b32_e64 v8, 0x80000000, v26, s2
	v_cndmask_b32_e64 v15, 0x80000000, v27, s2
	v_cndmask_b32_e64 v38, 0x80000000, v28, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[44:45], v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4
	buffer_load_b128 v[26:29], v3, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v8, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v15, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v38, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v23, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, 0, v61
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v60, v2, v1
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 48, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v8, 0, v60
	s_waitcnt vmcnt(9)
	ds_store_b64 v8, v[42:43] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v15, v[4:7]
	s_waitcnt vmcnt(6)
	ds_store_b128 v15, v[18:21] offset:12288
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[22:25] offset:4096
	ds_store_b128 v15, v[11:14] offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v8, v[44:45] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v15, v[26:29] offset:16384
	ds_store_b128 v15, v[30:33] offset:20480
	ds_store_b128 v15, v[34:37] offset:24576
	ds_store_b128 v15, v[38:41] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v54, v17, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v15, 0x70, v1
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v56, 16, v54
	v_xor_b32_e32 v57, 32, v54
	v_xor_b32_e32 v55, 48, v54
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr15
.LBB0_3:                                ; %Flow62
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v4, s40, v17
	v_or_b32_e32 v3, s40, v3
	v_and_b32_e32 v50, 0xf0, v0
	s_ashr_i32 s42, s14, 8
	v_or_b32_e32 v52, s34, v0
	v_mul_lo_u32 v53, v4, s42
	v_mul_lo_u32 v51, v3, s42
	v_lshlrev_b32_e32 v11, 2, v50
	v_lshlrev_b32_e32 v13, 1, v0
	v_lshlrev_b32_e32 v14, 5, v0
	v_lshlrev_b32_e32 v12, 1, v50
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s45, s13, 6
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v15, 0x70, v1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 32, v14
	v_lshl_or_b32 v54, v17, 6, v2
	v_and_b32_e32 v19, 28, v13
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v63, 0, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, 0, v11, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_xor_b32_e32 v56, 16, v54
	v_xor_b32_e32 v57, 32, v54
	v_xor_b32_e32 v55, 48, v54
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_add_nc_u32 v62, v20, v19
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v49, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s11, s41, 64
	s_mov_b32 s23, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s43, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
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
	v_add_nc_u32_e32 v64, s15, v54
	v_add_nc_u32_e32 v65, s15, v56
	v_add_nc_u32_e32 v66, s15, v57
	v_add_nc_u32_e32 v67, s15, v55
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s14, 31
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s17, s13, 6
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s15, s15, 24
	s_mov_b32 s16, s12
	s_add_i32 s14, s14, s15
	s_mov_b32 s22, s41
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s41, s11, s17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v68, s16, v15, v17
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s41, s35
	.loc	1 366 40 is_stmt 1              ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v124, v53, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v126, v52, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v125, v51, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v69, s41, v58
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v126, 0x80000000, v126 :: v_dual_cndmask_b32 v125, 0x80000000, v125
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v70, s16, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[168:169], v69, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v181, v124, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v182, v126, s[36:39], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v183, v125, s[28:31], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v71, s16, v59
	v_add_nc_u32_e32 v72, s16, v16
	v_add_nc_u32_e32 v73, s16, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[124:127], v70, s[24:27], 0 offen
	buffer_load_b128 v[128:131], v71, s[24:27], 0 offen
	buffer_load_b128 v[132:135], v72, s[24:27], 0 offen
	buffer_load_b128 v[136:139], v73, s[24:27], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[80:83], v64
	ds_load_b128 v[96:99], v64 offset:1024
	ds_load_b128 v[100:103], v65
	ds_load_b128 v[104:107], v65 offset:1024
	ds_load_b128 v[108:111], v66
	ds_load_b128 v[112:115], v66 offset:1024
	ds_load_b128 v[116:119], v67
	ds_load_b128 v[120:123], v67 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v68 offset:3328
	ds_load_u8 v65, v68 offset:3072
	ds_load_u8 v66, v68 offset:3840
	ds_load_u8 v67, v68 offset:3584
	ds_load_u8 v69, v68 offset:3968
	ds_load_u8 v74, v68 offset:3712
	ds_load_u8 v75, v68 offset:3456
	ds_load_u8 v76, v68 offset:3200
	ds_load_u8 v77, v68 offset:2304
	ds_load_u8 v78, v68 offset:2048
	ds_load_u8 v79, v68 offset:2816
	ds_load_u8 v84, v68 offset:2560
	ds_load_u8 v85, v68 offset:2944
	ds_load_u8 v86, v68 offset:2688
	ds_load_u8 v87, v68 offset:2432
	ds_load_u8 v88, v68 offset:2176
	ds_load_u8 v89, v68 offset:1280
	ds_load_u8 v90, v68 offset:1024
	ds_load_u8 v91, v68 offset:1792
	ds_load_u8 v92, v68 offset:1536
	ds_load_u8 v93, v68 offset:1920
	ds_load_u8 v94, v68 offset:1664
	ds_load_u8 v95, v68 offset:1408
	ds_load_u8 v140, v68 offset:1152
	ds_load_u8 v141, v68 offset:256
	ds_load_u8 v142, v68
	ds_load_u8 v143, v68 offset:768
	ds_load_u8 v144, v68 offset:512
	ds_load_u8 v145, v68 offset:896
	ds_load_u8 v146, v68 offset:640
	ds_load_u8 v147, v68 offset:384
	ds_load_u8 v148, v68 offset:128
	ds_load_u8 v149, v68 offset:7424
	ds_load_u8 v150, v68 offset:7168
	ds_load_u8 v151, v68 offset:7936
	ds_load_u8 v152, v68 offset:7680
	ds_load_u8 v153, v68 offset:8064
	ds_load_u8 v154, v68 offset:7808
	ds_load_u8 v155, v68 offset:7552
	ds_load_u8 v156, v68 offset:7296
	ds_load_u8 v157, v68 offset:6400
	ds_load_u8 v158, v68 offset:6144
	ds_load_u8 v159, v68 offset:6912
	ds_load_u8 v160, v68 offset:6656
	ds_load_u8 v161, v68 offset:7040
	ds_load_u8 v162, v68 offset:6784
	ds_load_u8 v163, v68 offset:6528
	ds_load_u8 v164, v68 offset:6272
	ds_load_u8 v165, v68 offset:5376
	ds_load_u8 v166, v68 offset:5120
	ds_load_u8 v167, v68 offset:5888
	ds_load_u8 v170, v68 offset:5632
	ds_load_u8 v171, v68 offset:6016
	ds_load_u8 v172, v68 offset:5760
	ds_load_u8 v173, v68 offset:5504
	ds_load_u8 v174, v68 offset:5248
	ds_load_u8 v175, v68 offset:4352
	ds_load_u8 v176, v68 offset:4096
	ds_load_u8 v177, v68 offset:4864
	ds_load_u8 v178, v68 offset:4608
	ds_load_u8 v179, v68 offset:4992
	ds_load_u8 v180, v68 offset:4736
	ds_load_u8 v184, v68 offset:4480
	ds_load_u8 v185, v68 offset:4224
	ds_load_u8 v186, v68 offset:11520
	ds_load_u8 v187, v68 offset:11264
	ds_load_u8 v188, v68 offset:12032
	ds_load_u8 v189, v68 offset:11776
	ds_load_u8 v190, v68 offset:12160
	ds_load_u8 v191, v68 offset:11904
	ds_load_u8 v192, v68 offset:11648
	ds_load_u8 v193, v68 offset:11392
	ds_load_u8 v70, v68 offset:10496
	ds_load_u8 v71, v68 offset:10240
	ds_load_u8 v72, v68 offset:11008
	ds_load_u8 v73, v68 offset:10752
	ds_load_u8 v194, v68 offset:11136
	ds_load_u8 v195, v68 offset:10880
	ds_load_u8 v196, v68 offset:10624
	ds_load_u8 v197, v68 offset:10368
	ds_load_u8 v198, v68 offset:9472
	ds_load_u8 v199, v68 offset:9216
	ds_load_u8 v200, v68 offset:9984
	ds_load_u8 v201, v68 offset:9728
	ds_load_u8 v202, v68 offset:10112
	ds_load_u8 v203, v68 offset:9856
	ds_load_u8 v204, v68 offset:9600
	ds_load_u8 v205, v68 offset:9344
	ds_load_u8 v206, v68 offset:8448
	ds_load_u8 v207, v68 offset:8192
	ds_load_u8 v208, v68 offset:8960
	ds_load_u8 v209, v68 offset:8704
	ds_load_u8 v210, v68 offset:9088
	ds_load_u8 v211, v68 offset:8832
	ds_load_u8 v212, v68 offset:8576
	ds_load_u8 v213, v68 offset:8320
	ds_load_u8 v214, v68 offset:15616
	ds_load_u8 v215, v68 offset:15360
	ds_load_u8 v216, v68 offset:16128
	ds_load_u8 v217, v68 offset:15872
	ds_load_u8 v218, v68 offset:16256
	ds_load_u8 v219, v68 offset:16000
	ds_load_u8 v220, v68 offset:15744
	ds_load_u8 v221, v68 offset:15488
	ds_load_u8 v222, v68 offset:14592
	ds_load_u8 v223, v68 offset:14336
	ds_load_u8 v224, v68 offset:15104
	ds_load_u8 v225, v68 offset:14848
	ds_load_u8 v226, v68 offset:15232
	ds_load_u8 v227, v68 offset:14976
	ds_load_u8 v228, v68 offset:14720
	ds_load_u8 v229, v68 offset:14464
	ds_load_u8 v230, v68 offset:13568
	ds_load_u8 v231, v68 offset:13312
	ds_load_u8 v232, v68 offset:14080
	ds_load_u8 v233, v68 offset:13824
	ds_load_u8 v234, v68 offset:14208
	ds_load_u8 v235, v68 offset:13952
	ds_load_u8 v236, v68 offset:13696
	ds_load_u8 v237, v68 offset:13440
	ds_load_u8 v238, v68 offset:12544
	ds_load_u8 v239, v68 offset:12288
	ds_load_u8 v240, v68 offset:13056
	ds_load_u8 v241, v68 offset:12800
	ds_load_u8 v242, v68 offset:13184
	ds_load_u8 v243, v68 offset:12928
	ds_load_u8 v244, v68 offset:12672
	ds_load_u8 v68, v68 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v65, v67, v66, 0xc0c0004
	v_perm_b32 v66, v78, v77, 0xc0c0004
	v_perm_b32 v67, v84, v79, 0xc0c0004
	v_perm_b32 v77, v90, v89, 0xc0c0004
	v_perm_b32 v78, v92, v91, 0xc0c0004
	v_perm_b32 v79, v142, v141, 0xc0c0004
	v_perm_b32 v84, v144, v143, 0xc0c0004
	v_perm_b32 v92, v150, v149, 0xc0c0004
	v_perm_b32 v141, v152, v151, 0xc0c0004
	v_perm_b32 v142, v158, v157, 0xc0c0004
	v_perm_b32 v144, v160, v159, 0xc0c0004
	v_perm_b32 v149, v166, v165, 0xc0c0004
	v_perm_b32 v150, v170, v167, 0xc0c0004
	v_perm_b32 v151, v176, v175, 0xc0c0004
	v_perm_b32 v152, v178, v177, 0xc0c0004
	v_perm_b32 v157, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v158, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v71, v73, v72, 0xc0c0004
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v69, v74, v69, 0xc0c0004
	v_perm_b32 v74, v88, v87, 0xc0c0004
	v_perm_b32 v76, v86, v85, 0xc0c0004
	v_perm_b32 v85, v140, v95, 0xc0c0004
	v_perm_b32 v86, v94, v93, 0xc0c0004
	v_perm_b32 v87, v148, v147, 0xc0c0004
	v_perm_b32 v93, v146, v145, 0xc0c0004
	v_perm_b32 v94, v156, v155, 0xc0c0004
	v_perm_b32 v156, v164, v163, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v163, v172, v171, 0xc0c0004
	v_perm_b32 v164, v185, v184, 0xc0c0004
	v_perm_b32 v171, v180, v179, 0xc0c0004
	v_perm_b32 v172, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v244, 0xc0c0004
	v_perm_b32 v193, v243, v242, 0xc0c0004
	v_lshl_or_b32 v91, v65, 16, v64
	v_lshl_or_b32 v90, v67, 16, v66
	v_lshl_or_b32 v89, v78, 16, v77
	v_lshl_or_b32 v88, v84, 16, v79
	v_perm_b32 v72, v199, v198, 0xc0c0004
	v_perm_b32 v73, v201, v200, 0xc0c0004
	v_perm_b32 v159, v207, v206, 0xc0c0004
	v_perm_b32 v160, v209, v208, 0xc0c0004
	v_perm_b32 v95, v154, v153, 0xc0c0004
	v_perm_b32 v162, v174, v173, 0xc0c0004
	v_lshl_or_b32 v143, v141, 16, v92
	v_lshl_or_b32 v142, v144, 16, v142
	v_lshl_or_b32 v141, v150, 16, v149
	v_lshl_or_b32 v140, v152, 16, v151
	v_lshl_or_b32 v147, v158, 16, v157
	v_lshl_or_b32 v146, v71, 16, v70
	v_lshl_or_b32 v155, v69, 16, v75
	v_lshl_or_b32 v154, v76, 16, v74
	v_lshl_or_b32 v153, v86, 16, v85
	v_lshl_or_b32 v152, v93, 16, v87
	v_lshl_or_b32 v158, v161, 16, v156
	v_lshl_or_b32 v156, v171, 16, v164
	v_lshl_or_b32 v164, v193, 16, v68
	v_wmma_i32_16x16x16_iu8 v[64:71], v[88:91], v[80:83], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v165, v215, v214, 0xc0c0004
	v_perm_b32 v166, v217, v216, 0xc0c0004
	v_perm_b32 v167, v223, v222, 0xc0c0004
	v_perm_b32 v170, v225, v224, 0xc0c0004
	v_perm_b32 v175, v231, v230, 0xc0c0004
	v_perm_b32 v176, v233, v232, 0xc0c0004
	v_perm_b32 v177, v239, v238, 0xc0c0004
	v_perm_b32 v178, v241, v240, 0xc0c0004
	v_perm_b32 v173, v191, v190, 0xc0c0004
	v_perm_b32 v174, v197, v196, 0xc0c0004
	v_perm_b32 v179, v195, v194, 0xc0c0004
	v_perm_b32 v180, v205, v204, 0xc0c0004
	v_perm_b32 v184, v203, v202, 0xc0c0004
	v_perm_b32 v185, v213, v212, 0xc0c0004
	v_perm_b32 v186, v211, v210, 0xc0c0004
	v_lshl_or_b32 v145, v73, 16, v72
	v_lshl_or_b32 v144, v160, 16, v159
	v_lshl_or_b32 v159, v95, 16, v94
	v_lshl_or_b32 v157, v163, 16, v162
	v_wmma_i32_16x16x16_iu8 v[72:79], v[152:155], v[80:83], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[140:143], v[100:103], v[64:71] neg_lo:[1,1,0]
	v_perm_b32 v187, v221, v220, 0xc0c0004
	v_perm_b32 v188, v219, v218, 0xc0c0004
	v_perm_b32 v189, v229, v228, 0xc0c0004
	v_perm_b32 v190, v227, v226, 0xc0c0004
	v_perm_b32 v191, v237, v236, 0xc0c0004
	v_perm_b32 v192, v235, v234, 0xc0c0004
	v_lshl_or_b32 v151, v166, 16, v165
	v_lshl_or_b32 v150, v170, 16, v167
	v_lshl_or_b32 v149, v176, 16, v175
	v_lshl_or_b32 v148, v178, 16, v177
	v_lshl_or_b32 v163, v173, 16, v172
	v_lshl_or_b32 v162, v179, 16, v174
	v_lshl_or_b32 v161, v184, 16, v180
	v_lshl_or_b32 v160, v186, 16, v185
	v_wmma_i32_16x16x16_iu8 v[80:87], v[88:91], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[152:155], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[156:159], v[100:103], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[144:147], v[108:111], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v188, 16, v187
	v_lshl_or_b32 v166, v190, 16, v189
	v_lshl_or_b32 v165, v192, 16, v191
	v_wmma_i32_16x16x16_iu8 v[80:87], v[140:143], v[104:107], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[156:159], v[104:107], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[160:163], v[108:111], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[148:151], v[116:119], v[64:71] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s23, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[80:87], v[144:147], v[112:115], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[160:163], v[112:115], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[164:167], v[116:119], v[72:79] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v99, v67
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v98, v66
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
	v_cvt_f32_i32_e32 v110, v78
	v_cvt_f32_i32_e32 v111, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[80:87], v[148:151], v[120:123], v[80:87] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s23, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[88:95], v[164:167], v[120:123], v[88:95] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s15, s23, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s16, s23, 14
	s_mov_b32 s12, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s15, s15, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s44, s16, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s10, s43
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s43, s15, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s45
	s_mov_b32 s13, s14
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v112, 16, v181
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v182
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v113, 16, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v62, v64 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v63 offset:36864
	ds_load_b128 v[68:71], v63 offset:36880
	ds_load_b128 v[72:75], v63 offset:37376
	ds_load_b128 v[76:79], v63 offset:37392
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v245, s15, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v117, v67, v112
	v_mul_f32_e32 v67, v67, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v21, v117, v99 :: v_dual_add_nc_u32 v246, s44, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v121, v71, v112
	v_mul_f32_e32 v114, v64, v112
	v_mul_f32_e32 v115, v65, v112
	v_mul_f32_e32 v116, v66, v112
	v_mul_f32_e32 v118, v68, v112
	v_mul_f32_e32 v119, v69, v112
	v_mul_f32_e32 v120, v70, v112
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v122, v72, v112
	v_mul_f32_e32 v123, v73, v112
	v_dual_mul_f32 v140, v74, v112 :: v_dual_mul_f32 v69, v69, v113
	v_dual_mul_f32 v141, v75, v112 :: v_dual_mul_f32 v68, v68, v113
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v142, v76, v112 :: v_dual_mul_f32 v71, v71, v113
	v_dual_mul_f32 v143, v77, v112 :: v_dual_mul_f32 v70, v70, v113
	v_dual_mul_f32 v144, v78, v112 :: v_dual_mul_f32 v73, v73, v113
	v_dual_mul_f32 v112, v79, v112 :: v_dual_mul_f32 v77, v77, v113
	v_mul_f32_e32 v64, v64, v113
	v_mul_f32_e32 v65, v65, v113
	v_mul_f32_e32 v66, v66, v113
	v_dual_mul_f32 v72, v72, v113 :: v_dual_fmac_f32 v25, v121, v103
	v_dual_mul_f32 v74, v74, v113 :: v_dual_fmac_f32 v29, v141, v107
	v_dual_mul_f32 v75, v75, v113 :: v_dual_fmac_f32 v18, v114, v96
	v_dual_mul_f32 v76, v76, v113 :: v_dual_fmac_f32 v37, v67, v83
	v_dual_mul_f32 v78, v78, v113 :: v_dual_fmac_f32 v33, v112, v111
	v_dual_mul_f32 v79, v79, v113 :: v_dual_fmac_f32 v20, v116, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v19, v115, v97 :: v_dual_fmac_f32 v22, v118, v100
	v_dual_fmac_f32 v23, v119, v101 :: v_dual_fmac_f32 v24, v120, v102
	v_dual_fmac_f32 v26, v122, v104 :: v_dual_fmac_f32 v27, v123, v105
	v_dual_fmac_f32 v28, v140, v106 :: v_dual_fmac_f32 v31, v143, v109
	v_dual_fmac_f32 v30, v142, v108 :: v_dual_fmac_f32 v35, v65, v81
	v_dual_fmac_f32 v32, v144, v110 :: v_dual_fmac_f32 v39, v69, v85
	v_dual_fmac_f32 v34, v64, v80 :: v_dual_fmac_f32 v41, v71, v87
	v_dual_fmac_f32 v36, v66, v82 :: v_dual_fmac_f32 v43, v72, v88
	v_dual_fmac_f32 v38, v68, v84 :: v_dual_fmac_f32 v45, v74, v90
	v_dual_fmac_f32 v40, v70, v86 :: v_dual_fmac_f32 v47, v76, v92
	v_dual_fmac_f32 v44, v73, v89 :: v_dual_fmac_f32 v49, v78, v94
	v_fmac_f32_e32 v46, v75, v91
	v_fmac_f32_e32 v48, v77, v93
	v_fmac_f32_e32 v42, v79, v95
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v245, v[168:169] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v246, v[124:127]
	s_waitcnt vmcnt(2)
	ds_store_b128 v246, v[128:131] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v246, v[132:135] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v246, v[136:139] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s43, 0, 0x8800
	s_add_i32 s44, 0, 0x4000
.LBB0_7:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v95, v15, v17
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s12, v95
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
	v_add_nc_u32_e32 v1, s10, v57
	v_add_nc_u32_e32 v2, s10, v56
	ds_load_b128 v[59:62], v1 offset:1024
	ds_load_b128 v[63:66], v1
	ds_load_b128 v[96:99], v2 offset:1024
	ds_load_b128 v[85:88], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v9 offset:2304
	ds_load_u8 v2, v9 offset:2048
	ds_load_u8 v8, v9 offset:2816
	ds_load_u8 v15, v9 offset:2560
	ds_load_u8 v16, v9 offset:1280
	ds_load_u8 v67, v9 offset:1024
	ds_load_u8 v68, v9 offset:1792
	ds_load_u8 v69, v9 offset:1536
	ds_load_u8 v77, v9 offset:3968
	ds_load_u8 v78, v9 offset:3712
	ds_load_u8 v79, v9 offset:3456
	ds_load_u8 v80, v9 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v7, s10, v54
	v_add_nc_u32_e32 v10, s10, v55
	ds_load_b128 v[100:103], v7 offset:1024
	ds_load_b128 v[89:92], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	ds_load_u8 v5, v9 offset:256
	ds_load_u8 v6, v9
	ds_load_u8 v70, v9 offset:768
	ds_load_u8 v71, v9 offset:512
	ds_load_u8 v81, v9 offset:2944
	ds_load_u8 v82, v9 offset:2688
	ds_load_u8 v83, v9 offset:2432
	ds_load_u8 v84, v9 offset:2176
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v15, v8, 0xc0c0004
	v_lshl_or_b32 v107, v4, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v67, v16, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v16, v69, v68, 0xc0c0004
	v_lshl_or_b32 v106, v2, 16, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v105, v16, 16, v8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	v_lshl_or_b32 v104, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	ds_load_u8 v73, v9 offset:6400
	ds_load_u8 v74, v9 offset:6144
	ds_load_u8 v75, v9 offset:6912
	ds_load_u8 v76, v9 offset:6656
	ds_load_u8 v108, v9 offset:5376
	ds_load_u8 v109, v9 offset:5120
	ds_load_u8 v110, v9 offset:5888
	ds_load_u8 v111, v9 offset:5632
	ds_load_u8 v112, v9 offset:4352
	ds_load_u8 v113, v9 offset:4096
	ds_load_u8 v114, v9 offset:4864
	ds_load_u8 v115, v9 offset:4608
	ds_load_u8 v126, v9 offset:8064
	ds_load_u8 v132, v9 offset:7808
	ds_load_u8 v133, v9 offset:7552
	ds_load_u8 v134, v9 offset:7296
	ds_load_u8 v69, v9 offset:7424
	ds_load_u8 v70, v9 offset:7168
	ds_load_u8 v71, v9 offset:7936
	ds_load_u8 v72, v9 offset:7680
	ds_load_u8 v15, v9 offset:1920
	ds_load_u8 v93, v9 offset:1664
	ds_load_u8 v94, v9 offset:1408
	ds_load_u8 v124, v9 offset:1152
	ds_load_u8 v16, v9 offset:896
	ds_load_u8 v67, v9 offset:640
	ds_load_u8 v68, v9 offset:384
	ds_load_u8 v125, v9 offset:128
	ds_load_u8 v135, v9 offset:7040
	ds_load_u8 v136, v9 offset:6784
	ds_load_u8 v137, v9 offset:6528
	ds_load_u8 v138, v9 offset:6272
	ds_load_u8 v139, v9 offset:6016
	ds_load_u8 v140, v9 offset:5760
	ds_load_u8 v141, v9 offset:5504
	ds_load_u8 v142, v9 offset:5248
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v118, v74, v73, 0xc0c0004
	ds_load_u8 v143, v9 offset:4992
	ds_load_u8 v144, v9 offset:4736
	ds_load_u8 v145, v9 offset:4480
	ds_load_u8 v146, v9 offset:4224
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v119, v76, v75, 0xc0c0004
	ds_load_u8 v155, v9 offset:10112
	ds_load_u8 v156, v9 offset:9856
	ds_load_u8 v157, v9 offset:9600
	ds_load_u8 v158, v9 offset:9344
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_mov_b32_e32 v3, s14
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	v_lshl_or_b32 v110, v119, 16, v118
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_mov_b32_e32 v4, s15
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v113, v115, v114, 0xc0c0004
	ds_load_u8 v114, v9 offset:11520
	ds_load_u8 v115, v9 offset:11264
	ds_load_u8 v120, v9 offset:12032
	ds_load_u8 v121, v9 offset:11776
	v_lshl_or_b32 v109, v109, 16, v108
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v116, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v15, v93, v15, 0xc0c0004
	v_perm_b32 v117, v72, v71, 0xc0c0004
	v_lshl_or_b32 v108, v113, 16, v112
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v81, v124, v94, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v68, v125, v68, 0xc0c0004
	v_perm_b32 v16, v67, v16, 0xc0c0004
	v_lshl_or_b32 v111, v117, 16, v116
	ds_load_u8 v112, v9 offset:10496
	ds_load_u8 v113, v9 offset:10240
	ds_load_u8 v116, v9 offset:11008
	ds_load_u8 v117, v9 offset:10752
	ds_load_u8 v118, v9 offset:9472
	ds_load_u8 v119, v9 offset:9216
	ds_load_u8 v122, v9 offset:9984
	ds_load_u8 v123, v9 offset:9728
	ds_load_u8 v147, v9 offset:12160
	ds_load_u8 v148, v9 offset:11904
	ds_load_u8 v149, v9 offset:11648
	ds_load_u8 v150, v9 offset:11392
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v93, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v94, v142, v141, 0xc0c0004
	v_perm_b32 v124, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v125, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v121, v120, 0xc0c0004
	ds_load_u8 v120, v9 offset:8448
	ds_load_u8 v121, v9 offset:8192
	ds_load_u8 v127, v9 offset:8960
	ds_load_u8 v128, v9 offset:8704
	ds_load_u8 v151, v9 offset:11136
	ds_load_u8 v152, v9 offset:10880
	ds_load_u8 v153, v9 offset:10624
	ds_load_u8 v154, v9 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v113, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v119, v118, 0xc0c0004
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v123, v122, 0xc0c0004
	ds_load_u8 v118, v9 offset:15616
	ds_load_u8 v119, v9 offset:15360
	ds_load_u8 v122, v9 offset:16128
	ds_load_u8 v123, v9 offset:15872
	ds_load_u8 v159, v9 offset:9088
	ds_load_u8 v160, v9 offset:8832
	ds_load_u8 v161, v9 offset:8576
	ds_load_u8 v162, v9 offset:8320
	v_lshl_or_b32 v114, v113, 16, v112
	v_wmma_i32_16x16x16_iu8 v[69:76], v[104:107], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v117, 16, v116
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[108:111], v[85:88], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v121, v128, v127, 0xc0c0004
	ds_load_u8 v128, v9 offset:14592
	ds_load_u8 v129, v9 offset:14336
	ds_load_u8 v130, v9 offset:15104
	ds_load_u8 v131, v9 offset:14848
	ds_load_u8 v163, v9 offset:16256
	ds_load_u8 v164, v9 offset:16000
	ds_load_u8 v165, v9 offset:15744
	ds_load_u8 v166, v9 offset:15488
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v127, v119, v118, 0xc0c0004
	v_lshl_or_b32 v112, v121, 16, v120
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v123, v122, 0xc0c0004
	ds_load_u8 v168, v9 offset:13568
	ds_load_u8 v169, v9 offset:13312
	ds_load_u8 v170, v9 offset:14080
	ds_load_u8 v171, v9 offset:13824
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[116:119], v10 offset:1024
	ds_load_b128 v[120:123], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v9 offset:12544
	ds_load_u8 v172, v9 offset:12288
	v_wmma_i32_16x16x16_iu8 v[69:76], v[112:115], v[63:66], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v127, v167, 16, v127
	ds_load_u8 v167, v9 offset:15232
	ds_load_u8 v173, v9 offset:14976
	ds_load_u8 v174, v9 offset:14720
	ds_load_u8 v175, v9 offset:14464
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v176, v129, v128, 0xc0c0004
	ds_load_u8 v128, v9 offset:13056
	ds_load_u8 v129, v9 offset:12800
	ds_load_u8 v178, v9 offset:14208
	ds_load_u8 v179, v9 offset:13952
	ds_load_u8 v180, v9 offset:13696
	ds_load_u8 v181, v9 offset:13440
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v177, v131, v130, 0xc0c0004
	v_lshl_or_b32 v131, v77, 16, v79
	v_lshl_or_b32 v130, v80, 16, v78
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v169, v171, v170, 0xc0c0004
	ds_load_u8 v170, v9 offset:13184
	ds_load_u8 v171, v9 offset:12928
	ds_load_u8 v182, v9 offset:12672
	ds_load_u8 v9, v9 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v172, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v129, v128, 0xc0c0004
	v_lshl_or_b32 v129, v15, 16, v81
	v_lshl_or_b32 v128, v16, 16, v68
	v_perm_b32 v15, v134, v133, 0xc0c0004
	v_perm_b32 v16, v132, v126, 0xc0c0004
	v_perm_b32 v68, v138, v137, 0xc0c0004
	v_perm_b32 v126, v144, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[77:84], v[128:131], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v135, v16, 16, v15
	v_lshl_or_b32 v134, v93, 16, v68
	v_lshl_or_b32 v133, v124, 16, v94
	v_lshl_or_b32 v132, v126, 16, v125
	v_perm_b32 v15, v150, v149, 0xc0c0004
	v_perm_b32 v16, v148, v147, 0xc0c0004
	v_perm_b32 v68, v154, v153, 0xc0c0004
	v_perm_b32 v89, v152, v151, 0xc0c0004
	v_perm_b32 v90, v158, v157, 0xc0c0004
	v_perm_b32 v91, v156, v155, 0xc0c0004
	v_perm_b32 v92, v162, v161, 0xc0c0004
	v_perm_b32 v93, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[77:84], v[132:135], v[85:88], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v16, 16, v15
	v_lshl_or_b32 v138, v89, 16, v68
	v_lshl_or_b32 v137, v91, 16, v90
	v_lshl_or_b32 v136, v93, 16, v92
	v_perm_b32 v15, v166, v165, 0xc0c0004
	v_perm_b32 v16, v164, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[85:92], v[104:107], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[128:131], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v67, 16, v10
	v_wmma_i32_16x16x16_iu8 v[77:84], v[136:139], v[63:66], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v16, 16, v15
	v_perm_b32 v10, v175, v174, 0xc0c0004
	v_perm_b32 v15, v173, v167, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v181, v180, 0xc0c0004
	v_perm_b32 v63, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v182, 0xc0c0004
	v_perm_b32 v67, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[85:92], v[108:111], v[96:99], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[132:135], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v177, 16, v176
	v_lshl_or_b32 v125, v169, 16, v168
	v_lshl_or_b32 v65, v15, 16, v10
	v_lshl_or_b32 v64, v63, 16, v16
	v_lshl_or_b32 v63, v67, 16, v9
	v_wmma_i32_16x16x16_iu8 v[85:92], v[112:115], v[59:62], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[136:139], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[124:127], v[120:123], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[63:66], v[120:123], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[124:127], v[116:119], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[63:66], v[116:119], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v59, v70
	v_cvt_f32_i32_e32 v60, v71
	v_cvt_f32_i32_e32 v61, v72
	v_cvt_f32_i32_e32 v62, v73
	v_cvt_f32_i32_e32 v63, v74
	v_cvt_f32_i32_e32 v64, v75
	v_cvt_f32_i32_e32 v65, v76
	v_cvt_f32_i32_e32 v66, v77
	v_cvt_f32_i32_e32 v67, v78
	v_cvt_f32_i32_e32 v68, v79
	v_cvt_f32_i32_e32 v70, v80
	v_cvt_f32_i32_e32 v71, v81
	v_cvt_f32_i32_e32 v72, v82
	v_cvt_f32_i32_e32 v73, v83
	v_cvt_f32_i32_e32 v74, v84
	v_cvt_f32_i32_e32 v75, v85
	v_cvt_f32_i32_e32 v76, v86
	v_cvt_f32_i32_e32 v77, v87
	v_cvt_f32_i32_e32 v78, v88
	v_cvt_f32_i32_e32 v79, v89
	v_cvt_f32_i32_e32 v80, v90
	v_cvt_f32_i32_e32 v81, v91
	v_cvt_f32_i32_e32 v82, v92
	v_cvt_f32_i32_e32 v83, v1
	v_cvt_f32_i32_e32 v84, v2
	v_cvt_f32_i32_e32 v85, v3
	v_cvt_f32_i32_e32 v86, v4
	v_cvt_f32_i32_e32 v87, v5
	v_cvt_f32_i32_e32 v88, v6
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v90, v8
	v_cvt_f32_i32_e32 v69, v69
.LBB0_9:
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
	s_cmp_lt_i32 s4, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v53, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v52, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v51, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v96, 0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x1
	buffer_load_u16 v93, v1, s[8:11], 0 offen
	buffer_load_u16 v94, v3, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v3, 32, v14
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v1, 28, v13
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v91, 0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v3, 0, v11, v3
	v_mov_b32_e32 v101, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v92, v3, v1
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v125, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v92, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v91 offset:36864
	ds_load_b128 v[5:8], v91 offset:36880
	ds_load_b128 v[9:12], v91 offset:37376
	ds_load_b128 v[13:16], v91 offset:37392
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v58, s44, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v97, v58 offset:3328
	ds_load_u8 v98, v58 offset:3072
	ds_load_u8 v99, v58 offset:3840
	ds_load_u8 v100, v58 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v95, s43, v57
	v_add_nc_u32_e32 v96, s43, v56
	v_add_nc_u32_e32 v103, s43, v55
	v_add_nc_u32_e32 v101, s43, v54
	ds_load_b128 v[54:57], v95 offset:1024
	ds_load_b128 v[111:114], v95
	ds_load_b128 v[127:130], v96 offset:1024
	ds_load_b128 v[115:118], v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v95, v58 offset:2304
	ds_load_u8 v96, v58 offset:2048
	ds_load_u8 v102, v58 offset:2816
	ds_load_u8 v104, v58 offset:2560
	ds_load_u8 v105, v58 offset:1280
	ds_load_u8 v106, v58 offset:1024
	ds_load_u8 v107, v58 offset:1792
	ds_load_u8 v108, v58 offset:1536
	ds_load_u8 v109, v58 offset:3968
	ds_load_u8 v110, v58 offset:3712
	ds_load_u8 v159, v58 offset:3456
	ds_load_u8 v160, v58 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v104, v102, 0xc0c0004
	v_perm_b32 v98, v100, v99, 0xc0c0004
	ds_load_u8 v99, v58 offset:256
	ds_load_u8 v100, v58
	ds_load_u8 v119, v58 offset:768
	ds_load_u8 v120, v58 offset:512
	ds_load_u8 v161, v58 offset:2944
	ds_load_u8 v163, v58 offset:2688
	ds_load_u8 v164, v58 offset:2432
	ds_load_u8 v165, v58 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v102, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v108, v107, 0xc0c0004
	v_lshl_or_b32 v141, v96, 16, v95
	v_lshl_or_b32 v142, v98, 16, v97
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_lshl_or_b32 v140, v105, 16, v102
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v120, v119, 0xc0c0004
	v_dual_mov_b32 v126, s19 :: v_dual_mov_b32 v125, s18
	ds_load_u8 v97, v58 offset:7424
	ds_load_u8 v98, v58 offset:7168
	ds_load_u8 v99, v58 offset:7936
	ds_load_u8 v100, v58 offset:7680
	v_mov_b32_e32 v122, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[131:134], v101 offset:1024
	ds_load_b128 v[135:138], v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v139, v96, 16, v95
	ds_load_u8 v95, v58 offset:6400
	ds_load_u8 v96, v58 offset:6144
	ds_load_u8 v101, v58 offset:6912
	ds_load_u8 v102, v58 offset:6656
	ds_load_u8 v143, v58 offset:5376
	ds_load_u8 v144, v58 offset:5120
	ds_load_u8 v145, v58 offset:5888
	ds_load_u8 v146, v58 offset:5632
	ds_load_u8 v147, v58 offset:4352
	ds_load_u8 v148, v58 offset:4096
	ds_load_u8 v149, v58 offset:4864
	ds_load_u8 v150, v58 offset:4608
	ds_load_u8 v169, v58 offset:8064
	ds_load_u8 v170, v58 offset:7808
	ds_load_u8 v171, v58 offset:7552
	ds_load_u8 v172, v58 offset:7296
	ds_load_u8 v104, v58 offset:1920
	ds_load_u8 v166, v58 offset:1664
	ds_load_u8 v167, v58 offset:1408
	ds_load_u8 v168, v58 offset:1152
	ds_load_u8 v105, v58 offset:896
	ds_load_u8 v106, v58 offset:640
	ds_load_u8 v107, v58 offset:384
	ds_load_u8 v108, v58 offset:128
	v_mov_b32_e32 v124, s17
	ds_load_u8 v173, v58 offset:7040
	ds_load_u8 v174, v58 offset:6784
	ds_load_u8 v175, v58 offset:6528
	ds_load_u8 v176, v58 offset:6272
	ds_load_u8 v177, v58 offset:6016
	ds_load_u8 v178, v58 offset:5760
	ds_load_u8 v179, v58 offset:5504
	ds_load_u8 v180, v58 offset:5248
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v153, v96, v95, 0xc0c0004
	ds_load_u8 v181, v58 offset:4992
	ds_load_u8 v182, v58 offset:4736
	ds_load_u8 v183, v58 offset:4480
	ds_load_u8 v184, v58 offset:4224
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v154, v102, v101, 0xc0c0004
	ds_load_u8 v194, v58 offset:10112
	ds_load_u8 v195, v58 offset:9856
	ds_load_u8 v196, v58 offset:9600
	ds_load_u8 v197, v58 offset:9344
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v110, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v144, v146, v145, 0xc0c0004
	v_lshl_or_b32 v145, v154, 16, v153
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v151, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v148, v150, v149, 0xc0c0004
	ds_load_u8 v149, v58 offset:11520
	ds_load_u8 v150, v58 offset:11264
	ds_load_u8 v155, v58 offset:12032
	ds_load_u8 v156, v58 offset:11776
	v_perm_b32 v152, v100, v99, 0xc0c0004
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v104, v166, v104, 0xc0c0004
	v_lshl_or_b32 v143, v148, 16, v147
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_lshl_or_b32 v146, v152, 16, v151
	ds_load_u8 v147, v58 offset:10496
	ds_load_u8 v148, v58 offset:10240
	ds_load_u8 v151, v58 offset:11008
	ds_load_u8 v152, v58 offset:10752
	ds_load_u8 v153, v58 offset:9472
	ds_load_u8 v154, v58 offset:9216
	ds_load_u8 v157, v58 offset:9984
	ds_load_u8 v158, v58 offset:9728
	ds_load_u8 v185, v58 offset:12160
	ds_load_u8 v186, v58 offset:11904
	ds_load_u8 v187, v58 offset:11648
	ds_load_u8 v188, v58 offset:11392
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_mov_b32_e32 v123, s16
	v_dual_mov_b32 v121, s14 :: v_dual_mov_b32 v120, s13
	v_mov_b32_e32 v119, s12
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v148, v152, v151, 0xc0c0004
	v_perm_b32 v150, v156, v155, 0xc0c0004
	ds_load_u8 v155, v58 offset:8448
	ds_load_u8 v156, v58 offset:8192
	ds_load_u8 v162, v58 offset:8960
	ds_load_u8 v189, v58 offset:8704
	ds_load_u8 v190, v58 offset:11136
	ds_load_u8 v191, v58 offset:10880
	ds_load_u8 v192, v58 offset:10624
	ds_load_u8 v193, v58 offset:10368
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v151, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v152, v158, v157, 0xc0c0004
	ds_load_u8 v153, v58 offset:15616
	ds_load_u8 v154, v58 offset:15360
	ds_load_u8 v157, v58 offset:16128
	ds_load_u8 v158, v58 offset:15872
	ds_load_u8 v198, v58 offset:9088
	ds_load_u8 v199, v58 offset:8832
	ds_load_u8 v200, v58 offset:8576
	ds_load_u8 v201, v58 offset:8320
	v_lshl_or_b32 v150, v150, 16, v149
	v_lshl_or_b32 v149, v148, 16, v147
	v_wmma_i32_16x16x16_iu8 v[95:102], v[139:142], v[135:138], v[119:126] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v152, 16, v151
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[143:146], v[115:118], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v156, v189, v162, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v154, v153, 0xc0c0004
	ds_load_u8 v189, v58 offset:14592
	ds_load_u8 v202, v58 offset:14336
	ds_load_u8 v203, v58 offset:15104
	ds_load_u8 v204, v58 offset:14848
	ds_load_u8 v205, v58 offset:16256
	ds_load_u8 v206, v58 offset:16000
	ds_load_u8 v207, v58 offset:15744
	ds_load_u8 v208, v58 offset:15488
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v209, v158, v157, 0xc0c0004
	v_lshl_or_b32 v147, v156, 16, v155
	ds_load_u8 v210, v58 offset:13568
	ds_load_u8 v211, v58 offset:13312
	ds_load_u8 v212, v58 offset:14080
	ds_load_u8 v213, v58 offset:13824
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[151:154], v103 offset:1024
	ds_load_b128 v[155:158], v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v103, v58 offset:12544
	ds_load_u8 v214, v58 offset:12288
	v_lshl_or_b32 v162, v209, 16, v162
	ds_load_u8 v209, v58 offset:15232
	ds_load_u8 v215, v58 offset:14976
	ds_load_u8 v216, v58 offset:14720
	ds_load_u8 v217, v58 offset:14464
	v_wmma_i32_16x16x16_iu8 v[95:102], v[147:150], v[111:114], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v189, v202, v189, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v202, v204, v203, 0xc0c0004
	ds_load_u8 v203, v58 offset:13056
	ds_load_u8 v204, v58 offset:12800
	ds_load_u8 v218, v58 offset:14208
	ds_load_u8 v219, v58 offset:13952
	ds_load_u8 v220, v58 offset:13696
	ds_load_u8 v221, v58 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v210, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v211, v213, v212, 0xc0c0004
	ds_load_u8 v212, v58 offset:13184
	ds_load_u8 v213, v58 offset:12928
	ds_load_u8 v222, v58 offset:12672
	ds_load_u8 v58, v58 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v214, v214, v103, 0xc0c0004
	v_perm_b32 v103, v160, v159, 0xc0c0004
	v_perm_b32 v159, v163, v161, 0xc0c0004
	v_perm_b32 v160, v168, v167, 0xc0c0004
	v_lshl_or_b32 v163, v105, 16, v107
	v_perm_b32 v161, v176, v175, 0xc0c0004
	v_lshl_or_b32 v166, v109, 16, v103
	v_lshl_or_b32 v165, v159, 16, v110
	v_lshl_or_b32 v164, v104, 16, v160
	v_perm_b32 v159, v172, v171, 0xc0c0004
	v_perm_b32 v160, v170, v169, 0xc0c0004
	v_perm_b32 v167, v174, v173, 0xc0c0004
	v_perm_b32 v168, v180, v179, 0xc0c0004
	v_perm_b32 v169, v178, v177, 0xc0c0004
	v_perm_b32 v170, v184, v183, 0xc0c0004
	v_perm_b32 v171, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[135:138], v[119:126] neg_lo:[1,1,0]
	v_lshl_or_b32 v138, v160, 16, v159
	v_lshl_or_b32 v137, v167, 16, v161
	v_lshl_or_b32 v136, v169, 16, v168
	v_lshl_or_b32 v135, v171, 16, v170
	v_perm_b32 v159, v188, v187, 0xc0c0004
	v_perm_b32 v160, v186, v185, 0xc0c0004
	v_perm_b32 v161, v193, v192, 0xc0c0004
	v_perm_b32 v167, v191, v190, 0xc0c0004
	v_perm_b32 v168, v197, v196, 0xc0c0004
	v_perm_b32 v171, v195, v194, 0xc0c0004
	v_perm_b32 v172, v201, v200, 0xc0c0004
	v_perm_b32 v173, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[135:138], v[115:118], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v160, 16, v159
	v_lshl_or_b32 v169, v167, 16, v161
	v_lshl_or_b32 v168, v171, 16, v168
	v_lshl_or_b32 v167, v173, 16, v172
	v_perm_b32 v115, v208, v207, 0xc0c0004
	v_perm_b32 v116, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_perm_b32 v171, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[111:114], v[103:110] neg_lo:[1,1,0]
	v_perm_b32 v172, v215, v209, 0xc0c0004
	v_lshl_or_b32 v174, v116, 16, v115
	v_wmma_i32_16x16x16_iu8 v[111:118], v[139:142], v[131:134], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[131:134], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v175, v221, v220, 0xc0c0004
	v_perm_b32 v131, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v222, 0xc0c0004
	v_perm_b32 v132, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[143:146], v[127:130], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[135:138], v[127:130], v[119:126] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v202, 16, v189
	v_lshl_or_b32 v160, v211, 16, v210
	v_lshl_or_b32 v159, v203, 16, v214
	v_lshl_or_b32 v173, v172, 16, v171
	v_lshl_or_b32 v172, v131, 16, v175
	v_lshl_or_b32 v171, v132, 16, v58
	v_wmma_i32_16x16x16_iu8 v[111:118], v[147:150], v[54:57], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[54:57], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[159:162], v[155:158], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[171:174], v[155:158], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[159:162], v[151:154], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[171:174], v[151:154], v[119:126] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v95
	v_cvt_f32_i32_e32 v96, v96
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
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s41, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s41, s4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v17, s35, v17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s42
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v53, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v52, v52, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v51, v51, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v50, 1, v50
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	s_clause 0x1
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v55, v51, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v54, v52, s[20:23], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v51.h, v94.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v52, s33, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.h, v51.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v16, v51
	v_mul_f32_e32 v57, v15, v51
	v_mul_f32_e32 v94, v14, v51
	v_mul_f32_e32 v137, v2, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v140.h, v51.l
	v_mov_b16_e64 v155.h, v51.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v89, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v154.h, v51.l
	v_mov_b16_e64 v156.h, v51.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e64 v158.h, v51.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v57, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v93.h, v51.l
	v_mov_b16_e64 v146.h, v51.l
	v_mov_b16_e64 v157.h, v51.l
	v_mov_b16_e64 v139.h, v51.l
	v_mov_b16_e64 v143.h, v51.l
	v_mov_b16_e64 v142.h, v51.l
	v_mov_b16_e64 v159.h, v51.l
	v_mov_b16_e64 v144.h, v51.l
	v_mov_b16_e64 v145.h, v51.l
	v_mov_b16_e64 v148.h, v51.l
	v_mov_b16_e64 v150.h, v51.l
	v_mov_b16_e64 v147.h, v51.l
	v_mov_b16_e64 v149.h, v51.l
	v_mov_b16_e64 v153.h, v51.l
	v_mov_b16_e64 v152.h, v51.l
	v_mov_b16_e64 v151.h, v51.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s40, s40, s35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v50, s40, s34, v50
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v95, v13, v51
	v_mul_f32_e32 v127, v12, v51
	v_mul_f32_e32 v128, v11, v51
	v_mul_f32_e32 v129, v10, v51
	v_mul_f32_e32 v130, v9, v51
	v_mul_f32_e32 v131, v8, v51
	v_mul_f32_e32 v132, v7, v51
	v_mul_f32_e32 v133, v6, v51
	v_mul_f32_e32 v134, v5, v51
	v_mul_f32_e32 v135, v4, v51
	v_mul_f32_e32 v136, v3, v51
	v_mul_f32_e32 v138, v1, v51
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v51.h, v93.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v94, v88, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v51
	v_mul_f32_e32 v1, v1, v51
	v_mul_f32_e32 v10, v10, v51
	v_mul_f32_e32 v16, v16, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v88, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v7, v64, v24
	v_fma_f32 v64, v1, v69, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v54, 16, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v51
	v_mul_f32_e32 v3, v3, v51
	v_mul_f32_e32 v2, v2, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v90, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v51
	v_mul_f32_e32 v5, v5, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v4, v61, v21
	v_fma_f32 v60, v3, v60, v20
	v_fma_f32 v59, v2, v59, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v92, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v91 offset:36864
	v_mul_f32_e32 v8, v8, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v56, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v6, v63, v23
	v_fma_f32 v62, v5, v62, v22
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v9, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v8, v65, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v91 offset:36880
	v_mul_f32_e32 v12, v12, v51
	v_mul_f32_e32 v11, v11, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v67, v27
	v_fma_f32 v9, v9, v66, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v63, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v15, v51
	v_mul_f32_e32 v13, v13, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v10, s3
	v_cndmask_b32_e64 v26, v26, v9, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v74, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v56, s3
	v_cndmask_b32_e64 v21, v21, v61, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v55, v1, v53
	v_mul_f32_e32 v1, v1, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v70, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v2, v53
	v_mul_f32_e32 v2, v2, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v73, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v16, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v63, v8, v53
	v_mul_f32_e32 v8, v8, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v68, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v12, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v6, v53
	v_mul_f32_e32 v6, v6, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v71, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v11, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[9:12], v91 offset:37376
	v_mul_f32_e32 v14, v14, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v15, s3
	v_cndmask_b32_e64 v30, v30, v13, s3
	v_cndmask_b32_e64 v24, v24, v57, s3
	v_cndmask_b32_e64 v22, v22, v62, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v72, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v60, s3
	v_cndmask_b32_e64 v18, v18, v64, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v5, v53
	v_mul_f32_e32 v62, v7, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v14, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[13:16], v91 offset:37392
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v95, v87, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v59, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v3, v53
	v_mul_f32_e32 v59, v4, v53
	v_mul_f32_e32 v3, v3, v54
	v_mul_f32_e32 v4, v4, v54
	v_mul_f32_e32 v5, v5, v54
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v64, v9, v53
	v_mul_f32_e32 v65, v10, v53
	v_mul_f32_e32 v66, v11, v53
	v_mul_f32_e32 v67, v12, v53
	v_mul_f32_e32 v7, v7, v54
	v_mul_f32_e32 v9, v9, v54
	v_mul_f32_e32 v10, v10, v54
	v_mul_f32_e32 v11, v11, v54
	v_mul_f32_e32 v12, v12, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v138, v75, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v87, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v134, v79, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v68, v13, v53
	v_mul_f32_e32 v69, v14, v53
	v_mul_f32_e32 v70, v15, v53
	v_mul_f32_e32 v53, v16, v53
	v_mul_f32_e32 v13, v13, v54
	v_mul_f32_e32 v14, v14, v54
	v_mul_f32_e32 v15, v15, v54
	v_mul_f32_e32 v16, v16, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v55, v58, v18
	v_fma_f32 v58, v60, v99, v22
	v_fma_f32 v60, v62, v101, v24
	v_fma_f32 v55, v56, v96, v19
	v_fma_f32 v56, v57, v97, v20
	v_fma_f32 v76, v137, v76, v35
	v_fma_f32 v57, v59, v98, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v60, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v128, v85, v45
	v_fma_f32 v82, v131, v82, v41
	v_fma_f32 v78, v135, v78, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v75, s3
	v_cndmask_b32_e64 v20, v20, v56, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v24, v24, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v123, v47
	v_fma_f32 v86, v127, v86, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v79, s3
	v_cndmask_b32_e64 v35, v35, v76, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v61, v100, v23
	v_fma_f32 v62, v64, v103, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v57, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v133, v80, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v85, s3
	v_cndmask_b32_e64 v41, v41, v82, s3
	v_cndmask_b32_e64 v37, v37, v78, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v1, v111, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v47, v13, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v20, v20, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v86, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v63, v102, v25
	v_fma_f32 v63, v65, v104, v27
	v_fma_f32 v65, v67, v106, v29
	v_fma_f32 v2, v2, v112, v35
	v_fma_f32 v5, v5, v115, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v59, s2
	v_cndmask_b32_e64 v26, v26, v62, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v21, v21, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v80, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v69, v108, v31
	v_fma_f32 v4, v4, v114, v37
	v_fma_f32 v8, v8, v118, v41
	v_fma_f32 v11, v11, v121, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v54, s2
	v_cndmask_b32_e64 v1, v34, v1, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v20, 0, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v136, v77, v36
	v_fma_f32 v12, v12, v122, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v65, s2
	v_cndmask_b32_e64 v2, v35, v2, s2
	v_cndmask_b32_e64 v5, v38, v5, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v26, v26, v26
	v_max_f32_e32 v21, 0, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v110, v33
	v_fma_f32 v6, v6, v116, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v67, s2
	v_cndmask_b32_e64 v4, v37, v4, s2
	v_cndmask_b32_e64 v8, v41, v8, s2
	v_cndmask_b32_e64 v11, v45, v11, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v1, v1, v1
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v20, v20, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v77, s3
	v_cndmask_b32_e64 v12, v46, v12, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v2, v2, v2
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v26, 0, v26
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v21, v21, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v129, v84, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v53, s2
	v_cndmask_b32_e64 v6, v39, v6, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v11, v11, v11
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v1, 0, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.l, v20.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v113, v36
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, 0, v5
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v140.l, v21.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v84, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v66, v105, v28
	v_fma_f32 v66, v68, v107, v30
	v_fma_f32 v68, v70, v109, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v55, s2
	v_cndmask_b32_e64 v27, v27, v63, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, 0, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v18, v18, v18 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v141
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v36, v3, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v29, v29, v29
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v120, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v58, s2
	v_cndmask_b32_e64 v32, v32, v68, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v27, v27, v27
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v6, 0, v6
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v4, v4, v4
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v155.l, v1.h
	v_add3_u32 v20, v20, v37, 0x7fff
	v_mov_b16_e64 v154.l, v2.h
	v_add3_u32 v21, v21, v36, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v64, s2
	v_cndmask_b32_e64 v10, v44, v10, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v22, v22, v22
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v3, v3, v3
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v24, 0, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v32, 0, v32
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v156.l, v4.h
	v_mov_b16_e32 v21.l, v20.h
	v_and_b32_e32 v54, 1, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v132, v81, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v154
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v130, v83, v43
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v28, v28, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v125, v49
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v3, 0, v3
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v19, v19, v19 :: v_dual_mul_f32 v24, v24, v24
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v158.l, v6.h
	v_and_b32_e32 v55, 1, v156
	v_add3_u32 v1, v1, v54, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v81, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v53, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v83, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v126, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v49, v15, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v10, 0, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v93.l, v19.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v146.l, v27.h
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v1, v4, v55, 0x7fff
	v_and_b32_e32 v4, 1, v158
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v51.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v117, v40
	v_fma_f32 v9, v9, v119, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v42, v16, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v22, 0, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v93
	v_mov_b16_e64 v157.l, v3.h
	v_and_b32_e32 v42, 1, v146
	v_add3_u32 v4, v6, v4, 0x7fff
	v_and_b32_e32 v6, 1, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v124, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v40, v7, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v28, 0, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v43, v9, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v22, v22, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v139.l, v18.h
	v_add3_u32 v6, v8, v6, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v11, v11 :: v_dual_mul_f32 v11, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v27, v42, 0x7fff
	v_and_b32_e32 v56, 1, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v48, v14, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v7, v7, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_mul_f32 v28, v28, v28
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v16, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v143.l, v22.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v35, 1, v139
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v56, 0x7fff
	v_mov_b16_e32 v12.l, v8.h
	v_mov_b16_e32 v12.h, v51.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v7, 0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v142.l, v23.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v16, 0, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v159.l, v5.h
	v_and_b32_e32 v39, 1, v143
	v_add3_u32 v18, v18, v35, 0x7fff
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v12, 1, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v61, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v142
	v_add3_u32 v19, v19, v34, 0x7fff
	v_mov_b16_e32 v19.l, v18.h
	v_and_b32_e32 v18, 1, v159
	v_add3_u32 v8, v8, v12, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v22, v39, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v66, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v25, v25, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v23, v38, 0x7fff
	v_mov_b16_e32 v22.l, v7.h
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v22.h, v51.l
	v_add3_u32 v3, v5, v18, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v25, 0, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v11.h
	v_mov_b16_e32 v18.h, v51.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v3.h
	v_and_b32_e32 v5, 1, v22
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, 0, v30 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v3, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v145.l, v24.h
	v_add3_u32 v5, v7, v5, 0x7fff
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v7.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v30, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v144.l, v25.h
	v_mov_b16_e32 v6.l, v5.h
	v_mov_b16_e32 v9.l, v3.h
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v9.h, v51.l
	v_and_b32_e32 v40, 1, v144
	v_and_b32_e32 v41, 1, v145
	v_mov_b16_e64 v148.l, v29.h
	v_add3_u32 v5, v10, v7, 0x7fff
	v_and_b32_e32 v7, 1, v18
	v_mov_b16_e64 v150.l, v31.h
	v_mov_b16_e64 v147.l, v26.h
	v_and_b32_e32 v44, 1, v148
	v_mov_b16_e32 v10.h, v51.l
	v_add3_u32 v7, v11, v7, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v15, v15 :: v_dual_mov_b32 v15, 0x5410
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v46, 1, v150
	v_add3_u32 v24, v24, v41, 0x7fff
	v_add3_u32 v25, v25, v40, 0x7fff
	v_mov_b16_e32 v11.h, v51.l
	v_add3_u32 v3, v3, v9, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v24.h
	v_and_b32_e32 v43, 1, v147
	v_mov_b16_e32 v13.l, v8.h
	v_mov_b16_e32 v5.l, v3.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v3, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e32 v13.h, v51.l
	v_mov_b32_e32 v16, 0x7632
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v10.l, v3.h
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v14.h, v51.l
	v_mov_b16_e64 v149.l, v28.h
	v_mov_b16_e64 v153.l, v32.h
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e64 v152.l, v33.h
	v_add3_u32 v9, v9, v11, 0x7fff
	v_and_b32_e32 v11, 1, v14
	v_add3_u32 v3, v3, v10, 0x7fff
	v_cndmask_b32_e32 v10, v25, v21, vcc_lo
	v_add3_u32 v26, v26, v43, 0x7fff
	v_and_b32_e32 v45, 1, v149
	v_add3_u32 v31, v31, v46, 0x7fff
	v_add3_u32 v8, v8, v13, 0x7fff
	v_and_b32_e32 v48, 1, v152
	v_mov_b16_e32 v27.l, v26.h
	v_and_b32_e32 v49, 1, v153
	v_add3_u32 v0, v12, v11, 0x7fff
	v_mov_b16_e64 v151.l, v30.h
	v_mov_b16_e32 v0.l, v8.h
	v_cndmask_b32_e32 v8, v23, v19, vcc_lo
	v_add3_u32 v28, v28, v45, 0x7fff
	v_add3_u32 v32, v32, v49, 0x7fff
	v_add3_u32 v29, v29, v44, 0x7fff
	v_mov_b16_e32 v3.l, v9.h
	v_cndmask_b32_e32 v9, v19, v23, vcc_lo
	v_add3_u32 v33, v33, v48, 0x7fff
	v_dual_cndmask_b32 v19, v4, v2 :: v_dual_cndmask_b32 v2, v2, v4
	v_cndmask_b32_e32 v4, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v16, vcc_lo
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v33.l, v32.h
	v_dual_cndmask_b32 v16, v6, v1 :: v_dual_and_b32 v47, 1, v151
	v_cndmask_b32_e32 v1, v1, v6, vcc_lo
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v15, 8, v15
	v_cndmask_b32_e32 v14, v33, v29, vcc_lo
	v_add3_u32 v30, v30, v47, 0x7fff
	v_dual_cndmask_b32 v20, v3, v5 :: v_dual_cndmask_b32 v3, v5, v3
	v_dual_cndmask_b32 v15, v0, v7 :: v_dual_and_b32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v31.l, v30.h
	v_cndmask_b32_e32 v11, v21, v25, vcc_lo
	v_cndmask_b32_e32 v18, v29, v33, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e32 v13, v27, v31, vcc_lo
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_permlanex16_b32 v6, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v4
	v_and_b32_e32 v21, 0x7060706, v5
	v_permlanex16_b32 v22, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v12, v31, v27, vcc_lo
	v_permlanex16_b32 v9, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v18
	v_perm_b32 v1, v6, v8, v21
	v_perm_b32 v2, v7, v10, v18
	v_perm_b32 v3, v7, v10, v21
	v_perm_b32 v6, v11, v14, v18
	v_perm_b32 v7, v11, v14, v21
	v_perm_b32 v10, v22, v16, v18
	v_perm_b32 v11, v22, v16, v21
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v50, v17, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v4, v9, v12, v18
	v_perm_b32 v5, v9, v12, v21
	v_perm_b32 v8, v13, v19, v18
	v_perm_b32 v9, v13, v19, v21
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v50, v52, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v23, v20, v18
	v_perm_b32 v13, v23, v20, v21
	v_perm_b32 v14, v24, v15, v18
	v_perm_b32 v15, v24, v15, v21
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v16, s[0:3], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v17, s[0:3], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 247
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 247
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13832
; TotalNumSgprs: 48
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 247
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
