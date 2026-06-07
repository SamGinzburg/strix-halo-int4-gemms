	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v47, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v20, 3, v0
	v_and_b32_e32 v46, 15, v0
	v_or_b32_e32 v49, 0x3f0, v0
	v_or_b32_e32 v50, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 24, v20
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s34, v4
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
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
	s_lshl_b32 s16, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s15, s17
	s_xor_b32 s14, s2, s17
	s_cvt_f32_u32 s18, s15
	s_ashr_i32 s14, s14, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v47
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s35, v5, v[1:2]
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13 is_stmt 1              ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s15
	s_mul_i32 s18, s18, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v7, s35, 5, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s13, s6, s18
	s_abs_i32 s18, s2
	s_add_i32 s13, s6, s13
	s_mov_b32 s6, 0x7ffffffe
	s_mul_hi_u32 s13, s18, s13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s18, s15
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s18, s15
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s13, s19, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s12, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s13, s14
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s15, s14
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s12, s13, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s12
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s13, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s18, s3
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s40, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0xff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v2, v2, v3, s40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s13, s33, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0x1ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s12, s34, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s43, s35, 8
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v8, s12, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s13, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s23, s34, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s13, v7
	s_add_i32 s13, s13, s43
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v2, s12, s23, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s13, v6
	v_add_nc_u32_e32 v7, s13, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[33:34], v8, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v9, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v10, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[35:36], v2, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v6, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v7, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v10, 16, v46
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0x2ff
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v48, 0x70, v2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, 0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v6, v6, 1, v48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v19, v2, v20
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v2, v[33:34] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v19, v[15:18]
	s_waitcnt vmcnt(3)
	ds_store_b128 v19, v[21:24] offset:4096
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 2, v6
	v_or_b32_e32 v12, 4, v6
	v_or_b32_e32 v13, 6, v6
	v_or_b32_e32 v14, 8, v6
	v_or_b32_e32 v7, 10, v6
	v_or_b32_e32 v8, 12, v6
	v_or_b32_e32 v9, 14, v6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v2, v[35:36] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v19, v[25:28] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v19, v[29:32] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v51, 0x7f0, v0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s13, s22, 0x100
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr13
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr51
.LBB0_3:                                ; %Flow121
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v15, s40, v46
	v_or_b32_e32 v10, s40, v10
	s_ashr_i32 s41, s16, 8
	v_or_b32_e32 v43, s33, v6
	v_or_b32_e32 v42, s33, v11
	v_mul_lo_u32 v44, v15, s41
	v_mul_lo_u32 v45, v10, s41
	v_or_b32_e32 v41, s33, v12
	v_or_b32_e32 v39, s33, v13
	v_or_b32_e32 v37, s33, v14
	v_or_b32_e32 v40, s33, v7
	v_or_b32_e32 v38, s33, v8
	v_or_b32_e32 v36, s33, v9
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v2, s22, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s10, s15, 7
	s_lshl_b32 s13, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v5, 0x220, v2
	v_add_nc_u32_e32 v2, 0x200, v2
	v_add3_u32 v4, s22, v4, 0x200
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s35, v5
	v_mul_lo_u32 v2, s35, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s34, v4
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_add3_u32 v5, v5, s10, v1
	v_add3_u32 v1, v2, s10, v1
	v_add3_u32 v51, v4, s40, v3
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v52, s13, v5
	v_subrev_nc_u32_e32 v53, s13, v1
	s_mov_b32 s13, s12
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v35, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_max_i32 s11, s41, 3
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s11, s11, -2
	s_add_i32 s34, 0, 0x4800
	s_add_i32 s42, 0, 0x2000
	s_mov_b32 s44, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s15, s10
	s_mov_b32 s14, s12
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v54, s15, v46
	v_add_nc_u32_e32 v55, s15, v49
	v_add_nc_u32_e32 v56, s15, v50
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s22, 31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v57, s14, v48, v46
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s14, s15, 24
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[17:18], v51, s[4:7], 0 offen
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s22, s14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v158, v44, s14, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v159, v45, s14, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v160, v43, s15, 1
	v_add_lshl_u32 v161, v42, s15, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v162, v41, s15, 1
	v_add_lshl_u32 v163, v39, s15, 1
	v_add_lshl_u32 v164, v37, s15, 1
	v_add_lshl_u32 v165, v40, s15, 1
	v_add_lshl_u32 v166, v38, s15, 1
	v_add_lshl_u32 v167, v36, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v158, 0x80000000, v158 :: v_dual_cndmask_b32 v159, 0x80000000, v159
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v160, 0x80000000, v160 :: v_dual_cndmask_b32 v161, 0x80000000, v161
	v_dual_cndmask_b32 v162, 0x80000000, v162 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_cndmask_b32 v164, 0x80000000, v164 :: v_dual_cndmask_b32 v165, 0x80000000, v165
	v_dual_cndmask_b32 v166, 0x80000000, v166 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v158, v158, s[28:31], 0 offen
	buffer_load_u16 v159, v159, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v160, v160, s[36:39], 0 offen
	buffer_load_u16 v161, v161, s[36:39], 0 offen
	buffer_load_u16 v162, v162, s[36:39], 0 offen
	buffer_load_u16 v163, v163, s[36:39], 0 offen
	buffer_load_u16 v164, v164, s[36:39], 0 offen
	buffer_load_u16 v165, v165, s[36:39], 0 offen
	buffer_load_u16 v166, v166, s[36:39], 0 offen
	buffer_load_u16 v167, v167, s[36:39], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v53, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v52, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v58, v54 offset:96
	ds_load_u8 v59, v54 offset:64
	ds_load_u8 v60, v54
	ds_load_u8 v61, v54 offset:16
	ds_load_u8 v62, v54 offset:32
	ds_load_u8 v63, v54 offset:112
	ds_load_u8 v64, v54 offset:80
	ds_load_u8 v65, v54 offset:48
	ds_load_u8 v66, v57 offset:1664
	ds_load_u8 v67, v57 offset:1920
	ds_load_u8 v68, v57 offset:1792
	ds_load_u8 v69, v57 offset:1536
	ds_load_u8 v70, v57 offset:1152
	ds_load_u8 v71, v57 offset:1408
	ds_load_u8 v72, v57 offset:1280
	ds_load_u8 v73, v57 offset:1024
	ds_load_u8 v74, v57 offset:640
	ds_load_u8 v75, v57 offset:896
	ds_load_u8 v76, v57 offset:768
	ds_load_u8 v77, v57 offset:512
	ds_load_u8 v78, v57 offset:128
	ds_load_u8 v79, v57 offset:384
	ds_load_u8 v80, v57 offset:256
	ds_load_u8 v81, v57
	ds_load_u8 v82, v54 offset:928
	ds_load_u8 v83, v57 offset:3712
	ds_load_u8 v84, v57 offset:3968
	ds_load_u8 v85, v57 offset:3840
	ds_load_u8 v86, v57 offset:3584
	ds_load_u8 v87, v57 offset:3200
	ds_load_u8 v88, v57 offset:3456
	ds_load_u8 v89, v57 offset:3328
	ds_load_u8 v90, v57 offset:3072
	ds_load_u8 v91, v57 offset:2688
	ds_load_u8 v92, v57 offset:2944
	ds_load_u8 v93, v57 offset:2816
	ds_load_u8 v94, v57 offset:2560
	ds_load_u8 v95, v57 offset:2176
	ds_load_u8 v96, v57 offset:2432
	ds_load_u8 v97, v57 offset:2304
	ds_load_u8 v98, v57 offset:2048
	ds_load_u8 v99, v57 offset:5760
	ds_load_u8 v100, v57 offset:6016
	ds_load_u8 v101, v57 offset:5888
	ds_load_u8 v102, v57 offset:5632
	ds_load_u8 v103, v57 offset:5248
	ds_load_u8 v104, v57 offset:5504
	ds_load_u8 v105, v57 offset:5376
	ds_load_u8 v106, v57 offset:5120
	ds_load_u8 v107, v57 offset:4736
	ds_load_u8 v108, v57 offset:4992
	ds_load_u8 v109, v57 offset:4864
	ds_load_u8 v110, v57 offset:4608
	ds_load_u8 v111, v57 offset:4224
	ds_load_u8 v112, v57 offset:4480
	ds_load_u8 v113, v57 offset:4352
	ds_load_u8 v114, v57 offset:4096
	ds_load_u8 v115, v54 offset:1664
	ds_load_u8 v116, v54 offset:1568
	ds_load_u8 v117, v54 offset:1632
	ds_load_u8 v118, v54 offset:1600
	ds_load_u8 v119, v57 offset:7808
	ds_load_u8 v120, v57 offset:8064
	ds_load_u8 v121, v57 offset:7936
	ds_load_u8 v122, v57 offset:7680
	ds_load_u8 v123, v57 offset:7296
	ds_load_u8 v124, v57 offset:7552
	ds_load_u8 v125, v57 offset:7424
	ds_load_u8 v126, v57 offset:7168
	ds_load_u8 v127, v57 offset:6784
	ds_load_u8 v128, v57 offset:7040
	ds_load_u8 v129, v57 offset:6912
	ds_load_u8 v130, v57 offset:6656
	ds_load_u8 v131, v57 offset:6272
	ds_load_u8 v132, v57 offset:6528
	ds_load_u8 v133, v57 offset:6400
	ds_load_u8 v57, v57 offset:6144
	ds_load_u8 v134, v54 offset:416
	ds_load_u8 v135, v54 offset:384
	ds_load_u8 v136, v54 offset:480
	ds_load_u8 v137, v54 offset:448
	ds_load_u8 v138, v54 offset:496
	ds_load_u8 v139, v54 offset:464
	ds_load_u8 v140, v54 offset:432
	ds_load_u8 v141, v54 offset:400
	ds_load_u8 v142, v54 offset:288
	ds_load_u8 v143, v54 offset:256
	ds_load_u8 v144, v54 offset:352
	ds_load_u8 v145, v54 offset:320
	ds_load_u8 v146, v54 offset:368
	ds_load_u8 v147, v54 offset:336
	ds_load_u8 v148, v54 offset:304
	ds_load_u8 v149, v54 offset:272
	ds_load_u8 v150, v54 offset:160
	ds_load_u8 v151, v54 offset:128
	ds_load_u8 v152, v54 offset:224
	ds_load_u8 v153, v54 offset:192
	ds_load_u8 v154, v54 offset:240
	ds_load_u8 v155, v54 offset:208
	ds_load_u8 v156, v54 offset:176
	ds_load_u8 v157, v54 offset:144
	ds_load_u8 v168, v54 offset:896
	ds_load_u8 v169, v54 offset:992
	ds_load_u8 v170, v54 offset:960
	ds_load_u8 v171, v54 offset:1024
	ds_load_u8 v172, v54 offset:976
	ds_load_u8 v173, v54 offset:944
	ds_load_u8 v174, v54 offset:912
	ds_load_u8 v175, v54 offset:800
	ds_load_u8 v176, v54 offset:768
	ds_load_u8 v177, v54 offset:864
	ds_load_u8 v178, v54 offset:832
	ds_load_u8 v179, v54 offset:880
	ds_load_u8 v180, v54 offset:848
	ds_load_u8 v181, v54 offset:816
	ds_load_u8 v182, v54 offset:784
	ds_load_u8 v183, v54 offset:672
	ds_load_u8 v184, v54 offset:640
	ds_load_u8 v185, v54 offset:736
	ds_load_u8 v186, v54 offset:704
	ds_load_u8 v187, v54 offset:752
	ds_load_u8 v188, v54 offset:720
	ds_load_u8 v189, v54 offset:688
	ds_load_u8 v190, v54 offset:656
	ds_load_u8 v191, v54 offset:544
	ds_load_u8 v192, v54 offset:512
	ds_load_u8 v193, v54 offset:608
	ds_load_u8 v194, v54 offset:576
	ds_load_u8 v195, v54 offset:624
	ds_load_u8 v196, v54 offset:592
	ds_load_u8 v197, v54 offset:560
	ds_load_u8 v198, v54 offset:528
	ds_load_u8 v199, v54 offset:1440
	ds_load_u8 v200, v54 offset:1504
	ds_load_u8 v201, v54 offset:1472
	ds_load_u8 v202, v54 offset:1536
	ds_load_u8 v203, v54 offset:1520
	ds_load_u8 v204, v54 offset:1488
	ds_load_u8 v205, v54 offset:1456
	ds_load_u8 v206, v54 offset:1424
	ds_load_u8 v207, v54 offset:1408
	ds_load_u8 v208, v54 offset:1312
	ds_load_u8 v209, v54 offset:1376
	ds_load_u8 v210, v54 offset:1344
	ds_load_u8 v211, v54 offset:1392
	ds_load_u8 v212, v54 offset:1360
	ds_load_u8 v213, v54 offset:1328
	ds_load_u8 v214, v54 offset:1296
	ds_load_u8 v215, v54 offset:1280
	ds_load_u8 v216, v54 offset:1184
	ds_load_u8 v217, v54 offset:1248
	ds_load_u8 v218, v54 offset:1216
	ds_load_u8 v219, v54 offset:1264
	ds_load_u8 v220, v54 offset:1232
	ds_load_u8 v221, v54 offset:1200
	ds_load_u8 v222, v54 offset:1168
	ds_load_u8 v223, v54 offset:1152
	ds_load_u8 v224, v54 offset:1056
	ds_load_u8 v225, v54 offset:1120
	ds_load_u8 v226, v54 offset:1088
	ds_load_u8 v227, v54 offset:1136
	ds_load_u8 v228, v54 offset:1104
	ds_load_u8 v229, v54 offset:1072
	ds_load_u8 v230, v54 offset:1040
	ds_load_u8 v231, v54 offset:1952
	ds_load_u8 v232, v54 offset:2016
	ds_load_u8 v233, v54 offset:1984
	ds_load_u8 v55, v55
	ds_load_u8 v56, v56
	ds_load_u8 v234, v54 offset:2000
	ds_load_u8 v235, v54 offset:1968
	ds_load_u8 v236, v54 offset:1936
	ds_load_u8 v237, v54 offset:1920
	ds_load_u8 v238, v54 offset:1824
	ds_load_u8 v239, v54 offset:1888
	ds_load_u8 v240, v54 offset:1856
	ds_load_u8 v241, v54 offset:1904
	ds_load_u8 v242, v54 offset:1872
	ds_load_u8 v243, v54 offset:1840
	ds_load_u8 v244, v54 offset:1808
	ds_load_u8 v245, v54 offset:1792
	ds_load_u8 v246, v54 offset:1696
	ds_load_u8 v247, v54 offset:1760
	ds_load_u8 v248, v54 offset:1728
	ds_load_u8 v249, v54 offset:1776
	ds_load_u8 v250, v54 offset:1744
	ds_load_u8 v251, v54 offset:1712
	ds_load_u8 v252, v54 offset:1680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v54 offset:1648
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v54 offset:1616
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v54 offset:1584
	ds_load_u8 v54, v54 offset:1552
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v59, v60, v62, 0xc0c0004
	v_perm_b32 v60, v69, v66, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v73, v70, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_perm_b32 v68, v72, v71, 0xc0c0004
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v69, v77, v74, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	v_perm_b32 v74, v81, v78, 0xc0c0004
	v_perm_b32 v75, v80, v79, 0xc0c0004
	v_perm_b32 v76, v168, v82, 0xc0c0004
	v_perm_b32 v77, v170, v169, 0xc0c0004
	v_perm_b32 v78, v176, v175, 0xc0c0004
	v_perm_b32 v79, v178, v177, 0xc0c0004
	v_perm_b32 v80, v184, v183, 0xc0c0004
	v_perm_b32 v81, v186, v185, 0xc0c0004
	v_perm_b32 v82, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v153, v194, v193, 0xc0c0004
	v_perm_b32 v83, v86, v83, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v85, v90, v87, 0xc0c0004
	v_perm_b32 v86, v89, v88, 0xc0c0004
	v_perm_b32 v87, v94, v91, 0xc0c0004
	v_perm_b32 v88, v93, v92, 0xc0c0004
	v_perm_b32 v89, v98, v95, 0xc0c0004
	v_perm_b32 v90, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v91, v207, v199, 0xc0c0004
	v_perm_b32 v92, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v93, v215, v208, 0xc0c0004
	v_perm_b32 v94, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v97, v171, v224, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v98, v226, v225, 0xc0c0004
	v_perm_b32 v99, v102, v99, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v101, v106, v103, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	v_perm_b32 v103, v110, v107, 0xc0c0004
	v_perm_b32 v104, v109, v108, 0xc0c0004
	v_perm_b32 v105, v114, v111, 0xc0c0004
	v_perm_b32 v106, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v109, v245, v238, 0xc0c0004
	v_perm_b32 v110, v240, v239, 0xc0c0004
	v_perm_b32 v113, v202, v116, 0xc0c0004
	v_perm_b32 v114, v118, v117, 0xc0c0004
	v_perm_b32 v116, v121, v120, 0xc0c0004
	v_perm_b32 v117, v126, v123, 0xc0c0004
	v_perm_b32 v120, v129, v128, 0xc0c0004
	v_perm_b32 v57, v57, v131, 0xc0c0004
	v_perm_b32 v121, v133, v132, 0xc0c0004
	v_perm_b32 v126, v157, v156, 0xc0c0004
	v_perm_b32 v128, v64, v63, 0xc0c0004
	v_perm_b32 v61, v61, v65, 0xc0c0004
	v_perm_b32 v129, v174, v173, 0xc0c0004
	v_perm_b32 v55, v172, v55, 0xc0c0004
	v_perm_b32 v156, v236, v235, 0xc0c0004
	v_perm_b32 v56, v234, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v54, v143, 0xc0c0004
	v_perm_b32 v135, v137, v135, 0xc0c0004
	v_lshl_or_b32 v65, v136, 16, v134
	v_lshl_or_b32 v64, v144, 16, v142
	v_lshl_or_b32 v63, v152, 16, v150
	v_lshl_or_b32 v62, v58, 16, v59
	v_lshl_or_b32 v73, v66, 16, v60
	v_lshl_or_b32 v72, v68, 16, v67
	v_lshl_or_b32 v71, v70, 16, v69
	v_lshl_or_b32 v70, v75, 16, v74
	v_perm_b32 v95, v223, v216, 0xc0c0004
	v_perm_b32 v96, v218, v217, 0xc0c0004
	v_lshl_or_b32 v77, v77, 16, v76
	v_lshl_or_b32 v76, v79, 16, v78
	v_lshl_or_b32 v75, v81, 16, v80
	v_lshl_or_b32 v74, v153, 16, v82
	v_lshl_or_b32 v81, v84, 16, v83
	v_lshl_or_b32 v80, v86, 16, v85
	v_lshl_or_b32 v79, v88, 16, v87
	v_lshl_or_b32 v78, v90, 16, v89
	v_lshl_or_b32 v85, v92, 16, v91
	v_lshl_or_b32 v84, v94, 16, v93
	v_lshl_or_b32 v82, v98, 16, v97
	v_lshl_or_b32 v86, v106, 16, v105
	v_lshl_or_b32 v92, v110, 16, v109
	v_lshl_or_b32 v90, v114, 16, v113
	v_lshl_or_b32 v94, v121, 16, v57
	v_lshl_or_b32 v98, v128, 16, v61
	v_lshl_or_b32 v105, v55, 16, v129
	v_lshl_or_b32 v113, v56, 16, v156
	v_lshl_or_b32 v110, v135, 16, v54
	v_wmma_i32_16x16x16_iu8 v[54:61], v[70:73], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v107, v237, v231, 0xc0c0004
	v_perm_b32 v108, v233, v232, 0xc0c0004
	v_perm_b32 v111, v115, v246, 0xc0c0004
	v_perm_b32 v112, v248, v247, 0xc0c0004
	v_perm_b32 v115, v122, v119, 0xc0c0004
	v_perm_b32 v118, v125, v124, 0xc0c0004
	v_perm_b32 v119, v130, v127, 0xc0c0004
	v_perm_b32 v122, v141, v140, 0xc0c0004
	v_perm_b32 v123, v139, v138, 0xc0c0004
	v_perm_b32 v124, v149, v148, 0xc0c0004
	v_perm_b32 v125, v147, v146, 0xc0c0004
	v_perm_b32 v127, v155, v154, 0xc0c0004
	v_lshl_or_b32 v83, v96, 16, v95
	v_lshl_or_b32 v89, v100, 16, v99
	v_lshl_or_b32 v88, v102, 16, v101
	v_lshl_or_b32 v87, v104, 16, v103
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[74:77], v[54:61] neg_lo:[1,1,0]
	v_perm_b32 v130, v182, v181, 0xc0c0004
	v_perm_b32 v131, v180, v179, 0xc0c0004
	v_perm_b32 v132, v190, v189, 0xc0c0004
	v_perm_b32 v133, v188, v187, 0xc0c0004
	v_perm_b32 v138, v198, v197, 0xc0c0004
	v_perm_b32 v139, v196, v195, 0xc0c0004
	v_lshl_or_b32 v93, v108, 16, v107
	v_lshl_or_b32 v91, v112, 16, v111
	v_lshl_or_b32 v97, v116, 16, v115
	v_lshl_or_b32 v96, v118, 16, v117
	v_lshl_or_b32 v95, v120, 16, v119
	v_lshl_or_b32 v101, v123, 16, v122
	v_lshl_or_b32 v100, v125, 16, v124
	v_lshl_or_b32 v99, v127, 16, v126
	v_wmma_i32_16x16x16_iu8 v[54:61], v[86:89], v[82:85], v[54:61] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v131, 16, v130
	v_lshl_or_b32 v103, v133, 16, v132
	v_lshl_or_b32 v102, v139, 16, v138
	v_wmma_i32_16x16x16_iu8 v[62:69], v[70:73], v[98:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[94:97], v[90:93], v[54:61] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v140, v206, v205, 0xc0c0004
	v_perm_b32 v141, v204, v203, 0xc0c0004
	v_perm_b32 v146, v214, v213, 0xc0c0004
	v_perm_b32 v147, v212, v211, 0xc0c0004
	v_perm_b32 v148, v222, v221, 0xc0c0004
	v_perm_b32 v149, v220, v219, 0xc0c0004
	v_perm_b32 v154, v230, v229, 0xc0c0004
	v_perm_b32 v155, v228, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[78:81], v[102:105], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v157, v244, v243, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s44, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v168, v242, v241, 0xc0c0004
	v_perm_b32 v169, v252, v251, 0xc0c0004
	v_perm_b32 v170, v250, v249, 0xc0c0004
	v_lshl_or_b32 v109, v141, 16, v140
	v_lshl_or_b32 v108, v147, 16, v146
	v_lshl_or_b32 v107, v149, 16, v148
	v_lshl_or_b32 v106, v155, 16, v154
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s14, s44, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v112, v168, 16, v157
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s14, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v111, v170, 16, v169
	v_wmma_i32_16x16x16_iu8 v[62:69], v[86:89], v[106:109], v[62:69] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s15, s44, 13
	s_mov_b32 s12, s42
	s_add_i32 s42, s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v54
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[110:113], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, -1
	s_mov_b32 s10, s34
	s_mov_b32 s13, s22
	s_addk_i32 s22, 0x100
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s34, s14, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v71, 16, v159
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v77, 16, v165
	v_lshlrev_b32_e32 v74, 16, v162
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v79, 16, v167
	v_lshlrev_b32_e32 v73, 16, v161
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v70, 16, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v81, v70, v73 :: v_dual_add_nc_u32 v52, s43, v52
	v_dual_mul_f32 v73, v71, v73 :: v_dual_lshlrev_b32 v78, 16, v166
	v_dual_mul_f32 v82, v70, v74 :: v_dual_add_nc_u32 v51, s23, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v21, v81, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v86, v70, v78 :: v_dual_add_nc_u32 v145, s14, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v30, v73, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v82, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v78, v71, v78
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v76, 16, v164
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v26, v86, v60
	v_fmac_f32_e32 v35, v78, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v70, v76
	v_dual_mul_f32 v76, v71, v76 :: v_dual_mul_f32 v85, v70, v77
	v_mul_f32_e32 v77, v71, v77
	v_dual_mul_f32 v74, v71, v74 :: v_dual_lshlrev_b32 v75, 16, v163
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v72, 16, v160
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v24, v84, v58
	v_fmac_f32_e32 v33, v76, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v83, v70, v75
	v_mul_f32_e32 v75, v71, v75
	v_dual_mul_f32 v80, v70, v72 :: v_dual_add_nc_u32 v53, s43, v53
	v_dual_mul_f32 v72, v71, v72 :: v_dual_add_nc_u32 v151, s42, v47
	v_mul_f32_e32 v70, v70, v79
	v_mul_f32_e32 v71, v71, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v19, v80, v54
	v_fmac_f32_e32 v23, v83, v57
	v_dual_fmac_f32 v25, v85, v59 :: v_dual_fmac_f32 v32, v75, v65
	v_fmac_f32_e32 v27, v70, v61
	v_dual_fmac_f32 v29, v72, v62 :: v_dual_fmac_f32 v34, v77, v67
	v_dual_fmac_f32 v31, v74, v64 :: v_dual_fmac_f32 v28, v71, v69
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v145, v[17:18] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v151, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v49 :: v_dual_mov_b32 v51, v50
	s_addk_i32 s13, 0x200
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
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s34, 0, 0x4800
	s_add_i32 s42, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v58, v48, v46
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s24, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s10, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v1 offset:416
	ds_load_u8 v6, v1 offset:384
	ds_load_u8 v7, v1 offset:480
	ds_load_u8 v8, v1 offset:448
	ds_load_u8 v9, v1 offset:288
	ds_load_u8 v10, v1 offset:256
	ds_load_u8 v11, v1 offset:352
	ds_load_u8 v12, v1 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s12, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v13, s10, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v84, v1 offset:16
	ds_load_u8 v85, v13
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	ds_load_u8 v9, v1 offset:160
	ds_load_u8 v10, v1 offset:128
	ds_load_u8 v11, v1 offset:224
	ds_load_u8 v12, v1 offset:192
	v_lshl_or_b32 v50, v6, 16, v5
	v_lshl_or_b32 v49, v8, 16, v7
	ds_load_u8 v5, v1 offset:96
	ds_load_u8 v6, v1 offset:64
	ds_load_u8 v7, v1
	ds_load_u8 v8, v1 offset:32
	ds_load_u8 v14, v4 offset:1664
	ds_load_u8 v15, v4 offset:1920
	ds_load_u8 v47, v4 offset:1792
	ds_load_u8 v48, v4 offset:1536
	ds_load_u8 v52, v4 offset:1152
	ds_load_u8 v53, v4 offset:1408
	ds_load_u8 v54, v4 offset:1280
	ds_load_u8 v55, v4 offset:1024
	ds_load_u8 v59, v4 offset:640
	ds_load_u8 v60, v4 offset:896
	ds_load_u8 v61, v4 offset:768
	ds_load_u8 v62, v4 offset:512
	ds_load_u8 v63, v4 offset:128
	ds_load_u8 v64, v4 offset:384
	ds_load_u8 v65, v4 offset:256
	ds_load_u8 v66, v4
	ds_load_u8 v78, v1 offset:208
	ds_load_u8 v79, v1 offset:176
	ds_load_u8 v80, v1 offset:144
	ds_load_u8 v81, v1 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v6, v7, v8, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v8, v47, v15, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v48, v14, 0xc0c0004
	v_lshl_or_b32 v47, v5, 16, v6
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v14, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v62, v59, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v12, v11, 0xc0c0004
	v_perm_b32 v11, v55, v52, 0xc0c0004
	v_lshl_or_b32 v55, v8, 16, v7
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v66, v63, 0xc0c0004
	v_perm_b32 v12, v54, v53, 0xc0c0004
	v_lshl_or_b32 v48, v10, 16, v9
	v_perm_b32 v10, v65, v64, 0xc0c0004
	v_mov_b32_e32 v66, s31
	ds_load_u8 v6, v1 offset:928
	ds_load_u8 v7, v1 offset:896
	ds_load_u8 v8, v1 offset:992
	ds_load_u8 v9, v1 offset:960
	v_lshl_or_b32 v54, v12, 16, v11
	v_lshl_or_b32 v53, v14, 16, v13
	v_lshl_or_b32 v52, v10, 16, v5
	ds_load_u8 v5, v1 offset:800
	ds_load_u8 v67, v1 offset:768
	ds_load_u8 v68, v1 offset:864
	ds_load_u8 v69, v1 offset:832
	ds_load_u8 v86, v1 offset:976
	ds_load_u8 v87, v1 offset:944
	ds_load_u8 v88, v1 offset:912
	ds_load_u8 v89, v1 offset:880
	v_dual_mov_b32 v65, s30 :: v_dual_mov_b32 v64, s29
	v_dual_mov_b32 v63, s28 :: v_dual_mov_b32 v62, s27
	v_dual_mov_b32 v61, s26 :: v_dual_mov_b32 v60, s25
	v_mov_b32_e32 v59, s24
	ds_load_u8 v102, v4 offset:2688
	ds_load_u8 v103, v4 offset:2944
	ds_load_u8 v104, v4 offset:2816
	ds_load_u8 v105, v4 offset:2560
	ds_load_u8 v106, v4 offset:2176
	ds_load_u8 v107, v4 offset:2432
	ds_load_u8 v108, v4 offset:2304
	ds_load_u8 v109, v4 offset:2048
	ds_load_u8 v110, v1 offset:592
	ds_load_u8 v111, v1 offset:560
	ds_load_u8 v112, v1 offset:528
	ds_load_u8 v113, v1 offset:496
	ds_load_u8 v16, v1 offset:464
	ds_load_u8 v17, v1 offset:432
	ds_load_u8 v18, v1 offset:400
	ds_load_u8 v56, v1 offset:368
	ds_load_u8 v57, v1 offset:336
	ds_load_u8 v75, v1 offset:304
	ds_load_u8 v76, v1 offset:272
	ds_load_u8 v77, v1 offset:240
	ds_load_u8 v82, v1 offset:80
	ds_load_u8 v83, v1 offset:48
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v5, v67, v5, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[8:15], v[52:55], v[47:50], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v49, v69, v68, 0xc0c0004
	ds_load_u8 v67, v1 offset:544
	ds_load_u8 v68, v1 offset:512
	ds_load_u8 v69, v1 offset:608
	ds_load_u8 v70, v1 offset:576
	ds_load_u8 v71, v4 offset:3712
	ds_load_u8 v72, v4 offset:3968
	ds_load_u8 v73, v4 offset:3840
	ds_load_u8 v74, v4 offset:3584
	ds_load_u8 v94, v4 offset:3200
	ds_load_u8 v95, v4 offset:3456
	ds_load_u8 v96, v4 offset:3328
	ds_load_u8 v97, v4 offset:3072
	ds_load_u8 v98, v1 offset:720
	ds_load_u8 v99, v1 offset:688
	ds_load_u8 v100, v1 offset:656
	ds_load_u8 v101, v1 offset:624
	v_lshl_or_b32 v50, v7, 16, v6
	ds_load_u8 v6, v1 offset:672
	ds_load_u8 v7, v1 offset:640
	ds_load_u8 v47, v1 offset:736
	ds_load_u8 v48, v1 offset:704
	ds_load_u8 v90, v1 offset:848
	ds_load_u8 v91, v1 offset:816
	ds_load_u8 v92, v1 offset:784
	ds_load_u8 v93, v1 offset:752
	v_lshl_or_b32 v49, v49, 16, v5
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v5, v105, v102, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_perm_b32 v16, v16, v113, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v18, v76, v75, 0xc0c0004
	v_perm_b32 v57, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v75, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v79, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v80, v84, v83, 0xc0c0004
	v_lshl_or_b32 v78, v16, 16, v17
	v_lshl_or_b32 v77, v56, 16, v18
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v76, v75, 16, v57
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v48, v47, 0xc0c0004
	v_perm_b32 v47, v68, v67, 0xc0c0004
	v_perm_b32 v67, v70, v69, 0xc0c0004
	v_perm_b32 v68, v74, v71, 0xc0c0004
	v_perm_b32 v69, v73, v72, 0xc0c0004
	v_perm_b32 v71, v97, v94, 0xc0c0004
	v_perm_b32 v72, v96, v95, 0xc0c0004
	v_lshl_or_b32 v48, v7, 16, v6
	v_lshl_or_b32 v47, v67, 16, v47
	v_perm_b32 v6, v104, v103, 0xc0c0004
	v_perm_b32 v67, v109, v106, 0xc0c0004
	v_perm_b32 v74, v108, v107, 0xc0c0004
	v_lshl_or_b32 v70, v69, 16, v68
	v_lshl_or_b32 v69, v72, 16, v71
	ds_load_u8 v7, v1 offset:1440
	ds_load_u8 v71, v1 offset:1408
	ds_load_u8 v72, v1 offset:1504
	ds_load_u8 v73, v1 offset:1472
	v_lshl_or_b32 v68, v6, 16, v5
	v_lshl_or_b32 v67, v74, 16, v67
	ds_load_u8 v5, v1 offset:1184
	ds_load_u8 v6, v1 offset:1152
	ds_load_u8 v74, v1 offset:1248
	ds_load_u8 v102, v1 offset:1216
	ds_load_u8 v94, v1 offset:1312
	ds_load_u8 v95, v1 offset:1280
	ds_load_u8 v96, v1 offset:1376
	ds_load_u8 v97, v1 offset:1344
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v103, s10, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v104, v1 offset:1520
	ds_load_u8 v105, v1 offset:1488
	ds_load_u8 v106, v1 offset:1456
	ds_load_u8 v107, v1 offset:1424
	v_wmma_i32_16x16x16_iu8 v[8:15], v[67:70], v[47:50], v[8:15] neg_lo:[1,1,0]
	ds_load_u8 v108, v1 offset:1392
	ds_load_u8 v109, v1 offset:1360
	ds_load_u8 v114, v1 offset:1328
	ds_load_u8 v115, v1 offset:1296
	v_lshl_or_b32 v75, v79, 16, v80
	v_perm_b32 v16, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v18, v92, v91, 0xc0c0004
	v_perm_b32 v56, v90, v89, 0xc0c0004
	v_perm_b32 v57, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v79, v98, v93, 0xc0c0004
	v_perm_b32 v80, v112, v111, 0xc0c0004
	v_perm_b32 v81, v110, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[59:66], v[52:55], v[75:78], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v7, v71, v7, 0xc0c0004
	v_lshl_or_b32 v54, v56, 16, v18
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v47, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v95, v94, 0xc0c0004
	v_perm_b32 v6, v102, v74, 0xc0c0004
	ds_load_u8 v71, v1 offset:1056
	ds_load_u8 v72, v1 offset:1024
	ds_load_u8 v73, v1 offset:1120
	ds_load_u8 v74, v1 offset:1088
	ds_load_u8 v102, v4 offset:5760
	ds_load_u8 v116, v4 offset:6016
	ds_load_u8 v117, v4 offset:5888
	ds_load_u8 v118, v4 offset:5632
	ds_load_u8 v119, v4 offset:5248
	ds_load_u8 v120, v4 offset:5504
	ds_load_u8 v121, v4 offset:5376
	ds_load_u8 v122, v4 offset:5120
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v97, v96, 0xc0c0004
	v_lshl_or_b32 v50, v47, 16, v7
	ds_load_u8 v94, v1 offset:1264
	ds_load_u8 v95, v1 offset:1232
	ds_load_u8 v96, v1 offset:1200
	ds_load_u8 v97, v1 offset:1168
	v_lshl_or_b32 v53, v79, 16, v57
	v_lshl_or_b32 v52, v81, 16, v80
	v_lshl_or_b32 v49, v49, 16, v48
	v_lshl_or_b32 v48, v6, 16, v5
	ds_load_u8 v5, v4 offset:4736
	ds_load_u8 v6, v4 offset:4864
	ds_load_u8 v7, v4 offset:4608
	ds_load_u8 v47, v4 offset:4992
	ds_load_u8 v123, v4 offset:4224
	ds_load_u8 v124, v4 offset:4480
	ds_load_u8 v125, v4 offset:4352
	ds_load_u8 v126, v4 offset:4096
	ds_load_u8 v127, v1 offset:1136
	ds_load_u8 v128, v1 offset:1104
	ds_load_u8 v129, v1 offset:1072
	ds_load_u8 v130, v1 offset:1040
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v18, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v56, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v72, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v74, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v73, v118, v102, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v102, v122, v119, 0xc0c0004
	ds_load_u8 v116, v1 offset:1952
	ds_load_u8 v117, v1 offset:1920
	ds_load_u8 v118, v1 offset:2016
	ds_load_u8 v119, v1 offset:1984
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v7, v5, 0xc0c0004
	ds_load_u8 v7, v1 offset:1824
	ds_load_u8 v121, v1 offset:1792
	ds_load_u8 v122, v1 offset:1888
	ds_load_u8 v131, v1 offset:1856
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v126, v123, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v6, v6, v47, 0xc0c0004
	v_lshl_or_b32 v47, v72, 16, v71
	v_lshl_or_b32 v74, v74, 16, v73
	v_lshl_or_b32 v73, v120, 16, v102
	v_lshl_or_b32 v71, v124, 16, v123
	ds_load_u8 v102, v103
	ds_load_u8 v103, v1 offset:2000
	ds_load_u8 v120, v1 offset:1968
	ds_load_u8 v123, v1 offset:1936
	v_lshl_or_b32 v72, v6, 16, v5
	v_perm_b32 v57, v97, v96, 0xc0c0004
	v_perm_b32 v75, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v130, v129, 0xc0c0004
	v_perm_b32 v77, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[8:15], v[71:74], v[47:50], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v121, v121, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v122, v131, v122, 0xc0c0004
	ds_load_u8 v116, v1 offset:1904
	ds_load_u8 v117, v1 offset:1872
	ds_load_u8 v118, v1 offset:1840
	ds_load_u8 v119, v1 offset:1808
	v_lshl_or_b32 v7, v6, 16, v5
	v_lshl_or_b32 v6, v122, 16, v121
	ds_load_u8 v5, v1 offset:1696
	ds_load_u8 v47, v1 offset:1664
	ds_load_u8 v48, v1 offset:1760
	ds_load_u8 v49, v1 offset:1728
	ds_load_u8 v50, v1 offset:1568
	ds_load_u8 v121, v1 offset:1536
	ds_load_u8 v122, v1 offset:1632
	ds_load_u8 v124, v1 offset:1600
	ds_load_u8 v125, v4 offset:7808
	ds_load_u8 v126, v4 offset:8064
	ds_load_u8 v131, v4 offset:7936
	ds_load_u8 v132, v4 offset:7680
	ds_load_u8 v133, v4 offset:7296
	ds_load_u8 v134, v4 offset:7552
	ds_load_u8 v135, v4 offset:7424
	ds_load_u8 v136, v4 offset:7168
	ds_load_u8 v137, v4 offset:6784
	ds_load_u8 v138, v4 offset:7040
	ds_load_u8 v139, v4 offset:6912
	ds_load_u8 v140, v4 offset:6656
	ds_load_u8 v141, v4 offset:6272
	ds_load_u8 v142, v4 offset:6528
	ds_load_u8 v143, v4 offset:6400
	ds_load_u8 v144, v4 offset:6144
	ds_load_u8 v145, v1 offset:1776
	ds_load_u8 v146, v1 offset:1744
	ds_load_u8 v147, v1 offset:1712
	ds_load_u8 v148, v1 offset:1680
	ds_load_u8 v149, v1 offset:1648
	ds_load_u8 v150, v1 offset:1616
	ds_load_u8 v151, v1 offset:1584
	ds_load_u8 v1, v1 offset:1552
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v17, v86, v102, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v4, v47, v5, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v5, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v47, v121, v50, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v48, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v132, v125, 0xc0c0004
	v_perm_b32 v50, v131, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v136, v133, 0xc0c0004
	v_perm_b32 v122, v135, v134, 0xc0c0004
	v_lshl_or_b32 v55, v17, 16, v16
	v_perm_b32 v16, v107, v106, 0xc0c0004
	v_perm_b32 v17, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v124, v140, v137, 0xc0c0004
	v_perm_b32 v125, v139, v138, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v48, 16, v47
	v_lshl_or_b32 v50, v50, 16, v49
	v_lshl_or_b32 v49, v122, 16, v121
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v47, v144, v141, 0xc0c0004
	v_perm_b32 v121, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[59:66], v[67:70], v[52:55], v[59:66] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v17, 16, v16
	v_lshl_or_b32 v54, v56, 16, v18
	v_lshl_or_b32 v53, v75, 16, v57
	v_lshl_or_b32 v52, v77, 16, v76
	v_perm_b32 v16, v123, v120, 0xc0c0004
	v_perm_b32 v17, v103, v85, 0xc0c0004
	v_perm_b32 v18, v119, v118, 0xc0c0004
	v_perm_b32 v56, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v148, v147, 0xc0c0004
	v_perm_b32 v67, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v151, 0xc0c0004
	v_perm_b32 v68, v150, v149, 0xc0c0004
	v_lshl_or_b32 v48, v125, 16, v124
	v_lshl_or_b32 v47, v121, 16, v47
	v_wmma_i32_16x16x16_iu8 v[59:66], v[71:74], v[52:55], v[59:66] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v17, 16, v16
	v_lshl_or_b32 v54, v56, 16, v18
	v_lshl_or_b32 v53, v67, 16, v57
	v_lshl_or_b32 v52, v68, 16, v1
	v_wmma_i32_16x16x16_iu8 v[8:15], v[47:50], v[4:7], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[47:50], v[52:55], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v7, v12
	v_cvt_f32_i32_e32 v9, v13
	v_cvt_f32_i32_e32 v10, v14
	v_cvt_f32_i32_e32 v11, v15
	v_cvt_f32_i32_e32 v12, v59
	v_cvt_f32_i32_e32 v13, v60
	v_cvt_f32_i32_e32 v14, v61
	v_cvt_f32_i32_e32 v15, v62
	v_cvt_f32_i32_e32 v16, v63
	v_cvt_f32_i32_e32 v17, v64
	v_cvt_f32_i32_e32 v18, v65
	v_cvt_f32_i32_e32 v47, v66
	v_cvt_f32_i32_e32 v8, v8
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
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v44, s4, 1
	v_add_lshl_u32 v48, v45, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v49, v43, s4, 1
	v_add_lshl_u32 v50, v42, s4, 1
	v_add_lshl_u32 v52, v41, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v39, s4, 1
	v_add_lshl_u32 v54, v37, s4, 1
	v_add_lshl_u32 v55, v40, s4, 1
	v_add_lshl_u32 v56, v38, s4, 1
	v_add_lshl_u32 v57, v36, s4, 1
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	s_and_b32 s21, s21, 0xffff
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_clause 0x7
	buffer_load_u16 v49, v49, s[20:23], 0 offen
	buffer_load_u16 v50, v50, s[20:23], 0 offen
	buffer_load_u16 v52, v52, s[20:23], 0 offen
	buffer_load_u16 v53, v53, s[20:23], 0 offen
	buffer_load_u16 v54, v54, s[20:23], 0 offen
	buffer_load_u16 v55, v55, s[20:23], 0 offen
	buffer_load_u16 v56, v56, s[20:23], 0 offen
	buffer_load_u16 v57, v57, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v73, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s24, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s34, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v3, s34, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v59, v3 offset:416
	ds_load_u8 v60, v3 offset:384
	ds_load_u8 v61, v3 offset:480
	ds_load_u8 v62, v3 offset:448
	ds_load_u8 v63, v3 offset:288
	ds_load_u8 v64, v3 offset:256
	ds_load_u8 v65, v3 offset:352
	ds_load_u8 v66, v3 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v46, s42, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v51, s34, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v60, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v66, v65, 0xc0c0004
	ds_load_u8 v62, v3 offset:160
	ds_load_u8 v63, v3 offset:128
	ds_load_u8 v64, v3 offset:224
	ds_load_u8 v65, v3 offset:192
	v_lshl_or_b32 v77, v59, 16, v58
	v_lshl_or_b32 v76, v61, 16, v60
	ds_load_u8 v58, v3 offset:96
	ds_load_u8 v59, v3 offset:64
	ds_load_u8 v60, v3
	ds_load_u8 v61, v3 offset:32
	ds_load_u8 v66, v46 offset:1664
	ds_load_u8 v67, v46 offset:1920
	ds_load_u8 v68, v46 offset:1792
	ds_load_u8 v69, v46 offset:1536
	ds_load_u8 v70, v46 offset:1152
	ds_load_u8 v71, v46 offset:1408
	ds_load_u8 v72, v46 offset:1280
	ds_load_u8 v73, v46 offset:1024
	ds_load_u8 v74, v46 offset:640
	ds_load_u8 v75, v46 offset:896
	ds_load_u8 v78, v46 offset:768
	ds_load_u8 v79, v46 offset:512
	ds_load_u8 v82, v46 offset:128
	ds_load_u8 v83, v46 offset:384
	ds_load_u8 v84, v46 offset:256
	ds_load_u8 v85, v46
	ds_load_u8 v101, v3 offset:208
	ds_load_u8 v102, v3 offset:176
	ds_load_u8 v103, v3 offset:144
	ds_load_u8 v104, v3 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v59, v60, v61, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v61, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v61, 16, v60
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v78, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v79, v74, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_lshl_or_b32 v74, v58, 16, v59
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_perm_b32 v64, v73, v70, 0xc0c0004
	v_perm_b32 v65, v72, v71, 0xc0c0004
	v_lshl_or_b32 v79, v67, 16, v66
	v_mov_b32_e32 v73, s31
	v_lshl_or_b32 v75, v63, 16, v62
	v_mov_b32_e32 v72, s30
	ds_load_u8 v59, v3 offset:928
	ds_load_u8 v60, v3 offset:896
	ds_load_u8 v61, v3 offset:992
	ds_load_u8 v62, v3 offset:960
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v85, v82, 0xc0c0004
	v_perm_b32 v63, v84, v83, 0xc0c0004
	v_lshl_or_b32 v80, v65, 16, v64
	v_dual_mov_b32 v71, s29 :: v_dual_mov_b32 v68, s26
	v_mov_b32_e32 v70, s28
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v78, v63, 16, v58
	v_dual_mov_b32 v69, s27 :: v_dual_mov_b32 v66, s24
	v_mov_b32_e32 v67, s25
	ds_load_u8 v82, v3 offset:800
	ds_load_u8 v83, v3 offset:768
	ds_load_u8 v84, v3 offset:864
	ds_load_u8 v85, v3 offset:832
	ds_load_u8 v108, v3 offset:976
	ds_load_u8 v109, v3 offset:944
	ds_load_u8 v110, v3 offset:912
	ds_load_u8 v111, v3 offset:880
	ds_load_u8 v90, v3 offset:464
	ds_load_u8 v94, v3 offset:432
	ds_load_u8 v95, v3 offset:400
	ds_load_u8 v96, v3 offset:368
	ds_load_u8 v97, v3 offset:336
	ds_load_u8 v98, v3 offset:304
	ds_load_u8 v99, v3 offset:272
	ds_load_u8 v100, v3 offset:240
	ds_load_u8 v105, v3 offset:80
	ds_load_u8 v106, v3 offset:48
	ds_load_u8 v107, v3 offset:16
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v86, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v87, v62, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[78:81], v[74:77], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v77, v87, 16, v86
	ds_load_u8 v74, v3 offset:672
	ds_load_u8 v75, v3 offset:640
	ds_load_u8 v76, v3 offset:736
	ds_load_u8 v86, v3 offset:704
	ds_load_u8 v112, v3 offset:848
	ds_load_u8 v113, v3 offset:816
	ds_load_u8 v114, v3 offset:784
	ds_load_u8 v115, v3 offset:752
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v83, v85, v84, 0xc0c0004
	ds_load_u8 v84, v3 offset:544
	ds_load_u8 v85, v3 offset:512
	ds_load_u8 v87, v3 offset:608
	ds_load_u8 v88, v3 offset:576
	ds_load_u8 v89, v46 offset:3712
	ds_load_u8 v91, v46 offset:3968
	ds_load_u8 v92, v46 offset:3840
	ds_load_u8 v93, v46 offset:3584
	ds_load_u8 v116, v46 offset:3200
	ds_load_u8 v117, v46 offset:3456
	ds_load_u8 v118, v46 offset:3328
	ds_load_u8 v119, v46 offset:3072
	ds_load_u8 v120, v3 offset:720
	ds_load_u8 v121, v3 offset:688
	ds_load_u8 v122, v3 offset:656
	ds_load_u8 v123, v3 offset:624
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v99, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v101, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v85, v88, v87, 0xc0c0004
	v_perm_b32 v102, v107, v106, 0xc0c0004
	v_lshl_or_b32 v96, v96, 16, v98
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v87, v93, v89, 0xc0c0004
	v_perm_b32 v75, v86, v76, 0xc0c0004
	ds_load_u8 v86, v46 offset:2688
	ds_load_u8 v124, v46 offset:2944
	ds_load_u8 v125, v46 offset:2816
	ds_load_u8 v126, v46 offset:2560
	ds_load_u8 v127, v46 offset:2176
	ds_load_u8 v128, v46 offset:2432
	ds_load_u8 v129, v46 offset:2304
	ds_load_u8 v130, v46 offset:2048
	ds_load_u8 v131, v3 offset:592
	ds_load_u8 v132, v3 offset:560
	ds_load_u8 v133, v3 offset:528
	ds_load_u8 v134, v3 offset:496
	v_perm_b32 v88, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v89, v119, v116, 0xc0c0004
	v_perm_b32 v91, v118, v117, 0xc0c0004
	v_lshl_or_b32 v76, v83, 16, v82
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v85, 16, v84
	v_lshl_or_b32 v85, v88, 16, v87
	v_lshl_or_b32 v84, v91, 16, v89
	ds_load_u8 v93, v3 offset:1312
	ds_load_u8 v116, v3 offset:1280
	ds_load_u8 v117, v3 offset:1376
	ds_load_u8 v118, v3 offset:1344
	v_perm_b32 v98, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v83, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v126, v86, 0xc0c0004
	ds_load_u8 v86, v3 offset:1440
	ds_load_u8 v87, v3 offset:1408
	ds_load_u8 v88, v3 offset:1504
	ds_load_u8 v89, v3 offset:1472
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v92, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v130, v127, 0xc0c0004
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v125, v3 offset:1520
	ds_load_u8 v126, v3 offset:1488
	ds_load_u8 v127, v3 offset:1456
	ds_load_u8 v128, v3 offset:1424
	ds_load_u8 v129, v3 offset:1392
	ds_load_u8 v130, v3 offset:1360
	ds_load_u8 v135, v3 offset:1328
	ds_load_u8 v136, v3 offset:1296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v95, v90, v134, 0xc0c0004
	v_lshl_or_b32 v82, v92, 16, v91
	ds_load_u8 v91, v3 offset:1184
	ds_load_u8 v92, v3 offset:1152
	ds_load_u8 v119, v3 offset:1248
	ds_load_u8 v124, v3 offset:1216
	v_perm_b32 v103, v131, v123, 0xc0c0004
	v_lshl_or_b32 v97, v95, 16, v94
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v76, v116, v93, 0xc0c0004
	v_lshl_or_b32 v95, v100, 16, v99
	v_lshl_or_b32 v94, v101, 16, v102
	v_perm_b32 v99, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v74, v87, v86, 0xc0c0004
	v_perm_b32 v86, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v89, v88, 0xc0c0004
	ds_load_u8 v116, v3 offset:1264
	ds_load_u8 v117, v3 offset:1232
	ds_load_u8 v118, v3 offset:1200
	ds_load_u8 v137, v3 offset:1168
	v_perm_b32 v100, v122, v121, 0xc0c0004
	v_perm_b32 v101, v120, v115, 0xc0c0004
	v_lshl_or_b32 v76, v86, 16, v76
	v_lshl_or_b32 v77, v75, 16, v74
	v_perm_b32 v102, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[94:97], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v124, v119, 0xc0c0004
	ds_load_u8 v89, v3 offset:1056
	ds_load_u8 v91, v3 offset:1024
	ds_load_u8 v92, v3 offset:1120
	ds_load_u8 v93, v3 offset:1088
	ds_load_u8 v119, v46 offset:5760
	ds_load_u8 v124, v46 offset:6016
	ds_load_u8 v138, v46 offset:5888
	ds_load_u8 v139, v46 offset:5632
	ds_load_u8 v140, v46 offset:5248
	ds_load_u8 v141, v46 offset:5504
	ds_load_u8 v142, v46 offset:5376
	ds_load_u8 v143, v46 offset:5120
	v_lshl_or_b32 v80, v99, 16, v98
	v_lshl_or_b32 v79, v101, 16, v100
	v_lshl_or_b32 v78, v103, 16, v102
	v_lshl_or_b32 v75, v88, 16, v87
	ds_load_u8 v74, v46 offset:4736
	ds_load_u8 v86, v46 offset:4864
	ds_load_u8 v87, v46 offset:4608
	ds_load_u8 v88, v46 offset:4992
	ds_load_u8 v144, v46 offset:4224
	ds_load_u8 v145, v46 offset:4480
	ds_load_u8 v146, v46 offset:4352
	ds_load_u8 v147, v46 offset:4096
	ds_load_u8 v148, v3 offset:1136
	ds_load_u8 v149, v3 offset:1104
	ds_load_u8 v150, v3 offset:1072
	ds_load_u8 v151, v3 offset:1040
	v_perm_b32 v94, v136, v135, 0xc0c0004
	v_perm_b32 v95, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v97, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	v_perm_b32 v96, v137, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v91, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v93, v138, v124, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v92, v139, v119, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v87, v87, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v86, v86, v88, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v119, v143, v140, 0xc0c0004
	ds_load_u8 v124, v3 offset:1952
	ds_load_u8 v138, v3 offset:1920
	ds_load_u8 v139, v3 offset:2016
	ds_load_u8 v140, v3 offset:1984
	ds_load_u8 v142, v3 offset:1824
	ds_load_u8 v143, v3 offset:1792
	ds_load_u8 v152, v3 offset:1888
	ds_load_u8 v153, v3 offset:1856
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v144, v147, v144, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_lshl_or_b32 v74, v91, 16, v89
	v_lshl_or_b32 v89, v93, 16, v92
	v_lshl_or_b32 v88, v141, 16, v119
	v_lshl_or_b32 v87, v86, 16, v87
	v_lshl_or_b32 v86, v145, 16, v144
	ds_load_u8 v2, v2
	ds_load_u8 v119, v3 offset:2000
	ds_load_u8 v141, v3 offset:1968
	ds_load_u8 v144, v3 offset:1936
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v151, v150, 0xc0c0004
	v_perm_b32 v99, v149, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[86:89], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v138, v124, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v143, v142, 0xc0c0004
	v_perm_b32 v92, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v142, v153, v152, 0xc0c0004
	ds_load_u8 v124, v3 offset:1904
	ds_load_u8 v138, v3 offset:1872
	ds_load_u8 v139, v3 offset:1840
	ds_load_u8 v140, v3 offset:1808
	v_lshl_or_b32 v77, v92, 16, v91
	v_lshl_or_b32 v76, v142, 16, v93
	ds_load_u8 v74, v3 offset:1696
	ds_load_u8 v75, v3 offset:1664
	ds_load_u8 v91, v3 offset:1760
	ds_load_u8 v92, v3 offset:1728
	ds_load_u8 v93, v3 offset:1568
	ds_load_u8 v142, v3 offset:1536
	ds_load_u8 v143, v3 offset:1632
	ds_load_u8 v145, v3 offset:1600
	ds_load_u8 v146, v46 offset:7808
	ds_load_u8 v147, v46 offset:8064
	ds_load_u8 v152, v46 offset:7936
	ds_load_u8 v153, v46 offset:7680
	ds_load_u8 v154, v46 offset:7296
	ds_load_u8 v155, v46 offset:7552
	ds_load_u8 v156, v46 offset:7424
	ds_load_u8 v157, v46 offset:7168
	ds_load_u8 v158, v46 offset:6784
	ds_load_u8 v159, v46 offset:7040
	ds_load_u8 v160, v46 offset:6912
	ds_load_u8 v161, v46 offset:6656
	ds_load_u8 v162, v46 offset:6272
	ds_load_u8 v163, v46 offset:6528
	ds_load_u8 v164, v46 offset:6400
	ds_load_u8 v46, v46 offset:6144
	ds_load_u8 v165, v3 offset:1776
	ds_load_u8 v166, v3 offset:1744
	ds_load_u8 v167, v3 offset:1712
	ds_load_u8 v168, v3 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v75, v92, v91, 0xc0c0004
	ds_load_u8 v169, v3 offset:1648
	ds_load_u8 v170, v3 offset:1616
	ds_load_u8 v171, v3 offset:1584
	ds_load_u8 v3, v3 offset:1552
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v91, v142, v93, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v93, v153, v146, 0xc0c0004
	v_perm_b32 v142, v152, v147, 0xc0c0004
	v_perm_b32 v2, v108, v2, 0xc0c0004
	v_perm_b32 v92, v145, v143, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v143, v157, v154, 0xc0c0004
	v_perm_b32 v145, v156, v155, 0xc0c0004
	v_lshl_or_b32 v93, v142, 16, v93
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v146, v161, v158, 0xc0c0004
	v_perm_b32 v147, v160, v159, 0xc0c0004
	v_lshl_or_b32 v75, v75, 16, v74
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v142, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v46, v162, 0xc0c0004
	v_lshl_or_b32 v74, v92, 16, v91
	v_lshl_or_b32 v92, v145, 16, v143
	v_lshl_or_b32 v91, v147, 16, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v90, v142, 16, v46
	v_perm_b32 v46, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[90:93], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v81, v2, 16, v46
	v_perm_b32 v2, v128, v127, 0xc0c0004
	v_perm_b32 v46, v126, v125, 0xc0c0004
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v95, 16, v94
	v_lshl_or_b32 v81, v46, 16, v2
	v_lshl_or_b32 v79, v97, 16, v96
	v_lshl_or_b32 v78, v99, 16, v98
	v_perm_b32 v2, v144, v141, 0xc0c0004
	v_perm_b32 v46, v119, v51, 0xc0c0004
	v_perm_b32 v51, v140, v139, 0xc0c0004
	v_perm_b32 v82, v138, v124, 0xc0c0004
	v_perm_b32 v83, v168, v167, 0xc0c0004
	v_perm_b32 v84, v166, v165, 0xc0c0004
	v_perm_b32 v85, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v46, 16, v2
	v_lshl_or_b32 v80, v82, 16, v51
	v_lshl_or_b32 v79, v84, 16, v83
	v_lshl_or_b32 v78, v85, 16, v3
	v_cvt_f32_i32_e32 v3, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_wmma_i32_16x16x16_iu8 v[66:73], v[90:93], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s13, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s5, s5, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s13, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v46.h, v57.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s5, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v49.h, v55.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v44, s5, 1
	v_add_lshl_u32 v44, v45, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s5, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v43, v43, s5, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v42, v42, s5, 1
	v_add_lshl_u32 v41, v41, s5, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v39, s5, 1
	v_add_lshl_u32 v37, v37, s5, 1
	v_add_lshl_u32 v40, v40, s5, 1
	v_add_lshl_u32 v38, v38, s5, 1
	v_add_lshl_u32 v36, v36, s5, 1
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v45, v2, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v2, 0x80000000, v42 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_and_b32 v57, 14, v0
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_clause 0x7
	buffer_load_u16 v42, v43, s[20:23], 0 offen
	buffer_load_u16 v43, v2, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v39, v39, s[20:23], 0 offen
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	v_mov_b16_e32 v2.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v2.h, v48.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.h, v49.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v74, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.h, v56.l
	v_mov_b16_e32 v49.l, v2.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v58, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v56, 7, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v50.h, v54.l
	v_mov_b16_e32 v51.h, v53.l
	v_mov_b16_e32 v52.h, v52.l
	v_mov_b16_e32 v53.h, v50.l
	v_mov_b16_e32 v46.l, v2.l
	v_mov_b16_e32 v48.l, v2.l
	v_mov_b16_e32 v50.l, v2.l
	v_mov_b16_e32 v51.l, v2.l
	v_mov_b16_e32 v52.l, v2.l
	v_mov_b16_e32 v53.l, v2.l
	v_mov_b16_e32 v54.l, v2.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v77, v2, v49 :: v_dual_and_b32 v74, 0x440, v74
	v_dual_mul_f32 v79, v2, v51 :: v_dual_and_b32 v58, 0x3f8, v58
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v56, s35, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v78, v2, v50 :: v_dual_and_b32 v55, 0x7f, v0
	v_mul_f32_e32 v75, v2, v46
	v_mul_f32_e32 v76, v2, v48
	v_mul_f32_e32 v80, v2, v52
	v_mul_f32_e32 v81, v2, v53
	v_mul_f32_e32 v82, v2, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.h, v1.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v58, v74, v58
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s5, s40, s35
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v81, v13, v30
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s5, s5, s33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v2, v48
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s5, v55, v56
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v55, v57, 10, v58
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v2, v49
	v_mul_f32_e32 v51, v2, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v30, v13, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v78, v16, v33
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v30, 0, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v49, v9, v25
	v_fma_f32 v6, v51, v6, v23
	v_fma_f32 v12, v82, v12, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v2, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v16, s3
	v_cndmask_b32_e64 v9, v25, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v2, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v12, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v79, v15, v32
	v_fma_f32 v47, v75, v47, v28
	v_fma_f32 v17, v77, v17, v34
	v_fma_f32 v11, v46, v11, v27
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v46, v55, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v32, v15, s3
	v_cndmask_b32_e64 v28, v28, v47, s3
	v_cndmask_b32_e64 v17, v34, v17, s3
	v_cndmask_b32_e64 v11, v27, v11, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v32, v55, 8, 0
	v_xad_u32 v34, v55, 16, 0
	v_xad_u32 v47, v55, 32, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v49, v55, 48, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v48, v10, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v2, v54
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v48, v55, 40, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v26, v10, s3
	v_cndmask_b32_e64 v10, v23, v6, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v80, v14, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v2, v52
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v14, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v52, v5, v22
	v_fma_f32 v14, v53, v4, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v22, v12, s3
	v_cndmask_b32_e64 v12, v21, v14, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v50, v2, v50 :: v_dual_lshlrev_b32 v21, 16, v41
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v76, v18, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v18, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v18, vcc_lo, s0, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v4, 16, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v4, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v54, v8, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v4, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v50, v7, v24
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v50, v55, 56, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v19, v8, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v19, null, s1, v5, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v5, 16, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v42
	v_lshlrev_b32_e32 v14, 16, v43
	v_lshlrev_b32_e32 v22, 16, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v24, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v4, v8
	v_dual_mul_f32 v39, v4, v23 :: v_dual_mul_f32 v8, v5, v8
	v_dual_mul_f32 v21, v5, v21 :: v_dual_mul_f32 v36, v4, v14
	v_mul_f32_e32 v14, v5, v14
	v_dual_mul_f32 v25, v5, v25 :: v_dual_mul_f32 v38, v4, v22
	v_mul_f32_e32 v22, v5, v22
	v_dual_mul_f32 v23, v5, v23 :: v_dual_mul_f32 v40, v4, v24
	v_mul_f32_e32 v4, v4, v26
	v_mul_f32_e32 v24, v5, v24
	v_mul_f32_e32 v5, v5, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v27, v3, v2
	v_fma_f32 v27, v37, v60, v6
	v_fma_f32 v37, v39, v62, v7
	v_fma_f32 v39, v41, v64, v16
	v_fma_f32 v41, v8, v66, v29
	v_fma_f32 v26, v36, v59, v12
	v_fma_f32 v42, v14, v67, v13
	v_fma_f32 v36, v38, v61, v10
	v_fma_f32 v21, v21, v68, v31
	v_fma_f32 v38, v40, v63, v9
	v_fma_f32 v22, v22, v69, v15
	v_fma_f32 v40, v4, v65, v11
	v_fma_f32 v23, v23, v70, v33
	v_fma_f32 v24, v24, v71, v17
	v_fma_f32 v25, v25, v72, v35
	v_fma_f32 v43, v5, v73, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v3, s2
	v_cndmask_b32_e64 v3, v29, v41, s2
	v_cndmask_b32_e64 v4, v12, v26, s2
	v_cndmask_b32_e64 v5, v13, v42, s2
	v_cndmask_b32_e64 v6, v6, v27, s2
	v_cndmask_b32_e64 v8, v10, v36, s2
	v_cndmask_b32_e64 v10, v7, v37, s2
	v_cndmask_b32_e64 v7, v31, v21, s2
	v_cndmask_b32_e64 v12, v9, v38, s2
	v_cndmask_b32_e64 v9, v15, v22, s2
	v_cndmask_b32_e64 v14, v16, v39, s2
	v_cndmask_b32_e64 v16, v11, v40, s2
	v_cndmask_b32_e64 v11, v33, v23, s2
	v_cndmask_b32_e64 v13, v17, v24, s2
	v_cndmask_b32_e64 v15, v35, v25, s2
	v_cndmask_b32_e64 v17, v28, v43, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b64 v30, v[2:3]
	ds_store_b64 v32, v[4:5]
	ds_store_b64 v34, v[6:7]
	ds_store_b64 v46, v[8:9]
	ds_store_b64 v47, v[10:11]
	ds_store_b64 v48, v[12:13]
	ds_store_b64 v49, v[14:15]
	ds_store_b64 v50, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v21, v[18:19], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x380, v20
	v_lshlrev_b32_e32 v4, 2, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v0, 0x440, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v2
	v_or3_b32 v0, v3, v4, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x808, v0, 0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v5, 0x1818, v0, 0
	v_xad_u32 v6, 0x2020, v0, 0
	v_xad_u32 v7, 0x2828, v0, 0
	v_xad_u32 v20, 0x3030, v0, 0
	v_xad_u32 v0, 0x3838, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v20
	ds_load_b64 v[2:3], v0
.LBB0_13:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v20, v21, v16
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s35, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 14, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 4, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 18, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 20, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s0, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s1, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 22, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_35:                               ; %atomicrmw.start20
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
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 24, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_37:                               ; %atomicrmw.start14
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
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 26, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_39:                               ; %atomicrmw.start8
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
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 28, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_41:                               ; %atomicrmw.start2
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
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 30, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_43:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 253
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 253
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15956
; TotalNumSgprs: 47
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 253
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     253
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
