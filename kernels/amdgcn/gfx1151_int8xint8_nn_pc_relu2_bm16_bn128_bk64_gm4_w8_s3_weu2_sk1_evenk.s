	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v23, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v4, 3, v0
	s_mov_b32 s20, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v3, 2, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x70, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v29, 0, v23
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s16, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[5:6], null, s17, v4, v[2:3]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v6, s17, 5, v5
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
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
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s12, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s12
	s_sub_i32 s14, 0, s12
	v_rcp_iflag_f32_e32 v1, s8
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s13, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_cvt_u32_f32 s13, s13
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	v_mul_lo_u32 v7, s22, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s14, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s13, s14
	s_add_i32 s13, s13, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s13
	s_xor_b32 s13, s2, s7
	s_mul_i32 s14, s4, s12
	s_ashr_i32 s23, s13, 31
	s_sub_i32 s5, s5, s14
	s_add_i32 s13, s4, 1
	s_sub_i32 s14, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s5, s14, s5
	s_add_i32 s14, s4, 1
	s_cmp_ge_u32 s5, s12
	s_mov_b64 s[12:13], s[10:11]
	s_cselect_b32 s4, s14, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s16, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s24, s4, s23
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s25, s22, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s24, s23
	s_mov_b32 s11, 0x31027000
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s18, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_mov_b32 s14, s10
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s19, s2, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s25, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s19, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v7, v3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s17, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s18, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s25, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s16, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s21, s17, 6
	v_add_nc_u32_e32 v10, s4, v5
	v_add_nc_u32_e32 v11, s4, v6
	s_add_i32 s4, s4, s21
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v7, s16, 64, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s4, v5
	v_add_nc_u32_e32 v6, s4, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_cndmask_b32_e64 v14, 0x80000000, v11, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s15, s11
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v8, v8, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[12:15], 0 offen
	buffer_load_b128 v[14:17], v14, s[12:15], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v7, v7, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v5, s[12:15], 0 offen
	buffer_load_b128 v[25:28], v6, s[12:15], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s25, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v22, 48, v6
	v_xor_b32_e32 v24, v5, v22
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v22, 0, v24
	s_waitcnt vmcnt(5)
	ds_store_b32 v22, v8 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v29, v[10:13]
	s_waitcnt vmcnt(3)
	ds_store_b128 v29, v[14:17] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v22, v7 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v29, v[18:21] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v5
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v9, 6, v7
	v_xor_b32_e32 v20, 16, v19
	v_xor_b32_e32 v21, 32, v19
	v_xor_b32_e32 v22, 48, v19
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr22
.LBB0_3:                                ; %Flow21
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_and_b32_e32 v18, 0x70, v6
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v4, s16, v4
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v5, 48, v5
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v1, s19, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v6, 0xa0, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	v_lshl_or_b32 v19, v9, 6, v5
	s_lshl_b32 s15, s24, 7
	s_lshl_b32 s23, s23, 7
	v_mov_b32_e32 v12, 0
	v_mul_lo_u32 v7, s17, v4
	v_mad_u64_u32 v[4:5], null, s22, v1, s[16:17]
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v20, 16, v19
	v_xor_b32_e32 v21, 32, v19
	v_xor_b32_e32 v22, 48, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, v1
	v_mov_b32_e32 v11, 0
	v_add3_u32 v25, v4, v3, 0x80
	v_mov_b32_e32 v3, v1
	v_mul_lo_u32 v6, s17, v6
	v_mov_b32_e32 v4, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s25, 6
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s24, s14, -2
	s_add_i32 s16, 0, 0x4400
	s_add_i32 s22, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v5, v6, s15, v2
	v_add3_u32 v2, v7, s15, v2
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v17, 0
	v_subrev_nc_u32_e32 v26, s23, v5
	v_subrev_nc_u32_e32 v27, s23, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	s_add_i32 s23, 0, 0x4000
	s_mov_b32 s25, 1
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v76, v25, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[36:39], v27, s[12:15], 0 offen
	buffer_load_b128 v[40:43], v26, s[12:15], 0 offen
	s_mov_b32 s26, s23
	s_mov_b32 s23, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v28, s26, v19
	v_add_nc_u32_e32 v29, s26, v20
	s_mov_b32 s16, s20
	v_add_nc_u32_e32 v30, s26, v21
	v_add_nc_u32_e32 v31, s26, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v32, s16, v18, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[44:47], v28
	ds_load_b128 v[48:51], v29
	ds_load_b128 v[52:55], v30
	ds_load_b128 v[56:59], v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v32 offset:1664
	ds_load_u8 v29, v32 offset:1920
	ds_load_u8 v30, v32 offset:1792
	ds_load_u8 v31, v32 offset:1536
	ds_load_u8 v33, v32 offset:1152
	ds_load_u8 v34, v32 offset:1408
	ds_load_u8 v35, v32 offset:1280
	ds_load_u8 v60, v32 offset:1024
	ds_load_u8 v61, v32 offset:640
	ds_load_u8 v62, v32 offset:896
	ds_load_u8 v63, v32 offset:768
	ds_load_u8 v64, v32 offset:512
	ds_load_u8 v65, v32 offset:128
	ds_load_u8 v66, v32 offset:384
	ds_load_u8 v67, v32 offset:256
	ds_load_u8 v68, v32
	ds_load_u8 v69, v32 offset:3712
	ds_load_u8 v70, v32 offset:3968
	ds_load_u8 v71, v32 offset:3840
	ds_load_u8 v72, v32 offset:3584
	ds_load_u8 v73, v32 offset:3200
	ds_load_u8 v74, v32 offset:3456
	ds_load_u8 v75, v32 offset:3328
	ds_load_u8 v77, v32 offset:3072
	ds_load_u8 v78, v32 offset:2688
	ds_load_u8 v79, v32 offset:2944
	ds_load_u8 v80, v32 offset:2816
	ds_load_u8 v81, v32 offset:2560
	ds_load_u8 v82, v32 offset:2176
	ds_load_u8 v83, v32 offset:2432
	ds_load_u8 v84, v32 offset:2304
	ds_load_u8 v85, v32 offset:2048
	ds_load_u8 v86, v32 offset:5760
	ds_load_u8 v87, v32 offset:6016
	ds_load_u8 v88, v32 offset:5888
	ds_load_u8 v89, v32 offset:5632
	ds_load_u8 v90, v32 offset:5248
	ds_load_u8 v91, v32 offset:5504
	ds_load_u8 v92, v32 offset:5376
	ds_load_u8 v93, v32 offset:5120
	ds_load_u8 v94, v32 offset:4736
	ds_load_u8 v95, v32 offset:4992
	ds_load_u8 v96, v32 offset:4864
	ds_load_u8 v97, v32 offset:4608
	ds_load_u8 v98, v32 offset:4224
	ds_load_u8 v99, v32 offset:4480
	ds_load_u8 v100, v32 offset:4352
	ds_load_u8 v101, v32 offset:4096
	ds_load_u8 v102, v32 offset:7808
	ds_load_u8 v103, v32 offset:8064
	ds_load_u8 v104, v32 offset:7936
	ds_load_u8 v105, v32 offset:7680
	ds_load_u8 v106, v32 offset:7296
	ds_load_u8 v107, v32 offset:7552
	ds_load_u8 v108, v32 offset:7424
	ds_load_u8 v109, v32 offset:7168
	ds_load_u8 v110, v32 offset:6784
	ds_load_u8 v111, v32 offset:7040
	ds_load_u8 v112, v32 offset:6912
	ds_load_u8 v113, v32 offset:6656
	ds_load_u8 v114, v32 offset:6272
	ds_load_u8 v115, v32 offset:6528
	ds_load_u8 v116, v32 offset:6400
	ds_load_u8 v32, v32 offset:6144
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v28, v31, v28, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v30, v60, v33, 0xc0c0004
	v_perm_b32 v31, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v33, v64, v61, 0xc0c0004
	v_perm_b32 v34, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v35, v68, v65, 0xc0c0004
	v_perm_b32 v60, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v64, v72, v69, 0xc0c0004
	v_perm_b32 v65, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v66, v77, v73, 0xc0c0004
	v_perm_b32 v68, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v69, v81, v78, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v71, v85, v82, 0xc0c0004
	v_perm_b32 v72, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v74, v88, v87, 0xc0c0004
	v_lshl_or_b32 v63, v29, 16, v28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v32, v114, 0xc0c0004
	v_lshl_or_b32 v62, v31, 16, v30
	v_lshl_or_b32 v61, v34, 16, v33
	v_lshl_or_b32 v60, v60, 16, v35
	v_perm_b32 v73, v89, v86, 0xc0c0004
	v_perm_b32 v75, v93, v90, 0xc0c0004
	v_perm_b32 v77, v92, v91, 0xc0c0004
	v_perm_b32 v78, v97, v94, 0xc0c0004
	v_perm_b32 v79, v96, v95, 0xc0c0004
	v_perm_b32 v80, v101, v98, 0xc0c0004
	v_perm_b32 v81, v100, v99, 0xc0c0004
	v_lshl_or_b32 v67, v65, 16, v64
	v_lshl_or_b32 v66, v68, 16, v66
	v_lshl_or_b32 v65, v70, 16, v69
	v_lshl_or_b32 v64, v72, 16, v71
	v_lshl_or_b32 v72, v88, 16, v32
	v_wmma_i32_16x16x16_iu8 v[28:35], v[60:63], v[44:47], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v82, v105, v102, 0xc0c0004
	v_perm_b32 v83, v104, v103, 0xc0c0004
	v_perm_b32 v84, v109, v106, 0xc0c0004
	v_perm_b32 v85, v108, v107, 0xc0c0004
	v_perm_b32 v86, v113, v110, 0xc0c0004
	v_perm_b32 v87, v112, v111, 0xc0c0004
	v_lshl_or_b32 v71, v74, 16, v73
	v_lshl_or_b32 v70, v77, 16, v75
	v_lshl_or_b32 v69, v79, 16, v78
	v_lshl_or_b32 v68, v81, 16, v80
	v_wmma_i32_16x16x16_iu8 v[28:35], v[64:67], v[48:51], v[28:35] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v83, 16, v82
	v_lshl_or_b32 v74, v85, 16, v84
	v_lshl_or_b32 v73, v87, 16, v86
	s_mov_b32 s20, s22
	v_wmma_i32_16x16x16_iu8 v[28:35], v[68:71], v[52:55], v[28:35] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s22, s25, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s22, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[28:35], v[72:75], v[56:59], v[28:35] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s25, s22, 0
	s_add_i32 s24, s24, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s16, s25, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s22, s25, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s26, s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s22, s22, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v17, v29 :: v_dual_add_nc_u32 v26, s21, v26
	v_dual_add_f32 v10, v10, v28 :: v_dual_add_nc_u32 v27, s21, v27
	v_dual_add_f32 v16, v16, v30 :: v_dual_add_nc_u32 v25, 64, v25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v117, s26, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v15, v31 :: v_dual_add_f32 v14, v14, v32
	v_dual_add_f32 v13, v13, v33 :: v_dual_add_f32 v12, v12, v34
	v_add_f32_e32 v11, v11, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v118, s22, v23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s16, s26, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s24, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v117, v76 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v118, v[36:39]
	s_waitcnt vmcnt(0)
	ds_store_b128 v118, v[40:43] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v10, 0
	s_add_i32 s23, 0, 0x4000
	s_add_i32 s16, 0, 0x4400
	s_add_i32 s22, 0, 0x2000
