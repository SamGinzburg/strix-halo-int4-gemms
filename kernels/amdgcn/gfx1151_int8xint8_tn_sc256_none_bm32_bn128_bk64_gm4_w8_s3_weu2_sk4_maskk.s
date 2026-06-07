	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s45, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v39, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v40, 3, v0
	v_lshrrev_b32_e32 v41, 2, v0
	v_or_b32_e32 v45, 0x3f0, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 24, v11
	v_or_b32_e32 v46, 0x7f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v42, 32, v40
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v38, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s34, 31
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
	v_mul_lo_u32 v3, s34, v41
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
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s6
	s_sub_i32 s18, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v39
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[9:10], null, s35, v40, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v44, s35, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s17, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s17, s17, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s4, s6
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s18, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s45, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s6, v41
	v_or_b32_e32 v4, s6, v40
	v_or_b32_e32 v5, s6, v42
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s18, s4
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s42, s3, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s35, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0xff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s45, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s45, v4
	v_cmp_gt_i32_e64 s4, s45, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s33, s19
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v10, v3, v2, s42
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s16, v9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s18, 0x1ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s5, s34, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s43, s6, 0x100
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s16, v44
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s5, v10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s43, v41
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s35, 8
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s43, v40
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s43, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s4, s34, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s16, v9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s45, v4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s5, s4, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s45, v5
	v_cmp_gt_i32_e64 s5, s45, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s16, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[14:17], v1, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v2, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v8, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[30:31], v3, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v12, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[32:33], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[22:25], v2, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v3, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v2, 4, v0
	s_mov_b32 s16, 0
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0x2ff
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v43, 0x70, v1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, 0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v2, 1, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, v1, v11
	s_waitcnt vmcnt(4)
	ds_store_b128 v34, v[18:21] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v1, v[30:31] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v34, v[14:17]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v2
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v12, 6, v2
	v_or_b32_e32 v13, 8, v2
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v1, v[32:33] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v34, v[22:25] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v34, v[26:29] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v48, 0x7f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr48
.LBB0_3:                                ; %Flow113
	s_load_b64 s[40:41], s[0:1], 0x20
	v_or_b32_e32 v14, s42, v38
	v_or_b32_e32 v6, s42, v6
	s_ashr_i32 s44, s7, 8
	v_or_b32_e32 v35, s33, v2
	v_or_b32_e32 v34, s33, v7
	v_mul_lo_u32 v36, v14, s44
	v_mul_lo_u32 v37, v6, s44
	v_or_b32_e32 v33, s33, v8
	v_or_b32_e32 v31, s33, v12
	v_or_b32_e32 v29, s33, v13
	v_or_b32_e32 v32, s33, v3
	v_or_b32_e32 v30, s33, v4
	v_or_b32_e32 v28, s33, v5
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v20, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s15, s44, 3
	s_add_i32 s14, s43, 0x100
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_add_i32 s7, 0, 0x4000
	s_add_i32 s0, 0, 0x4800
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s15, s15, -3
	s_mov_b32 s46, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s19, s16
	s_mov_b32 s16, s1
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s17, 8
	s_mov_b32 s18, s7
	s_mov_b32 s7, s0
	s_mov_b32 s0, s6
	s_mov_b32 s6, s43
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s43, s14, s1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v53, s43, v41
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v47, s18, v38
	v_add_nc_u32_e32 v48, s18, v45
	v_add_nc_u32_e32 v49, s18, v46
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s43, s35
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v54, s43, v40
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[51:52], null, s43, s34, v[10:11]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s18, s18, s33
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v55, s43, v42
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v52, s18, v9
	v_add_nc_u32_e32 v56, s18, v44
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s0, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s45, v53
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s45, v54
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v36, s18, 1
	v_add_lshl_u32 v54, v37, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s45, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v35, s18, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v57, v34, s18, 1
	v_add_lshl_u32 v58, v33, s18, 1
	v_add_lshl_u32 v59, v31, s18, 1
	v_add_lshl_u32 v60, v29, s18, 1
	v_add_lshl_u32 v61, v32, s18, 1
	v_add_lshl_u32 v62, v30, s18, 1
	v_add_lshl_u32 v63, v28, s18, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[115:116], v51, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v168, v53, s[28:31], 0 offen
	buffer_load_u16 v169, v54, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v170, v55, s[36:39], 0 offen
	buffer_load_u16 v171, v57, s[36:39], 0 offen
	buffer_load_u16 v172, v58, s[36:39], 0 offen
	buffer_load_u16 v173, v59, s[36:39], 0 offen
	buffer_load_u16 v174, v60, s[36:39], 0 offen
	buffer_load_u16 v175, v61, s[36:39], 0 offen
	buffer_load_u16 v176, v62, s[36:39], 0 offen
	buffer_load_u16 v177, v63, s[36:39], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	s_clause 0x1
	buffer_load_b128 v[63:66], v52, s[24:27], 0 offen
	buffer_load_b128 v[67:70], v56, s[24:27], 0 offen
	v_add3_u32 v50, s19, v43, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v47 offset:288
	ds_load_u8 v71, v47 offset:256
	ds_load_u8 v72, v47 offset:352
	ds_load_u8 v73, v47 offset:320
	ds_load_u8 v74, v47 offset:96
	ds_load_u8 v75, v47 offset:64
	ds_load_u8 v76, v47
	ds_load_u8 v77, v47 offset:16
	ds_load_u8 v78, v47 offset:32
	ds_load_u8 v79, v47 offset:112
	ds_load_u8 v80, v47 offset:80
	ds_load_u8 v81, v47 offset:48
	ds_load_u8 v82, v50 offset:1664
	ds_load_u8 v83, v50 offset:1920
	ds_load_u8 v84, v50 offset:1792
	ds_load_u8 v85, v50 offset:1536
	ds_load_u8 v86, v50 offset:1152
	ds_load_u8 v87, v50 offset:1408
	ds_load_u8 v88, v50 offset:1280
	ds_load_u8 v89, v50 offset:1024
	ds_load_u8 v90, v50 offset:640
	ds_load_u8 v91, v50 offset:896
	ds_load_u8 v92, v50 offset:768
	ds_load_u8 v93, v50 offset:512
	ds_load_u8 v94, v50 offset:128
	ds_load_u8 v95, v50 offset:384
	ds_load_u8 v96, v50 offset:256
	ds_load_u8 v97, v50
	ds_load_u8 v98, v50 offset:3712
	ds_load_u8 v99, v50 offset:3968
	ds_load_u8 v100, v50 offset:3840
	ds_load_u8 v101, v50 offset:3584
	ds_load_u8 v102, v50 offset:3200
	ds_load_u8 v103, v50 offset:3456
	ds_load_u8 v104, v50 offset:3328
	ds_load_u8 v105, v50 offset:3072
	ds_load_u8 v106, v50 offset:2688
	ds_load_u8 v107, v50 offset:2944
	ds_load_u8 v108, v50 offset:2816
	ds_load_u8 v109, v50 offset:2560
	ds_load_u8 v110, v50 offset:2176
	ds_load_u8 v111, v50 offset:2432
	ds_load_u8 v112, v50 offset:2304
	ds_load_u8 v113, v50 offset:2048
	ds_load_u8 v114, v47 offset:928
	ds_load_u8 v117, v47 offset:896
	ds_load_u8 v118, v47 offset:992
	ds_load_u8 v119, v47 offset:960
	ds_load_u8 v120, v47 offset:1024
	ds_load_u8 v121, v50 offset:5760
	ds_load_u8 v122, v50 offset:6016
	ds_load_u8 v123, v50 offset:5888
	ds_load_u8 v124, v50 offset:5632
	ds_load_u8 v125, v50 offset:5248
	ds_load_u8 v126, v50 offset:5504
	ds_load_u8 v127, v50 offset:5376
	ds_load_u8 v128, v50 offset:5120
	ds_load_u8 v129, v50 offset:4736
	ds_load_u8 v130, v50 offset:4992
	ds_load_u8 v131, v50 offset:4864
	ds_load_u8 v132, v50 offset:4608
	ds_load_u8 v133, v50 offset:4224
	ds_load_u8 v134, v50 offset:4480
	ds_load_u8 v135, v50 offset:4352
	ds_load_u8 v136, v50 offset:4096
	ds_load_u8 v137, v47 offset:1792
	ds_load_u8 v138, v47 offset:1696
	ds_load_u8 v139, v47 offset:1760
	ds_load_u8 v140, v47 offset:1728
	ds_load_u8 v141, v47 offset:1664
	ds_load_u8 v142, v47 offset:1568
	ds_load_u8 v143, v47 offset:1632
	ds_load_u8 v144, v47 offset:1600
	ds_load_u8 v145, v50 offset:7808
	ds_load_u8 v146, v50 offset:8064
	ds_load_u8 v147, v50 offset:7936
	ds_load_u8 v148, v50 offset:7680
	ds_load_u8 v149, v50 offset:7296
	ds_load_u8 v150, v50 offset:7552
	ds_load_u8 v151, v50 offset:7424
	ds_load_u8 v152, v50 offset:7168
	ds_load_u8 v153, v50 offset:6784
	ds_load_u8 v154, v50 offset:7040
	ds_load_u8 v155, v50 offset:6912
	ds_load_u8 v156, v50 offset:6656
	ds_load_u8 v157, v50 offset:6272
	ds_load_u8 v158, v50 offset:6528
	ds_load_u8 v159, v50 offset:6400
	ds_load_u8 v50, v50 offset:6144
	ds_load_u8 v160, v47 offset:416
	ds_load_u8 v161, v47 offset:384
	ds_load_u8 v162, v47 offset:480
	ds_load_u8 v163, v47 offset:448
	ds_load_u8 v164, v47 offset:496
	ds_load_u8 v165, v47 offset:464
	ds_load_u8 v166, v47 offset:432
	ds_load_u8 v167, v47 offset:400
	ds_load_u8 v53, v47 offset:368
	ds_load_u8 v54, v47 offset:336
	ds_load_u8 v55, v47 offset:304
	ds_load_u8 v57, v47 offset:272
	ds_load_u8 v58, v47 offset:160
	ds_load_u8 v59, v47 offset:128
	ds_load_u8 v60, v47 offset:224
	ds_load_u8 v61, v47 offset:192
	ds_load_u8 v62, v47 offset:240
	ds_load_u8 v178, v47 offset:208
	ds_load_u8 v179, v47 offset:176
	ds_load_u8 v180, v47 offset:144
	ds_load_u8 v52, v47 offset:976
	ds_load_u8 v56, v47 offset:944
	ds_load_u8 v181, v47 offset:912
	ds_load_u8 v182, v47 offset:800
	ds_load_u8 v183, v47 offset:768
	ds_load_u8 v184, v47 offset:864
	ds_load_u8 v185, v47 offset:832
	ds_load_u8 v186, v47 offset:880
	ds_load_u8 v187, v47 offset:848
	ds_load_u8 v188, v47 offset:816
	ds_load_u8 v189, v47 offset:784
	ds_load_u8 v190, v47 offset:672
	ds_load_u8 v191, v47 offset:640
	ds_load_u8 v192, v47 offset:736
	ds_load_u8 v193, v47 offset:704
	ds_load_u8 v194, v47 offset:752
	ds_load_u8 v195, v47 offset:720
	ds_load_u8 v196, v47 offset:688
	ds_load_u8 v197, v47 offset:656
	ds_load_u8 v198, v47 offset:544
	ds_load_u8 v199, v47 offset:512
	ds_load_u8 v200, v47 offset:608
	ds_load_u8 v201, v47 offset:576
	ds_load_u8 v202, v47 offset:624
	ds_load_u8 v203, v47 offset:592
	ds_load_u8 v204, v47 offset:560
	ds_load_u8 v205, v47 offset:528
	ds_load_u8 v206, v47 offset:1440
	ds_load_u8 v207, v47 offset:1504
	ds_load_u8 v208, v47 offset:1472
	ds_load_u8 v209, v47 offset:1536
	ds_load_u8 v210, v47 offset:1520
	ds_load_u8 v211, v47 offset:1488
	ds_load_u8 v212, v47 offset:1456
	ds_load_u8 v213, v47 offset:1424
	ds_load_u8 v214, v47 offset:1408
	ds_load_u8 v215, v47 offset:1312
	ds_load_u8 v216, v47 offset:1376
	ds_load_u8 v217, v47 offset:1344
	ds_load_u8 v218, v47 offset:1392
	ds_load_u8 v219, v47 offset:1360
	ds_load_u8 v220, v47 offset:1328
	ds_load_u8 v221, v47 offset:1296
	ds_load_u8 v222, v47 offset:1280
	ds_load_u8 v223, v47 offset:1184
	ds_load_u8 v224, v47 offset:1248
	ds_load_u8 v225, v47 offset:1216
	ds_load_u8 v226, v47 offset:1264
	ds_load_u8 v227, v47 offset:1232
	ds_load_u8 v228, v47 offset:1200
	ds_load_u8 v229, v47 offset:1168
	ds_load_u8 v230, v47 offset:1152
	ds_load_u8 v231, v47 offset:1056
	ds_load_u8 v232, v47 offset:1120
	ds_load_u8 v233, v47 offset:1088
	ds_load_u8 v234, v47 offset:1136
	ds_load_u8 v235, v47 offset:1104
	ds_load_u8 v236, v47 offset:1072
	ds_load_u8 v237, v47 offset:1040
	ds_load_u8 v238, v47 offset:1952
	ds_load_u8 v239, v47 offset:2016
	ds_load_u8 v240, v47 offset:1984
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v241, v47 offset:2000
	ds_load_u8 v242, v47 offset:1968
	ds_load_u8 v243, v47 offset:1936
	ds_load_u8 v244, v47 offset:1920
	ds_load_u8 v245, v47 offset:1824
	ds_load_u8 v246, v47 offset:1888
	ds_load_u8 v247, v47 offset:1856
	ds_load_u8 v248, v47 offset:1904
	ds_load_u8 v249, v47 offset:1872
	ds_load_u8 v250, v47 offset:1840
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v51, v71, v51, 0xc0c0004
	ds_load_u8 v71, v47 offset:1744
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v47 offset:1712
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v47 offset:1616
	v_perm_b32 v76, v76, v78, 0xc0c0004
	v_perm_b32 v82, v85, v82, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v84, v89, v86, 0xc0c0004
	v_perm_b32 v85, v88, v87, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v47 offset:1808
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v47 offset:1776
	v_perm_b32 v59, v59, v58, 0xc0c0004
	ds_load_u8 v58, v47 offset:1680
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v47 offset:1648
	ds_load_u8 v78, v47 offset:1584
	ds_load_u8 v47, v47 offset:1552
	v_perm_b32 v86, v93, v90, 0xc0c0004
	v_perm_b32 v87, v92, v91, 0xc0c0004
	v_perm_b32 v88, v97, v94, 0xc0c0004
	v_perm_b32 v89, v96, v95, 0xc0c0004
	v_perm_b32 v90, v117, v114, 0xc0c0004
	v_perm_b32 v91, v119, v118, 0xc0c0004
	v_perm_b32 v92, v183, v182, 0xc0c0004
	v_perm_b32 v93, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v94, v191, v190, 0xc0c0004
	v_perm_b32 v95, v193, v192, 0xc0c0004
	v_perm_b32 v96, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v97, v201, v200, 0xc0c0004
	v_perm_b32 v98, v101, v98, 0xc0c0004
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v100, v105, v102, 0xc0c0004
	v_perm_b32 v101, v104, v103, 0xc0c0004
	v_perm_b32 v102, v109, v106, 0xc0c0004
	v_perm_b32 v103, v108, v107, 0xc0c0004
	v_perm_b32 v104, v113, v110, 0xc0c0004
	v_perm_b32 v105, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v106, v214, v206, 0xc0c0004
	v_perm_b32 v107, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v110, v230, v223, 0xc0c0004
	v_perm_b32 v111, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v112, v120, v231, 0xc0c0004
	v_perm_b32 v114, v124, v121, 0xc0c0004
	v_perm_b32 v117, v123, v122, 0xc0c0004
	v_perm_b32 v118, v128, v125, 0xc0c0004
	v_perm_b32 v120, v132, v129, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	v_perm_b32 v128, v141, v138, 0xc0c0004
	v_perm_b32 v129, v140, v139, 0xc0c0004
	v_perm_b32 v130, v209, v142, 0xc0c0004
	v_perm_b32 v131, v144, v143, 0xc0c0004
	v_perm_b32 v132, v148, v145, 0xc0c0004
	v_perm_b32 v50, v50, v157, 0xc0c0004
	v_perm_b32 v138, v159, v158, 0xc0c0004
	v_perm_b32 v139, v167, v166, 0xc0c0004
	v_perm_b32 v140, v165, v164, 0xc0c0004
	v_perm_b32 v141, v57, v55, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v54, v180, v179, 0xc0c0004
	v_perm_b32 v62, v178, v62, 0xc0c0004
	v_perm_b32 v142, v80, v79, 0xc0c0004
	v_perm_b32 v143, v77, v81, 0xc0c0004
	v_perm_b32 v144, v181, v56, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v48, v52, v48, 0xc0c0004
	v_perm_b32 v52, v189, v188, 0xc0c0004
	v_perm_b32 v145, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v158, v243, v242, 0xc0c0004
	v_perm_b32 v49, v241, v49, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v164, v58, v73, 0xc0c0004
	v_perm_b32 v163, v71, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v78, 0xc0c0004
	v_perm_b32 v61, v75, v61, 0xc0c0004
	v_lshl_or_b32 v58, v162, 16, v160
	v_lshl_or_b32 v57, v72, 16, v51
	v_lshl_or_b32 v56, v60, 16, v59
	v_lshl_or_b32 v55, v74, 16, v76
	v_lshl_or_b32 v74, v83, 16, v82
	v_lshl_or_b32 v73, v85, 16, v84
	v_lshl_or_b32 v72, v87, 16, v86
	v_lshl_or_b32 v71, v89, 16, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s18, s46, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v108, v222, v215, 0xc0c0004
	v_perm_b32 v109, v217, v216, 0xc0c0004
	v_perm_b32 v113, v233, v232, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v122, v136, v133, 0xc0c0004
	v_perm_b32 v123, v135, v134, 0xc0c0004
	v_perm_b32 v133, v147, v146, 0xc0c0004
	v_perm_b32 v134, v152, v149, 0xc0c0004
	v_perm_b32 v146, v197, v196, 0xc0c0004
	v_perm_b32 v147, v195, v194, 0xc0c0004
	v_perm_b32 v148, v205, v204, 0xc0c0004
	v_perm_b32 v149, v203, v202, 0xc0c0004
	v_lshl_or_b32 v78, v91, 16, v90
	v_lshl_or_b32 v77, v93, 16, v92
	v_lshl_or_b32 v76, v95, 16, v94
	v_lshl_or_b32 v75, v97, 16, v96
	v_lshl_or_b32 v82, v99, 16, v98
	v_lshl_or_b32 v81, v101, 16, v100
	v_lshl_or_b32 v80, v103, 16, v102
	v_lshl_or_b32 v79, v105, 16, v104
	v_lshl_or_b32 v86, v107, 16, v106
	v_lshl_or_b32 v84, v111, 16, v110
	v_lshl_or_b32 v90, v117, 16, v114
	v_lshl_or_b32 v95, v138, 16, v50
	v_lshl_or_b32 v102, v140, 16, v139
	v_lshl_or_b32 v101, v53, 16, v141
	v_lshl_or_b32 v100, v62, 16, v54
	v_lshl_or_b32 v99, v142, 16, v143
	v_lshl_or_b32 v106, v48, 16, v144
	v_lshl_or_b32 v105, v145, 16, v52
	v_lshl_or_b32 v114, v49, 16, v158
	v_lshl_or_b32 v111, v61, 16, v47
	v_wmma_i32_16x16x16_iu8 v[47:54], v[71:74], v[55:58], v[1:8] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s18, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v124, v244, v238, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s46, s18, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v125, v240, v239, 0xc0c0004
	v_perm_b32 v126, v137, v245, 0xc0c0004
	v_perm_b32 v127, v247, v246, 0xc0c0004
	v_perm_b32 v135, v151, v150, 0xc0c0004
	v_perm_b32 v136, v156, v153, 0xc0c0004
	v_perm_b32 v137, v155, v154, 0xc0c0004
	v_perm_b32 v150, v213, v212, 0xc0c0004
	v_perm_b32 v151, v211, v210, 0xc0c0004
	v_perm_b32 v152, v221, v220, 0xc0c0004
	v_perm_b32 v153, v219, v218, 0xc0c0004
	v_perm_b32 v154, v229, v228, 0xc0c0004
	v_perm_b32 v155, v227, v226, 0xc0c0004
	v_perm_b32 v156, v237, v236, 0xc0c0004
	v_perm_b32 v157, v235, v234, 0xc0c0004
	v_lshl_or_b32 v85, v109, 16, v108
	v_lshl_or_b32 v83, v113, 16, v112
	v_lshl_or_b32 v89, v119, 16, v118
	v_lshl_or_b32 v88, v121, 16, v120
	v_lshl_or_b32 v87, v123, 16, v122
	v_lshl_or_b32 v104, v147, 16, v146
	v_lshl_or_b32 v103, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[79:82], v[75:78], v[47:54] neg_lo:[1,1,0]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s46, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v159, v161, v250, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s19, s0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v161, v249, v248, 0xc0c0004
	v_lshl_or_b32 v94, v125, 16, v124
	v_lshl_or_b32 v93, v127, 16, v126
	v_lshl_or_b32 v92, v129, 16, v128
	v_lshl_or_b32 v91, v131, 16, v130
	v_lshl_or_b32 v98, v133, 16, v132
	v_lshl_or_b32 v97, v135, 16, v134
	v_lshl_or_b32 v96, v137, 16, v136
	v_lshl_or_b32 v110, v151, 16, v150
	v_lshl_or_b32 v109, v153, 16, v152
	v_lshl_or_b32 v108, v155, 16, v154
	v_lshl_or_b32 v107, v157, 16, v156
	v_wmma_i32_16x16x16_iu8 v[55:62], v[79:82], v[103:106], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[87:90], v[83:86], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v161, 16, v159
	v_lshl_or_b32 v112, v163, 16, v164
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s1, s46, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[87:90], v[107:110], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[95:98], v[91:94], v[47:54] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s18, s17, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s0, s19, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[95:98], v[111:114], v[55:62] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s18
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v72, 16, v169
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v74, 16, v171
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v71, 16, v168
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v251, s19, v11
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v76, 16, v173
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v80, 16, v177
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v71, v74
	v_mul_f32_e32 v74, v72, v74
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v78, 16, v175
	v_lshlrev_b32_e32 v75, 16, v172
	v_lshlrev_b32_e32 v79, 16, v176
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v71, v76
	v_mul_f32_e32 v76, v72, v76
	v_mul_f32_e32 v86, v71, v78
	v_mul_f32_e32 v83, v71, v75
	v_mul_f32_e32 v75, v72, v75
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v73, 16, v170
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v87, v71, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v13, v82, v48 :: v_dual_fmac_f32 v14, v83, v49
	v_dual_fmac_f32 v17, v86, v52 :: v_dual_fmac_f32 v24, v76, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v81, v71, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v18, v87, v53 :: v_dual_lshlrev_b32 v77, 16, v174
	v_dual_fmac_f32 v22, v74, v56 :: v_dual_fmac_f32 v23, v75, v57
	v_fmac_f32_e32 v12, v81, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v85, v71, v77 :: v_dual_add_nc_u32 v252, s1, v39
	v_mul_f32_e32 v71, v71, v80
	v_mul_f32_e32 v73, v72, v73
	v_mul_f32_e32 v77, v72, v77
	v_mul_f32_e32 v78, v72, v78
	v_mul_f32_e32 v79, v72, v79
	v_mul_f32_e32 v72, v72, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v15, v84, v50 :: v_dual_fmac_f32 v16, v85, v51
	v_fmac_f32_e32 v19, v71, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v21, v73, v55 :: v_dual_fmac_f32 v20, v72, v62
	v_dual_fmac_f32 v25, v77, v59 :: v_dual_fmac_f32 v26, v78, v60
	v_fmac_f32_e32 v27, v79, v61
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v251, v[115:116] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v252, v[63:66]
	s_waitcnt vmcnt(0)
	ds_store_b128 v252, v[67:70] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v45 :: v_dual_mov_b32 v48, v46
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s7, 0, 0x4000
	s_add_i32 s0, 0, 0x4800
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v58, v43, v38
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v46, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s16, v58
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s7, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v2 offset:416
	ds_load_u8 v6, v2 offset:384
	ds_load_u8 v7, v2 offset:480
	ds_load_u8 v8, v2 offset:448
	ds_load_u8 v9, v2 offset:288
	ds_load_u8 v10, v2 offset:256
	ds_load_u8 v39, v2 offset:352
	ds_load_u8 v40, v2 offset:320
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v41, s7, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v87, v2 offset:16
	ds_load_u8 v88, v41
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v40, v39, 0xc0c0004
	ds_load_u8 v10, v2 offset:160
	ds_load_u8 v39, v2 offset:128
	ds_load_u8 v40, v2 offset:224
	ds_load_u8 v42, v2 offset:192
	v_lshl_or_b32 v8, v6, 16, v5
	v_lshl_or_b32 v7, v9, 16, v7
	ds_load_u8 v5, v2 offset:96
	ds_load_u8 v6, v2 offset:64
	ds_load_u8 v9, v2
	ds_load_u8 v43, v2 offset:32
	ds_load_u8 v44, v4 offset:1664
	ds_load_u8 v45, v4 offset:1920
	ds_load_u8 v46, v4 offset:1792
	ds_load_u8 v47, v4 offset:1536
	ds_load_u8 v49, v4 offset:1152
	ds_load_u8 v50, v4 offset:1408
	ds_load_u8 v51, v4 offset:1280
	ds_load_u8 v52, v4 offset:1024
	ds_load_u8 v53, v4 offset:640
	ds_load_u8 v54, v4 offset:896
	ds_load_u8 v55, v4 offset:768
	ds_load_u8 v56, v4 offset:512
	ds_load_u8 v59, v4 offset:128
	ds_load_u8 v63, v4 offset:384
	ds_load_u8 v64, v4 offset:256
	ds_load_u8 v65, v4
	ds_load_u8 v81, v2 offset:208
	ds_load_u8 v82, v2 offset:176
	ds_load_u8 v83, v2 offset:144
	ds_load_u8 v84, v2 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v9, v9, v43, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v43, v51, v50, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v9
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v55, v54, 0xc0c0004
	v_perm_b32 v10, v39, v10, 0xc0c0004
	v_perm_b32 v39, v42, v40, 0xc0c0004
	v_perm_b32 v40, v47, v44, 0xc0c0004
	v_perm_b32 v42, v52, v49, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v44, v56, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v65, v59, 0xc0c0004
	v_lshl_or_b32 v6, v39, 16, v10
	v_lshl_or_b32 v62, v41, 16, v40
	v_perm_b32 v40, v64, v63, 0xc0c0004
	v_lshl_or_b32 v61, v43, 16, v42
	v_lshl_or_b32 v60, v45, 16, v44
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v59, v40, 16, v9
	v_mov_b32_e32 v47, s23
	ds_load_u8 v10, v2 offset:928
	ds_load_u8 v39, v2 offset:896
	ds_load_u8 v49, v2 offset:992
	ds_load_u8 v50, v2 offset:960
	v_dual_mov_b32 v46, s22 :: v_dual_mov_b32 v45, s21
	v_dual_mov_b32 v44, s20 :: v_dual_mov_b32 v43, s19
	v_dual_mov_b32 v42, s18 :: v_dual_mov_b32 v41, s17
	v_mov_b32_e32 v40, s16
	ds_load_u8 v9, v2 offset:800
	ds_load_u8 v63, v2 offset:768
	ds_load_u8 v64, v2 offset:864
	ds_load_u8 v65, v2 offset:832
	ds_load_u8 v89, v2 offset:976
	ds_load_u8 v90, v2 offset:944
	ds_load_u8 v91, v2 offset:912
	ds_load_u8 v92, v2 offset:880
	ds_load_u8 v57, v2 offset:464
	ds_load_u8 v71, v2 offset:432
	ds_load_u8 v75, v2 offset:400
	ds_load_u8 v76, v2 offset:368
	ds_load_u8 v77, v2 offset:336
	ds_load_u8 v78, v2 offset:304
	ds_load_u8 v79, v2 offset:272
	ds_load_u8 v80, v2 offset:240
	ds_load_u8 v85, v2 offset:80
	ds_load_u8 v86, v2 offset:48
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v10, v39, v10, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v39, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[59:62], v[5:8], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v63, v9, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_lshl_or_b32 v8, v39, 16, v10
	ds_load_u8 v5, v2 offset:672
	ds_load_u8 v6, v2 offset:640
	ds_load_u8 v7, v2 offset:736
	ds_load_u8 v10, v2 offset:704
	ds_load_u8 v39, v2 offset:848
	ds_load_u8 v93, v2 offset:816
	ds_load_u8 v94, v2 offset:784
	ds_load_u8 v95, v2 offset:752
	ds_load_u8 v64, v2 offset:544
	ds_load_u8 v65, v2 offset:512
	ds_load_u8 v66, v2 offset:608
	ds_load_u8 v67, v2 offset:576
	ds_load_u8 v68, v4 offset:3712
	ds_load_u8 v69, v4 offset:3968
	ds_load_u8 v70, v4 offset:3840
	ds_load_u8 v72, v4 offset:3584
	ds_load_u8 v73, v4 offset:3200
	ds_load_u8 v74, v4 offset:3456
	ds_load_u8 v96, v4 offset:3328
	ds_load_u8 v97, v4 offset:3072
	ds_load_u8 v98, v2 offset:720
	ds_load_u8 v99, v2 offset:688
	ds_load_u8 v100, v2 offset:656
	ds_load_u8 v101, v2 offset:624
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v75, v75, v71, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v79, v79, v78, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v83, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v67, v66, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v79
	v_lshl_or_b32 v76, v80, 16, v82
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v72, v68, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v10, v7, 0xc0c0004
	ds_load_u8 v10, v4 offset:2688
	ds_load_u8 v102, v4 offset:2944
	ds_load_u8 v103, v4 offset:2816
	ds_load_u8 v104, v4 offset:2560
	ds_load_u8 v105, v4 offset:2176
	ds_load_u8 v106, v4 offset:2432
	ds_load_u8 v107, v4 offset:2304
	ds_load_u8 v108, v4 offset:2048
	ds_load_u8 v109, v2 offset:592
	ds_load_u8 v110, v2 offset:560
	ds_load_u8 v111, v2 offset:528
	ds_load_u8 v112, v2 offset:496
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v68, v97, v73, 0xc0c0004
	v_perm_b32 v69, v96, v74, 0xc0c0004
	v_lshl_or_b32 v7, v63, 16, v9
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v65, 16, v64
	v_lshl_or_b32 v66, v67, 16, v66
	v_lshl_or_b32 v65, v69, 16, v68
	ds_load_u8 v67, v2 offset:1440
	ds_load_u8 v68, v2 offset:1408
	ds_load_u8 v69, v2 offset:1504
	ds_load_u8 v70, v2 offset:1472
	ds_load_u8 v73, v2 offset:1312
	ds_load_u8 v74, v2 offset:1280
	ds_load_u8 v96, v2 offset:1376
	ds_load_u8 v97, v2 offset:1344
	v_perm_b32 v79, v94, v93, 0xc0c0004
	v_perm_b32 v39, v39, v92, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v104, v10, 0xc0c0004
	v_perm_b32 v10, v103, v102, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v103, s7, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v72, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v108, v105, 0xc0c0004
	ds_load_u8 v104, v2 offset:1520
	ds_load_u8 v105, v2 offset:1488
	ds_load_u8 v106, v2 offset:1456
	ds_load_u8 v107, v2 offset:1424
	v_lshl_or_b32 v64, v10, 16, v9
	ds_load_u8 v108, v2 offset:1392
	ds_load_u8 v113, v2 offset:1360
	ds_load_u8 v114, v2 offset:1328
	ds_load_u8 v115, v2 offset:1296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v57, v112, 0xc0c0004
	v_lshl_or_b32 v63, v72, 16, v63
	ds_load_u8 v9, v2 offset:1184
	ds_load_u8 v10, v2 offset:1152
	ds_load_u8 v72, v2 offset:1248
	ds_load_u8 v102, v2 offset:1216
	v_perm_b32 v80, v100, v99, 0xc0c0004
	v_perm_b32 v82, v111, v110, 0xc0c0004
	v_lshl_or_b32 v78, v57, 16, v75
	v_wmma_i32_16x16x16_iu8 v[49:56], v[63:66], v[5:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v97, v96, 0xc0c0004
	ds_load_u8 v96, v2 offset:1264
	ds_load_u8 v97, v2 offset:1232
	ds_load_u8 v116, v2 offset:1200
	ds_load_u8 v117, v2 offset:1168
	v_lshl_or_b32 v75, v81, 16, v83
	v_lshl_or_b32 v8, v6, 16, v5
	v_perm_b32 v57, v91, v90, 0xc0c0004
	v_lshl_or_b32 v7, v67, 16, v7
	v_perm_b32 v81, v98, v95, 0xc0c0004
	v_perm_b32 v83, v109, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[59:62], v[75:78], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v39, 16, v79
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v60, v81, 16, v80
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v102, v72, 0xc0c0004
	ds_load_u8 v68, v2 offset:1056
	ds_load_u8 v69, v2 offset:1024
	ds_load_u8 v70, v2 offset:1120
	ds_load_u8 v72, v2 offset:1088
	ds_load_u8 v73, v4 offset:5760
	ds_load_u8 v74, v4 offset:6016
	ds_load_u8 v102, v4 offset:5888
	ds_load_u8 v118, v4 offset:5632
	ds_load_u8 v119, v4 offset:5248
	ds_load_u8 v120, v4 offset:5504
	ds_load_u8 v121, v4 offset:5376
	ds_load_u8 v122, v4 offset:5120
	v_lshl_or_b32 v59, v83, 16, v82
	v_perm_b32 v39, v105, v104, 0xc0c0004
	v_perm_b32 v75, v113, v108, 0xc0c0004
	v_lshl_or_b32 v6, v10, 16, v9
	ds_load_u8 v5, v4 offset:4736
	ds_load_u8 v9, v4 offset:4864
	ds_load_u8 v10, v4 offset:4608
	ds_load_u8 v67, v4 offset:4992
	ds_load_u8 v123, v4 offset:4224
	ds_load_u8 v124, v4 offset:4480
	ds_load_u8 v125, v4 offset:4352
	ds_load_u8 v126, v4 offset:4096
	ds_load_u8 v127, v2 offset:1136
	ds_load_u8 v128, v2 offset:1104
	ds_load_u8 v129, v2 offset:1072
	ds_load_u8 v130, v2 offset:1040
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v77, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v76, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v69, v72, v70, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v72, v102, v74, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v118, v73, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v10, v10, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v9, v67, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v73, v122, v119, 0xc0c0004
	ds_load_u8 v74, v2 offset:1952
	ds_load_u8 v102, v2 offset:1920
	ds_load_u8 v118, v2 offset:2016
	ds_load_u8 v119, v2 offset:1984
	ds_load_u8 v121, v2 offset:1824
	ds_load_u8 v122, v2 offset:1792
	ds_load_u8 v131, v2 offset:1888
	ds_load_u8 v132, v2 offset:1856
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v126, v123, 0xc0c0004
	v_perm_b32 v123, v125, v124, 0xc0c0004
	v_lshl_or_b32 v5, v69, 16, v68
	v_lshl_or_b32 v69, v120, 16, v73
	v_lshl_or_b32 v68, v9, 16, v10
	ds_load_u8 v9, v103
	ds_load_u8 v10, v2 offset:2000
	ds_load_u8 v103, v2 offset:1968
	ds_load_u8 v120, v2 offset:1936
	v_lshl_or_b32 v70, v72, 16, v70
	v_lshl_or_b32 v67, v123, 16, v67
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v78, v130, v129, 0xc0c0004
	v_perm_b32 v79, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[67:70], v[5:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v72, v102, v74, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v122, v121, 0xc0c0004
	v_perm_b32 v73, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v132, v131, 0xc0c0004
	ds_load_u8 v102, v2 offset:1904
	ds_load_u8 v118, v2 offset:1872
	ds_load_u8 v119, v2 offset:1840
	ds_load_u8 v123, v2 offset:1808
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v89, v9, 0xc0c0004
	v_lshl_or_b32 v7, v73, 16, v72
	v_lshl_or_b32 v6, v121, 16, v74
	ds_load_u8 v5, v2 offset:1696
	ds_load_u8 v8, v2 offset:1664
	ds_load_u8 v72, v2 offset:1760
	ds_load_u8 v73, v2 offset:1728
	ds_load_u8 v74, v2 offset:1568
	ds_load_u8 v121, v2 offset:1536
	ds_load_u8 v122, v2 offset:1632
	ds_load_u8 v124, v2 offset:1600
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
	ds_load_u8 v145, v2 offset:1776
	ds_load_u8 v146, v2 offset:1744
	ds_load_u8 v147, v2 offset:1712
	ds_load_u8 v148, v2 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v4, v8, v5, 0xc0c0004
	ds_load_u8 v8, v2 offset:1648
	ds_load_u8 v149, v2 offset:1616
	ds_load_u8 v150, v2 offset:1584
	ds_load_u8 v2, v2 offset:1552
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v5, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v72, v121, v74, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v73, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v74, v132, v125, 0xc0c0004
	v_perm_b32 v121, v131, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v122, v136, v133, 0xc0c0004
	v_perm_b32 v124, v135, v134, 0xc0c0004
	v_lshl_or_b32 v62, v9, 16, v57
	v_perm_b32 v9, v107, v106, 0xc0c0004
	v_perm_b32 v57, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v140, v137, 0xc0c0004
	v_perm_b32 v126, v139, v138, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v73, 16, v72
	v_lshl_or_b32 v74, v121, 16, v74
	v_lshl_or_b32 v73, v124, 16, v122
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v121, v144, v141, 0xc0c0004
	v_perm_b32 v122, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[63:66], v[59:62], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v39, 16, v9
	v_lshl_or_b32 v61, v75, 16, v57
	v_lshl_or_b32 v60, v77, 16, v76
	v_lshl_or_b32 v59, v79, 16, v78
	v_perm_b32 v9, v120, v103, 0xc0c0004
	v_perm_b32 v10, v10, v88, 0xc0c0004
	v_perm_b32 v39, v123, v119, 0xc0c0004
	v_perm_b32 v57, v118, v102, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v148, v147, 0xc0c0004
	v_perm_b32 v64, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v150, 0xc0c0004
	v_perm_b32 v8, v149, v8, 0xc0c0004
	v_lshl_or_b32 v72, v126, 16, v125
	v_lshl_or_b32 v71, v122, 16, v121
	v_wmma_i32_16x16x16_iu8 v[40:47], v[67:70], v[59:62], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v10, 16, v9
	v_lshl_or_b32 v61, v57, 16, v39
	v_lshl_or_b32 v60, v64, 16, v63
	v_lshl_or_b32 v59, v8, 16, v2
	v_wmma_i32_16x16x16_iu8 v[49:56], v[71:74], v[4:7], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[71:74], v[59:62], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v51
	v_cvt_f32_i32_e32 v6, v52
	v_cvt_f32_i32_e32 v7, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v39, v56
	v_cvt_f32_i32_e32 v2, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v8, v49
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s7, s7, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s6, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s6, 8
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s6, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v47, v36, s6, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v50, v35, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v49, v37, s6, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v34, s8, 1
	v_add_lshl_u32 v52, v33, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v31, s8, 1
	v_add_lshl_u32 v54, v29, s8, 1
	v_add_lshl_u32 v55, v32, s8, 1
	v_add_lshl_u32 v56, v30, s8, 1
	v_add_lshl_u32 v57, v28, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_mov_b32 v60, 0
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_mov_b32 v62, 0
	s_clause 0x7
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v47, v47, s[12:15], 0 offen
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s16, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s0, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v3, s0, v38
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
	v_add_nc_u32_e32 v38, s1, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v48, s0, v48
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
	ds_load_u8 v66, v38 offset:1664
	ds_load_u8 v67, v38 offset:1920
	ds_load_u8 v68, v38 offset:1792
	ds_load_u8 v69, v38 offset:1536
	ds_load_u8 v70, v38 offset:1152
	ds_load_u8 v71, v38 offset:1408
	ds_load_u8 v72, v38 offset:1280
	ds_load_u8 v73, v38 offset:1024
	ds_load_u8 v74, v38 offset:640
	ds_load_u8 v75, v38 offset:896
	ds_load_u8 v78, v38 offset:768
	ds_load_u8 v79, v38 offset:512
	ds_load_u8 v82, v38 offset:128
	ds_load_u8 v83, v38 offset:384
	ds_load_u8 v84, v38 offset:256
	ds_load_u8 v85, v38
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
	v_mov_b32_e32 v73, s23
	v_lshl_or_b32 v75, v63, 16, v62
	v_mov_b32_e32 v72, s22
	ds_load_u8 v59, v3 offset:928
	ds_load_u8 v60, v3 offset:896
	ds_load_u8 v61, v3 offset:992
	ds_load_u8 v62, v3 offset:960
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v85, v82, 0xc0c0004
	v_perm_b32 v63, v84, v83, 0xc0c0004
	v_lshl_or_b32 v80, v65, 16, v64
	v_dual_mov_b32 v71, s21 :: v_dual_mov_b32 v70, s20
	v_mov_b32_e32 v69, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v78, v63, 16, v58
	v_dual_mov_b32 v68, s18 :: v_dual_mov_b32 v67, s17
	v_mov_b32_e32 v66, s16
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
	ds_load_u8 v48, v48
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
	ds_load_u8 v89, v38 offset:3712
	ds_load_u8 v91, v38 offset:3968
	ds_load_u8 v92, v38 offset:3840
	ds_load_u8 v93, v38 offset:3584
	ds_load_u8 v116, v38 offset:3200
	ds_load_u8 v117, v38 offset:3456
	ds_load_u8 v118, v38 offset:3328
	ds_load_u8 v119, v38 offset:3072
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
	ds_load_u8 v86, v38 offset:2688
	ds_load_u8 v124, v38 offset:2944
	ds_load_u8 v125, v38 offset:2816
	ds_load_u8 v126, v38 offset:2560
	ds_load_u8 v127, v38 offset:2176
	ds_load_u8 v128, v38 offset:2432
	ds_load_u8 v129, v38 offset:2304
	ds_load_u8 v130, v38 offset:2048
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
	ds_load_u8 v119, v38 offset:5760
	ds_load_u8 v124, v38 offset:6016
	ds_load_u8 v138, v38 offset:5888
	ds_load_u8 v139, v38 offset:5632
	ds_load_u8 v140, v38 offset:5248
	ds_load_u8 v141, v38 offset:5504
	ds_load_u8 v142, v38 offset:5376
	ds_load_u8 v143, v38 offset:5120
	v_lshl_or_b32 v80, v99, 16, v98
	v_lshl_or_b32 v79, v101, 16, v100
	v_lshl_or_b32 v78, v103, 16, v102
	v_lshl_or_b32 v75, v88, 16, v87
	ds_load_u8 v74, v38 offset:4736
	ds_load_u8 v86, v38 offset:4864
	ds_load_u8 v87, v38 offset:4608
	ds_load_u8 v88, v38 offset:4992
	ds_load_u8 v144, v38 offset:4224
	ds_load_u8 v145, v38 offset:4480
	ds_load_u8 v146, v38 offset:4352
	ds_load_u8 v147, v38 offset:4096
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
	ds_load_u8 v1, v1
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
	ds_load_u8 v146, v38 offset:7808
	ds_load_u8 v147, v38 offset:8064
	ds_load_u8 v152, v38 offset:7936
	ds_load_u8 v153, v38 offset:7680
	ds_load_u8 v154, v38 offset:7296
	ds_load_u8 v155, v38 offset:7552
	ds_load_u8 v156, v38 offset:7424
	ds_load_u8 v157, v38 offset:7168
	ds_load_u8 v158, v38 offset:6784
	ds_load_u8 v159, v38 offset:7040
	ds_load_u8 v160, v38 offset:6912
	ds_load_u8 v161, v38 offset:6656
	ds_load_u8 v162, v38 offset:6272
	ds_load_u8 v163, v38 offset:6528
	ds_load_u8 v164, v38 offset:6400
	ds_load_u8 v38, v38 offset:6144
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
	v_perm_b32 v1, v108, v1, 0xc0c0004
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
	v_perm_b32 v38, v38, v162, 0xc0c0004
	v_lshl_or_b32 v74, v92, 16, v91
	v_lshl_or_b32 v92, v145, 16, v143
	v_lshl_or_b32 v91, v147, 16, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v90, v142, 16, v38
	v_perm_b32 v38, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[90:93], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v81, v1, 16, v38
	v_perm_b32 v1, v128, v127, 0xc0c0004
	v_perm_b32 v38, v126, v125, 0xc0c0004
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v95, 16, v94
	v_lshl_or_b32 v81, v38, 16, v1
	v_lshl_or_b32 v79, v97, 16, v96
	v_lshl_or_b32 v78, v99, 16, v98
	v_perm_b32 v1, v144, v141, 0xc0c0004
	v_perm_b32 v38, v119, v48, 0xc0c0004
	v_perm_b32 v48, v140, v139, 0xc0c0004
	v_perm_b32 v82, v138, v124, 0xc0c0004
	v_perm_b32 v83, v168, v167, 0xc0c0004
	v_perm_b32 v84, v166, v165, 0xc0c0004
	v_perm_b32 v85, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v38, 16, v1
	v_lshl_or_b32 v80, v82, 16, v48
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
	s_ashr_i32 s0, s43, 31
	v_mov_b16_e32 v38.l, 0
	s_lshr_b32 s0, s0, 24
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v38.h, v49.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s43, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.h, v54.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.h, v51.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v36, s0, 1
	v_add_lshl_u32 v36, v37, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v35, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v34, s0, 1
	v_add_lshl_u32 v33, v33, s0, 1
	v_add_lshl_u32 v31, v31, s0, 1
	v_add_lshl_u32 v29, v29, s0, 1
	v_add_lshl_u32 v32, v32, s0, 1
	v_add_lshl_u32 v30, v30, s0, 1
	v_add_lshl_u32 v28, v28, s0, 1
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	v_mov_b16_e32 v51.l, v38.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v37, v1, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v34 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v58, 2, v0
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_mul_f32 v78, v38, v51
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x7
	buffer_load_u16 v34, v35, s[4:7], 0 offen
	buffer_load_u16 v35, v1, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	v_mov_b16_e32 v48.h, v57.l
	v_mov_b16_e32 v49.h, v56.l
	v_mov_b16_e32 v50.h, v55.l
	v_mov_b16_e32 v52.h, v53.l
	v_mov_b16_e32 v53.h, v52.l
	v_mov_b16_e32 v55.h, v50.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v74, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.l, v38.l
	v_mov_b16_e32 v49.l, v38.l
	v_mov_b16_e32 v50.l, v38.l
	v_mov_b16_e32 v52.l, v38.l
	v_mov_b16_e32 v53.l, v38.l
	v_mov_b16_e32 v54.l, v38.l
	v_mov_b16_e32 v55.l, v38.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v76, v38, v49 :: v_dual_and_b32 v1, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v38, v53 :: v_dual_and_b32 v57, 14, v0
	v_dual_mul_f32 v75, v38, v48 :: v_dual_and_b32 v58, 0x3f8, v58
	v_dual_mul_f32 v79, v38, v52 :: v_dual_and_b32 v74, 0x440, v74
	v_mul_f32_e32 v77, v38, v50
	v_mul_f32_e32 v81, v38, v54
	v_mul_f32_e32 v82, v38, v55
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v38.h, v47.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v56, 7, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s42, s35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v75, v46, v20
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v38, v50
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v56, s35, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v38, v48
	v_mul_f32_e32 v49, v38, v49
	v_mul_f32_e32 v51, v38, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v50, v9, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v38, v52
	v_mul_f32_e32 v53, v38, v53
	v_mul_f32_e32 v54, v38, v54
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s0, v1, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v17, v9, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v81, v40, v22
	v_fma_f32 v56, v82, v2, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v20, v46, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v52, v6, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v40, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v54, v4, v13
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v47, v74, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v41, v80, v41, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v79, v42, v24
	v_fma_f32 v43, v78, v43, v25
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v47, v57, 10, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v76, v45, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v56, s3
	v_cndmask_b32_e64 v13, v13, v40, s3
	v_cndmask_b32_e64 v23, v23, v41, s3
	v_cndmask_b32_e64 v24, v24, v42, s3
	v_cndmask_b32_e64 v25, v25, v43, s3
	v_cndmask_b32_e64 v27, v27, v45, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v41, v47, 8, 0
	v_xad_u32 v42, v47, 16, 0
	v_xad_u32 v43, v47, 24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v45, v47, 40, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v38, v38, v55 :: v_dual_lshlrev_b32 v17, 16, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v48, v39, v19
	v_fma_f32 v39, v53, v5, v14
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v38, v8, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v19, v20, s3
	v_cndmask_b32_e64 v6, v14, v39, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v51, v7, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v12, v8, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v49, v10, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v16, v7, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v38, 0, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v77, v44, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v18, v10, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v18, vcc_lo, s40, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v5, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v4, 16, v37
	v_lshlrev_b32_e32 v5, 16, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v44, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v4, v17
	v_dual_mul_f32 v17, v5, v17 :: v_dual_lshlrev_b32 v16, 16, v31
	v_mul_f32_e32 v37, v4, v30
	v_mul_f32_e32 v31, v4, v8
	v_dual_mul_f32 v33, v4, v14 :: v_dual_mul_f32 v8, v5, v8
	v_mul_f32_e32 v32, v4, v12
	v_mul_f32_e32 v12, v5, v12
	v_mul_f32_e32 v14, v5, v14
	v_mul_f32_e32 v34, v4, v16
	v_mul_f32_e32 v36, v4, v29
	v_mul_f32_e32 v16, v5, v16
	v_mul_f32_e32 v29, v5, v29
	v_mul_f32_e32 v30, v5, v30
	v_mul_f32_e32 v5, v5, v28
	v_mul_f32_e32 v4, v4, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v31, v3, v2
	v_fma_f32 v31, v33, v60, v6
	v_fma_f32 v33, v35, v62, v7
	v_fma_f32 v35, v37, v64, v10
	v_fma_f32 v37, v8, v66, v21
	v_fma_f32 v28, v32, v59, v13
	v_fma_f32 v39, v12, v67, v22
	v_fma_f32 v40, v14, v68, v23
	v_fma_f32 v32, v34, v61, v15
	v_fma_f32 v34, v36, v63, v9
	v_fma_f32 v49, v16, v69, v24
	v_fma_f32 v17, v17, v70, v25
	v_fma_f32 v50, v5, v73, v46
	v_fma_f32 v36, v4, v65, v20
	v_fma_f32 v29, v29, v71, v26
	v_fma_f32 v30, v30, v72, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v3, s2
	v_cndmask_b32_e64 v3, v21, v37, s2
	v_cndmask_b32_e64 v4, v13, v28, s2
	v_cndmask_b32_e64 v5, v22, v39, s2
	v_cndmask_b32_e64 v6, v6, v31, s2
	v_cndmask_b32_e64 v12, v7, v33, s2
	v_cndmask_b32_e64 v7, v23, v40, s2
	v_cndmask_b32_e64 v8, v15, v32, s2
	v_cndmask_b32_e64 v14, v9, v34, s2
	v_cndmask_b32_e64 v9, v24, v49, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v44, v47, 32, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v25, v17, s2
	v_cndmask_b32_e64 v21, v46, v50, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v48, v47, 48, 0
	v_xad_u32 v47, v47, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v10, v35, s2
	v_cndmask_b32_e64 v20, v20, v36, s2
	v_cndmask_b32_e64 v15, v26, v29, s2
	v_cndmask_b32_e64 v17, v27, v30, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b64 v38, v[2:3]
	ds_store_b64 v41, v[4:5]
	ds_store_b64 v42, v[6:7]
	ds_store_b64 v43, v[8:9]
	ds_store_b64 v44, v[12:13]
	ds_store_b64 v45, v[14:15]
	ds_store_b64 v48, v[16:17]
	ds_store_b64 v47, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v21, v[18:19], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x380, v11
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
	s_or_b32 s8, vcc_lo, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s35, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 4, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 18, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s40, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s41, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s40, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s41, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 22, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_35:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s40, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s41, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_37:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 26, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_39:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s40, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s41, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_41:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 30, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 253
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16028
; TotalNumSgprs: 49
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
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
