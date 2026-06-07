	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v30, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v31, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v32, 3, v0
	v_lshrrev_b32_e32 v33, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v27, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 12, v30
	v_or_b32_e32 v36, 0x3f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v34, 32, v32
	s_load_b32 s23, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s10, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s12, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s10, v33
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
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
	s_mul_i32 s12, s6, s5
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s12, s6
	s_load_b128 s[12:15], s[0:1], 0x0
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
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
	s_sub_i32 s18, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v31
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[25:26], null, s11, v32, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s18, s18, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v35, s11, 5, v25
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s14
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s19, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s20, s4, 1
	s_sub_i32 s21, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s15
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s20, s4
	s_cselect_b32 s5, s21, s5
	s_add_i32 s20, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s20, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s27, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s27, v33
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s27, v32
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s20, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s27, v34
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s3, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s22, s23, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s21, s6, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s11, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s22, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s23, v4
	v_cmp_gt_i32_e64 s3, s23, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s24, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s20, s5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v26, v3, v2, s21
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s5, v25
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s5, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s24
	s_and_b32 s3, s3, s24
	s_and_b32 vcc_lo, vcc_lo, s24
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s4, s10, s27
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s27, s27, 64
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s4, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s27, v33
	v_or_b32_e32 v10, s27, v32
	v_or_b32_e32 v11, s27, v34
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s3, s10, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s11, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v9, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v12, s4, s3, v26
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s23, v10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s5, v25
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s23, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s5, v35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v17, v9, s[12:15], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[16:19], 0 offen
	buffer_load_b128 v[5:8], v5, s[16:19], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v19, 0, v31
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v18, v9, s[12:15], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[16:19], 0 offen
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v20, 0, v30
	s_mov_b32 s18, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s22, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v19, v[5:8] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v20, v17 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v19, v[1:4]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v20, v18 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v19, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v19, v[13:16] offset:12288
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
.LBB0_3:                                ; %Flow35
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	v_and_b32_e32 v29, 15, v0
	v_and_b32_e32 v28, 0x70, v27
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s26, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v17, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s28, s22, 6
	s_add_i32 s27, s27, 64
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v21, 0
	s_add_i32 s25, 0, 0x4000
	s_add_i32 s3, 0, 0x4400
	s_add_i32 s22, 0, 0x2000
	s_add_i32 s28, s28, -3
	s_mov_b32 s29, 1
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s30, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s30, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s27, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v13, s0, v34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s0, v33
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s1, s1, s20
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s0, s10, v[26:27]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s0, v32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s1, v35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s23, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s1, v25
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s1, s23, v11
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v14, s0
	s_mov_b32 s0, s25
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_add_nc_u32_e32 v38, s0, v29
	s_mov_b32 s1, s26
	v_add_nc_u32_e32 v39, s0, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v40, s1, v28, v29
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v37, v9, s[12:15], 0 offen
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
	s_mov_b32 s25, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s29, 1
	s_mov_b32 s26, s22
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
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v17, v17, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_add_f32 v21, v21, v44
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[16:19], 0 offen
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s22, s3, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v78, s1, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v22, v22, v45 :: v_dual_add_nc_u32 v79, s22, v31
	v_add_f32_e32 v18, v18, v39
	v_dual_add_f32 v24, v24, v41 :: v_dual_add_f32 v23, v23, v40
	v_dual_add_f32 v20, v20, v43 :: v_dual_add_f32 v19, v19, v42
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
	v_mov_b32_e32 v1, v36
	s_mov_b32 s18, s26
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v17, 0
	s_add_i32 s25, 0, 0x4000
	s_add_i32 s3, 0, 0x4400
	s_add_i32 s22, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v18, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v24, v18 :: v_dual_mov_b32 v23, v17
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v21, v17
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
	v_add_nc_u32_e32 v15, s25, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s18, v2
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
	ds_load_u8 v25, v15 offset:64
	ds_load_u8 v26, v15
	ds_load_u8 v30, v15 offset:16
	ds_load_u8 v31, v15 offset:32
	ds_load_u8 v32, v15 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	v_perm_b32 v3, v5, v3, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v11, v8, 0xc0c0004
	v_perm_b32 v8, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v25, v13, 0xc0c0004
	v_lshl_or_b32 v14, v4, 16, v3
	v_mov_b32_e32 v3, 0
	ds_load_u8 v5, v16 offset:1664
	ds_load_u8 v33, v16 offset:1920
	ds_load_u8 v34, v16 offset:1792
	ds_load_u8 v35, v16 offset:1536
	ds_load_u8 v36, v16 offset:1152
	ds_load_u8 v37, v16 offset:1408
	ds_load_u8 v38, v16 offset:1280
	ds_load_u8 v39, v16 offset:1024
	ds_load_u8 v40, v16 offset:640
	ds_load_u8 v41, v16 offset:896
	ds_load_u8 v42, v16 offset:768
	ds_load_u8 v43, v16 offset:512
	ds_load_u8 v44, v16 offset:128
	ds_load_u8 v45, v16 offset:384
	ds_load_u8 v46, v16 offset:256
	ds_load_u8 v47, v16
	ds_load_u8 v48, v15 offset:288
	ds_load_u8 v49, v15 offset:256
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v6, s25, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v31, v32, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_lshl_or_b32 v13, v8, 16, v7
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v35, v5, 0xc0c0004
	v_perm_b32 v5, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v33, v5, 16, v4
	v_mov_b32_e32 v5, v3
	ds_load_u8 v25, v6
	v_perm_b32 v6, v26, v30, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v8, v43, v40, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v47, v44, 0xc0c0004
	v_perm_b32 v9, v42, v41, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v6
	v_perm_b32 v6, v39, v36, 0xc0c0004
	v_mov_b32_e32 v4, v3
	ds_load_u8 v36, v15 offset:496
	ds_load_u8 v37, v15 offset:400
	ds_load_u8 v38, v15 offset:432
	ds_load_u8 v39, v15 offset:416
	ds_load_u8 v40, v15 offset:384
	ds_load_u8 v41, v15 offset:336
	ds_load_u8 v42, v15 offset:352
	ds_load_u8 v43, v15 offset:320
	ds_load_u8 v44, v15 offset:368
	v_lshl_or_b32 v30, v26, 16, v10
	ds_load_u8 v26, v15 offset:464
	ds_load_u8 v34, v15 offset:480
	ds_load_u8 v35, v15 offset:448
	ds_load_u8 v45, v15 offset:272
	ds_load_u8 v46, v15 offset:304
	v_lshl_or_b32 v32, v7, 16, v6
	v_lshl_or_b32 v31, v9, 16, v8
	v_mov_b32_e32 v6, v3
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v8, v3
	v_mov_b32_e32 v9, v3
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v40, v37, 0xc0c0004
	v_perm_b32 v30, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v43, v41, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v32, v42, v44, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v34, v36, 0xc0c0004
	ds_load_u8 v33, v16 offset:3712
	ds_load_u8 v34, v16 offset:3968
	ds_load_u8 v36, v16 offset:3840
	ds_load_u8 v37, v16 offset:3584
	ds_load_u8 v38, v16 offset:3200
	ds_load_u8 v39, v16 offset:3456
	ds_load_u8 v40, v16 offset:3328
	ds_load_u8 v41, v16 offset:3072
	ds_load_u8 v42, v16 offset:2688
	ds_load_u8 v43, v16 offset:2944
	ds_load_u8 v44, v16 offset:2816
	ds_load_u8 v54, v16 offset:2560
	ds_load_u8 v55, v16 offset:2176
	ds_load_u8 v56, v16 offset:2432
	ds_load_u8 v57, v16 offset:2304
	ds_load_u8 v58, v16 offset:2048
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v35, v26, 0xc0c0004
	v_lshl_or_b32 v13, v30, 16, v13
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v48, v46, 0xc0c0004
	ds_load_u8 v26, v15 offset:592
	ds_load_u8 v35, v15 offset:608
	ds_load_u8 v47, v15 offset:576
	ds_load_u8 v50, v15 offset:528
	ds_load_u8 v51, v15 offset:560
	ds_load_u8 v52, v15 offset:544
	ds_load_u8 v53, v15 offset:512
	v_lshl_or_b32 v14, v12, 16, v11
	v_perm_b32 v11, v49, v45, 0xc0c0004
	ds_load_u8 v45, v15 offset:720
	ds_load_u8 v49, v15 offset:736
	ds_load_u8 v59, v15 offset:704
	ds_load_u8 v60, v15 offset:752
	ds_load_u8 v61, v15 offset:656
	ds_load_u8 v62, v15 offset:688
	ds_load_u8 v63, v15 offset:672
	ds_load_u8 v64, v15 offset:640
	v_lshl_or_b32 v12, v32, 16, v31
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_perm_b32 v31, v37, v33, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v34, v41, v38, 0xc0c0004
	v_lshl_or_b32 v11, v30, 16, v11
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v37, v54, v42, 0xc0c0004
	v_lshl_or_b32 v33, v32, 16, v31
	v_lshl_or_b32 v32, v36, 16, v34
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v40, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v39, v58, v55, 0xc0c0004
	v_lshl_or_b32 v31, v38, 16, v37
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v26, v47, v26, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v59, v45, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v49, v60, 0xc0c0004
	v_lshl_or_b32 v30, v40, 16, v39
	ds_load_u8 v39, v15 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v40, v64, v61, 0xc0c0004
	ds_load_u8 v42, v16 offset:5760
	ds_load_u8 v43, v16 offset:6016
	ds_load_u8 v44, v16 offset:5888
	ds_load_u8 v45, v16 offset:5632
	ds_load_u8 v46, v16 offset:5248
	ds_load_u8 v48, v16 offset:5504
	ds_load_u8 v49, v16 offset:5376
	ds_load_u8 v54, v16 offset:5120
	ds_load_u8 v55, v16 offset:4736
	ds_load_u8 v56, v16 offset:4992
	ds_load_u8 v57, v16 offset:4864
	ds_load_u8 v58, v16 offset:4608
	ds_load_u8 v59, v16 offset:4224
	ds_load_u8 v60, v16 offset:4480
	ds_load_u8 v61, v16 offset:4352
	ds_load_u8 v62, v16 offset:4096
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v14, v38, 16, v34
	v_perm_b32 v11, v53, v50, 0xc0c0004
	v_lshl_or_b32 v13, v41, 16, v40
	ds_load_u8 v36, v15 offset:800
	ds_load_u8 v37, v15 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v31, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v30, v45, v42, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v34, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v32, v54, v46, 0xc0c0004
	v_lshl_or_b32 v33, v31, 16, v30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v57, v56, 0xc0c0004
	v_perm_b32 v35, v35, v39, 0xc0c0004
	ds_load_u8 v39, v15 offset:784
	ds_load_u8 v47, v15 offset:848
	ds_load_u8 v63, v15 offset:864
	ds_load_u8 v64, v15 offset:832
	ds_load_u8 v65, v15 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v40, v62, v59, 0xc0c0004
	v_lshl_or_b32 v32, v34, 16, v32
	v_lshl_or_b32 v12, v35, 16, v26
	v_perm_b32 v26, v52, v51, 0xc0c0004
	v_perm_b32 v35, v58, v55, 0xc0c0004
	v_lshl_or_b32 v30, v41, 16, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v26, 16, v11
	v_lshl_or_b32 v31, v38, 16, v35
	ds_load_u8 v26, v15 offset:976
	ds_load_u8 v34, v15 offset:992
	ds_load_u8 v35, v15 offset:960
	ds_load_u8 v38, v15 offset:912
	ds_load_u8 v40, v15 offset:944
	ds_load_u8 v41, v15 offset:928
	ds_load_u8 v42, v15 offset:896
	ds_load_u8 v15, v15 offset:880
	ds_load_u8 v43, v16 offset:7808
	ds_load_u8 v44, v16 offset:8064
	ds_load_u8 v45, v16 offset:7936
	ds_load_u8 v46, v16 offset:7680
	ds_load_u8 v48, v16 offset:7296
	ds_load_u8 v49, v16 offset:7552
	ds_load_u8 v50, v16 offset:7424
	ds_load_u8 v51, v16 offset:7168
	ds_load_u8 v52, v16 offset:6784
	ds_load_u8 v53, v16 offset:7040
	ds_load_u8 v54, v16 offset:6912
	ds_load_u8 v55, v16 offset:6656
	ds_load_u8 v56, v16 offset:6272
	ds_load_u8 v57, v16 offset:6528
	ds_load_u8 v58, v16 offset:6400
	ds_load_u8 v16, v16 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v26, v35, v26, 0xc0c0004
	v_perm_b32 v25, v34, v25, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v34, v42, v38, 0xc0c0004
	v_perm_b32 v35, v41, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v63, v15, 0xc0c0004
	v_perm_b32 v38, v64, v47, 0xc0c0004
	v_lshl_or_b32 v14, v25, 16, v26
	v_lshl_or_b32 v13, v35, 16, v34
	v_perm_b32 v11, v37, v39, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v25, v46, v43, 0xc0c0004
	v_lshl_or_b32 v12, v15, 16, v38
	v_perm_b32 v15, v36, v65, 0xc0c0004
	v_perm_b32 v26, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v51, v48, 0xc0c0004
	v_perm_b32 v31, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v55, v52, 0xc0c0004
	v_perm_b32 v35, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v56, 0xc0c0004
	v_lshl_or_b32 v11, v15, 16, v11
	v_lshl_or_b32 v33, v26, 16, v25
	v_lshl_or_b32 v32, v31, 16, v30
	v_lshl_or_b32 v31, v35, 16, v34
	v_lshl_or_b32 v30, v36, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[30:33], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v24, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v7, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v20, v20, v8
	v_add_f32_e32 v22, v22, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v19, v19, v5
	v_add_f32_e32 v21, v21, v7
	v_add_f32_e32 v17, v17, v3
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v25, s3, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s22, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v25 offset:208
	ds_load_u8 v4, v25 offset:224
	ds_load_u8 v5, v25 offset:192
	ds_load_u8 v2, v25 offset:240
	ds_load_u8 v6, v25 offset:144
	ds_load_u8 v7, v25 offset:176
	ds_load_u8 v8, v25 offset:160
	ds_load_u8 v9, v25 offset:128
	ds_load_u8 v10, v25 offset:112
	ds_load_u8 v11, v25 offset:80
	ds_load_u8 v12, v25 offset:96
	ds_load_u8 v13, v25 offset:64
	ds_load_u8 v14, v25
	ds_load_u8 v15, v25 offset:16
	ds_load_u8 v16, v25 offset:32
	ds_load_u8 v30, v25 offset:48
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
	ds_load_u8 v5, v26 offset:1664
	ds_load_u8 v31, v26 offset:1920
	ds_load_u8 v32, v26 offset:1792
	ds_load_u8 v33, v26 offset:1536
	ds_load_u8 v34, v26 offset:1152
	ds_load_u8 v35, v26 offset:1408
	ds_load_u8 v36, v26 offset:1280
	ds_load_u8 v37, v26 offset:1024
	ds_load_u8 v38, v26 offset:640
	ds_load_u8 v39, v26 offset:896
	ds_load_u8 v40, v26 offset:768
	ds_load_u8 v41, v26 offset:512
	ds_load_u8 v42, v26 offset:128
	ds_load_u8 v43, v26 offset:384
	ds_load_u8 v44, v26 offset:256
	ds_load_u8 v45, v26
	ds_load_u8 v46, v25 offset:288
	ds_load_u8 v47, v25 offset:256
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v16, v30, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v3
	v_lshl_or_b32 v3, v7, 16, v6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v33, v5, 0xc0c0004
	v_mov_b32_e32 v5, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s3, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v7, v32, v31, 0xc0c0004
	v_lshl_or_b32 v2, v9, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v37, v34, 0xc0c0004
	v_perm_b32 v9, v36, v35, 0xc0c0004
	ds_load_u8 v48, v1
	v_perm_b32 v1, v14, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v40, v39, 0xc0c0004
	v_lshl_or_b32 v16, v7, 16, v6
	v_mov_b32_e32 v6, v5
	ds_load_u8 v30, v25 offset:464
	ds_load_u8 v31, v25 offset:480
	ds_load_u8 v32, v25 offset:448
	v_lshl_or_b32 v1, v10, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v41, v38, 0xc0c0004
	ds_load_u8 v33, v25 offset:496
	ds_load_u8 v34, v25 offset:400
	ds_load_u8 v35, v25 offset:432
	ds_load_u8 v36, v25 offset:416
	ds_load_u8 v37, v25 offset:384
	ds_load_u8 v38, v25 offset:336
	ds_load_u8 v39, v25 offset:352
	ds_load_u8 v40, v25 offset:320
	ds_load_u8 v41, v25 offset:368
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v12, v45, v42, 0xc0c0004
	v_perm_b32 v13, v44, v43, 0xc0c0004
	ds_load_u8 v42, v25 offset:272
	ds_load_u8 v43, v25 offset:304
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
	v_perm_b32 v2, v31, v33, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v37, v34, 0xc0c0004
	v_perm_b32 v13, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v40, v38, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v39, v41, 0xc0c0004
	ds_load_u8 v16, v26 offset:3712
	ds_load_u8 v31, v26 offset:3968
	ds_load_u8 v33, v26 offset:3840
	ds_load_u8 v34, v26 offset:3584
	ds_load_u8 v35, v26 offset:3200
	ds_load_u8 v36, v26 offset:3456
	ds_load_u8 v37, v26 offset:3328
	ds_load_u8 v38, v26 offset:3072
	ds_load_u8 v39, v26 offset:2688
	ds_load_u8 v40, v26 offset:2944
	ds_load_u8 v41, v26 offset:2816
	ds_load_u8 v52, v26 offset:2560
	ds_load_u8 v53, v26 offset:2176
	ds_load_u8 v54, v26 offset:2432
	ds_load_u8 v55, v26 offset:2304
	ds_load_u8 v56, v26 offset:2048
	v_perm_b32 v1, v32, v30, 0xc0c0004
	v_lshl_or_b32 v3, v13, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v46, v43, 0xc0c0004
	ds_load_u8 v30, v25 offset:592
	ds_load_u8 v32, v25 offset:608
	ds_load_u8 v44, v25 offset:576
	ds_load_u8 v45, v25 offset:528
	ds_load_u8 v49, v25 offset:560
	ds_load_u8 v50, v25 offset:544
	ds_load_u8 v51, v25 offset:512
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v47, v42, 0xc0c0004
	ds_load_u8 v42, v25 offset:720
	ds_load_u8 v47, v25 offset:736
	ds_load_u8 v57, v25 offset:704
	ds_load_u8 v58, v25 offset:752
	ds_load_u8 v59, v25 offset:656
	ds_load_u8 v60, v25 offset:688
	ds_load_u8 v61, v25 offset:672
	ds_load_u8 v62, v25 offset:640
	v_lshl_or_b32 v2, v15, 16, v14
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v15, v33, v31, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v33, v37, v36, 0xc0c0004
	v_perm_b32 v14, v34, v16, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v31, v38, v35, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v35, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v34, v52, v39, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v14
	v_lshl_or_b32 v15, v33, 16, v31
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v36, v56, v53, 0xc0c0004
	v_lshl_or_b32 v14, v35, 16, v34
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v44, v30, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v31, v57, v42, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v47, v58, 0xc0c0004
	v_lshl_or_b32 v13, v37, 16, v36
	ds_load_u8 v36, v25 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v62, v59, 0xc0c0004
	ds_load_u8 v39, v26 offset:5760
	ds_load_u8 v40, v26 offset:6016
	ds_load_u8 v41, v26 offset:5888
	ds_load_u8 v42, v26 offset:5632
	ds_load_u8 v43, v26 offset:5248
	ds_load_u8 v46, v26 offset:5504
	ds_load_u8 v47, v26 offset:5376
	ds_load_u8 v52, v26 offset:5120
	ds_load_u8 v53, v26 offset:4736
	ds_load_u8 v54, v26 offset:4992
	ds_load_u8 v55, v26 offset:4864
	ds_load_u8 v56, v26 offset:4608
	ds_load_u8 v57, v26 offset:4224
	ds_load_u8 v58, v26 offset:4480
	ds_load_u8 v59, v26 offset:4352
	ds_load_u8 v60, v26 offset:4096
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v35, 16, v31
	v_perm_b32 v1, v51, v45, 0xc0c0004
	v_lshl_or_b32 v3, v38, 16, v37
	v_perm_b32 v13, v50, v49, 0xc0c0004
	ds_load_u8 v33, v25 offset:800
	ds_load_u8 v34, v25 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v15, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v42, v39, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v31, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v16, v15, 16, v14
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v35, v55, v54, 0xc0c0004
	v_perm_b32 v32, v32, v36, 0xc0c0004
	ds_load_u8 v36, v25 offset:784
	ds_load_u8 v44, v25 offset:848
	ds_load_u8 v61, v25 offset:864
	ds_load_u8 v62, v25 offset:832
	ds_load_u8 v63, v25 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v38, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v60, v57, 0xc0c0004
	v_lshl_or_b32 v2, v32, 16, v30
	v_perm_b32 v30, v52, v43, 0xc0c0004
	v_perm_b32 v32, v56, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v13, v38, 16, v37
	v_lshl_or_b32 v15, v31, 16, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v14, v35, 16, v32
	ds_load_u8 v30, v25 offset:976
	ds_load_u8 v31, v25 offset:992
	ds_load_u8 v32, v25 offset:960
	ds_load_u8 v35, v25 offset:912
	ds_load_u8 v37, v25 offset:944
	ds_load_u8 v38, v25 offset:928
	ds_load_u8 v39, v25 offset:896
	ds_load_u8 v25, v25 offset:880
	ds_load_u8 v40, v26 offset:7808
	ds_load_u8 v41, v26 offset:8064
	ds_load_u8 v42, v26 offset:7936
	ds_load_u8 v43, v26 offset:7680
	ds_load_u8 v45, v26 offset:7296
	ds_load_u8 v46, v26 offset:7552
	ds_load_u8 v47, v26 offset:7424
	ds_load_u8 v49, v26 offset:7168
	ds_load_u8 v50, v26 offset:6784
	ds_load_u8 v51, v26 offset:7040
	ds_load_u8 v52, v26 offset:6912
	ds_load_u8 v53, v26 offset:6656
	ds_load_u8 v54, v26 offset:6272
	ds_load_u8 v55, v26 offset:6528
	ds_load_u8 v56, v26 offset:6400
	ds_load_u8 v26, v26 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v30, v32, v30, 0xc0c0004
	v_perm_b32 v31, v31, v48, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v32, v39, v35, 0xc0c0004
	v_perm_b32 v35, v38, v37, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v25, v61, v25, 0xc0c0004
	v_perm_b32 v37, v62, v44, 0xc0c0004
	v_lshl_or_b32 v4, v31, 16, v30
	v_lshl_or_b32 v3, v35, 16, v32
	v_perm_b32 v1, v34, v36, 0xc0c0004
	v_perm_b32 v13, v33, v63, 0xc0c0004
	v_lshl_or_b32 v2, v25, 16, v37
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v43, v40, 0xc0c0004
	v_perm_b32 v15, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v25, v49, v45, 0xc0c0004
	v_perm_b32 v30, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v31, v53, v50, 0xc0c0004
	v_perm_b32 v32, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v54, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	v_lshl_or_b32 v16, v15, 16, v14
	v_lshl_or_b32 v15, v30, 16, v25
	v_lshl_or_b32 v14, v32, 16, v31
	v_lshl_or_b32 v13, v33, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v9, v11
	v_cvt_f32_i32_e32 v10, v12
