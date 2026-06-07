	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v30, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v19, 7, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v31, 2, v0
	v_or_b32_e32 v35, 0x3f0, v0
	s_mov_b32 s25, 0
	v_or_b32_e32 v32, 32, v30
	s_load_b32 s23, s[0:1], 0x38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v36, 4, v0
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
	v_mul_lo_u32 v3, s17, v30
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s16, v31
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v33, v19, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_lshl_add_u32 v34, s17, 5, v33
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s18, s7
	s_load_b128 s[8:11], s[0:1], 0x0
	s_cvt_f32_u32 s12, s18
	s_sub_i32 s19, 0, s18
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s14, v1
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_cvt_u32_f32 s15, s14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s14, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s15
	s_mul_hi_u32 s4, s15, s19
	s_xor_b32 s19, s2, s7
	s_add_i32 s4, s15, s4
	s_ashr_i32 s19, s19, 31
	s_mul_hi_u32 s4, s5, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s15, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s20, s4, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s20
	s_add_i32 s20, s4, 1
	s_sub_i32 s21, s5, s18
	s_cmp_ge_u32 s5, s18
	s_cselect_b32 s4, s20, s4
	s_cselect_b32 s5, s21, s5
	s_add_i32 s20, s4, 1
	s_cmp_ge_u32 s5, s18
	s_cselect_b32 s4, s20, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s27, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s27, v31
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s22, s23, 0x7f
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s20, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v3
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s3, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s27, v30
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s21, s6, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s27, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s24, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s17, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s24
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v18, 2, v0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s23, v4
	v_cmp_gt_i32_e64 s3, s23, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s20, s5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s4, s16, s27
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 12, v18
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s24
	s_and_b32 s3, s3, s24
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v17, v2, v1, s21
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s5, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s22, 0xff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s5, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s4, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s27, 0x80
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v11, 0x80000000, v3, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s27, v31
	v_or_b32_e32 v12, s27, v30
	v_or_b32_e32 v13, s27, v32
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s3, s16, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s17, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v14, s4, s3, v17
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s23, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v15, s5, v33
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s23, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v16, s5, v34
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v1, s[12:15], 0 offen
	buffer_load_b128 v[7:10], v2, s[12:15], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v2, 0x80000000, v14, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v1, v11, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v11, 0x80000000, v15, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v15, 0x80000000, v16 :: v_dual_add_nc_u32 v24, 0, v18
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v16, v2, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v11, s[12:15], 0 offen
	buffer_load_b128 v[20:23], v15, s[12:15], 0 offen
	v_add_nc_u32_e32 v15, 0, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s22, 0x17f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v15, v[7:10] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v24, v1 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v15, v[3:6]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v24, v16 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v15, v[11:14] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[20:23] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow55
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[18:19], s[0:1], 0x20
	v_and_b32_e32 v29, 15, v0
	v_and_b32_e32 v28, 0x70, v2
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v21, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s28, s22, 7
	s_addk_i32 s27, 0x80
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v23, 0
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s3, 0, 0x4400
	s_add_i32 s22, 0, 0x2000
	s_add_i32 s28, s28, -3
	s_mov_b32 s29, 1
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_mov_b32 s30, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s30, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s27, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v13, s0, v32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s0, v31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s1, s1, s20
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s0, s16, v[17:18]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s0, v30
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s1, v34
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s23, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s1, v33
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s1, s23, v11
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v14, s0
	s_mov_b32 s0, s26
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_add_nc_u32_e32 v38, s0, v29
	s_mov_b32 s1, s25
	v_add_nc_u32_e32 v39, s0, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v40, s1, v28, v29
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v37, v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v38 offset:208
	ds_load_u8 v42, v38 offset:240
	ds_load_u8 v43, v38 offset:224
	ds_load_u8 v44, v38 offset:192
	ds_load_u8 v45, v38 offset:144
	ds_load_u8 v46, v38 offset:176
	ds_load_u8 v47, v38 offset:160
	ds_load_u8 v48, v38 offset:128
	ds_load_u8 v49, v38 offset:80
	ds_load_u8 v50, v38 offset:112
	ds_load_u8 v51, v38 offset:96
	ds_load_u8 v52, v38 offset:64
	ds_load_u8 v53, v38
	ds_load_u8 v54, v38 offset:16
	ds_load_u8 v55, v38 offset:32
	ds_load_u8 v56, v38 offset:48
	ds_load_u8 v57, v40 offset:1664
	ds_load_u8 v58, v40 offset:1920
	ds_load_u8 v59, v40 offset:1792
	ds_load_u8 v60, v40 offset:1536
	ds_load_u8 v61, v40 offset:1152
	ds_load_u8 v62, v40 offset:1408
	ds_load_u8 v63, v40 offset:1280
	ds_load_u8 v64, v40 offset:1024
	ds_load_u8 v65, v40 offset:640
	ds_load_u8 v66, v40 offset:896
	ds_load_u8 v67, v40 offset:768
	ds_load_u8 v68, v40 offset:512
	ds_load_u8 v69, v40 offset:128
	ds_load_u8 v70, v40 offset:384
	ds_load_u8 v71, v40 offset:256
	ds_load_u8 v72, v40
	ds_load_u8 v73, v38 offset:464
	ds_load_u8 v74, v38 offset:496
	ds_load_u8 v75, v38 offset:480
	ds_load_u8 v76, v38 offset:448
	ds_load_u8 v77, v38 offset:400
	ds_load_u8 v80, v38 offset:432
	ds_load_u8 v81, v38 offset:416
	ds_load_u8 v82, v38 offset:384
	ds_load_u8 v83, v38 offset:336
	ds_load_u8 v84, v38 offset:368
	ds_load_u8 v85, v38 offset:352
	ds_load_u8 v86, v38 offset:320
	ds_load_u8 v87, v38 offset:272
	ds_load_u8 v88, v38 offset:304
	ds_load_u8 v89, v38 offset:288
	ds_load_u8 v90, v38 offset:256
	ds_load_u8 v91, v40 offset:3712
	ds_load_u8 v92, v40 offset:3968
	ds_load_u8 v93, v40 offset:3840
	ds_load_u8 v94, v40 offset:3584
	ds_load_u8 v95, v40 offset:3200
	ds_load_u8 v96, v40 offset:3456
	ds_load_u8 v97, v40 offset:3328
	ds_load_u8 v98, v40 offset:3072
	ds_load_u8 v99, v40 offset:2688
	ds_load_u8 v100, v40 offset:2944
	ds_load_u8 v101, v40 offset:2816
	ds_load_u8 v102, v40 offset:2560
	ds_load_u8 v103, v40 offset:2176
	ds_load_u8 v104, v40 offset:2432
	ds_load_u8 v105, v40 offset:2304
	ds_load_u8 v106, v40 offset:2048
	ds_load_u8 v107, v38 offset:720
	ds_load_u8 v108, v38 offset:752
	ds_load_u8 v109, v38 offset:736
	ds_load_u8 v110, v38 offset:704
	ds_load_u8 v111, v38 offset:656
	ds_load_u8 v112, v38 offset:688
	ds_load_u8 v113, v38 offset:672
	ds_load_u8 v114, v38 offset:640
	ds_load_u8 v115, v38 offset:592
	ds_load_u8 v116, v38 offset:624
	ds_load_u8 v117, v38 offset:608
	ds_load_u8 v118, v38 offset:576
	ds_load_u8 v119, v38 offset:528
	ds_load_u8 v120, v38 offset:560
	ds_load_u8 v121, v38 offset:544
	ds_load_u8 v122, v38 offset:512
	ds_load_u8 v123, v40 offset:5760
	ds_load_u8 v124, v40 offset:6016
	ds_load_u8 v125, v40 offset:5888
	ds_load_u8 v126, v40 offset:5632
	ds_load_u8 v127, v40 offset:5248
	ds_load_u8 v128, v40 offset:5504
	ds_load_u8 v129, v40 offset:5376
	ds_load_u8 v130, v40 offset:5120
	ds_load_u8 v131, v40 offset:4736
	ds_load_u8 v132, v40 offset:4992
	ds_load_u8 v133, v40 offset:4864
	ds_load_u8 v134, v40 offset:4608
	ds_load_u8 v135, v40 offset:4224
	ds_load_u8 v136, v40 offset:4480
	ds_load_u8 v137, v40 offset:4352
	ds_load_u8 v138, v40 offset:4096
	ds_load_u8 v139, v38 offset:976
	ds_load_u8 v39, v39
	ds_load_u8 v140, v38 offset:992
	ds_load_u8 v141, v38 offset:960
	ds_load_u8 v142, v38 offset:912
	ds_load_u8 v143, v38 offset:944
	ds_load_u8 v144, v38 offset:928
	ds_load_u8 v145, v38 offset:896
	ds_load_u8 v146, v38 offset:848
	ds_load_u8 v147, v38 offset:880
	ds_load_u8 v148, v38 offset:864
	ds_load_u8 v149, v38 offset:832
	ds_load_u8 v150, v38 offset:784
	ds_load_u8 v151, v38 offset:816
	ds_load_u8 v152, v38 offset:800
	ds_load_u8 v38, v38 offset:768
	ds_load_u8 v153, v40 offset:7808
	ds_load_u8 v154, v40 offset:8064
	ds_load_u8 v155, v40 offset:7936
	ds_load_u8 v156, v40 offset:7680
	ds_load_u8 v157, v40 offset:7296
	ds_load_u8 v158, v40 offset:7552
	ds_load_u8 v159, v40 offset:7424
	ds_load_u8 v160, v40 offset:7168
	ds_load_u8 v161, v40 offset:6784
	ds_load_u8 v162, v40 offset:7040
	ds_load_u8 v163, v40 offset:6912
	ds_load_u8 v164, v40 offset:6656
	ds_load_u8 v165, v40 offset:6272
	ds_load_u8 v166, v40 offset:6528
	ds_load_u8 v167, v40 offset:6400
	ds_load_u8 v40, v40 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v41, v44, v41, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v48, v45, 0xc0c0004
	v_perm_b32 v44, v47, v46, 0xc0c0004
	v_perm_b32 v45, v52, v49, 0xc0c0004
	v_perm_b32 v46, v51, v50, 0xc0c0004
	v_perm_b32 v50, v53, v54, 0xc0c0004
	v_perm_b32 v51, v55, v56, 0xc0c0004
	v_perm_b32 v52, v60, v57, 0xc0c0004
	v_perm_b32 v53, v59, v58, 0xc0c0004
	v_perm_b32 v54, v64, v61, 0xc0c0004
	v_perm_b32 v55, v63, v62, 0xc0c0004
	v_perm_b32 v56, v68, v65, 0xc0c0004
	v_perm_b32 v57, v67, v66, 0xc0c0004
	v_perm_b32 v58, v72, v69, 0xc0c0004
	v_perm_b32 v59, v71, v70, 0xc0c0004
	v_perm_b32 v60, v76, v73, 0xc0c0004
	v_perm_b32 v61, v75, v74, 0xc0c0004
	v_perm_b32 v62, v82, v77, 0xc0c0004
	v_perm_b32 v63, v81, v80, 0xc0c0004
	v_perm_b32 v64, v86, v83, 0xc0c0004
	v_perm_b32 v65, v85, v84, 0xc0c0004
	v_perm_b32 v66, v90, v87, 0xc0c0004
	v_perm_b32 v67, v89, v88, 0xc0c0004
	v_perm_b32 v68, v94, v91, 0xc0c0004
	v_perm_b32 v69, v93, v92, 0xc0c0004
	v_perm_b32 v70, v98, v95, 0xc0c0004
	v_perm_b32 v71, v97, v96, 0xc0c0004
	v_perm_b32 v72, v102, v99, 0xc0c0004
	v_perm_b32 v73, v101, v100, 0xc0c0004
	v_perm_b32 v74, v106, v103, 0xc0c0004
	v_perm_b32 v75, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v94, v141, v139, 0xc0c0004
	v_perm_b32 v39, v140, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v38, v150, 0xc0c0004
	v_perm_b32 v99, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v165, 0xc0c0004
	v_perm_b32 v106, v167, v166, 0xc0c0004
	v_lshl_or_b32 v49, v42, 16, v41
	v_lshl_or_b32 v48, v44, 16, v43
	v_lshl_or_b32 v47, v46, 16, v45
	v_lshl_or_b32 v46, v51, 16, v50
	v_lshl_or_b32 v53, v53, 16, v52
	v_lshl_or_b32 v52, v55, 16, v54
	v_lshl_or_b32 v51, v57, 16, v56
	v_lshl_or_b32 v50, v59, 16, v58
	v_perm_b32 v76, v110, v107, 0xc0c0004
	v_perm_b32 v77, v109, v108, 0xc0c0004
	v_perm_b32 v80, v114, v111, 0xc0c0004
	v_perm_b32 v81, v113, v112, 0xc0c0004
	v_perm_b32 v82, v118, v115, 0xc0c0004
	v_perm_b32 v83, v117, v116, 0xc0c0004
	v_perm_b32 v84, v122, v119, 0xc0c0004
	v_perm_b32 v85, v121, v120, 0xc0c0004
	v_perm_b32 v86, v126, v123, 0xc0c0004
	v_perm_b32 v87, v125, v124, 0xc0c0004
	v_perm_b32 v88, v130, v127, 0xc0c0004
	v_perm_b32 v89, v129, v128, 0xc0c0004
	v_perm_b32 v90, v134, v131, 0xc0c0004
	v_perm_b32 v91, v133, v132, 0xc0c0004
	v_perm_b32 v92, v138, v135, 0xc0c0004
	v_perm_b32 v93, v137, v136, 0xc0c0004
	v_lshl_or_b32 v57, v61, 16, v60
	v_lshl_or_b32 v56, v63, 16, v62
	v_lshl_or_b32 v55, v65, 16, v64
	v_lshl_or_b32 v54, v67, 16, v66
	v_lshl_or_b32 v61, v69, 16, v68
	v_lshl_or_b32 v60, v71, 16, v70
	v_lshl_or_b32 v59, v73, 16, v72
	v_lshl_or_b32 v58, v75, 16, v74
	v_lshl_or_b32 v73, v39, 16, v94
	v_lshl_or_b32 v70, v99, 16, v38
	v_lshl_or_b32 v74, v106, 16, v40
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[46:49], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v95, v145, v142, 0xc0c0004
	v_perm_b32 v96, v144, v143, 0xc0c0004
	v_perm_b32 v97, v149, v146, 0xc0c0004
	v_perm_b32 v98, v148, v147, 0xc0c0004
	v_perm_b32 v100, v156, v153, 0xc0c0004
	v_perm_b32 v101, v155, v154, 0xc0c0004
	v_perm_b32 v102, v160, v157, 0xc0c0004
	v_perm_b32 v103, v159, v158, 0xc0c0004
	v_perm_b32 v104, v164, v161, 0xc0c0004
	v_perm_b32 v105, v163, v162, 0xc0c0004
	v_lshl_or_b32 v65, v77, 16, v76
	v_lshl_or_b32 v64, v81, 16, v80
	v_lshl_or_b32 v63, v83, 16, v82
	v_lshl_or_b32 v62, v85, 16, v84
	v_lshl_or_b32 v69, v87, 16, v86
	v_lshl_or_b32 v68, v89, 16, v88
	v_lshl_or_b32 v67, v91, 16, v90
	v_lshl_or_b32 v66, v93, 16, v92
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[54:57], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v96, 16, v95
	v_lshl_or_b32 v71, v98, 16, v97
	v_lshl_or_b32 v77, v101, 16, v100
	v_lshl_or_b32 v76, v103, 16, v102
	v_lshl_or_b32 v75, v105, 16, v104
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[62:65], v[38:45] neg_lo:[1,1,0]
	s_mov_b32 s26, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s29, 1
	s_mov_b32 s25, s22
	s_cmp_lt_i32 s3, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[74:77], v[70:73], v[38:45] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s29, s3, 0
	s_add_i32 s0, s30, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s1, s29, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s3, s29, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v21, v21, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_add_f32 v25, v25, v41
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s22, s3, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v78, s1, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v42 :: v_dual_add_nc_u32 v79, s22, v36
	v_dual_add_f32 v27, v27, v39 :: v_dual_add_f32 v26, v26, v40
	v_dual_add_f32 v23, v23, v43 :: v_dual_add_f32 v22, v22, v44
	v_add_f32_e32 v20, v20, v45
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s3, s1, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s30, s28
	s_mov_b32 s30, s0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v78, v37 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v79, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v79, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v35
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s3, 0, 0x4400
	s_add_i32 s22, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, v28, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s24
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v15, s26, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s25, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v15 offset:208
	ds_load_u8 v4, v15 offset:224
	ds_load_u8 v5, v15 offset:192
	ds_load_u8 v7, v15 offset:240
	ds_load_u8 v8, v15 offset:144
	ds_load_u8 v9, v15 offset:176
	ds_load_u8 v10, v15 offset:160
	ds_load_u8 v11, v15 offset:128
	ds_load_u8 v12, v15 offset:112
	ds_load_u8 v13, v15 offset:80
	ds_load_u8 v14, v15 offset:96
	ds_load_u8 v17, v15 offset:64
	ds_load_u8 v30, v15
	ds_load_u8 v31, v15 offset:16
	ds_load_u8 v32, v15 offset:32
	ds_load_u8 v33, v15 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	v_perm_b32 v3, v5, v3, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v11, v8, 0xc0c0004
	v_perm_b32 v8, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v17, v13, 0xc0c0004
	v_lshl_or_b32 v14, v4, 16, v3
	v_mov_b32_e32 v3, 0
	ds_load_u8 v5, v16 offset:1664
	ds_load_u8 v34, v16 offset:1920
	ds_load_u8 v35, v16 offset:1792
	ds_load_u8 v36, v16 offset:1536
	ds_load_u8 v37, v16 offset:1152
	ds_load_u8 v38, v16 offset:1408
	ds_load_u8 v39, v16 offset:1280
	ds_load_u8 v40, v16 offset:1024
	ds_load_u8 v41, v16 offset:640
	ds_load_u8 v42, v16 offset:896
	ds_load_u8 v43, v16 offset:768
	ds_load_u8 v44, v16 offset:512
	ds_load_u8 v45, v16 offset:128
	ds_load_u8 v46, v16 offset:384
	ds_load_u8 v47, v16 offset:256
	ds_load_u8 v48, v16
	ds_load_u8 v49, v15 offset:288
	ds_load_u8 v50, v15 offset:256
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v6, s26, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v32, v33, 0xc0c0004
	v_lshl_or_b32 v13, v8, 16, v7
	v_lshl_or_b32 v12, v10, 16, v9
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v36, v5, 0xc0c0004
	v_perm_b32 v5, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v33, v5, 16, v4
	v_mov_b32_e32 v5, v3
	ds_load_u8 v17, v6
	v_perm_b32 v6, v30, v31, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v8, v44, v41, 0xc0c0004
	v_perm_b32 v9, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v48, v45, 0xc0c0004
	v_mov_b32_e32 v4, v3
	v_lshl_or_b32 v11, v11, 16, v6
	v_perm_b32 v6, v40, v37, 0xc0c0004
	ds_load_u8 v37, v15 offset:496
	ds_load_u8 v38, v15 offset:400
	ds_load_u8 v39, v15 offset:432
	ds_load_u8 v40, v15 offset:416
	ds_load_u8 v41, v15 offset:384
	ds_load_u8 v42, v15 offset:336
	ds_load_u8 v43, v15 offset:352
	ds_load_u8 v44, v15 offset:320
	ds_load_u8 v45, v15 offset:368
	ds_load_u8 v34, v15 offset:464
	ds_load_u8 v35, v15 offset:480
	ds_load_u8 v36, v15 offset:448
	v_perm_b32 v30, v47, v46, 0xc0c0004
	ds_load_u8 v46, v15 offset:272
	ds_load_u8 v47, v15 offset:304
	v_lshl_or_b32 v32, v7, 16, v6
	v_lshl_or_b32 v31, v9, 16, v8
	v_mov_b32_e32 v6, v3
	v_lshl_or_b32 v30, v30, 16, v10
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v8, v3
	v_mov_b32_e32 v9, v3
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v41, v38, 0xc0c0004
	v_perm_b32 v30, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v35, v37, 0xc0c0004
	v_perm_b32 v32, v43, v45, 0xc0c0004
	ds_load_u8 v33, v16 offset:3712
	ds_load_u8 v35, v16 offset:3968
	ds_load_u8 v37, v16 offset:3840
	ds_load_u8 v38, v16 offset:3584
	ds_load_u8 v39, v16 offset:3200
	ds_load_u8 v40, v16 offset:3456
	ds_load_u8 v41, v16 offset:3328
	ds_load_u8 v42, v16 offset:3072
	ds_load_u8 v43, v16 offset:2688
	ds_load_u8 v44, v16 offset:2944
	ds_load_u8 v45, v16 offset:2816
	ds_load_u8 v55, v16 offset:2560
	ds_load_u8 v56, v16 offset:2176
	ds_load_u8 v57, v16 offset:2432
	ds_load_u8 v58, v16 offset:2304
	ds_load_u8 v59, v16 offset:2048
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v36, v34, 0xc0c0004
	v_lshl_or_b32 v13, v30, 16, v13
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v49, v47, 0xc0c0004
	ds_load_u8 v34, v15 offset:592
	ds_load_u8 v36, v15 offset:608
	ds_load_u8 v48, v15 offset:576
	ds_load_u8 v51, v15 offset:528
	ds_load_u8 v52, v15 offset:560
	ds_load_u8 v53, v15 offset:544
	ds_load_u8 v54, v15 offset:512
	v_lshl_or_b32 v14, v12, 16, v11
	v_perm_b32 v11, v50, v46, 0xc0c0004
	ds_load_u8 v46, v15 offset:720
	ds_load_u8 v50, v15 offset:736
	ds_load_u8 v60, v15 offset:704
	ds_load_u8 v61, v15 offset:752
	ds_load_u8 v62, v15 offset:656
	ds_load_u8 v63, v15 offset:688
	ds_load_u8 v64, v15 offset:672
	ds_load_u8 v65, v15 offset:640
	v_lshl_or_b32 v12, v32, 16, v31
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v37, v35, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v37, v41, v40, 0xc0c0004
	v_perm_b32 v31, v38, v33, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v35, v42, v39, 0xc0c0004
	v_lshl_or_b32 v11, v30, 16, v11
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v39, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v38, v55, v43, 0xc0c0004
	v_lshl_or_b32 v33, v32, 16, v31
	v_lshl_or_b32 v32, v37, 16, v35
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v41, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v40, v59, v56, 0xc0c0004
	v_lshl_or_b32 v31, v39, 16, v38
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v34, v48, v34, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v35, v60, v46, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v50, v61, 0xc0c0004
	v_lshl_or_b32 v30, v41, 16, v40
	ds_load_u8 v40, v15 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v41, v65, v62, 0xc0c0004
	ds_load_u8 v43, v16 offset:5760
	ds_load_u8 v44, v16 offset:6016
	ds_load_u8 v45, v16 offset:5888
	ds_load_u8 v46, v16 offset:5632
	ds_load_u8 v47, v16 offset:5248
	ds_load_u8 v49, v16 offset:5504
	ds_load_u8 v50, v16 offset:5376
	ds_load_u8 v55, v16 offset:5120
	ds_load_u8 v56, v16 offset:4736
	ds_load_u8 v57, v16 offset:4992
	ds_load_u8 v58, v16 offset:4864
	ds_load_u8 v59, v16 offset:4608
	ds_load_u8 v60, v16 offset:4224
	ds_load_u8 v61, v16 offset:4480
	ds_load_u8 v62, v16 offset:4352
	ds_load_u8 v63, v16 offset:4096
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v14, v39, 16, v35
	v_perm_b32 v11, v54, v51, 0xc0c0004
	v_lshl_or_b32 v13, v42, 16, v41
	v_perm_b32 v30, v53, v52, 0xc0c0004
	ds_load_u8 v37, v15 offset:800
	ds_load_u8 v38, v15 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v32, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v31, v46, v43, 0xc0c0004
	v_lshl_or_b32 v11, v30, 16, v11
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v35, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v33, v32, 16, v31
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v39, v58, v57, 0xc0c0004
	v_perm_b32 v36, v36, v40, 0xc0c0004
	ds_load_u8 v40, v15 offset:784
	ds_load_u8 v48, v15 offset:848
	ds_load_u8 v64, v15 offset:864
	ds_load_u8 v65, v15 offset:832
	ds_load_u8 v66, v15 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v41, v63, v60, 0xc0c0004
	v_lshl_or_b32 v12, v36, 16, v34
	v_perm_b32 v34, v55, v47, 0xc0c0004
	v_perm_b32 v36, v59, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v30, v42, 16, v41
	v_lshl_or_b32 v32, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v31, v39, 16, v36
	ds_load_u8 v34, v15 offset:976
	ds_load_u8 v35, v15 offset:992
	ds_load_u8 v36, v15 offset:960
	ds_load_u8 v39, v15 offset:912
	ds_load_u8 v41, v15 offset:944
	ds_load_u8 v42, v15 offset:928
	ds_load_u8 v43, v15 offset:896
	ds_load_u8 v15, v15 offset:880
	ds_load_u8 v44, v16 offset:7808
	ds_load_u8 v45, v16 offset:8064
	ds_load_u8 v46, v16 offset:7936
	ds_load_u8 v47, v16 offset:7680
	ds_load_u8 v49, v16 offset:7296
	ds_load_u8 v50, v16 offset:7552
	ds_load_u8 v51, v16 offset:7424
	ds_load_u8 v52, v16 offset:7168
	ds_load_u8 v53, v16 offset:6784
	ds_load_u8 v54, v16 offset:7040
	ds_load_u8 v55, v16 offset:6912
	ds_load_u8 v56, v16 offset:6656
	ds_load_u8 v57, v16 offset:6272
	ds_load_u8 v58, v16 offset:6528
	ds_load_u8 v59, v16 offset:6400
	ds_load_u8 v16, v16 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v34, v36, v34, 0xc0c0004
	v_perm_b32 v17, v35, v17, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v35, v43, v39, 0xc0c0004
	v_perm_b32 v36, v42, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v64, v15, 0xc0c0004
	v_perm_b32 v39, v65, v48, 0xc0c0004
	v_lshl_or_b32 v14, v17, 16, v34
	v_lshl_or_b32 v13, v36, 16, v35
	v_perm_b32 v11, v38, v40, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v47, v44, 0xc0c0004
	v_lshl_or_b32 v12, v15, 16, v39
	v_perm_b32 v15, v37, v66, 0xc0c0004
	v_perm_b32 v30, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v52, v49, 0xc0c0004
	v_perm_b32 v32, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v56, v53, 0xc0c0004
	v_perm_b32 v35, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v57, 0xc0c0004
	v_lshl_or_b32 v11, v15, 16, v11
	v_lshl_or_b32 v33, v30, 16, v17
	v_lshl_or_b32 v32, v32, 16, v31
	v_lshl_or_b32 v31, v35, 16, v34
	v_lshl_or_b32 v30, v36, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v5 :: v_dual_add_f32 v25, v25, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v8
	v_cvt_f32_i32_e32 v6, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v7
	v_cvt_f32_i32_e32 v7, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v23, v23, v5 :: v_dual_add_f32 v22, v22, v6
	v_dual_add_f32 v21, v21, v3 :: v_dual_add_f32 v24, v24, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v20, v20, v7
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v17, s3, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v30, s22, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v17 offset:208
	ds_load_u8 v4, v17 offset:224
	ds_load_u8 v5, v17 offset:192
	ds_load_u8 v2, v17 offset:240
	ds_load_u8 v6, v17 offset:144
	ds_load_u8 v7, v17 offset:176
	ds_load_u8 v8, v17 offset:160
	ds_load_u8 v9, v17 offset:128
	ds_load_u8 v10, v17 offset:112
	ds_load_u8 v11, v17 offset:80
	ds_load_u8 v12, v17 offset:96
	ds_load_u8 v13, v17 offset:64
	ds_load_u8 v14, v17
	ds_load_u8 v15, v17 offset:16
	ds_load_u8 v16, v17 offset:32
	ds_load_u8 v31, v17 offset:48
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v13, v11, 0xc0c0004
	v_perm_b32 v2, v4, v2, 0xc0c0004
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v30 offset:1664
	ds_load_u8 v32, v30 offset:1920
	ds_load_u8 v33, v30 offset:1792
	ds_load_u8 v34, v30 offset:1536
	ds_load_u8 v35, v30 offset:1152
	ds_load_u8 v36, v30 offset:1408
	ds_load_u8 v37, v30 offset:1280
	ds_load_u8 v38, v30 offset:1024
	ds_load_u8 v39, v30 offset:640
	ds_load_u8 v40, v30 offset:896
	ds_load_u8 v41, v30 offset:768
	ds_load_u8 v42, v30 offset:512
	ds_load_u8 v43, v30 offset:128
	ds_load_u8 v44, v30 offset:384
	ds_load_u8 v45, v30 offset:256
	ds_load_u8 v46, v30
	ds_load_u8 v47, v17 offset:288
	ds_load_u8 v48, v17 offset:256
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v16, v31, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v3
	v_lshl_or_b32 v3, v7, 16, v6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v34, v5, 0xc0c0004
	v_mov_b32_e32 v5, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s3, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v7, v33, v32, 0xc0c0004
	v_lshl_or_b32 v2, v9, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v38, v35, 0xc0c0004
	v_perm_b32 v9, v37, v36, 0xc0c0004
	ds_load_u8 v49, v1
	v_perm_b32 v1, v14, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v41, v40, 0xc0c0004
	v_lshl_or_b32 v16, v7, 16, v6
	v_mov_b32_e32 v6, v5
	ds_load_u8 v31, v17 offset:464
	ds_load_u8 v32, v17 offset:480
	ds_load_u8 v33, v17 offset:448
	v_lshl_or_b32 v1, v10, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v42, v39, 0xc0c0004
	ds_load_u8 v34, v17 offset:496
	ds_load_u8 v35, v17 offset:400
	ds_load_u8 v36, v17 offset:432
	ds_load_u8 v37, v17 offset:416
	ds_load_u8 v38, v17 offset:384
	ds_load_u8 v39, v17 offset:336
	ds_load_u8 v40, v17 offset:352
	ds_load_u8 v41, v17 offset:320
	ds_load_u8 v42, v17 offset:368
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v12, v46, v43, 0xc0c0004
	v_perm_b32 v13, v45, v44, 0xc0c0004
	ds_load_u8 v43, v17 offset:272
	ds_load_u8 v44, v17 offset:304
	v_lshl_or_b32 v15, v9, 16, v8
	v_lshl_or_b32 v14, v11, 16, v10
	v_mov_b32_e32 v7, v5
	v_lshl_or_b32 v13, v13, 16, v12
	v_mov_b32_e32 v8, v5
	v_mov_b32_e32 v9, v5
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v11, v5
	v_mov_b32_e32 v12, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v32, v34, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v38, v35, 0xc0c0004
	v_perm_b32 v13, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v41, v39, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v40, v42, 0xc0c0004
	ds_load_u8 v16, v30 offset:3712
	ds_load_u8 v32, v30 offset:3968
	ds_load_u8 v34, v30 offset:3840
	ds_load_u8 v35, v30 offset:3584
	ds_load_u8 v36, v30 offset:3200
	ds_load_u8 v37, v30 offset:3456
	ds_load_u8 v38, v30 offset:3328
	ds_load_u8 v39, v30 offset:3072
	ds_load_u8 v40, v30 offset:2688
	ds_load_u8 v41, v30 offset:2944
	ds_load_u8 v42, v30 offset:2816
	ds_load_u8 v53, v30 offset:2560
	ds_load_u8 v54, v30 offset:2176
	ds_load_u8 v55, v30 offset:2432
	ds_load_u8 v56, v30 offset:2304
	ds_load_u8 v57, v30 offset:2048
	v_perm_b32 v1, v33, v31, 0xc0c0004
	v_lshl_or_b32 v3, v13, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v47, v44, 0xc0c0004
	ds_load_u8 v31, v17 offset:592
	ds_load_u8 v33, v17 offset:608
	ds_load_u8 v45, v17 offset:576
	ds_load_u8 v46, v17 offset:528
	ds_load_u8 v50, v17 offset:560
	ds_load_u8 v51, v17 offset:544
	ds_load_u8 v52, v17 offset:512
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v48, v43, 0xc0c0004
	ds_load_u8 v43, v17 offset:720
	ds_load_u8 v48, v17 offset:736
	ds_load_u8 v58, v17 offset:704
	ds_load_u8 v59, v17 offset:752
	ds_load_u8 v60, v17 offset:656
	ds_load_u8 v61, v17 offset:688
	ds_load_u8 v62, v17 offset:672
	ds_load_u8 v63, v17 offset:640
	v_lshl_or_b32 v2, v15, 16, v14
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v15, v34, v32, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v34, v38, v37, 0xc0c0004
	v_perm_b32 v14, v35, v16, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v32, v39, v36, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v36, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v35, v53, v40, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v14
	v_lshl_or_b32 v15, v34, 16, v32
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v37, v57, v54, 0xc0c0004
	v_lshl_or_b32 v14, v36, 16, v35
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v31, v45, v31, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v32, v58, v43, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v48, v59, 0xc0c0004
	v_lshl_or_b32 v13, v38, 16, v37
	ds_load_u8 v37, v17 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v63, v60, 0xc0c0004
	ds_load_u8 v40, v30 offset:5760
	ds_load_u8 v41, v30 offset:6016
	ds_load_u8 v42, v30 offset:5888
	ds_load_u8 v43, v30 offset:5632
	ds_load_u8 v44, v30 offset:5248
	ds_load_u8 v47, v30 offset:5504
	ds_load_u8 v48, v30 offset:5376
	ds_load_u8 v53, v30 offset:5120
	ds_load_u8 v54, v30 offset:4736
	ds_load_u8 v55, v30 offset:4992
	ds_load_u8 v56, v30 offset:4864
	ds_load_u8 v57, v30 offset:4608
	ds_load_u8 v58, v30 offset:4224
	ds_load_u8 v59, v30 offset:4480
	ds_load_u8 v60, v30 offset:4352
	ds_load_u8 v61, v30 offset:4096
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v36, 16, v32
	v_perm_b32 v1, v52, v46, 0xc0c0004
	v_lshl_or_b32 v3, v39, 16, v38
	v_perm_b32 v13, v51, v50, 0xc0c0004
	ds_load_u8 v34, v17 offset:800
	ds_load_u8 v35, v17 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v15, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v43, v40, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v32, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v16, v15, 16, v14
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v56, v55, 0xc0c0004
	v_perm_b32 v33, v33, v37, 0xc0c0004
	ds_load_u8 v37, v17 offset:784
	ds_load_u8 v45, v17 offset:848
	ds_load_u8 v62, v17 offset:864
	ds_load_u8 v63, v17 offset:832
	ds_load_u8 v64, v17 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v61, v58, 0xc0c0004
	v_lshl_or_b32 v2, v33, 16, v31
	v_perm_b32 v31, v53, v44, 0xc0c0004
	v_perm_b32 v33, v57, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v13, v39, 16, v38
	v_lshl_or_b32 v15, v32, 16, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v14, v36, 16, v33
	ds_load_u8 v31, v17 offset:976
	ds_load_u8 v32, v17 offset:992
	ds_load_u8 v33, v17 offset:960
	ds_load_u8 v36, v17 offset:912
	ds_load_u8 v38, v17 offset:944
	ds_load_u8 v39, v17 offset:928
	ds_load_u8 v40, v17 offset:896
	ds_load_u8 v17, v17 offset:880
	ds_load_u8 v41, v30 offset:7808
	ds_load_u8 v42, v30 offset:8064
	ds_load_u8 v43, v30 offset:7936
	ds_load_u8 v44, v30 offset:7680
	ds_load_u8 v46, v30 offset:7296
	ds_load_u8 v47, v30 offset:7552
	ds_load_u8 v48, v30 offset:7424
	ds_load_u8 v50, v30 offset:7168
	ds_load_u8 v51, v30 offset:6784
	ds_load_u8 v52, v30 offset:7040
	ds_load_u8 v53, v30 offset:6912
	ds_load_u8 v54, v30 offset:6656
	ds_load_u8 v55, v30 offset:6272
	ds_load_u8 v56, v30 offset:6528
	ds_load_u8 v57, v30 offset:6400
	ds_load_u8 v30, v30 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	v_perm_b32 v32, v32, v49, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v33, v40, v36, 0xc0c0004
	v_perm_b32 v36, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v62, v17, 0xc0c0004
	v_perm_b32 v38, v63, v45, 0xc0c0004
	v_lshl_or_b32 v4, v32, 16, v31
	v_lshl_or_b32 v3, v36, 16, v33
	v_perm_b32 v1, v35, v37, 0xc0c0004
	v_perm_b32 v13, v34, v64, 0xc0c0004
	v_lshl_or_b32 v2, v17, 16, v38
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v44, v41, 0xc0c0004
	v_perm_b32 v15, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v50, v46, 0xc0c0004
	v_perm_b32 v31, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v54, v51, 0xc0c0004
	v_perm_b32 v33, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v55, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	v_lshl_or_b32 v16, v15, 16, v14
	v_lshl_or_b32 v15, v31, 16, v17
	v_lshl_or_b32 v14, v33, 16, v32
	v_lshl_or_b32 v13, v34, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v3, v11
	v_cvt_f32_i32_e32 v4, v12
