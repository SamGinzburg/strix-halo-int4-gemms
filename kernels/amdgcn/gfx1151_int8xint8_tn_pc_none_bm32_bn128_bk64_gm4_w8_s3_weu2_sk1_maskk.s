	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v30, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v31, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v32, 3, v0
	v_lshrrev_b32_e32 v33, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v27, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 24, v30
	v_or_b32_e32 v36, 0x3f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v34, 32, v32
	v_or_b32_e32 v37, 0x7f0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s18, v33
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v31
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[17:18], null, s19, v32, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v35, s19, 5, v17
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s33, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s33, v33
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s33, v32
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s33, v34
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s3, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s6, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s8, s19, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s30, v4
	v_cmp_gt_i32_e64 s3, s30, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s31, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s28, s8
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v18, v3, v2, s29
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s6, v17
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s6, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s31
	s_and_b32 s3, s3, s31
	s_and_b32 vcc_lo, vcc_lo, s31
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s4, s18, s33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s33, 64
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s4, v18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s33, v33
	v_or_b32_e32 v10, s33, v32
	v_or_b32_e32 v11, s33, v34
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s3, s18, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s7, s19, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v9, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v12, s4, s3, v18
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s30, v10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s6, v17
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s30, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s6, v35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[19:20], v9, s[20:23], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v23, 0, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[21:22], v9, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	v_add_nc_u32_e32 v24, v23, v30
	s_mov_b32 s6, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v24, v[5:8] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v23, v[19:20] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v24, v[1:4]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v23, v[21:22] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v24, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[13:16] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow43
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_and_b32_e32 v28, 15, v0
	v_and_b32_e32 v29, 0x70, v27
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s34, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_add_i32 s33, s33, 64
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s0, 0, 0x4800
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s6, s3
	s_mov_b32 s3, s0
	s_mov_b32 s0, s4
	s_mov_b32 s4, s1
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s5, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v43, s0, v29, v28
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s1, s33, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v40, s6, v28
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v44, s1, v33
	v_or_b32_e32 v45, s1, v32
	v_or_b32_e32 v46, s1, v34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s0, s1, s19
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[38:39], null, s1, s18, v[18:19]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s0, s0, s28
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v44
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v39, s0, v17
	v_add_nc_u32_e32 v47, s0, v35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s30, v45
	v_cmp_gt_i32_e64 s1, s30, v46
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_add_nc_u32_e32 v41, s6, v36
	v_add_nc_u32_e32 v42, s6, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	v_cndmask_b32_e64 v44, 0x80000000, v47, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[106:107], v38, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[54:57], v39, s[24:27], 0 offen
	buffer_load_b128 v[58:61], v44, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v40 offset:416
	ds_load_u8 v45, v40 offset:384
	ds_load_u8 v46, v40 offset:96
	ds_load_u8 v47, v40 offset:64
	ds_load_u8 v48, v40
	ds_load_u8 v49, v40 offset:16
	ds_load_u8 v50, v40 offset:32
	ds_load_u8 v51, v40 offset:112
	ds_load_u8 v52, v40 offset:80
	ds_load_u8 v53, v40 offset:48
	ds_load_u8 v62, v43 offset:1664
	ds_load_u8 v63, v43 offset:1920
	ds_load_u8 v64, v43 offset:1792
	ds_load_u8 v65, v43 offset:1536
	ds_load_u8 v66, v43 offset:1152
	ds_load_u8 v67, v43 offset:1408
	ds_load_u8 v68, v43 offset:1280
	ds_load_u8 v69, v43 offset:1024
	ds_load_u8 v70, v43 offset:640
	ds_load_u8 v71, v43 offset:896
	ds_load_u8 v72, v43 offset:768
	ds_load_u8 v73, v43 offset:512
	ds_load_u8 v74, v43 offset:128
	ds_load_u8 v75, v43 offset:384
	ds_load_u8 v76, v43 offset:256
	ds_load_u8 v77, v43
	ds_load_u8 v78, v43 offset:3712
	ds_load_u8 v79, v43 offset:3968
	ds_load_u8 v80, v43 offset:3840
	ds_load_u8 v81, v43 offset:3584
	ds_load_u8 v82, v43 offset:3200
	ds_load_u8 v83, v43 offset:3456
	ds_load_u8 v84, v43 offset:3328
	ds_load_u8 v85, v43 offset:3072
	ds_load_u8 v86, v43 offset:2688
	ds_load_u8 v87, v43 offset:2944
	ds_load_u8 v88, v43 offset:2816
	ds_load_u8 v89, v43 offset:2560
	ds_load_u8 v90, v43 offset:2176
	ds_load_u8 v91, v43 offset:2432
	ds_load_u8 v92, v43 offset:2304
	ds_load_u8 v93, v43 offset:2048
	ds_load_u8 v94, v43 offset:5760
	ds_load_u8 v95, v43 offset:6016
	ds_load_u8 v96, v43 offset:5888
	ds_load_u8 v97, v43 offset:5632
	ds_load_u8 v98, v43 offset:5248
	ds_load_u8 v99, v43 offset:5504
	ds_load_u8 v100, v43 offset:5376
	ds_load_u8 v101, v43 offset:5120
	ds_load_u8 v102, v43 offset:4736
	ds_load_u8 v103, v43 offset:4992
	ds_load_u8 v104, v43 offset:4864
	ds_load_u8 v105, v43 offset:4608
	ds_load_u8 v110, v43 offset:4224
	ds_load_u8 v111, v43 offset:4480
	ds_load_u8 v112, v43 offset:4352
	ds_load_u8 v113, v43 offset:4096
	ds_load_u8 v114, v43 offset:7808
	ds_load_u8 v115, v43 offset:8064
	ds_load_u8 v116, v43 offset:7936
	ds_load_u8 v117, v43 offset:7680
	ds_load_u8 v118, v43 offset:7296
	ds_load_u8 v119, v43 offset:7552
	ds_load_u8 v120, v43 offset:7424
	ds_load_u8 v121, v43 offset:7168
	ds_load_u8 v122, v43 offset:6784
	ds_load_u8 v123, v43 offset:7040
	ds_load_u8 v124, v43 offset:6912
	ds_load_u8 v125, v43 offset:6656
	ds_load_u8 v126, v43 offset:6272
	ds_load_u8 v127, v43 offset:6528
	ds_load_u8 v128, v43 offset:6400
	ds_load_u8 v43, v43 offset:6144
	ds_load_u8 v39, v40 offset:480
	ds_load_u8 v44, v40 offset:448
	ds_load_u8 v129, v40 offset:496
	ds_load_u8 v130, v40 offset:464
	ds_load_u8 v131, v40 offset:432
	ds_load_u8 v132, v40 offset:400
	ds_load_u8 v133, v40 offset:288
	ds_load_u8 v134, v40 offset:256
	ds_load_u8 v135, v40 offset:352
	ds_load_u8 v136, v40 offset:320
	ds_load_u8 v137, v40 offset:368
	ds_load_u8 v138, v40 offset:336
	ds_load_u8 v139, v40 offset:304
	ds_load_u8 v140, v40 offset:272
	ds_load_u8 v141, v40 offset:160
	ds_load_u8 v142, v40 offset:128
	ds_load_u8 v143, v40 offset:224
	ds_load_u8 v144, v40 offset:192
	ds_load_u8 v145, v40 offset:240
	ds_load_u8 v146, v40 offset:208
	ds_load_u8 v147, v40 offset:176
	ds_load_u8 v148, v40 offset:144
	ds_load_u8 v149, v40 offset:928
	ds_load_u8 v150, v40 offset:896
	ds_load_u8 v151, v40 offset:992
	ds_load_u8 v152, v40 offset:960
	ds_load_u8 v153, v40 offset:1024
	ds_load_u8 v154, v40 offset:976
	ds_load_u8 v155, v40 offset:944
	ds_load_u8 v156, v40 offset:912
	ds_load_u8 v157, v40 offset:800
	ds_load_u8 v158, v40 offset:768
	ds_load_u8 v159, v40 offset:864
	ds_load_u8 v160, v40 offset:832
	ds_load_u8 v161, v40 offset:880
	ds_load_u8 v162, v40 offset:848
	ds_load_u8 v163, v40 offset:816
	ds_load_u8 v164, v40 offset:784
	ds_load_u8 v165, v40 offset:672
	ds_load_u8 v166, v40 offset:640
	ds_load_u8 v167, v40 offset:736
	ds_load_u8 v168, v40 offset:704
	ds_load_u8 v169, v40 offset:752
	ds_load_u8 v170, v40 offset:720
	ds_load_u8 v171, v40 offset:688
	ds_load_u8 v172, v40 offset:656
	ds_load_u8 v173, v40 offset:544
	ds_load_u8 v174, v40 offset:512
	ds_load_u8 v175, v40 offset:608
	ds_load_u8 v176, v40 offset:576
	ds_load_u8 v177, v40 offset:624
	ds_load_u8 v178, v40 offset:592
	ds_load_u8 v179, v40 offset:560
	ds_load_u8 v180, v40 offset:528
	ds_load_u8 v181, v40 offset:1440
	ds_load_u8 v182, v40 offset:1504
	ds_load_u8 v183, v40 offset:1472
	ds_load_u8 v184, v40 offset:1536
	ds_load_u8 v185, v40 offset:1520
	ds_load_u8 v186, v40 offset:1488
	ds_load_u8 v187, v40 offset:1456
	ds_load_u8 v188, v40 offset:1424
	ds_load_u8 v189, v40 offset:1408
	ds_load_u8 v190, v40 offset:1312
	ds_load_u8 v191, v40 offset:1376
	ds_load_u8 v192, v40 offset:1344
	ds_load_u8 v193, v40 offset:1392
	ds_load_u8 v194, v40 offset:1360
	ds_load_u8 v195, v40 offset:1328
	ds_load_u8 v196, v40 offset:1296
	ds_load_u8 v197, v40 offset:1280
	ds_load_u8 v198, v40 offset:1184
	ds_load_u8 v199, v40 offset:1248
	ds_load_u8 v200, v40 offset:1216
	ds_load_u8 v201, v40 offset:1264
	ds_load_u8 v202, v40 offset:1232
	ds_load_u8 v203, v40 offset:1200
	ds_load_u8 v204, v40 offset:1168
	ds_load_u8 v205, v40 offset:1152
	ds_load_u8 v206, v40 offset:1056
	ds_load_u8 v207, v40 offset:1120
	ds_load_u8 v208, v40 offset:1088
	ds_load_u8 v209, v40 offset:1136
	ds_load_u8 v210, v40 offset:1104
	ds_load_u8 v211, v40 offset:1072
	ds_load_u8 v212, v40 offset:1040
	ds_load_u8 v213, v40 offset:1952
	ds_load_u8 v214, v40 offset:2016
	ds_load_u8 v215, v40 offset:1984
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v216, v40 offset:2000
	ds_load_u8 v217, v40 offset:1968
	ds_load_u8 v218, v40 offset:1936
	ds_load_u8 v219, v40 offset:1920
	ds_load_u8 v220, v40 offset:1824
	ds_load_u8 v221, v40 offset:1888
	ds_load_u8 v222, v40 offset:1856
	ds_load_u8 v223, v40 offset:1904
	ds_load_u8 v224, v40 offset:1872
	ds_load_u8 v225, v40 offset:1840
	ds_load_u8 v226, v40 offset:1808
	ds_load_u8 v227, v40 offset:1792
	ds_load_u8 v228, v40 offset:1696
	ds_load_u8 v229, v40 offset:1760
	ds_load_u8 v230, v40 offset:1728
	ds_load_u8 v231, v40 offset:1776
	ds_load_u8 v232, v40 offset:1744
	ds_load_u8 v233, v40 offset:1712
	ds_load_u8 v234, v40 offset:1680
	ds_load_u8 v235, v40 offset:1664
	ds_load_u8 v236, v40 offset:1568
	ds_load_u8 v237, v40 offset:1632
	ds_load_u8 v238, v40 offset:1600
	ds_load_u8 v239, v40 offset:1648
	ds_load_u8 v240, v40 offset:1616
	ds_load_u8 v241, v40 offset:1584
	ds_load_u8 v40, v40 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v38, v45, v38, 0xc0c0004
	v_perm_b32 v39, v44, v39, 0xc0c0004
	v_perm_b32 v44, v134, v133, 0xc0c0004
	v_perm_b32 v45, v136, v135, 0xc0c0004
	v_perm_b32 v133, v142, v141, 0xc0c0004
	v_perm_b32 v134, v144, v143, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_perm_b32 v50, v48, v50, 0xc0c0004
	v_perm_b32 v62, v65, v62, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v64, v69, v66, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v73, v70, 0xc0c0004
	v_perm_b32 v68, v72, v71, 0xc0c0004
	v_perm_b32 v69, v77, v74, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	v_perm_b32 v73, v158, v157, 0xc0c0004
	v_perm_b32 v74, v160, v159, 0xc0c0004
	v_perm_b32 v75, v166, v165, 0xc0c0004
	v_perm_b32 v76, v168, v167, 0xc0c0004
	v_perm_b32 v78, v81, v78, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v80, v85, v82, 0xc0c0004
	v_perm_b32 v81, v84, v83, 0xc0c0004
	v_perm_b32 v84, v93, v90, 0xc0c0004
	v_perm_b32 v85, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v90, v205, v198, 0xc0c0004
	v_perm_b32 v91, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v92, v153, v206, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v93, v208, v207, 0xc0c0004
	v_perm_b32 v114, v117, v114, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v116, v121, v118, 0xc0c0004
	v_perm_b32 v117, v120, v119, 0xc0c0004
	v_perm_b32 v118, v125, v122, 0xc0c0004
	v_perm_b32 v119, v124, v123, 0xc0c0004
	v_perm_b32 v43, v43, v126, 0xc0c0004
	v_perm_b32 v121, v132, v131, 0xc0c0004
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_perm_b32 v124, v138, v137, 0xc0c0004
	v_perm_b32 v125, v148, v147, 0xc0c0004
	v_perm_b32 v126, v146, v145, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_perm_b32 v52, v49, v53, 0xc0c0004
	v_perm_b32 v71, v150, v149, 0xc0c0004
	v_perm_b32 v72, v152, v151, 0xc0c0004
	v_perm_b32 v77, v174, v173, 0xc0c0004
	v_perm_b32 v135, v176, v175, 0xc0c0004
	v_perm_b32 v82, v89, v86, 0xc0c0004
	v_perm_b32 v83, v88, v87, 0xc0c0004
	v_perm_b32 v86, v189, v181, 0xc0c0004
	v_perm_b32 v87, v183, v182, 0xc0c0004
	v_perm_b32 v94, v97, v94, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v96, v101, v98, 0xc0c0004
	v_perm_b32 v97, v100, v99, 0xc0c0004
	v_perm_b32 v98, v105, v102, 0xc0c0004
	v_perm_b32 v99, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v102, v219, v213, 0xc0c0004
	v_perm_b32 v103, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v104, v227, v220, 0xc0c0004
	v_perm_b32 v105, v222, v221, 0xc0c0004
	v_perm_b32 v120, v128, v127, 0xc0c0004
	v_perm_b32 v53, v156, v155, 0xc0c0004
	v_perm_b32 v41, v154, v41, 0xc0c0004
	v_perm_b32 v127, v164, v163, 0xc0c0004
	v_perm_b32 v128, v162, v161, 0xc0c0004
	v_perm_b32 v129, v172, v171, 0xc0c0004
	v_perm_b32 v130, v170, v169, 0xc0c0004
	v_perm_b32 v131, v180, v179, 0xc0c0004
	v_perm_b32 v132, v178, v177, 0xc0c0004
	v_perm_b32 v144, v218, v217, 0xc0c0004
	v_perm_b32 v42, v216, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v241, 0xc0c0004
	v_perm_b32 v149, v240, v239, 0xc0c0004
	v_lshl_or_b32 v49, v39, 16, v38
	v_lshl_or_b32 v48, v45, 16, v44
	v_lshl_or_b32 v47, v134, 16, v133
	v_lshl_or_b32 v46, v46, 16, v50
	v_lshl_or_b32 v65, v63, 16, v62
	v_lshl_or_b32 v64, v66, 16, v64
	v_lshl_or_b32 v63, v68, 16, v67
	v_lshl_or_b32 v62, v70, 16, v69
	v_lshl_or_b32 v68, v74, 16, v73
	v_lshl_or_b32 v67, v76, 16, v75
	v_lshl_or_b32 v75, v91, 16, v90
	v_lshl_or_b32 v74, v93, 16, v92
	v_lshl_or_b32 v93, v122, 16, v121
	v_lshl_or_b32 v92, v124, 16, v123
	v_lshl_or_b32 v91, v126, 16, v125
	v_lshl_or_b32 v90, v51, 16, v52
	v_perm_b32 v88, v197, v190, 0xc0c0004
	v_perm_b32 v89, v192, v191, 0xc0c0004
	v_perm_b32 v100, v113, v110, 0xc0c0004
	v_perm_b32 v101, v112, v111, 0xc0c0004
	v_perm_b32 v136, v188, v187, 0xc0c0004
	v_perm_b32 v137, v186, v185, 0xc0c0004
	v_perm_b32 v138, v196, v195, 0xc0c0004
	v_perm_b32 v139, v194, v193, 0xc0c0004
	v_perm_b32 v140, v204, v203, 0xc0c0004
	v_perm_b32 v141, v202, v201, 0xc0c0004
	v_perm_b32 v142, v212, v211, 0xc0c0004
	v_perm_b32 v143, v210, v209, 0xc0c0004
	v_lshl_or_b32 v69, v72, 16, v71
	v_lshl_or_b32 v66, v135, 16, v77
	v_lshl_or_b32 v73, v79, 16, v78
	v_lshl_or_b32 v72, v81, 16, v80
	v_lshl_or_b32 v71, v83, 16, v82
	v_lshl_or_b32 v70, v85, 16, v84
	v_lshl_or_b32 v77, v87, 16, v86
	v_lshl_or_b32 v81, v95, 16, v94
	v_lshl_or_b32 v80, v97, 16, v96
	v_lshl_or_b32 v85, v103, 16, v102
	v_lshl_or_b32 v84, v105, 16, v104
	v_lshl_or_b32 v86, v120, 16, v43
	v_lshl_or_b32 v97, v41, 16, v53
	v_lshl_or_b32 v96, v128, 16, v127
	v_lshl_or_b32 v95, v130, 16, v129
	v_lshl_or_b32 v94, v132, 16, v131
	v_lshl_or_b32 v105, v42, 16, v144
	v_lshl_or_b32 v102, v149, 16, v40
	v_wmma_i32_16x16x16_iu8 v[38:45], v[62:65], v[46:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[62:65], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v110, v235, v228, 0xc0c0004
	v_perm_b32 v111, v230, v229, 0xc0c0004
	v_perm_b32 v112, v184, v236, 0xc0c0004
	v_perm_b32 v113, v238, v237, 0xc0c0004
	v_perm_b32 v145, v226, v225, 0xc0c0004
	v_perm_b32 v146, v224, v223, 0xc0c0004
	v_perm_b32 v147, v234, v233, 0xc0c0004
	v_perm_b32 v148, v232, v231, 0xc0c0004
	v_lshl_or_b32 v76, v89, 16, v88
	v_lshl_or_b32 v79, v99, 16, v98
	v_lshl_or_b32 v78, v101, 16, v100
	v_lshl_or_b32 v101, v137, 16, v136
	v_lshl_or_b32 v100, v139, 16, v138
	v_lshl_or_b32 v99, v141, 16, v140
	v_lshl_or_b32 v98, v143, 16, v142
	v_wmma_i32_16x16x16_iu8 v[38:45], v[70:73], v[66:69], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[94:97], v[46:53] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v111, 16, v110
	v_lshl_or_b32 v82, v113, 16, v112
	v_lshl_or_b32 v89, v115, 16, v114
	v_lshl_or_b32 v88, v117, 16, v116
	v_lshl_or_b32 v87, v119, 16, v118
	v_lshl_or_b32 v104, v146, 16, v145
	v_lshl_or_b32 v103, v148, 16, v147
	v_wmma_i32_16x16x16_iu8 v[38:45], v[78:81], v[74:77], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[78:81], v[98:101], v[46:53] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s35, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s7, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[86:89], v[82:85], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[86:89], v[102:105], v[46:53] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s35, s7, 0
	s_add_i32 s6, s5, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s7, s35, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s8, s35, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s7, s7, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s8, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v15, v48 :: v_dual_add_nc_u32 v108, s7, v30
	v_dual_add_f32 v20, v20, v45 :: v_dual_add_nc_u32 v109, s1, v31
	v_dual_add_f32 v19, v19, v38 :: v_dual_add_f32 v26, v26, v39
	v_dual_add_f32 v25, v25, v40 :: v_dual_add_f32 v24, v24, v41
	v_dual_add_f32 v23, v23, v42 :: v_dual_add_f32 v10, v10, v47
	v_dual_add_f32 v22, v22, v43 :: v_dual_add_f32 v21, v21, v44
	v_dual_add_f32 v9, v9, v46 :: v_dual_add_f32 v16, v16, v49
	v_dual_add_f32 v12, v12, v51 :: v_dual_add_f32 v11, v11, v50
	v_dual_add_f32 v14, v14, v53 :: v_dual_add_f32 v13, v13, v52
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s0, s7, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v108, v[106:107] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v109, v[54:57]
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[58:61] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v36 :: v_dual_mov_b32 v2, v37
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s0, 0, 0x4800
	s_add_i32 s1, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v19, v9
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v3, v29, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s6, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s3, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v4 offset:416
	ds_load_u8 v7, v4 offset:384
	ds_load_u8 v8, v4 offset:480
	ds_load_u8 v17, v4 offset:448
	ds_load_u8 v18, v4 offset:288
	ds_load_u8 v30, v4 offset:256
	ds_load_u8 v31, v4 offset:352
	ds_load_u8 v32, v4 offset:320
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v33, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v76, v4 offset:16
	ds_load_u8 v77, v33
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v17, v8, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v30, v18, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v32, v31, 0xc0c0004
	ds_load_u8 v18, v4 offset:160
	ds_load_u8 v30, v4 offset:128
	ds_load_u8 v31, v4 offset:224
	ds_load_u8 v32, v4 offset:192
	v_lshl_or_b32 v49, v7, 16, v6
	v_lshl_or_b32 v48, v17, 16, v8
	ds_load_u8 v6, v4 offset:96
	ds_load_u8 v7, v4 offset:64
	ds_load_u8 v8, v4
	ds_load_u8 v17, v4 offset:32
	ds_load_u8 v34, v5 offset:1664
	ds_load_u8 v35, v5 offset:1920
	ds_load_u8 v36, v5 offset:1792
	ds_load_u8 v37, v5 offset:1536
	ds_load_u8 v38, v5 offset:1152
	ds_load_u8 v39, v5 offset:1408
	ds_load_u8 v40, v5 offset:1280
	ds_load_u8 v41, v5 offset:1024
	ds_load_u8 v42, v5 offset:640
	ds_load_u8 v43, v5 offset:896
	ds_load_u8 v44, v5 offset:768
	ds_load_u8 v45, v5 offset:512
	ds_load_u8 v50, v5 offset:128
	ds_load_u8 v54, v5 offset:384
	ds_load_u8 v55, v5 offset:256
	ds_load_u8 v56, v5
	ds_load_u8 v70, v4 offset:208
	ds_load_u8 v71, v4 offset:176
	ds_load_u8 v72, v4 offset:144
	ds_load_u8 v73, v4 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v8, v17, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v37, v34, 0xc0c0004
	v_lshl_or_b32 v46, v6, 16, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v53, v17, 16, v8
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v45, v42, 0xc0c0004
	v_perm_b32 v18, v30, v18, 0xc0c0004
	v_perm_b32 v30, v32, v31, 0xc0c0004
	v_perm_b32 v31, v41, v38, 0xc0c0004
	v_perm_b32 v32, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v56, v50, 0xc0c0004
	v_lshl_or_b32 v51, v34, 16, v33
	v_lshl_or_b32 v47, v30, 16, v18
	v_perm_b32 v30, v55, v54, 0xc0c0004
	v_lshl_or_b32 v52, v32, 16, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v50, v30, 16, v6
	v_mov_b32_e32 v37, s11
	ds_load_u8 v7, v4 offset:928
	ds_load_u8 v8, v4 offset:896
	ds_load_u8 v17, v4 offset:992
	ds_load_u8 v18, v4 offset:960
	v_dual_mov_b32 v36, s10 :: v_dual_mov_b32 v35, s9
	v_mov_b32_e32 v32, s6
	v_dual_mov_b32 v34, s8 :: v_dual_mov_b32 v33, s7
	v_dual_mov_b32 v30, s4 :: v_dual_mov_b32 v31, s5
	ds_load_u8 v6, v4 offset:800
	ds_load_u8 v54, v4 offset:768
	ds_load_u8 v55, v4 offset:864
	ds_load_u8 v56, v4 offset:832
	ds_load_u8 v78, v4 offset:976
	ds_load_u8 v79, v4 offset:944
	ds_load_u8 v80, v4 offset:912
	ds_load_u8 v81, v4 offset:880
	ds_load_u8 v62, v4 offset:464
	ds_load_u8 v63, v4 offset:432
	ds_load_u8 v64, v4 offset:400
	ds_load_u8 v65, v4 offset:368
	ds_load_u8 v66, v4 offset:336
	ds_load_u8 v67, v4 offset:304
	ds_load_u8 v68, v4 offset:272
	ds_load_u8 v69, v4 offset:240
	ds_load_u8 v74, v4 offset:80
	ds_load_u8 v75, v4 offset:48
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[46:49], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v54, v6, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v56, v55, 0xc0c0004
	v_lshl_or_b32 v49, v8, 16, v7
	ds_load_u8 v7, v4 offset:672
	ds_load_u8 v8, v4 offset:640
	ds_load_u8 v17, v4 offset:736
	ds_load_u8 v18, v4 offset:704
	ds_load_u8 v82, v4 offset:848
	ds_load_u8 v83, v4 offset:816
	ds_load_u8 v84, v4 offset:784
	ds_load_u8 v85, v4 offset:752
	ds_load_u8 v47, v4 offset:544
	ds_load_u8 v48, v4 offset:512
	ds_load_u8 v54, v4 offset:608
	ds_load_u8 v55, v4 offset:576
	ds_load_u8 v56, v5 offset:3712
	ds_load_u8 v57, v5 offset:3968
	ds_load_u8 v58, v5 offset:3840
	ds_load_u8 v59, v5 offset:3584
	ds_load_u8 v60, v5 offset:3200
	ds_load_u8 v61, v5 offset:3456
	ds_load_u8 v86, v5 offset:3328
	ds_load_u8 v87, v5 offset:3072
	ds_load_u8 v88, v4 offset:720
	ds_load_u8 v89, v4 offset:688
	ds_load_u8 v90, v4 offset:656
	ds_load_u8 v91, v4 offset:624
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v64, v68, v67, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v67, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v102, v48, v47, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v6
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_perm_b32 v68, v74, v73, 0xc0c0004
	v_perm_b32 v69, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v59, v56, 0xc0c0004
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_perm_b32 v8, v18, v17, 0xc0c0004
	ds_load_u8 v17, v5 offset:2688
	ds_load_u8 v18, v5 offset:2944
	ds_load_u8 v92, v5 offset:2816
	ds_load_u8 v93, v5 offset:2560
	ds_load_u8 v94, v5 offset:2176
	ds_load_u8 v95, v5 offset:2432
	ds_load_u8 v96, v5 offset:2304
	ds_load_u8 v97, v5 offset:2048
	ds_load_u8 v98, v4 offset:592
	ds_load_u8 v99, v4 offset:560
	ds_load_u8 v100, v4 offset:528
	ds_load_u8 v101, v4 offset:496
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v87, v60, 0xc0c0004
	v_perm_b32 v59, v86, v61, 0xc0c0004
	v_lshl_or_b32 v46, v54, 16, v102
	v_lshl_or_b32 v47, v8, 16, v7
	v_lshl_or_b32 v57, v56, 16, v55
	ds_load_u8 v60, v4 offset:1312
	ds_load_u8 v61, v4 offset:1280
	ds_load_u8 v86, v4 offset:1376
	ds_load_u8 v87, v4 offset:1344
	v_lshl_or_b32 v56, v59, 16, v58
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v7, v92, v18, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v93, v17, 0xc0c0004
	ds_load_u8 v8, v4 offset:1440
	ds_load_u8 v17, v4 offset:1408
	ds_load_u8 v18, v4 offset:1504
	ds_load_u8 v58, v4 offset:1472
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v93, s3, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v59, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v54, v97, v94, 0xc0c0004
	v_lshl_or_b32 v55, v7, 16, v6
	ds_load_u8 v94, v4 offset:1520
	ds_load_u8 v95, v4 offset:1488
	ds_load_u8 v96, v4 offset:1456
	ds_load_u8 v97, v4 offset:1424
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v62, v101, 0xc0c0004
	v_lshl_or_b32 v54, v59, 16, v54
	ds_load_u8 v6, v4 offset:1184
	ds_load_u8 v7, v4 offset:1152
	ds_load_u8 v59, v4 offset:1248
	ds_load_u8 v92, v4 offset:1216
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[46:49], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v47, v87, v86, 0xc0c0004
	ds_load_u8 v86, v4 offset:1264
	ds_load_u8 v87, v4 offset:1232
	ds_load_u8 v105, v4 offset:1200
	ds_load_u8 v106, v4 offset:1168
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v17, v8, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v58, v18, 0xc0c0004
	v_lshl_or_b32 v48, v47, 16, v46
	ds_load_u8 v18, v4 offset:1392
	ds_load_u8 v102, v4 offset:1360
	ds_load_u8 v103, v4 offset:1328
	ds_load_u8 v104, v4 offset:1296
	v_lshl_or_b32 v49, v17, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v92, v59, 0xc0c0004
	ds_load_u8 v58, v4 offset:1056
	ds_load_u8 v59, v4 offset:1024
	ds_load_u8 v60, v4 offset:1120
	ds_load_u8 v61, v4 offset:1088
	ds_load_u8 v92, v5 offset:5760
	ds_load_u8 v107, v5 offset:6016
	ds_load_u8 v108, v5 offset:5888
	ds_load_u8 v109, v5 offset:5632
	ds_load_u8 v110, v5 offset:5248
	ds_load_u8 v111, v5 offset:5504
	ds_load_u8 v112, v5 offset:5376
	ds_load_u8 v113, v5 offset:5120
	v_lshl_or_b32 v47, v7, 16, v6
	ds_load_u8 v6, v5 offset:4736
	ds_load_u8 v7, v5 offset:4864
	ds_load_u8 v8, v5 offset:4608
	ds_load_u8 v17, v5 offset:4992
	ds_load_u8 v46, v5 offset:4224
	ds_load_u8 v114, v5 offset:4480
	ds_load_u8 v115, v5 offset:4352
	ds_load_u8 v116, v5 offset:4096
	ds_load_u8 v117, v4 offset:1136
	ds_load_u8 v118, v4 offset:1104
	ds_load_u8 v119, v4 offset:1072
	ds_load_u8 v120, v4 offset:1040
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v18, v102, v18, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v59, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v61, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v109, v92, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v7, v17, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_perm_b32 v92, v113, v110, 0xc0c0004
	ds_load_u8 v8, v4 offset:1824
	ds_load_u8 v112, v4 offset:1792
	ds_load_u8 v113, v4 offset:1888
	ds_load_u8 v121, v4 offset:1856
	ds_load_u8 v107, v4 offset:1952
	ds_load_u8 v108, v4 offset:1920
	ds_load_u8 v109, v4 offset:2016
	ds_load_u8 v110, v4 offset:1984
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v116, v46, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_lshl_or_b32 v46, v59, 16, v58
	v_lshl_or_b32 v61, v61, 16, v60
	v_lshl_or_b32 v60, v111, 16, v92
	v_lshl_or_b32 v59, v7, 16, v6
	v_lshl_or_b32 v58, v114, 16, v17
	ds_load_u8 v17, v93
	ds_load_u8 v92, v4 offset:2000
	ds_load_u8 v93, v4 offset:1968
	ds_load_u8 v111, v4 offset:1936
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[46:49], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v112, v8, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v108, v107, 0xc0c0004
	v_perm_b32 v112, v121, v113, 0xc0c0004
	ds_load_u8 v113, v4 offset:1696
	ds_load_u8 v114, v4 offset:1664
	ds_load_u8 v115, v4 offset:1760
	ds_load_u8 v116, v4 offset:1728
	ds_load_u8 v121, v4 offset:1568
	ds_load_u8 v122, v4 offset:1536
	ds_load_u8 v123, v4 offset:1632
	ds_load_u8 v124, v4 offset:1600
	ds_load_u8 v125, v5 offset:7808
	ds_load_u8 v126, v5 offset:8064
	ds_load_u8 v127, v5 offset:7936
	ds_load_u8 v128, v5 offset:7680
	ds_load_u8 v129, v5 offset:7296
	ds_load_u8 v130, v5 offset:7552
	ds_load_u8 v131, v5 offset:7424
	ds_load_u8 v132, v5 offset:7168
	ds_load_u8 v133, v5 offset:6784
	ds_load_u8 v134, v5 offset:7040
	ds_load_u8 v135, v5 offset:6912
	ds_load_u8 v136, v5 offset:6656
	ds_load_u8 v137, v5 offset:6272
	ds_load_u8 v138, v5 offset:6528
	ds_load_u8 v139, v5 offset:6400
	ds_load_u8 v140, v5 offset:6144
	ds_load_u8 v141, v4 offset:1776
	ds_load_u8 v142, v4 offset:1744
	ds_load_u8 v143, v4 offset:1712
	ds_load_u8 v144, v4 offset:1680
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v7, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v5, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v113, v116, v115, 0xc0c0004
	ds_load_u8 v107, v4 offset:1904
	ds_load_u8 v108, v4 offset:1872
	ds_load_u8 v109, v4 offset:1840
	ds_load_u8 v110, v4 offset:1808
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v46, v124, v123, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v6
	v_lshl_or_b32 v6, v112, 16, v8
	v_lshl_or_b32 v5, v113, 16, v5
	ds_load_u8 v8, v4 offset:1648
	ds_load_u8 v112, v4 offset:1616
	ds_load_u8 v113, v4 offset:1584
	ds_load_u8 v114, v4 offset:1552
	v_perm_b32 v4, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v47, v128, v125, 0xc0c0004
	v_perm_b32 v48, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v115, v132, v129, 0xc0c0004
	v_perm_b32 v116, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v136, v133, 0xc0c0004
	v_perm_b32 v122, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v140, v137, 0xc0c0004
	v_perm_b32 v124, v139, v138, 0xc0c0004
	v_lshl_or_b32 v4, v46, 16, v4
	v_lshl_or_b32 v49, v48, 16, v47
	v_lshl_or_b32 v48, v116, 16, v115
	v_lshl_or_b32 v47, v122, 16, v121
	v_lshl_or_b32 v46, v124, 16, v123
	v_perm_b32 v17, v78, v17, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v112, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[4:7], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v62, 16, v63
	v_lshl_or_b32 v6, v65, 16, v64
	v_lshl_or_b32 v5, v67, 16, v66
	v_lshl_or_b32 v4, v68, 16, v69
	v_perm_b32 v62, v80, v79, 0xc0c0004
	v_perm_b32 v63, v84, v83, 0xc0c0004
	v_perm_b32 v64, v82, v81, 0xc0c0004
	v_perm_b32 v65, v90, v89, 0xc0c0004
	v_perm_b32 v66, v88, v85, 0xc0c0004
	v_perm_b32 v67, v100, v99, 0xc0c0004
	v_perm_b32 v68, v98, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[50:53], v[4:7], v[30:37] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v17, 16, v62
	v_lshl_or_b32 v6, v64, 16, v63
	v_lshl_or_b32 v5, v66, 16, v65
	v_lshl_or_b32 v4, v68, 16, v67
	v_perm_b32 v17, v97, v96, 0xc0c0004
	v_perm_b32 v50, v95, v94, 0xc0c0004
	v_perm_b32 v51, v104, v103, 0xc0c0004
	v_perm_b32 v52, v106, v105, 0xc0c0004
	v_perm_b32 v53, v87, v86, 0xc0c0004
	v_perm_b32 v62, v120, v119, 0xc0c0004
	v_perm_b32 v63, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[54:57], v[4:7], v[30:37] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v50, 16, v17
	v_lshl_or_b32 v6, v18, 16, v51
	v_lshl_or_b32 v5, v53, 16, v52
	v_lshl_or_b32 v4, v63, 16, v62
	v_perm_b32 v17, v111, v93, 0xc0c0004
	v_perm_b32 v18, v92, v77, 0xc0c0004
	v_perm_b32 v50, v110, v109, 0xc0c0004
	v_perm_b32 v51, v108, v107, 0xc0c0004
	v_perm_b32 v52, v144, v143, 0xc0c0004
	v_perm_b32 v53, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[58:61], v[4:7], v[30:37] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v18, 16, v17
	v_lshl_or_b32 v6, v51, 16, v50
	v_lshl_or_b32 v5, v53, 16, v52
	v_lshl_or_b32 v4, v8, 16, v54
	v_cvt_f32_i32_e32 v8, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[46:49], v[4:7], v[30:37] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v40
	v_cvt_f32_i32_e32 v5, v41
	v_cvt_f32_i32_e32 v6, v42
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v8, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v4 :: v_dual_add_f32 v24, v24, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v23, v23, v6 :: v_dual_add_f32 v22, v22, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v21, v21, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v7, v33
	v_cvt_f32_i32_e32 v8, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v20, v20, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v10, v10, v5 :: v_dual_add_f32 v9, v9, v6
	v_add_f32_e32 v16, v16, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v35
	v_cvt_f32_i32_e32 v5, v34
	v_cvt_f32_i32_e32 v6, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v15, v15, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v7, v36
	v_cvt_f32_i32_e32 v8, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v12, v4 :: v_dual_add_f32 v11, v11, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v14, v14, v6 :: v_dual_add_f32 v13, v13, v7
	v_add_f32_e32 v19, v19, v8
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v38, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s0, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s0, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v4 offset:416
	ds_load_u8 v6, v4 offset:384
	ds_load_u8 v7, v4 offset:480
	ds_load_u8 v8, v4 offset:448
	ds_load_u8 v17, v4 offset:288
	ds_load_u8 v18, v4 offset:256
	ds_load_u8 v30, v4 offset:352
	ds_load_u8 v31, v4 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s0, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v31, v30, 0xc0c0004
	ds_load_u8 v18, v4 offset:160
	ds_load_u8 v30, v4 offset:128
	ds_load_u8 v31, v4 offset:224
	ds_load_u8 v33, v4 offset:192
	v_lshl_or_b32 v8, v6, 16, v5
	v_lshl_or_b32 v7, v17, 16, v7
	ds_load_u8 v5, v4 offset:96
	ds_load_u8 v6, v4 offset:64
	ds_load_u8 v17, v4
	ds_load_u8 v34, v4 offset:32
	ds_load_u8 v35, v3 offset:1664
	ds_load_u8 v36, v3 offset:1920
	ds_load_u8 v37, v3 offset:1792
	ds_load_u8 v38, v3 offset:1536
	ds_load_u8 v39, v3 offset:1152
	ds_load_u8 v40, v3 offset:1408
	ds_load_u8 v41, v3 offset:1280
	ds_load_u8 v42, v3 offset:1024
	ds_load_u8 v43, v3 offset:640
	ds_load_u8 v44, v3 offset:896
	ds_load_u8 v45, v3 offset:768
	ds_load_u8 v46, v3 offset:512
	ds_load_u8 v47, v3 offset:128
	ds_load_u8 v48, v3 offset:384
	ds_load_u8 v49, v3 offset:256
	ds_load_u8 v53, v3
	ds_load_u8 v71, v4 offset:208
	ds_load_u8 v72, v4 offset:176
	ds_load_u8 v73, v4 offset:144
	ds_load_u8 v74, v4 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v17, v17, v34, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v34, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v36, v41, v40, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v46, v43, 0xc0c0004
	v_perm_b32 v18, v30, v18, 0xc0c0004
	v_perm_b32 v30, v33, v31, 0xc0c0004
	v_perm_b32 v33, v38, v35, 0xc0c0004
	v_perm_b32 v35, v42, v39, 0xc0c0004
	v_perm_b32 v38, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v53, v47, 0xc0c0004
	v_lshl_or_b32 v6, v30, 16, v18
	v_lshl_or_b32 v52, v34, 16, v33
	v_perm_b32 v33, v49, v48, 0xc0c0004
	v_lshl_or_b32 v51, v36, 16, v35
	v_lshl_or_b32 v50, v38, 16, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_lshl_or_b32 v49, v33, 16, v17
	v_dual_mov_b32 v40, s11 :: v_dual_mov_b32 v39, s10
	ds_load_u8 v18, v4 offset:928
	ds_load_u8 v30, v4 offset:896
	ds_load_u8 v41, v4 offset:992
	ds_load_u8 v42, v4 offset:960
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v35, s6
	v_dual_mov_b32 v37, s8 :: v_dual_mov_b32 v36, s7
	v_dual_mov_b32 v33, s4 :: v_dual_mov_b32 v34, s5
	ds_load_u8 v17, v4 offset:800
	ds_load_u8 v53, v4 offset:768
	ds_load_u8 v54, v4 offset:864
	ds_load_u8 v55, v4 offset:832
	ds_load_u8 v77, v4 offset:976
	ds_load_u8 v78, v4 offset:944
	ds_load_u8 v79, v4 offset:912
	ds_load_u8 v80, v4 offset:880
	ds_load_u8 v32, v4 offset:464
	ds_load_u8 v61, v4 offset:432
	ds_load_u8 v65, v4 offset:400
	ds_load_u8 v66, v4 offset:368
	ds_load_u8 v67, v4 offset:336
	ds_load_u8 v68, v4 offset:304
	ds_load_u8 v69, v4 offset:272
	ds_load_u8 v70, v4 offset:240
	ds_load_u8 v31, v4 offset:80
	ds_load_u8 v75, v4 offset:48
	ds_load_u8 v76, v4 offset:16
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v18, v30, v18, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v30, v42, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[5:8], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v53, v17, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v55, v54, 0xc0c0004
	v_lshl_or_b32 v8, v30, 16, v18
	ds_load_u8 v5, v4 offset:672
	ds_load_u8 v6, v4 offset:640
	ds_load_u8 v7, v4 offset:736
	ds_load_u8 v18, v4 offset:704
	ds_load_u8 v30, v4 offset:848
	ds_load_u8 v81, v4 offset:816
	ds_load_u8 v82, v4 offset:784
	ds_load_u8 v83, v4 offset:752
	ds_load_u8 v54, v4 offset:544
	ds_load_u8 v55, v4 offset:512
	ds_load_u8 v56, v4 offset:608
	ds_load_u8 v57, v4 offset:576
	ds_load_u8 v58, v3 offset:3712
	ds_load_u8 v59, v3 offset:3968
	ds_load_u8 v60, v3 offset:3840
	ds_load_u8 v62, v3 offset:3584
	ds_load_u8 v63, v3 offset:3200
	ds_load_u8 v64, v3 offset:3456
	ds_load_u8 v84, v3 offset:3328
	ds_load_u8 v85, v3 offset:3072
	ds_load_u8 v86, v4 offset:720
	ds_load_u8 v87, v4 offset:688
	ds_load_u8 v88, v4 offset:656
	ds_load_u8 v89, v4 offset:624
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v65, v65, v61, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v31, v31, v74, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_perm_b32 v71, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v69
	v_lshl_or_b32 v66, v70, 16, v72
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v57, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v62, v58, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v18, v7, 0xc0c0004
	ds_load_u8 v18, v3 offset:2688
	ds_load_u8 v90, v3 offset:2944
	ds_load_u8 v91, v3 offset:2816
	ds_load_u8 v92, v3 offset:2560
	ds_load_u8 v93, v3 offset:2176
	ds_load_u8 v94, v3 offset:2432
	ds_load_u8 v95, v3 offset:2304
	ds_load_u8 v96, v3 offset:2048
	ds_load_u8 v97, v4 offset:592
	ds_load_u8 v98, v4 offset:560
	ds_load_u8 v99, v4 offset:528
	ds_load_u8 v100, v4 offset:496
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v85, v63, 0xc0c0004
	v_perm_b32 v59, v84, v64, 0xc0c0004
	v_lshl_or_b32 v7, v53, 16, v17
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v55, 16, v54
	v_lshl_or_b32 v56, v57, 16, v56
	v_lshl_or_b32 v55, v59, 16, v58
	ds_load_u8 v57, v4 offset:1440
	ds_load_u8 v58, v4 offset:1408
	ds_load_u8 v59, v4 offset:1504
	ds_load_u8 v60, v4 offset:1472
	ds_load_u8 v63, v4 offset:1312
	ds_load_u8 v64, v4 offset:1280
	ds_load_u8 v84, v4 offset:1376
	ds_load_u8 v85, v4 offset:1344
	v_perm_b32 v30, v30, v80, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v69, v86, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v92, v18, 0xc0c0004
	v_perm_b32 v18, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v62, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v53, v96, v93, 0xc0c0004
	ds_load_u8 v91, v4 offset:1520
	ds_load_u8 v92, v4 offset:1488
	ds_load_u8 v93, v4 offset:1456
	ds_load_u8 v94, v4 offset:1424
	v_lshl_or_b32 v54, v18, 16, v17
	ds_load_u8 v95, v4 offset:1392
	ds_load_u8 v96, v4 offset:1360
	ds_load_u8 v101, v4 offset:1328
	ds_load_u8 v102, v4 offset:1296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v32, v32, v100, 0xc0c0004
	v_lshl_or_b32 v53, v62, 16, v53
	ds_load_u8 v17, v4 offset:1184
	ds_load_u8 v18, v4 offset:1152
	ds_load_u8 v62, v4 offset:1248
	ds_load_u8 v90, v4 offset:1216
	v_perm_b32 v70, v99, v98, 0xc0c0004
	v_lshl_or_b32 v68, v32, 16, v65
	v_wmma_i32_16x16x16_iu8 v[41:48], v[53:56], v[5:8], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v57, v85, v84, 0xc0c0004
	ds_load_u8 v84, v4 offset:1264
	ds_load_u8 v85, v4 offset:1232
	ds_load_u8 v103, v4 offset:1200
	ds_load_u8 v104, v4 offset:1168
	v_lshl_or_b32 v65, v31, 16, v71
	v_lshl_or_b32 v8, v6, 16, v5
	v_perm_b32 v31, v82, v81, 0xc0c0004
	v_lshl_or_b32 v7, v57, 16, v7
	v_perm_b32 v32, v88, v87, 0xc0c0004
	v_perm_b32 v71, v97, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[49:52], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v30, 16, v31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_lshl_or_b32 v50, v69, 16, v32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v90, v62, 0xc0c0004
	ds_load_u8 v58, v4 offset:1056
	ds_load_u8 v59, v4 offset:1024
	ds_load_u8 v60, v4 offset:1120
	ds_load_u8 v62, v4 offset:1088
	ds_load_u8 v63, v3 offset:5760
	ds_load_u8 v64, v3 offset:6016
	ds_load_u8 v90, v3 offset:5888
	ds_load_u8 v105, v3 offset:5632
	ds_load_u8 v106, v3 offset:5248
	ds_load_u8 v107, v3 offset:5504
	ds_load_u8 v108, v3 offset:5376
	ds_load_u8 v109, v3 offset:5120
	v_lshl_or_b32 v49, v71, 16, v70
	v_perm_b32 v30, v102, v101, 0xc0c0004
	v_perm_b32 v31, v96, v95, 0xc0c0004
	v_lshl_or_b32 v6, v18, 16, v17
	ds_load_u8 v5, v3 offset:4736
	ds_load_u8 v17, v3 offset:4864
	ds_load_u8 v18, v3 offset:4608
	ds_load_u8 v57, v3 offset:4992
	ds_load_u8 v110, v3 offset:4224
	ds_load_u8 v111, v3 offset:4480
	ds_load_u8 v112, v3 offset:4352
	ds_load_u8 v113, v3 offset:4096
	ds_load_u8 v114, v4 offset:1136
	ds_load_u8 v115, v4 offset:1104
	ds_load_u8 v116, v4 offset:1072
	ds_load_u8 v117, v4 offset:1040
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v65, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v32, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v59, v62, v60, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v62, v90, v64, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v105, v63, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v18, v18, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v17, v57, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v63, v109, v106, 0xc0c0004
	ds_load_u8 v64, v4 offset:1952
	ds_load_u8 v90, v4 offset:1920
	ds_load_u8 v105, v4 offset:2016
	ds_load_u8 v106, v4 offset:1984
	ds_load_u8 v108, v4 offset:1824
	ds_load_u8 v109, v4 offset:1792
	ds_load_u8 v118, v4 offset:1888
	ds_load_u8 v119, v4 offset:1856
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v57, v113, v110, 0xc0c0004
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_lshl_or_b32 v5, v59, 16, v58
	v_lshl_or_b32 v60, v62, 16, v60
	v_lshl_or_b32 v59, v107, 16, v63
	v_lshl_or_b32 v58, v17, 16, v18
	v_lshl_or_b32 v57, v110, 16, v57
	ds_load_u8 v1, v1
	ds_load_u8 v17, v4 offset:2000
	ds_load_u8 v18, v4 offset:1968
	ds_load_u8 v107, v4 offset:1936
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v117, v116, 0xc0c0004
	v_perm_b32 v67, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[57:60], v[5:8], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v62, v90, v64, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v64, v109, v108, 0xc0c0004
	v_perm_b32 v63, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v119, v118, 0xc0c0004
	ds_load_u8 v90, v4 offset:1904
	ds_load_u8 v105, v4 offset:1872
	ds_load_u8 v106, v4 offset:1840
	ds_load_u8 v110, v4 offset:1808
	v_lshl_or_b32 v6, v63, 16, v62
	v_lshl_or_b32 v5, v108, 16, v64
	ds_load_u8 v7, v4 offset:1696
	ds_load_u8 v8, v4 offset:1664
	ds_load_u8 v62, v4 offset:1760
	ds_load_u8 v63, v4 offset:1728
	ds_load_u8 v64, v4 offset:1568
	ds_load_u8 v108, v4 offset:1536
	ds_load_u8 v109, v4 offset:1632
	ds_load_u8 v111, v4 offset:1600
	ds_load_u8 v112, v3 offset:7808
	ds_load_u8 v113, v3 offset:8064
	ds_load_u8 v118, v3 offset:7936
	ds_load_u8 v119, v3 offset:7680
	ds_load_u8 v120, v3 offset:7296
	ds_load_u8 v121, v3 offset:7552
	ds_load_u8 v122, v3 offset:7424
	ds_load_u8 v123, v3 offset:7168
	ds_load_u8 v124, v3 offset:6784
	ds_load_u8 v125, v3 offset:7040
	ds_load_u8 v126, v3 offset:6912
	ds_load_u8 v127, v3 offset:6656
	ds_load_u8 v128, v3 offset:6272
	ds_load_u8 v129, v3 offset:6528
	ds_load_u8 v130, v3 offset:6400
	ds_load_u8 v131, v3 offset:6144
	ds_load_u8 v132, v4 offset:1776
	ds_load_u8 v133, v4 offset:1744
	ds_load_u8 v134, v4 offset:1712
	ds_load_u8 v135, v4 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v3, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v7, v63, v62, 0xc0c0004
	ds_load_u8 v8, v4 offset:1648
	ds_load_u8 v136, v4 offset:1616
	ds_load_u8 v137, v4 offset:1584
	ds_load_u8 v138, v4 offset:1552
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v62, v108, v64, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v64, v119, v112, 0xc0c0004
	v_perm_b32 v108, v118, v113, 0xc0c0004
	v_lshl_or_b32 v4, v7, 16, v3
	v_perm_b32 v1, v77, v1, 0xc0c0004
	v_perm_b32 v63, v111, v109, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v109, v123, v120, 0xc0c0004
	v_lshl_or_b32 v64, v108, 16, v64
	v_perm_b32 v111, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v112, v127, v124, 0xc0c0004
	v_perm_b32 v113, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v108, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v131, v128, 0xc0c0004
	v_perm_b32 v2, v17, v2, 0xc0c0004
	v_perm_b32 v17, v105, v90, 0xc0c0004
	v_lshl_or_b32 v3, v63, 16, v62
	v_lshl_or_b32 v63, v111, 16, v109
	v_lshl_or_b32 v61, v108, 16, v7
	v_perm_b32 v7, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v136, v8, 0xc0c0004
	v_lshl_or_b32 v62, v113, 16, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v52, v1, 16, v7
	v_perm_b32 v1, v94, v93, 0xc0c0004
	v_perm_b32 v7, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[61:64], v[3:6], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v31, 16, v30
	v_lshl_or_b32 v52, v7, 16, v1
	v_lshl_or_b32 v50, v65, 16, v32
	v_lshl_or_b32 v49, v67, 16, v66
	v_perm_b32 v1, v107, v18, 0xc0c0004
	v_perm_b32 v7, v110, v106, 0xc0c0004
	v_perm_b32 v18, v135, v134, 0xc0c0004
	v_perm_b32 v30, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v52, v2, 16, v1
	v_lshl_or_b32 v51, v17, 16, v7
	v_lshl_or_b32 v50, v30, 16, v18
	v_lshl_or_b32 v49, v8, 16, v31
	v_cvt_f32_i32_e32 v4, v41
	v_cvt_f32_i32_e32 v5, v42
	v_cvt_f32_i32_e32 v6, v43
	v_cvt_f32_i32_e32 v7, v44
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v17, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v34, v38
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v38, v40
.LBB0_12:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s29, v28
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v2, v2, v29, s28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v19, v4 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v28, s19, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v26, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v3, 32, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v25, v6 :: v_dual_and_b32 v27, 0x78, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v29, 4, v2
	v_or_b32_e32 v40, 12, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_or_b32_e32 v39, 8, v2
	v_or_b32_e32 v41, 16, v2
	v_or_b32_e32 v42, 20, v2
	v_or_b32_e32 v43, 24, v2
	v_or_b32_e32 v44, 28, v2
	s_clause 0x7
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v39, v39, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v22, v17 :: v_dual_add_f32 v18, v21, v18
	v_dual_add_f32 v30, v20, v30 :: v_dual_add_f32 v31, v9, v31
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s29, s19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v36, v16, v36 :: v_dual_add_f32 v33, v11, v33
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v19, v4, s2
	v_cndmask_b32_e64 v5, v26, v5, s2
	v_cndmask_b32_e64 v17, v22, v17, s2
	v_cndmask_b32_e64 v19, v20, v30, s2
	v_cndmask_b32_e64 v9, v9, v31, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v22, s0, v27, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v24, v7 :: v_dual_add_f32 v8, v23, v8
	v_dual_add_f32 v32, v10, v32 :: v_dual_add_f32 v35, v15, v35
	v_dual_add_f32 v34, v12, v34 :: v_dual_add_f32 v37, v13, v37
	v_dual_add_f32 v38, v14, v38 :: v_dual_mov_b32 v47, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v33, s2
	v_cndmask_b32_e64 v7, v24, v7, s2
	v_cndmask_b32_e64 v8, v23, v8, s2
	v_cndmask_b32_e64 v10, v10, v32, s2
	v_cndmask_b32_e64 v16, v16, v36, s2
	v_cndmask_b32_e64 v15, v15, v35, s2
	v_cndmask_b32_e64 v12, v12, v34, s2
	v_cndmask_b32_e64 v14, v14, v38, s2
	v_cndmask_b32_e64 v13, v13, v37, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	v_cndmask_b32_e64 v18, v21, v18, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, 0
	v_dual_mov_b32 v46, 0x5410 :: v_dual_lshlrev_b32 v25, 1, v22
	s_mov_b32 s18, 0x76543210
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s15, s19, 4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v45.h
	v_mov_b16_e32 v21.h, v45.h
	v_mov_b16_e32 v23.h, v45.h
	v_mov_b16_e32 v24.h, v45.h
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s23
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v27, 16, v40
	v_lshlrev_b32_e32 v26, 16, v29
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v44
	v_lshlrev_b32_e32 v30, 16, v41
	v_lshlrev_b32_e32 v28, 16, v39
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v33, v2, v1 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v2, v3, v2
	v_dual_mul_f32 v36, v27, v1 :: v_dual_lshlrev_b32 v29, 16, v42
	v_mul_f32_e32 v34, v26, v1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v43
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v3, v27
	v_dual_mul_f32 v26, v3, v26 :: v_dual_mul_f32 v37, v30, v1
	v_mul_f32_e32 v35, v28, v1
	v_mul_f32_e32 v38, v29, v1
	v_mul_f32_e32 v29, v3, v29
	v_dual_mul_f32 v28, v3, v28 :: v_dual_mul_f32 v39, v32, v1
	v_dual_mul_f32 v1, v31, v1 :: v_dual_mul_f32 v2, v9, v2
	v_mul_f32_e32 v31, v3, v31
	v_mul_f32_e32 v30, v3, v30
	v_dual_mul_f32 v3, v3, v32 :: v_dual_mul_f32 v4, v4, v33
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v5, v5, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v9, v10, v26 :: v_dual_mul_f32 v10, v15, v28
	v_dual_mul_f32 v7, v7, v36 :: v_dual_mul_f32 v8, v8, v37
	v_dual_mul_f32 v15, v16, v27 :: v_dual_mul_f32 v16, v17, v38
	v_mul_f32_e32 v17, v18, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v2.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v13, v3
	v_mul_f32_e32 v13, v14, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v14, v4, 16, 1
	v_bfe_u32 v18, v5, 16, 1
	v_bfe_u32 v27, v8, 16, 1
	v_bfe_u32 v28, v16, 16, 1
	v_mov_b16_e32 v20.l, v9.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v19, v1
	v_dual_mul_f32 v11, v11, v30 :: v_dual_mul_f32 v12, v12, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s1, v5, v5
	v_bfe_u32 v19, v6, 16, 1
	v_bfe_u32 v26, v7, 16, 1
	v_mov_b16_e32 v21.l, v10.h
	v_cmp_o_f32_e64 s7, v8, v8
	v_cmp_o_f32_e64 s8, v16, v16
	v_add3_u32 v4, v4, v14, 0x7fff
	v_add3_u32 v5, v5, v18, 0x7fff
	v_add3_u32 v8, v8, v27, 0x7fff
	v_add3_u32 v16, v16, v28, 0x7fff
	v_bfe_u32 v29, v17, 16, 1
	v_and_b32_e32 v14, 1, v45
	v_mov_b16_e32 v45.l, v15.h
	v_and_b32_e32 v18, 1, v20
	v_bfe_u32 v30, v1, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s4, v7, v7
	v_mov_b16_e32 v23.l, v11.h
	v_add3_u32 v6, v6, v19, 0x7fff
	v_add3_u32 v7, v7, v26, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s7
	v_cndmask_b16 v8.h, 0x7fff, v16.h, s8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v19, 1, v21
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s11, v17, v17
	v_cmp_o_f32_e64 s12, v1, v1
	v_mov_b16_e32 v24.l, v3.h
	v_add3_u32 v17, v17, v29, 0x7fff
	v_add3_u32 v1, v1, v30, 0x7fff
	v_add3_u32 v2, v2, v14, 0x7fff
	v_and_b32_e32 v14, 1, v45
	v_cmp_o_f32_e64 s6, v10, v10
	v_and_b32_e32 v20, 1, v23
	v_mov_b16_e32 v45.l, v12.h
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s4
	v_add3_u32 v7, v10, v19, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v17.h, s11
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s12
	v_and_b32_e32 v21, 1, v24
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s0
	v_add3_u32 v2, v15, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v9, v9
	v_cmp_o_f32_e64 s10, v11, v11
	v_add3_u32 v5, v9, v18, 0x7fff
	v_and_b32_e32 v10, 1, v45
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s6
	v_cndmask_b32_e32 v7, v8, v4, vcc_lo
	v_add3_u32 v9, v11, v20, 0x7fff
	v_cmp_o_f32_e64 s14, v3, v3
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_cndmask_b32_e32 v8, v1, v6, vcc_lo
	v_add3_u32 v3, v3, v21, 0x7fff
	v_cmp_o_f32_e64 s9, v12, v12
	v_mov_b16_e32 v45.l, v13.h
	v_cndmask_b16 v3.l, 0x7fff, v9.h, s10
	v_cndmask_b32_e32 v9, 0x1054, v46, vcc_lo
	v_add3_u32 v10, v12, v10, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v47, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v3.h, s14
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s9
	v_cndmask_b32_e32 v1, v6, v1, vcc_lo
	v_and_b32_e32 v6, 1, v45
	v_lshl_or_b32 v11, v11, 8, v11
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s13, v13, v13
	v_and_b32_e32 v9, 0x540054, v9
	v_add3_u32 v6, v13, v6, 0x7fff
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s5
	v_permlanex16_b32 v10, v1, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v9, 4, v9
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s13
	v_lshl_or_b32 v6, v11, 4, v11
	v_dual_cndmask_b32 v9, v3, v0 :: v_dual_cndmask_b32 v0, v0, v3
	v_permlanex16_b32 v4, v4, s18, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, v2, v5, vcc_lo
	v_and_b32_e32 v11, 0x5040504, v1
	v_and_b32_e32 v12, 0x7060706, v6
	v_cndmask_b32_e32 v13, v5, v2, vcc_lo
	v_permlanex16_b32 v5, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v3, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v7, v11
	v_perm_b32 v1, v4, v7, v12
	v_perm_b32 v2, v10, v8, v11
	v_perm_b32 v3, v10, v8, v12
	v_perm_b32 v4, v5, v9, v11
	v_perm_b32 v5, v5, v9, v12
	v_perm_b32 v6, v14, v13, v11
	v_perm_b32 v7, v14, v13, v12
	v_add_lshl_u32 v8, v22, s15, 1
	s_mov_b32 s18, s22
	s_clause 0x1
	buffer_store_b128 v[0:3], v25, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v8, s[16:19], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 242
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13576
; TotalNumSgprs: 38
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 242
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
