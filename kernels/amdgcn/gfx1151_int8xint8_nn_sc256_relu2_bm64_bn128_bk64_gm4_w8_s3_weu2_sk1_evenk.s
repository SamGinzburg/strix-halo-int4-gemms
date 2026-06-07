	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v78, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v23, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v79, 15, v0
	v_and_b32_e32 v2, 48, v78
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v49, 0, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v80, 48, v23
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v21, v4, 16, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v22, 32, v21
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s13, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
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
	s_lshl_b32 s17, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s17
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s15, s16
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s15
	s_xor_b32 s14, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s14, 31
	v_rcp_iflag_f32_e32 v1, s18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v78
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s7, 0, s15
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[5:6], null, s35, v4, v[1:2]
	s_mov_b64 s[20:21], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v6, s35, 5, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s6, s12, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s6, s15
	s_sub_i32 s12, s12, s18
	s_add_i32 s18, s6, 1
	s_sub_i32 s19, s12, s15
	s_cmp_ge_u32 s12, s15
	s_cselect_b32 s18, s18, s6
	s_cselect_b32 s6, s19, s12
	s_add_i32 s12, s18, 1
	s_cmp_ge_u32 s6, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s23, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s18, s12, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s18
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s12, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s13, 0xff
.Ltmp15:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s17, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s34, s13
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s35, s23
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s17, s2
.Ltmp21:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v7, v2, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s33, s18
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s23, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s22, s35, 6
	v_add_nc_u32_e32 v9, s12, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s28, s23, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s12, v6
	s_add_i32 s12, s12, s22
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s28, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s12, v5
	v_add_nc_u32_e32 v6, s12, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[25:28], v8, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[29:32], v9, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v10, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[37:40], v7, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[41:44], v5, s[24:27], 0 offen
	buffer_load_b128 v[45:48], v6, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 4, v0
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v6, v5, 1, v80
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v81, v78, v7
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v10, 2, v6
	v_or_b32_e32 v11, 4, v6
	v_or_b32_e32 v12, 6, v6
	v_or_b32_e32 v13, 8, v6
	v_or_b32_e32 v14, 10, v6
	v_or_b32_e32 v15, 12, v6
	v_or_b32_e32 v16, 14, v6
	v_or_b32_e32 v17, 64, v6
	v_or_b32_e32 v18, 0x42, v6
	v_or_b32_e32 v19, 0x44, v6
	v_or_b32_e32 v20, 0x46, v6
	v_or_b32_e32 v24, 0x48, v6
	v_or_b32_e32 v7, 0x4a, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v50, 0, v81
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 0x4c, v6
	v_or_b32_e32 v9, 0x4e, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v50, v[25:28] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v49, v[29:32]
	s_waitcnt vmcnt(3)
	ds_store_b128 v49, v[33:36] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v50, v[37:40] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v49, v[41:44] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v49, v[45:48] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v25, 0x430, v5
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v79, 6, v25
	v_xor_b32_e32 v76, 16, v74
	v_xor_b32_e32 v77, 32, v74
	v_xor_b32_e32 v75, 48, v74
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr75
.LBB0_3:                                ; %Flow49
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v25, s34, v21
	v_or_b32_e32 v26, s34, v22
	s_ashr_i32 s40, s17, 8
	v_or_b32_e32 v71, s33, v6
	v_or_b32_e32 v70, s33, v10
	v_mul_lo_u32 v72, v25, s40
	v_mul_lo_u32 v73, v26, s40
	v_or_b32_e32 v67, s33, v11
	v_or_b32_e32 v59, s33, v12
	v_or_b32_e32 v56, s33, v13
	v_or_b32_e32 v53, s33, v14
	v_or_b32_e32 v50, s33, v15
	v_or_b32_e32 v48, s33, v16
	v_or_b32_e32 v47, s33, v17
	v_or_b32_e32 v46, s33, v18
	v_or_b32_e32 v45, s33, v19
	v_or_b32_e32 v36, s33, v20
	v_or_b32_e32 v32, s33, v24
	v_or_b32_e32 v38, s33, v7
	v_or_b32_e32 v34, s33, v8
	v_or_b32_e32 v30, s33, v9
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s16, 6
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s11, s15, 7
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v3, s34, v3
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v5, 0x430, v5
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s13, v3
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v4, s23, v4
	v_lshl_or_b32 v74, v79, 6, v5
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v40, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v5, 0xa0, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	v_add3_u32 v84, v3, v2, 0x80
	v_xor_b32_e32 v76, 16, v74
	v_xor_b32_e32 v77, 32, v74
	v_mul_lo_u32 v5, s35, v5
	v_mul_lo_u32 v4, s35, v4
	v_xor_b32_e32 v75, 48, v74
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v52, 0
	v_add3_u32 v5, v5, s11, v1
	v_add3_u32 v1, v4, s11, v1
	s_lshl_b32 s11, s14, 7
	s_mov_b32 s14, s12
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v54, 0
	v_subrev_nc_u32_e32 v82, s11, v5
	v_subrev_nc_u32_e32 v83, s11, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v61, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, s10, -2
	s_add_i32 s43, 0, 0x4000
	s_add_i32 s41, 0, 0x5000
	s_add_i32 s42, 0, 0x2000
	s_mov_b32 s11, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s13, s23
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add3_u32 v133, s12, v79, v80
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, s13, v84
	v_add_nc_u32_e32 v113, s43, v74
	v_add_nc_u32_e32 v114, s43, v76
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s23, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v133 offset:1664
	ds_load_u8 v14, v133 offset:1536
	ds_load_u8 v15, v133 offset:1920
	ds_load_u8 v16, v133 offset:1792
	ds_load_u8 v17, v133 offset:1152
	ds_load_u8 v18, v133 offset:1024
	ds_load_u8 v19, v133 offset:1408
	ds_load_u8 v20, v133 offset:1280
	ds_load_u8 v85, v133 offset:640
	ds_load_u8 v86, v133 offset:512
	ds_load_u8 v87, v133 offset:896
	ds_load_u8 v88, v133 offset:768
	ds_load_u8 v89, v133 offset:128
	ds_load_u8 v90, v133
	ds_load_u8 v91, v133 offset:384
	ds_load_u8 v92, v133 offset:256
	ds_load_u8 v93, v133 offset:3712
	ds_load_u8 v94, v133 offset:3584
	ds_load_u8 v97, v133 offset:3968
	ds_load_u8 v98, v133 offset:3840
	ds_load_u8 v99, v133 offset:3200
	ds_load_u8 v100, v133 offset:3072
	ds_load_u8 v101, v133 offset:3456
	ds_load_u8 v102, v133 offset:3328
	ds_load_u8 v103, v133 offset:2688
	ds_load_u8 v104, v133 offset:2560
	ds_load_u8 v105, v133 offset:2944
	ds_load_u8 v106, v133 offset:2816
	ds_load_u8 v107, v133 offset:2176
	ds_load_u8 v108, v133 offset:2048
	ds_load_u8 v109, v133 offset:2432
	ds_load_u8 v110, v133 offset:2304
	ds_load_u8 v111, v133 offset:1728
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v19, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v87, v92, v91, 0xc0c0004
	ds_load_u8 v88, v133 offset:704
	ds_load_u8 v92, v133 offset:960
	v_lshl_or_b32 v95, v18, 16, v17
	v_perm_b32 v17, v86, v85, 0xc0c0004
	v_perm_b32 v85, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v89, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v91, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v97, v100, v99, 0xc0c0004
	ds_load_u8 v93, v133 offset:832
	ds_load_u8 v90, v133 offset:576
	ds_load_u8 v94, v133 offset:192
	ds_load_u8 v100, v133 offset:448
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v98, v102, v101, 0xc0c0004
	ds_load_u8 v101, v133 offset:320
	ds_load_u8 v99, v133 offset:64
	ds_load_u8 v102, v133 offset:3776
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v14, v133 offset:1600
	ds_load_u8 v16, v133 offset:1984
	ds_load_u8 v18, v133 offset:1088
	ds_load_u8 v86, v133 offset:1344
	ds_load_u8 v121, v133 offset:2368
	v_lshl_or_b32 v96, v15, 16, v13
	ds_load_u8 v13, v133 offset:1856
	ds_load_u8 v15, v133 offset:1216
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v112, v104, v103, 0xc0c0004
	ds_load_u8 v103, v133 offset:3648
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v133 offset:3520
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	v_perm_b32 v106, v108, v107, 0xc0c0004
	v_perm_b32 v107, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v116, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v115, v99, v94, 0xc0c0004
	ds_load_u8 v94, v133 offset:3392
	ds_load_u8 v99, v133 offset:2752
	ds_load_u8 v90, v133 offset:3136
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s12, s23, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s12, 8
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s14, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v18, v133 offset:3904
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	s_add_i32 s10, s10, -1
	s_add_i32 s23, s23, 64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v118, v94, v93, 0xc0c0004
	ds_load_u8 v93, v133 offset:2240
	ds_load_u8 v94, v133 offset:2112
	ds_load_u8 v20, v133 offset:1472
	v_perm_b32 v13, v13, v16, 0xc0c0004
	ds_load_u8 v16, v133 offset:4032
	v_perm_b32 v14, v14, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v13, 16, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v120, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v86, v20, 0xc0c0004
	ds_load_u8 v86, v133 offset:3264
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	ds_load_u8 v18, v133 offset:3008
	v_perm_b32 v117, v103, v102, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v113
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v94, v19, 16, v17
	v_lshl_or_b32 v93, v87, 16, v85
	v_lshl_or_b32 v128, v16, 16, v117
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v90, v86, 0xc0c0004
	ds_load_u8 v90, v133 offset:2880
	ds_load_u8 v100, v133 offset:2624
	v_lshl_or_b32 v127, v118, 16, v86
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v90, v18, 0xc0c0004
	ds_load_u8 v90, v133 offset:2496
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v119, v100, v99, 0xc0c0004
	v_lshl_or_b32 v99, v98, 16, v97
	v_lshl_or_b32 v98, v105, 16, v112
	v_lshl_or_b32 v97, v107, 16, v106
	v_lshl_or_b32 v107, v20, 16, v15
	v_lshl_or_b32 v106, v92, 16, v88
	v_lshl_or_b32 v105, v116, 16, v115
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[109:112], v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v100, v91, 16, v89
	v_lshl_or_b32 v126, v18, 16, v119
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v121, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[85:92], v[105:108], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v125, v13, 16, v120
	v_wmma_i32_16x16x16_iu8 v[13:20], v[93:96], v[101:104], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v113 offset:2048
	ds_load_b128 v[129:132], v114 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[125:128], v[109:112], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[97:100], v[109:112], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[93:96], v[101:104], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v93, v133 offset:5760
	ds_load_u8 v94, v133 offset:5632
	ds_load_u8 v95, v133 offset:6016
	v_wmma_i32_16x16x16_iu8 v[117:124], v[105:108], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[97:100], v[129:132], v[109:116] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v105, s43, v77
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[117:124], v[125:128], v[129:132], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v95, 0xc0c0004
	ds_load_u8 v95, v133 offset:5248
	ds_load_u8 v96, v133 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v133 offset:5504
	ds_load_u8 v97, v133 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v96, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v133 offset:4736
	ds_load_u8 v94, v133 offset:4608
	v_lshl_or_b32 v95, v97, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:4992
	ds_load_u8 v97, v133 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v133 offset:4224
	ds_load_u8 v97, v133 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	ds_load_u8 v97, v133 offset:4480
	ds_load_u8 v98, v133 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v97, 16, v93
	ds_load_u8 v97, v133 offset:5824
	ds_load_u8 v98, v133 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v133 offset:6080
	ds_load_u8 v99, v133 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v133 offset:5312
	ds_load_u8 v100, v133 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v133 offset:5568
	ds_load_u8 v101, v133 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v133 offset:4800
	ds_load_u8 v98, v133 offset:4672
	v_lshl_or_b32 v99, v101, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v133 offset:5056
	ds_load_u8 v101, v133 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v133 offset:4288
	ds_load_u8 v101, v133 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v97, 0xc0c0004
	ds_load_u8 v101, v133 offset:4544
	ds_load_u8 v102, v133 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v101, 16, v97
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[93:96], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[97:100], v[101:104], v[85:92] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v105 offset:2048
	v_add_nc_u32_e32 v105, s43, v75
	s_mov_b32 s43, s41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[93:96], v[101:104], v[109:116] neg_lo:[1,1,0]
	ds_load_u8 v93, v133 offset:7808
	ds_load_u8 v94, v133 offset:7680
	ds_load_u8 v95, v133 offset:8064
	v_wmma_i32_16x16x16_iu8 v[117:124], v[97:100], v[101:104], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v95, 0xc0c0004
	ds_load_u8 v95, v133 offset:7296
	ds_load_u8 v96, v133 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v133 offset:7552
	ds_load_u8 v97, v133 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v96, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v133 offset:6784
	ds_load_u8 v94, v133 offset:6656
	v_lshl_or_b32 v95, v97, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v133 offset:7040
	ds_load_u8 v97, v133 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v133 offset:6272
	ds_load_u8 v97, v133 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	ds_load_u8 v97, v133 offset:6528
	ds_load_u8 v98, v133 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v97, 16, v93
	ds_load_u8 v97, v133 offset:7872
	ds_load_u8 v98, v133 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v133 offset:8128
	ds_load_u8 v99, v133 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v133 offset:7360
	ds_load_u8 v100, v133 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v133 offset:7616
	ds_load_u8 v101, v133 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v133 offset:6848
	ds_load_u8 v98, v133 offset:6720
	v_lshl_or_b32 v99, v101, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v133 offset:7104
	ds_load_u8 v101, v133 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v133 offset:6336
	ds_load_u8 v101, v133 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v97, 0xc0c0004
	ds_load_u8 v101, v133 offset:6592
	ds_load_u8 v102, v133 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v101, 16, v97
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[93:96], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[97:100], v[101:104], v[85:92] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v105 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v107, v14
	v_cvt_f32_i32_e32 v108, v13
	v_cvt_f32_i32_e32 v106, v15
	v_cvt_f32_i32_e32 v105, v16
	v_cvt_f32_i32_e32 v15, v91
	v_cvt_f32_i32_e32 v16, v90
	v_cvt_f32_i32_e32 v13, v92
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[93:96], v[101:104], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[97:100], v[101:104], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v103, v18
	v_cvt_f32_i32_e32 v100, v85
	v_cvt_f32_i32_e32 v104, v17
	v_cvt_f32_i32_e32 v14, v109
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v109, v72, s14, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v18, v111
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v111, v71, s12, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v85, v112
	v_cvt_f32_i32_e32 v102, v19
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v101, v20
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v109, v109, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v111, v111, s[36:39], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v99, v86
	v_cvt_f32_i32_e32 v98, v87
	v_cvt_f32_i32_e32 v19, v89
	v_cvt_f32_i32_e32 v20, v88
	v_cvt_f32_i32_e32 v86, v113
	v_cvt_f32_i32_e32 v87, v114
	v_cvt_f32_i32_e32 v17, v110
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v110, v73, s14, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s14, s11, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v115
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s15, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v92, v119
	v_cvt_f32_i32_e32 v96, v123
	v_cvt_f32_i32_e32 v91, v118
	v_cvt_f32_i32_e32 v89, v116
	v_cvt_f32_i32_e32 v90, v117
	v_cvt_f32_i32_e32 v93, v120
	v_cvt_f32_i32_e32 v94, v121
	v_cvt_f32_i32_e32 v95, v122
	v_cvt_f32_i32_e32 v97, v124
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s41, s15, 0x4000
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v111, 16, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v24, v112, v108
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v108, v70, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	buffer_load_u16 v108, v108, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v25, v112, v107
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v107, v67, s12, 1
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	buffer_load_u16 v107, v107, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v26, v112, v106
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v106, v59, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	buffer_load_u16 v106, v106, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v27, v112, v105
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v105, v56, s12, 1
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	buffer_load_u16 v105, v105, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v105, 16, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v28, v112, v104
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v104, v53, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	buffer_load_u16 v104, v104, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v29, v112, v103
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v103, v50, s12, 1
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	buffer_load_u16 v103, v103, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v103, 16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v31, v112, v102
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v102, v48, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	buffer_load_u16 v102, v102, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v33, v112, v101
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v101, v47, s12, 1
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	buffer_load_u16 v101, v101, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v101, 16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v35, v112, v100
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v100, v46, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	buffer_load_u16 v100, v100, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v37, v112, v99
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v99, v45, s12, 1
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	buffer_load_u16 v99, v99, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v39, v112, v98
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v98, v36, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	buffer_load_u16 v98, v98, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v40, v112, v20
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v20, v32, s12, 1
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	buffer_load_u16 v20, v20, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v112, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v109, v112
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v41, v20, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v38, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	buffer_load_u16 v19, v19, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v113, 16, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v109, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v42, v19, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v16, v34, s12, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	buffer_load_u16 v16, v16, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v114, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v109, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v43, v16, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v30, s12, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v16, 0x80000000, v110, vcc_lo
	s_mov_b32 s12, s42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s42, s15, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s10, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v15, v15, s[36:39], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v110, 16, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v115, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v105, v110, v105
	v_mul_f32_e32 v15, v109, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v55, v105, v86 :: v_dual_mul_f32 v16, v110, v111
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v110, v108
	v_dual_mul_f32 v20, v110, v107 :: v_dual_add_nc_u32 v107, s15, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v44, v15, v13 :: v_dual_fmac_f32 v49, v16, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v111, v110, v114
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[13:16], v83, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v51, v19, v17 :: v_dual_mul_f32 v100, v110, v100
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v104, v110, v104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v69, v111, v96 :: v_dual_fmac_f32 v52, v20, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v103, v110, v103
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[17:20], v82, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v101, v110, v101 :: v_dual_add_nc_u32 v82, s22, v82
	v_mul_f32_e32 v102, v110, v102
	v_dual_mul_f32 v99, v110, v99 :: v_dual_fmac_f32 v58, v103, v88
	v_mul_f32_e32 v98, v110, v98
	v_mul_f32_e32 v108, v110, v112
	v_dual_mul_f32 v109, v110, v113 :: v_dual_fmac_f32 v62, v101, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v63, v100, v91 :: v_dual_mul_f32 v106, v110, v106
	v_fmac_f32_e32 v57, v104, v87
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v110, v110, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v60, v102, v89 :: v_dual_add_nc_u32 v83, s22, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v54, v106, v85
	v_dual_fmac_f32 v64, v99, v92 :: v_dual_fmac_f32 v65, v98, v93
	v_fmac_f32_e32 v66, v108, v94
	v_dual_fmac_f32 v68, v109, v95 :: v_dual_fmac_f32 v61, v110, v97
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v112, s42, v78
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v107, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[17:20] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s28, s13, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	s_add_i32 s43, 0, 0x4000
	s_add_i32 s41, 0, 0x5000
	s_add_i32 s42, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v109, v80, v79
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
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
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s12, v109
	s_mov_b32 s12, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v10 offset:1664
	ds_load_u8 v13, v10 offset:1536
	ds_load_u8 v14, v10 offset:1920
	ds_load_u8 v15, v10 offset:1792
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s43, v77
	v_add_nc_u32_e32 v11, s43, v76
	ds_load_b128 v[2:5], v6 offset:2048
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[78:81], v11 offset:2048
	ds_load_b128 v[99:102], v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v10 offset:1152
	ds_load_u8 v17, v10 offset:1024
	ds_load_u8 v18, v10 offset:1408
	ds_load_u8 v19, v10 offset:1280
	ds_load_u8 v82, v10 offset:640
	ds_load_u8 v83, v10 offset:512
	ds_load_u8 v84, v10 offset:896
	ds_load_u8 v85, v10 offset:768
	ds_load_u8 v91, v10 offset:1984
	ds_load_u8 v92, v10 offset:1856
	ds_load_u8 v93, v10 offset:1728
	ds_load_u8 v94, v10 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v16, s43, v74
	v_add_nc_u32_e32 v20, s43, v75
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v15, v14, 0xc0c0004
	ds_load_u8 v14, v10 offset:128
	ds_load_u8 v15, v10
	ds_load_u8 v86, v10 offset:384
	ds_load_u8 v87, v10 offset:256
	ds_load_u8 v95, v10 offset:1472
	ds_load_u8 v96, v10 offset:1344
	ds_load_u8 v97, v10 offset:1216
	ds_load_u8 v98, v10 offset:1088
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v17, v11, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v19, v18, 0xc0c0004
	v_lshl_or_b32 v117, v13, 16, v12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v85, v84, 0xc0c0004
	v_lshl_or_b32 v116, v17, 16, v11
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_lshl_or_b32 v115, v19, 16, v18
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v87, v86, 0xc0c0004
	v_dual_mov_b32 v90, s19 :: v_dual_mov_b32 v89, s18
	v_mov_b32_e32 v83, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v16 offset:2048
	ds_load_b128 v[103:106], v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v114, v13, 16, v12
	ds_load_u8 v12, v10 offset:3200
	ds_load_u8 v13, v10 offset:3072
	ds_load_u8 v18, v10 offset:3456
	ds_load_u8 v19, v10 offset:3328
	ds_load_u8 v118, v10 offset:2688
	ds_load_u8 v119, v10 offset:2560
	ds_load_u8 v120, v10 offset:2944
	ds_load_u8 v121, v10 offset:2816
	ds_load_u8 v122, v10 offset:2176
	ds_load_u8 v123, v10 offset:2048
	ds_load_u8 v124, v10 offset:2432
	ds_load_u8 v125, v10 offset:2304
	ds_load_u8 v142, v10 offset:4032
	ds_load_u8 v143, v10 offset:3904
	ds_load_u8 v144, v10 offset:3776
	ds_load_u8 v145, v10 offset:3648
	ds_load_u8 v14, v10 offset:3712
	ds_load_u8 v15, v10 offset:3584
	ds_load_u8 v16, v10 offset:3968
	ds_load_u8 v17, v10 offset:3840
	ds_load_u8 v107, v10 offset:960
	ds_load_u8 v108, v10 offset:832
	ds_load_u8 v134, v10 offset:704
	ds_load_u8 v135, v10 offset:576
	ds_load_u8 v11, v10 offset:448
	ds_load_u8 v82, v10 offset:320
	ds_load_u8 v136, v10 offset:192
	ds_load_u8 v138, v10 offset:64
	ds_load_u8 v146, v10 offset:3520
	ds_load_u8 v147, v10 offset:3392
	ds_load_u8 v148, v10 offset:3264
	ds_load_u8 v149, v10 offset:3136
	ds_load_u8 v150, v10 offset:3008
	ds_load_u8 v151, v10 offset:2880
	ds_load_u8 v152, v10 offset:2752
	ds_load_u8 v153, v10 offset:2624
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v128, v13, v12, 0xc0c0004
	ds_load_u8 v154, v10 offset:2496
	ds_load_u8 v155, v10 offset:2368
	ds_load_u8 v156, v10 offset:2240
	ds_load_u8 v157, v10 offset:2112
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v129, v19, v18, 0xc0c0004
	v_mov_b32_e32 v85, s14
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v166, v10 offset:5056
	ds_load_u8 v167, v10 offset:4928
	ds_load_u8 v168, v10 offset:4800
	ds_load_u8 v169, v10 offset:4672
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v129, 16, v128
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	ds_load_u8 v124, v10 offset:5760
	ds_load_u8 v125, v10 offset:5632
	ds_load_u8 v130, v10 offset:6016
	ds_load_u8 v131, v10 offset:5888
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v126, v15, v14, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v127, v17, v16, 0xc0c0004
	v_lshl_or_b32 v118, v123, 16, v122
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v95, v135, v134, 0xc0c0004
	v_perm_b32 v96, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v97, v138, v136, 0xc0c0004
	v_lshl_or_b32 v121, v127, 16, v126
	ds_load_u8 v122, v10 offset:5248
	ds_load_u8 v123, v10 offset:5120
	ds_load_u8 v126, v10 offset:5504
	ds_load_u8 v127, v10 offset:5376
	ds_load_u8 v128, v10 offset:4736
	ds_load_u8 v129, v10 offset:4608
	ds_load_u8 v132, v10 offset:4992
	ds_load_u8 v133, v10 offset:4864
	ds_load_u8 v158, v10 offset:6080
	ds_load_u8 v159, v10 offset:5952
	ds_load_u8 v160, v10 offset:5824
	ds_load_u8 v161, v10 offset:5696
	v_perm_b32 v11, v82, v11, 0xc0c0004
	v_dual_mov_b32 v88, s17 :: v_dual_mov_b32 v87, s16
	v_mov_b32_e32 v86, s15
	v_mov_b32_e32 v84, s13
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v138, v11, 16, v97
	v_perm_b32 v11, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v107, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v131, v130, 0xc0c0004
	ds_load_u8 v130, v10 offset:4224
	ds_load_u8 v131, v10 offset:4096
	ds_load_u8 v137, v10 offset:4480
	ds_load_u8 v139, v10 offset:4352
	ds_load_u8 v162, v10 offset:5568
	ds_load_u8 v163, v10 offset:5440
	ds_load_u8 v164, v10 offset:5312
	ds_load_u8 v165, v10 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v123, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v129, v128, 0xc0c0004
	v_lshl_or_b32 v125, v125, 16, v124
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v133, v132, 0xc0c0004
	ds_load_u8 v128, v10 offset:7808
	ds_load_u8 v129, v10 offset:7680
	ds_load_u8 v132, v10 offset:8064
	ds_load_u8 v133, v10 offset:7936
	ds_load_u8 v170, v10 offset:4544
	ds_load_u8 v171, v10 offset:4416
	ds_load_u8 v172, v10 offset:4288
	ds_load_u8 v173, v10 offset:4160
	v_lshl_or_b32 v124, v123, 16, v122
	v_perm_b32 v108, v149, v148, 0xc0c0004
	v_perm_b32 v134, v147, v146, 0xc0c0004
	v_lshl_or_b32 v123, v127, 16, v126
	v_perm_b32 v135, v153, v152, 0xc0c0004
	v_perm_b32 v136, v151, v150, 0xc0c0004
	v_perm_b32 v142, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v146, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v139, v137, 0xc0c0004
	ds_load_u8 v139, v10 offset:7296
	ds_load_u8 v140, v10 offset:7168
	ds_load_u8 v141, v10 offset:7552
	ds_load_u8 v174, v10 offset:7424
	ds_load_u8 v175, v10 offset:8128
	ds_load_u8 v176, v10 offset:8000
	ds_load_u8 v177, v10 offset:7872
	ds_load_u8 v178, v10 offset:7744
	v_wmma_i32_16x16x16_iu8 v[12:19], v[114:117], v[103:106], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v137, v129, v128, 0xc0c0004
	v_lshl_or_b32 v122, v131, 16, v130
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v179, v133, v132, 0xc0c0004
	ds_load_u8 v180, v10 offset:6784
	ds_load_u8 v181, v10 offset:6656
	ds_load_u8 v182, v10 offset:7040
	ds_load_u8 v183, v10 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v20 offset:2048
	ds_load_b128 v[130:133], v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v10 offset:6272
	ds_load_u8 v184, v10 offset:6144
	v_lshl_or_b32 v145, v107, 16, v11
	v_lshl_or_b32 v144, v134, 16, v108
	v_lshl_or_b32 v137, v179, 16, v137
	ds_load_u8 v179, v10 offset:7616
	ds_load_u8 v185, v10 offset:7488
	ds_load_u8 v186, v10 offset:7360
	ds_load_u8 v187, v10 offset:7232
	v_lshl_or_b32 v143, v136, 16, v135
	v_lshl_or_b32 v142, v146, 16, v142
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v188, v140, v139, 0xc0c0004
	ds_load_u8 v139, v10 offset:6528
	ds_load_u8 v140, v10 offset:6400
	ds_load_u8 v189, v10 offset:7104
	ds_load_u8 v190, v10 offset:6976
	ds_load_u8 v191, v10 offset:6848
	ds_load_u8 v192, v10 offset:6720
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v174, v141, 0xc0c0004
	v_lshl_or_b32 v141, v91, 16, v93
	v_perm_b32 v11, v161, v160, 0xc0c0004
	v_perm_b32 v107, v167, v166, 0xc0c0004
	v_perm_b32 v108, v173, v172, 0xc0c0004
	v_perm_b32 v134, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[12:19], v[118:121], v[99:102], v[12:19] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v183, v182, 0xc0c0004
	ds_load_u8 v182, v10 offset:6592
	ds_load_u8 v183, v10 offset:6464
	ds_load_u8 v193, v10 offset:6336
	ds_load_u8 v10, v10 offset:6208
	v_lshl_or_b32 v146, v134, 16, v108
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v184, v20, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[12:19], v[122:125], v[6:9], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v174, 16, v188
	v_lshl_or_b32 v135, v181, 16, v180
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v140, v139, 0xc0c0004
	v_lshl_or_b32 v140, v94, 16, v92
	v_lshl_or_b32 v139, v96, 16, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v82, 16, v20
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v190, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[138:141], v[103:106], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v103, v159, v158, 0xc0c0004
	v_perm_b32 v104, v165, v164, 0xc0c0004
	v_perm_b32 v105, v163, v162, 0xc0c0004
	v_perm_b32 v106, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[142:145], v[99:102], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v103, 16, v11
	v_perm_b32 v11, v178, v177, 0xc0c0004
	v_lshl_or_b32 v148, v105, 16, v104
	v_lshl_or_b32 v147, v107, 16, v106
	v_perm_b32 v99, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v193, 0xc0c0004
	v_perm_b32 v82, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[12:19], v[134:137], v[130:133], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[146:149], v[6:9], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v99, 16, v11
	v_wmma_i32_16x16x16_iu8 v[99:106], v[114:117], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v6, v187, v186, 0xc0c0004
	v_perm_b32 v7, v185, v179, 0xc0c0004
	v_perm_b32 v11, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[118:121], v[78:81], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[142:145], v[78:81], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v12
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v20, 16, v11
	v_lshl_or_b32 v6, v82, 16, v10
	v_wmma_i32_16x16x16_iu8 v[99:106], v[122:125], v[2:5], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[146:149], v[2:5], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v13
	v_cvt_f32_i32_e32 v3, v14
	v_wmma_i32_16x16x16_iu8 v[91:98], v[6:9], v[130:133], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[134:137], v[126:129], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[6:9], v[126:129], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v15
	v_cvt_f32_i32_e32 v5, v16
	v_cvt_f32_i32_e32 v6, v17
	v_cvt_f32_i32_e32 v7, v18
	v_cvt_f32_i32_e32 v8, v19
	v_cvt_f32_i32_e32 v9, v91
	v_cvt_f32_i32_e32 v10, v92
	v_cvt_f32_i32_e32 v11, v93
	v_cvt_f32_i32_e32 v13, v94
	v_cvt_f32_i32_e32 v14, v95
	v_cvt_f32_i32_e32 v15, v96
	v_cvt_f32_i32_e32 v16, v97
	v_cvt_f32_i32_e32 v17, v98
	v_cvt_f32_i32_e32 v18, v99
	v_cvt_f32_i32_e32 v19, v100
	v_cvt_f32_i32_e32 v20, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s23, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s23, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v91, v72, s4, 1
	v_add_lshl_u32 v92, v73, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v93, v71, s4, 1
	v_add_lshl_u32 v101, v47, s4, 1
	v_add_lshl_u32 v94, v70, s4, 1
	v_add_lshl_u32 v102, v46, s4, 1
	v_add_lshl_u32 v95, v67, s4, 1
	v_add_lshl_u32 v103, v45, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v96, v59, s4, 1
	v_add_lshl_u32 v104, v36, s4, 1
	v_add_lshl_u32 v97, v56, s4, 1
	v_add_lshl_u32 v98, v53, s4, 1
	v_add_lshl_u32 v99, v50, s4, 1
	v_add_lshl_u32 v100, v48, s4, 1
	v_add_lshl_u32 v105, v32, s4, 1
	v_add_lshl_u32 v106, v38, s4, 1
	v_add_lshl_u32 v107, v34, s4, 1
	v_add_lshl_u32 v108, v30, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	s_and_b32 s21, s21, 0xffff
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	s_clause 0xf
	buffer_load_u16 v93, v93, s[20:23], 0 offen
	buffer_load_u16 v94, v94, s[20:23], 0 offen
	buffer_load_u16 v95, v95, s[20:23], 0 offen
	buffer_load_u16 v96, v96, s[20:23], 0 offen
	buffer_load_u16 v97, v97, s[20:23], 0 offen
	buffer_load_u16 v98, v98, s[20:23], 0 offen
	buffer_load_u16 v99, v99, s[20:23], 0 offen
	buffer_load_u16 v100, v100, s[20:23], 0 offen
	buffer_load_u16 v101, v101, s[20:23], 0 offen
	buffer_load_u16 v102, v102, s[20:23], 0 offen
	buffer_load_u16 v103, v103, s[20:23], 0 offen
	buffer_load_u16 v104, v104, s[20:23], 0 offen
	buffer_load_u16 v105, v105, s[20:23], 0 offen
	buffer_load_u16 v106, v106, s[20:23], 0 offen
	buffer_load_u16 v107, v107, s[20:23], 0 offen
	buffer_load_u16 v108, v108, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v91, v91, s[8:11], 0 offen
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s42, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v111, v1 offset:1664
	ds_load_u8 v112, v1 offset:1536
	ds_load_u8 v113, v1 offset:1920
	ds_load_u8 v114, v1 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v109, s41, v77
	v_add_nc_u32_e32 v110, s41, v76
	v_add_nc_u32_e32 v117, s41, v75
	v_add_nc_u32_e32 v115, s41, v74
	ds_load_b128 v[74:77], v109 offset:2048
	ds_load_b128 v[125:128], v109
	ds_load_b128 v[141:144], v110 offset:2048
	ds_load_b128 v[129:132], v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v109, v1 offset:1152
	ds_load_u8 v110, v1 offset:1024
	ds_load_u8 v116, v1 offset:1408
	ds_load_u8 v118, v1 offset:1280
	ds_load_u8 v119, v1 offset:640
	ds_load_u8 v120, v1 offset:512
	ds_load_u8 v121, v1 offset:896
	ds_load_u8 v122, v1 offset:768
	ds_load_u8 v123, v1 offset:1984
	ds_load_u8 v124, v1 offset:1856
	ds_load_u8 v173, v1 offset:1728
	ds_load_u8 v174, v1 offset:1600
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v118, v116, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	ds_load_u8 v113, v1 offset:128
	ds_load_u8 v114, v1
	ds_load_u8 v133, v1 offset:384
	ds_load_u8 v134, v1 offset:256
	ds_load_u8 v175, v1 offset:1472
	ds_load_u8 v177, v1 offset:1344
	ds_load_u8 v178, v1 offset:1216
	ds_load_u8 v179, v1 offset:1088
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v119, v122, v121, 0xc0c0004
	v_lshl_or_b32 v155, v110, 16, v109
	v_lshl_or_b32 v156, v112, 16, v111
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_lshl_or_b32 v154, v119, 16, v116
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v134, v133, 0xc0c0004
	v_mov_b32_e32 v140, s19
	ds_load_u8 v111, v1 offset:3712
	ds_load_u8 v112, v1 offset:3584
	ds_load_u8 v113, v1 offset:3968
	ds_load_u8 v114, v1 offset:3840
	v_mov_b32_e32 v134, s13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[145:148], v115 offset:2048
	ds_load_b128 v[149:152], v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v153, v110, 16, v109
	ds_load_u8 v109, v1 offset:3200
	ds_load_u8 v110, v1 offset:3072
	ds_load_u8 v115, v1 offset:3456
	ds_load_u8 v116, v1 offset:3328
	ds_load_u8 v157, v1 offset:2688
	ds_load_u8 v158, v1 offset:2560
	ds_load_u8 v159, v1 offset:2944
	ds_load_u8 v160, v1 offset:2816
	ds_load_u8 v161, v1 offset:2176
	ds_load_u8 v162, v1 offset:2048
	ds_load_u8 v163, v1 offset:2432
	ds_load_u8 v164, v1 offset:2304
	ds_load_u8 v183, v1 offset:4032
	ds_load_u8 v184, v1 offset:3904
	ds_load_u8 v185, v1 offset:3776
	ds_load_u8 v186, v1 offset:3648
	ds_load_u8 v118, v1 offset:960
	ds_load_u8 v180, v1 offset:832
	ds_load_u8 v181, v1 offset:704
	ds_load_u8 v182, v1 offset:576
	ds_load_u8 v119, v1 offset:448
	ds_load_u8 v120, v1 offset:320
	ds_load_u8 v121, v1 offset:192
	ds_load_u8 v122, v1 offset:64
	v_mov_b32_e32 v136, s15
	ds_load_u8 v187, v1 offset:3520
	ds_load_u8 v188, v1 offset:3392
	ds_load_u8 v189, v1 offset:3264
	ds_load_u8 v190, v1 offset:3136
	ds_load_u8 v191, v1 offset:3008
	ds_load_u8 v192, v1 offset:2880
	ds_load_u8 v193, v1 offset:2752
	ds_load_u8 v194, v1 offset:2624
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v167, v110, v109, 0xc0c0004
	ds_load_u8 v195, v1 offset:2496
	ds_load_u8 v196, v1 offset:2368
	ds_load_u8 v197, v1 offset:2240
	ds_load_u8 v198, v1 offset:2112
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v168, v116, v115, 0xc0c0004
	ds_load_u8 v208, v1 offset:5056
	ds_load_u8 v209, v1 offset:4928
	ds_load_u8 v210, v1 offset:4800
	ds_load_u8 v211, v1 offset:4672
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v124, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	v_lshl_or_b32 v159, v168, 16, v167
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v165, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v162, v164, v163, 0xc0c0004
	ds_load_u8 v163, v1 offset:5760
	ds_load_u8 v164, v1 offset:5632
	ds_load_u8 v169, v1 offset:6016
	ds_load_u8 v170, v1 offset:5888
	v_perm_b32 v166, v114, v113, 0xc0c0004
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v118, v180, v118, 0xc0c0004
	v_lshl_or_b32 v157, v162, 16, v161
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_lshl_or_b32 v160, v166, 16, v165
	ds_load_u8 v161, v1 offset:5248
	ds_load_u8 v162, v1 offset:5120
	ds_load_u8 v165, v1 offset:5504
	ds_load_u8 v166, v1 offset:5376
	ds_load_u8 v167, v1 offset:4736
	ds_load_u8 v168, v1 offset:4608
	ds_load_u8 v171, v1 offset:4992
	ds_load_u8 v172, v1 offset:4864
	ds_load_u8 v199, v1 offset:6080
	ds_load_u8 v200, v1 offset:5952
	ds_load_u8 v201, v1 offset:5824
	ds_load_u8 v202, v1 offset:5696
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_dual_mov_b32 v139, s18 :: v_dual_mov_b32 v138, s17
	v_mov_b32_e32 v137, s16
	v_mov_b32_e32 v135, s14
	v_mov_b32_e32 v133, s12
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_perm_b32 v164, v170, v169, 0xc0c0004
	ds_load_u8 v169, v1 offset:4224
	ds_load_u8 v170, v1 offset:4096
	ds_load_u8 v176, v1 offset:4480
	ds_load_u8 v203, v1 offset:4352
	ds_load_u8 v204, v1 offset:5568
	ds_load_u8 v205, v1 offset:5440
	ds_load_u8 v206, v1 offset:5312
	ds_load_u8 v207, v1 offset:5184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v165, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v166, v172, v171, 0xc0c0004
	ds_load_u8 v167, v1 offset:7808
	ds_load_u8 v168, v1 offset:7680
	ds_load_u8 v171, v1 offset:8064
	ds_load_u8 v172, v1 offset:7936
	ds_load_u8 v212, v1 offset:4544
	ds_load_u8 v213, v1 offset:4416
	ds_load_u8 v214, v1 offset:4288
	ds_load_u8 v215, v1 offset:4160
	v_lshl_or_b32 v164, v164, 16, v163
	v_lshl_or_b32 v163, v162, 16, v161
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v166, 16, v165
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[129:132], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v170, v203, v176, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v176, v168, v167, 0xc0c0004
	ds_load_u8 v203, v1 offset:7296
	ds_load_u8 v216, v1 offset:7168
	ds_load_u8 v217, v1 offset:7552
	ds_load_u8 v218, v1 offset:7424
	ds_load_u8 v219, v1 offset:8128
	ds_load_u8 v220, v1 offset:8000
	ds_load_u8 v221, v1 offset:7872
	ds_load_u8 v222, v1 offset:7744
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v223, v172, v171, 0xc0c0004
	v_lshl_or_b32 v161, v170, 16, v169
	ds_load_u8 v224, v1 offset:6784
	ds_load_u8 v225, v1 offset:6656
	ds_load_u8 v226, v1 offset:7040
	ds_load_u8 v227, v1 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[165:168], v117 offset:2048
	ds_load_b128 v[169:172], v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v117, v1 offset:6272
	ds_load_u8 v228, v1 offset:6144
	v_lshl_or_b32 v176, v223, 16, v176
	ds_load_u8 v223, v1 offset:7616
	ds_load_u8 v229, v1 offset:7488
	ds_load_u8 v230, v1 offset:7360
	ds_load_u8 v231, v1 offset:7232
	v_wmma_i32_16x16x16_iu8 v[109:116], v[161:164], v[125:128], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v203, v216, v203, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v216, v218, v217, 0xc0c0004
	ds_load_u8 v217, v1 offset:6528
	ds_load_u8 v218, v1 offset:6400
	ds_load_u8 v232, v1 offset:7104
	ds_load_u8 v233, v1 offset:6976
	ds_load_u8 v234, v1 offset:6848
	ds_load_u8 v235, v1 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v225, v227, v226, 0xc0c0004
	ds_load_u8 v226, v1 offset:6592
	ds_load_u8 v227, v1 offset:6464
	ds_load_u8 v236, v1 offset:6336
	ds_load_u8 v1, v1 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v228, v228, v117, 0xc0c0004
	v_perm_b32 v117, v174, v173, 0xc0c0004
	v_perm_b32 v173, v177, v175, 0xc0c0004
	v_perm_b32 v174, v182, v181, 0xc0c0004
	v_lshl_or_b32 v177, v119, 16, v121
	v_perm_b32 v175, v190, v189, 0xc0c0004
	v_lshl_or_b32 v180, v123, 16, v117
	v_lshl_or_b32 v179, v173, 16, v124
	v_lshl_or_b32 v178, v118, 16, v174
	v_perm_b32 v173, v186, v185, 0xc0c0004
	v_perm_b32 v174, v184, v183, 0xc0c0004
	v_perm_b32 v181, v188, v187, 0xc0c0004
	v_perm_b32 v182, v194, v193, 0xc0c0004
	v_perm_b32 v183, v192, v191, 0xc0c0004
	v_perm_b32 v184, v198, v197, 0xc0c0004
	v_perm_b32 v185, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[177:180], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v174, 16, v173
	v_lshl_or_b32 v151, v181, 16, v175
	v_lshl_or_b32 v150, v183, 16, v182
	v_lshl_or_b32 v149, v185, 16, v184
	v_perm_b32 v173, v202, v201, 0xc0c0004
	v_perm_b32 v174, v200, v199, 0xc0c0004
	v_perm_b32 v175, v207, v206, 0xc0c0004
	v_perm_b32 v181, v205, v204, 0xc0c0004
	v_perm_b32 v182, v211, v210, 0xc0c0004
	v_perm_b32 v185, v209, v208, 0xc0c0004
	v_perm_b32 v186, v215, v214, 0xc0c0004
	v_perm_b32 v187, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v174, 16, v173
	v_lshl_or_b32 v183, v181, 16, v175
	v_lshl_or_b32 v182, v185, 16, v182
	v_lshl_or_b32 v181, v187, 16, v186
	v_perm_b32 v129, v222, v221, 0xc0c0004
	v_perm_b32 v130, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v185, v231, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[125:128], v[117:124] neg_lo:[1,1,0]
	v_perm_b32 v186, v229, v223, 0xc0c0004
	v_lshl_or_b32 v188, v130, 16, v129
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[145:148], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v189, v235, v234, 0xc0c0004
	v_perm_b32 v145, v233, v232, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v236, 0xc0c0004
	v_perm_b32 v146, v227, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[141:144], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v216, 16, v203
	v_lshl_or_b32 v174, v225, 16, v224
	v_lshl_or_b32 v173, v217, 16, v228
	v_lshl_or_b32 v187, v186, 16, v185
	v_lshl_or_b32 v186, v145, 16, v189
	v_lshl_or_b32 v185, v146, 16, v1
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[74:77], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[74:77], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[173:176], v[169:172], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[185:188], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[173:176], v[165:168], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[185:188], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v109
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
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s28, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s28, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v75.h, v108.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v77.h, v106.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v72, v72, s4, 1
	v_add_lshl_u32 v73, v73, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v47, v47, s4, 1
	v_add_lshl_u32 v46, v46, s4, 1
	v_add_lshl_u32 v45, v45, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v36, v36, s4, 1
	v_add_lshl_u32 v32, v32, s4, 1
	v_add_lshl_u32 v38, v38, s4, 1
	v_add_lshl_u32 v34, v34, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	v_add_lshl_u32 v30, v30, s4, 1
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_and_b32 v23, 56, v23
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	s_clause 0x7
	buffer_load_u16 v47, v47, s[20:23], 0 offen
	buffer_load_u16 v46, v46, s[20:23], 0 offen
	buffer_load_u16 v45, v45, s[20:23], 0 offen
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	buffer_load_u16 v74, v30, s[20:23], 0 offen
	v_add_lshl_u32 v71, v71, s4, 1
	v_add_lshl_u32 v70, v70, s4, 1
	v_add_lshl_u32 v67, v67, s4, 1
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v56, v56, s4, 1
	v_add_lshl_u32 v53, v53, s4, 1
	v_add_lshl_u32 v50, v50, s4, 1
	v_add_lshl_u32 v48, v48, s4, 1
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	s_clause 0x7
	buffer_load_u16 v71, v71, s[20:23], 0 offen
	buffer_load_u16 v70, v70, s[20:23], 0 offen
	buffer_load_u16 v67, v67, s[20:23], 0 offen
	buffer_load_u16 v59, v59, s[20:23], 0 offen
	buffer_load_u16 v56, v56, s[20:23], 0 offen
	buffer_load_u16 v53, v53, s[20:23], 0 offen
	buffer_load_u16 v50, v50, s[20:23], 0 offen
	buffer_load_u16 v48, v48, s[20:23], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v30.h, v92.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v76.h, v107.l
	v_mov_b16_e32 v92.h, v105.l
	v_mov_b16_e32 v93.h, v104.l
	v_mov_b16_e32 v94.h, v103.l
	v_mov_b16_e32 v95.h, v102.l
	v_mov_b16_e32 v96.h, v101.l
	v_mov_b16_e32 v97.h, v100.l
	v_mov_b16_e32 v98.h, v99.l
	v_mov_b16_e32 v99.h, v98.l
	v_mov_b16_e32 v100.h, v97.l
	v_mov_b16_e32 v101.h, v96.l
	v_mov_b16_e32 v102.h, v95.l
	v_mov_b16_e32 v103.h, v94.l
	v_mov_b16_e32 v104.h, v93.l
	v_mov_b16_e32 v75.l, v30.l
	v_mov_b16_e32 v76.l, v30.l
	v_mov_b16_e32 v77.l, v30.l
	v_mov_b16_e32 v92.l, v30.l
	v_mov_b16_e32 v93.l, v30.l
	v_mov_b16_e32 v94.l, v30.l
	v_mov_b16_e32 v95.l, v30.l
	v_mov_b16_e32 v96.l, v30.l
	v_mov_b16_e32 v97.l, v30.l
	v_mov_b16_e32 v98.l, v30.l
	v_mov_b16_e32 v99.l, v30.l
	v_mov_b16_e32 v100.l, v30.l
	v_mov_b16_e32 v101.l, v30.l
	v_mov_b16_e32 v102.l, v30.l
	v_mov_b16_e32 v103.l, v30.l
	v_mov_b16_e32 v104.l, v30.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v105, v30, v75
	v_mul_f32_e32 v106, v30, v76
	v_mul_f32_e32 v107, v30, v77
	v_mul_f32_e32 v108, v30, v92
	v_mul_f32_e32 v109, v30, v93
	v_mul_f32_e32 v141, v30, v94
	v_mul_f32_e32 v142, v30, v95
	v_mul_f32_e32 v143, v30, v96
	v_mul_f32_e32 v144, v30, v97
	v_mul_f32_e32 v145, v30, v98
	v_mul_f32_e32 v146, v30, v99
	v_mul_f32_e32 v147, v30, v100
	v_mul_f32_e32 v148, v30, v101
	v_mul_f32_e32 v149, v30, v102
	v_mul_f32_e32 v150, v30, v103
	v_mul_f32_e32 v151, v30, v104
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v30.h, v91.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v105, v90, v61
	v_fma_f32 v88, v107, v88, v68
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v21, s35, v21
	v_mul_lo_u32 v22, s35, v22
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v77, v30, v77
	v_mul_f32_e32 v75, v30, v75
	v_mul_f32_e32 v91, v30, v92
	v_mul_f32_e32 v92, v30, v93
	v_mul_f32_e32 v93, v30, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v77, v15, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v30, v95
	v_mul_f32_e32 v95, v30, v96
	v_mul_f32_e32 v96, v30, v97
	v_mul_f32_e32 v97, v30, v98
	v_mul_f32_e32 v98, v30, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v42, v15, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v93, v11, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v30, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v97, v7, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v61, v90, s3
	v_cndmask_b32_e64 v68, v68, v88, s3
	v_cndmask_b32_e64 v11, v39, v11, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v31, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v39, 16, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v76, v16, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v99, v30, v100 :: v_dual_lshlrev_b32 v34, 16, v34
	v_mul_f32_e32 v100, v30, v101
	v_mul_f32_e32 v101, v30, v102
	v_mul_f32_e32 v102, v30, v103
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v103, v30, v104 :: v_dual_lshlrev_b32 v42, 16, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v100, v4, v27
	v_fma_f32 v17, v75, v17, v44
	v_fma_f32 v3, v101, v3, v26
	v_fma_f32 v18, v151, v18, v49
	v_fma_f32 v12, v103, v12, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v27, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v44, v17, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v31, 16, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v24, v12, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v24, 16, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v26, v3, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v26, 16, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v43, v16, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v149, v20, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v24, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v99, v5, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v24, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v91, v14, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v24, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v96, v8, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v28, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v28, 16, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v41, v14, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v41, 16, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v33, v8, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v24, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v94, v10, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v24, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v98, v6, v29
	v_fma_f32 v19, v150, v19, v51
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v24, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v37, v10, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v24, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v95, v9, v35
	v_fma_f32 v13, v92, v13, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v29, v6, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v24, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v102, v2, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v35, v9, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v35, 16, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v51, v19, s3
	v_cndmask_b32_e64 v18, v49, v18, s3
	v_cndmask_b32_e64 v13, v40, v13, s3
	v_cndmask_b32_e64 v2, v25, v2, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v25, 16, v73
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v49, v24, v35 :: v_dual_lshlrev_b32 v40, 16, v46
	v_mul_f32_e32 v51, v24, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v52, v20, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v24, v29
	v_mul_f32_e32 v50, v24, v37
	v_mul_f32_e32 v52, v24, v40
	v_dual_mul_f32 v56, v24, v36 :: v_dual_mul_f32 v27, v25, v27
	v_dual_mul_f32 v67, v24, v38 :: v_dual_mul_f32 v28, v25, v28
	v_mul_f32_e32 v26, v25, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v43, v1, v12
	v_fma_f32 v43, v45, v111, v3
	v_fma_f32 v45, v47, v113, v5
	v_fma_f32 v47, v49, v115, v7
	v_fma_f32 v49, v51, v117, v9
	v_fma_f32 v51, v53, v119, v11
	v_fma_f32 v85, v141, v85, v64
	v_fma_f32 v83, v143, v83, v62
	v_fma_f32 v80, v146, v80, v57
	v_fma_f32 v78, v148, v78, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v24, v24, v42 :: v_dual_mul_f32 v29, v25, v29
	v_mul_f32_e32 v31, v25, v31
	v_mul_f32_e32 v33, v25, v33
	v_mul_f32_e32 v35, v25, v35
	v_mul_f32_e32 v37, v25, v37
	v_mul_f32_e32 v39, v25, v39
	v_mul_f32_e32 v41, v25, v41
	v_mul_f32_e32 v38, v25, v38
	v_mul_f32_e32 v34, v25, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v59, v121, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v43, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v25, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v47, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v25, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v51, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v25, v32
	v_mul_f32_e32 v25, v25, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v44, v110, v2
	v_fma_f32 v44, v46, v112, v4
	v_fma_f32 v46, v48, v114, v6
	v_fma_f32 v48, v50, v116, v8
	v_fma_f32 v50, v52, v118, v10
	v_fma_f32 v52, v56, v120, v13
	v_fma_f32 v56, v67, v122, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v85, s3
	v_cndmask_b32_e64 v62, v62, v83, s3
	v_cndmask_b32_e64 v57, v57, v80, s3
	v_cndmask_b32_e64 v54, v54, v78, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v70, v123, v16
	v_fma_f32 v24, v24, v124, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v12, v1, s2
	v_cndmask_b32_e64 v2, v2, v42, s2
	v_cndmask_b32_e64 v6, v6, v46, s2
	v_cndmask_b32_e64 v12, v13, v52, s2
	v_cndmask_b32_e64 v13, v14, v53, s2
	v_cndmask_b32_e64 v14, v15, v56, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v86, v109, v86, v65
	v_fma_f32 v84, v142, v84, v63
	v_fma_f32 v81, v145, v81, v58
	v_fma_f32 v79, v147, v79, v55
	v_fma_f32 v26, v26, v125, v18
	v_fma_f32 v27, v27, v126, v19
	v_fma_f32 v28, v28, v127, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v16, v59, s2
	v_cndmask_b32_e64 v16, v17, v24, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v2, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v128, v54
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v6, v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v130, v57
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v12, v12, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v133, v62
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, v14, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v41, v41, v135, v64
	v_fma_f32 v82, v144, v82, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v86, s3
	v_cndmask_b32_e64 v63, v63, v84, s3
	v_cndmask_b32_e64 v58, v58, v81, s3
	v_cndmask_b32_e64 v55, v55, v79, s3
	v_cndmask_b32_e64 v4, v4, v44, s2
	v_cndmask_b32_e64 v8, v8, v48, s2
	v_cndmask_b32_e64 v10, v10, v50, s2
	v_cndmask_b32_e64 v17, v18, v26, s2
	v_cndmask_b32_e64 v18, v19, v27, s2
	v_cndmask_b32_e64 v19, v20, v28, s2
	v_cndmask_b32_e64 v20, v54, v29, s2
	v_cndmask_b32_e64 v26, v57, v33, s2
	v_cndmask_b32_e64 v29, v62, v39, s2
	v_cndmask_b32_e64 v33, v64, v41, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v18, v18, v18
	v_max_f32_e32 v16, v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v140, v61
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v12, 0, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v82, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v134, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v61, v25, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v129, v55
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v7, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v136, v65
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v8, v8, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v131, v58
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v132, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v55, v31, s2
	v_cndmask_b32_e64 v27, v58, v35, s2
	v_cndmask_b32_e64 v31, v63, v40, s2
	v_cndmask_b32_e64 v35, v65, v36, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v15, v15, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v138, v68
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, v25, v25 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v3.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v45, s2
	v_cndmask_b32_e64 v28, v60, v37, s2
	v_cndmask_b32_e64 v36, v68, v38, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v8, 0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v2.h
	v_mov_b16_e32 v38.l, v1.h
	v_mov_b16_e32 v38.h, v30.l
	v_mov_b16_e32 v37.h, v30.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v16, 0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v35, 0, v35 :: v_dual_and_b32 v38, 1, v38
	v_dual_max_f32 v25, 0, v25 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v14, 0, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v1, v38, 0x7fff
	v_and_b32_e32 v38, 1, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v2, v37, 0x7fff
	v_mov_b16_e32 v37.l, v4.h
	v_mov_b16_e32 v37.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v49, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v1, 1, v37
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v38, 0x7fff
	v_mov_b16_e32 v37.l, v6.h
	v_mov_b16_e32 v38.l, v5.h
	v_mov_b16_e32 v38.h, v30.l
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v4, v7, v7 :: v_dual_max_f32 v9, v9, v9
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v20, 0, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v7, 1, v37
	v_mov_b16_e32 v37.l, v4.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v36, v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_and_b32_e32 v7, 1, v37
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v8.h
	v_mov_b16_e32 v6.h, v30.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v7.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v9, v9
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v24, 0, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v3, 1, v6
	v_mov_b16_e32 v6.l, v10.h
	v_mov_b16_e32 v7.l, v9.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v26, 0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v12, v12 :: v_dual_and_b32 v6, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v30.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v9, v4, 0x7fff
	v_mov_b16_e32 v9.h, v30.l
	v_mov_b16_e32 v9.l, v7.h
	v_add3_u32 v6, v10, v6, 0x7fff
	v_and_b32_e32 v10, 1, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v11, v14, v14 :: v_dual_mul_f32 v12, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_and_b32_e32 v4, 1, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v10.h, v30.l
	v_mov_b16_e32 v10.l, v12.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v106, v89, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v15, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v108, v87, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v11.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v28, v28, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v8, 1, v10
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v30.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v89, s3
	v_cndmask_b32_e64 v66, v66, v87, s3
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v16, v16 :: v_dual_and_b32 v9, 1, v9
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v28, 0, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v12, v8, 0x7fff
	v_and_b32_e32 v12, 1, v13
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v18, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v137, v66
	v_fma_f32 v34, v34, v139, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v30.l
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v17, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v66, v32, s2
	v_cndmask_b32_e64 v34, v69, v34, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v27, v27, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v8.h
	v_and_b32_e32 v8, 1, v11
	v_mov_b16_e32 v12.l, v14.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v27, 0, v27
	v_max_f32_e32 v34, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v20, v20 :: v_dual_and_b32 v11, 1, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v10.h
	v_mov_b16_e32 v15.h, v30.l
	v_add3_u32 v7, v14, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v17, v28, v28 :: v_dual_and_b32 v14, 1, v15
	v_mul_f32_e32 v15, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v24, v24
	v_dual_mul_f32 v18, v27, v27 :: v_dual_and_b32 v13, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v14, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v30.l
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v16.h, v30.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v36, 0, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v12, v13, 0x7fff
	v_and_b32_e32 v13, 1, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v29, 0, v29 :: v_dual_and_b32 v14, 1, v16
	v_max_f32_e32 v32, 0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v17.h
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e32 v19.h, v30.l
	v_mov_b16_e32 v12.l, v10.h
	v_add3_u32 v10, v15, v13, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v14, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v20.h, v30.l
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v10.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v19
	v_add3_u32 v14, v17, v14, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v19, v35, v35 :: v_dual_and_b32 v16, 1, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.h, v30.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v13, v18, v13, 0x7fff
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v18.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v19.h
	v_mov_b16_e32 v14.l, v13.h
	v_add3_u32 v13, v15, v16, 0x7fff
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v20.l, v17.h
	v_and_b32_e32 v15, 1, v24
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s2, s34, s35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s3, s11
	v_add3_u32 v7, v7, v18, 0x7fff
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v15, v19, v15, 0x7fff
	v_mov_b16_e32 v18.h, v30.l
	v_mov_b16_e32 v19.h, v30.l
	v_mov_b16_e32 v13.l, v7.h
	v_add3_u32 v16, v17, v20, 0x7fff
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v36, v36
	v_dual_mul_f32 v17, v32, v32 :: v_dual_mul_f32 v20, v25, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v30.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v16.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v16, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v25.l, v20.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_add_i32 s2, s2, s33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v16.h
	v_and_b32_e32 v18, 1, v18
	v_and_b32_e32 v19, 1, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v39, s2, v23
	v_add3_u32 v23, s2, v23, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v7, v7, v18, 0x7fff
	v_mov_b32_e32 v18, 0x7632
	v_add3_u32 v17, v17, v19, 0x7fff
	v_and_b32_e32 v19, 1, v25
	v_add3_u32 v16, v16, v24, 0x7fff
	s_mov_b32 s2, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v7.l, v17.h
	v_add3_u32 v0, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v0.l, v16.h
	v_cndmask_b32_e32 v16, v5, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cndmask_b32_e32 v17, v9, v6, vcc_lo
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_cndmask_b32_e32 v9, v8, v4, vcc_lo
	v_dual_cndmask_b32 v4, v4, v8 :: v_dual_cndmask_b32 v19, v10, v11
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v11, v14, v12
	v_cndmask_b32_e32 v12, v12, v14, vcc_lo
	v_dual_cndmask_b32 v14, v7, v13 :: v_dual_cndmask_b32 v7, v13, v7
	v_lshl_or_b32 v6, v6, 8, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_permlanex16_b32 v13, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v7, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v6, 4, v6
	v_lshl_or_b32 v6, v10, 4, v10
	v_cndmask_b32_e32 v18, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x5040504, v1
	v_and_b32_e32 v25, 0x7060706, v6
	v_permlanex16_b32 v15, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s10
	v_perm_b32 v0, v2, v16, v24
	v_perm_b32 v1, v2, v16, v25
	v_perm_b32 v2, v13, v5, v24
	v_perm_b32 v3, v13, v5, v25
	v_add_lshl_u32 v16, v39, v21, 1
	v_perm_b32 v4, v10, v17, v24
	v_perm_b32 v5, v10, v17, v25
	v_perm_b32 v6, v15, v9, v24
	v_perm_b32 v7, v15, v9, v25
	v_add_lshl_u32 v17, v23, v21, 1
	v_perm_b32 v8, v20, v19, v24
	v_perm_b32 v9, v20, v19, v25
	v_perm_b32 v10, v12, v11, v24
	v_perm_b32 v11, v12, v11, v25
	v_perm_b32 v12, v26, v14, v24
	v_perm_b32 v13, v26, v14, v25
	v_perm_b32 v14, v27, v18, v24
	v_perm_b32 v15, v27, v18, v25
	v_add_lshl_u32 v18, v39, v22, 1
	v_add_lshl_u32 v19, v23, v22, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v17, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v18, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v19, s[0:3], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 237
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15252
; TotalNumSgprs: 46
; NumVgprs: 237
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.short	361                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     237
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