.LBB0_12:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s21, v29
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v1, v1, v28, s20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v21, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v9, v24, v9 :: v_dual_lshlrev_b32 v30, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v6, v27, v6 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v11, v2, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v12, 8, v1
	v_or_b32_e32 v13, 12, v1
	v_or_b32_e32 v14, 16, v1
	v_or_b32_e32 v15, 20, v1
	v_or_b32_e32 v16, 24, v1
	v_or_b32_e32 v17, 28, v1
	s_clause 0x7
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	buffer_load_u16 v29, v2, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v23, v10 :: v_dual_and_b32 v1, 0x7f, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v27, v6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 7, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s21, s17
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_bfe_i32 v31, v0, 3, 1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v23, v10, s2
	v_cndmask_b32_e64 v9, v24, v9, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v2, s17, v2
	s_add_i32 s0, s0, s20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v21, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v22, v3 :: v_dual_add_f32 v4, v20, v4
	v_dual_add_f32 v7, v26, v7 :: v_dual_add_f32 v8, v25, v8
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s0, v1, v2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v3, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v8, v25, v8, s2
	v_cndmask_b32_e64 v4, v20, v4, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_barrier
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v29, v11, v29 :: v_dual_and_b32 v32, 0x1e0, v30
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v6, v6, v29 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v16, v11, v16
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v12, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v15, v11, v15
	v_dual_mul_f32 v28, v11, v28 :: v_dual_and_b32 v21, 0x1040, v31
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v31, v19, 2, v32
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v10, v10, v15 :: v_dual_mul_f32 v5, v5, v28
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v21, v31, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v14, v11, v14 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v19, v19, 9, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v13, v11, v13
	v_mul_f32_e32 v11, v11, v17
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v7, v12
	v_dual_mul_f32 v9, v9, v14 :: v_dual_add_nc_u32 v20, 0, v19
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_xad_u32 v21, v19, 4, 0
	v_xad_u32 v23, v19, 8, 0
	v_xad_u32 v24, v19, 12, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v8, v13
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v25, v19, 16, 0
	v_xad_u32 v26, v19, 20, 0
	v_xad_u32 v27, v19, 24, 0
	v_xad_u32 v19, v19, 28, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v12, v22, v16
	v_mul_f32_e32 v4, v4, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b32 v20, v5
	ds_store_b32 v21, v6
	ds_store_b32 v23, v7
	ds_store_b32 v24, v8
	ds_store_b32 v25, v9
	ds_store_b32 v26, v10
	ds_store_b32 v27, v12
	ds_store_b32 v19, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v6, 28, v30
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 0x204, v4
	v_and_or_b32 v6, 0x1c0, v18, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v6, v4
	v_and_or_b32 v0, v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_13:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_15:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_17:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_19:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_21:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_23:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_25:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s17, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_27:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 168
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10036
; TotalNumSgprs: 33
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 33
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