.LBB0_7:                                ; %Flow22
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, v18, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s20, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v39, s23, v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v7 offset:1664
	ds_load_u8 v23, v7 offset:1920
	ds_load_u8 v24, v7 offset:1792
	ds_load_u8 v25, v7 offset:1536
	ds_load_u8 v26, v7 offset:1152
	ds_load_u8 v27, v7 offset:1408
	ds_load_u8 v28, v7 offset:1280
	ds_load_u8 v29, v7 offset:1024
	ds_load_u8 v30, v7 offset:640
	ds_load_u8 v43, v7 offset:896
	ds_load_u8 v44, v7 offset:768
	ds_load_u8 v45, v7 offset:512
	ds_load_u8 v46, v7 offset:128
	ds_load_u8 v47, v7 offset:256
	ds_load_u8 v48, v7
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v24, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v25, v8, 0xc0c0004
	v_mov_b32_e32 v23, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s23, v22
	v_add_nc_u32_e32 v31, s23, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v25, v29, v26, 0xc0c0004
	v_perm_b32 v26, v28, v27, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v35, s23, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v27, v45, v30, 0xc0c0004
	v_lshl_or_b32 v45, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v48, v46, 0xc0c0004
	v_lshl_or_b32 v46, v24, 16, v8
	v_lshl_or_b32 v44, v28, 16, v27
	v_mov_b32_e32 v24, v23
	v_mov_b32_e32 v26, v23
	v_mov_b32_e32 v28, v23
	ds_load_u8 v49, v7 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[31:34], v31
	ds_load_b128 v[35:38], v35
	ds_load_b128 v[39:42], v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v7 offset:3712
	ds_load_u8 v50, v7 offset:3968
	ds_load_u8 v51, v7 offset:3840
	ds_load_u8 v52, v7 offset:3584
	ds_load_u8 v53, v7 offset:3200
	ds_load_u8 v54, v7 offset:3456
	ds_load_u8 v55, v7 offset:3328
	ds_load_u8 v56, v7 offset:3072
	ds_load_u8 v57, v7 offset:2688
	ds_load_u8 v58, v7 offset:2944
	ds_load_u8 v59, v7 offset:2816
	ds_load_u8 v60, v7 offset:2560
	ds_load_u8 v61, v7 offset:2176
	ds_load_u8 v62, v7 offset:2432
	ds_load_u8 v63, v7 offset:2304
	ds_load_u8 v64, v7 offset:2048
	v_mov_b32_e32 v25, v23
	v_mov_b32_e32 v27, v23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v52, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v48, v56, v53, 0xc0c0004
	v_perm_b32 v30, v47, v49, 0xc0c0004
	v_perm_b32 v47, v51, v50, 0xc0c0004
	v_perm_b32 v49, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v60, v57, 0xc0c0004
	v_perm_b32 v51, v59, v58, 0xc0c0004
	v_lshl_or_b32 v43, v30, 16, v29
	v_mov_b32_e32 v29, v23
	v_mov_b32_e32 v30, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v64, v61, 0xc0c0004
	v_perm_b32 v53, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[23:30], v[43:46], v[39:42], v[23:30] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v47, 16, v8
	v_lshl_or_b32 v41, v49, 16, v48
	v_lshl_or_b32 v40, v51, 16, v50
	v_lshl_or_b32 v39, v53, 16, v52
	ds_load_u8 v8, v7 offset:5760
	ds_load_u8 v43, v7 offset:6016
	ds_load_u8 v44, v7 offset:5888
	ds_load_u8 v45, v7 offset:5632
	ds_load_u8 v46, v7 offset:5248
	ds_load_u8 v47, v7 offset:5504
	ds_load_u8 v48, v7 offset:5376
	ds_load_u8 v49, v7 offset:5120
	ds_load_u8 v50, v7 offset:4736
	ds_load_u8 v51, v7 offset:4992
	ds_load_u8 v52, v7 offset:4864
	ds_load_u8 v53, v7 offset:4608
	ds_load_u8 v54, v7 offset:4224
	ds_load_u8 v55, v7 offset:4480
	ds_load_u8 v56, v7 offset:4352
	ds_load_u8 v57, v7 offset:4096
	ds_load_u8 v58, v7 offset:7808
	ds_load_u8 v59, v7 offset:8064
	ds_load_u8 v60, v7 offset:7936
	ds_load_u8 v61, v7 offset:7680
	ds_load_u8 v62, v7 offset:7296
	ds_load_u8 v63, v7 offset:7552
	ds_load_u8 v64, v7 offset:7424
	ds_load_u8 v65, v7 offset:7168
	ds_load_u8 v66, v7 offset:6784
	ds_load_u8 v67, v7 offset:7040
	ds_load_u8 v68, v7 offset:6912
	ds_load_u8 v69, v7 offset:6656
	ds_load_u8 v70, v7 offset:6272
	ds_load_u8 v71, v7 offset:6528
	ds_load_u8 v72, v7 offset:6400
	ds_load_u8 v7, v7 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v8, v45, v8, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v44, v49, v46, 0xc0c0004
	v_perm_b32 v45, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v46, v53, v50, 0xc0c0004
	v_perm_b32 v47, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v48, v57, v54, 0xc0c0004
	v_perm_b32 v49, v56, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[23:30], v[39:42], v[35:38], v[23:30] neg_lo:[1,1,0]
	v_lshl_or_b32 v38, v43, 16, v8
	v_lshl_or_b32 v37, v45, 16, v44
	v_lshl_or_b32 v36, v47, 16, v46
	v_lshl_or_b32 v35, v49, 16, v48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v61, v58, 0xc0c0004
	v_perm_b32 v39, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v65, v62, 0xc0c0004
	v_perm_b32 v41, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v42, v69, v66, 0xc0c0004
	v_perm_b32 v43, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v70, 0xc0c0004
	v_perm_b32 v44, v72, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[23:30], v[35:38], v[31:34], v[23:30] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v39, 16, v8
	v_lshl_or_b32 v33, v41, 16, v40
	v_lshl_or_b32 v32, v43, 16, v42
	v_lshl_or_b32 v31, v44, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[23:30], v[31:34], v[3:6], v[23:30] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v25
	v_cvt_f32_i32_e32 v5, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v7, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v17, v3 :: v_dual_add_f32 v16, v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_f32_e32 v15, v15, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v11, v6 :: v_dual_add_f32 v10, v10, v7
	v_dual_add_f32 v14, v14, v3 :: v_dual_add_f32 v13, v13, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v12, v12, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s22, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s16, v22
	v_add_nc_u32_e32 v21, s16, v21
	v_add_nc_u32_e32 v20, s16, v20
	v_add_nc_u32_e32 v19, s16, v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v6 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[27:30], v21
	ds_load_b128 v[31:34], v20
	ds_load_b128 v[35:38], v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v19, 0
	ds_load_u8 v7, v6 offset:1664
	ds_load_u8 v8, v6 offset:1920
	ds_load_u8 v23, v6 offset:1792
	ds_load_u8 v24, v6 offset:1536
	ds_load_u8 v25, v6 offset:1152
	ds_load_u8 v26, v6 offset:1408
	ds_load_u8 v39, v6 offset:1280
	ds_load_u8 v40, v6 offset:1024
	ds_load_u8 v41, v6 offset:640
	ds_load_u8 v42, v6 offset:896
	ds_load_u8 v43, v6 offset:768
	ds_load_u8 v44, v6 offset:512
	ds_load_u8 v45, v6 offset:128
	ds_load_u8 v46, v6 offset:256
	ds_load_u8 v47, v6
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v23, v8, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v24, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v39, v26, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v20, v40, v25, 0xc0c0004
	v_mov_b32_e32 v26, v19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v23, v44, v41, 0xc0c0004
	v_lshl_or_b32 v42, v8, 16, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v22, v46, v22, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v47, v45, 0xc0c0004
	ds_load_u8 v43, v6 offset:3712
	ds_load_u8 v44, v6 offset:3968
	ds_load_u8 v45, v6 offset:3840
	ds_load_u8 v47, v6 offset:3584
	ds_load_u8 v48, v6 offset:3200
	ds_load_u8 v49, v6 offset:3456
	ds_load_u8 v50, v6 offset:3328
	ds_load_u8 v51, v6 offset:3072
	ds_load_u8 v52, v6 offset:2688
	ds_load_u8 v53, v6 offset:2944
	ds_load_u8 v54, v6 offset:2816
	ds_load_u8 v55, v6 offset:2560
	ds_load_u8 v56, v6 offset:2176
	ds_load_u8 v57, v6 offset:2432
	ds_load_u8 v58, v6 offset:2304
	ds_load_u8 v59, v6 offset:2048
	v_lshl_or_b32 v41, v21, 16, v20
	v_lshl_or_b32 v40, v24, 16, v23
	v_mov_b32_e32 v20, v19
	v_lshl_or_b32 v39, v22, 16, v25
	v_mov_b32_e32 v21, v19
	v_mov_b32_e32 v22, v19
	v_mov_b32_e32 v23, v19
	v_mov_b32_e32 v24, v19
	v_mov_b32_e32 v25, v19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v47, v43, 0xc0c0004
	v_perm_b32 v8, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v51, v48, 0xc0c0004
	v_perm_b32 v44, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[19:26], v[39:42], v[35:38], v[19:26] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v46, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v55, v52, 0xc0c0004
	v_lshl_or_b32 v38, v8, 16, v7
	v_lshl_or_b32 v37, v44, 16, v43
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v48, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v59, v56, 0xc0c0004
	v_lshl_or_b32 v36, v46, 16, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v35, v48, 16, v47
	ds_load_u8 v7, v6 offset:5760
	ds_load_u8 v8, v6 offset:6016
	ds_load_u8 v39, v6 offset:5888
	ds_load_u8 v40, v6 offset:5632
	ds_load_u8 v41, v6 offset:5248
	ds_load_u8 v42, v6 offset:5504
	ds_load_u8 v43, v6 offset:5376
	ds_load_u8 v44, v6 offset:5120
	ds_load_u8 v45, v6 offset:4736
	ds_load_u8 v46, v6 offset:4992
	ds_load_u8 v47, v6 offset:4864
	ds_load_u8 v48, v6 offset:4608
	ds_load_u8 v49, v6 offset:4224
	ds_load_u8 v50, v6 offset:4480
	ds_load_u8 v51, v6 offset:4352
	ds_load_u8 v52, v6 offset:4096
	ds_load_u8 v53, v6 offset:7808
	ds_load_u8 v54, v6 offset:8064
	ds_load_u8 v55, v6 offset:7936
	ds_load_u8 v56, v6 offset:7680
	ds_load_u8 v57, v6 offset:7296
	ds_load_u8 v58, v6 offset:7552
	ds_load_u8 v59, v6 offset:7424
	ds_load_u8 v60, v6 offset:7168
	ds_load_u8 v61, v6 offset:6784
	ds_load_u8 v62, v6 offset:7040
	ds_load_u8 v63, v6 offset:6912
	ds_load_u8 v64, v6 offset:6656
	ds_load_u8 v65, v6 offset:6272
	ds_load_u8 v66, v6 offset:6528
	ds_load_u8 v67, v6 offset:6400
	ds_load_u8 v6, v6 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v7, v40, v7, 0xc0c0004
	v_perm_b32 v8, v39, v8, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v39, v44, v41, 0xc0c0004
	v_perm_b32 v40, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v41, v48, v45, 0xc0c0004
	v_perm_b32 v42, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v43, v52, v49, 0xc0c0004
	v_perm_b32 v44, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[19:26], v[35:38], v[31:34], v[19:26] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v8, 16, v7
	v_lshl_or_b32 v33, v40, 16, v39
	v_lshl_or_b32 v32, v42, 16, v41
	v_lshl_or_b32 v31, v44, 16, v43
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v56, v53, 0xc0c0004
	v_perm_b32 v8, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v60, v57, 0xc0c0004
	v_perm_b32 v36, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v64, v61, 0xc0c0004
	v_perm_b32 v38, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v6, v65, 0xc0c0004
	v_perm_b32 v39, v67, v66, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[19:26], v[31:34], v[27:30], v[19:26] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v8, 16, v7
	v_lshl_or_b32 v29, v36, 16, v35
	v_lshl_or_b32 v28, v38, 16, v37
	v_lshl_or_b32 v27, v39, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[19:26], v[27:30], v[2:5], v[19:26] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v20
	v_cvt_f32_i32_e32 v5, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v22
	v_cvt_f32_i32_e32 v7, v23
	v_cvt_f32_i32_e32 v8, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