.LBB0_12:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s21, v29
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v1, v1, v28, s20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v18, v4 :: v_dual_lshlrev_b32 v11, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s12, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v17, v3 :: v_dual_add_f32 v6, v20, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v8, v24, v8 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	v_or_b32_e32 v13, 4, v1
	buffer_load_u16 v12, v1, s[12:15], 0 offen
	v_or_b32_e32 v14, 8, v1
	v_or_b32_e32 v15, 12, v1
	v_or_b32_e32 v16, 16, v1
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	v_or_b32_e32 v25, 20, v1
	v_or_b32_e32 v26, 24, v1
	v_or_b32_e32 v1, 28, v1
	s_clause 0x5
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v29, 0x5410
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v18, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v9, v21, v9 :: v_dual_mov_b32 v30, 0x7632
	v_dual_add_f32 v7, v23, v7 :: v_dual_add_f32 v10, v22, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v17, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v9, v21, v9, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v19, v5 :: v_dual_and_b32 v0, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v22, v10, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v24, v8, s2
	v_cndmask_b32_e64 v7, v23, v7, s2
	v_cndmask_b32_e64 v5, v19, v5, s2
	v_cndmask_b32_e64 v6, v20, v6, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v28.h
	v_mov_b16_e32 v18.h, v28.h
	v_mov_b16_e32 v19.h, v28.h
	v_mov_b16_e32 v20.h, v28.h
	s_mov_b32 s7, 0x76543210
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v13, v11, v13 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v4, v13
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v12, v11, v12 :: v_dual_lshlrev_b32 v15, 16, v15
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v14, v11, v14 :: v_dual_lshlrev_b32 v21, 16, v25
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v3, v3, v12 :: v_dual_lshlrev_b32 v22, 16, v26
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v12, v11, v15
	v_dual_mul_f32 v15, v11, v21 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v3.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v7, v14
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v16, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v8, v8, v12 :: v_dual_mul_f32 v1, v11, v1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v5, v16
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v11, v11, v22 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v1, v10, v1 :: v_dual_and_b32 v10, 1, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v19.l, v5.h
	v_cmp_o_f32_e64 s0, v4, v4
	v_mov_b16_e32 v28.l, v8.h
	v_add3_u32 v3, v3, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v4, v4, v12, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v9, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v7.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v19
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s0
	v_cmp_o_f32_e64 s3, v6, v6
	v_and_b32_e32 v10, 1, v18
	v_cmp_o_f32_e64 s1, v8, v8
	v_add3_u32 v5, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v7, v7
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v0, v7, v10, 0x7fff
	v_cndmask_b32_e32 v7, 0x1054, v29, vcc_lo
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s4
	v_and_b32_e32 v11, 1, v28
	v_mov_b16_e32 v28.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v7, v7, 8, v7
	v_and_b32_e32 v14, 1, v28
	v_mov_b16_e32 v20.l, v9.h
	v_cmp_o_f32_e64 s6, v9, v9
	v_mov_b16_e32 v28.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v14, 0x7fff
	v_and_b32_e32 v12, 1, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s3
	v_add3_u32 v9, v9, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v4, v3, vcc_lo
	v_add3_u32 v5, v8, v11, 0x7fff
	v_cndmask_b32_e32 v8, 0x3276, v30, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s6
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v9, v2, s11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s1
	v_and_b32_e32 v10, 1, v28
	v_lshl_or_b32 v8, v8, 8, v8
	s_mov_b32 s11, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v10, 0x7fff
	v_and_b32_e32 v8, 0x760076, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_cndmask_b32_e32 v1, v3, v4, vcc_lo
	v_lshl_or_b32 v3, v8, 4, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v4, v5, v0, vcc_lo
	v_lshl_or_b32 v2, v7, 4, v7
	v_cndmask_b32_e32 v5, v0, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 0x7060706, v3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_and_or_b32 v7, 0x78, v27, s20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v4, v4, s7, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v6, v2
	v_perm_b32 v1, v1, v6, v3
	v_perm_b32 v2, v4, v5, v2
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v7, v9, 1
	buffer_store_b128 v[0:3], v4, s[8:11], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 168
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9400
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