.LBB0_11:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v9, s19, v9
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v2, v2, v18, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v10, v3 :: v_dual_lshlrev_b32 v18, 1, v9
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v17, v4 :: v_dual_add_f32 v7, v14, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v5, v16, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	v_or_b32_e32 v19, 4, v2
	v_or_b32_e32 v20, 8, v2
	v_or_b32_e32 v21, 12, v2
	v_or_b32_e32 v22, 16, v2
	v_or_b32_e32 v25, 20, v2
	v_or_b32_e32 v26, 24, v2
	v_or_b32_e32 v27, 28, v2
	s_clause 0x7
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v11, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v30, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v17, v4, s2
	v_cndmask_b32_e64 v5, v16, v5, s2
	v_cndmask_b32_e64 v3, v10, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v15, v6 :: v_dual_add_f32 v23, v12, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v13, v8 :: v_dual_mov_b32 v29, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v15, v6, s2
	v_cndmask_b32_e64 v10, v12, v23, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v28.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v14, v7, s2
	v_cndmask_b32_e64 v8, v13, v8, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v28.h
	v_mov_b16_e32 v14.h, v28.h
	v_mov_b16_e32 v15.h, v28.h
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v1
	s_mov_b32 s3, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v18
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v21
	v_lshlrev_b32_e32 v2, 16, v2
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v25
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v17, v16, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v24, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v16, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s2, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v3, v2 :: v_dual_mul_f32 v3, v4, v17
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v21, v16, v21 :: v_dual_lshlrev_b32 v18, 16, v20
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v27
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v19, v16, v19 :: v_dual_lshlrev_b32 v20, 16, v22
	v_dual_mul_f32 v18, v16, v18 :: v_dual_max_f32 v3, 0, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v22, 16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v5, v18 :: v_dual_mul_f32 v3, v3, v3
	v_dual_mul_f32 v5, v6, v19 :: v_dual_mul_f32 v20, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v3.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, 0, v5 :: v_dual_and_b32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v12, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v6, v7, v20 :: v_dual_mul_f32 v7, v8, v21
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v22, v16, v22
	v_mul_f32_e32 v16, v16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v12, 0x3276, v30 :: v_dual_max_f32 v7, 0, v7
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v2, 0, v2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v10, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v10, v11, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v12, v12, 8, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v2.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 1, v28
	v_mov_b16_e32 v28.l, v5.h
	v_add3_u32 v2, v2, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v16, 1, v28
	v_mov_b16_e32 v28.l, v7.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v6, 0, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v11, 1, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v7, v11, 0x7fff
	v_dual_cndmask_b32 v11, 0x1054, v29 :: v_dual_max_f32 v10, 0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v14.l, v6.h
	v_lshl_or_b32 v11, v11, 8, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b16_e32 v13.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v2.l, v6.h
	v_dual_cndmask_b32 v7, v2, v3 :: v_dual_and_b32 v0, 1, v13
	v_cndmask_b32_e32 v2, v3, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v4, v0, 0x7fff
	v_add3_u32 v4, v5, v16, 0x7fff
	v_and_b32_e32 v5, 1, v28
	v_permlanex16_b32 v2, v2, s3, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v0.h
	v_add3_u32 v0, v10, v5, 0x7fff
	v_and_b32_e32 v5, 0x540054, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v5, 4, v5
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_and_b32 v3, 0x5040504, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v8.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 1, v15
	v_add3_u32 v6, v8, v6, 0x7fff
	v_and_b32_e32 v8, 0x760076, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v6.h
	v_lshl_or_b32 v5, v8, 4, v8
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, v9, s17
	v_or_b32_e32 v9, s18, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v8, v4, v0, vcc_lo
	v_dual_cndmask_b32 v4, v0, v4 :: v_dual_and_b32 v5, 0x7060706, v5
	v_perm_b32 v0, v2, v7, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s3, s11
	v_perm_b32 v1, v2, v7, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v2, v8, v4, v3
	v_perm_b32 v3, v8, v4, v5
	v_add_lshl_u32 v4, v9, v6, 1
	buffer_store_b128 v[0:3], v4, s[0:3], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 27
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
		.amdhsa_inst_pref_size 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 119
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 27
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6220
; TotalNumSgprs: 29
; NumVgprs: 119
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 29
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     29
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     119
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
